*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
User can search for products
    # Here we pass variable input data to a user-defined keyword
    # Try it: Change the URL and/or browser input values (ie, chrome, firefox, etc.)
    Begin Web Test    http://www.amazon.com    chrome

*** Keywords ***
Begin Web Test
    [Arguments]    ${url}    ${browser}
    open browser    ${url}    ${browser}
    close browser
