# robot -d Results Tests/Elseif.robot
*** Variables ***
${MY_VALUE} =  100

*** Test Cases ***

Testing a true IF statement
    run keyword if    ${MY_VALUE} > 50    keyword 1

Testing a false IF statement
    run keyword if    ${MY_VALUE} > 200    keyword 2

Testing an IF/ELSE statement

    run keyword if    ${MY_VALUE} > 200    keyword 1
    ...    ELSE    keyword 2

Testing an IF/ElSE IF/ELSE statement
    run keyword if    ${MY_VALUE} > 200     keyword 1
    ...    ELSE IF     ${MY_VALUE} == 10    keyword 2
    ...    ELSE    keyword 3

*** Keywords ***

Keyword 1
    log    Hello World

Keyword 2
    log    Hello Sun

Keyword 3
    log    Hello Moon