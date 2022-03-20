*** Settings ***
Library    ../Libraries/MyCustomLibrary.py
Resource    PO/LandingPage.robot
Resource    PO/TopNav.robot
Resource    PO/SearchResults.robot
Resource    PO/Product.robot
Resource    PO/Cart.robot
Resource    PO/SignIn.robot

*** Keywords ***

Login
    [Arguments]    ${Username}    ${Password}


Do Some Custom Thing
    MyCustomLibrary.do something special

Search for Products
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Enter Search Term
    TopNav.Submit Search
    ${ReturnInfo} =    SearchResults.Verify Search Completed
    log    ${ReturnInfo}

Verify Results Page Contains Products
    [Arguments]    ${ExpectedProductCount}
    SearchResults.Verify Product Count    ${ExpectedProductCount}

Select Product from Search Results
    SearchResults.Click Product Link
    Product.Verify Page Loaded

Product to Cart
    Product.Add to Cart
    Cart.Verify Product Added

Begin Checkout
    Cart.Proceed to Checkout
    wait until page contains    Sign-In
    SignIn.Verify Page Loaded

