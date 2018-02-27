*** Settings ***
Documentation     A Test Suite With Set Of Tests For Localization-Buy Modules

Resource          ../../Resources/common_resource.robot
Resource          ../../Resources/Pages/network_page_resource.robot
Resource          ../../Resources/Localization/${LOCALE}/localization_settings.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Buy Module
    [Tags]    LOCALIZATION
    Click on Home Icon and Select 'Network' From Main Menu

Validate Click On Technical Trunks Tab
    [Tags]    LOCALIZATION
    Click On Technical Trunks Tab

Validate Technical Trunk Select Date Format
    [Tags]    LOCALIZATION
    Verify Technical Trunk Select Date Format      ${DATE FORMAT}

Validate Click Technical Trunk Grid First Row Inline Action Button
    [Tags]    LOCALIZATION
    Verify Click Technical Trunk Grid First Row Inline Action Button

Validate Select Technical Trunk Inline Action Item
    [Tags]    LOCALIZATION
    Verify Select Technical Trunk Inline Action Item        Edit Trunk Attributes

Validate Technical Trunk Attributes Grid Begin Date Format
    [Tags]    LOCAIZATION
    Verify Technical Trunk Attributes Grid Begin Date Format      ${DATE FORMAT}

Validate Technical Trunk Attributes Grid End Date Format
    [Tags]    LOCAIZATION
    Verify Technical Trunk Attributes Grid End Date Format      ${DATE FORMAT}

Validate Technical Trunk Attributes Grid Modified Date Format
    [Tags]    LOCAIZATION
    Verify Technical Trunk Attributes Grid Modified Date Format      ${TIME STAMP}

Validate Close Edit Attributes And Details for Technical Trunk Pop Up
    [Tags]  LOCALIZATION
    Verify Close Current Pop Up     Edit Attributes And Details for Technical Trunk

Validate Click On Commercial Trunks Tab
    [Tags]    LOCALIZATION
    Click On Commercial Trunks Tab

Validate Commercial Trunk Select Date Format
    [Tags]    LOCAIZATION
    Verify Commercial Trunk Select Date Format      ${DATE FORMAT}

Validate Commercial Trunk Grid Effective Date Format
    [Tags]    LOCAIZATION
    Verify Commercial Trunk Grid Effective Date Format      ${DATE FORMAT}

Validate Commercial Trunk Grid Modified Date Format
    [Tags]    LOCAIZATION
    Verify Commercial Trunk Grid Modified Date Format      ${TIME STAMP}

Validate Click Create New Commercial Trunk button
    [Tags]    LOCALIZATION
    Verify Click Create New Commercial Trunk button

Validate Create New Commercial Trunk Effective Date Format
    [Tags]    LOCAIZATION
    Verify Create New Commercial Trunk Effective Date Format      ${DATE FORMAT}

Validate Close Create New Commercial Trunk Pop Up
    [Tags]  LOCALIZATION
    Verify Close Current Pop Up     Create New Commercial Trunk

