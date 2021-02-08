# language: ru


@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnUFSovm82Builds
@IgnoreOnWeb

@IgnoreOn836
@IgnoreOn837
@IgnoreOn838
@IgnoreOn839
@IgnoreOn8310
@IgnoreOn8311
@IgnoreOn8312
@IgnoreOn8313
@IgnoreOn8314
@IgnoreOn8315
@IgnoreOn8316

@ServerCodeCoverage


Функциональность: Работа с кнопками свертки уровней дерева

    Как разработчик
    Я хочу чтобы в редакторе корректно работали кнопки поиска
    Чтобы я мог использовать эти кнопки

Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой 'VAEditor'




Сценарий: Работа с кнопками свертки уровней дерева

	
	И я нажимаю на кнопку с именем 'ФормаПерейтиВVanessaEditor'

	* Нажимаем на кнопки свертки уровней и проверяем, что не появилось окно исключения


		И я нажимаю на кнопку с именем 'VanessaEditorViewFoldAll'
		И Пауза 1
		И я нажимаю на кнопку с именем 'VanessaEditorViewUnfold2'
		И Пауза 1
		И я нажимаю на кнопку с именем 'VanessaEditorViewUnfold3'
		И Пауза 1
		И я нажимаю на кнопку с именем 'VanessaEditorViewUnfold4'
		И Пауза 1
		И я нажимаю на кнопку с именем 'VanessaEditorViewUnfold5'
		И Пауза 1
		И я нажимаю на кнопку с именем 'VanessaEditorViewUnfold6'
		И Пауза 1
		И я нажимаю на кнопку с именем 'VanessaEditorViewUnfoldAll'
		И Пауза 1
		Тогда не появилось окно предупреждения системы
		
