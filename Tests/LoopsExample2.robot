*** Settings ***


*** Variables ***
@{ROBOTS} =    Bender    Johnny5    Terminator    Robocop

*** Test Cases ***

Loop Over A List Of Items And Log Each Of Them
    [Documentation]    An example about for loops.
    FOR    ${root}    IN    @{ROBOTS}
        log    ${root}
    END

Execute a for loop only three times
    [Documentation]    An example executing a for loop but skipping one element.
    [Tags]    continue
    FOR    ${robot}    IN    @{ROBOTS}
        #RUN KEYWORD IF    '${robot}' == 'Terminator'    continue for loop
        continue for loop if    '${robot}' == 'Terminator'
        log    ${robot}
    END


Break out of the for loop on condition
    [Documentation]    An example breaking out of the for loop based on some condition.
    [Tags]    break
    FOR    ${robot}    IN    @{ROBOTS}
       exit for loop if    '${robot}' == 'Johnny5'
       log    ${robot}
    END

Execute a for loop only two times
    [Documentation]    An example executing a for loop only two times.
    [Tags]    maximum
    ${index} =    set variable    1
    FOR    ${robot}    IN    @{ROBOTS}
        exit for loop if    ${index} > 2
        log    ${robot}
        ${index} =    evaluate    ${index}+1
    END



