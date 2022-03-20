*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${TOPNAV_SEARCH_BAR} =    id=twotabsearchtextbox
${TOPNAV_SEARCH_BUTTON} =    id=nav-search-submit-button

*** Keywords ***
Enter Search Term
    input text    ${TOPNAV_SEARCH_BAR}    python crash course

Submit Search
    click button    ${TOPNAV_SEARCH_BUTTON}