*** Settings ***
Library    SeleniumLibrary

# robot -d Results -v BROWSER:opera -v PATH_TYPE:find_list  Tests/Dictionary.robot
# robot -d Results -v BROWSER:chrome -v PATH_TYPE:charity_List  Tests/Dictionary.robot
*** Variables ***

${BROWSER} =  edge
${BASE_URL} =    https://www.amazon.com
${PATH_TYPE} =    account
&{URL}=    account=${BASE_URL}/gp/css/homepage.html?ref_=nav_AccountFlyout_ya    find_list=${BASE_URL}/registries?ref_=nav_ListFlyout_find    charity_List=${BASE_URL}/gp/clpf?ref_=nav_ListFlyout_smi_se_ya_lll_ll

*** Test Cases ***
TC_0001

    open browser    ${URL.${PATH_TYPE}}    ${BROWSER}
    maximize browser window
    log to console    ${URL.${PATH_TYPE}}
    sleep    3s
    close browser