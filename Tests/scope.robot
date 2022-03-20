*** Settings ***
Resource    ../Resources/scope.robot


*** Variables ***
# MY_VARIABLE is defined in resource file (keyword file) as well but script file has higher priory than keyword file
${MY_VARIABLE} =    data from script file
*** Test Cases ***

Create and log a variable
    # Create a variable as test case level scope
    # ${my_variable} =    set variable    Some Information
    log    ${MY_VARIABLE}

Access a variable
    log    ${MY_VARIABLE}