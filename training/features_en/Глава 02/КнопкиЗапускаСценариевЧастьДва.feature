# language: ru

@lessons

Функционал: Интерактивная справка. Основные кнопки работы со сценариями. Часть Два.

Сценарий: Основные кнопки работы со сценариями. Часть Два.

* Hi! This is the second part of the topic about the buttons that control the creation, saving and running of scripts. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения
		

* Next are two buttons that save the feature file to disk.
		И я делаю подсветку нескольких элементов VA с их заголовком "Save feature file to disk" UI Automation 
			| 'Name'                                 |
			| 'ПанельVanessaEditorСохранитьФайл'    |
			| 'ПанельVanessaEditorСохранитьФайлКак' |

* This button simply saves changes to the current feature file
		И я делаю подсветку нескольких элементов VA с их заголовком "Save file changes" UI Automation
			| 'Name'                                 |
			| 'ПанельVanessaEditorСохранитьФайл'    |

* And this button opens the file saving dialog to save the feature file with a new name.
		И я делаю подсветку нескольких элементов VA с их заголовком "Save the file with a new name" UI Automation
			| 'Name'                                 |
			| 'ПанельVanessaEditorСохранитьФайлКак' |

* Next is the button that re-reads the feature file from the disk.
		И я делаю подсветку нескольких элементов VA с их заголовком "Reread a file from disk" UI Automation
			| 'Name'                              |
			| 'ПанельVanessaEditorПерезагрузить' |

* Next is a button that runs all scripts from the current feature file for execution.
		И я делаю подсветку нескольких элементов VA с их заголовком "Run the script for execution" UI Automation
			| 'Name'                                  |
			| 'ПанельVanessaEditorВыполнитьСценарии' |

* This button stops script execution.
		И я делаю подсветку нескольких элементов VA с их заголовком "Run the script for execution" UI Automation
			| 'Name'                                   |
			| 'ПанельVanessaEditorОстановитьСценарии' |
		И Пауза 1
			

* And this button performs two actions at once. It re-reads the feature file from the disk and runs scripts for execution.
		И я делаю подсветку нескольких элементов VA с их заголовком "Run the script for execution" UI Automation
			| 'Name'                                             |
			| 'ПанельVanessaEditorФормаПерезагрузитьИВыполнить' |
	
* And finally, this button switches to tree mode. At the same time, the current feature file will be uploaded to the tree.
		И я делаю подсветку нескольких элементов VA с их заголовком "Run the script for execution" UI Automation
			| 'Name'                                         |
			| 'ПанельVanessaEditorФормаПерейтиВДеревоШагов' |

* That's it, move on to the next lesson of the interactive help.
		И я делаю клик по заголовку Vanessa Automation 


