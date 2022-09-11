# language: ru

@lessons

Функционал: Интерактивная справка. Горячие клавиши редактора

Сценарий: Горячие клавиши редактора

* Hi! In this lesson, I will tell you about the hotkeys of Vanessa Automation editor. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения

* And upload a test example.
		И я устанавливаю опцию VA в режиме обучения "ПроверкаСинтаксисаВРедакторе" "Истина"
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерГорячиеКлавишиРедактора.feature"

* Let's start with the search. To open the text search dialog, press shortcut Control. Plus. F.
		И Я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий "Ctrl+F" 'Ctrl+F (for search)'
		И я нажимаю сочетание клавиш "Ctrl+F"
		И Пауза 1
* The search also allows regular expressions usage.

* To open the text snippet replacement dialog, press Control plus H.
		И Я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий "Ctrl+H" 'Ctrl+H (to replace)'
		И я нажимаю сочетание клавиш "Ctrl+H"
		И Пауза 1
		
* To duplicate the current line, press the shortcut Alt, plus Shift, plus down.
		И я нажимаю сочетание клавиш "ESC"
		И Пауза 1
		И Я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий "alt+shift+Down" 'Alt+Shift+Down (duplicate the current line)'
* In this case, the cursor will move to the line below.

* You can also duplicate the current line using the shortcut Alt plus Shift plus Up.
		И Я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий "alt+shift+Up" 'Alt+Shift+Up (duplicate the current line)'
* In this case, the cursor will remain on the current line.

* The selected lines can be moved by pressing Alt plus up or down buttons. You can also move the current row the same way.
		И Я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий "Alt+Up or Alt+Down" 'Alt+Up or Alt+Down (move the selected line)'

* To edit the current text snippet at once in all occurences in the file, press Control plus F2.
		И Я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий "ctrl+F2" 'Ctrl+F2 (edit all occurrences of the fragment)'

* To quickly switch between open editor tabs, press Control plus tab number.
		И Я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий "ctrl+1" 'Ctrl+1 (quickly switch to the editor tab)'

* To close the current tab, press Control plus W.
		И Я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий "ctrl+W" 'Ctrl+W (close the current tab)'

* To collapse the current group, press Control plus Shift plus left square bracket.
		И Я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий "ctrl+shift+[" 'Ctrl+Shift+[ (collapse the current group)'

* To expand the current group, press Control plus Shift plus right square bracket.
		И Я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий "ctrl+shift+]" 'Ctrl+Shift+] (expand the current group)'

* To expand all groups, press Control plus K plus J.
		И Я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий "ctrl+K ctrl+J" 'Ctrl+K Ctrl+J (expand all groups)'

* To collapce all groups, press Control plus K plus 0.
		И Я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий "ctrl+K ctrl+0" 'Ctrl+K Ctrl+0 (collapse all groups)'

* To delete the current line, press Control plus Shift plus K.
		И Я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий "ctrl+shift+K" 'Ctrl+Shift+K (delete the current line)'

* That's it, move on to the next lesson of the interactive help.


