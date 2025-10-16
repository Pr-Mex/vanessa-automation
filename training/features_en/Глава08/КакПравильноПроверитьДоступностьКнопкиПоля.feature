# language: ru

@lessons

Функционал: Интерактивная справка. Как правильно проверить видимость или доступность кнопки, элемента или пункта меню.

Сценарий: Как правильно проверить видимость или доступность кнопки, элемента или пункта меню.

* Hi! In this lesson, I will tell you how to properly check the visibility or accessibility of a button, form element, or menu item. Let's open the second copy of Vanessa in training mode.
		И я открываю Vanessa Automation в режиме обучения

* Let's upload a test case.
		И я устанавливаю опцию VA в режиме обучения "ПроверкаСинтаксисаВРедакторе" "Истина"
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерКакПравильноПроверитьДоступностьКнопкиПоля.feature"

* There are several steps that check the availability of form elements.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 8 по 8 строку 'Example of element availability check' подсценарий

* Or that perform form elements visibility check.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 11 по 12 строку 'Example of element visibility check' подсценарий

* These are not all such steps, but they are enough for an example.
* It is important to understand one feature.
* Such steps do not check the actual visibility or accessibility of the elements.
* They check the special flags that form elements have.
* The peculiarity of the 1C platform is that a form element may have a visibility flag, but at the same time it may be really invisible for the user.
* This effect can be obtained, for example, if the form element is hidden through a conditional appearance or a functional option.

* Because of this feature, such steps should be used only if such mechanisms for hiding elements are not used, which of course does not always happen.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 7 по 12 строку 'Steps are not always applicable' подсценарий

* There is another solution to this problem.
		
* Try to perform an action with a form element, for example, click a button and check that an exception is being raised.
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features_en\Примеры\ПримерКакПравильноПроверитьДоступностьКнопкиПоля2.feature"

* The first example uses a special step that checks the negative behavior of other steps.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 10 по 11 строку 'Special step' подсценарий
* Before doing this, check that the button exists. Otherwise, you can get a false positive result, as the step will cause an exception because the button is not found on the form.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 9 по 9 строку 'Check button existance' подсценарий
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 11 по 11 строку 'Checked step' подсценарий

* In the second example, the same idea is applied, but instead of a special step, the construction Try Except is used
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 17 по 21 строку 'Try/Except is used' подсценарий
* Before doing this, also check that the button exists.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 16 по 16 строку 'Check button existance' подсценарий

* That's it, move on to the next lesson of the interactive help.


