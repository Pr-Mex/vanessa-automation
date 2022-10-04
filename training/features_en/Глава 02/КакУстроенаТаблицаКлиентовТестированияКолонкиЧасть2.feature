# language: ru

@lessons

Функционал: Интерактивная справка. Открытие списка уроков.

Сценарий: Путь к инфобазе, Дополнительные параметры

* Hi! In this lesson, I will tell you about the structure of test clients table. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		

* Let's look at other settings in the table.
		И Я делаю подсветку закладки VA и переход к ней "ГруппаНесколькоКлиентовТестирования" "Test clients settings"
		И Пауза 1

* This column indicates the path to the database that will act as a testing client
		И Я делаю подсветку элемента VA "ДанныеКлиентовТестированияПутьКИнфобазе" "Database path"


* Depending on test client type, different values are specified there.
* For thin and thick client, this is either the path to the file database
		И я устанавливаю в таблице VA "ДанныеКлиентовТестирования" в режиме обучения в колонке "ТипКлиента" "Thin"
		И я устанавливаю в таблице VA "ДанныеКлиентовТестирования" в режиме обучения в колонке 'ПутьКИнфобазе' 'File="c:\Bases\MyBase";'
		И Пауза 1
		И Я делаю подсветку элемента VA "ДанныеКлиентовТестированияПутьКИнфобазе" "File base"

* Or server database connection string.
		И я устанавливаю в таблице VA "ДанныеКлиентовТестирования" в режиме обучения в колонке 'ПутьКИнфобазе' 'Srvr="MyServer";Ref="MyBase";'
		И Пауза 1
		И Я делаю подсветку элемента VA "ДанныеКлиентовТестированияПутьКИнфобазе" "Server base"


* For a web client, this is a browser link
		И я устанавливаю в таблице VA "ДанныеКлиентовТестирования" в режиме обучения в колонке "ТипКлиента" "Web"
		И я устанавливаю в таблице VA "ДанныеКлиентовТестирования" в режиме обучения в колонке 'ПутьКИнфобазе' 'http://localhost/MyBase'
		И Пауза 1
		И Я делаю подсветку элемента VA "ДанныеКлиентовТестированияПутьКИнфобазе" "Database on the web server"
	

* Next is a column to specify the additional connection parameters
		И Я делаю подсветку элемента VA "ДанныеКлиентовТестированияДопПараметры" "Additional parameters"
* These are usually the username, password, and other startup keys
		И я запоминаю строку "ДопПараметры" в переменную "ПеременнаяКолонкаДопПараметры"
		И я устанавливаю в таблице VA "ДанныеКлиентовТестирования" в режиме обучения в колонке "$ПеременнаяКолонкаДопПараметры$" '/N"Администратор" /P"Пароль" /ДопКлючи'
		И Пауза 1
		И Я делаю подсветку элемента VA "ДанныеКлиентовТестированияДопПараметры" "Additional parameters"


* That's it, move on to the next lesson of the interactive help.

//Do not translate 44
