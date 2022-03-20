*** Settings ***

Library    SeleniumLibrary

*** Keywords ***

Begin Web Test
    open browser    about:blank    ${BROWSER}
    maximize browser window

End Web Test
   close browser

Insert Testing Data
    Custom Keyword 1
    Custom Keyword 2

Cleanup Testing Data
    log    I am cleaning up the test data

Custom Keyword 1
    log    Doing Keyword 1

Custom Keyword 2
    log    Doing Keyword 2




