*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Config for RPL Custom Available In System Admin

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/system_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to System Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Click on System Tab
    [Tags]    REGRESSION
    Click on System Tab

Validate Click Configuration Variables Button
    [Tags]    REGRESSION
    Verify Click Configuration Variables Button

Validate Set Variable Name
    [Tags]    REGRESSION
    Verify Set Variable Name    ${RPLCUSTOM VARIABLE NAME}

Validate Click Search Button
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column    ${RPLCUSTOM CURRENT VALUE}

Validate Close System Admin Window
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to Price module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Select Price Policies Tab
    [Tags]    REGRESSION
    Verify Select Price Policies Tab

Validate Click Reference Prices Button
    [Tags]    REGRESSION
    Verify Click Reference Prices Button

Validate Apply Custom Rules Is Present
    [Tags]    REGRESSION
    Verify Apply Custom Rules Is Present