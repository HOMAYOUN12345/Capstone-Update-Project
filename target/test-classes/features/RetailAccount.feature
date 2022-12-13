@AccountPage
Feature: Retail Account Page
  
  #Note: For this feature you have to have an account and be logged in into account. Repeated steps are under Background Keyword

  Background: 
    Given User is on retail website 
		When User click on Sign in option 
		And User enter email 'homayoun.ibrahimi@gmail.com'
		Then User should be logged in into Account 
    

	@personalInformation
  Scenario: Verify User can update Profile Information
    When User click on Account option
    And User update Name 'Homayoun' and Phone '3323232323'
    And User click on Update button
    Then user profile information should be updated
#@PasswordUpdated
# Scenario: Verify User can Update password
#    When User click on Account option
#    And User enter below information
#      | previousPassword | newPassword | confirmPassword |
#      |Ph@ne12345| Ph@ne123456  | Ph@ne123456 |
#    And User click on Change Password button
#   Then a message should be displayed Password Updated Successfully
	@AddCard
  Scenario: Verify User can add a payment method
    When User click on Account option
    And User click on Add a payment method link
    And User fill Debit or credit card information
      | cardNumber | nameOnCard | expirationMonth | expirationYear | securityCode |
      | 1010101000110 | homayoun     | 12      | 2027         | 614       |
    And User click on Add your card button
    Then a message should be displayed Payment Method added successfully
 	@Edit
  Scenario: Verify User can edit Debit or Credit card
  	
    When User click on Account option
    When User click on added card
    And User click on Edit option of card section
    And user edit information with below data
      | cardNumber | nameOnCard | expirationMonth | expirationYear | securityCode |
      | 101010101010    | iqbal      | 12           | 2029          | 444333        |
    And user click on Update Your Card button
    Then a message should be displayed Payment Method updated Successfully
	@removedCard
  Scenario: Verify User can remove Debit or Credit card
    When User click on Account option
    When User click on added card
    And User click on remove option of card section
    Then payment details should be removed

	@AddAddress
  Scenario: Verify User can add an Address
    When User click on Account option
    And User click on Add address option
    And user fill new address form with below information
      | country | fullName | phoneNumber | streetAddress | apt   | city  | state | zipCode |
      | United States   | iqbal    | 12324545454      |      122323     | 443434 |chantilly | VA | 203334   |
    And User click Add Your Address button
    Then a message should be displayed Address Added Successfully

	@EditAddress
  Scenario: Verify User can edit an Address added on account
    When User click on Account option
    And User click on edit address option
    And user fill new address form with below information there
      | country | fullName | phoneNumber | streetAddress | apt   | city  | state | zipCode |
      |  United States  | IQBAL    | 232323234343       | 1121 university bld         | 1122 | CHANTILLY | VA | 20202   |
    And User click update Your Address button
    Then a message should be displayed Address Updated Successfully

	@RemoveAddress
  Scenario: Verify User can remove Address from Account
    When User click on Account option
    And User click on remove option of Address section
    Then Address details should be removed
