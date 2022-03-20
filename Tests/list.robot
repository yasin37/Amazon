*** Settings ***

*** Variables ***
@{MY_VARIABLES} =    Hello There    THis is value 2    I am item 3

*** Test Cases ***

Variable demonstration
    log    ${MY_VARIABLES}[0]
    log    ${MY_VARIABLES}[1]
    log    ${MY_VARIABLES}[2]

Variable demonstration 2
    # Set Variable does work for creating lists...
    # @{my_list_variable} =  Set Variable  Item 1  Item 2  Item 3

    # but Create List is the best practice
    @{my_list_variable} =    create list    Item1    Item2    Item3
    log    ${my_list_variable}[0]
    log    ${my_list_variable}[1]
    log    ${my_list_variable}[2]



*** Keywords ***
