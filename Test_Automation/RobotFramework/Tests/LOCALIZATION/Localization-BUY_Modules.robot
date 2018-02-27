*** Settings ***
Documentation     A Test Suite With Set Of Tests For Localization-Buy Modules

Resource          ../../Resources/common_resource.robot
Resource          ../../Resources/Pages/buy_page_resource.robot
Resource          ../../Resources/Localization/${LOCALE}/localization_settings.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Buy Module
    [Tags]    LOCALIZATION
    Click on Home Icon and Select 'Buy' From Main Menu

Validate Click On Vendors Tab
    [Tags]    LOCALIZATION
    Verify Click On Vendors Tab

Validate Last Price List Date Format
    [Tags]    LOCALIZATION
    Verify Last Price List Date Format      ${DATE FORMAT}

Validate Vendors Grid Cost Currency Format
    [Tags]    LOCALIZATION
    Verify Vendors Grid Cost Currency Format        ${LOCALE FOR CURRENCY FORMAT}

Validate Vendors Grid Margin Format
    [Tags]    LOCALIZATION
    Verify Vendors Grid Margin Format               ${LOCALE FOR CURRENCY FORMAT}

Validate Click Vendors Grid First Row Inline Action Button
    [Tags]    LOCALIZATION
    Verify Click Vendors Grid First Row Inline Action Button

Validate Select Vendor Profile Inline Action Item
    [Tags]    LOCALIZATION
    Verify Select Inline Action Item

Validate Last Modified Date Format
    [Tags]    LOCALIZATION
    Verify Last Modified Date Format        ${TIME STAMP}

Validate Select Rates Tab
    [Tags]    LOCALIZATION
    Verify Select Rates Tab

Validate Rates Page Begin Date Input Field Value Format
    [Tags]    LOCALIZATION
    Verify Begin Date Input Field Value Format          ${DATE FORMAT}

Validate Rates Grid Begin Date Format
    [Tags]    LOCALIZATION
    Verify Rates Grid Begin Date Format             ${DATE FORMAT}

Validate Rates Grid Last Modified Date Format
    [Tags]    LOCALIZATION
    Verify Rates Grid Last Modified Date Format             ${TIME STAMP}

Validate Select Dialed Digits Tab
    [Tags]    LOCALIZATION
    Verify Select Dialed Digits Tab

Validate Dialed Digits Tab Begin Date Input Field Value Format
    [Tags]    LOCALIZATION
    Verify Begin Date Input Field Value Format             ${DATE FORMAT}

Validate Dialed Digits Grid Begin Date Format
    [Tags]    LOCALIZATION
    Verify Dialed Digits Grid Begin Date Format             ${DATE FORMAT}

Validate Dialed Digits Grid Last Modified Date Format
    [Tags]    LOCALIZATION
    Verify Dialed Digits Last Modified Date Format             ${DATE FORMAT}

Validate Select Destinations Tab
    [Tags]    LOCALIZATION
    Verify Select Destinations Tab

Validate Destinations Tab Begin Date Input Field Value Format
    [Tags]    LOCALIZATION
    Verify Begin Date Input Field Value Format             ${DATE FORMAT}

Validate Destinations Grid Begin Date Format
    [Tags]    LOCALIZATION
    Verify Destinations Grid Begin Date Format             ${DATE FORMAT}

Validate Destinations Grid Last Modified Date Format
    [Tags]    LOCALIZATION
    Verify Destinations Grid Last Modified Date Format             ${DATE FORMAT}

Validate Select Vendors Tab
    [Tags]    LOCALIZATION
    Verify Select Vendors Tab

Validate Click Vendors Grid First Row Inline Action Button For Upload Price List
    [Tags]    LOCALIZATION
    Verify Click Vendors Grid First Row Inline Action Button

Validate Select Inline Action Item
    [Tags]    LOCALIZATION
    Verify Select Upload Vendor Price List Inline Action Button        Upload Vendor Price List

Validate Vendor Price List Date Format
    [Tags]    LOCALIZATION
    Verify Vendor Price List Date Format             ${DATE FORMAT}

Validate Click Upload Cancel Button
    [Tags]    LOCALIZATION
    Verify Click Upload Cancel Button

Validate Click On Vendor Price Lists
    [Tags]    LOCALIZATION
    Verify Click On Vendor Price Lists

Validate Vendor Price List From Date Format
    [Tags]    LOCALIZATION
    Verify Vendor Price List From Date Format             ${DATE FORMAT}

Validate Vendor Price List To Date Format
    [Tags]    LOCALIZATION
    Verify Vendor Price List To Date Format             ${DATE FORMAT}

Validate Price List Date Column Value Format
    [Tags]    LOCALIZATION
    Verify Price List Date Column Value Format             ${DATE FORMAT}

Validate Price List Modified Date Column Value Format
    [Tags]    LOCALIZATION
    Verify Price List Modified Date Column Value Format             ${TIME STAMP}

Validate Select Buy Dashboard
    [Tags]    LOCALIZATION
    Verify Select Buy Dashboard

Validate Click Country Group
    [Tags]    LOCALIZATION
    Verify Click Country Group

Validate Country Groups Grid Last Modified Date Column Value Format
    [Tags]    LOCALIZATION
    Verify Country Groups Grid Last Modified Date Column Value Format             ${TIME STAMP}