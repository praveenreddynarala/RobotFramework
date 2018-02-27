*** Settings ***
Documentation     [TAENOSIS-776] A Test Suite With Set Of Tests For Verify Admin Service Level Assignment Report

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixreport_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/ixreport_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${ACCOUNT NAME}     ${EMPTY}
${SERVICE LEVEL}    ${EMPTY}

*** Test Cases ***
Validate Navigate to Report Module
    [Tags]    REGRESSION
    Verify Switch To IXReport

Validate Expand Administrative Reports Section
    [Tags]    REGRESSION
    Verify Expand Reports Section       ${ADMINISTRATIVE REPORTS MENU}

Validate Click Sub Report Item
    [Tags]    REGRESSION
    Verify Click Sub Report Item        ${SERVICE LEVEL ASSIGNMENT REPORT SUBMENU}

Validate Click Account Browse Button
    [Tags]    REGRESSION
    Verify Click Account Browse Button With ID

Validate Set First Letters For Account
    [Tags]    REGRESSION
    ${ACCOUNT NAME} =       Verify Get Created Carrier Name
    set suite variable      ${ACCOUNT NAME}
    Verify Set First Letters       ${ACCOUNT NAME}

Validate Click Go Button For Account
    [Tags]    REGRESSION
    ixreport_page_resource.Verify Click Go Button

Validate Select Account From Look Up Table
    [Tags]    REGRESSION
    Verify Select Row From Look Up Table        ${ACCOUNT NAME}

Validate Click Service Level Browse Button
    [Tags]    REGRESSION
    Verify Click Service Level Browse Button

Validate Set First Letters For Service Level
    [Tags]    REGRESSION
    ${SERVICE LEVEL} =       Verify Get Created Service Level
    set suite variable      ${SERVICE LEVEL}
    Verify Set First Letters       ${SERVICE LEVEL}

Validate Click Go Button For Service Level
    [Tags]    REGRESSION
    ixreport_page_resource.Verify Click Go Button

Validate Select Service Level From Look Up Table
    [Tags]    REGRESSION
    Verify Select Row From Look Up Table        ${SERVICE LEVEL}

Validate Click Submit Button
    [Tags]    REGRESSION
    ixreport_page_resource.Verify Click Submit Button

Validate Click Report Preview Button
    [Tags]    REGRESSION
    Verify Click Report Preview Button

Validate Click Report Export To Excel Button
    [Tags]    REGRESSION
    Verify Click Report Export To Excel Button

Validate Click Report Export To CSV Button
    [Tags]    REGRESSION
    Verify Click Report Export To Csv Button

Validate Click Report Export To Pdf Button
    [Tags]    REGRESSION
    Verify Click Report Export To Pdf Button

Validate Close Detail Report Window
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Close IXReport Window
    [Tags]    REGRESSION
    Verify Close IxReport Window