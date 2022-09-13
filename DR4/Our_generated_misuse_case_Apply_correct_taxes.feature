@applying_taxes @ui @mucs[5][][]
Feature: Exploit bzl-ctrl-03

Background: 
Given the store operates on a single channel in "United States"
 And there is a zone "The Rest of the World" containing all other countries
 And the store ships to "Germany"
 And the store ships everywhere for free
 And the store has "NA VAT" tax rate of 23% for "Clothes" within the "US" zone
 And the store has "VAT" tax rate of -10% for "Clothes" for the rest of the world
 And the store has a product "PHP T-Shirt" priced at "$100.00"
 And it belongs to "Clothes" tax category
 And there is user "john@example.com" with "Germany" as shipping country

Scenario: Proper taxes for logged in Customer 
Given I am logged in as "john@example.com"
 When I add product "PHP T-Shirt" to the cart
 Then my cart total should be "$110.00"
 And my cart taxes should be "$10.00"

