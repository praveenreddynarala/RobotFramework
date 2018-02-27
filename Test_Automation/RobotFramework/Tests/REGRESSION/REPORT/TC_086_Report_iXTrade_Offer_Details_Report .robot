*** Settings ***
Documentation     [TAENOSIS-735] A Test Suite With Set Of Tests For Verify iXTrade Offer Details Report

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixreport_page_resource.robot
Resource          ../../../Resources/Pages/buy_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/ixreport_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Report Module
    [Tags]    REGRESSION
    Verify Switch To IXReport

Validate Expand Network Reports Section
    [Tags]    REGRESSION
    Verify Expand Reports Section       ${IXTRADE REPORTS MENU}

Validate Click Sub Report Item
    [Tags]    REGRESSION
    Verify Click Sub Report Item        ${OFFER DETAILS REPORT SUBMENU}

Validate Click Source Browse Button For Vendor
    [Tags]    REGRESSION
    Verify Click Source Browse Button

Validate Set First Letters For Vendor
    [Tags]    REGRESSION
    ${CREATED VENDOR NAME} =        Verify Get Previous Created Vendor Name
    log         ${CREATED VENDOR NAME}
    Verify Set First Letters    ${CREATED VENDOR NAME}

Validate Click Go Button For Vendor
    [Tags]    REGRESSION
    Verify Click Go Button

Validate Select Row From Look Up Table For Vendor
    [Tags]    REGRESSION
    Verify Select Row From Look Up Table        ${CREATED VENDOR NAME}

Validate Click Offer Browse Button
    [Tags]    REGRESSION
    Verify Click Offer Browse Button

Validate Select First Row From Look Up Table
    [Tags]    REGRESSION
    Verify Select First Row From Look Up Table

Validate Click Submit Button For Vendor
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