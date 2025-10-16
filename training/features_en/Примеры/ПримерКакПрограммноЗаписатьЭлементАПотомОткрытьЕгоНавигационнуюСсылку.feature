# language: en

Feature: Example of programmatical recording of an element and then opening its navigation link.

Scenario: Example of programmatical recording of an element and then opening its navigation link.

	And I execute 1C:Enterprise script at server
		"""bsl
		NavigationLink = GetURL(Catalogs.CatalogName.FindByCode("$ObjectCode$"));
		Object.ValueOnServer = NavigationLink;
		"""
	
	And I execute 1C:Enterprise script
		"""bsl
		Context.Insert("MyVariable", Vanessa.Object.ValueOnServer);
		"""
	
	Given I open hyperlink "$MyVariable$"
