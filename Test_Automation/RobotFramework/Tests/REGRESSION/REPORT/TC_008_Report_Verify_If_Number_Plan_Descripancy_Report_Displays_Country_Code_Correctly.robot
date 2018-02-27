*** Settings ***
Documentation     A Test Suite With Set Of Tests To Verify If Number Plan Descripancy Report Displays Country Code Correctly

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixreport_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/ixreport_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Report Module
    [Tags]    REGRESSION
    Verify Switch To IXReport

Validate Expand Reports Section
    [Tags]    REGRESSION
    Verify Expand Reports Section       ${IXTRADE REPORTS MENU}

Validate Click Sub Report Item
    [Tags]    REGRESSION
    Verify Click Sub Report Item        ${NUMBER PLAN DISCREPANCY REPORT SUBMENU}

Validate Click Reference Set Browse Button
    [Tags]    REGRESSION
    Verify Click Reference Set Browse Button

Validate Set Number Plan Type
    [Tags]    REGRESSION
    Verify Set Number Plan Type     ${REFERENCE NUMBER PLAN TYPE}

Validate Click Go Button
    [Tags]    REGRESSION
    Verify Click Go Button

Validate Select Row From Look Up Table
    [Tags]    REGRESSION
    Verify Select Row From Look Up Table        ${OUTBOUND REF NUMBER PLAN}

Validate Click Comparis Set 1 Browse Button
    [Tags]    REGRESSION
    Verify Click Comparis Set 1 Browse Button

Validate Set Number Plan Type For Comparison Set 1
    [Tags]    REGRESSION
    Verify Set Number Plan Type     ${REFERENCE NUMBER PLAN TYPE}

Validate Click Go Button For Comparison Set 1
    [Tags]    REGRESSION
    Verify Click Go Button

Validate Select Row From Look Up Table For Comparison Set 1
    [Tags]    REGRESSION
    Verify Select Row From Look Up Table        ${OUTBOUND REF NUMBER PLAN}

Validate Click Country Country Code Browse Button
    [Tags]    REGRESSION
    Verify Click Country Country Code Browse Button

Validate Set Country Country Code
    [Tags]    REGRESSION
    Verify Select Row From Look Up Table        Albania (355)

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
