#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
SCRIPT_PATH="$ROOT_DIR/tools/onescript/CheckMissingTranslations.os"
TMP_DIR="$(mktemp -d)"
TOTAL_TESTS=0

cleanup() {
  rm -rf "$TMP_DIR"
}

trap cleanup EXIT

fail() {
  echo "FAIL: $1" >&2
  exit 1
}

pass() {
  TOTAL_TESTS=$((TOTAL_TESTS + 1))
  echo "ok $TOTAL_TESTS - $1"
}

assert_contains() {
  local file_path="$1"
  local expected="$2"
  local message="$3"

  if ! grep -Fq -- "$expected" "$file_path"; then
    echo "Expected to find: $expected" >&2
    echo "In file: $file_path" >&2
    fail "$message"
  fi
}

assert_not_contains() {
  local file_path="$1"
  local unexpected="$2"
  local message="$3"

  if grep -Fq -- "$unexpected" "$file_path"; then
    echo "Did not expect to find: $unexpected" >&2
    echo "In file: $file_path" >&2
    fail "$message"
  fi
}

assert_occurrences() {
  local file_path="$1"
  local expected_text="$2"
  local expected_count="$3"
  local message="$4"
  local actual_count

  actual_count="$(grep -Fo -- "$expected_text" "$file_path" | wc -l | tr -d ' ')"
  if [[ "$actual_count" != "$expected_count" ]]; then
    echo "Expected count: $expected_count" >&2
    echo "Actual count: $actual_count" >&2
    echo "Text: $expected_text" >&2
    echo "File: $file_path" >&2
    fail "$message"
  fi
}

assert_file_contains_all() {
  local file_path="$1"
  shift

  python3 - "$file_path" "$@" <<'PY'
from pathlib import Path
import sys

path = Path(sys.argv[1])
content = path.read_text(encoding='utf-8')
missing = [needle for needle in sys.argv[2:] if needle not in content]

if missing:
    print(f"Missing strings in {path}:", file=sys.stderr)
    for needle in missing:
        print(needle, file=sys.stderr)
    raise SystemExit(1)
PY
}

project_dir() {
  local name="$1"
  local dir="$TMP_DIR/$name"

  mkdir -p "$dir/VanessaAutomation"
  mkdir -p "$dir/locales/Messages/Templates/en/Ext"
  echo "$dir"
}

write_base_template() {
  local file_path="$1"

  cat > "$file_path" <<'EOF'
<?xml version="1.0" encoding="UTF-8"?>
<document xmlns:v8="http://v8.1c.ru/8.1/data/ui">
    <rowsItem>
        <index>0</index>
        <row>
            <c>
                <c>
                    <f>0</f>
                    <tl>
                        <v8:item>
                            <v8:lang>ru</v8:lang>
                            <v8:content>Строка поиска</v8:content>
                        </v8:item>
                    </tl>
                </c>
            </c>
            <c>
                <c>
                    <f>14</f>
                    <tl>
                        <v8:item>
                            <v8:lang>ru</v8:lang>
                            <v8:content></v8:content>
                        </v8:item>
                    </tl>
                </c>
            </c>
        </row>
    </rowsItem>
    <height>1</height>
    <vgRows>1</vgRows>
    <templateMode>0</templateMode>
</document>
EOF
}

append_translation_row() {
  local file_path="$1"
  local row_index="$2"
  local source_text="$3"
  local translation_text="$4"

  python3 - "$file_path" "$row_index" "$source_text" "$translation_text" <<'PY'
from pathlib import Path
import sys

path = Path(sys.argv[1])
row_index = sys.argv[2]
source_text = sys.argv[3]
translation_text = sys.argv[4]

text = path.read_text(encoding='utf-8')
row_block = f"""    <rowsItem>
    <index>{row_index}</index>
    <row>
      <c>
        <c>
          <f>0</f>
          <tl>
            <v8:item>
              <v8:lang>ru</v8:lang>
              <v8:content>{source_text}</v8:content>
            </v8:item>
          </tl>
        </c>
      </c>
      <c>
        <c>
          <f>14</f>
          <tl>
            <v8:item>
              <v8:lang>ru</v8:lang>
              <v8:content>{translation_text}</v8:content>
            </v8:item>
          </tl>
        </c>
      </c>
    </row>
  </rowsItem>
"""
text = text.replace("    <height>", row_block + "    <height>", 1)
text = text.replace("<height>1</height>", "<height>2</height>", 1)
text = text.replace("<vgRows>1</vgRows>", "<vgRows>2</vgRows>", 1)
path.write_text(text, encoding='utf-8')
PY
}

run_generate() {
  local dir="$1"
  (cd "$ROOT_DIR" && oscript "$SCRIPT_PATH" en "$dir") >/dev/null
}

run_apply() {
  local dir="$1"
  local report_path="$2"
  (cd "$ROOT_DIR" && oscript "$SCRIPT_PATH" en apply "$dir" "$report_path") >/dev/null
}

test_generate_reports_multiline_and_trailing_spaces() {
  local dir report_path source_line
  dir="$(project_dir generate-multiline)"
  report_path="$dir/missing-translations-en.yaml"

  write_base_template "$dir/locales/Messages/Templates/en/Ext/Template.xml"
  cat > "$dir/VanessaAutomation/Test.bsl" <<'EOF'
Процедура Тест()
	Сообщить(Локализовать("Первая строка
	|вторая строка"));
EOF
  printf '%s\n' $'\tСообщить(Локализовать("Строка с пробелами  "));' 'КонецПроцедуры' >> "$dir/VanessaAutomation/Test.bsl"

  run_generate "$dir"

  assert_contains "$report_path" 'missing_count: 2' 'generate должен находить две отсутствующие строки'
  assert_contains "$report_path" '      Первая строка' 'generate должен сохранять первую строку мультистроки'
  assert_contains "$report_path" '      вторая строка' 'generate должен сохранять вторую строку мультистроки'
  source_line="$(grep -F 'Строка с пробелами' "$report_path" | head -n 1)"
  [[ "$source_line" == *'Строка с пробелами  '* ]] || fail 'generate должен сохранять пробелы в конце строки в YAML'

  pass 'generate: мультистроки и хвостовые пробелы'
}

test_generate_ignores_existing_translation_with_xml_entities() {
  local dir report_path
  dir="$(project_dir generate-existing-xml)"
  report_path="$dir/missing-translations-en.yaml"

  write_base_template "$dir/locales/Messages/Templates/en/Ext/Template.xml"
  cat > "$dir/VanessaAutomation/Test.bsl" <<'EOF'
Процедура Тест()
	Сообщить(Локализовать("Уже есть <tag> & значение"));
КонецПроцедуры
EOF
  append_translation_row "$dir/locales/Messages/Templates/en/Ext/Template.xml" 1 'Уже есть &lt;tag&gt; &amp; значение' 'Already translated'

  run_generate "$dir"

  assert_contains "$report_path" 'missing_count: 0' 'existing translation в XML не должна попадать в missing'
  assert_not_contains "$report_path" 'Уже есть <tag> & значение' 'строка с существующим переводом не должна быть в отчете'

  pass 'generate: существующий XML перевод с entity не считается missing'
}

test_apply_inserts_new_row_and_escapes_xml() {
  local dir xml_path report_path
  dir="$(project_dir apply-insert-xml)"
  xml_path="$dir/locales/Messages/Templates/en/Ext/Template.xml"
  report_path="$dir/missing-translations-en.yaml"

  write_base_template "$xml_path"
  cat > "$report_path" <<'EOF'
language: en
source_directory: VanessaAutomation
template_path: locales\Messages\Templates\en\Ext\Template.xml
total_unique_strings: 1
template_entries: 0
missing_count: 1
missing_translations:
  - occurrence_count: 1
    source: |-
      Новая <строка> & значение
    translation: |-
      New <value> & result
    occurrences:
      - VanessaAutomation\Test.bsl:2
EOF

  run_apply "$dir" "$report_path"

  assert_contains "$xml_path" '<height>2</height>' 'apply insert должен увеличивать height'
  assert_contains "$xml_path" '<vgRows>2</vgRows>' 'apply insert должен увеличивать vgRows'
  assert_contains "$xml_path" '<v8:content>Новая &lt;строка&gt; &amp; значение</v8:content>' 'source должен быть экранирован в XML'
  assert_contains "$xml_path" '<v8:content>New &lt;value&gt; &amp; result</v8:content>' 'translation должен быть экранирован в XML'

  pass 'apply: вставка новой строки и XML escaping'
}

test_apply_inserts_new_row_after_max_existing_index() {
  local dir xml_path report_path
  dir="$(project_dir apply-insert-after-max-index)"
  xml_path="$dir/locales/Messages/Templates/en/Ext/Template.xml"
  report_path="$dir/missing-translations-en.yaml"

  cat > "$xml_path" <<'EOF'
<?xml version="1.0" encoding="UTF-8"?>
<document xmlns:v8="http://v8.1c.ru/8.1/data/ui">
  <rowsItem>
    <index>0</index>
    <row>
      <c>
        <c>
          <f>0</f>
          <tl>
            <v8:item>
              <v8:lang>ru</v8:lang>
              <v8:content>Строка поиска</v8:content>
            </v8:item>
          </tl>
        </c>
      </c>
      <c>
        <c>
          <f>14</f>
          <tl>
            <v8:item>
              <v8:lang>ru</v8:lang>
              <v8:content></v8:content>
            </v8:item>
          </tl>
        </c>
      </c>
    </row>
  </rowsItem>
  <rowsItem>
    <index>5</index>
    <row>
      <c>
        <c>
          <f>0</f>
          <tl>
            <v8:item>
              <v8:lang>ru</v8:lang>
              <v8:content>Уже существующая строка</v8:content>
            </v8:item>
          </tl>
        </c>
      </c>
      <c>
        <c>
          <f>14</f>
          <tl>
            <v8:item>
              <v8:lang>ru</v8:lang>
              <v8:content>Existing translation</v8:content>
            </v8:item>
          </tl>
        </c>
      </c>
    </row>
  </rowsItem>
  <height>2</height>
  <vgRows>2</vgRows>
  <templateMode>0</templateMode>
</document>
EOF

  cat > "$report_path" <<'EOF'
language: en
source_directory: VanessaAutomation
template_path: locales\Messages\Templates\en\Ext\Template.xml
total_unique_strings: 1
template_entries: 1
missing_count: 1
missing_translations:
  - occurrence_count: 1
    source: |-
      Новая строка после максимального индекса
    translation: |-
      New row after max index
    occurrences:
      - VanessaAutomation\Test.bsl:2
EOF

  run_apply "$dir" "$report_path"

  assert_file_contains_all "$xml_path" \
    '<index>6</index>' \
    '<height>7</height>' \
    '<vgRows>7</vgRows>' \
    '<v8:content>New row after max index</v8:content>' \
    || fail 'apply insert должен брать следующий index после максимального существующего index и обновлять размерность по нему'

  pass 'apply: вставка после максимального index, а не по height'
}

test_apply_updates_existing_row_without_duplicate() {
  local dir xml_path report_path
  dir="$(project_dir apply-update-existing)"
  xml_path="$dir/locales/Messages/Templates/en/Ext/Template.xml"
  report_path="$dir/missing-translations-en.yaml"

  write_base_template "$xml_path"
  append_translation_row "$xml_path" 1 'Обновляемая строка' 'Old translation'
  cat > "$report_path" <<'EOF'
language: en
source_directory: VanessaAutomation
template_path: locales\Messages\Templates\en\Ext\Template.xml
total_unique_strings: 1
template_entries: 1
missing_count: 1
missing_translations:
  - occurrence_count: 1
    source: |-
      Обновляемая строка
    translation: |-
      Updated translation
    occurrences:
      - VanessaAutomation\Test.bsl:2
EOF

  run_apply "$dir" "$report_path"

  assert_contains "$xml_path" '<height>2</height>' 'update existing не должен менять height'
  assert_contains "$xml_path" '<vgRows>2</vgRows>' 'update existing не должен менять vgRows'
  assert_contains "$xml_path" '<v8:content>Updated translation</v8:content>' 'существующий перевод должен обновляться'
  assert_not_contains "$xml_path" '<v8:content>Old translation</v8:content>' 'старый перевод должен быть заменен'
  assert_occurrences "$xml_path" '<v8:content>Обновляемая строка</v8:content>' '1' 'update existing не должен дублировать строку'

  pass 'apply: обновление существующей строки без дубля'
}

test_apply_updates_existing_row_with_xml_entities() {
  local dir xml_path report_path
  dir="$(project_dir apply-update-existing-xml-entities)"
  xml_path="$dir/locales/Messages/Templates/en/Ext/Template.xml"
  report_path="$dir/missing-translations-en.yaml"

  write_base_template "$xml_path"
  append_translation_row "$xml_path" 1 'Строка &lt;tag&gt; &amp; значение' 'Old &lt;translation&gt;'
  cat > "$report_path" <<'EOF'
language: en
source_directory: VanessaAutomation
template_path: locales\Messages\Templates\en\Ext\Template.xml
total_unique_strings: 1
template_entries: 1
missing_count: 1
missing_translations:
  - occurrence_count: 1
    source: |-
      Строка <tag> & значение
    translation: |-
      Updated <translation> & value
    occurrences:
      - VanessaAutomation\Test.bsl:2
EOF

  run_apply "$dir" "$report_path"

  assert_occurrences "$xml_path" '<v8:content>Строка &lt;tag&gt; &amp; значение</v8:content>' '1' 'special chars source не должен дублироваться при update'
  assert_contains "$xml_path" '<v8:content>Updated &lt;translation&gt; &amp; value</v8:content>' 'special chars translation должен обновиться и экранироваться'
  assert_not_contains "$xml_path" '<v8:content>Old &lt;translation&gt;</v8:content>' 'старый translation со спецсимволами должен быть заменен'

  pass 'apply: поиск и обновление существующей строки со спецсимволами XML'
}

test_apply_updates_existing_multiline_row() {
  local dir xml_path report_path
  dir="$(project_dir apply-update-existing-multiline)"
  xml_path="$dir/locales/Messages/Templates/en/Ext/Template.xml"
  report_path="$dir/missing-translations-en.yaml"

  write_base_template "$xml_path"
  python3 - "$xml_path" <<'PY'
from pathlib import Path
import sys

path = Path(sys.argv[1])
text = path.read_text(encoding='utf-8')
row_block = """    <rowsItem>
        <index>1</index>
        <row>
            <c>
                <c>
                    <f>0</f>
                    <tl>
                        <v8:item>
                            <v8:lang>ru</v8:lang>
                            <v8:content>Первая строка
вторая строка</v8:content>
                        </v8:item>
                    </tl>
                </c>
            </c>
            <c>
                <c>
                    <f>14</f>
                    <tl>
                        <v8:item>
                            <v8:lang>ru</v8:lang>
                            <v8:content>Old multiline translation</v8:content>
                        </v8:item>
                    </tl>
                </c>
            </c>
        </row>
    </rowsItem>
"""
text = text.replace("    <height>", row_block + "    <height>", 1)
text = text.replace("<height>1</height>", "<height>2</height>", 1)
text = text.replace("<vgRows>1</vgRows>", "<vgRows>2</vgRows>", 1)
path.write_text(text, encoding='utf-8')
PY
  cat > "$report_path" <<'EOF'
language: en
source_directory: VanessaAutomation
template_path: locales\Messages\Templates\en\Ext\Template.xml
total_unique_strings: 1
template_entries: 1
missing_count: 1
missing_translations:
  - occurrence_count: 1
    source: |-
      Первая строка
      вторая строка
    translation: |-
      New multiline translation
      second line
    occurrences:
      - VanessaAutomation\Test.bsl:2
EOF

  run_apply "$dir" "$report_path"

  assert_occurrences "$xml_path" 'Первая строка' '1' 'multiline source не должен дублироваться при update'
  assert_contains "$xml_path" 'New multiline translation' 'multiline translation должен обновиться'
  assert_contains "$xml_path" 'second line</v8:content>' 'вторая строка multiline translation должна сохраниться'
  assert_not_contains "$xml_path" 'Old multiline translation' 'старый multiline translation должен быть заменен'

  pass 'apply: поиск и обновление существующей мультистроки'
}

test_apply_preserves_multiline_and_trailing_spaces() {
  local dir xml_path report_path source_line
  dir="$(project_dir apply-multiline-spaces)"
  xml_path="$dir/locales/Messages/Templates/en/Ext/Template.xml"
  report_path="$dir/missing-translations-en.yaml"

  write_base_template "$xml_path"
  cat > "$report_path" <<'EOF'
language: en
source_directory: VanessaAutomation
template_path: locales\Messages\Templates\en\Ext\Template.xml
total_unique_strings: 1
template_entries: 0
missing_count: 1
missing_translations:
  - occurrence_count: 1
    source: |-
      Исходная первая
      Исходная вторая
    translation: |-
      Translated first
      Translated second  
    occurrences:
      - VanessaAutomation\Test.bsl:2
EOF

  run_apply "$dir" "$report_path"

  assert_contains "$xml_path" 'Translated first' 'multiline translation должна записываться в XML'
  assert_contains "$xml_path" 'Translated second  </v8:content>' 'хвостовые пробелы в переводе должны сохраняться'
  assert_contains "$xml_path" 'Исходная первая' 'multiline source должна записываться в XML'
  assert_contains "$xml_path" 'Исходная вторая</v8:content>' 'вторая строка source должна сохраняться'

  pass 'apply: мультистроки и хвостовые пробелы'
}

test_apply_skips_empty_translation() {
  local dir xml_path report_path
  dir="$(project_dir apply-empty-translation)"
  xml_path="$dir/locales/Messages/Templates/en/Ext/Template.xml"
  report_path="$dir/missing-translations-en.yaml"

  write_base_template "$xml_path"
  cat > "$report_path" <<'EOF'
language: en
source_directory: VanessaAutomation
template_path: locales\Messages\Templates\en\Ext\Template.xml
total_unique_strings: 1
template_entries: 0
missing_count: 1
missing_translations:
  - occurrence_count: 1
    source: |-
      Пустой перевод
    translation: |-
      
    occurrences:
      - VanessaAutomation\Test.bsl:2
EOF

  run_apply "$dir" "$report_path"

  assert_contains "$xml_path" '<height>1</height>' 'пустой translation не должен добавлять строку'
  assert_contains "$xml_path" '<vgRows>1</vgRows>' 'пустой translation не должен менять vgRows'
  assert_not_contains "$xml_path" 'Пустой перевод' 'пустой translation должен пропускаться'

  pass 'apply: пустой translation пропускается'
}

main() {
  test_generate_reports_multiline_and_trailing_spaces
  test_generate_ignores_existing_translation_with_xml_entities
  test_apply_inserts_new_row_and_escapes_xml
  test_apply_inserts_new_row_after_max_existing_index
  test_apply_updates_existing_row_without_duplicate
  test_apply_updates_existing_row_with_xml_entities
  test_apply_updates_existing_multiline_row
  test_apply_preserves_multiline_and_trailing_spaces
  test_apply_skips_empty_translation
  echo "All $TOTAL_TESTS tests passed"
}

main "$@"