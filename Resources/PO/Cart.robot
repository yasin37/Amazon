*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${PROCEED_TO_CHECKOUT_BUTTON} =    xpath=//a[contains(text(),'Proceed to checkout') and @id='hlb-ptc-btn-native']
*** Keywords ***

Verify Product Added
    wait until page contains    Added to Cart

Proceed to Checkout
    click element    ${PROCEED_TO_CHECKOUT_BUTTON}