import sys
import os
from xml.etree import ElementTree as et

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
    tooltips = getChildItems(form)

    print(tooltips)


if __name__ == "__main__":
    parseXML('./VanessaAutomation/Forms/УправляемаяФорма/Ext/Form.xml')
