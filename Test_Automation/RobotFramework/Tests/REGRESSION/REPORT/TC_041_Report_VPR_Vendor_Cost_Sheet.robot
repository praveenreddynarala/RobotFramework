*** Settings ***
Documentation     [TAENOSIS-716] A Test Suite With Set Of Tests For Verify VPR Vendor Cost Sheet

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
    Verify Expand Reports Section       ${VPR REPORTS MENU}

Validate Click Sub Report Item
    [Tags]    REGRESSION
    Verify Click Sub Report Item        ${VENDOR COST SHEET SUBMENU}

Validate Click Currency Selection Button
    [Tags]    REGRESSION
    Verify Click Currency Selection Button

Validate Select First Row From Look Up Table
    [Tags]    REGRESSION
    Verify Select First Row From Look Up Table

Validate Click Account Browse Button
    [Tags]    REGRESSION
    Verify Click Account Browse Button

Validate Move Vendor To Assigned
    [Tags]    REGRESSION
    Verify Move Vendor To Assigned

Validate Click Vendor Lookup Submit Button
    [Tags]    REGRESSION
    Verify Click Vendor Lookup Submit Button

Validate Set Product Catalog
    [Tags]    REGRESSION
    Verify Set Product Catalog      Reference Destination Rating Product

Validate Click Submit Button For Reference Destination Rating Product
    [Tags]    REGRESSION
    Verify Click Submit Button

Validate Report Product Catalog
    [Tags]    REGRESSION
    Verify Report Product Catalog       Reference Destination Rating Product

Validate Close Detail Report Window For Reference Destination Rating Product
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Set Product Catalog For Vendor Specific Destination Rating Product
    [Tags]    REGRESSION
    Verify Set Product Catalog      Vendor Specific Destination Rating Product

Validate Click Submit Button For Vendor Specific Destination Rating Product
    [Tags]    REGRESSION
    Verify Click Submit Button

Validate Report Product Catalog For Vendor Specific Destination Rating Product
    [Tags]    REGRESSION
    Verify Report Product Catalog       Vendor Specific Destination Rating Product

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

Validate Click Save My Report Button
    [Tags]    REGRESSION
    Verify Click Save My Report Button

Validate Set My Report Title
    [Tags]    REGRESSION
    Verify Set My Report Title      ${TEST DATA PREFIX}

Validate Click My Report Save Button
    [Tags]    REGRESSION
    Verify Click My Report Save Button

Validate Close IXReport Window
    [Tags]    REGRESSION
    Verify Close IxReport Window