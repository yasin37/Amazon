*** Settings ***
Library    String

*** Test Cases ***

FOR LOOP "IN RANGE"
    FOR    ${i}    IN RANGE    3    10    # 3 included but 10 excluded
        log    ${i}
    END

FOR "LOOP IN"
    @{My_List}    create list    Hello    37    41.29    World    ABC123

    FOR    ${i}    IN    @{My_List}
      log    ${i}
     END

Simple for loop
    FOR    ${animals}    IN    dog    cat
        log    ${animals}
        log    2nd keyword
    END
    log    Outside loop

FOR Loop with Upper Bounds Range

    [Documentation]    This gives us a 0 based range
    [Tags]    current
    FOR    ${index}    IN RANGE    5    # 0 included but 5 is excluded
        Do Something    ${index}
        ${RANDOM_STRING} =   generate random string    ${index}
        log    ${RANDOM_STRING}
    END

FOR Loop with Start and Finish Range
    [Documentation]  No longer a 0 based range because I provided start
    [Tags]    current1
    FOR    ${index}    IN RANGE    1    4    # 1 included but 4 excluded
        Do Something    ${index}
        ${RANDOM_STRING} =    generate random string    ${index}
        log    ${RANDOM_STRING}
    END

FOR Loop with Start, Finish, and Step Range
    [Documentation]  The counter will jump by 2 each time ("step" value = 2)
    [Tags]    current2
    FOR    ${index}    IN RANGE    1    10    2    # 1,3,5,7 and 9
       Do Something  ${Index}
       ${RANDOM_STRING} =  Generate Random String  ${Index}
       Log  ${RANDOM_STRING}
    END

FOR Loop with List
    [Tags]    current3
    @{ITEMS} =    create list    item1    item2    item3
    FOR    ${MyItem}    IN    @{ITEMS}    # item1, item2 and item3
        log    ${MyItem}
    END

Exit a FOR Loop
    [Tags]    current4
    @{ITEMS} =    create list    item1    item2    item3    item4
    FOR    ${item}    IN    @{ITEMS}    # item1, item2, item3 and item4
        log    ${item}
        run keyword if    "${item}" == "item3"    exit for loop
        log    did not exit
    END
    log    loop ends


*** Keywords ***
Do Something
    [Arguments]    ${PassedIndex}
    log    I was passed a value of ${PassedIndex}!

A Repeatable Keyword
    log    I am being repeated!