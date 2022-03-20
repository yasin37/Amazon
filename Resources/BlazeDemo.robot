*** Settings ***
Resource    ./PO_BlazeDemo/FlightsPage.robot
Resource    ./PO_BlazeDemo/WelcomePage.robot
Resource    ./PO_BlazeDemo/PurchasePage.robot

*** Keywords ***

Register Account
        [Arguments]    ${UserData}
        WelcomePage.Load
        WelcomePage.Verify Page Loaded
        WelcomePage.Choose City
        FlightsPage.Verify Page Loaded
        FlightsPage.Choose Flight
        PurchasePage.Verify Page Loaded
        PurchasePage.Purchase Ticket    ${UserData}


