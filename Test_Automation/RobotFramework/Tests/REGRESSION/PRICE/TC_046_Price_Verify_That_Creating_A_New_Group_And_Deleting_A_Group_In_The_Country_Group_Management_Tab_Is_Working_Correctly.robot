*** Settings ***
Documentation     A Test Suite With Set Of Tests To Verify That Creating A New Group And Deleting A Group In The Country Group Management Tab Is Working Correctly

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/price_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

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

Validate Set Country Group Scope
    [Tags]    REGRESSION
    Verify Set Country Group Scope      ${COUNTRY GROUP SCOPE NAME}

Validate Set Wholesale Solution Type
    [Tags]    REGRESSION
    Verify Set Wholesale Solution Type      ${WHOLESALE SOLUTION TYPE}

Validate Set Country Group
    [Tags]    REGRESSION
    Verify Set Country Group        ${TEST DATA PREFIX}

Validate Select Available Countries
    [Tags]    REGRESSION
    Verify Select Available Countries       @{AVAILABLE DESTINATIONS LIST}

Validate Click Create Country Group Save Button
    [Tags]    REGRESSION
    Verify Click Create Country Group Save Button

Validate Filter Country Group Management Grid Country Group Column
    [Tags]    REGRESSION
    ${COUNTRY GROUP NAME} =   Verify Get Created Country Group Name
    Verify Filter Country Group Management Grid Column      ${COUNTRY GROUP COLUMN NAME}     ${COUNTRY GROUP NAME}

Validate Select Country Group Management Grid First Row Checkbox
    [Tags]    REGRESSION
    Verify Select Country Group Management Grid First Row Checkbox

Validate Click Country Group Management Delete Button
    [Tags]    REGRESSION
    Verify Click Country Group Management Delete Button

Validate The Created Country Group Is Deleted
    [Tags]    REGRESSION
    Verify The Created Country Group Is Deleted