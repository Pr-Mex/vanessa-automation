# language: ru

@lessons

Функционал: Интерактивная справка. Открытие списка уроков.

Сценарий: Имя клиента, Синоним, Тип клиента

* Hi! In this lesson, I will tell you about the structure of test clients table. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		

* Let's look at other settings in the table.
		И Я делаю подсветку закладки VA и переход к ней "ГруппаНесколькоКлиентовТестирования" "Test clients settings"
		И Пауза 1

* In this column, the connection name is set. This name must be unique within the entire table.
		И я запоминаю строку "Имя" в переменную "ПеременнаяКолонкаИмя"
		И я устанавливаю в таблице VA "ДанныеКлиентовТестирования" в режиме обучения в колонке "$ПеременнаяКолонкаИмя$" "Set connection name here"
		И Пауза 1
		И Я делаю подсветку элемента VA "ДанныеКлиентовТестированияИмя" "Connection name"
		
* The connection name is important because it allows to connect and disconnect Test Clients by name.
* Next is the column with connection synonym. This column is mainly used when Vanessa Automation works together with Application Design System.
		И я устанавливаю в таблице VA "ДанныеКлиентовТестирования" в режиме обучения в колонке "Синоним" "Set connection synonym here"
		И Пауза 1
		И Я делаю подсветку элемента VA "ДанныеКлиентовТестированияСиноним" "Connection synonym"
* When working from ADS, the connection name is generated automatically, so it cannot be used in the script, because it is unknown in advance.
		И я устанавливаю в таблице VA "ДанныеКлиентовТестирования" в режиме обучения в колонке "$ПеременнаяКолонкаИмя$" "Service line of the ADS"
		И Пауза 1
		И Я делаю подсветку элемента VA "ДанныеКлиентовТестированияИмя" "The name can be created by another system"
* In this case, you can use the synonym column as an alternative connection name.
		И Я делаю подсветку элемента VA "ДанныеКлиентовТестированияСиноним" "Connection synonym"

* All steps that search for a row in the Test Clients table by connection name first perform a search by the Name column.
		И Пауза 2
		И Я делаю подсветку элемента VA "ДанныеКлиентовТестированияИмя" "First there is a search by name"
* And then by the Synonym column.
		И Я делаю подсветку элемента VA "ДанныеКлиентовТестированияСиноним" "Then search by synonym"

* Next is the column for selection of Test Client type.
		И Я делаю подсветку элемента VA "ДанныеКлиентовТестированияТипКлиента" "Test client type"
	
* Possible values. Thin. 1C session on managed forms.
		И я устанавливаю в таблице VA "ДанныеКлиентовТестирования" в режиме обучения в колонке "ТипКлиента" "Thin"
		И Пауза 1
		И Я делаю подсветку элемента VA "ДанныеКлиентовТестированияТипКлиента" "Thin"
* Thick. Also 1C session on managed forms.
		И я устанавливаю в таблице VA "ДанныеКлиентовТестирования" в режиме обучения в колонке "ТипКлиента" "Thick"
		И Пауза 1
		И Я делаю подсветку элемента VA "ДанныеКлиентовТестированияТипКлиента" "Thick"
* Web. 1C session in the browser.
		И я устанавливаю в таблице VA "ДанныеКлиентовТестирования" в режиме обучения в колонке "ТипКлиента" "Web"
		И Пауза 1
		И Я делаю подсветку элемента VA "ДанныеКлиентовТестированияТипКлиента" "Web"
* A regular application. 1C session on regular forms.
		И я устанавливаю в таблице VA "ДанныеКлиентовТестирования" в режиме обучения в колонке "ТипКлиента" "Common application"
		И Пауза 1
		И Я делаю подсветку элемента VA "ДанныеКлиентовТестированияТипКлиента" "Common application"
* Mobile client.
		И я устанавливаю в таблице VA "ДанныеКлиентовТестирования" в режиме обучения в колонке "ТипКлиента" "Mobile client"
		И Пауза 1
		И Я делаю подсветку элемента VA "ДанныеКлиентовТестированияТипКлиента" "Mobile client"
* Mobile application.
		И я устанавливаю в таблице VA "ДанныеКлиентовТестирования" в режиме обучения в колонке "ТипКлиента" "Mobile application"
		И Пауза 1
		И Я делаю подсветку элемента VA "ДанныеКлиентовТестированияТипКлиента" "Mobile application"


* That's it, move on to the next lesson of the interactive help.

//Do not translate 18