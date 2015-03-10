# vanessa-behavoir

BDD for 1S:Enterprise (snipets generator and runner based on OLE32Server for 1C)

для Windows

необходимы:

* [интерпретатор Ruby](http://rubyinstaller.org/)
* установить cucumber
```sh
gem install cucumber
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
