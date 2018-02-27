*** Settings ***
Documentation     A Test Suite With Set Of Tests To Verify Contract Report

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Contracts module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate Click Manage Complex Contracts Button
    [Tags]    REGRESSION
    Verify Click Manage Complex Contracts Button

Validate Click Manage Complex Contracts Go Button
    [Tags]    REGRESSION
    Verify Click Manage Complex Contracts Go Button

Validate Click Contracts Grid First Row Contract Name
    [Tags]    REGRESSION
    Verify Click Contracts Grid First Row Contract Name

Validate Click Contract Report Button
    [Tags]    REGRESSION
    Verify Click Contract Report Button

Validate Click Contract Version Submit Button
    [Tags]    REGRESSION
    Verify Click Contract Version Submit Button

Validate Click Preview Button
    [Tags]    REGRESSION
    Verify Click Preview Button

Validate Click Export To Excel Button
    [Tags]    REGRESSION
    Verify Click Export To Excel Button

Validate Close Contract Report Window
    [Tags]    REGRESSION
    Verify Close Window And Switch To Previous Window

Validate Close Contracts Window
    [Tags]    REGRESSION
    Verify Close IxConnect Window