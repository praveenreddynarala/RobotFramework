*** Settings ***
Documentation     [TAENOSIS-752] A Test Suite With Set Of Tests For Verify iXRoute Carrier Test Savings Report

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixreport_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/ixreport_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${ROUTING PRODUCT}      ${EMPTY}
${ROUTE CLASS}          ${EMPTY}

*** Test Cases ***
Validate Navigate to Report Module
    [Tags]    REGRESSION
    Verify Switch To IXReport

Validate Expand Administrative Reports Section
    [Tags]    REGRESSION
    Verify Expand Reports Section       ${IXROUTE REPORTS MENU}

Validate Click Sub Report Item
    [Tags]    REGRESSION
    Verify Click Sub Report Item        ${CARRIER TEST SAVINGS REPORT SUBMENU}

Validate Click Submit Button Without Routing Product
    [Tags]    REGRESSION
    Verify Click Submit Button

Validate Get First Row Route Class
    [Tags]    REGRESSION
    ${ROUTE CLASS} =    Verify Get First Row Route Class
    set suite variable      ${ROUTE CLASS}

Validate Get First Row Routing Product
    [Tags]    REGRESSION
    ${ROUTING PRODUCT} =    Verify Get First Row Routing Product
    set suite variable      ${ROUTING PRODUCT}

Validate Close Detail Report Window
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Click Route Class Browse Button
    [Tags]    REGRESSION
    Verify Click Route Class Browse Button

Validate Set First Letters For Route Class
    [Tags]    REGRESSION
    Verify Set First Letters       ${ROUTE CLASS}

Validate Click Go Button For Route Class
    [Tags]    REGRESSION
    Verify Click Go Button

Validate Select Row From Look Up Table For Route Class
    [Tags]    REGRESSION
    Verify Select Row From Look Up Table        ${ROUTE CLASS}

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

Validate Click Report Export To PDF Button
    [Tags]    REGRESSION
    Verify Click Report Export To PDF Button

Validate Close Detail Report Window After Preview Done
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Close IXReport Window
    [Tags]    REGRESSION
    Verify Close IxReport Window