Feature: Compare the market Energy Comparison Form

  Scenario: Your Supplier Step 1
    Given I go to the compare the market energy comparion website
    When I enter a postcode of "PE2 6YS"
    And I click find Postcode button
    And I click next button to proceed to Your Enegery section
    Then I click next button to proceed to Your Enegery section

   Scenario:  Your Energy Step 2
     Given I am on step Your Energy page
     When I add 4000 for electricty usage
     And I click next button to proceed to Your Details section
     And I am shown your Gas usage sub form
     And I add 4000 for gas usage
     Then I click next button to proceed to Your Details section

   Scenario: Your Details Step 3
     Given I am on step Your Details page
     When I click Fixed Tarrif option from tarrif
     And I click monthly direct debit option from payment method
     And I enter "dev.digwin@gmail.com" for email address
     And I accept t's and c's checkbox
     And I click go to prices button
     Then I should see "Your results"

