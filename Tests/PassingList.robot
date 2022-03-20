*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
User can search for products
    # Here we pass variable input data to a user-defined keyword
    # Try it: Change the URL and/or browser input values (ie, chrome, firefox, etc.)
    @{url_and_browser} =    set variable    http://www.amazon.com    opera
    Begin Web Test    @{url_and_browser}

*** Keywords ***
Begin Web Test
    [arguments]    @{url_and_browser}
    open browser    ${url_and_browser}[0]    ${url_and_browser}[1]
    close browser