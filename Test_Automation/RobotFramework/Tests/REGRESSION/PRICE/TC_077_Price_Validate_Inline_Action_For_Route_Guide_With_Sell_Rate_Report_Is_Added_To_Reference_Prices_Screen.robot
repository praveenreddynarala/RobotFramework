*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Inline Action For Route Guide With Sell Rate Report Is Added To Reference Price Screen

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/price_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Price module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Navigate to Price Policies Tab
    [Tags]    REGRESSION
    Verify Select Price Policies Tab

Validate Click Reference Prices Button
    [Tags]    REGRESSION
    Verify Click Reference Prices Button

Validate Select Price Policy For Reference Prices Search
    [Tags]    REGRESSION
    ${CREATED PRICE POLICY NAME} =      Verify Get Created Cost Policy Name
    Verify Select Price Policy For Reference Prices Search      ${CREATED PRICE POLICY NAME}

Validate Select Status For Reference Prices Search
    [Tags]    REGRESSION
    Verify Select Status For Reference Prices Search        @{REFERENCE PRICE STATUS LIST FOR REJECT}

Validate Set Select Date For Reference Prices Search
    [Tags]    REGRESSION
    Verify Set Select Date          11/7/2016

Validate Click Reference Prices Search Button
    [Tags]    REGRESSION
    Verify Click Reference Prices Search Button

Validate Click Reference Prices Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Reference Prices Grid First Row Inline Action Button

Validate The Route Guide With Sell Rates Report Inline Item Is Available
    [Tags]    REGRESSION
    Verify The Route Guide With Sell Rates Report Inline Item Is Available

Validate Select Route Guide With Sell Rates Report Inline Action Item
    [Tags]    REGRESSION
    price_page_resource.Verify Select Inline Action Item        ${ROUTE GUIDE WITH SELL RATES REPORT INLINE ITEM}

Validate The Route Guide With Sell Rates Report Pop Up Is Available
    [Tags]    REGRESSION
    Verify The Route Guide With Sell Rates Report Pop Up Is Available

Validate Close Route Guide With Sell Rates Report Pop Up
    [Tags]    REGRESSION
    price_page_resource.Verify Close Current Pop Up         ${ROUTE GUIDE WITH SELL RATES REPORT POP UP NAME}

Validate Click Reference Prices Grid First Row Inline Action Button For Detail Item
    [Tags]    REGRESSION
    Verify Click Reference Prices Grid First Row Inline Action Button

Validate The View Reference Price Details Inline Item Is Available
    [Tags]    REGRESSION
    Verify The View Reference Price Details Inline Item Is Available

Validate Select View Reference Price Details Inline Action Item
    [Tags]    REGRESSION
    price_page_resource.Verify Select Inline Action Item        ${VIEW REFERENCE PRICE DETAILS INLINE ITEM}

Validate The View Reference Price Details Pop Up Is Available
    [Tags]    REGRESSION
    Verify The View Reference Price Details Pop Up Is Available

Validate The Reference Price List History Section Is Available
    [Tags]    REGRESSION
    Verify The Reference Price List History Section Is Available

Validate Close Reference Price List Details Pop Up
    [Tags]    REGRESSION
    price_page_resource.Verify Close Current Pop Up         ${REFERENCE PRICE LIST DETAILS POP UP NAME}
