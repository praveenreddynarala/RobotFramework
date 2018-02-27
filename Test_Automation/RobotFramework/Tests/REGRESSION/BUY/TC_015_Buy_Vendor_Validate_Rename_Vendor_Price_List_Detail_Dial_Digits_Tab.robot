*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Create Vendor Functionalities

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/buy_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/buy_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CREATED NEW VENDOR NAME}      ${EMPTY}
@{CREATED VENDOR NAME LIST}     ${EMPTY}
${CALL TYPE}                    ${EMPTY}

*** Test Cases ***
Validate Navigate to System Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select System Tab
    [Tags]    REGRESSION
    Click on System Tab

Validate Click Configuration Variables Button
    [Tags]    REGRESSION
    Verify Click Configuration Variables Button

Validate Set Scope
    [Tags]    REGRESSION
    Verify Set Scope        General

Validate Set Variable Name
    [Tags]    REGRESSION
    Verify Set Variable Name    iXToolsWholesaleSolutionType

Validate Click Configuration Variables Grid Search Button
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Set Value In Current Value Column
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        2

Validate Get Current Value Column Value
    [Tags]    REGRESSION
    Verify Get Current Value Column Value

Validate Get Call Type
    [Tags]    REGRESSION
    ${CALL TYPE} =   Verify Get Call Type
    log  ${CALL TYPE}
    set suite variable   ${CALL TYPE}

Validate Close System Admin Window
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate navigate to Buy module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Buy' From Main Menu

Validate Vendors Tab Is Available
    [Tags]    REGRESSION
    Verify The Vendors Tab Is Available

Validation navigate to Vendors Tab
    [Tags]    REGRESSION
    Verify Click On Vendors Tab

Validate Click On Vendor Price List Button
    [Tags]    REGRESSION
    Verify Click On Vendor Price Lists

Validate Set From Date
    [Tags]    REGRESSION
    Verify Set From Date As Current Date

Validate Click Search Button
    [Tags]    REGRESSION
    Verify Click On Vendor Price Lists Search Button

Validate Get Vendor Price Lists Number Of Rows From Grid
    [Tags]    REGRESSION
    Verify Get Vendor Price Lists Number Of Rows From Grid

Validate Close Vendor Price Lists Tab
    [Tags]    REGRESSION
    Verify Close Vendor Price Lists Tab         ${VENDOR PRICE LISTS TAB NAME}

Validate Click On Create Vendor Button
    [Tags]    REGRESSION
    Verify Click On Create Vendor Button

Validate Set Vendor Name
    [Tags]    REGRESSION
    Verify Set Vendor Name          ${TEST DATA PREFIX}

Validate Set Vendor Source
    [Tags]    REGRESSION
    Verify Set Vendor Source        ${TEST DATA PREFIX}

Validate Set IXtools Account
    [Tags]    REGRESSION
    Verify Set Ixtools Account

Validate Set Rate Plan
    [Tags]    REGRESSION
    Verify Set Rate Plan

Validate Set Call Type
    [Tags]    REGRESSION
    Verify Set Call Type            ${CALL TYPE}

Validate Click On Save Vendor Profile Button
    [Tags]    REGRESSION
    Verify Click On Save Vendor Profile Button

Validate Close Create Vendor Tab
    [Tags]    REGRESSION
    Verify Close Create Vendor Tab      ${CREATE VENDOR TAB NAME}

Validate Filter Vendor Grid Column After Create
    [Tags]    REGRESSION
    Verify Filter Vendor Grid Column After Create        ${VENDOR COLUMN NAME}

Validate Click On Inline Action Button
    [Tags]    REGRESSION
    Verify Click On Inline Action Button After Create

Validate Select Upload Vendow Price List Inline Action Button
    [Tags]    REGRESSION
    Verify Select Upload Vendor Price List Inline Action Button         ${UPLOAD VENDOR PRICE LIST INLINE ITEM NAME}

Validate Click On Browse Button
    [Tags]    REGRESSION
    Verify Click On Browse Button

Validate Select The File To Be Uploaded
    [Tags]    REGRESSION
    Verify Select The File To Be Uploaded        ${TEMPLATE PATH}/${CALL TYPE}/${VENDOR PRICE LIST TEMPALTE NAME}

Validate Click On Upload Button
    [Tags]    REGRESSION
    Verify Click On Upload Button

Validate Click On Vendor Price List Button After Uploading
    [Tags]    REGRESSION
    Verify Click On Vendor Price Lists

Validate Click On Vendor Price List Upload Colored Icon
    [Tags]    REGRESSION
    Verify Click On Vendor Price List Upload Colored Icon

Validate All Completed Jobs Displayed In The Grid
    [Tags]    REGRESSION
    Verify Search Results Displayed In The Grid

Validate Close Jobs Tab
    [Tags]    REGRESSION
    Verify Close Job Tab        ${JOB TAB NAME}

Validate Compare Vendor Price Lists Number Of Rows From Grid
    [Tags]    REGRESSION
    Verify Compare Vendor Price Lists Number Of Rows From Grid

Validate Click Vendor Price List Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Vendor Price List Grid First Row Inline Action Button

Validate Select Inline Ation Item
    [Tags]    REGRESSION
    Verify Select Buy Page Inline Action Item       ${VIEW PRICE LIST DETAIL INLINE ITEM}

Validate Dial Digits Tab Renamed
    [Tags]    REGRESSION
    Verify Dial Digits Tab Renamed      Mobile Network Code