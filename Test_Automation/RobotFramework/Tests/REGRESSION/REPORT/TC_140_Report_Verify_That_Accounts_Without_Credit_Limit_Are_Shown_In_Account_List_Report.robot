*** Settings ***
Documentation     [TAENOSIS-992] A Test Suite With Set Of Tests To Verify That Accounts Without Credit Limit Are Shown In Account List Report

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixreport_page_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/ixreport_page_test_data_source.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/carrier_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${MY REPORT NAME}                   ${EMPTY}
${ACCOUNT WITHOUT CREDIT LIMIT}     ${EMPTY}
${ACCOUNT WITH CREDIT LIMIT}        ${EMPTY}

*** Test Cases ***
Validate Navigate to Report Module
    [Tags]    REGRESSION
    Verify Switch To IXReport

Validate Expand Customer Profile Reports Section
    [Tags]    REGRESSION
    Verify Expand Reports Section       ${ADMINISTRATIVE REPORTS MENU}

Validate Click Sub Report Item
    [Tags]    REGRESSION
    Verify Click Sub Report Item        ${ACCOUNT LIST REPORT SUBMENU}

Validate Click Submit Button
    [Tags]    REGRESSION
    ixreport_page_resource.Verify Click Submit Button

Validate Get Account Name Without Credit Limit
    [Tags]    REGRESSION
    ${ACCOUNT WITHOUT CREDIT LIMIT} =   Verify Get Account Name Without Credit Limit
    set suite variable      ${ACCOUNT WITHOUT CREDIT LIMIT}

Validate Detail Report Window
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Get Account Name With Credit Limit From Database
    [Tags]    REGRESSION
    ${ACCOUNT WITH CREDIT LIMIT} =   Verify Get Account Name With Credit Limit From Database      ${DATABASE SERVER}       ${DATABASE}     ${DATABASE USERNAME}        ${DATABASE PASSWORD}
    set suite variable      ${ACCOUNT WITH CREDIT LIMIT}

Validate Click Report Page Exit Button
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Navigate to Carrier Module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Carrier' From Main Menu

Validate Select Credit Management Tab
    [Tags]    REGRESSION
    Click On Credit Management Tab

Validate Click Activate Credit Limit Button
    [Tags]    REGRESSION
    Verify Click Activate Credit Limit Button

Validate Set Carrier Name For Activate Credit Limit
    [Tags]    REGRESSION
    Verify Set Carrier Name For Activate Credit Limit       ${ACCOUNT WITHOUT CREDIT LIMIT}

Validate Credit Management Enabled Status
    [Tags]    REGRESSION
    Verify Credit Management Enabled Status     No

Validate Close Credit Profile Tab Without Saving
    [Tags]    REGRESSION
    Verify Close Credit Profile Tab Without Saving

Validate Filter Credit Management Grid
    [Tags]    REGRESSION
    Verify Filter Credit Management Grid        ${CARRIER NAME COLUMN NAME}     ${ACCOUNT WITH CREDIT LIMIT}

Validate Click Credit Management Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Credit Management Grid First Row Inline Action Button

Validate Select Credit Profile Inline Action Item
    [Tags]    LOCALIZATION
    Verify Select Inline Action Item        Credit Profile

Validate Credit Management Enabled Status With Credit Limit
    [Tags]    REGRESSION
    Verify Credit Management Enabled Status     Yes

Validate Credit Profile Has Credit Limit
    [Tags]    REGRESSION
    Verify Credit Profile Has Credit Limit