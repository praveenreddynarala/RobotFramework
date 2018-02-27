*** Settings ***
Documentation     A Test Suite With Set Of Tests For Verify Admin Settlement Product Calendar Report

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixreport_page_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/ixreport_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CARRIER NAME}     ${EMPTY}

*** Test Cases ***
Validate Navigate to Report Module
    [Tags]    REGRESSION
    Verify Switch To IXReport

Validate Expand Administrative Reports Section
    [Tags]    REGRESSION
    Verify Expand Reports Section       ${ADMINISTRATIVE REPORTS MENU}

Validate Click Sub Report Item
    [Tags]    REGRESSION
    Verify Click Sub Report Item        ${SETTLEMENT PRODUCT CALENDAR REPORT SUBMENU}

Validate Click Account Browse Button
    [Tags]    REGRESSION
    Verify Click Account Browse Button

Validate Set First Letters
    [Tags]    REGRESSION
    ${CARRIER NAME} =       Verify Get Created Carrier Name
    set suite variable      ${CARRIER NAME}
    Verify Set First Letters    ${CARRIER NAME}

Validate Click Go Button For Account
    [Tags]    REGRESSION
    ixreport_page_resource.Verify Click Go Button

Validate Select Row From Look Up Table
    [Tags]    REGRESSION
    Verify Select Row From Look Up Table        ${CARRIER NAME}

Validate Set Future Begin Date
    [Tags]    REGRESSION
    Verify Set Future Date as Begin Date

Validate Click Submit Button To Validate Error
    [Tags]    REGRESSION
    Verify Click Submit Button

Validate Begin Date Greater Than End Date Warning Message Is Shown
    [Tags]    REGRESSION
    Verify Begin Date Greater Than End Date Warning Message Is Shown

Validate Close Detail Report Window After Validating Error
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Set Begin Date
    [Tags]    REGRESSION
    ixreport_page_resource.Verify Set Begin Date       1/1/2015

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

Validate Close Detail Report Window
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Close IXReport Window
    [Tags]    REGRESSION
    Verify Close IxReport Window