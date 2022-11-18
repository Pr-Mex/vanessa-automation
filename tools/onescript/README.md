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

Скрипт для сборки pdf файлов для каждого HTML файла из каталога с помощью Chrome
Как запускать:
```
oscript MakePdfFromHtml.os <ПутьККаталогуHTMLФайлов> <ПутьКChrome>
```
Пример запуска:
```
oscript C:\Commons\rep\vanessa-automation\tools\onescript\MakePdfFromHtml.os "C:\Temp\HTML\FinalHTML" "C:\Program Files (x86)\Google\Chrome\Application\chrome"
```
