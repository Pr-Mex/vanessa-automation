# language: ru

@lessons

Функционал: Интерактивная справка. Попытка/исключение.

Сценарий: Попытка/исключение.

* Hi! In this lesson, I will tell you about the specifics of using the "try except" construct in scripts. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения

* And upload a test example.
		И я устанавливаю опцию VA в режиме обучения "ПроверкаСинтаксисаВРедакторе" "Истина"
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\ПримерыПопыткаИсключение1.feature"

* The first point. Try Except construct consists of two mandatory keywords.
* The first keyword is Try.
		И Я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 9 'Try' 'Ключевое слово "Try"'
* The second keyword is Except.
		И Я делаю подсветку фрагмента текста в редакторе VA в строке в режиме обучения подсценарий 12 'Exception' 'Ключевое слово "Exception"'

* Steps that are inside the Try section are separated by an additional indent.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 10 по 11 строку 'Шаги внутри секции "Try"' подсценарий
* Steps that are inside the Except section are also separated by an additional indent.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 13 по 14 строку 'Шаги внутри секции "Exception"' подсценарий

* If any step in Try section fails, then the execution of the script will not be interrupted, but will go to the Except section.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 13 по 14 строку 'Шаги внутри секции "Exception"' подсценарий
	
* The Try Except construct is usually used in cases where the execution of the script cannot be guaranteed.

* Also Try Except mechanism can be used to log multiple errors from a single script.
* There is a special step for this.
		И Я делаю подсветку фрагмента текста в редакторе VA в режиме обучения подсценарий 'And I register the error "Required table row is missing" by exception data' 'Error registration step'
* This step can only be used in the Except section.
* As a result, one script will be able to register several errors in one run.

* A significant point. The use of the Try Except construct in the script text must be justified.
* Please avoid using this construction where possible.

* That's it, move on to the next lesson of the interactive help.
