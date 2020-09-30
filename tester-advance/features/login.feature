Feature: Login
    As a user,
    I want to login on herokuapp,
    So that I can post things

    Background: Navigate to login page
    Given navigate to login page

    Scenario: Login success
        When user type "tomsmith" and "SuperSecretPassword!"
        Then the msg "You logged into a secure area!" displays

    Scenario Outline: Login unsucess
        When I type invalid username '<user_name>' and invalid password '<pass_word>'
        And press Login
        Then '<msg>' displays
    
        Examples:
            | user_name  | pass_word            | msg                           |
            | DangDuong  | 123456               | Your username is invalid!     |
            | aaa        | 123789               | Your username is invalid!     | 
            | z#4        | 123@45~              | Your username is invalid!     |