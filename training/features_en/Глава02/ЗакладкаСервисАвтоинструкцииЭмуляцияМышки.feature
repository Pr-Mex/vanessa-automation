# language: ru

@lessons

Функционал: Интерактивная справка. Автоинструкции. Эмуляция мышки.

Сценарий: Автоинструкции. Эмуляция мышки.

* Hi! In this lesson, I will tell you about the mouse emulation settings. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		
* These settings are located here.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'СтраницаАвтоИнструкции' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройкиЭмуляцииДействийМышки' UI Automation
		И Пауза 1
		И я делаю подсветку нескольких элементов VA с их заголовком "Mouse emulation settings" UI Automation
			| 'Name'                                   |
			| 'ЭмулироватьДвиженияМышкиVanessaExt'    |
			| 'ГруппаНастройкиСмещенийКоординатМышки' |
			| 'ГруппаСкоростьПеремещенияМышки'        |
			| 'ГруппаПодсвечиватьКликиМышкой'         |

* This checkbox specifies that when performing normal steps from the main library, mouse actions will be emulated.
		И я делаю подсветку нескольких элементов VA с их заголовком "Enabling mouse emulation" UI Automation
			| 'Name'                                |
			| 'ЭмулироватьДвиженияМышкиVanessaExt' |

* Here are the settings for the offset of the cursor coordinates.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройкиСмещенийКоординатМышки' UI Automation
		И Пауза 1
		И я делаю подсветку нескольких элементов VA с их заголовком "Coordinate offset" UI Automation
			| 'Name'                                          | 'Type' | 'ИмяЭлементаСТемжеРодителем' | 'ТолькоВертикальныеКоординаты' |
			| 'СмещениеПоГоризонталиДвиженияМышкиVanessaExt' | ''    | ''                           | 'Ложь'                         |
			| 'СмещениеПоВертикалиДвиженияМышкиVanessaExt'   | ''    | ''                           | 'Ложь'                         |
* These settings is to be set only if you need to compensate for mouse cursor movement.

* Moving on. Here are the settings to set the mouse cursor movement speed.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройкиСмещенийКоординатМышки' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаСкоростьПеремещенияМышки' UI Automation
		И Пауза 1
		И я делаю подсветку нескольких элементов VA с их заголовком "Movement speed" UI Automation
			| 'Name'                                        | 'Type' | 'ИмяЭлементаСТемжеРодителем' | 'ТолькоВертикальныеКоординаты' |
			| 'КоличествоШаговПриДвиженииМышкиVanessaExt'  | ''    | ''                           | 'Ложь'                         |
			| 'ПаузаМеждуШагамиПриДвиженииМышкиVanessaExt' | ''    | ''                           | 'Ложь'                         |

* This field specifies the number of micro-movements of the mouse when the cursor moves to the new coordinates.
		И я делаю подсветку нескольких элементов VA с их заголовком "Number of micro-movements" UI Automation
			| 'Name'                                        | 'Type' | 'ИмяЭлементаСТемжеРодителем' | 'ТолькоВертикальныеКоординаты' |
			| 'КоличествоШаговПриДвиженииМышкиVanessaExt'  | ''    | ''                           | 'Ложь'                         |

* And in this field, a pause in milliseconds is set between these micro-movements.
		И я делаю подсветку нескольких элементов VA с их заголовком "Pause" UI Automation
			| 'Name'                                        | 'Type' | 'ИмяЭлементаСТемжеРодителем' | 'ТолькоВертикальныеКоординаты' |
			| 'ПаузаМеждуШагамиПриДвиженииМышкиVanessaExt' | ''    | ''                           | 'Ложь'                         |


* Moving on. Here are the settings that determine mouse click animation appearance.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаСкоростьПеремещенияМышки' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаПодсвечиватьКликиМышкой' UI Automation
		И Пауза 1
		И я делаю подсветку нескольких элементов VA с их заголовком "Click highlighting" UI Automation
			| 'Name'                                       | 'Type' | 'ИмяЭлементаСТемжеРодителем' | 'ТолькоВертикальныеКоординаты' |
			| 'ПодсвечиватьКликМышкиВБраузереVanessaExt'  | ''    | ''                           | 'Ложь'                         |
			| 'ЦветПодсветкиКликаМышкиVanessaExt'         | ''    | ''                           | 'Ложь'                         |
			| 'ВыборЦветаПодсветкиКликовМышки'            | ''    | ''                           | 'Ложь'                         |
			| 'РадиусПодсветкиКликаМышкиVanessaExt'       | ''    | ''                           | 'Ложь'                         |
			| 'ДлительностьПодсветкиКликаМышкиVanessaExt' | ''    | ''                           | 'Ложь'                         |
			| 'ТолщинаПодсветкиКликаМышкиVanessaExt'      | ''    | ''                           | 'Ложь'                         |
			| 'ПрозрачностьПодсветкиКликаМышкиVanessaExt' | ''    | ''                           | 'Ложь'                         |

* This checkbox enables animation of mouse clicks.
		И я делаю подсветку нескольких элементов VA с их заголовком "Enable animation" UI Automation
			| 'Name'                                      | 'Type' | 'ИмяЭлементаСТемжеРодителем' | 'ТолькоВертикальныеКоординаты' |
			| 'ПодсвечиватьКликМышкиВБраузереVanessaExt' | ''    | ''                           | 'Ложь'                         |

* This field sets the color of the number click animation.
		И я делаю подсветку нескольких элементов VA с их заголовком "Color by number" UI Automation
			| 'Name'                               | 'Type' | 'ИмяЭлементаСТемжеРодителем' | 'ТолькоВертикальныеКоординаты' |
			| 'ЦветПодсветкиКликаМышкиVanessaExt' | ''    | ''                           | 'Ложь'                         |

* This field allows desired color selection from the drop-down list.
		И я делаю подсветку нескольких элементов VA с их заголовком "Choose a color from the list" UI Automation
			| 'Name'                            | 'Type' | 'ИмяЭлементаСТемжеРодителем' | 'ТолькоВертикальныеКоординаты' |
			| 'ВыборЦветаПодсветкиКликовМышки' | ''    | ''                           | 'Ложь'                         |

* This hyperlink allows to check how the click animation will look according to the selected settings.
		И я делаю подсветку нескольких элементов VA с их заголовком "Check animation appearance" UI Automation
			| 'Name'                     | 'Type' | 'ИмяЭлементаСТемжеРодителем' | 'ТолькоВертикальныеКоординаты' |
			| 'ТестПодсветкиКликаМышки' | ''    | ''                           | 'Ложь'                         |


* These four fields set the rest of the mouse click animation parameters such as radius, duration, thickness and transparency.
		И я делаю подсветку нескольких элементов VA с их заголовком "Click highlighting" UI Automation
			| 'Name'                                       | 'Type' | 'ИмяЭлементаСТемжеРодителем' | 'ТолькоВертикальныеКоординаты' |
			| 'РадиусПодсветкиКликаМышкиVanessaExt'       | ''    | ''                           | 'Ложь'                         |
			| 'ДлительностьПодсветкиКликаМышкиVanessaExt' | ''    | ''                           | 'Ложь'                         |
			| 'ТолщинаПодсветкиКликаМышкиVanessaExt'      | ''    | ''                           | 'Ложь'                         |
			| 'ПрозрачностьПодсветкиКликаМышкиVanessaExt' | ''    | ''                           | 'Ложь'                         |

* That's it, move on to the next lesson of the interactive help.


