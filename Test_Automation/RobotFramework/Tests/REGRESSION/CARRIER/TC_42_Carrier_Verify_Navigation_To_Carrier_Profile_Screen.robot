*** Settings ***
Documentation     A Test Suite With Set Of Tests To Verify Navigation To Carrier Profile Screen

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