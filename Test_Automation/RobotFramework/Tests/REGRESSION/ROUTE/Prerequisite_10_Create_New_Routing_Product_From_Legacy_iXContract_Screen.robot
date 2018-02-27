*** Settings ***
Documentation     A Test Suite With Set Of Tests To Create Routing Product From Legacy iXContract Screen Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/ixconnect_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${ROUTE CLASS}      ${EMPTY}

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

Validate Click Add New Product Link
    [Tags]    REGRESSION
    Verify Click Add New Product Link