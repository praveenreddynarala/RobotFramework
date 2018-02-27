*** Settings ***
Documentation     [TAENOSIS-778] A Test Suite With Set Of Tests For Verify Admin Dialed Digits Upload Report

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixreport_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/ixreport_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Report Module
    [Tags]    REGRESSION
    Verify Switch To IXReport

Validate Expand Customer Profile Reports Section
    [Tags]    REGRESSION
    Verify Expand Reports Section       ${ADMINISTRATIVE REPORTS MENU}

Validate Click Sub Report Item
    [Tags]    REGRESSION
    Verify Click Sub Report Item        ${DIALED DIGITS UPLOAD REPORT SUBMENU}

Validate Dialed Digits Upload Report Page Is Displayed
    [Tags]    REGRESSION
    Verify Specific Report Page Is Displayed        Dialed Digits Upload Report

Validate Click Submit Button
    [Tags]    REGRESSION
    Verify Click Submit Button

Validate Dialed Digits Upload Report Is Displayed
    [Tags]    REGRESSION
    Verify Specific Report Is Displayed        Dialed Digits Upload Report

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