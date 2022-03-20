*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

Load
    go to    ${BASE_URL}

Verify Page Loaded
    wait until page contains    Welcome to the Simple Travel Agency!

Choose City
        click element    xpath=//input[@type='submit']