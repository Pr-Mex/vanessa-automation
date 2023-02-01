# language: ru

@lessons

Функционал: Интерактивная справка. Видеозапись прохождения тестов.

Сценарий: Видеозапись прохождения тестов

* Hi! In this lesson, I will tell you about the settings of the video recording of passing the tests. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		
* These settings are here.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'СтраницаОтчетыОЗапуске' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаВидеозаписьПрохожденияТестов' UI Automation
		И Пауза 1
		И я делаю подсветку нескольких элементов VA с их заголовком "Video recording for passing tests settings" UI Automation
			| 'Name'                             |
			| 'ЗаписыватьВидеоВыполненияТестов' |
	
* This checkbox enables video recording during test execution
		И я делаю подсветку нескольких элементов VA с их заголовком "Enabling video recording" UI Automation
			| 'Name'                             |
			| 'ЗаписыватьВидеоВыполненияТестов' |

* If the checkbox is set, then several fields must be filled in.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ЗаписыватьВидеоВыполненияТестов' UI Automation
		И Пауза 1

* In this field, specify the number of frames per second for video recording. The larger the number of frames, the greater the processor load.
		И я делаю подсветку нескольких элементов VA с их заголовком "Number of frames" UI Automation
			| 'Name'                                   | 'Type' | 'ИмяЭлементаСТемжеРодителем' | 'ТолькоВертикальныеКоординаты' |
			| 'КоличествоКадровВидеоВыполненияТестов' | ''    | ''                           | 'Ложь'                         |

* In this field, specify the name of the command to record the video. It is recommended to keep the default value.
		И я делаю подсветку нескольких элементов VA с их заголовком "Command name" UI Automation
			| 'Name'                                | 'Type' | 'ИмяЭлементаСТемжеРодителем' | 'ТолькоВертикальныеКоординаты' |
			| 'КомандаЗаписиВидеоВыполненияТестов' | ''    | ''                           | 'Ложь'                         |

* In this field, specify the path to the recorded videos directory.
		И я делаю подсветку нескольких элементов VA с их заголовком "Directory name" UI Automation
			| 'Name'                                   | 'Type' | 'ИмяЭлементаСТемжеРодителем' | 'ТолькоВертикальныеКоординаты' |
			| 'КаталогДляЗаписиВидеоВыполненияТестов' | ''    | ''                           | 'Ложь'                         |

* That's it, move on to the next lesson of the interactive help.
