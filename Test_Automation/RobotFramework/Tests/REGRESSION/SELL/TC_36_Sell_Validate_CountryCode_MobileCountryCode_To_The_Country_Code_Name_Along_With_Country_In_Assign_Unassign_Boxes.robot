*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate CountryCode MobileCountryCode To The Country Name Along With Country In Assign Unassign Boxes

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/business_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Sell module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Sell' From Main Menu

Validate Click Country Group Link
    [Tags]    REGRESSION
    Verify Click Country Group Link

Validate Click Create Country Groups Button
    [Tags]    REGRESSION
    Verify Click Create Country Group Button

Validate Set Country Group For Create
    [Tags]    REGRESSION
    Verify Set Country Group    ${TEST DATA PREFIX}

Validate Set Country Group Scope For Create
    [Tags]    REGRESSION
    Verify Set Country Group Scope   ${COUNTRY GROUP SCOPE FOR EDIT}

Validate Country Code Is Displayed With Country Name
    [Tags]    REGRESSION
    Verify Country Code Is Displayed With Country Name

Validate Move Available Countries To Destination
    [Tags]    REGRESSION
    Verify Move Available Countries To Destination

Validate Click Save Country Groups Button
    [Tags]    REGRESSION
    Verify Click Save Country Group

Validate Close Country Group Tab
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Close Current Tab      ${COUNTRY GROUP TAB NAME}

Validate Click Country Groups Button After Closing Tab
    [Tags]    REGRESSION
    Verify Click Country Group Link

Validate Select Country Group
    [Tags]    REGRESSION
    Verify Select Country Group

Validate Click Country Group Search Button
    [Tags]    REGRESSION
    Verify Click Country Group Search Button

Validate Get Country Group Grid Row Details
    [Tags]    REGRESSION
    Verify Get Country Group Grid Row Details

Validate Country Group Scope
    [Tags]    REGRESSION
    Verify Country Group Scope      ${COUNTRY GROUP SCOPE FOR EDIT}

Validate Country Group
    [Tags]    REGRESSION
    Verify Country Group

Validate Select Created Country Group Checkbox
    [Tags]    REGRESSION
    Verify Select Created Country Group Checkbox

Validate Click Country Group Delete Button
    [Tags]    REGRESSION
    Verify Click Country Group Delete Button