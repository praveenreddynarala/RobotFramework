*** Settings ***
Documentation     A Test Suite With Set Of Tests For Localization-Sell Module

Resource          ../../Resources/common_resource.robot
Resource          ../../Resources/Pages/sell_page_resource.robot
Resource          ../../Resources/Localization/${LOCALE}/localization_settings.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Sell Module
    [Tags]    LOCALIZATION
    Click on Home Icon and Select 'Sell' From Main Menu

Validate Click On Customer Tab
    [Tags]    LOCALIZATION
    Click On Customer Tab

Validate Customers Grid Revenue Currency Format
    [Tags]    LOCALIZATION
    Verify Customers Grid Revenue Currency Format       ${LOCALE FOR CURRENCY FORMAT}

Validate Customers Grid Margin Currency Format
    [Tags]    LOCALIZATION
    Verify Customers Grid Margin Currency Format       ${LOCALE FOR CURRENCY FORMAT}

Validate Click Customer Grid First Row Inline Action Button
    [Tags]    LOCALIZATION
    Verify Click Customer Grid First Row Inline Action Button

Validate Select Customer Profile Inlince Action Item
    [Tags]    LOCALIZATION
    Verify Select Inline Action Item        Customer Profile

Validate Last Modified Date Time Format From Customer Profile Information
    [Tags]    LOCALIZATION
    Verify Last Modified Date Time Format From Customer Profile Information     ${TIME STAMP}

Validate Select Rates Tab
    [Tags]    LOCALIZATION
    Verify Select Rates Tab

Validate Customer Rates Begin Date Format
    [Tags]    LOCALIZATION
    Verify Customer Rates Begin Date Format     ${DATE FORMAT}

Validate Customer Rates Grid Rate1 Currency Format
    [Tags]    LOCALIZATION
    Verify Customer Rates Grid Rate1 Currency Format       ${LOCALE FOR CURRENCY FORMAT}

Validate Customer Rates Grid Rate2 Currency Format
    [Tags]    LOCALIZATION
    Verify Customer Rates Grid Rate2 Currency Format       ${LOCALE FOR CURRENCY FORMAT}

Validate Customer Rates Grid Rate3 Currency Format
    [Tags]    LOCALIZATION
    Verify Customer Rates Grid Rate3 Currency Format       ${LOCALE FOR CURRENCY FORMAT}

Validate Customer Rates Grid Begin Date Format
    [Tags]    LOCALIZATION
    Verify Customer Rates Grid Begin Date Format        ${DATE FORMAT}

Validate Select Dialed Digit Tab
    [Tags]    LOCALIZATION
    Verify Select Dialed Digit Tab

Validate Customer Dialed Digit Begin Date Format
    [Tags]    LOCALIZATION
    Verify Customer Dialed Digit Begin Date Format     ${DATE FORMAT}

Validate Customer Dialed Digit Grid Begin Date Format
    [Tags]    LOCALIZATION
    Verify Customer Dialed Digit Grid Begin Date Format        ${DATE FORMAT}

Validate Customer Dialed Digit Grid Modified Date Format
    [Tags]    LOCALIZATION
    Verify Customer Dialed Digit Grid Modified Date Format        ${DATE FORMAT}

Validate Select Destinations Tab
    [Tags]    LOCALIZATION
    Verify Select Destinations Tab

Validate Customer Destinations Begin Date Format
    [Tags]    LOCALIZATION
    Verify Customer Destinations Begin Date Format     ${DATE FORMAT}

Validate Customer Destinations Grid Begin Date Format
    [Tags]    LOCALIZATION
    Verify Customer Destinations Grid Begin Date Format        ${DATE FORMAT}

Validate Customer Destinations Grid Last Modified Date Format
    [Tags]    LOCALIZATION
    Verify Customer Destinations Grid Last Modified Date Format       ${DATE FORMAT}

Validate Close Customer Profile Tab
    [Tags]    LOCALIZATION
    Verify Close Current Tab        Customer Profile

Validate Click Customer Price Lists Button
    [Tags]    LOCALIZATION
    Verify Click On Customer Price Lists Button

Validate Customer Price List From Date Format
    [Tags]    LOCALIZATION
    Verify Customer Price List From Date Format      ${DATE FORMAT}

Validate Customer Price List To Date Format
    [Tags]    LOCALIZATION
    Verify Customer Price List To Date Format      ${DATE FORMAT}

Validate Customer Price List Grid Price List Date Format
    [Tags]    LOCALIZATION
    Verify Customer Price List Grid Price List Date Format      ${DATE FORMAT}

Validate Customer Price List Grid Modified Date Format
    [Tags]    LOCALIZATION
    Verify Customer Price List Grid Modified Date Format       ${TIME STAMP}

Validate Close Customer Price Lists Tab
    [Tags]    LOCALIZATION
    Verify Close Current Tab        Customer Price Lists

Validate Click Create Customer Price Lists Button
    [Tags]    LOCALIZATION
    Verify Click Create Customer Price Lists Button

Validate Offer Date Format
    [Tags]    LOCALIZATION
    Verify Offer Date Format    ${DATE FORMAT}

Validate Select Date Format
    [Tags]    LOCALIZATION
    Verify Select Date Format      ${DATE FORMAT}
