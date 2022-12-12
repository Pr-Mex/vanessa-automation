# language: ru

@lessons

Функционал: Интерактивная справка. Vanessa Editor.

Сценарий: Vanessa Editor

* Hi! In this lesson, I will tell you about the settings of the script editor. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		
* These settings are located here.
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'ГруппаНастройки' UI Automation
		И Пауза 1
		И я делаю клик по элементу формы VA UI Automation 'ЭтотСеанс' 'СтраницаНастройкиVanessaEditor' UI Automation
		И Пауза 1
		И я делаю подсветку нескольких элементов VA с их заголовком "Editor settings" UI Automation
			| 'Name'                                           |
			| 'ИспользоватьДанныеТекущейФормыПриПодбореШагов' |
			| 'ПоказыватьСтрокиПодсценариевVanessaEdittor'    |
			| 'ПоказыватьМиниатюруКода'                       |
			| 'ЗаменятьТабыНаПробелы'                         |
			| 'ОтображатьЗакладкиСверху'                      |
			| 'ПроверкаСинтаксисаВРедакторе'                  |
			| 'ПоказыватьРазличияВРедактореОтдельно'          |
			| 'ОткрыватьНачальнуюСтраницуПриЗапуске'          |
			| 'ПоказыватьЗначенияПеременныхВСтрокахРедактора' |
			| 'ОтображениеТабуляцииИПробелов'                 |
			| 'ТемаРедактораVanessaEditor'                    |
			| 'НастройкаВидимостиКнопокПанелиРедактора'       |
			| 'VanessaEditorНастройкиРедактора'               |
	

* This checkbox enables the mode, when context tooltip fill in the data of the current form of the test client into the step parameters on typing the steps.
		И я делаю подсветку нескольких элементов VA с их заголовком "Form data on steps set" UI Automation
			| 'Name'                                           |
			| 'ИспользоватьДанныеТекущейФормыПриПодбореШагов' |

* This checkbox enables the display of subscript lines in the script editor.
		И я делаю подсветку нескольких элементов VA с их заголовком "Show subscript lines" UI Automation
			| 'Name'                                        |
			| 'ПоказыватьСтрокиПодсценариевVanessaEdittor' |

* This checkbox enables code thumbnail display
		И я делаю подсветку нескольких элементов VA с их заголовком "Code thumbnail" UI Automation
			| 'Name'                     |
			| 'ПоказыватьМиниатюруКода' |

* This checkbox enables the replacement of tab characters with spaces in the editor
		И я делаю подсветку нескольких элементов VA с их заголовком "Tabs and spaces" UI Automation
			| 'Name'                   |
			| 'ЗаменятьТабыНаПробелы' |

* This checkbox determines location of main tabs of Vanessa Automation - on the right or on top.
		И я делаю подсветку нескольких элементов VA с их заголовком "Display tabs" UI Automation
			| 'Name'                      |
			| 'ОтображатьЗакладкиСверху' |

* This checkbox enables the steps spelling control.
		И я делаю подсветку нескольких элементов VA с их заголовком "Check syntax" UI Automation
			| 'Name'                          |
			| 'ПроверкаСинтаксисаВРедакторе' |

* This checkbox determines how file differences will be shown in the editor - together or separately.
		И я делаю подсветку нескольких элементов VA с их заголовком "Show file differences" UI Automation
			| 'Name'                                  |
			| 'ПоказыватьРазличияВРедактореОтдельно' |

* This checkbox determines if the home page will be displayed when starting Vanessa Automation.
		И я делаю подсветку нескольких элементов VA с их заголовком "Show start page" UI Automation
			| 'Name'                                  |
			| 'ОткрыватьНачальнуюСтраницуПриЗапуске' |

* This checkbox determines if the values ​​of the variables of these steps will be displayed to the right of the steps.
		И я делаю подсветку нескольких элементов VA с их заголовком "Show variable values" UI Automation
			| 'Name'                                           |
			| 'ПоказыватьЗначенияПеременныхВСтрокахРедактора' |

* This field allows selection of tabs and spaces presentation mode on selecting lines in the editor.
		И я делаю подсветку нескольких элементов VA с их заголовком "Tabs and spaces" UI Automation
			| 'Name'                           |
			| 'ОтображениеТабуляцииИПробелов' |

* This field allows to select an editor theme.
		И я делаю подсветку нескольких элементов VA с их заголовком "Editor theme" UI Automation
			| 'Name'                        |
			| 'ТемаРедактораVanessaEditor' |

* This hyperlink allows to adjust the visibility of the buttons on the editor command panel.
		И я делаю подсветку нескольких элементов VA с их заголовком "Visibility of command panel buttons" UI Automation
			| 'Name'                                     |
			| 'НастройкаВидимостиКнопокПанелиРедактора' |

* This hyperlink manages all the editor settings that the Monaco editor provides.
		И я делаю подсветку нескольких элементов VA с их заголовком "All editor settings" UI Automation
			| 'Name'                             |
			| 'VanessaEditorНастройкиРедактора' |


* That's it, move on to the next lesson of the interactive help.



