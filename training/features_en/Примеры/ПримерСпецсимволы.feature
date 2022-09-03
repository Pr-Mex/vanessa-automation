# language: ru

Feature: Примеры использования спецсимволов

Scenario: Примеры использования спецсимволов
* Escaping a quote character
		Дано пример кавычка внутри кавычки "Part1 \" Part2" 
		Дано пример кавычка внутри апострофов 'Part1 \" Part2' 
		Дано пример кавычка внутри апострофов без экранирования 'Part1 " Part2' 
	
* Escaping an apostrophe
		Дано пример апостроф внутри кавычек "Part1 \' Part2" 
		Дано пример апостроф внутри апострофов 'Part1 \' Part2' 
	
* Escaping a pipe character
		Дано пример шага, в который передаётся таблица Gherkin
			| 'Часть1 \| Часть2' |

* Escaping a back slash
		Дано пример экранирования обратной косой черты "\\\\ServerName" 

* Escaping curly braces if the option to evaluate expression in curly braces is enabled
		Дано пример экранирования обратной косой черты "Part1\{StringInCurlyBrackets\}Part2" 

* Line feed special character
		Дано пример передачи в параметр шага символа перевода строки "Part1 \n Part2" 
		Дано пример передачи в ячейку таблицы Gherkin символа перевода строки
			| 'Part1 \n Part2' |

