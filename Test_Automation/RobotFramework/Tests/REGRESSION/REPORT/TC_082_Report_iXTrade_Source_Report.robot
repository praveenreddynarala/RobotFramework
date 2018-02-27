*** Settings ***
Documentation     [TAENOSIS-742] A Test Suite With Set Of Tests For Verify iXTrdae Source Report

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixreport_page_resource.robot
Resource          ../../../Resources/Pages/buy_page_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/ixreport_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${VENDOR NAME}          ${EMPTY}
${CUSTOMER NAME}        ${EMPTY}

*** Test Cases ***
Validate Navigate to Report Module
    [Tags]    REGRESSION
    Verify Switch To IXReport

Validate Expand iXTrade Reports Section
    [Tags]    REGRESSION
    Verify Expand Reports Section       ${IXTRADE REPORTS MENU}

Validate Click Sub Report Item
    [Tags]    REGRESSION
    Verify Click Sub Report Item        ${SOURCE REPORT SUBMENU}

Validate Get Created Vendor Name
    [Tags]    REGRESSION
    ${VENDOR NAME} =       Verify Get Previous Created Vendor Name
    set suite variable     ${VENDOR NAME}

Validate Get Created Customer Name
    [Tags]    REGRESSION
    ${CUSTOMER NAME} =      Verify Get Created Customer Name
    set suite variable     ${CUSTOMER NAME}

Validate Set Source Type For Vendor
    [Tags]    REGRESSION
    Verify Set Source Type      Vendor

Validate Click Source Browse Button For Vendor
    [Tags]    REGRESSION
    Verify Click Source Browse Button

Validate Set First Letters For Vendor
    [Tags]    REGRESSION
    Verify Set First Letters    ${VENDOR NAME}

Validate Click Go Button For Vendor
    [Tags]    REGRESSION
    Verify Click Go Button

Validate Select Row From Look Up Table For Vendor
    [Tags]    REGRESSION
    Verify Select Row From Look Up Table        ${VENDOR NAME}

Validate Click Submit Button For Vendor
    [Tags]    REGRESSION
    Verify Click Submit Button

Validate Report Source Name For Vendor
    [Tags]    REGRESSION
    Verify Report Source Name       ${VENDOR NAME}

Validate Close Detail Report Window For Vendor
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Click Sub Report Item For Customer
    [Tags]    REGRESSION
    Verify Click Sub Report Item        ${SOURCE REPORT SUBMENU}

Validate Set Source Type For Customer
    [Tags]    REGRESSION
    Verify Set Source Type      Customer

Validate Click Source Browse Button For Customer
    [Tags]    REGRESSION
    Verify Click Source Browse Button

Validate Set First Letters For Customer
    [Tags]    REGRESSION
    Verify Set First Letters    ${CUSTOMER NAME}

Validate Click Go Button For Customer
    [Tags]    REGRESSION
    Verify Click Go Button

Validate Select Row From Look Up Table For Customer
    [Tags]    REGRESSION
    Verify Select Row From Look Up Table        ${CUSTOMER NAME}

Validate Click Submit Button For Customer
    [Tags]    REGRESSION
    Verify Click Submit Button

Validate Report Source Name For Customer
    [Tags]    REGRESSION
    Verify Report Source Name       ${CUSTOMER NAME}

Validate Click Report Preview Button
    [Tags]    REGRESSION
    Verify Click Report Preview Button

Validate Click Report Export To Excel Button
    [Tags]    REGRESSION
    Verify Click Report Export To Excel Button

Validate Click Report Export To Csv Button
    [Tags]    REGRESSION
    Verify Click Report Export To Csv Button

Validate Click Report Export To Pdf Button
    [Tags]    REGRESSION
    Verify Click Report Export To Pdf Button

Validate Close Detail Report Window After Preview Done
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Close IxReport Window
    [Tags]    REGRESSION
    Verify Close IxReport Window