*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Edit Vendor Functionalities

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

Validate Get Previous Created Vendor Name
    [Tags]    REGRESSION
    Verify Get Previous Created Vendor Name

Validate Filter Vendor Grid Column
    [Tags]    REGRESSION
    Verify Filter Vendor Grid Column After Create        ${VENDOR COLUMN NAME}

Validate Click On Inline Action Button
    [Tags]    REGRESSION
    Verify Click On Inline Action Button After Create

Validate Click on Vendor Profile Item
    [Tags]    REGRESSION
    Verify Select Inline Action Item

Validate Set Vendor Profile Status Inactive
    [Tags]    REGRESSION
    Verify Set Vendor Profile Status        ${VENDOR PROFILE STATUS FOR EDIT}

Validate Click On Save Vendor Profile Button
    [Tags]    REGRESSION
    Verify Click On Save Vendor Profile Button

Validate Close Vendor Profile Tab
    [Tags]    REGRESSION
    Verify Close Vendor Profile Tab     ${VENDOR PROFILE TAB NAME}

Validate Clear Vendor Filter
    [Tags]    REGRESSION
    Verify Clear Vendor Filter          ${VENDOR COLUMN NAME}

Validate Clear All Table Filters From Vendor Column
    [Tags]    REGRESSION
    Verify Clear All Table Filters      ${VENDOR COLUMN NAME}

Validate Filter Vendor Grid Column After Edit
    [Tags]    REGRESSION
    Verify Filter Vendor Grid Column After Create        ${VENDOR COLUMN NAME}

Validate Grid Row Data
    [Tags]    REGRESSION
    Verify Grid Row Details     ${INACTIVE STATUS}
