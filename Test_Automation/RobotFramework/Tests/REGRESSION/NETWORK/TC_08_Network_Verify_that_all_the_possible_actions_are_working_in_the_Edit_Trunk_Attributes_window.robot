*** Settings ***
Documentation   [TAENOSIS-956] A Test Suite With Set Of Tests To Verify that all the possible actions are working in the Edit Trunk Attributes window

Resource    ../../../Resources/common_resource.robot
Resource    ../../../Resources/Pages/network_page_resource.robot

Suite Setup     Validate Login Functionality With Valid Credential
Suite Teardown  Validate Log Out Functionality

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

Validate Technical Trunks Tab Is Loaded Properly
    [Tags]    REGRESSION
    Verify Technical Trunks Tab Is Loaded Properly

Validate Click Technical Trunk Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Technical Trunk Grid First Row Inline Action Button

Validate Select Technical Trunk Inline Action Item
    [Tags]    REGRESSION
    Verify Select Technical Trunk Inline Action Item    Edit Trunk Attributes

Validate Click Technical Trunk Attributes Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Technical Trunk Attributes Grid First Row Inline Action Button

Validate Select Technical Trunk Attributes Inline Action Item
    [Tags]    REGRESSION
    Verify Select Technical Trunk Inline Action Item    Delete

Validate Close Network Window
    [Tags]    REGRESSION
    Verify Close Network Window