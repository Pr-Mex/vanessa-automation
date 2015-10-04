# vanessa-behavior

[![Открытый чат проекта https://gitter.im/silverbulleters/vanessa-behavoir](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/silverbulleters/vanessa-behavoir?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)
[![Build Status](http://ci.silverbulleters.org/buildStatus/icon?job=Venessa-Behavior-Develop)](http://ci.silverbulleters.org/job/Venessa-Behavior-Develop/)

## BDD for 1S:Enterprise (snipets generator and runner)

для Windows

необходимы:

* [интерпретатор Python3](https://www.python.org/) - для работы с иходными файлами 1С с помощью проекта precommit1C
* [утилита для сборки обработок 1С V8Unpack.exe] https://github.com/dmpas/v8unpack - утилита должна быть доступной в переменной Path окружения Windows

* установить данный проект
```
git clone https://github.com/silverbulleters/vanessa-behavior.git
```

## Описание простого использования

* пишем feature файлы в формате Gherkin
```Gherkin

# encoding: utf-8
# language: ru



Функционал: Запуск и получение результатов запуска сценариев
    Как любой пользователь продукта
    Я хочу иметь возможность запустить тестирование моих сценариев на конфигурации 1С:Предприятие 
  Контекст:
    Когда я указал 1 каталог feature файлов как '.\features\*'
    Также в каталоге '.\features\step_definitions\' есть 1 файл с  расширением 'wire' 
  Сценарий: Запуск в консольном режиме
    Допустим Запускаем командную строку для сервера тестирования 'onescript ./wire_server.os --daemon' 
    Также Запускаем командную строку 'cucumber ./ -f html -o test_result.html'
    То появляется файл с результатами 'test_result.html'
    Также файл с результутами 'test_result.html' не пустой
  Сценарий: Запуск тестовой процедуры в 1С
    Допустим в feature файле определен шаг 'Когда существует процедура теста'
    То в файле результата 'test_result.html' должен содераться текст '<ПравильноеИмяПроцеудры>' 
    Также данный шаг с именем '<ПравильноеИмяПроцеудры>' должен числится пройденным успешно  
    Также будет выдано сообщение 'Сообщение'


```

* генерируем тестовые обработки
* наполняем обработки тестов кодом
* запускаем тесты 
* получаем отчет о тестировании

## Передача параметров командной строкой
1. Надо подготовить JSON файл вида:
```
{
   "КаталогФич": "C:\vanessa-behavior\features",
   "ВыполнитьСценарии": "Истина",
   "ДелатьОтчетВФорматеАллюр": "Истина",
   "КаталогOutputAllureБазовый": "C:\allurereport",
   "ЗавершитьРаботуСистемы": "Истина",
   "ВыгружатьСтатусВыполненияСценариевВФайл": "Истина",
   "ПутьКФайлуДляВыгрузкиСтатуасВыполненияСценариев": "C:\BuildStatus.log",
   "СписокТеговИсключение":[
   "IgnoreOnCIMainBuild"
   ]
}
```

2. Передать параметр при запуске 1С
```
	/Execute C:\vanessa-behavior\vanessa-behavior.epf /C"StartFeaturePalyer;VBParams=C:\VBParams.json"
```


## Замечания:

* в процессе подготовки редакции 1.0 идут активные изменения, в следствии чего обратная совместимость с редакциями ниже 1.0 может не соблюдаться
* пожелания к использованию можно фиксировать в виде Github Issues
* структура каталогов проекта соответствует шаблону https://github.com/silverbulleters/vanessa-bootstrap

## Известные публикации

* [Первичная публикация](http://habrahabr.ru/post/252473/)
* [Пример отчета Allure на основе тестов](http://youtu.be/982gF1wY8sM)

## Вдохновение черпается 

* [Огурец](https://cukes.info/)
* [Автоматизированное тестирование 1С](http://v8.1c.ru/overview/Term_000000816.htm)
* [Yandex Allure](http://allure.qatools.ru/)
* [Silenium](http://docs.seleniumhq.org/)
* [ТРИЗ](https://ru.wikipedia.org/wiki/%D0%A2%D0%B5%D0%BE%D1%80%D0%B8%D1%8F_%D1%80%D0%B5%D1%88%D0%B5%D0%BD%D0%B8%D1%8F_%D0%B8%D0%B7%D0%BE%D0%B1%D1%80%D0%B5%D1%82%D0%B0%D1%82%D0%B5%D0%BB%D1%8C%D1%81%D0%BA%D0%B8%D1%85_%D0%B7%D0%B0%D0%B4%D0%B0%D1%87)
* [Дэн Норт](http://en.wikipedia.org/wiki/Acceptance_test-driven_development) 
