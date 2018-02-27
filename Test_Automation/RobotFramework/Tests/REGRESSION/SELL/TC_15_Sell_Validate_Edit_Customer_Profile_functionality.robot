*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Edit Customer Profile Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/sell_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Sell module
    [Tags]    REGRESSION
    Click On Home Icon And Select 'Sell' From Main Menu

Validate Navigate to Customer Tab
    [Tags]    REGRESSION
    Click On Customer Tab

Validate Get Create Customer Name
    [Tags]    REGRESSION
    Verify Get Created Customer Name

Validate Filter Customer Grid Column With Created Customer Before Edit
    [Tags]    REGRESSION
    Verify Filter Customer Grid Column With Created Customer

Validate Click Customer Grid Inline Action Button
    [Tags]    REGRESSION
    Verify Click Customer Grid Inline Action Button

Validate Select Customer Profile Inline Action Item
    [Tags]    REGRESSION
    sell_page_resource.Verify Select Inline Action Item        ${INLINE ACTION ITEM NAME}

Validate Set Customer Profile Status Inactive
    [Tags]    REGRESSION
    Verify Set Customer Profile Status For Edit Customer        ${INACTIVE STATUS}

Validate Click Save Customer Profile Button
    [Tags]    REGRESSION
    Verify Click Save Customer Profile Button

Validate Close Current Tab
    [Tags]    REGRESSION
    Verify Close Current Tab    ${TAB NAME TO CLOSE}

Validate Clear Filter
    [Tags]    REGRESSION
    Verify Clear Filter     ${COLUMN NAME TO CLEAR FILTER}

Validate Clear All Table Filters
    [Tags]    REGRESSION
    Verify Clear All Table Filters      ${COLUMN NAME TO CLEAR FILTER}

Validate Filter Customer Grid Column With Created Customer
    [Tags]    REGRESSION
    Verify Filter Customer Grid Column With Created Customer

Validate Customer Grid Details With Inactive Status
    [Tags]    REGRESSION
    Verify Customer Grid Details With Inactive Status

Validate Click Customer Grid Inline Action Button After Editing
    [Tags]    REGRESSION
    Verify Click Customer Grid Inline Action Button

Validate Select Customer Profile Inline Action Item After Editing
    [Tags]    REGRESSION
    sell_page_resource.Verify Select Inline Action Item        ${INLINE ACTION ITEM NAME}

Validate Set Customer Profile Status Active
    [Tags]    REGRESSION
    Verify Set Customer Profile Status For Edit Customer        ${ACTIVE STATUS}

Validate Click Save Customer Profile Button After Editing
    [Tags]    REGRESSION
    Verify Click Save Customer Profile Button

Validate Close Current Tab After Editing
    [Tags]    REGRESSION
    Verify Close Current Tab        ${TAB NAME TO CLOSE}

Validate Customer Grid Details With Active Status
    [Tags]    REGRESSION
    Verify Customer Grid Details With Active Status
