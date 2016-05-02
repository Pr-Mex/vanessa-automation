SET mypath=%~dp0
rem SET connstring=--ibname /F"C:\Users\eugens\Documents\Rarus\ITIL\1"
rem SET USERPWD=--db-user base --db-pwd 234567890
SET connstring=
SET USERPWD=
SET RUNNER_ENV=production

ls %mypath%..\..\

oscript %mypath%..\..\vanessa-runner\tools\runner.os decompileepf ..\vanessa-behavior.epf ..\temp\epfs\ %connstring% %USERPWD%