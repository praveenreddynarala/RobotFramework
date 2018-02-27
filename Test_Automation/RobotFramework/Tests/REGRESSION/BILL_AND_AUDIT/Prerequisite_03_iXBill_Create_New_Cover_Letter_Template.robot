*** Settings ***
Documentation     A Test Suite With Set Of Tests For iXBill Create New Cover Letter Template

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixbill_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/ixbill_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Contracts module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate Go To IXBill Screen With Specific Url
    [Tags]    REGRESSION
    Go To IXBill Screen With Specific Url

Validate Click Cover Letter Templates Submenu
    [Tags]    REGRESSION
    Verify Click Cover Letter Templates Submenu

Validate Click New Button
    [Tags]    REGRESSION
    Verify Click New Button

Validate Set Cover Letter Template Name
    [Tags]    REGRESSION
    Verify Set Cover Letter Template Name       ${TEST DATA PREFIX}

Validate Click Save Button
    [Tags]    REGRESSION
    Verify Click Save Button

Validate Close IXBill Window
    [Tags]    REGRESSION
    Verify Click Exit Button
