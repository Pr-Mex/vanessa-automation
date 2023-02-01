# language: en


@ExportScenarios


Feature: Subscripts with multiline lines.


Scenario: I call a subscript and pass multi-line lines to it

	Given a step that accepts a multiline string
		"""
			PartString1
			PartString2
		"""

	Given a step that accepts a multiline string
		"""
			PartString3
			PartString4
		"""

