# language: ru
# encoding: utf-8
#parent ua:
@UA17_что_нового_в_версии
#parent uf:
@UF6_текстовые_и_видео_инструкции

@IgnoreOnCIMainBuild



Функциональность: Что нового в релизе 1.2.020

 
Контекст:
	Дано я запускаю SikuliX сервер

	
	

Сценарий: Что нового в релизе 1.2.020

	Дано текст субтитров "Привет! Я - Ванесса."
	Дано текст субтитров "В этом видео я расскажу, что нового и прикольного появилось в моём новом релизе: 1.2.020."
	
	
	*Давайте пробежимся по файлу истории и посмотрим что там нового.
		Дано я нажимаю хоткей "r" "win"
		И я набираю текст "code"
		Дано я нажимаю ENTER
		И я жду картинки "VSC открылся" в течение 10 секунд
		Дано я нажимаю хоткей "o" "ctrl"
		И я жду картинки "All files" в течение 10 секунд
		И я набираю текст "C:\Temp\history.md"
		И я нажимаю ENTER
		
	Дано текст субтитров "Сначала про новые возможности."
	
	//Новые возможности	
	И видеовставка 'Запустить TestClient на полный экран.'
	*Теперь я умею запускать клиент тестирования сразу развёрнутым на весь экран.
		Дано поиск строки в редакторе через буфер обмена 'Добавлена опция запуска сеанса TestClient с максимизированным окном'
	Дано текст субтитров "Это очень удобно, т.к. при возникновении ошибки на скриншоте будет больше информации."
		
	И видеовставка "Новые опции при записи видео."		
	*Появилось много новых возможностей для записи видео. Они рассмотрены в отдельном ролике, в котором я рассказываю про свои настройки.
		Дано поиск строки в редакторе через буфер обмена 'Добавлена опция при записи видео: подсвечивать нажатия мышки'
		Дано поиск строки в редакторе через буфер обмена 'Добавлена опция при записи видео: отключить создание видеозаставки с заголовком фичи'
		Дано поиск строки в редакторе через буфер обмена 'Добавлена опция при записи видео: отключить создание видеозаставки с заголовком сценария'
		
	*Если кратко, то теперь видеоинструкции можно создавать ещё проще и ещё лучше.
		Дано поиск строки в редакторе через буфер обмена 'Добавлена опция при записи видео: эмуляция ввода с клавиатуры во время записи видео'
		Дано поиск строки в редакторе через буфер обмена 'Добавлена опция при записи видео: можно регулировать громкость музыки'
		




		
	//Новые шаги
	Дано текст субтитров "Теперь про новые шаги."
	
	И видеовставка "Вывод информации в лог."		
	*Появился шаг, который позволяет выводить нужную вам информацию в мой лог.
		Дано поиск строки в редакторе через буфер обмена 'И я добавляю информацию в лог "Текст"'
	Дано текст субтитров "Про эту возможность есть отдельное видео на этом же канале."
		
	И видеовставка "Ожидание появления картинки."		
	*Появился шаг, который ждёт появления нужной картинки на экране.
		Дано поиск строки в редакторе через буфер обмена 'И я жду картинки "ИмяКартинки" в течение 20 секунд'
	Дано текст субтитров "Это позволяет создавать более гибкие сценарии. В том числе для интеграции с другими программами."
		
	И видеовставка "Эмуляция нажатия хоткеев."		
	*Появился шаг, который эмулирует нажатия клавиш, в том числе с использованием модификаторов Ctrl, Alt и т.д.
		Дано поиск строки в редакторе через буфер обмена 'Дано я нажимаю хоткей "o" "ctrl"'
	Дано текст субтитров "Это позволяет обойти ограничение платформы по эмуляции нажатия клавиш."
		
	И видеовставка "Эмуляция клавиши Enter."		
	*Появился шаг, который эмулирует нажатие клавиши Enter.
		Дано поиск строки в редакторе через буфер обмена 'Дано я нажимаю ENTER'
		
	И видеовставка "Координаты картинки."		
	*Появился шаг, который получает координаты картинки на экране.
		Дано поиск строки в редакторе через буфер обмена 'И я определяю координаты картинки "ИмяКартинки" как "ИмяПеременной"'
	Дано текст субтитров "Это позволяет написать свой алгоритм при работе с картинками."

		

	



			
	Дано текст субтитров "На этом всё. Продолжение в следующей части!"
	Дано видеовставка "Ванесса! Тесты - есть!"
	
	#[autodoc.ignorestep]
	И я закрываю текстовый редактор
	
					