# language: ru

@lessons

Функционал: Интерактивная справка. Общие настройки формирования отчетов о запуске сценария.

Сценарий: Общие настройки формирования отчетов о запуске сценария

* Hi! In this lesson, I will tell you about the general settings for generating reports on the result of running a script. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		
* These settings are here.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'СтраницаОтчетыОЗапуске' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройкиОтчетовОбщие' UI Automation
		И Пауза 1
		И я делаю подсветку нескольких элементов VA с их заголовком "General settings" UI Automation
			| 'Name'                                     |
			| 'ДобавлятьКИмениСценарияУсловияВыгрузки'  |
			| 'ВыгружатьСтатусВыполненияСценариевВФайл' |

* Checkbox - prefix the script name with the assembly name. This option is useful when the same scripts are run in different environments.
		И я делаю подсветку нескольких элементов VA с их заголовком "Add the build name to the script name" UI Automation
			| 'Name'                                     |
			| 'ДобавлятьКИмениСценарияУсловияВыгрузки'  |
* For example, there may be scripts that are run in the CI circuit in the thin client and in the web client.
* For this case, you can set this checkbox.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ДобавлятьКИмениСценарияУсловияВыгрузки' UI Automation
		И Пауза 1
* In the appeared field, specify the unique assembly name.
		И я делаю подсветку нескольких элементов VA с их заголовком "Unique assembly name" UI Automation
			| 'Name'              |
			| 'ИмяТекущейСборки' |
* To run tests in a thin client, you need to specify one assembly name. And another to run tests in the web client.
* Thus, in this example, two test sessions will be launched. One with the first assembly name, and the second with another one.

* Next, this assembly name will be added at the beginning of the name of each script that was run in this testing session.
* This way, reports such as Allure show the runs of the same script as different runs.

* Moving on. This checkbox enables the mechanism for uploading the build status to a file.
		И я делаю подсветку нескольких элементов VA с их заголовком "Upload the script execution status to a file" UI Automation
			| 'Name'                                     |
			| 'ВыгружатьСтатусВыполненияСценариевВФайл' |
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ВыгружатьСтатусВыполненияСценариевВФайл' UI Automation
		И Пауза 1

* If the checkbox is set, then in this field you need to enter the path to the file to upload the build status.
		И я делаю подсветку нескольких элементов VA с их заголовком "File name" UI Automation
			| 'Name'                                             |
			| 'ПутьКФайлуДляВыгрузкиСтатусаВыполненияСценариев' |
	
* To find out more about the build statuses, follow this hyperlink.
		И я делаю подсветку расширенной подсказки элемента VA "ВыгружатьСтатусВыполненияСценариевВФайл" "Detailed information" UI Automation

* That's it, move on to the next lesson of the interactive help.
