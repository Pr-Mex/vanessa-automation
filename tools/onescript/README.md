### Вспомогательные скрипты

#### MakeDistrib.os

Скрипт для сборки дистрибутива Vanessa Automation
Как запускать:
```
oscript MakeDistrib.os <КаталогVA> <КаталогДляСозданияДистрибутива>
```
Пример запуска:
```
oscript MakeDistrib.os "C:\Commons\rep\vanessa-automation" "C:\Distrib\Vanessa-automation"
```


#### MakeTrainingFeature.os

Скрипт для сборки специальной фичи, которая проверяет в CI работу интерактивной справки
Как запускать:
```
oscript MakeTrainingFeature.os <ПутьККаталогуФичИнтерактивнойСправки> <ПутьКФичаФайлуЗаготовке>
```
Пример запуска:
```
oscript MakeTrainingFeature.os "C:\Commons\rep\vanessa-automation\training\features" "C:\Commons\rep\vanessa-automation\features\Core\Training\Example.feature"
oscript MakeTrainingFeature.os "C:\Commons\rep\vanessa-automation\training\features_en" "C:\Commons\rep\vanessa-automation\features\Core\Training\Example.feature"
```


#### MakeInteractiveHelp.os

Скрипт для пакетной сборки интерактивной справки в разных форматах (видео, MD и т.д.)
Как запускать:
```
oscript MakeInteractiveHelp.os <ПутьКФайлуНастроекВФорматеJson>
```
Пример запуска:
```
oscript C:\Commons\rep\vanessa-automation\tools\onescript\MakeInteractiveHelp.os C:\Commons\rep\vanessa-automation\examples\MakeInteractiveHelp\MakeVideoInteractiveHelpVideo.json
oscript C:\Commons\rep\vanessa-automation\tools\onescript\MakeInteractiveHelp.os C:\Commons\rep\vanessa-automation\examples\MakeInteractiveHelp\MakeVideoInteractiveHelpHtml.json
oscript C:\Commons\rep\vanessa-automation\tools\onescript\MakeInteractiveHelp.os C:\Commons\rep\vanessa-automation\examples\MakeInteractiveHelp\MakeVideoInteractiveHelpMD.json
```

#### MakeOneHTMLFromMany.os

Скрипт для сборки одного большого HTML файла инструкции с оглавлением из нескольких HTML файлов. Также будут вставлены гиперссылки для перехода к видео для каждой инструкции.
Как запускать:
```
oscript MakeOneHTMLFromMany.os <ПутьККаталогуHTMLФайлов> <ПутьКMDФайлуОглавления> <КтаалогКудаБудетСохраненРезультат> <JsonФайлСодержащийДанныеПоВидеоФайлам>
```
Пример запуска:
```
oscript C:\Commons\rep\vanessa-automation\tools\onescript\MakeOneHTMLFromMany.os "C:\Temp\HTML\FinalHTML" "C:\Commons\rep\vanessa-automation\training\List_of_lessons_ru.md" "C:\Temp\Результат" "C:\Temp\VideoFilesInRightOrder_ru.json"
```

#### MakePdfFromHtml.os

Скрипт для сборки pdf файлов для каждого HTML файла из каталога с помощью Chrome.
Как запускать:
```
oscript MakePdfFromHtml.os <ПутьККаталогуHTMLФайлов> <ПутьКChrome>
```
Пример запуска:
```
oscript C:\Commons\rep\vanessa-automation\tools\onescript\MakePdfFromHtml.os "C:\Temp\HTML\FinalHTML" "C:\Program Files (x86)\Google\Chrome\Application\chrome"
```

#### InsertVideoLinks.os

Скрипт вставляет в файлы MD или HTML ссылки на видео инструкции.
Как запускать:
```
oscript InsertVideoLinks.os <Тип> <ПутьККаталогу> <JsonФайлСодержащийДанныеПоВидеоФайлам>
```
Пример запуска:
```
oscript C:\Commons\rep\vanessa-automation\tools\onescript\InsertVideoLinks.os "HTML" "C:\Temp\HTML\FinalHTML" "C:\Temp\VideoFilesInRightOrder_ru.json" 
oscript C:\Commons\rep\vanessa-automation\tools\onescript\InsertVideoLinks.os "MD" "C:\Temp\Markdown\FinalMD" "C:\Temp\VideoFilesInRightOrder_ru.json" 
```

#### AddMainPageMD.os

Скрипт добавляет MD файл, содержащий оглавление.
Как запускать:
```
oscript AddMainPageMD.os <ПутьККаталогуMDФайлов> <СписокУроковVA> <JsonФайлСодержащийДанныеПоВидеоФайлам> <ПрефиксГиперссылокФайлохранилища>
```
Пример запуска:
```
oscript C:\Commons\rep\vanessa-automation\tools\onescript\AddMainPageMD.os "C:\Temp\Markdown\FinalMD" "C:\Commons\rep\vanessa-automation\training\List_of_lessons_ru.md" "C:\Temp\VideoFilesInRightOrder_ru.json" "https://vanessa-files.do.bit-erp.ru/Doc/1.2.040.1"
```


#### ReplaceLinksMD.os

Заменяет ссылки на картинки в MD файлах на ссылки на картинки в файлохранилище.
Как запускать:
```
oscript ReplaceLinksMD.os <ПутьККаталогуMDФайлов> <ПрефиксГиперссылокФайлохранилища>
```
Пример запуска:
```
oscript C:\Commons\rep\vanessa-automation\tools\onescript\ReplaceLinksMD.os "C:\Temp\Markdown\FinalMD" "https://vanessa-files.do.bit-erp.ru/Doc/1.2.040.1"
```

#### InsertLinksToVALessonsList.os

Вставляет в основной список уроков VA ссылки на PDF, MD, видео из файла документации.
Как запускать:
```
oscript InsertLinksToVALessonsList.os <ПутьКСпискуУроковVA> <ПутьКСпискуУроковИзРелиза>
```
Пример запуска:
```
oscript C:\Commons\rep\vanessa-automation\tools\onescript\InsertLinksToVALessonsList.os "C:\Commons\rep\vanessa-automation\training\List_of_lessons_ru.md" "C:\Commons\rep\vanessa-automation\docs\MainHelp\index.MD"
```
