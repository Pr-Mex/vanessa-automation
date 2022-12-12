# language: ru

@lessons

Функционал: Интерактивная справка. Открытие списка уроков.

Сценарий: Имя компьютера, Порт

* Hi! In this lesson, I will tell you about the structure of test clients table. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		

* Let's look at other settings in the table.
		И Я делаю подсветку закладки VA и переход к ней "ГруппаНесколькоКлиентовТестирования" "Test clients settings"
		И Пауза 1

* Let's talk about the case when Test Client will be launched as a thin or thick client.
* Then this column specifies the name of the computer where already running Test Client is located, or where the new Test Client will be launched.
		И Я делаю подсветку элемента VA "ДанныеКлиентовТестированияИмяКомпьютера" "Computer name"
		
* If the Test Client is running on the same PC as the Test Manager, then the localhost value must be specified in the setup
		И я устанавливаю в таблице VA "ДанныеКлиентовТестирования" в режиме обучения в колонке 'ИмяКомпьютера' 'localhost'
		И Пауза 1
		И Я делаю подсветку элемента VA "ДанныеКлиентовТестированияИмяКомпьютера" "localhost"

* If you need to launch a new test client, specify the value of the free port on this PC in the launch port column.
		И Я делаю подсветку элемента VA "ДанныеКлиентовТестированияПорт" "Port"
* Or just specify a value of 1.
		И я устанавливаю в таблице VA "ДанныеКлиентовТестирования" в режиме обучения в колонке 'ПортЗапускаТестКлиента' '1'
		И Пауза 1
		И Я делаю подсветку элемента VA "ДанныеКлиентовТестированияПорт" "Port"
* If you need to connect to an already running Test Client, specify the real value of the port in the port field, where Test Client was launched previously.
		И Пауза 2
	
		И я устанавливаю в таблице VA "ДанныеКлиентовТестирования" в режиме обучения в колонке 'ПортЗапускаТестКлиента' '12345'
		И Пауза 1
		И Я делаю подсветку элемента VA "ДанныеКлиентовТестированияПорт" "Port"
* If port is specifed incorrectly, connection to a previously launched client will fail.
* A significant point. When launching a new Test Client, Vanessa Automation checks the list of available ports in the system and select the one that is currently free.
* It is also possible to specify a range of ports to select from.

* This is done using this setting
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation	
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'СтраницаКлиентыТестирования' UI Automation	
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаЗапускКлиентаТестирования' UI Automation	
		И Пауза 1
		И Я делаю подсветку элемента VA "ДиапазонПортовTestclient" "Specify port range here"
		И Пауза 1
		

* When launching a new testing client, if the use of the VanessaExt component is enabled, the field containing the process ID will be filled in.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНесколькоКлиентовТестирования' UI Automation
		И Пауза 1
		И Я делаю подсветку элемента VA "ДанныеКлиентовТестированияPIDКлиента" "Process PID"
		

* A significant point. The uniqueness of Test Client for a thin and thick client is defined exactly by the port. Other fields are not taken into account.
		И Я делаю подсветку элемента VA "ДанныеКлиентовТестированияПорт" "Uniqueness by port value"


* That's it, move on to the next lesson of the interactive help.

