*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Maintain Routing Products Functionality
Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality
Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/ixconnect_page_test_data_source.robot

*** Test Cases ***
Validate Navigate to IXConnect module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate Select Product Submenu
    [Tags]    REGRESSION
    Verify Select Product Submenu

Validate Expand Routing Structure
    [Tags]    REGRESSION
    Verify Expand Routing Structure

Validate Select Routing
    [Tags]    REGRESSION
    Verify Select Routing

Validate Click Maintain Routing Product Button
    [Tags]    REGRESSION
    Verify Click Maintain Routing Product Button

Validate Close Contracts Page
    [Tags]    REGRESSION
    Verify Close IxConnect Window
