import sys
import os
from xml.etree import ElementTree as et
from pyaspeller import YandexSpeller


speller = YandexSpeller(lang='ru', ignore_urls=True)

namespaces = {'logform': 'http://v8.1c.ru/8.3/xcf/logform', 'core': 'http://v8.1c.ru/8.1/data/core'}
et.register_namespace('', 'http://v8.1c.ru/8.3/MDClasses')


def getRuContent(element: et.Element)-> str:
    if element is None:
        return None
    items = element.findall('core:item', namespaces)
    for item in items:
        lang = item.find('core:lang', namespaces).text
        if lang != 'ru':
            continue
        content = item.find('core:content', namespaces).text
        return content


def getChildItems(item: et.Element)-> dict:
    result = {}
    all_elements = item.find('logform:ChildItems', namespaces)
    if all_elements is None:
        return result
    for element in all_elements:
        name = element.attrib.get('name')

        title = element.find('logform:Title', namespaces)
        content = getRuContent(title)
        if content is not None:
            result[f"{name}.Заголовок"] = content

        tooltip = element.find('logform:Tooltip', namespaces)
        content = getRuContent(tooltip)
        if content is not None:
            result[f"{name}.Подсказка"] = content

        ext_tooltip = element.find('logform:ExtendedTooltip/logform:Title', namespaces)
        content = getRuContent(ext_tooltip)
        if content is not None:
            result[f"{name}.РасшПодсказка"] = content

        result.update(getChildItems(element))
    return result


def parseXML(path_to_form):
    form = et.parse(os.path.abspath(path_to_form)).getroot()
    return getChildItems(form)


def prepareText(text):
    result = []
    for line in text.split('\n'):
        if line.strip():
            result += line.split(' ')

    result = [x.lower() for x in result if len(x) > 1]
    return result


def checkGrammar(text) -> list:
    result = []
    # find those words that may be misspelled
    check = speller.spell(text)
    for res in check:
        if res['s']: # Есть варианты замены
            result.append(f"{res['word']} -> {res['s']}")

    return result


if __name__ == "__main__":
    items = parseXML('./VanessaAutomation/Forms/УправляемаяФорма/Ext/Form.xml')
    exit_code = 0
    for item, text in items.items():
        mistakes = checkGrammar(text)
        if mistakes:
            print(item, file=sys.stderr)
            for number, mistake in enumerate(mistakes, 1):
                print(f"  {number}. {mistake}", file=sys.stderr)
            exit_code = 1

    sys.exit(exit_code)


