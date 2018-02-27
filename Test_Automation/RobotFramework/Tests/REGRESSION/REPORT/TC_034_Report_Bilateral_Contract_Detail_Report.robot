*** Settings ***
Documentation     [TAENOSIS-708] A Test Suite With Set Of Tests For Verify Bilateral Contract Detail Report

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixreport_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/ixreport_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${ACCOUNT NAME}         ${EMPTY}
${CONTRACT NAME}        ${EMPTY}

*** Test Cases ***
Validate Navigate to Report Module
    [Tags]    REGRESSION
    Verify Switch To IXReport

Validate Expand Administrative Reports Section
    [Tags]    REGRESSION
    Verify Expand Reports Section       ${BILATERAL REPORTS MENU}

Validate Click Sub Report Item
    [Tags]    REGRESSION
    Verify Click Sub Report Item        ${CONTRACT DETAIL REPORT SUBMENU}

Validate Click Account Browse Button
    [Tags]    REGRESSION
    Verify Click Account Browse Button

Validate Set First Letters For Account
    [Tags]    REGRESSION
    ${ACCOUNT NAME} =       Verify Get Saved Account Name
    set suite variable      ${ACCOUNT NAME}
    Verify Set First Letters    ${ACCOUNT NAME}

Validate Click Go Button For Account
    [Tags]    REGRESSION
    Verify Click Go Button

Validate Select Row From Look Up Table
    [Tags]    REGRESSION
    Verify Select Row From Look Up Table        ${ACCOUNT NAME}

Validate Click Contract Browse Button
    [Tags]    REGRESSION
    Verify Click Contract Browse Button

Validate Set First Letters For Contract
    [Tags]    REGRESSION
    ${CONTRACT NAME} =       Verify Get Saved Contract Name
    set suite variable      ${CONTRACT NAME}
    Verify Set First Letters    ${CONTRACT NAME}

Validate Click Go Button For Contract
    [Tags]    REGRESSION
    Verify Click Go Button

Validate Select Row From Look Up Table For Contract
    [Tags]    REGRESSION
    Verify Select Row From Look Up Table        ${CONTRACT NAME}

Validate Click Contract Version Browse Button
    [Tags]    REGRESSION
    Verify Click Contract Version Browse Button

Validate Select Row From Look Up Table For Contract Version
    [Tags]    REGRESSION
    Verify Select First Row From Look Up Table

Validate Click Submit Button
    [Tags]    REGRESSION
    Verify Click Submit Button

Validate Click Report Preview Button
    [Tags]    REGRESSION
    Verify Click Report Preview Button

Validate Click Report Export To Excel Button
    [Tags]    REGRESSION
    Verify Click Report Export To Excel Button

Validate Close Detail Report Window After Preview Done
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Close IXReport Window
    [Tags]    REGRESSION
    Verify Close IxReport Window