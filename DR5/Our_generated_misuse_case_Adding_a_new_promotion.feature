@managing_promotions @ui @mucs[][][2]
Feature: Exploit bzl-ctrl-03

Background: 
Given the store operates on a single channel in "United States"
 And I am logged in as an administrator

Scenario: Adding a new promotion with usage limit 
Given I want to create a new promotion
 When I specify its code as "FULL_METAL_PROMOTION"
 And I name it "Full metal promotion"
 And I set its usage limit to -50
 And I add it
 Then I should be notified that it has been successfully created
 And the "Full metal promotion" promotion should be available to be used only 50 times

