SET mypath=%~dp0

oscript %mypath%..\..\vanessa-runner\tools\runner.os decompileepf ..\vanessa-behavior.epf ..\temp\epfs\

oscript %mypath%..\tools\onescript\crowdin.os update-translation

crowdin upload source
