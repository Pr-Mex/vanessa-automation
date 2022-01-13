import os
import sys
from xml.etree import ElementTree as Et

from pyaspeller import YandexSpeller

speller = YandexSpeller(lang="ru", ignore_urls=True, ignore_latin=True)

namespaces = {
    "logform": "http://v8.1c.ru/8.3/xcf/logform",
    "core": "http://v8.1c.ru/8.1/data/core",
}
Et.register_namespace("", "http://v8.1c.ru/8.3/MDClasses")

path_to_dict = os.path.join(os.path.dirname(__file__), "DictException.txt")
with open(path_to_dict, "r", encoding="utf-8") as f:
    our_dict = [x.strip() for x in f.readlines()]


def getRuContent(obj: Et.Element):
    if obj is None:
        return None
    elements = obj.findall("core:item", namespaces)
    for element in elements:
        lang = element.find("core:lang", namespaces).text
        if lang != "ru":
            continue
        content = element.find("core:content", namespaces).text
        return content


def getChildItems(obj: Et.Element) -> dict:
    result = {}
    all_elements = obj.find("logform:ChildItems", namespaces)
    if all_elements is None:
        return result
    for element in all_elements:
        name = element.attrib.get("name")

        title = element.find("logform:Title", namespaces)
        content = getRuContent(title)
        if content is not None:
            result[f"{name}.Заголовок"] = content

        tooltip = element.find("logform:Tooltip", namespaces)
        content = getRuContent(tooltip)
        if content is not None:
            result[f"{name}.Подсказка"] = content

        ext_tooltip = element.find("logform:ExtendedTooltip/logform:Title", namespaces)
        content = getRuContent(ext_tooltip)
        if content is not None:
            result[f"{name}.РасшПодсказка"] = content

        result.update(getChildItems(element))
    return result


def parseXML(path_to_form: str):
    form = Et.parse(os.path.abspath(path_to_form)).getroot()
    return getChildItems(form)


def prepareText(text_for_check: str) -> list:
    result = []
    for line in text_for_check.split("\n"):
        if line.strip():
            result += line.split(" ")

    result = [x.lower() for x in result if len(x) > 1]
    return result


def checkGrammar(text_for_check) -> list:
    result = []
    # find those words that may be misspelled
    check = speller.spell(text_for_check)
    for res in check:
        if res["s"] and res['word'] not in our_dict:  # Есть варианты замены
            result.append(f"{res['word']} -> {res['s']}")

    return result


if __name__ == "__main__":
    items = parseXML("./VanessaAutomation/Forms/УправляемаяФорма/Ext/Form.xml")
    exit_code = 0
    for item, text in items.items():
        mistakes = checkGrammar(text)
        if mistakes:
            print(item, file=sys.stderr)
            for number, mistake in enumerate(mistakes, 1):
                print(f"  {number}. {mistake}", file=sys.stderr)
            exit_code = 1

    sys.exit(exit_code)
