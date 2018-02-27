*** Settings ***
Documentation     A Test Suite With Set Of Tests For Localization-Report Module Daily Operational Reports

Resource          ../../Resources/common_resource.robot
Resource          ../../Resources/Pages/Legacy/ixreport_page_resource.robot
Resource          ../../Resources/Localization/${LOCALE}/localization_settings.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Report Module
    [Tags]    LOCALIZATION
    Verify Switch To IXReport

Validate Expand Daily Operational Reports Section
    [Tags]    LOCALIZATION
    Verify Expand Reports Section       Daily Operational Reports

Validate Click Cost and ASR Report Sub Report Item
    [Tags]    LOCALIZATION
    Verify Click Sub Report Item        Cost and ASR Report

Validate Cost and ASR Report Begin Date Format
    [Tags]    LOCALIZATION
    Verify Begin Date Format With Lower Case d      ${DATE FORMAT}

Validate Cost and ASR Report End Date Format
    [Tags]    LOCALIZATION
    Verify End Date Format With Lower Case d        ${DATE FORMAT}

Validate Click Cost Revenue and ASR Report Sub Report Item
    [Tags]    LOCALIZATION
    Verify Click Sub Report Item        Cost, Revenue and ASR Report

Validate Cost Revenue and ASR Report Begin Date Format
    [Tags]    LOCALIZATION
    Verify Begin Date Format With Lower Case d      ${DATE FORMAT}

Validate Cost Revenue and ASR Report End Date Format
    [Tags]    LOCALIZATION
    Verify End Date Format With Lower Case d        ${DATE FORMAT}

Validate Click Customer Specific Margin Report Sub Report Item
    [Tags]    LOCALIZATION
    Verify Click Sub Report Item        Customer Specific Margin Report

Validate Customer Specific Margin Report Begin Date Format
    [Tags]    LOCALIZATION
    Verify Begin Date Format With Lower Case d      ${DATE FORMAT}

Validate Customer Specific Margin Report End Date Format
    [Tags]    LOCALIZATION
    Verify End Date Format With Lower Case d        ${DATE FORMAT}

Validate Click Margin In and Out Report Sub Report Item
    [Tags]    LOCALIZATION
    Verify Click Sub Report Item        Margin In and Out Report

Validate Margin In and Out Report Begin Date Format
    [Tags]    LOCALIZATION
    Verify Begin Date Format With Lower Case d      ${DATE FORMAT}

Validate Margin In and Out Report End Date Format
    [Tags]    LOCALIZATION
    Verify End Date Format With Lower Case d        ${DATE FORMAT}

Validate Click Margin Out Report Sub Report Item
    [Tags]    LOCALIZATION
    Verify Click Sub Report Item        Margin Out Report

Validate Margin Out Report Begin Date Format
    [Tags]    LOCALIZATION
    Verify Begin Date Format        ${DATE FORMAT}

Validate Margin Out Report End Date Format
    [Tags]    LOCALIZATION
    Verify End Date Format          ${DATE FORMAT}

Validate Click Margin Report Sub Report Item
    [Tags]    LOCALIZATION
    Verify Click Sub Report Item        Margin Report

Validate Margin Report Begin Date Format
    [Tags]    LOCALIZATION
    Verify Begin Date Format With Lower Case d      ${DATE FORMAT}

Validate Margin Report End Date Format
    [Tags]    LOCALIZATION
    Verify End Date Format With Lower Case d        ${DATE FORMAT}

Validate Click Revenue and ASR Report Sub Report Item
    [Tags]    LOCALIZATION
    Verify Click Sub Report Item        Revenue and ASR Report

Validate Revenue and ASR Report Begin Date Format
    [Tags]    LOCALIZATION
    Verify Begin Date Format With Lower Case d      ${DATE FORMAT}

Validate Revenue and ASR Report End Date Format
    [Tags]    LOCALIZATION
    Verify End Date Format With Lower Case d        ${DATE FORMAT}

Validate Close IXReport Window
    [Tags]    LOCALIZATION
    Verify Close IxReport Window
