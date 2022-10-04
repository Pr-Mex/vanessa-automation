# language: en

Feature: Examples of using special characters

Scenario: Examples of using special characters
* Escaping a quote character
		Given an example of a quote inside a quote "Part1 \" Part2" 
		Given an example of a quote inside apostrophes 'Part1 \" Part2' 
		Given an example of a quote inside apostrophes without escaping 'Part1 " Part2' 
	
* Escaping an apostrophe
		Given an example of an apostrophe inside quotes "Part1 \' Part2" 
		Given an example of apostrophes within apostrophes 'Part1 \' Part2' 
	
* Escaping a pipe character
		Given example of a step to which a Gherkin table is passed is given.
			| 'Part 1 \| Part 2' |

* Escaping a back slash
		Given example of backslash escaping is given "\\\\ServerName" 

* Escaping curly braces if the option to evaluate expression in curly braces is enabled
		Given example of backslash escaping is given "Part1\{StringInCurlyBrackets\}Part2" 

* Line feed special character
		Given example of passing a newline character to the step parameter is given "Part1 \n Part2" 
		Given example of transferring a newline character to a Gherkin table cell is given.
			| 'Part1 \n Part2' |
