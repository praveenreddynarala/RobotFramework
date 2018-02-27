*** Settings ***
Documentation     [TAENOSIS-751] A Test Suite With Set Of Tests For Verify iXRoute Carrier Test Competition Report

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixreport_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/ixreport_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${ROUTING PRODUCT}      ${EMPTY}
${ACCOUNT}              ${EMPTY}

*** Test Cases ***
Validate Navigate to Report Module
    [Tags]    REGRESSION
    Verify Switch To IXReport

Validate Expand Administrative Reports Section
    [Tags]    REGRESSION
    Verify Expand Reports Section       ${IXROUTE REPORTS MENU}

Validate Click Sub Report Item
    [Tags]    REGRESSION
    Verify Click Sub Report Item        ${CARRIER TEST COMPETITION REPORT SUBMENU}

Validate Click Submit Button Without Routing Product
    [Tags]    REGRESSION
    Verify Click Submit Button

Validate Get First Row Account
    [Tags]    REGRESSION
    ${ACCOUNT} =    Verify Get First Row Account Name
    set suite variable      ${ACCOUNT}

Validate Get First Row Routing Product
    [Tags]    REGRESSION
    ${ROUTING PRODUCT} =    Verify Get First Row Routing Product
    set suite variable      ${ROUTING PRODUCT}

Validate Close Detail Report Window
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Click Account Browse Button
    [Tags]    REGRESSION
    Verify Click Account Browse Button

Validate Set First Letters For Account
    [Tags]    REGRESSION
    Verify Set First Letters       ${ACCOUNT}

Validate Click Go Button For Account
    [Tags]    REGRESSION
    Verify Click Go Button

Validate Select Row From Look Up Table For Account
    [Tags]    REGRESSION
    Verify Select Row From Look Up Table        ${ACCOUNT}

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