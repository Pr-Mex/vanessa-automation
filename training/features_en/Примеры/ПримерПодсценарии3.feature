# language: en


Feature: Working with subscripts. Transition of multi-line lines.


Scenario: Working with subscripts. Transition of multi-line lines.

	And I call a subscript and pass multi-line lines to it
		"""
			NewFrequentStrings1
			NewFrequentStrings2
		"""
		"""
			NewFrequentStrings3
			NewFrequentStrings4
		"""

