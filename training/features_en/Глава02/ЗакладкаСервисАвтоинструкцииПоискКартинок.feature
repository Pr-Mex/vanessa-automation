# language: ru

@lessons

Функционал: Интерактивная справка. Автоинструкции. Поиск картинок.

Сценарий: Автоинструкции. Поиск картинок.

* Hi! In this lesson, I will tell you about the image search settings. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		
* These settings are located here.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'СтраницаАвтоИнструкции' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаПоискКартинок' UI Automation
		И Пауза 1
		И я делаю подсветку нескольких элементов VA с их заголовком "Picture search settings" UI Automation
			| 'Name'                                       |
			| 'ПоискКартинокСПомощьюКомпонентыVanessaExt' |
			| 'ПорогПоискаКартинки'                       |

* This checkbox specifies that steps searching for screen images will use the VanessaExt component.
		И я делаю подсветку нескольких элементов VA с их заголовком "Picture search using components" UI Automation
			| 'Name'                                       |
			| 'ПоискКартинокСПомощьюКомпонентыVanessaExt' |

* Search quality factor is set in this field by a numeric value.
		И я делаю подсветку нескольких элементов VA с их заголовком "Search quality" UI Automation
			| 'Name'                 | 'Type' | 'ИмяЭлементаСТемжеРодителем' | 'ТолькоВертикальныеКоординаты' |
			| 'ПорогПоискаКартинки' | ''    | ''                           | 'Ложь'                         |

* If this checkbox is removed, then the image search will be carried out using the SikuliX tool, which is an outdated mechanism.
* It is recommended to leave this checkbox set.
		И я делаю подсветку нескольких элементов VA с их заголовком "Picture search using components" UI Automation
			| 'Name'                                       |
			| 'ПоискКартинокСПомощьюКомпонентыVanessaExt' |

* That's it, move on to the next lesson of the interactive help.


