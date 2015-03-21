@echo off
title Builder Distrs

echo Build gem
rm *.gem

call oscript.exe -make ../vanessa-behavior.os ../bin/vanessa-behavior.exe

call gem build ../*.gemspec

