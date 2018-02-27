*** Settings ***
Documentation       [TAENOSIS-835] Validate Rates Tab Display Correctly for Vendor Offers

Resource        ../../../Resources/common_resource.robot
Resource        ../../../Resources/Pages/buy_page_resource.robot


Suite Setup     Validate Login Functionality With Valid Credential
Suite Teardown  Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Buy module
    [Tags]  REGRESSION
    Click on Home Icon and Select 'Buy' From Main Menu

Validate Vendors Tab Is Available
    [Tags]  REGRESSION
    Verify The Vendors Tab Is Available

Validate Click Vendor Tab
    [Tags]  REGRESSION
    Verify Click On Vendors Tab

Validate Vendor Price Lists is Available
    [Tags]  REGRESSION
    Verify The 'Vendor Price Lists' Button Is Present Under Vendors Tab

Validate Click Vendor Price Lists
    [Tags]  REGRESSION
    Verify Click On Vendor Price Lists

Validate Click Vendor Price List Grid First Row Inline Action Button
    [Tags]  REGRESSION
    Verify Click Vendor Price List Grid First Row Inline Action Button

Validate Click View Price List Details
    [Tags]  REGRESSION
    Verify Select Inline Action Item With Inline Item Name      View Price List Detail

Validate Rates Tab Is Loaded Properly
    [Tags]  REGRESSION
    Verify Rates Tab Is Loaded Properly

