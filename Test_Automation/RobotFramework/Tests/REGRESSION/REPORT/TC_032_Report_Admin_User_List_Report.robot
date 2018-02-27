*** Settings ***
Documentation     [TAENOSIS-707] A Test Suite With Set Of Tests For Verify Admin User List Report

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
    Verify Click Sub Report Item        ${USER LIST REPORT SUBMENU}

Validate Set Active Status
    [Tags]    REGRESSION
    Verify Set Status       ${ACTIVE STATUS}

Validate Set Profile
    [Tags]    REGRESSION
    Verify Set Profile      Developers Only

Validate Click Submit Button For Active
    [Tags]    REGRESSION
    Verify Click Submit Button

Validate Report First Row Status
    [Tags]    REGRESSION
    Verify Report First Row Status      ${ACTIVE STATUS}

Validate Close Detail Report Window For Active
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Set InActive Status
    [Tags]    REGRESSION
    Verify Set Status       ${INACTIVE STATUS}

Validate Click Submit Button
    [Tags]    REGRESSION
    Verify Click Submit Button

Validate Report First Row InActive Status
    [Tags]    REGRESSION
    Verify Report First Row Status      ${INACTIVE STATUS}

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