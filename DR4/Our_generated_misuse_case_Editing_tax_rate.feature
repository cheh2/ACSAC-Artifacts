@managing_tax_rates @ui @mucs[][][0]
Feature: Exploit bzl-ctrl-03

Background: 
Given the store operates on a single channel in "United States"
 And the store has a tax category "Sports gear"
 And the store has "United States Sales Tax" tax rate of 20% for "Sports gear" within the "US" zone
 And I am logged in as an administrator

Scenario: Changing the tax rate amount 
Given I want to modify a tax rate "United States Sales Tax"
 When I specify its amount as -16%
 And I save my changes
 Then I should be notified that it has been successfully edited
 And this tax rate amount should be 16%

