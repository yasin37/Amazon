*** Settings ***
Documentation    This is some basic info about the whole suite
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
User must sign in to check out
    [Documentation]    This is some basic info about the test case
    [Tags]    Smoke
    open browser    https://www.amazon.com/    chrome
    maximize browser window
    wait until page contains    Hello, Sign in
    input text    id=twotabsearchtextbox    python crash course
    click button    id=nav-search-submit-button
    wait until page contains    results for "python crash course"    # resul for ve "python" are located at two different elements
    click element    xpath=//span[contains(text(),'Python Crash Course, 2nd Edition: A Hands-On, Project-Based Introduction to Programming')]
    #click element    xpath=//img[@alt='Python Crash Course, 2nd Edition: A Hands-On, Project-Based Introduction to Programming']
    wait until page contains    Back to results
    click button    id=add-to-cart-button
    wait until page contains    Added to Cart
    click element    xpath=//a[contains(text(),'Proceed to checkout') and @id='hlb-ptc-btn-native']
    wait until page contains    Sign-In
    close browser

