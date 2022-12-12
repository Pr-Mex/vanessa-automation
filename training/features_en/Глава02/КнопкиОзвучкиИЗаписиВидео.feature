# language: ru

@lessons

Функционал: Интерактивная справка. Управление озвучкой сценария и записью видео.

Сценарий: Управление озвучкой сценария и записью видео.

* Hi! In this lesson, I will tell you about the buttons that control the voice acting of scripts and video recording. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		

* Excellent. Look. We will talk about this toolkit.
		И я делаю подсветку нескольких элементов VA  "Managing script voiceover and video recording" UI Automation
			| 'Name'                                                  |
			| 'ПанельVanessaEditorОзвучиваниеВыполненияСценария'     |
			| 'ПанельVanessaEditorФормаВключитьВыключитьЗаписьВидео' |

* This button turns on script execution voiceover.
		И Я делаю подсветку элемента формы VA по имени "ПанельVanessaEditorОзвучиваниеВыполненияСценария" "Enabling voiceover of script execution"

* It corresponds to the checkbox in Vanessa Automation settings. Let's find it.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'СтраницаАвтоИнструкции' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаАудио' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаАудиоОбщие' UI Automation
		И Пауза 1
		
* Excellent. This is the checkbox.
		И я перемещаю курсор к заголовку Vanessa Automation 
		И Я делаю подсветку элемента формы VA по имени "ОзвучиватьВыполнениеСценария" "Flag corresponding to the button"


* The checkbox is set when you click on the script execution voiceover button.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ПанельVanessaEditorОзвучиваниеВыполненияСценария' UI Automation
		И Я делаю подсветку элемента формы VA по имени "ОзвучиватьВыполнениеСценария" "Flag corresponding to the button"

* When you click the script execution voiceover button again, the checkbox is removed.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ПанельVanessaEditorОзвучиваниеВыполненияСценария' UI Automation
		И Я делаю подсветку элемента формы VA по имени "ОзвучиватьВыполнениеСценария" "Flag corresponding to the button"

* A significant point. To make the script voiceover work, specify the voice generating settings.
* Vanessa Automation supports several voice generation engines. They are described in the relevant lessons.
* For now, just state that these settings will need to be set accordingly.
* Another significant point. In order for the script voiceover to work, it is necessary to compose the script in a certain way.
* Let's upload a test case to see how it should look.
		И я устанавливаю опцию VA в режиме обучения "ПроверкаСинтаксисаВРедакторе" "Ложь"
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаЗапускТестов' UI Automation
		И я загружаю фича файлы в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерСценарияДляОзвучки.feature"
		И Пауза 1
		И выражение внутреннего языка 'КонтекстСохраняемый.ФормаVAВРежимеОбучения.ФлагСценарииЗагружены' стало Истинно в течение 20 секунд

* Voiceover text should be written in groups of steps. These lines start with an asterisk character.
* Inside the groups of steps are those actions that will be performed while the speaker pronounces the text.

* That's it, move on to the next lesson of the interactive help.



