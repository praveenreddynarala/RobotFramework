*** Settings ***
Documentation    A Test Suite With Set Of Tests To Create New Dispute Grade

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/audit_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to IXAudit Module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Audit' From Main Menu

Validate Select Dispute Grades Submenu
    [Tags]    REGRESSION
    Verify Select Dispute Grades Submenu

Validate Click Dispute Grades New Button
    [Tags]    REGRESSION
    Verify Click Dispute Grades New Button

Validate Set Dispute Grade
    [Tags]    REGRESSION
    Verify Set Dispute Grade     ${TEST DATA PREFIX}

Validate Click Dispute Grade Save Button
    [Tags]    REGRESSION
    Verify Click Dispute Grade Save Button

Validate Close IXAudit Window
    [Tags]    REGRESSION
    Verify Close IxConnect Window       ${True}