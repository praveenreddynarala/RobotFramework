*** Settings ***
Documentation    [TAENOSIS-676] A Test Suite With Set Of Tests To Validate Origin Filter To See If It Is Properly Filtering On Reference Price List Management Screen

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixtrade_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/ixtrade_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Contracts Module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate Navigate to IXTrade module
    [Tags]    REGRESSION
    Go To IXTrade Screen With Specific Url

Validate Click Click Reference Price List management Submenu
    [Tags]    REGRESSION
    Verify Click Reference Price List management Submenu

Validate Set Status For Search
    [Tags]    REGRESSION
    ixtrade_page_resource.Verify Set Status           @{ALL STATUS EXCEPT UNRESOLVED ITEM LIST}

Validate Specific Filter Option Is Present
    [Tags]    REGRESSIOn
    Verify Specific Filter Option Is Present        Origin

Validate Click Customer Pricing Exception Management Search Button
    [Tags]    REGRESSION
    Verify Click Customer Pricing Exception Management Search Button

Validate Filter Reference Price List Management Grid Column
    [Tags]    REGRESSION
    Verify Filter Reference Price List Management Grid Column       ${ORIGIN COLUMN NAME}

Validate Close IXTrade Window
    [Tags]    REGRESSION
    Verify Click Exit Button