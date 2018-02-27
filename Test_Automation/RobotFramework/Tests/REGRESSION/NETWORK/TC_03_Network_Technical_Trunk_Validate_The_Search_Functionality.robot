*** Settings ***
Documentation   A Test Suite With Set Of Tests For Network Technical Trunk Validate The Search Functionality.

Suite Setup     Validate Login Functionality With Valid Credential
Suite Teardown  Validate Log Out Functionality

Resource    ../../../Resources/common_resource.robot
Resource    ../../../Resources/Pages/network_page_resource.robot
Resource    ../../../Resources/ExternalDataSource/TestAutomation/network_page_test_data_source.robot

*** Test Cases ***
Validate Navigate to Network module
    [Tags]  REGRESSION
    Click on Home Icon and Select 'Network' From Main Menu

Validate Technical Trunks Tab Is Available
    [Tags]  REGRESSION
    Verify The Technical Trunks Tab Is Available

Validate Navigate to Technical Trunks Tab
    [Tags]  REGRESSION
    Click On Technical Trunks Tab

Validate Set Technical Trunk For Search
    [Tags]  REGRESSION
    Verify Set Technical Trunk For Search

Validate Set Status For Search
    [Tags]  REGRESSION
    Verify Set Status For Search        @{STATUS LIST FOR SEARCH}

Validate Set Date For Search
    [Tags]  REGRESSION
    Verify Set Date For Search

Validate Click Technical Trunks Tab Search Button
    [Tags]  REGRESSION
    Verify Click Technical Trunks Tab Search Button

Validate Data Is Loaded In The Grid
    [Tags]  REGRESSION
    Verify Data Is Loaded In The Grid