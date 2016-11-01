Feature: Search about cucumber on google
	As a normal user I want to be able to
	search about cucumber in Google.com

	Scenario: Search about Cucumber
		Given A chrome web browser
		When I visit "google.com" website
		And Type "cucumber" in the search box
		Then I see the results
