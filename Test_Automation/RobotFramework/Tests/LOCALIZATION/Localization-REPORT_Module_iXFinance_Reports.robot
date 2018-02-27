*** Settings ***
Documentation     A Test Suite With Set Of Tests For Localization-Report Module iXFinance Reports

Resource          ../../Resources/common_resource.robot
Resource          ../../Resources/Pages/Legacy/ixreport_page_resource.robot
Resource          ../../Resources/Localization/${LOCALE}/localization_settings.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Report Module
    [Tags]    LOCALIZATION
    Verify Switch To IXReport

Validate Expand iXFinance Reports Section
    [Tags]    LOCALIZATION
    Verify Expand Reports Section       iXFinance Reports

Validate Click Actuals Status Report Sub Report Item
    [Tags]    LOCALIZATION
    Verify Click Sub Report Item        Actuals Status Report

Validate Actual Create Begin Date Format
    [Tags]    LOCALIZATION
    Verify Begin Date Format      ${DATE FORMAT}

Validate Actual Create End Date Format
    [Tags]    LOCALIZATION
    Verify End Date Format        ${DATE FORMAT}

Validate Click Open Dispute Amount Report Sub Report Item
    [Tags]    LOCALIZATION
    Verify Click Sub Report Item        Open Dispute Amount Report

Validate Statement Begin Date Format
    [Tags]    LOCALIZATION
    Verify Begin Date Format      ${DATE FORMAT}

Validate Statement End Date Format
    [Tags]    LOCALIZATION
    Verify End Date Format        ${DATE FORMAT}

Validate Close IXReport Window
    [Tags]    LOCALIZATION
    Verify Close IxReport Window