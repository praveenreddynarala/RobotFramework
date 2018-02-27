*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Cost Policy Bulk Edit Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Price module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Navigate to Cost Policies Tab
    [Tags]    REGRESSION
    Click on Cost Policies Tab

Validate Click Costs Button
    [Tags]    REGRESSION
    Verify Click Costs Button

Validate Get Created Cost Policy Name
    [Tags]    REGRESSION
    Verify Get Created Cost Policy Name

Validate Set Cost Policy
    [Tags]    REGRESSION
    Verify Set Cost Policy

Validate Click Costs Search Button
    [Tags]    REGRESSION
    Verify Click Costs Page Search Button

Validate Compare Jobs Count After Job Completed
    [Tags]    REGRESSION
    Verify Compare Jobs Count After Job Completed

Validate Select Multiple Rows From Cost Policies Costs Grid
    [Tags]    REGRESSION
    Verify Select Multiple Rows From Cost Policies Costs Grid

Validate Click Bulk Edit Button
    [Tags]    REGRESSION
    Verify Click Bulk Edit Button

Validate Set Future Date At End Date
    [Tags]    REGRESSION
    Verify Set Future Date At End Date

Validate Click Bulk Edit Submit Button
    [Tags]    REGRESSION
    price_page_resource.Verify Click Bulk Edit Submit Button

Validate Click Save Changes Button
    [Tags]    REGRESSION
    price_page_resource.Verify Click Save Changes Button