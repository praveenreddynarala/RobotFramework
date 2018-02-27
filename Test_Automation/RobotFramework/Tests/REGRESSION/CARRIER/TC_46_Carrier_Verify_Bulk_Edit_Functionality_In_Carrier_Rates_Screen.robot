*** Settings ***
Documentation     A Test Suite With Set Of Tests For Carrier To Verify Bulk Edit Functionality In Carrier Rates Screen

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/carrier_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Carrier module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Carrier' From Main Menu

Validate Click Carriers Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Carriers Page First Row Inline Action Button

Validate Select Item From Inline Action
    [Tags]    REGRESSION
    Verify Select Item From Inline Action       ${CARRIER RATES INLINE ITEM}

Validate Rates Tab Loaded Properly
    [Tags]    REGRESSION
    Verify Rates Tab Loaded Properly

Validate Select Rates Grid First Row Checkbox
    [Tags]    REGRESSION
    Verify Select Rates Grid First Row Checkbox

Validate Click Bulk Edit Button
    [Tags]    REGRESSION
    Verify Click Bulk Edit Button

Validate Set Bulk Edit End Date
    [Tags]    REGRESSION
    Verify Set Bulk Edit End Date       ${EMPTY}    ${TRUE}

Validate Click Bulk Edit Submit Button
    [Tags]    REGRESSION
    Verify Click Bulk Edit Submit Button

Validate Click Save Changes Button
    [Tags]    REGRESSION
    Verify Click Save Changes Button With Confirmation

Validate Close Carrier Profile Tab
    [Tags]    REGRESSION
    Verify Close Current Tab    ${CARRIER PROFILE TAB NAME}

