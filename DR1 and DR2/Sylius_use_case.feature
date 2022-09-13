@managing_shipping_methods @ui @javascript @api @mucs[][][6]
Feature: Exploit bzl-ctrl-03

Background: 
Given the store operates on a channel named "Web-US" in "USD" currency
 And the store is available in "English (United States)"
 And the store has a zone "United States" with code "US"
 And I am logged in as an administrator

Scenario: Adding a new shipping method with flat rate per shipment 
When I want to create a new shipping method
 And I specify its code as "FED_EX_CARRIER"
 And I specify its position as 0
 And I name it "FedEx Carrier" in "English (United States)"
 And I define it for the zone named "United States"
 And I choose "Flat rate per shipment" calculator
 And I specify its amount as 50 for "Web-US" channel
 And I add it
 Then I should be notified that it has been successfully created
 And the shipping method "FedEx Carrier" should appear in the registry