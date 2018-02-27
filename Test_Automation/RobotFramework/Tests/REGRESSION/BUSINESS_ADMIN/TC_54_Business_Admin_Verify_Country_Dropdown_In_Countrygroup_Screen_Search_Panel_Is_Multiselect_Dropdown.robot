*** Settings ***
Documentation     A Test Suite With Set Of Tests To Verify Country Dropdown In Countrygroup Screen Search Panel Is Multiselect Dropdown

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/business_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Business Admin module
    [Tags]    REGRESSION
    click on home icon and select 'business admin' from main menu

Validate The Business Admin Dashboard Tab Is Available
    [Tags]    REGRESSION
    Verify The Business Admin Dashboard Tab Is Available

Validate Expand Number Plan Menu
    [Tags]    REGRESSION
    Verify Expand Number Plan Menu

Validate Click Country Submenu
    [Tags]    REGRESSION
    Verify Click Country Submenu

Validate Click Country Groups Button
    [Tags]    REGRESSION
    Verify Click Country Groups Button

Validate Set Country For Country Group Search
    [Tags]    REGRESSION
    Verify Set Country For Country Group Search     @{SINGLE COUNTRY LIST}

Validate Click Search Button
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Country Group Grid Is Loaded With Selected Country
    [Tags]    REGRESSION
    Verify Country Group Grid Is Loaded With Selected Country       @{SINGLE COUNTRY LIST}

Validate Clear Country Dropdown
    [Tags]    REGRESSION
    Verify Set Country For Country Group Search     @{SINGLE COUNTRY LIST}

Validate Set Country For Country Group Search For Multiple Country
    [Tags]    REGRESSION
    Verify Set Country For Country Group Search     @{MULTIPLE COUNTRY LIST}

Validate Click Search Button For Multiple Country
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Country Group Grid Is Loaded With Selected Country For Multiple Country
    [Tags]    REGRESSION
    Verify Country Group Grid Is Loaded With Selected Country       @{MULTIPLE COUNTRY LIST}
