*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Verify Page Loaded
    wait until page contains    Your flight from

Purchase Ticket
    [Arguments]    ${UserData}
    input text    id=inputName    ${UserData.name}
    input text    id=address    ${UserData.Address}
    input text    id=city    ${UserData.City}
    input text    id=state    ${UserData.State}
    input text    id=zipCode    ${UserData.ZipCode}
    click element    xpath=//input[@value='Purchase Flight']
    wait until page contains    Thank you for your purchase today!
