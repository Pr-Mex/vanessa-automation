# language: ru

@lessons

Функционал: Интерактивная справка. Открытие списка уроков.

Сценарий: Имя компьютера, Порт

* Hi! In this lesson, I will tell you about the structure of test clients table. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		

* Let's look at other settings in the table.
		И Я делаю подсветку закладки VA и переход к ней "ГруппаНесколькоКлиентовТестирования" "Test clients settings"
		И Пауза 1


* Consider the case when running Test Client in web client for a file base.
* In this case, also specify the localhost in the computer name field.
		И я устанавливаю в таблице VA "ДанныеКлиентовТестирования" в режиме обучения в колонке "ТипКлиента" "Web"
		И я устанавливаю в таблице VA "ДанныеКлиентовТестирования" в режиме обучения в колонке 'ПутьКИнфобазе' 'http://localhost/MyBase'
		И я устанавливаю в таблице VA "ДанныеКлиентовТестирования" в режиме обучения в колонке 'ИмяКомпьютера' 'localhost'
		И Пауза 1
		И Я делаю подсветку элемента VA "ДанныеКлиентовТестированияИмяКомпьютера" "localhost"
* And in the port field, you need to specify the local web server port.
* Usually it is 15 38.
		И я устанавливаю в таблице VA "ДанныеКлиентовТестирования" в режиме обучения в колонке 'ПортЗапускаТестКлиента' '1538'
		И Пауза 1
		И Я делаю подсветку элемента VA "ДанныеКлиентовТестированияПорт" "Port for file database (web client)"


* Next, consider running Test Client in a web client for a server database.
* In this case, in the computer name field, specify the network name of 1C server cluster or its ip address.
		И я устанавливаю в таблице VA "ДанныеКлиентовТестирования" в режиме обучения в колонке 'ИмяКомпьютера' 'MyServer'
		И Пауза 1
		И Я делаю подсветку элемента VA "ДанныеКлиентовТестированияИмяКомпьютера" "Cluster network name"
* It is important that Test Manager has access to the cluster manager over a local network. Otherwise, Test Client connection will be unavailable.
* In the port field, specify the port of the 1C server cluster.
* Usually it is 15 41.
		И я устанавливаю в таблице VA "ДанныеКлиентовТестирования" в режиме обучения в колонке 'ПортЗапускаТестКлиента' '1541'
		И Пауза 1
		И Я делаю подсветку элемента VA "ДанныеКлиентовТестированияПорт" "Port for server database (web client)"

* A significant point. The uniqueness of Test Client for web client is defined by connection name. Other fields are not taken into account.
		И Я делаю подсветку элемента VA "ДанныеКлиентовТестированияИмя" "Uniqueness by connection name"


* That's it, move on to the next lesson of the interactive help.

