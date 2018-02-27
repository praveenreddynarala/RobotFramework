*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate QoS Attributes on Vendor Price List Details Screen Functionalities

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/buy_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/buy_page_test_data_source.robot


Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate navigate to Buy module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Buy' From Main Menu

Validate Vendors Tab Is Available
    [Tags]    REGRESSION
    Verify The Vendors Tab Is Available

Validate Navigate To Vendors Tab
    [Tags]    REGRESSION
    Verify Click On Vendors Tab

Validate Click On Create Vendor Button
    [Tags]    REGRESSION
    Verify Click On Create Vendor Button

Validate Set Vendor Name
    [Tags]    REGRESSION
    Verify Set Vendor Name          ${TEST DATA PREFIX}

Validate Set Vendor Source
    [Tags]    REGRESSION
    Verify Set Vendor Source        ${TEST DATA PREFIX}

Validate Set IXtools Account
    [Tags]    REGRESSION
    Verify Set Ixtools Account

Validate Set Rate Plan
    [Tags]    REGRESSION
    Verify Set Rate Plan

Validate Set Call Type
    [Tags]    REGRESSION
    Verify Set Call Type            SMS

Validate Click On Save Vendor Profile Button
    [Tags]    REGRESSION
    Verify Click On Save Vendor Profile Button

Validate Close Create Vendor Tab For New Vendor
    [Tags]    REGRESSION
    Verify Close Create Vendor Tab      ${CREATE VENDOR TAB NAME}

Validate Click On Vendor Price List Button
    [Tags]    REGRESSION
    Verify Click On Vendor Price Lists

Validate Set From Date
    [Tags]    REGRESSION
    Verify Set From Date As Current Date

Validate Set Vendor Price List Status
    [Tags]    REGRESSION
    Verify Set Vendor Price List Status         @{COMPLETED STATUS ITEM LIST}

Validate Click Search Button
    [Tags]    REGRESSION
    Verify Click On Vendor Price Lists Search Button

Validate Get Vendor Price Lists Number Of Rows From Grid
    [Tags]    REGRESSION
    Verify Get Vendor Price Lists Number Of Rows From Grid

Validate Close Vendor Price Lists Tab
    [Tags]    REGRESSION
    Verify Close Vendor Price Lists Tab         ${VENDOR PRICE LISTS TAB NAME}

Validate Get Previous Created Vendor Name
    [Tags]    REGRESSION
    Verify Get Previous Created Vendor Name

Validate Filter Vendor Grid Column
    [Tags]    REGRESSION
    Verify Filter Vendor Grid Column After Create        ${VENDOR COLUMN NAME}

Validate Click Vendors Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Vendors Grid First Row Inline Action Button

Validate Select Upload Vendor Price List Inline Action Button For Upload QoS Template
    [Tags]    REGRESSION
    Verify Select Upload Vendor Price List Inline Action Button         ${UPLOAD VENDOR PRICE LIST INLINE ITEM NAME}

Validate Read Data From Upload Excel File
    [Tags]    REGRESSION
    buy_page_resource.Verify Read Data From Upload Excel File     ${TEMPLATE PATH}/SMS/${UPLOAD QOS FILE PATH}

Validate Click On Browse Button
    [Tags]    REGRESSION
    Verify Click On Browse Button

Validate Select The File To Be Uploaded
    [Tags]    REGRESSION
    Verify Select The File To Be Uploaded        ${TEMPLATE PATH}/SMS/${UPLOAD QOS FILE PATH}

Validate Click On Upload Button
    [Tags]    REGRESSION
    Verify Click On Upload Button

Validate Click On Vendor Price List Button After Uploading
    [Tags]    REGRESSION
    Verify Click On Vendor Price Lists

Validate Set Vendor Price List Status After Uploading
    [Tags]    REGRESSION
    Verify Set Vendor Price List Status         @{COMPLETED STATUS ITEM LIST}

Validate Compare Vendor Price Lists Number Of Rows From Grid
    [Tags]    REGRESSION
    Verify Compare Vendor Price Lists Number Of Rows From Grid

Validate Click Vendor Price List Grid First Row Inline Action Button After Job
    [Tags]    REGRESSION
    Verify Click Vendor Price List Grid First Row Inline Action Button

Validate Select Upload Vendor Price List Inline Action Button
    [Tags]    REGRESSION
    Verify Select Upload Vendor Price List Inline Action Button         ${VIEW PRICE LIST DETAIL INLINE ITEM}

Validate Select View Price List Qos Tab
    [Tags]    REGRESSION
    Verify Select View Price List Qos Tab

Validate Mnp Column is Available
    [Tags]    REGRESSION
    Verify Mnp Column is Available

Validate Comments Column is Available
    [Tags]    REGRESSION
    Verify Comments Column is Available

Validate Compare Qos With Excel Data
    [Tags]    REGRESSION
    Verify Compare Qos With Excel Data
