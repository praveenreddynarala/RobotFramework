*** Settings ***
Documentation     A Test Suite With Set Of Tests For Localization-Report Module CDR Reports

Resource          ../../Resources/common_resource.robot
Resource          ../../Resources/Pages/Legacy/ixreport_page_resource.robot
Resource          ../../Resources/Localization/${LOCALE}/localization_settings.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Report Module
    [Tags]    LOCALIZATION
    Verify Switch To IXReport

Validate Expand CDR Reports Section
    [Tags]    LOCALIZATION
    Verify Expand Reports Section       CDR Reports

Validate Click CDR Error Report Sub Report Item
    [Tags]    LOCALIZATION
    Verify Click Sub Report Item        CDR Error Report

Validate CDR Error Report Begin Date Format
    [Tags]    LOCALIZATION
    Verify Begin Date Format        ${DATE FORMAT}

Validate CDR Error Report End Date Format
    [Tags]    LOCALIZATION
    Verify End Date Format        ${DATE FORMAT}

Validate Click CDR Error Report Submit Button
    [Tags]    LOCALIZATION
    Verify Click Submit Button

Validate CDR Error Report's Begin Date Format
    [Tags]    LOCALIZATION
    Verify Report's Begin Date Format       ${DATE FORMAT}

Validate CDR Error Report's End Date Format
    [Tags]    LOCALIZATION
    Verify Report's End Date Format         ${DATE FORMAT}

Validate Close CDR Error Report Window
    [Tags]    LOCALIZATION
    Verify Close IxReport Window

Validate Click CDR File Load Sub Report Item
    [Tags]    LOCALIZATION
    Verify Click Sub Report Item        CDR File Load

Validate CDR File Load Begin Date Format
    [Tags]    LOCALIZATION
    Verify Begin Date Format With Lower Case d      ${DATE FORMAT}

Validate CDR File Load End Date Format
    [Tags]    LOCALIZATION
    Verify End Date Format With Lower Case d        ${DATE FORMAT}

Validate Click CDR File Load Submit Button
    [Tags]    LOCALIZATION
    Verify Click Submit Button

Validate Close CDR File Load Window
    [Tags]    LOCALIZATION
    Verify Close IxReport Window

Validate Click CDR Report Sub Report Item
    [Tags]    LOCALIZATION
    Verify Click Sub Report Item        CDR Report

Validate CDR Report Begin Date Format
    [Tags]    LOCALIZATION
    Verify Begin Date Format        ${DATE FORMAT}

Validate CDR Report End Date Format
    [Tags]    LOCALIZATION
    Verify End Date Format        ${DATE FORMAT}

Validate Click CDR Report Submit Button
    [Tags]    LOCALIZATION
    Verify Click Submit Button

Validate Close CDR Report Window
    [Tags]    LOCALIZATION
    Verify Close IxReport Window

Validate Click Reprocessed Traffic Report Sub Report Item
    [Tags]    LOCALIZATION
    Verify Click Sub Report Item        Reprocessed Traffic Report

Validate Reprocess From Date Format
    [Tags]    LOCALIZATION
    Verify From Date Format         ${DATE FORMAT}

Validate Reprocess To Date Format
    [Tags]    LOCALIZATION
    Verify To Date Format           ${DATE FORMAT}

Validate Click Reprocessed Traffic Report Submit Button
    [Tags]    LOCALIZATION
    Verify Click Submit Button

Validate Close Reprocessed Traffic Report Window
    [Tags]    LOCALIZATION
    Verify Close IxReport Window

Validate Close IXReport Window
    [Tags]    LOCALIZATION
    Verify Close IxReport Window