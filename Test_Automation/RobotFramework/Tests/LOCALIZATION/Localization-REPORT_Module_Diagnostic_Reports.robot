*** Settings ***
Documentation     A Test Suite With Set Of Tests For Localization-Report Module Diagnostic Reports

Resource          ../../Resources/common_resource.robot
Resource          ../../Resources/Pages/Legacy/ixreport_page_resource.robot
Resource          ../../Resources/Localization/${LOCALE}/localization_settings.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Report Module
    [Tags]    LOCALIZATION
    Verify Switch To IXReport

Validate Expand Diagnostic Reports Section
    [Tags]    LOCALIZATION
    Verify Expand Reports Section       Diagnostic Reports

Validate Click Daily Raw Cost Revenue and ASR Sub Report Item
    [Tags]    LOCALIZATION
    Verify Click Sub Report Item        Daily Raw Cost Revenue and ASR (DO)

Validate Daily Raw Cost Revenue and ASR Begin Date Format
    [Tags]    LOCALIZATION
    Verify Begin Date Format With Lower Case d      ${DATE FORMAT}

Validate Daily Raw Cost Revenue and ASR End Date Format
    [Tags]    LOCALIZATION
    Verify End Date Format With Lower Case d        ${DATE FORMAT}

Validate Click Master Cost Revenue and ASR Report Sub Report Item
    [Tags]    LOCALIZATION
    Verify Click Sub Report Item        Master Cost, Revenue and ASR Report

Validate Cost Master Cost Revenue and ASR Report Begin Date Format
    [Tags]    LOCALIZATION
    Verify Begin Date Format        ${DATE FORMAT}

Validate Cost Master Cost Revenue and ASR Report End Date Format
    [Tags]    LOCALIZATION
    Verify End Date Format          ${DATE FORMAT}

Validate Click Missing FTR Report Sub Report Item
    [Tags]    LOCALIZATION
    Verify Click Sub Report Item        Missing FTR Report

Validate Click Missing FTR Report Submit Button
    [Tags]    LOCALIZATION
    Verify Click Submit Button

Validate Missing FTR Report's Begin Date Format
    [Tags]    LOCALIZATION
    Verify Report's Begin Date Format       ${DATE FORMAT}

Validate Missing FTR Report's End Date Format
    [Tags]    LOCALIZATION
    Verify Report's End Date Format         ${DATE FORMAT}

Validate Close Missing FTR Report Window
    [Tags]    LOCALIZATION
    Verify Close IxReport Window

Validate Missing FTR Report Begin Date Format
    [Tags]    LOCALIZATION
    Verify Begin Date Format With Lower Case d      ${DATE FORMAT}

Validate Missing FTR Report End Date Format
    [Tags]    LOCALIZATION
    Verify End Date Format With Lower Case d        ${DATE FORMAT}

Validate Close IXReport Window
    [Tags]    LOCALIZATION
    Verify Close IxReport Window
