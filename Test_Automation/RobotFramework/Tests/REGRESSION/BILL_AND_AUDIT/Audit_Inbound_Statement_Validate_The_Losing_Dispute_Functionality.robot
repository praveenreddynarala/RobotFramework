*** Settings ***
Documentation     A Test Suite With Set Of Tests For Inbound Statement To Validate The Losing Dispute Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/bill_and_audit_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/bill_and_audit_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Bill And Audit module
    [Tags]    REGRESSION
    click on home icon and select 'bill and audit' from main menu

Validate Select Inbound Statements Tab
    [Tags]    REGRESSION
    Verify Select Inbound Statement Tab

Validate Set Statement Status For Search
    [Tags]    REGRESSION
    Verify Set Statement Status For Search      @{STATUS LIST FOR LOSE DISPUTE}

Validate Set Begin Date For Statement Search
    [Tags]    REGRESSION
    Verify Set Begin Date For Statement Search      ${BEGIN DATE FOR LOSING DISPUTE}

Validate Set End Date For Statement Search
    [Tags]    REGRESSION
    Verify Set End Date For Statement Search        ${END DATE FOR LOSING DISPUTE}

Validate Click Inbound Statement Search Button
    [Tags]    REGRESSION
    Verify Click Inbound Statement Search Button

Validate Click Inbound Statement Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Inbound Statement Grid First Row Inline Action Button

Validate Select Statement Details Inline Action Item
    [Tags]    REGRESSION
    Verify Select Inline Action Item        ${STATEMENT DETAILS INLINE ITEM}

Validate Select Disputes Tab
    [Tags]    REGRESSION
    Verify Select Disputes Tab

Validate Select Statement Details Disputes Grid First Row Checkbox
    [Tags]    REGRESSION
    Verify Select Statement Details Disputes Grid First Row Checkbox

Validate Click Lose Dispute Button
    [Tags]    REGRESSION
    Verify Click Lose Dispute Button

Validate Set Discrepancy Source
    [Tags]    REGRESSION
    Verify Set Discrepancy Source       ${LOSE DISPUTE DISCREPANCY SOURCE}

Validate Set Win Dispute Description
    [Tags]    REGRESSION
    Verify Set Win Dispute Description      ${TEST DATA PREFIX}

Validate Click Win DIspute Cancel Button
    [Tags]    REGRESSION
    Verify Click Win DIspute Cancel Button

Validate Click Win DIspute Save Button
    [Tags]    REGRESSION
    Verify Click Win DIspute Save Button

Validate Click Disputes Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Disputes Grid First Row Inline Action Button

Validate Select Resolutions Inline Action Item
    [Tags]    REGRESSION
    Verify Select Inline Action Item        ${RESOLUTION INLINE ITEM NAME}

Validate Filter Dispute Resolutions Grid
    [Tags]    REGRESSION
    Verify Filter Dispute Resolutions Grid      ${DESCRIPTION COLUMN NAME}

Validate Get Resolutions Grid Row Details
    [Tags]    REGRESSION
    Verify Get Resolutions Grid Row Details

Validate Resolutions Grid Row Data
    [Tags]    REGRESSION
    Verify Resolutions Grid Row Data        ${LOSE DISPUTE DISCREPANCY SOURCE}       ${LOST RESOLUTION TYPE}

Validate Close Dispute Line Itmes Tab
    [Tags]    REGRESSION
    Verify Close Current Tab        ${DISPUTE LINE ITEM TAB NAME PREFIX}

Validate Close Inbound Statement Tab
    [Tags]    REGRESSION
    Verify Close Current Tab        ${INBOUND STATEMENTS TAB NAME}