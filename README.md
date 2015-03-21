# vanessa-behavoir

BDD for 1S:Enterprise (snipets generator and runner based on OLE32Server for 1C)

для Windows

необходимы:

* [интерпретатор Ruby](http://rubyinstaller.org/)
* установить cucumber
```sh
gem install cucumber
gem install allure-cucumber
```

* Установить [1Script](https://bitbucket.org/EvilBeaver/1script/downloads) через инсталятор
* Обновить 1Script до последней версии

```sh
cd c:\OScript\
"C:\Program Files (x86)\GnuWin32\bin\wget.exe"  --continue http://oscript.io/downloads/night-build/latest.zip 
unzip -o latest.zip -d .\
oscript.exe
```
* установить данный проект
```
git clone https://github.com/silverbulleters/vanessa-behavoir.git
```

* скопировать одну хитрую библиотеку в каталог 1Script
```
xcopy /y .\lib\Unpackv8.exe c:\OScript\
```


## Описание простого использования

* пишем feature файлы в формате Gherkin
```Gherkin

# encoding: utf-8
# language: ru


@[ИмяФичи]=EpfBehavePleer;\features\main


Функционал: Запуск и получение результатов запуска сценариев
    Как любой пользователь продукта
    Я хочу иметь возможность запустить тестирование моих сценариев на конфигурации 1С:Предприятие 
  Контекст:
    Когда я указал 1 каталог feature файлов как '.\features\*'
    Также в каталоге '.\features\step_definitions\' есть 1 файл с  расширением 'wire' 
@Консоль
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

```
oscript.exe vanessa-behavior.os --GenerateEpf
```

* наполняем обработки тестов кодом

* запускаем тесты 

* получаем отчет о тестировании

## Замечания:

0. для Windows надо использовать только Ruby 2.0.0 по причине https://github.com/cucumber/gherkin/issues/257
1. работа под linux не поддерживает, за счет применения OLE соединений с 1С. 
2. решение вопроса с сертификатом для RubyGems, скопировать файл с расширением pem https://gist.github.com/luislavena/f064211759ee0f806c88


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