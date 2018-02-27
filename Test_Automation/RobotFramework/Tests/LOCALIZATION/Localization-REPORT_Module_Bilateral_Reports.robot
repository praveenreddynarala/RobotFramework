*** Settings ***
Documentation     A Test Suite With Set Of Tests For Localization-Report Module Bilateral Reports

Resource          ../../Resources/common_resource.robot
Resource          ../../Resources/Pages/Legacy/ixreport_page_resource.robot
Resource          ../../Resources/Localization/${LOCALE}/localization_settings.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Report Module
    [Tags]    LOCALIZATION
    Verify Switch To IXReport

Validate Expand Bilateral Reports Section
    [Tags]    LOCALIZATION
    Verify Expand Reports Section       Bilateral Reports

Validate Click AEP Report Sub Report Item
    [Tags]    LOCALIZATION
    Verify Click Sub Report Item        AEP Report

Validate AEP Report Begin Date Format
    [Tags]    LOCALIZATION
    Verify Begin Date Format        ${DATE FORMAT}

Validate AEP Report End Date Format
    [Tags]    LOCALIZATION
    Verify End Date Format        ${DATE FORMAT}

Validate Click AEP Report Submit Button
    [Tags]    LOCALIZATION
    Verify Click Submit Button

Validate AEP Report's Begin Date Format
    [Tags]    LOCALIZATION
    Verify Report's Begin Date Format       ${DATE FORMAT}

Validate AEP Report's End Date Format
    [Tags]    LOCALIZATION
    Verify Report's End Date Format         ${DATE FORMAT}

Validate Close AEP Report Window
    [Tags]    LOCALIZATION
    Verify Close IxReport Window

Validate Click Contract List Report Sub Report Item
    [Tags]    LOCALIZATION
    Verify Click Sub Report Item        Contract List Report

Validate Contract List Report Begin Date Format
    [Tags]    LOCALIZATION
    Verify Begin Date Format        ${DATE FORMAT}

Validate Contract List Report End Date Format
    [Tags]    LOCALIZATION
    Verify End Date Format        ${DATE FORMAT}

Validate Click Contract List Report Submit Button
    [Tags]    LOCALIZATION
    Verify Click Submit Button

Validate Contract List Report's Begin Date Format
    [Tags]    LOCALIZATION
    Verify Report's Begin Date Format       ${DATE FORMAT}

Validate Contract List Report's End Date Format
    [Tags]    LOCALIZATION
    Verify Report's End Date Format         ${DATE FORMAT}

Validate Contract List Report Grid Contract Begin Date Format
    [Tags]    LOCALIZATION
    Verify Specific Column Date Format      ${DATE FORMAT}      Contract Begin Date

Validate Contract List Report Grid Contract End Date Format
    [Tags]    LOCALIZATION
    Verify Specific Column Date Format      ${DATE FORMAT}      Contract End Date

Validate Contract List Report Grid Signature Date Format
    [Tags]    LOCALIZATION
    Verify Specific Column Date Format      ${DATE FORMAT}      Signature Date

Validate Close Contract List Report Window
    [Tags]    LOCALIZATION
    Verify Close IxReport Window

Validate Click Contract Status Report Sub Report Item
    [Tags]    LOCALIZATION
    Verify Click Sub Report Item        Contract Status Report

Validate Contract Status Report Select Date Format
    [Tags]    LOCALIZATION
    Verify Select Date Format        ${DATE FORMAT}

Validate Click Contract List Report Submit Button
    [Tags]    LOCALIZATION
    Verify Click Submit Button

Validate Contract Status Report Grid Begin Date Format
    [Tags]    LOCALIZATION
    Verify Specific Column Date Format      ${DATE FORMAT}      Begin Date

Validate Close Contract List Report Window
    [Tags]    LOCALIZATION
    Verify Close IxReport Window

Validate Click Volume Commitment Summary Sub Report Item
    [Tags]    LOCALIZATION
    Verify Click Sub Report Item        Volume Commitment Summary

Validate Volume Commitment Summary Begin Date Format
    [Tags]    LOCALIZATION
    Verify Begin Date Format        ${DATE FORMAT}

Validate Volume Commitment Summary End Date Format
    [Tags]    LOCALIZATION
    Verify End Date Format        ${DATE FORMAT}

Validate Click Volume Commitment Summary Submit Button
    [Tags]    LOCALIZATION
    Verify Click Submit Button

Validate Volume Commitment Summary Grid Begin Date Format
    [Tags]    LOCALIZATION
    Verify Specific Column Date Format      ${DATE FORMAT}      Begin Date

Validate Volume Commitment Summary Grid End Date Format
    [Tags]    LOCALIZATION
    Verify Specific Column Date Format      ${DATE FORMAT}      End Date

Validate Close Volume Commitment Summary Window
    [Tags]    LOCALIZATION
    Verify Close IxReport Window

Validate Close IXReport Window
    [Tags]    LOCALIZATION
    Verify Close IxReport Window