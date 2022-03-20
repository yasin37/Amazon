*** Settings ***

*** Variables ***

${MY_VARIABLE} =    Hello There


*** Test Cases ***
Set Variable in the test case
     [Tags]    Current
     ${my_new_variable} =    set variable    Something else
     log    ${MY_VARIABLE}

Variable Demonstration
    log    ${MY_VARIABLE}

Variable Demonstration 2
    log    ${MY_VARIABLE}

*** Keywords ***
