*** Settings ***
Documentation     A Test Suite With Set Of Tests For Localization-Report Module iXAudit Reports

Resource          ../../Resources/common_resource.robot
Resource          ../../Resources/Pages/Legacy/ixreport_page_resource.robot
Resource          ../../Resources/Localization/${LOCALE}/localization_settings.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Report Module
    [Tags]    LOCALIZATION
    Verify Switch To IXReport

Validate Expand iXAudit Reports Section
    [Tags]    LOCALIZATION
    Verify Expand Reports Section       iXAudit Reports

Validate Click Dispute Analysis Sub Report Item
    [Tags]    LOCALIZATION
    Verify Click Sub Report Item        Dispute Analysis

Validate Dispute Analysis Statement Begin Date Format
    [Tags]    LOCALIZATION
    Verify Begin Date Format      ${DATE FORMAT}

Validate Dispute Analysis Statement End Date Format
    [Tags]    LOCALIZATION
    Verify End Date Format        ${DATE FORMAT}

Validate Click Statement Detail Sub Report Item
    [Tags]    LOCALIZATION
    Verify Click Sub Report Item        Statement Detail

Validate Statement Detail Usage From Date Format
    [Tags]    LOCALIZATION
    Verify Usage From Date Format       ${DATE FORMAT}

Validate Statement Detail Usage To Date Format
    [Tags]    LOCALIZATION
    Verify Usage To Date Format         ${DATE FORMAT}

Validate Click Statement Overview Sub Report Item
    [Tags]    LOCALIZATION
    Verify Click Sub Report Item        Statement Overview

Validate Statement Overview Statement Begin Date Format
    [Tags]    LOCALIZATION
    Verify Begin Date Format      ${DATE FORMAT}

Validate Statement Overview Statement End Date Format
    [Tags]    LOCALIZATION
    Verify End Date Format        ${DATE FORMAT}

Validate Click Statement Overview Submit Button
    [Tags]    LOCALIZATION
    Verify Click Submit Button

Validate Statement Overview Grid Begin Date Format
    [Tags]    LOCALIZATION
    Verify Report's Begin Date Format       ${DATE FORMAT}

Validate Statement Overview Grid End Date Format
    [Tags]    LOCALIZATION
    Verify Report's End Date Format         ${DATE FORMAT}

Validate Close Missing FTR Report Window
    [Tags]    LOCALIZATION
    Verify Close IxReport Window

Validate Close IXReport Window
    [Tags]    LOCALIZATION
    Verify Close IxReport Window
