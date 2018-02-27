*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Country Group Doest Not Exist In Country Group Grid When CG Does Not Have Any Countries Mapped to It

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/business_admin_page_test_data_source.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/buy_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Price module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Click Country Group
    [Tags]    REGRESSION
    Verify Click On Country Groups Link

Validate Click Create Country Groups Button
    [Tags]    REGRESSION
    price_page_resource.Verify Click Create Country Group Button

Validate Set Country Group Scope For Create
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Set Country Group Scope   ${COUNTRY GROUP SCOPE}

Validate Set Country Group For Create
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Set Country Group    ${TEST DATA PREFIX}

Validate Move Available Countries To Destination
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Move Available Countries To Destination

Validate Click Save Country Groups Button
    [Tags]    REGRESSION
    Verify Click Save Country Group

Validate Close Country Group Tab
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Close Current Tab      ${COUNTRY GROUP TAB NAME}

Validate Click Country Groups Button After Closing Tab
    [Tags]    REGRESSION
    Verify Click On Country Groups Link

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
    Verify Country Group Scope      ${COUNTRY GROUP SCOPE}

Validate Country Group
    [Tags]    REGRESSION
    Verify Country Group

Validate Click Country Group Grid Inline Action Button
    [Tags]    REGRESSION
    Verify Click Country Group Grid Inline Action Button

Validate Select Country Group Grid Inline Action Item
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Select Country Group Grid Inline Action Item     ${COUNTRY GROUP GRID INLINE ACTION ITEM}

Validate Move Assigned Countries To Source
    [Tags]    REGRESSION
    Verify Move Assigned Countries To Source

Validate Click Save Country Groups Button After Edit
    [Tags]    REGRESSION
    Verify Click Save Country Group

Validate Click Create Country Groups Button For Duplicate Country Group
    [Tags]    REGRESSION
    price_page_resource.Verify Click Create Country Group Button

Validate Set Country Group For Creating Duplicate Country Group
    [Tags]    REGRESSION
    Verify Set Duplicate Country Group

Validate Set Country Group Scope For Creating Duplicate Country Group
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Set Country Group Scope   ${COUNTRY GROUP SCOPE}

Validate Move Available Countries To Destination For Duplicate Country Group
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Move Available Countries To Destination

Validate Error Message Of Save Country Group
    [Tags]    REGRESSION
    Verify Error Message Of Save Country Group

Validate Click Country Group Cancel Button
    [Tags]    REGRESSION
    Verify Click Country Group Cancel Button

Validate Select Created Country Group Checkbox
    [Tags]    REGRESSION
    Verify Select Created Country Group Checkbox

Validate Click Country Group Delete Button
    [Tags]    REGRESSION
    Verify Click Country Group Delete Button