*** Settings ***
Documentation    This is basic info about the whole suite
Resource    ../Resources/Common.robot    # for Setup & Teardown
Resource    ../Resources/AmazonApp.robot    # for lower level keywords in test cases
Test Setup    Common.Begin Web Test
Test Teardown    Common.End Web Test

# robot -d Results -i current Tests/Amazon.robot

*** Variables ***
${BROWSER} =  chrome
${START_URL} =  https://www.amazon.com
${SEARCH_TERM} =  Ferrari 458
${LOGIN_EMAIL} =  admin@robotrameworktutorial.com
${LOGIN_PASSWORD} =  myPassword1

*** Test Cases ***

Logged out user should be able to search for products
    [Tags]    search
    AmazonApp.Search for Products

Search results page should contain 30 products
    [Tags]    current
    AmazonApp.Search for Products
    AmazonApp.Verify Results Page Contains Products    16     # 16 can be changed

