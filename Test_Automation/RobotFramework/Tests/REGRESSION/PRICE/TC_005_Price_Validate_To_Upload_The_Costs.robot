*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Upload The Costs

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/price_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Price module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Navigate to Cost Policies Tab
    [Tags]    REGRESSION
    Click on Cost Policies Tab

Validate Get Created Cost Policy Name
    [Tags]    REGRESSION
    Verify Get Created Cost Policy Name

Validate Filter Cost Policy Grid With Created New Cost Policy
    [Tags]    REGRESSION
    Verify Filter Cost Policy Grid     ${COST POLICY COLUMN NAME}

Validate Click Cost Policy Grid Inline Action Button
    [Tags]    REGRESSION
    Verify Click Cost Policy Grid Inline Action Button

Validate Click Cost Policy Grid Inline Item
    [Tags]    REGRESSION
    Verify Click Cost Policy Grid Inline Item       ${COSTS INLINE ITEM}

Validate Click Completed Status Green Button
    [Tags]    REGRESSION
    Verify Click Completed Status Green Button

Validate Get Completed Jobs Count
    [Tags]    REGRESSION
    Verify Get Completed Jobs Count

Validate Close Jobs Tab
    [Tags]    REGRESSION
    price_page_resource.Verify Close Current Tab        ${JOBS TAB NAME}

Validate Click Upload Costs Button
    [Tags]    REGRESSION
    Verify Click Upload Costs Button

Valdiate Click Costs Browse Button
    [Tags]    REGRESSION
    Verify Click Costs Browse Button

Valdiate Select The File To Be Uploaded
    [Tags]    REGRESSION
    ${CALL TYPE} =   Verify Get Call Type
    Verify Select The File To Be Uploaded       ${TEMPLATE PATH}/${CALL TYPE}/${TEMPLATE NAME}

Validate Click Upload Button
    [Tags]    REGRESSION
    price_page_resource.Verify Click Upload Button

Validate Click Completed Status Green Button After Upload
    [Tags]    REGRESSION
    Verify Click Completed Status Green Button

Validate Compare Completed Jobs Count After Upload
    [Tags]    REGRESSION
    Verify Compare Completed Jobs Count After Upload