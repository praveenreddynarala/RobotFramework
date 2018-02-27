*** Settings ***
Documentation    A Test Suite With Set Of Tests To Verify ManualAccrrualMappingEnabled Config Displayed In Configuration Management Screen

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/audit_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixadmin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/ixadmin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to IXAudit Module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Audit' From Main Menu

Validate Navigate to IXAdmin module
    [Tags]    REGRESSION
    Go To IXAdmin Screen With Specific Url

Validate Click Config Management Submenu
    [Tags]    REGRESSION
    Verify Click Config Management Submenu

Validate Set Scope
    [Tags]   REGRESSION
    Verify Set Scope        ${IXFINANCE SCOPE DROPDOWN ITEM}

Validate Click Go Button
    [Tags]    REGRESSION
    Verify Click Go Button

Validate Manualaccrualenbld Configuration Variable Is Not Available
    [Tags]    REGRESSION
    Verify Manualaccrualenbld Configuration Variable Is Not Available

Validate Click Exit Button
    [Tags]    REGRESSION
    Verify Click Exit Button