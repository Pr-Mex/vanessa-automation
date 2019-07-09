# language: en

@tree

Feature: Purchase some staff

As a customer
I want to purchase some goods
To be happy with it

Background:
	Given TestClient is connected

Scenario: Create purchase order	
	When I start to make document
			When I create new purchase order	
			And I choose vendor Norcal Distribution Company
			
	And I add some goods		
			And I add new line in order
			And I choose item "Coleman 600W Wind Turbine"
			And I choose quantity 1
			And I choose delivery date 30.10.2016
			
	And I finish my document		
			And I save the order
			And I print the order

