# language: ru

@lessons

Функционал: Интерактивная справка. Язык фича файлов.

Сценарий: Язык фича файлов.

* Hi! In this lesson, I will tell you how to specify the language of the feature files. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		
* This setting is located here.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаЯзык' UI Automation
		И Пауза 1
		И я делаю подсветку нескольких элементов VA с их заголовком "Feature files language setting" UI Automation
			| 'Name'                   |
			| 'ЯзыкГенератораGherkin' |

* If you're going to create and run feature files in some other language, select the value in this field.
* For example - English.
		И я выбираю английский яызк VA Режим обучения

* That's it, move on to the next lesson of the interactive help.



