import sys
import os
from xml.etree import ElementTree as et

namespaces = {'logform': 'http://v8.1c.ru/8.3/xcf/logform', 'core': 'http://v8.1c.ru/8.1/data/core'}
et.register_namespace('', 'http://v8.1c.ru/8.3/MDClasses')


def getChildItems(item: et.Element)-> dict:
    result = {}
    all_elements = item.find('logform:ChildItems', namespaces)
    if all_elements is None:
        return result
    for element in all_elements:
        name = element.attrib.get('name')
        tooltips = element.findall('logform:ExtendedTooltip/logform:Title/*', namespaces)
        for tooltip in tooltips:
            lang = tooltip.find('{http://v8.1c.ru/8.1/data/core}lang').text
            if lang != 'ru':
                continue
            content = tooltip.find('{http://v8.1c.ru/8.1/data/core}content').text
            result[name] = content
        result.update(getChildItems(element))
    return result


def parseXML(path_to_form):
    form = et.parse(os.path.abspath(path_to_form)).getroot()
    tooltips = getChildItems(form)

    print(tooltips)


if __name__ == "__main__":
    parseXML('./VanessaAutomation/Forms/УправляемаяФорма/Ext/Form.xml')
