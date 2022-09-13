@managing_promotion_coupons @ui @mucs[][][0]
Feature: Exploit bzl-ctrl-03

Background: 
Given the store operates on a single channel in "United States"
 And the store has promotion "Christmas sale" with coupon "SANTA2016"
 And I am logged in as an administrator

Scenario: Changing coupons per customer usage limit 
Given I want to modify the "SANTA2016" coupon for this promotion
 When I change its per customer usage limit to -20
 And I save my changes
 Then I should be notified that it has been successfully edited
 And this coupon should have 20 per customer usage limit

