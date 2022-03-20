*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Verify Page Loaded
    wait until page contains    Flights from

Choose Flight
        click element    xpath=//td[contains(text(),'Lufthansa')]//parent::tr/td/input