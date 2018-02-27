*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Reference Price Generation for Destinations with Traffic Volume Parameters Defined

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/price_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Price module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Navigate to Price Policies Tab
    [Tags]    REGRESSION
    Verify Select Price Policies Tab

Validate Get Created Price Policy Name
    [Tags]    REGRESSION
    Verify Get Created Cost Policy Name

Validate Filter Price Policy Grid With Created New Price Policy
    [Tags]    REGRESSION
    Verify Filter Cost Policy Grid    ${PRICE POLICY COLUMN NAME}

Validate Select Price Policies Grid Row Checkbox
    [Tags]    REGRESSION
    Verify Select Price Policies Grid Row Checkbox

Validate Click Reference Prices Button
    [Tags]    REGRESSION
    Verify Click Reference Prices Button

Validate Get Available Reference Prices Count
    [Tags]    REGRESSION
    Verify Get Available Reference Prices Count

Validate Close Current Tab
    [Tags]    REGRESSION
    price_page_resource.Verify Close Current Tab    ${REFERANCE PRICES TAB NAME}

Validate Click Generate Reference Prices Button
    [Tags]    REGRESSION
    Verify Click Generate Reference Prices Button

Validate Select Available Destinations
    [Tags]    REGRESSION
    [Documentation]     This destination has been created in testauto environment. As per requirements in TAENOSIS-461, this destination is being used as test data.
    @{DESTINATIONS} =    create list     PN_Destination_TestAuto
    Verify Select Available Destinations    @{DESTINATIONS}

Validate Click Generate Reference Prices Submit Button
    [Tags]    REGRESSION
    Verify Click Generate Reference Prices Submit Button

Validate Navigate to Price Policies Tab Again
    [Tags]    REGRESSION
    Verify Select Price Policies Tab

Validate Click Formulas Button
    [Tags]    REGRESSION
    Verify Click Formulas Button

Validate Click Formulas Page Search Button
    [Tags]    REGRESSION
    Verify Click Formulas Page Search Button

Validate Comparsion of Formula Column Value
    [Tags]    REGRESSION
    [Documentation]   Target, minimum and cost value have been taken from previous test case TC_72
    Verify Comparsion of Formula Column Value       5       Cost * USD        0
