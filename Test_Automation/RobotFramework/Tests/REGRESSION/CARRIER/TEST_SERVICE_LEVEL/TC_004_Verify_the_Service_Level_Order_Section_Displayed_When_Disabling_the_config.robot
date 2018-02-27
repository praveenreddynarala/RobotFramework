*** Settings ***
Documentation     [TAENOSIS-987] A Test Suite With Set Of Tests To Verify the service level order section displayed when disabling the config

Resource          ../../../../Resources/common_resource.robot
Resource          ../../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/carrier_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to System Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select System Tab
    [Tags]    REGRESSION
    Click on System Tab

Validate Click Configuration Variables Button
    [Tags]    REGRESSION
    Verify Click Configuration Variables Button

Validate Set Variable Name
    [Tags]    REGRESSION
    Verify Set Variable Name    EnableServiceLevelChangeWorkOrders

Validate Click Search Button
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Set Configuration Variables Current Value
    [Tags]    REGRESSION
    Verify Set Configuration Variables Current Value    0

Validate Click Save Changes Button
    [Tags]    REGRESSION
    carrier_page_resource.Verify Click Save Changes Button

Validate Close System Admin Window
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to Carrier module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Carrier' From Main Menu

Validate Click Carriers Page First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Carriers Page First Row Inline Action Button

Validate Select Item From Inline Action
    [Tags]    REGRESSION
    Verify Select Item From Inline Action       Carrier Relationships

Validate Expand Service Level Assignments Section
    [Tags]    REGRESSION
    Verify Expand Service Level Assignments Section

Verify Add Service Level Button Is Present
    [Tags]    REGRESSION
    Verify Add Service Level Button Is Present

Verify Click Service Level Assignments Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Service Level Assignments Grid First Row Inline Action Button

Verify Select Edit Item From Inline Action
    [Tags]    REGRESSION
    Verify Select Item From Inline Action       Edit

Verify Close Edit Service Level for Pop Up
    [Tags]    REGRESSION
    carrier_page_resource.Verify Close Current Pop Up     Edit Service Level for

Verify Click Service Level Assignments Grid First Row Inline Action Button to Select Delete Inline Item
    [Tags]    REGRESSION
    Verify Click Service Level Assignments Grid First Row Inline Action Button

Verify Select Delete Item From Inline Action
    [Tags]    REGRESSION
    Verify Select Item From Inline Action       Delete

Verify Cancel Delete Operation
    [Tags]    REGRESSION
    Verify Click Cancel Button

Verify Is Service Level Change Work Order Section Not Present
    [Tags]    REGRESSION
    Verify Is Service Level Change Work Order Section Not Present

