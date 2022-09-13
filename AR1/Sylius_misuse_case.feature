@receiving_discount
Feature: Receiving percentage discount on shipping
    In order to pay decreased amount for shipping
    As a Customer
    I want to have shipping promotion applied to my cart

    Background:
        Given the store operates on a single channel in "United States"
        And the store has "DHL" shipping method with "$10.00" fee
        And the store has a product "PHP Mug" priced at "$20.00"
        And the store has a product "PHP T-Shirt" priced at "$100.00"
        And there is a promotion "Holiday promotion"
        And I am a logged in customer
	
		
    @ui
    Scenario: Not receiving negative discount on shipping
        Given the promotion gives free shipping to every order over "$70.00"
        And there is a promotion "Shipping promotion"
        And this promotion gives free shipping to every order over "$50.00"
        When I add 4 products "PHP Mug" to the cart
        Then my cart total should be "$80.00"
        And my cart shipping total should be "$0.00"