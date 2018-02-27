*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate The Process to Reject A Reference Price

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
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

Validate Filter Price Policy Grid With Created New Price Policy
    [Tags]    REGRESSION
    Verify Filter Cost Policy Grid     ${PRICE POLICY COLUMN NAME}

Validate Select Price Policies Grid Row Checkbox
    [Tags]  REGRESSION
    Verify Select Price Policies Grid Row Checkbox

Validate Click Reference Prices Button
    [Tags]    REGRESSION
    Verify Click Reference Prices Button

Validate Get Available Reference Prices Count
    [Tags]    REGRESSION
    Verify Get Available Reference Prices Count

Validate Close Current Tab
    [Tags]    REGRESSION
    price_page_resource.Verify Close Current Tab        ${REFERANCE PRICES TAB NAME}

Validate Click Generate Reference Prices Button
    [Tags]    REGRESSION
    Verify Click Generate Reference Prices Button

Validate Select Available Destinations
    [Tags]    REGRESSION
    ${DESTINATION} =    Verify Get Created Destination
    @{DESTINATIONS} =       create list       ${DESTINATION}
    Verify Select Available Destinations        @{DESTINATIONS}

Validate Click Generate Reference Prices Submit Button
    [Tags]    REGRESSION
    Verify Click Generate Reference Prices Submit Button

Validate Navigate to Price Policies Tab Again
    [Tags]    REGRESSION
    Verify Select Price Policies Tab

Validate Click Reference Prices Button Again
    [Tags]    REGRESSION
    Verify Click Reference Prices Button

Validate Compare Price Reference Prices Count After Create
    [Tags]   REGRESSION
    Verify Compare Price Reference Prices Count After Create        0

Validate Select Status For Reference Prices Search
    [Tags]    REGRESSION
    Verify Select Status For Reference Prices Search        @{REFERENCE PRICE STATUS LIST FOR REJECT}

Validate Click Reference Prices Search Button
    [Tags]    REGRESSION
    Verify Click Reference Prices Search Button

Validate Set Status For Reference Prices
    [Tags]    REGRESSION
    Verify Set Status For Reference Prices      ${REJECTED STATUS}

Validate Click Reference Prices Save Changes Button
    [Tags]    REGRESSION
    Verify Click Reference Prices Save Changes Button