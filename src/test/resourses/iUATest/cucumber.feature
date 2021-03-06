@all
Feature:

  Scenario: Try autorize with valid data
    Given Enter login "yriuu@i.ua"
    And Enter passworg "befazi86"
    When I click login button
    Then i check that user name is "yriuu@i.ua"

  Scenario: Try outorize with notvalid data
    Given Enter not vali login "123@12.22"
    And Enter not valid password "123"
    When I click login button
    Then I check that I don't autirize

  Scenario: Sent letter
    Given Enter login "yriuu@i.ua"
    And Enter passworg "befazi86"
    And I click login button
    And I click create mess button
    And I enter addressee
    And I enter letter subject
    And I enter letter text
    When I click sent button
    Then I see OK message

  Scenario: Delete inbox letter
    Given Enter login "yriuu@i.ua"
    And Enter passworg "befazi86"
    And I click login button
    And I click inbox letters button
    And I click on checkbox
    When I click delete button
    Then I deleted letter

  Scenario: LogOut
    Given Enter login "yriuu@i.ua"
    And Enter passworg "befazi86"
    And I click login button
    When I click quit button
    Then I check that I quit

  Scenario: API 1
    Then I sent request to the site www.i.ua

  Scenario: API 2
    Then I check data from of the site

  Scenario: API 3
    Then I check that I login

