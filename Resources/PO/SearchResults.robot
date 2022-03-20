*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

Verify Search Completed
    wait until page contains    results for "python crash course"    # results for ve "python" are located at two different elements
    [Return]    found it!!

Click Product Link
    [Documentation]    Clicks on the first product in the search results list
    #click element    xpath=(//span[@class='a-size-base-plus a-color-base a-text-normal'])[1]
    click element    xpath=//span[contains(text(),'Python Crash Course, 2nd Edition: A Hands-On, Project-Based Introduction to Programming')]
    #click element    xpath=//img[@alt='Python Crash Course, 2nd Edition: A Hands-On, Project-Based Introduction to Programming']

Verify Product Count
    [Arguments]    ${ExpectedProductCount}
    page should contain element    //div[@data-asin and @data-component-type='s-search-result']    limit=${ExpectedProductCount}