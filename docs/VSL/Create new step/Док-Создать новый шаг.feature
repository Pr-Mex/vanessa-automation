# language: ru
# encoding: utf-8
#parent ua:
@UA31_описание_настроек
#parent uf:
@UF6_текстовые_и_видео_инструкции

@IgnoreOnCIMainBuild



Функциональность: Создать новый шаг

 
Контекст:
	Дано я запускаю SikuliX сервер
	Дано Я открываю Vanessa-Automation в TestClient для записи автодокументации "TestManager"

	И я устанавливаю профиль цвета "MainForm"
		| 'Шрифт'      | 'arial' |
		| 'ЦветФона'   | 'white' |
		| 'ЦветШрифта' | 'black' |
		| 'Размер'     | '18'    |	
		
	И я устанавливаю основной профиль цвета "MainForm"
	

Сценарий: Создать новый шаг

	
	@YandexTTS: ermil,evil 
	И текст субтитров "Привет, Ванесса! Расскажи пожалуйста, как мне добавить свой шаг в библиотеку шагов?"

	И текст субтитров "Привет! Давай расскажу."


			
	* Я обычно делаю так. Сначала перехожу к закладке работа с ю ай и ввожу текст будущего шага, как будт-то он уже есть.
		Затем клик на картинку "Работа с UI"
		И пауза 1
		И я активизирую поле с именем "СгенерированныйСценарий"
		
	
	* Пускай это будет шаг, который ищет заказ покупателя по номеру и проводит его
		И я набираю текст "И я провожу заказ покупателя с номером \"00000001\""
	

	* Теперь выбираем опцию подготовить сценарий к выполнению
		И я рисую стрелку в автоинструкции от "" до "Подготовить сценарий к выполнению"
			|'Цвет'          | 'Зеленый'       |
			|'Длительность'  | '2000'          |
			|'ТочкаКуда'     | 'СерединаНиз'   |
			|'Толщина'       | '10'            |
	
	* После этого будет создан временный сценарий и он будет загр^ужен в дерево шагов.
		Затем клик на картинку "Подготовить сценарий к выполнению"
		И пауза 1
	
	#[autodoc.ignorestep]	
	И пауза 5
	
	
	* Сценарий загрузился и мы видим, что шаг отмечен желтым цветом. А это означает, что его нет в библиотеке шагов.
		И я рисую стрелку в автоинструкции от "" до "НовыйШагВДеревеШагов"
			|'Цвет'          | 'Зеленый'       |
			|'Длительность'  | '3000'          |
			|'ТочкаКуда'     | 'СерединаНиз'   |
			|'Толщина'       | '10'            |
	

	* Теперь настало время создать наш шаг. Переходим к закладке Генератор EPF
		Затем клик на картинку "Генератор EPF"

	* Нужно убедиться, что установлен флаг Генерировать управляемую форму
		И я рисую стрелку в автоинструкции от "" до "Генерировать управляемую форму"
			|'Цвет'          | 'Зеленый'       |
			|'Длительность'  | '3000'          |
			|'ТочкаКуда'     | 'СерединаНиз'   |
			|'Толщина'       | '10'            |

	
	* Далее выполняем команду Создать и обновить шаблоны обработок
		Затем клик на картинку "Создать и обновить шаблоны обработок"
		
		
	* При этом будет создан временный epf файл.
		И я рисую стрелку в автоинструкции от "" до "Временный epf файл"
			|'Цвет'          | 'Зеленый'       |
			|'Длительность'  | '3000'          |
			|'ТочкаКуда'     | 'СерединаНиз'   |
			|'Толщина'       | '10'            |
	


	* Откроем этот файл в конфигураторе.
		Затем клик на картинку "Конфигуратор"
		И я перетаскиваю картинку "Временный epf файл" к "ОбластьВКонфигуратореДляОткрытияФайла"
		

	* Перейдём в форму обработки.
		Затем клик на картинку "КонфигураторДействия"
		Затем клик на картинку "Открыть основную форму"
	
	* В её модуле были созданы специальные процедуры и функции. Давай посмотрим на них.
		Затем клик на картинку "КонфигураторМодуль"
		Затем клик на картинку "КонфигураторНаПолныйЭкран"
		Затем клик на картинку "КонфигураторМодульНаПолныйЭкран"


	* В функции получить список тестов было создана запись с определением шага
		Дано я нажимаю хоткей "f" "ctrl"
		И я набираю текст "ПолучитьСписокТестов"
		И я нажимаю ENTER
		И я выполняю скрипт SikuliX "CtrlPlus"
		
		
	* В определении шага уже заполнен снипет, который был получен из текста шага.
		И я рисую стрелку в автоинструкции от "ОбластьВКонфигуратореДляОткрытияФайла" до "КонфигураторСнипет01"
			|'Цвет'          | 'Зеленый'       |
			|'Длительность'  | '2000'          |
			|'ТочкаКуда'     | 'СерединаВерх'  |
			|'Толщина'       | '10'            |
		
	* Также было заполнено имя процедуры, которая соответствует данному ш^агу.
		И я рисую стрелку в автоинструкции от "ОбластьВКонфигуратореДляОткрытияФайла" до "КонфигураторИмяПроцедуры01"
			|'Цвет'          | 'Зеленый'       |
			|'Длительность'  | '2000'          |
			|'ТочкаКуда'     | 'СерединаВерх'  |
			|'Толщина'       | '10'            |
		
	* И текст с примером использования шага.
		И я рисую стрелку в автоинструкции от "ОбластьВКонфигуратореДляОткрытияФайла" до "КонфигураторПримерИспользованияШага01"
			|'Цвет'          | 'Зеленый'       |
			|'Длительность'  | '2000'          |
			|'ТочкаКуда'     | 'СерединаВерх'  |
			|'Толщина'       | '10'            |

	@YandexTTS: ermil,evil 
	И текст субтитров "Я вижу, что есть ещё два параметра."

		
	* Да. Нам нужно заполнить два оставшихся параметра, в которых надо указать описание шага и его место в дереве шагов.	
		И пауза 3


		
	* В качестве места в дереве укажем новую группу шагов. Уровни дерева разделяются с помощью точки.
		Затем клик на картинку "КонфигураторПустойТипШага"
		И я набираю текст "Мои шаги.Проведение документов.Заказ покупателя"
		
	* Также заполним описание шага.
		Затем клик на картинку "КонфигураторПустоеОписаниеШага"
		И я набираю текст "Шаг находит документ по номеру и проводит его."
		
	* Осталось реализовать этот шаг. Для этого надо написать код в соответствующей функции. Она находится внизу модуля. После написания кода шаг готов к работе.
		Дано я нажимаю хоткей "f" "ctrl"
		И я набираю текст "Функция ЯПровожуЗаказПокупателяСНомером"
		И я нажимаю ENTER
		И я выполняю скрипт SikuliX "CtrlPlus"
		И я выполняю скрипт SikuliX "GoToEndOfModule"
		И я рисую рамку вокруг картинки "КонфигураторТекстШага01"
				|'Цвет'          | 'Зеленый'        |
				|'Длительность'  | '3000'           |	
		И пауза 3


	* Теперь надо сохранить наши изменения.
		Затем клик на картинку "КонфигураторКнопкаСохранить"

	* Вернёмся в сеанс менеджера тестирования и перезагрузим ф^ичу
		И я очищаю окно сообщений пользователю
		Затем клик на картинку "Основной сеанс"
		Затем клик на картинку "Перезагрузить"
		
	* Теперь шаг больше не помечен желтым, т.к. есть epf файл в котором он реализован.
		И я рисую стрелку в автоинструкции от "" до "НовыйШагВДеревеШаговРеализован"
			|'Цвет'          | 'Зеленый'       |
			|'Длительность'  | '3000'          |
			|'ТочкаКуда'     | 'СерединаНиз'   |
			|'Толщина'       | '10'            |


	#[autodoc.ignorestep]	
	И пауза 3
	
	
	* Также можно открыть определение шага в библиотеке шагов с помощью клавиш контрол плюс и.
		Затем клик на картинку "НовыйШагВДеревеШаговРеализован"
		Дано я нажимаю хоткей "i" "ctrl"
	
	* При этом открылась библиотек а шагов и наш новый шаг расположен в той группе в которой мы его определили.
		И я рисую рамку вокруг картинки "НовыйШагВНужномМесте"
				|'Цвет'          | 'Зеленый'        |
				|'Длительность'  | '5000'           |	
	
		И я рисую стрелку от "" до "НовыйШагВНужномМесте"
			|'Цвет'          | 'Зеленый'       |
			|'Длительность'  | '3000'          |
			|'ТочкаКуда'     | 'СерединаПраво' |
			|'Толщина'       | '10'            |
		
		И пауза 3
		
	#[autodoc.ignorestep]	
	И пауза 3

	* И у шага заполнено его описание.
		И я рисую рамку вокруг картинки "УШагаПравильноеОписание"
				|'Цвет'          | 'Зеленый'        |
				|'Длительность'  | '5000'           |	

		И пауза 3
		
	#[autodoc.ignorestep]	
	И пауза 3		
	@YandexTTS: ermil,evil 
	И текст субтитров "Спасибо Ванесса! Пойду дополню свою библиотеку шагов!"
			
	Дано текст субтитров "На этом всё. Подписывайтесь, ставьте лайки, до новых встреч!"
	Дано видеовставка "Ванесса! Тесты - есть!"
	
	
					