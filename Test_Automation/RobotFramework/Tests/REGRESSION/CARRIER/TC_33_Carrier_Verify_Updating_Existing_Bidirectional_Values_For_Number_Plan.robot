*** Settings ***
Documentation     A Test Suite With Set Of Tests To Verify Updating Existing Bidirectional Values For Number Plan

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/carrier_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${AGREEMENT NAME}       ${EMPTY}

*** Test Cases ***
Validate Navigate to Carrier module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Carrier' From Main Menu

Validate Get Agreement From Agreement Table
    [Tags]    REGRESSION
    ${AGREEMENT NAME} =    Verify Get Agreement From Agreement Table       ${DATABASE SERVER}      ${DATABASE}      ${DATABASE USERNAME}      ${DATABASE PASSWORD}
    log  ${AGREEMENT NAME}
    set suite variable      ${AGREEMENT NAME}

Validate Filter Carrier Grid
    [Tags]    REGRESSION
    Verify Filter Carriers Grid With Parameter        ${CARRIER NAME COLUMN NAME}       ${AGREEMENT NAME}

Validate Click Carriers Page Inline Action Button
    [Tags]    REGRESSION
    Verify Click Carriers Page Inline Action Button With Parameter      ${AGREEMENT NAME}

Validate Select Item From Inline Action
    [Tags]    REGRESSION
    Verify Select Item From Inline Action           ${CARRIER RELATIONSHIPS INLINE ITEM}

Validate Expand Number Plans Section
    [Tags]    REGRESSION
    Verify Expand Number Plans Section

Validate Click Number Plans Inline Action Button
    [Tags]    REGRESSION
    Verify Click Number Plans Inline Action Button

Validate Select Inline Action Item
    [Tags]    REGRESSION
    carrier_page_resource.Verify Select Inline Action Item        ${EDIT INLINE ITEM}

Validate Set Direction For Update
    [Tags]    REGRESSION
    Verify Set Direction        ${NUMBER PLAN DIRECTION}

Validate Click Save Button For Update Number Plan
    [Tags]    REGRESSION
    Verify Click Save Button

Validate Get Number Plans Grid Row Details
    [Tags]    REGRESSION
    Verify Get Number Plans Grid Row Details

Validate Number Plan Grid Direction
    [Tags]    REGRESSION
    Verify Number Plans Grid Direction     ${NUMBER PLAN DIRECTION}