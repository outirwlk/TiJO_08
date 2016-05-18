Feature: Searching
 Scenario: Last name Spancer
  When I browse to the "/"
  When I enter "Spencer" into "input.last" field
  Then the css element "td:nth-of-type(2)" should contain the text "Spencer"
  Then I should see "Spencer" in "lastName" column in row "1" of "student.table" table
Scenario: Main Windows Search
 When I browse to the "/"
 When I enter "ro" into "input.search" field
 Then the css element "td:nth-of-type(4)" should contain the text "gray.rose@undefined.io"
 Then I should see "Rose" in "lastName" column in row "1" of "student.table" table
 Scenario: Search by Age
  When I browse to the "/"
  When I enter "27" into "input.age" field
  Then the css element "td:nth-of-type(2)" should contain the text "Burnett"
  Then I should see "Good" in "firstName" column in row "1" of "student.table" table
  Scenario: Search by e-mail
   When I browse to the "/"
   When I enter "und" into "input.search" field
   Then the css element "td:nth-of-type(2)" should contain the text "Bridges"
   Then I should see "Gordon" in "lastName" column in row "5" of "student.table" table
   Scenario: Search Phone number
    When I browse to the "/"
    When I enter "22" into "input.phone" field
    Then the css element "td:nth-of-type(5)" should contain the text "+1 (957) 597-2822"
    Then I should see "Gutierrez" in "firstName" column in row "2" of "student.table" table
    Then pause