*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Reference Price Generation is Not Possible With prices at 0

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

Validate Navigate To Formulas Screen
    [Tags]    REGRESSION
    Verify Click Formulas Button

Validate Click Formula Screen Search Button
    [Tags]    REGRESSION
    Verify Click Formulas Page Search Button

Validate Click Create Destination Formula Button
    [Tags]    REGRESSION
    Verify Click Create Destination Formula

Validate Set Destination in Formula Pop Up
    [Tags]    REGRESSION
    ${DESTINATION} =    Verify Get Created Destination
    ${DESTINATION} =    set variable        ${DESTINATION}
    Verify Set Destination of Formula Pop Up    ${DESTINATION}

Validate Set Formula Target Value 0
    [Tags]    REGRESSION
    Verify Set Formula Target    0

Validate Set Formula Minimum Value 0
    [Tags]    REGRESSION
    Verify Set Formula Minimum    0

Validate Set Formula Cost Value 0
    [Tags]    REGRESSION
    Verify Set Formula Cost    0

Validate Click Formula Calculate Button
    [Tags]    REGRESSION
    Verify Click Calculate Button

Validate Click Price Policy Formula Create Button
    [Tags]    REGRESSION
    Verify Click Create Button

Validate Navigate to Price Policies Tab After Formula Creation
    [Tags]    REGRESSION
    Verify Select Price Policies Tab

Validate Click Generate Reference Prices Button After Formula Creation
    [Tags]    REGRESSION
    Verify Click Generate Reference Prices Button

Validate Select Available Destinations
    [Tags]    REGRESSION
    ${DESTINATION} =    Verify Get Created Destination
    @{DESTINATIONS} =    create list        ${DESTINATION}
    Verify Select Available Destinations    @{DESTINATIONS}

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
    [Tags]    REGRESSION
    Verify Compare Price Reference Prices Count After Generating RPL With '0' or 'Null'     0