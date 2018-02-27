*** Settings ***
Documentation     A Test Suite With Set Of Tests For Verify Contract Workflow Report

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixreport_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/ixreport_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${ACCOUNT NAME}             ${EMPTY}
${PARENT ACCOUNT NAME}      ${EMPTY}

*** Test Cases ***
Validate Navigate to Report Module
    [Tags]    REGRESSION
    Verify Switch To IXReport

Validate Expand Administrative Reports Section
    [Tags]    REGRESSION
    Verify Expand Reports Section       ${ADMINISTRATIVE REPORTS MENU}

Validate Click Sub Report Item
    [Tags]    REGRESSION
    Verify Click Sub Report Item        ${CONTRACT WORKFLOW REPORT SUBMENU}

Validate Set Future Begin Date
    [Tags]    REGRESSION
    Verify Set Future Date as Begin Date

Validate Click Submit Button To Validate Error
    [Tags]    REGRESSION
    Verify Click Submit Button

Validate Begin Date Greater Than End Date Warning Message Is Shown
    [Tags]    REGRESSION
    Verify Begin Date Greater Than End Date Warning Message Is Shown

Validate Close Detail Report Window
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Set Begin Date
    [Tags]    REGRESSION
    Verify Set Begin Date       1/1/2015

Validate Click Submit Button To Get Account
    [Tags]    REGRESSION
    Verify Click Submit Button

Validate Get Second Row Account Name
    [Tags]    REGRESSION
    ${ACCOUNT NAME} =       Verify Get Second Row Account Name
    set suite variable      ${ACCOUNT NAME}

Validate Get Second Row Parent Account Name
    [Tags]    REGRESSION
    ${PARENT ACCOUNT NAME} =       Verify Get Second Row Parent Account Name
    set suite variable      ${PARENT ACCOUNT NAME}

Validate Close Detail Report Window After Getting Account Name
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Click Account Browse Button
    [Tags]    REGRESSION
    Verify Click Account Browse Button

Validate Set First Letters
    [Tags]    REGRESSION
    Verify Set First Letters    ${ACCOUNT NAME}

Validate Click Go Button For Account
    [Tags]    REGRESSION
    Verify Click Vendor Lookup Go Button

Validate Move Account to Assigned
    [Tags]    REGRESSION
    Verify Move Vendor To Assigned

Validate Click Account Lookup Submit Button
    [Tags]    REGRESSION
    Verify Click Vendor Lookup Submit Button

Validate Click Parent Account Browse Button
    [Tags]    REGRESSION
    Verify Click Parent Account Browse Button

Validate Set First Letters For Parent Account
    [Tags]    REGRESSION
    Verify Set First Letters    ${PARENT ACCOUNT NAME}

Validate Click Go Button For Parent Account
    [Tags]    REGRESSION
    Verify Click Vendor Lookup Go Button

Validate Move Parent Account to Assigned
    [Tags]    REGRESSION
    Verify Move Vendor To Assigned

Validate Click Parent Account Lookup Submit Button
    [Tags]    REGRESSION
    Verify Click Vendor Lookup Submit Button

Validate Click Submit Button
    [Tags]    REGRESSION
    Verify Click Submit Button

Validate Click Report Preview Button
    [Tags]    REGRESSION
    Verify Click Report Preview Button

Validate Click Report Export To Excel Button
    [Tags]    REGRESSION
    Verify Click Report Export To Excel Button

Validate Click Report Export To CSV Button
    [Tags]    REGRESSION
    Verify Click Report Export To CSV Button

Validate Click Report Export To PDF Button
    [Tags]    REGRESSION
    Verify Click Report Export To PDF Button

Validate Close Detail Report Window After Preview Done
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Close IXReport Window
    [Tags]    REGRESSION
    Verify Close IxReport Window