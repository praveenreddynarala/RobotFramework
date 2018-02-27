*** Settings ***
Documentation     A Test Suite With Set Of Tests For Business Admin Origin Set Management To Validate Edit Origin Details Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/business_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${ORIGIN SET}           ${EMPTY}

*** Test Cases ***
Validate Navigate to Business Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Business Admin' From Main Menu

Validate Get Origin Set Name
    [Tags]    REGRESSION
    ${ORIGIN SET} =     Verify Get Origin Set Name
    set suite variable      ${ORIGIN SET}

Validate Expand Number Plan Menu
    [Tags]    REGRESSION
    Verify Expand Number Plan Menu

Validate Click Origin Set Submenu
    [Tags]    REGRESSION
    Verify Click Origin Set Submenu

Validate Set Origin Set For Search
    [Tags]    REGRESSION
    Verify Set Origin Set For Search        ${ORIGIN SET}

Validate Click Origin Set Search Button
    [Tags]    REGRESSION
    Verify Click Origin Set Search Button

Validate Click Origin Set Grid Inline Action Button
    [Tags]    REGRESSION
    Verify Click Origin Set Grid Inline Action Button       ${ORIGIN SET}

Validate Select Origin Set Grid Inline Item
    [Tags]    REGRESSION
    Verify Select Origin Set Grid Inline Item       ${VIEW ORIGIN SET DETAILS INLINE ITEM}      ${BUSINESS ADMIN MODULE NAME}

Validate Set Origin Set
    [Tags]    REGRESSION
    Verify Set Origin Set       ${NEW ORIGIN SET FOR EDIT}

Validate Set Rule of Missing A
    [Tags]    REGRESSION
    Verify Set Rule of Missing A        ${RULE OF MISSING A FOR EDIT}

Validate Click Edit Origin Set Ok Button
    [Tags]    REGRESSION
    Verify Click Edit Origin Set Ok Button