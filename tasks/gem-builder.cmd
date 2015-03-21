@echo off
title Builder Distrs

echo Build gem
rm *.gem
call gem build ../*.gemspec

