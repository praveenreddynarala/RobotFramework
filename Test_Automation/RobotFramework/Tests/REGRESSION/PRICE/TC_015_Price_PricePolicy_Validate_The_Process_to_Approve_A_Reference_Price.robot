*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate The Process to Approve A Reference Price

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

Validate Get Created Price Policy Name
    [Tags]    REGRESSION
    Verify Get Created Cost Policy Name

Validate Filter Price Policy Grid With Created New Cost Policy
    [Tags]    REGRESSION
    Verify Filter Cost Policy Grid     ${PRICE POLICY COLUMN NAME}

Validate Select Price Policies Grid Row Checkbox
    [Tags]  REGRESSION
    Verify Select Price Policies Grid Row Checkbox

Validate Click Reference Prices Button
    [Tags]    REGRESSION
    Verify Click Reference Prices Button

Validate Select Status For Reference Prices Search
    [Tags]    REGRESSION
    Verify Select Status For Reference Prices Search        @{REFERENCE PRICE STATUS LIST FOR REJECT}

Validate Click Reference Prices Search Button
    [Tags]    REGRESSION
    Verify Click Reference Prices Search Button

Validate Set Status For Reference Prices
    [Tags]    REGRESSION
    Verify Set Status For Reference Prices      ${APPROVED STATUS}

Validate Click Reference Prices Save Changes Button
    [Tags]    REGRESSION
    Verify Click Reference Prices Save Changes Button