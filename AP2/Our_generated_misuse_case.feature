@checkout
Feature: Seeing detailed shipping fee on order summary page
    In order to aware of shipping fee applied for my shipment
    As a Customer
    I want to be able to see detailed shipping fee

    Background:
        Given the store operates on a single channel in "United States"
        And the store has a product "The Sorting Hat" priced at "$19.99"
        And the store has a product "No-Face god" priced at "$19.99"
        And the store allows paying offline
        And I am a logged in customer

    @ui
    Scenario: Seeing the shipping fee per shipment on order summary
        Given the store has "UPS" shipping method with "$20.00" fee
        When I specified the shipping address as "Ankh Morpork", "Frost Alley", "90210", "United States" for "Jon Snow"
        Then I should be on the checkout shipping step
        And I should see shipping method "UPS" with fee "$20.00"