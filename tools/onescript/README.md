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
oscript C:\Commons\rep\vanessa-automation\tools\onescript\MakeInteractiveHelp.os C:\Commons\rep\vanessa-automation\examples\MakeInteractiveHelp\MakeVideoInteractiveHelp.json
```
