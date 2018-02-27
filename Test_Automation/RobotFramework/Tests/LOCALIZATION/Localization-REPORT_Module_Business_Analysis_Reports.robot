*** Settings ***
Documentation     A Test Suite With Set Of Tests For Localization-Report Module Business Analysis Reports

Resource          ../../Resources/common_resource.robot
Resource          ../../Resources/Pages/Legacy/ixreport_page_resource.robot
Resource          ../../Resources/Localization/${LOCALE}/localization_settings.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Report Module
    [Tags]    LOCALIZATION
    Verify Switch To IXReport

Validate Expand Business Analysis Reports Section
    [Tags]    LOCALIZATION
    Verify Expand Reports Section       Business Analysis Reports

Validate Click Breakeven Analysis Sub Report Item
    [Tags]    LOCALIZATION
    Verify Click Sub Report Item        Breakeven Analysis

Validate Breakeven Analysis Date Format
    [Tags]    LOCALIZATION
    Verify Date Value Format        ${DATE FORMAT}

Validate Click Breakeven Analysis Submit Button
    [Tags]    LOCALIZATION
    Verify Click Submit Button

Validate Breakeven Analysis Grid Route 2 Format
    [Tags]    LOCALIZATION
    Verify Specific Column Currency Format      ${LOCALE FOR CURRENCY FORMAT}       Route 2

Validate Breakeven Analysis Grid Route 3 Format
    [Tags]    LOCALIZATION
    Verify Specific Column Currency Format      ${LOCALE FOR CURRENCY FORMAT}       Route 3

Validate Breakeven Analysis Grid Blended Cost Format
    [Tags]    LOCALIZATION
    Verify Specific Column Currency Format      ${LOCALE FOR CURRENCY FORMAT}       Blended Cost

Validate Breakeven Analysis Grid Overhead Format
    [Tags]    LOCALIZATION
    Verify Specific Column Currency Format      ${LOCALE FOR CURRENCY FORMAT}       Overhead

Validate Breakeven Analysis Grid Breakeven Format
    [Tags]    LOCALIZATION
    Verify Specific Column Currency Format      ${LOCALE FOR CURRENCY FORMAT}       Breakeven

Validate Close Breakeven Analysis Window
    [Tags]    LOCALIZATION
    Verify Close IxReport Window

Validate Click Target Buy Rates Sub Report Item
    [Tags]    LOCALIZATION
    Verify Click Sub Report Item        Target Buy Rates

Validate Target Buy Rates Date Format
    [Tags]    LOCALIZATION
    Verify Date Value Format        ${DATE FORMAT}

Validate Click Target Buy Rates Submit Button
    [Tags]    LOCALIZATION
    Verify Click Submit Button

Validate Target Buy Rates Grid Route 2 Format
    [Tags]    LOCALIZATION
    Verify Specific Column Currency Format      ${LOCALE FOR CURRENCY FORMAT}       Route 2

Validate Target Buy Rates Grid Route 3 Format
    [Tags]    LOCALIZATION
    Verify Specific Column Currency Format      ${LOCALE FOR CURRENCY FORMAT}       Route 3

Validate Target Buy Rates Grid Buy 1 Format
    [Tags]    LOCALIZATION
    Verify Specific Column Currency Format      ${LOCALE FOR CURRENCY FORMAT}       Buy 1

Validate Target Buy Rates Grid Buy 2 Format
    [Tags]    LOCALIZATION
    Verify Specific Column Currency Format      ${LOCALE FOR CURRENCY FORMAT}       Buy 2

Validate Target Buy Rates Grid Buy 3 Format
    [Tags]    LOCALIZATION
    Verify Specific Column Currency Format      ${LOCALE FOR CURRENCY FORMAT}       Buy 3

Validate Target Buy Rates Grid Breakeven Format
    [Tags]    LOCALIZATION
    Verify Specific Column Currency Format      ${LOCALE FOR CURRENCY FORMAT}       Breakeven

Validate Close Target Buy Rates Window
    [Tags]    LOCALIZATION
    Verify Close IxReport Window

Validate Click Target Sell Rates Sub Report Item
    [Tags]    LOCALIZATION
    Verify Click Sub Report Item        Target Sell Rates

Validate Target Sell Rates Date Format
    [Tags]    LOCALIZATION
    Verify Date Value Format        ${DATE FORMAT}

Validate Click Target Sell Rates Submit Button
    [Tags]    LOCALIZATION
    Verify Click Submit Button

Validate Target Sell Rates Grid Route 2 Format
    [Tags]    LOCALIZATION
    Verify Specific Column Currency Format      ${LOCALE FOR CURRENCY FORMAT}       Route 2

Validate Target Sell Rates Grid Route 3 Format
    [Tags]    LOCALIZATION
    Verify Specific Column Currency Format      ${LOCALE FOR CURRENCY FORMAT}       Route 3

Validate Target Sell Rates Grid Sell 1 Format
    [Tags]    LOCALIZATION
    Verify Specific Column Currency Format      ${LOCALE FOR CURRENCY FORMAT}       Sell 1

Validate Target Sell Rates Grid Sell 2 Format
    [Tags]    LOCALIZATION
    Verify Specific Column Currency Format      ${LOCALE FOR CURRENCY FORMAT}       Sell 2

Validate Target Sell Rates Grid Sell 3 Format
    [Tags]    LOCALIZATION
    Verify Specific Column Currency Format      ${LOCALE FOR CURRENCY FORMAT}       Sell 3

Validate Close Target Sell Rates Window
    [Tags]    LOCALIZATION
    Verify Close IxReport Window

Validate Close IXReport Window
    [Tags]    LOCALIZATION
    Verify Close IxReport Window
