*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Navigation To Other Tabs In Carrier Profile Screen

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/carrier_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CARRIER NAME}           ${EMPTY}

*** Test Cases ***
Validate Navigate to Carrier module
    [Tags]  REGRESSION
    Click on Home Icon and Select 'Carrier' From Main Menu

Validate Get Created Carrier Name
    [Tags]    REGRESSION
    ${CARRIER NAME} =       Verify Get Created Carrier Name
    set suite variable      ${CARRIER NAME}

Validate Filter Carriers Grid
    [Tags]  REGRESSION
    carrier_page_resource.Verify Grid Filter Details         ${CARRIER NAME COLUMN NAME}	        ${CARRIER NAME}

Validate Click Carrier Page Inline Action Button
    [Tags]  REGRESSION
    Verify Click Carrier Page Inline Action Button      ${CARRIER NAME}

Validate Select Inline Action Item
    [Tags]  REGRESSION
    Verify Select Inline Action Item      ${CARRIER PROFILE INLINE ITEM}

Validate Click Save Carrier Profile Button
    [Tags]  REGRESSION
    Verify Click Save Carrier Profile Button

Verify Click Carrier Relationships Tab
    [Tags]  REGRESSION
    Verify Click Carrier Relationships Tab

Verify Carrier Relationships Tab Loaded Properly
    [Tags]  REGRESSION
    Verify Carrier Relationships Tab Loaded Properly

Verify Click Dialed Digits Tab
    [Tags]  REGRESSION
    Verify Click Dialed Digits Tab

Verify Dialed Digits Tab Loaded Properly
    [Tags]  REGRESSION
    Verify Dialed Digits Tab Loaded Properly

Verify Click Rates Tab
    [Tags]  REGRESSION
    Verify Click Rates Tab

Verify Rates Tab Loaded Properly
    [Tags]  REGRESSION
    Verify Rates Tab Loaded Properly

Validate Click Destinations Tab
    [Tags]  REGRESSION
    Verify Click Destinations Tab

Verify Destinations Tab Loaded Properly
    [Tags]  REGRESSION
    Verify Destinations Tab Loaded Properly

