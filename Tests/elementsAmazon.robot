*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BASE_URL} =    https://www.amazon.com
${BROWSER} =    chrome

*** Test Cases ***
First Case
    open browser    ${BASE_URL}    ${BROWSER}
    maximize browser window
    mouse over    id=nav-link-accountList
    click element    //span[contains(text(),'Create a List')]
    sleep    5s
    close browser