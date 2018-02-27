*** Settings ***
Documentation     A Test Suite With Set Of Tests For Localization-System Admin Module

Resource          ../../Resources/common_resource.robot
Resource          ../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../Resources/Localization/${LOCALE}/localization_settings.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to System Admin Module
    [Tags]    LOCALIZATION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select Users Tab
    [Tags]    LOCALIZATION
    Click on Users Tab

Validate Users Grid Modified Date Format
    [Tags]    LOCALIZATION
    Verify Users Grid Modified Date Format      ${TIME STAMP}

Validate Click Users Grid First Row Inline Action Button
    [Tags]    LOCALIZATION
    Verify Click Users Grid First Row Inline Action Button

Validate Select Inline Action Item
    [Tags]    LOCALIZATION
    Verify Select Inline Action Item        View/Edit Profile

Validate User Profile Modified Field Date Format
    [Tags]    LOCALIZATION
    Verify User Profile Modified Field Date Format      ${TIME STAMP}

Validate Close View/Edit User Profile Pop Up
    [Tags]    LOCALIZATION
    Verify Close Current Pop Up     View/Edit User Profile

Validate Click Security Profile Button
    [Tags]    LOCALIZATION
    Verify Click Security Profile Button

Validate Profile Management Grid Modified Date Format
    [Tags]    LOCALIZATION
    Verify Profile Management Grid Modified Date Format     ${TIME STAMP}

Validate Close Profile Management Tab
    [Tags]    LOCALIZATION
    Verify Close Current Tab        Profile Management

Validate Select System Tab
    [Tags]    LOCALIZATION
    Click on System Tab

Validate Click Category Link
    [Tags]    LOCALIZATION
    Verify Click Category Link

Validate Verify Categories Grid Modified Date Format
    [Tags]    LOCALIZATION
    Verify Categories Grid Modified Date Format     ${TIME STAMP}

Valdiate Close Category Tab
    [Tags]    LOCALIZATION
    Verify Close Current Tab        Category

Validate Click Configuration Variables Link
    [Tags]    LOCALIZATION
    Verify Click Configuration Variables Button

Validate Configuration Variables Grid Modified Date Format
    [Tags]    LOCALIZATION
    Verify Configuration Variables Grid Modified Date Format        ${TIME STAMP}

Valdiate Close Configuration Variables Tab
    [Tags]    LOCALIZATION
    Verify Close Current Tab        Configuration Variables

Validate Click Field Alias Link
    [Tags]    LOCALIZATION
    Verify Click Field Alias Link

Validate Field Alis Grid Modified Date Format
    [Tags]    LOCALIZATION
    Verify Field Alis Grid Modified Date Format     ${TIME STAMP}

Valdiate Close Field Alias Tab
    [Tags]    LOCALIZATION
    Verify Close Current Tab        Field Alias

Validate Click FTP Site Managemnt Link
    [Tags]    LOCALIZATION
    Verify Click FTP Site Management Link

Validate FTP Site Management Grid Last Modified Date Format
    [Tags]    LOCALIZATION
    Verify FTP Site Management Grid Last Modified Date Format       ${TIME STAMP}

Valdiate Close FTP Site Management Tab
    [Tags]    LOCALIZATION
    Verify Close Current Tab        FTP Site Management

Validate Click Server Management Link
    [Tags]    LOCALIZATION
    Verify Click Server Management Link

Validate Server Management Grid Last Modified Date Format
    [Tags]    LOCALIZATION
    Verify Server Management Grid Last Modified Date Format     ${TIME STAMP}

Validate Close Server Management Tab
    [Tags]    LOCALIZATION
    Verify Close Current Tab        Server Management