# Параметры запуска из командной строки

Перед сборкой Single надо выполнить скрипт Compile.bat, т.к. он собирается некторые артефакты, которые потом входят в состав Vanessa Automation.

Для сборки Vanessa Automation Single нужно выполнить скрипт вида:

```
oscript MakeVASingle.os <ПутьКИсходникамVanessaAutomation> <КаталогСборки> <КаталогиБиблиотекЧерезТочкуСЗапятой> <BinКаталогПлатформы> <КаталогФайловойБазы>
```

* ПутьКИсходникамVanessaAutomation - Основной каталог проекта Vanessa Automation
* КаталогСборки - Каталог, где будут собраны файлы Vanessa Automation Single. Дайнный каталог будет очищен скриптом сборки. КаталогСборки не должен находится внутри каталога ПутьКИсходникамVanessaAutomation.
* КаталогиБиблиотекЧерезТочкуСЗапятой - Каталоги библиотек, которые надо встроить в Vanessa Automation Single.
* BinКаталогПлатформы - Каталог, в котором находятся исполнимые файлы платформы.
* КаталогФайловойБазы - Произвольная файловая база, в которую можно зайти без логина и пароля. Используется для вычисления кеша библиотек.

Пример запуска скрипта:
```
oscript C:\vanessa-automation\tools\onescript\MakeVASingle.os "C:\vanessa-automation" "C:\Temp\VASingle" "C:\vanessa-automation\features\Libraries" "C:\Program Files (x86)\1cv8\8.3.17.1811\bin" 
"C:\Bases\TempBase"
```