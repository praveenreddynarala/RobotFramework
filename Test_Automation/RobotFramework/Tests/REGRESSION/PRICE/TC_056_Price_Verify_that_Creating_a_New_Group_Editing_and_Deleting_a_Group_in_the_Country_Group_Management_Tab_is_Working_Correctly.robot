*** Settings ***
Documentation     A Test Suite With Set Of Tests To Verify that creating a new group, editing and deleting a group in the Country Group Management tab is working correctly

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/price_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${AVAILABLE COUNTRY}      ${EMPTY}

*** Test Cases ***
Validate Navigate to Price module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Click On Country Groups Link
    [Tags]    REGRESSION
    Verify Click On Country Groups Link

Validate Click Create Country Group Button
    [Tags]    REGRESSION
    Verify Click Create Country Group Button

Validate Set Country Group
    [Tags]    REGRESSION
    Verify Set Country Group        ${TEST DATA PREFIX}

Validate Select Available Countries
    [Tags]    REGRESSION
    ${AVAILABLE COUNTRY} =     Verify Get Available Country
    set suite variable      ${AVAILABLE COUNTRY}
    @{AVAILABLE DESTINATIONS LIST} =    create list     ${AVAILABLE COUNTRY}
    price_page_resource.Verify Select Available Countries       @{AVAILABLE DESTINATIONS LIST}

Validate Click Create Country Group Save Button
    [Tags]    REGRESSION
    Verify Click Create Country Group Save Button

Validate Filter Country Group Management Grid Country Group Column
    [Tags]    REGRESSION
    ${COUNTRY GROUP NAME} =   Verify Get Created Country Group Name
    Verify Filter Country Group Management Grid Column      ${COUNTRY GROUP COLUMN NAME}     ${COUNTRY GROUP NAME}

Validate Assigned Country is Loaded in Country Column
    [Tags]    REGRESSION
    Verify Assigned Country is Loaded in Country Column     ${AVAILABLE COUNTRY}

Validate Click Country Group Grid Inline Action Button
    [Tags]  REGRESSION
    ${COUNTRY GROUP NAME} =   Verify Get Created Country Group Name
    Verify Click Country Group Management Grid Inline Action Button     ${COUNTRY GROUP NAME}

Validate Select Country Group Grid Inline Action Item
    [Tags]  REGRESSION
    Verify Select Country Group Grid Inline Action Item        View/Edit Country Group

Validate is Country Group Scope Dropdown Control Disabled
    [Tags]  REGRESSION
    Verify is Country Group Scope Dropdown Control Disabled

Validate is Wholesale Solution Type Dropdown Control Disabled
    [Tags]  REGRESSION
    Verify is Wholesale Solution Type Dropdown Control Disabled

Validate is Selected Country Present in Assigned Countrie(s) Panel
    [Tags]  REGRESSION
    Verify is Selected Country Present in Assigned Countrie(s) Panel        ${AVAILABLE COUNTRY}

Validate Set Country Group After Editing
    [Tags]    REGRESSION
    Verify Set Country Group        ${TEST DATA PREFIX}

Validate Unassign all Country(s) from Assigned Countrie(s) Panel
    [Tags]    REGRESSION
    Verify Unassign all Country(s) from Assigned Countrie(s) Panel

Validate Click Country Group Save Button
    [Tags]    REGRESSION
    Verify Click Create Country Group Save Button

Validate Clear All Table Filter
    [Tags]  REGRESSION
    Verify Clear Country Group Grid Column Filter       Country Group

Validate Filter Country Group Management Grid Country Group Column After Editing
    [Tags]    REGRESSION
    ${COUNTRY GROUP NAME} =   Verify Get Created Country Group Name
    Verify Filter Country Group Management Grid Column      ${COUNTRY GROUP COLUMN NAME}     ${COUNTRY GROUP NAME}

Validate Country Column is Empty
    [Tags]    REGRESSION
    Verify Assigned Country is Loaded in Country Column     ${EMPTY}

Validate Select Country Group Management Grid First Row Checkbox
    [Tags]    REGRESSION
    Verify Select Country Group Management Grid First Row Checkbox

Validate Click Country Group Management Delete Button
    [Tags]    REGRESSION
    Verify Click Country Group Management Delete Button
