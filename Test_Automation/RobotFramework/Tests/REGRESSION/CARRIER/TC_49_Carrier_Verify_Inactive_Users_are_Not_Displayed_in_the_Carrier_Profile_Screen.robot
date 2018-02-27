*** Settings ***
Documentation     A Test Suite With Set Of Tests To Verify Inactive users are not Displayed in the Carrier Profile Screen

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/carrier_page_test_data_source.robot


Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CARRIER NAME}           ${EMPTY}
*** Test Cases ***
Validate Navigate to Carrier module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Carrier' From Main Menu

Validate Get Created Carrier Name
    [Tags]    REGRESSION
    ${CARRIER NAME} =    Verify Get Created Carrier Name
    set suite variable      ${CARRIER NAME}

Validate Filter Carrier Grid
    [Tags]    REGRESSION
    Verify Filter Carriers Grid After Create        ${CARRIER NAME COLUMN NAME}

Validate Click Carriers Page Inline Action Button
    [Tags]    REGRESSION
    carrier_page_resource.Verify Click Carriers Page Inline Action Button After Create

Validate Select Item From Inline Action
    [Tags]    REGRESSION
    carrier_page_resource.Verify Select Item From Inline Action           ${CARRIER PROFILE INLINE ITEM}

Validate Incative User Is Not Present in Seller Name Dropdown
    [Tags]    REGRESSION
    ${USER FIRST NAME} =        Verify get user first name
    ${USER LAST NAME} =          Verify get user last name
    Verify Inactive User Is Not Present in Seller Name Dropdown     ${USER FIRST NAME}      ${USER LAST NAME}

Validate Click Carrier Profile Save Changes Button
    [Tags]    REGRESSION
    Verify Click Save Carrier Profile Button


