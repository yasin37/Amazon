*** Settings ***
Resource    ../Resources/Common.robot    # for Setup & Teardown
Resource    ../Resources/BlazeDemo.robot    # Blazedemp Functions
Test Setup    Common.Begin Web Test
Test Teardown    Common.End Web Test


*** Variables ***
${BROWSER} =  chrome
${BASE_URL} =    https://blazedemo.com
&{CUSTOMER_1} =    name=Jack    Address=USA    City=Boston    State=State_1    ZipCode=123
&{CUSTOMER_2} =    name=Marco    Address=Italy    City=Roma    State=Toscona    ZipCode=989892
&{CUSTOMER_3} =    name=Lee    Address=Korea    City=Seul    State=Karako    ZipCode=736712

*** Test Cases ***

TC_001
    BlazeDemo.Register Account    ${CUSTOMER_1}
