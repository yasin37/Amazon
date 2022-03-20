*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${ADD_TO_CART_BUTTON} =    id=add-to-cart-button
*** Keywords ***
Verify Page Loaded
    wait until page contains    Back to results

Add to Cart
        click button    ${ADD_TO_CART_BUTTON}