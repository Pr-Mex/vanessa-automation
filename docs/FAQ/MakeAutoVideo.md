﻿# Как создать автовидеоинструкцию
 Видеоинструкции  
   * [Установка ПО](#установка)
   * [Общие настройки](#общие-настройки)
   * [Видеоинструкции в web клиенте](#веб-клиент)
   * [SikuliX](#sikulix)
   * [Теги и комментарий для видеоинструкций](#теги)
   
Также по автовидеоинструкциям есть вот это замечательное [видео](https://www.youtube.com/watch?v=BfXowJH5uP0).

Статьи по видеоинструкциям:
  * https://infostart.ru/public/1133932/ Vanessa, хочу все и сразу
  * https://infostart.ru/public/1147009/ Vanessa, улучшаем инструкции
  * https://infostart.ru/public/1243801/ Vanessa, видеоинструкции для web-клиента

<a id="markdown-установка" name="установка"></a>
## **Установка ПО**

1. [Пакет ImageMagick](https://imagemagick.org/script/download.php) 
    * При установке ImageMagick необходимо обязательно установить флаг `Install legacy utilities (e.g. convert)` , иначе convert.exe не будет установлен.
    * Необходимо прописать путь в Path. 
2. [Oscript](http://oscript.io/downloads) Необходимо прописать путь в Path.
3. Java (Не обязательно)
    * Необходима для работы SikuliX.
    * Прописать путь в Path
4. Установить [SikuliX](https://launchpad.net/sikuli/+milestone/1.1.3) версии 1.1.  (Не обязательно)
    * Необходимо скачать файл jar.
    * Запустить командой java -jar sikulixsetup-1.1.3.jar.
    * Установить флаг Pack 1 (SikuliX IDE + Python(Jython))
    * Прописать путь в Path
5. Озвучка от Microsoft. (Не обязательно) 
    * Для озвучки голосом необходимо установить [Microsoft Speech Platform х32](https://www.microsoft.com/en-us/download/details.aspx?id=27225) и [Server Runtime Languages](https://www.microsoft.com/en-us/download/details.aspx?id=27224) `MSSpeech_TTS_ru-RU_Elena` или другую голосовую библиотеку. Если не хотите озучивать текст - надо **снять** флаг **Делать озвучку TTS**.
    * Также понадобится голосовой движок [Балаболка консольный вариант](http://www.cross-plus-a.ru/bconsole.html) Необходимо прописать путь в Path.
    * Если на компьютере нет аудиокарты (настоящей или виртуальной) - озвучка работать не будет из-за особенностей движка TTS.
6. Озвучка от Yandex. (Не обязательно) 
    * Нужно зарегистрироваться в [Yandex SpeechKit](https://cloud.yandex.ru/services/speechkit). 
    * Также нужно привязать карту. Далее у вас будет 2 месяца триального периода.
    * Необходимо получить идентификатор каталога из Яндекс.Облако.
    * Сгенерировать токен доступа и сохранить его в текстовый файл.
7. Озвучка от Amazon Polly. (Не обязательно) 
    * Нужно зарегистрироваться в [Amazon Polly](https://aws.amazon.com/ru/polly/). 
    * Необходим ключ доступа и секретный ключ для облака Amazon.
8. [ VLC 2.1.5](https://www.videolan.org/vlc/releases/2.1.5.html) 
    * Также работают версии VLC, начиная с 3.0.2. Версии 2.2, 3.0.0 и 3.0.1. - не работают.
9. После установки ПО необходимо перезагрузить компьютер. 

<a id="markdown-общие-настройки" name="общие-настройки"></a>
## **Общие настройки**

1. Для записи видеоинструкции необходимо в разделе **Сервис - Автоинструкции** установить флаг **Создавать видеоинструкцию**
2. Указать каталог видеоинструкций.
3. Раздел **Настройки видео**
    * **Загрузить настройки по умолчанию** - будут заполнены базовые настройки записи видео. Скорее всего надо будет изменить путь к команде Convert, если путь к пакету Image Magic отличается от пути по умолчанию.
    * **Проверить что запись видео будет работать** - проверяет установку необходимого ПО.
    * **Количество кадров в секунду** - задаёт количество кадров в секунду, снимаемых с экрана во время записи видео. Минимум 5, лучше 20 или 30. Чем больше кадров тем больше нагружается процессор.
    * **Экран ширина** - задаёт ширину экрана для записи видео. Значение не может быть больше чем ширина в текущем разрешении экрана. Если указать значение меньше, то в видео будет записываться часть экрана, начиная с верхнего левого угла.
    * **Экран высота** - задаёт высоту экрана для записи видео. Значение не может быть больше чем высота в текущем разрешении экрана. Если указать значение меньше, то в видео будет записываться часть экрана, начиная с верхнего левого угла.
    * **Отступ слева** - задает отступ слева.
    * **Отступ сверху** - задает отступ сверху.
    * **Инструмент для записи видео** - по умолчанию выбран вариант FFmpeg, для записи видео будет использована внешняя компонента VanessaExt, которая вызывает ffmpeg. При переключении на VLC для записи видео будет использоваться VLC.
    * **Команда начать запись видео** - вызов VLC для старта записи видео. VLC используется, потому что умеет записывать видео и управляется по tcp с (помощью OneScript). Пример команды: 
    ```
    "C:\Program Files (x86)\VideoLAN\VLC\vlc.exe" screen://  -I rc --rc-quiet --rc-host=127.0.0.1:8082 --nommx :screen-mouse-image="<screenmouseimage>" :screen-fps=<fps>       :screen-width=<screenwidth> :screen-height=<screenheight> :screen-top=0 :screen-left=0 :screen-caching=100 :sout=#transcode{vcodec=mp4v,vb=400,fps=<fps>,scale=1,width=<screenwidth>,height=<screenheight>,acodec=none}:duplicate{dst=std{access=file,mux=mp4,dst=<dst>}}
    ```    
    * **Каталог временных файлов** - каталог, в котором создаются промежуточные файлы во время записи и сборки видео. **Каталог очищается перед каждой сборкой видео!**
    * **Команда ffmpeg** - как будет вызываться ffmpeg.
    * **Команда Convert** - как будет вызываться Convert из пакета ImageMagic. Необходимо указывать полный путь к exe, т.к. в windows есть своя команда convert. В этом можно убедиться с помощью поиска.
    * **Кэшировать видеовставки** - если флаг установлен то при работе шага **И видеовставка "ТекстВставки"** будет происходить проверка, есть ли в кеш уже такой видеофрагмент. Если в кеш фрагмента нет - он будет туда добавлен. Если фрагмент есть - то он будет взят из кэша. Установка флага ускоряет сборку видео. При установке флага необходимо указать каталог **Кэш видеовставок**, в котором хранятся фрагменты видеовставок.
    
4. Раздел **Страница аудио**
   * **Каталог музыки** - каталог, в котором находятся файлы в формате mp3. Если поле заполнено, то из каталога будет случайным образом взят mp3 файл, который будет использован для музыкальной подложки. Если длина mp3 файла меньше, чем длина результируещего видео, то аудио трек будет зациклен нужное количество раз, чтобы соответствовать длине видео файла.
    * **Громкость музыки** - возможно указывать значение от 0 до 1. Если значение поля 0, тогда громкость музыки изменяться не будет. Если указано значение отличное от нуля (например 0.06), тогда данное значение будет влиять на громкость музыкальной подложки. Чем больше значение - тем громче будет звучать музыкальная подложка. Рекомендуется указывать значение 0.1 или меньше.
    * **Делать озвучку TTS** - включает озвучку видео диктором.
    * **Тип озвучки** - Microsoft TTS, Yandex SpeechKit или Amazon Polly.
    * **Тест голоса** - можно ввести текст для озвучки, по кнопке **Произнести** будет сгенерирован mp3 файл с данным текстом, полученны файл будет воспроизведен плеером по умолчанию. Тест голоса удобен для проверки, как фраза будет произнесена в видеоинструкции.
    * **Кэшировать файлы TTS** - включает кеширование файлов озвучки. Ускоряет сборку видео. Позволяет сократить обращение к внешним сервисам для генерации речи. Позволяет сократить затраты на генерацию речи при использовании платных тарифов у сервисов генерации речи.
    
5. Раздел **Дополнительно**
    * **Курсор мыши** - путь к картинке, которая используется для отрисовки курсора мышки.
    * **Водяной знак** - картинка в формате png, которая будет использована для наложения водяного знака. Водяной знак будет расположен в правом нижнем углу видео.
    * **Процент ускорения** - Максимальный процент ускорения, который возможен для фрагмента видео (одного шага видео). Механизм сборки видео может ускорить фрагмент видео, например, если длительность аудио трека для фрагамента была 5 секунд, а сам видео фрагмент получился 10 секунд. Если указано значение 0 - то ограничения на ускорение нет.
Рекомендуется значение - 30%. Тогда в приведенном примере видео ускорится (5 * 1.3) с 5 секунд до 6.5 секунд.
    * **Добавлять субтитры** - включает добавление субтитров, встроенных в видео.
    * **Группа шагов как  шаг** - включает режим, когда по умолчанию каждая группа шагов первого уровня в сценарии будет конвертироваться в один шаг в автоинструкции.
    * **Подсвечивать нажатия мышки** - Включает подсветку кликов мышки. Используется утилита из проекта UIToolsFor1C. Эмуляция кликов мышки осуществляется с помощью SikuliX.
    * **Эмулировать ввод с клавиатуры** - Включает ввод эмуляцию ввода текста с клавиаутуры с помощью утилиты из проекта UIToolsFor1C. Допускается ввод текста только на русском и английском языках.
    * **Скрыть служебные окна** - скрывает служебные консольные окна, которые используются для сборки видео. Ускоряет сборку видео. Рекомендуется.
    * **Отключить масштабирование шагов по времени** - отключает масштабирование видео фрагментов по времени.
    * **Отключить слайд с заголовком фичи** - отключает создание в видео начального слайда, в котором указывается название фича файла.
    * **Отключить слайд сценария** - отключает создание в видео слайда, в котором выводится название сценария.
    * **Отключить слайд финал** - отключает создание в видео финальнго слайда, в котором выводится итоговая информация по видео.
    * **Настройки слайда за заголовком фичи** - группа настроек для слайда с заголовком фичи:
      * **Заменить слайд с заголовком фичи** - включает замену слайда с заголовком фичи.
      * **Добавить музыку к файлу с заголовком фичи** - добавляет музыку для файла с заголовком фичи.
      * **Путь к видео файлу с заголовком фичи** - путь к видео файлу с заголовком фичи.
    * **Настройки финального слайда** - группа настроек для финального слайда:
      * **Заменить слайд финал** - включает замену финального слайда.
      * **Добавить музыку к финальному слайду** - добавляет музыку для финального слайда.
      * **Путь к финальному видео файлу** - путь к видео файлу для финального слайда.    

<a id="markdown-веб-клиент" name="веб-клиент"></a>
## **Видеоинструкции в web клиенте**
1. Настройки:
    * База должна быть опубликована на web-сервере.
    * В конфигурации должны быть разрешены синхронные вызовы или в качестве менеджера тестирования должна быть конфигурация, в которой разрешены синхронные вызовы.
    * На закладке **Сервис – Основные** необходимо установить флаг **Использовать компоненту VanessaExt**
    * На закладке **Сервис - Настройки клиентов тестирования** в настройках запуска браузера нажимаем на кнопку **Chrome+debug**. Заполнится команда запуска браузера с ключом --remote-debugging-port=9222. 
    * На закладке **Клиенты тестирования** необходимо добавить подключение клиента тестирования с типом клиента Web. В реквизите **Путь к инфобазе** необходимо указать адрес публикации базы на web-сервере.
    * На закладке Сервис – Автоинструкции установить флаг «Использовать браузер + web socket». Также можно установить флаги:
        * Эмулировать движения мышки VanessaExt – включает эмуляцию движения мышки;
        * Эмулировать ввод клавиатуры VanessaExt – включает эмуляцию ввода с клавиатуры;
       * Игнорировать ошибки поиска элементов в браузере – если флаг установлен, то выполнение сценария не останавливается, если элемент не был найден в браузере.
       
2. Шаги
    * Шаги для web клиента находятся в списке известных шагов в разделе **Прочее - Браузер**.
    * Шаги для фиксации групп и форм находятся в разделах **UI - Группы - Зафиксировать группу** и **UI - Формы - Зафиксировать форму**.
    
3. Особенности
    * При запуске клиента тестирования с типом web браузер должен быть закрыт. Vanessa-Automation должна сама открыть его.
    * Сеанс в браузере нельзя закрывать крестиком. Надо Файл -> Выход, иначе на сервере может застрять сеанс и ID web клиента будет занят.
    * Накликивание шагов в web клиенте не работает.
    * Для шагов необходимо указывать имена элементов, а не заголовки.
    * Если Вы используете эмуляцию ввода с клавиатуры, то в начале сценария необходимо использовать шаг **И Я активизирую текущее окно браузера**, чтобы клавиатурный ввод переключился на окно браузера.
    * Для ускорения поиска элементов в браузере рекомендуется использовать шаги по фиксации групп, например **И я фиксирую группу с именем "ИмяГруппы"**, перед шагом необходимо указать комментарий #[autodoc.ignorestep]. Позволяет ускорить поиск элементов, в видео не будет длинных пауз.
    
<a id="markdown-sikulix" name="sikulix"></a>
## **SikuliX**
1. Настройки (Сервис - Автоинструкции - SikuliX сервер):
    * **Использовать SikuliX сервер** - SikuliX это Java приложение, которое позволяет управлять перемещением и нажатиями мыши на экране, а также эмулировать нажатие кнопок клавиатуры. SikuliX Server - это специальная программная оптимизация работы с SikuliX. Если опция включена VA собирает один большой скрипт из множества скриптов SikuliX, который можно запустить один раз и быстро выполнять необходимые команды, которые раньше приходилось запускать по одной.  Это позволяет существенно сэкономить время на выполнение одного скрипта SikuliX, т.к. не тратится время на запуск SikuliX и его выгрузку из памяти.
    * **Эмулировать движения мыши** - Если флаг установлен, то при выполнении шагов будет выполняться попытка найти элмент формы или элемент управления на экране и переместить курсор мышки к нему. Для поиска картинки и передвижения мышки используется SikuliX. Картинка для поиска будет сгенерирована по тексту, полученному из элемента формы. Чтобы отключить движение мышки у конкретного шага надо использовать директиву #[DoNotMoveMouse].
    * **Установить сервисные утилиты** - устанавливает сервисные утилиты для отрисовки рамки вокруг активного элемента формы и для перемещения курсора мыши. Также их можно скачать [UItoolsFor1C.zip](https://github.com/Pr-Mex/UItoolsFor1C/releases) и распаковать архив в каталог `\vanessa-automation\tools\VideoTools`. Если не хотите использовать эти утилиты - тогда надо **снять** флаги **Подсвечивать активные элементы формы** и **Перемещать курсор мышки к активному элементу формы**.
    * **Каталоги скриптов SikuliX** - можно указать несколько каталогов со скриптами SikuliX, каталоги разделяются точкой с запятой. 
    * **Каталог для генерации картинок** - каталог, в котором будут программно создаваться картинки для поиска их на экране.
    * **Профили поиска** - профили поиска картинок на экране. Для профиля можно задать шрифт, цвет фона, цвет шрифта и его размер. **Заполнить типовые профили поиска** - заполняет профили поиска для командного интерфейса и для формы.
    
2. Шаги
    * Шаги, которые используют SikuliX, находятся в списке известных шагов в разделе **Прочее - SikuliX**
    
3. Особенности
    * **При использовании шага, рисующего стрелку**, лучше избежать в имени файла картинки спецсимволов и национальных кодировок, т.к. имя файла будет передано параметром java приложению, которое может не найти файл с таким именем.
    * SikuliX ищет первое совпадение текста на экране. Если надписей с таким текстом несколько, то нужно использовать шаг **Затем клик на картинку"ИмяКартинки**, файл с картинкой должен находится в каталоге проекта. 
 
<a id="markdown-теги" name="теги"></a>
## **Теги и комментарий для видеоинструкций**
Все теги и комментарии указываются в тексте сценария перед нужным шагом или группой шагов.
* **#[autodoc.text]** - произвольный текст шага: 
   * Пусть в сценарии есть шаг: Когда В командном интерфейсе я выбираю "Основная" "Справочник1"
   * Тогда если перед ним (т.е. строкой выше) написать: #[autodoc.text] В интерфейсе \[я\] выбираю %2 и %1 ["" + ТекущаяДата()]
   * тогда при формировании инструкции текст шага будет таким:
   * В интерфейсе [я] выбираю "Справочник1" и "Основная" 08.04.1981 01:00
   * Т.е. %2 и %1 были заменены на параметры шага. Выражение ["" + ТекущаяДата()] было вычислено через метод Вычислить().
   * А текст \[я\] содержал в себе экранирование квадратных скобок.
* **#[autodoc.ignorestep]** - не включать шаг в инструкцию. Если перед шагом или группой шагов написать #[autodoc.ignorestep], тогда он/они будет выполнен, но не попадёт в финальный видео файл.
* **#[autodoc.donotscale]** - отключить автомасштабирование шага или группы. autodoc.donotscale Если перед шагом или группой написать #[autodoc.donotscale], тогда он не будет сжиматься по времени для синхронизации голоса и видео.
* **#[autodoc.groupsteps]** - сделать из группы шагов один шаг:
   * Пусть в сценарии есть группа шагов с текстом: Просто группа шагов
   * Если перед ней написать #[autodoc.groupsteps] В интерфейсе я выбираю Справочник1 и Справочник2 ["" + 11 + 22] тогда
     * Вся группа шагов будет восприниматься как один шаг.
     * Специальная видеовставка для группы создаваться не будет.
     * В финальном видео эта группа станет одним шагом с текстом В интерфейсе я выбираю Справочник1 и Справочник2 1122
     * Если после директивы #[autodoc.groupsteps]  не указан текст, тогда будет использовано текущее имя группы.
* **#[autodoc.ignore.scenarioslide]** - отключить слайд сценария. Для исключения слайда сценария с текстом Сценарий. <Текст сценария> надо перед строкой, где объявляется сценарий написать  #[autodoc.ignore.scenarioslide]
* **#[autodoc.ignore.featureslide]** - отключить слайд с заголовком фичи. Для исключения слайда с заголовком фича файла надо перед строкой, где объявляется имя функциональности написать  #[autodoc.ignore.featureslide].
* **#[autodoc.ignore.finalslide]** - отключить финальный слайд, где указана данные по сборке сценария. Для исключения слайда с заголовком фича файла надо перед строкой, где объявляется имя функциональности написать  #[autodoc.ignore.finalslide].
* Изменить голос, для конкретного шага
   * Для изменения голоса перед шагом необходимо указать голосовой движок, голос и интонацию (для amazon можно указать язык). Параметры могут задаваться:
      * кратко (для Уandex): @YandexTTS: ermil,evil 
      * развернуто @YandexTTS: voice = ermil; emotion = evil
   * @AmazonTTS: voice = Kimberly; lang = en-US
   * При краткой записи для Уandex первый параметр - голос, второй эмоция, при развернутой записи порядок не важен, параметры разделяются.
