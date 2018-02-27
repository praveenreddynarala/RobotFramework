*** Settings ***
Documentation     [TAENOSIS-789] A Test Suite With Set Of Tests To Verify If Cost Policy is Preselected In Upload Costs Window When Cost Policy Is Selected In Cost Policies Screen

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/price_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${COST POLICY NAME}      ${EMPTY}

*** Test Cases ***
Validate Navigate to Price module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Select Cost Policies Tab
    [Tags]    REGRESSION
    Click on Cost Policies Tab

Validate Get Cost Policies Grid First Row Cost Policy Name
    [Tags]    REGRESSION
    ${COST POLICY NAME} =   Verify Get Cost Policies Grid First Row Cost Policy Name
    set suite variable      ${COST POLICY NAME}

Validate Select Cost Policies Grid First Row Checkbox
    [Tags]    REGRESSION
    Verify Select Cost Policies Grid First Row Checkbox

Validate Click Costs Button
    [Tags]    REGRESSION
    Verify Click Costs Button

Validate Click Upload Costs Button
    [Tags]    REGRESSION
    Verify Click Upload Costs Button

Validate Upload Costs Cost Policy Field Value
    [Tags]     REGRESSION
    Verify Upload Costs Cost Policy Field Value     ${COST POLICY NAME}

Validate Click Cancel Button
    [Tags]    REGRESSION
    Verify Click Upload Costs Cancel Button

Validate Close Current Tab
    [Tags]    REGRESSION
    Verify Close Current Tab    ${COST POLICIES COSTS TAB NAME}

Validate Select Cost Policies Grid First Row Checkbox To Deselect
    [Tags]    REGRESSION
    Verify Select Cost Policies Grid First Row Checkbox

Validate Select Cost Policies Grid Multiple Row Checkbox
    [Tags]    REGRESSION
    Verify Select Cost Policies Grid Multiple Row Checkbox

Validate Click Costs Button For Muiltiple Selection
    [Tags]    REGRESSION
    Verify Click Costs Button

Validate Click Upload Costs Button For Muiltiple Selection
    [Tags]    REGRESSION
    Verify Click Upload Costs Button

Validate Upload Costs Cost Policy Field Value For Muiltiple Selection
    [Tags]     REGRESSION
    Verify Upload Costs Cost Policy Field Value     Select Cost Policy...

Validate Click Cancel Button For Muiltiple Selection
    [Tags]    REGRESSION
    Verify Click Upload Costs Cancel Button