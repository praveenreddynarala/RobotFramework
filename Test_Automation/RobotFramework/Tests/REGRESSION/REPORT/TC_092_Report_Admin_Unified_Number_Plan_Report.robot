*** Settings ***
Documentation     [TAENOSIS-775] A Test Suite With Set Of Tests For Verify Admin Unified Number Plan Report

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixreport_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/ixreport_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Report Module
    [Tags]    REGRESSION
    Verify Switch To IXReport

Validate Expand Administrative Reports Section
    [Tags]    REGRESSION
    Verify Expand Reports Section       ${ADMINISTRATIVE REPORTS MENU}

Validate Click Sub Report Item
    [Tags]    REGRESSION
    Verify Click Sub Report Item        ${UNIFIED NUMBER PLAN REPORT SUBMENU}

validate Click Submit Button To Verify Warning Message
    [Tags]    REGRESSION
    Verify Click Submit Button And Verify Error Message     Unified Number Plan is required

Validate Click Unified Number Plan Browse Button
    [Tags]    REGRESSION
    Verify Click Unified Number Plan Browse Button

Validate Select First Row From Look Up Table
    [Tags]    REGRESSION
    Verify Select First Row From Look Up Table

Validate Set First Unified Number Plan Type
    [Tags]    REGRESSION
    Verify Set First Unified Number Plan Type

Validate Set Future Begin Date
    [Tags]    REGRESSION
    Verify Set Future Date as Begin Date      32

validate Click Submit Button To Verify Warning Message For Begin Date
    [Tags]    REGRESSION
    Verify Click Submit Button And Verify Error Message     Selected "End Date" should not be less than "Begin Date"

Validate Set Begin Date
    [Tags]    REGRESSION
    Verify Set Begin Date         1/1/2017

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