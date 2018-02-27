*** Settings ***
Documentation     A Test Suite With Set Of Tests For Verify Admin Routing Product Calendar Mapping Report

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixreport_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/ixreport_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${ROUTING PRODUCT}      ${EMPTY}

*** Test Cases ***
Validate Navigate to Report Module
    [Tags]    REGRESSION
    Verify Switch To IXReport

Validate Expand Administrative Reports Section
    [Tags]    REGRESSION
    Verify Expand Reports Section       ${ADMINISTRATIVE REPORTS MENU}

Validate Click Sub Report Item
    [Tags]    REGRESSION
    Verify Click Sub Report Item        ${ROUTING PRODUCT CALENDAR MAPPING REPORT SUBMENU}

Validate Click Submit Button Without Routing Product
    [Tags]    REGRESSION
    Verify Click Submit Button

Validate Get First Row Routing Product
    [Tags]    REGRESSION
    ${ROUTING PRODUCT} =    Verify Get First Row Routing Product
    set suite variable      ${ROUTING PRODUCT}

Validate Close Detail Report Window
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Click Routing Product Browse Button
    [Tags]    REGRESSION
    Verify Click Routing Product Browse Button

Validate Set First Letters
    [Tags]    REGRESSION
    Verify Set First Letters       ${ROUTING PRODUCT}

Validate Click Go Button For Routing Product
    [Tags]    REGRESSION
    Verify Click Go Button

Validate Select Row From Look Up Table
    [Tags]    REGRESSION
    Verify Select Row From Look Up Table        ${ROUTING PRODUCT}

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