echo Please, use font "Lucida Console".
chcp 65001

cd "%~dp0"

oscript .\lib\packages.os download
oscript .\tools\onescript\ZipTemplates.os
oscript .\tools\onescript\Compile.os .\