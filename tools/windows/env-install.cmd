@echo off
cls
@choco install git -y -params '"/GitAndUnixToolsOnPath"'
@choco install notepadplusplus -y
echo Waiting for aproved https://chocolatey.org/packages/SourceTree, install skiped
echo choco install sourcetree
@choco install python
@choco install wget
@choco install pickles
@choco install picklesui
@choco install pandoc