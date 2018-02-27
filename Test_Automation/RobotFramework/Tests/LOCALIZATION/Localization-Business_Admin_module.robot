*** Settings ***
Documentation     A Test Suite With Set Of Tests For Localization-Business Admin Module

Resource          ../../Resources/common_resource.robot
Resource          ../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../Resources/Localization/${LOCALE}/localization_settings.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to System Admin Module
    [Tags]    LOCALIZATION
    Click on Home Icon and Select 'Business Admin' From Main Menu

Validate Expand Number Plan Menu
    [Tags]    LOCALIZATION
    Verify Expand Number Plan Menu

Validate Click Country Submenu
    [Tags]    LOCALIZATION
    Verify Click Country Submenu

Validate Click Country Search Button
    [Tags]    LOCALIZATION
    Verify Click Generic Search Button

Valdiate Country Grid Last Modified Date Column Value Format
    [Tags]    LOCALIZATION
    Verify Country Grid Last Modified Date Column Value Format      ${TIME STAMP}

Validate Click Country Groups Button
    [Tags]    LOCALIZATION
    Verify Click Country Groups Button

Validate Country Groups Management Grid Last Modified Date Column Value Format
    [Tags]    LOCALIZATION
    Verify Country Groups Management Grid Last Modified Date Column Value Format        ${TIME STAMP}

Validate Select Business Admin Dashboard
    [Tags]    LOCALIZATION
    Verify Select Business Admin Dashboard

Validate Click Number Plan Submenu
    [Tags]    LOCALIZATION
    Verify Click Number Plan Submenu

Validate Number Plan Grid Last Modified Date Column Value Format
    [Tags]    LOCALIZATION
    Verify Number Plan Grid Last Modified Date Column Value Format      ${TIME STAMP}

Validate Click Number Plan Uploads Button
    [Tags]    LOCALIZATION
    Verify Click Number Plan Uploads Button

Validate Number Plan Uploads From Date Value Format
    [Tags]    LOCALIZATION
    Verify Number Plan Uploads From Date Value Format       ${DATE FORMAT}

Validate Number Plan Uploads To Date Value Format
    [Tags]    LOCALIZATION
    Verify Number Plan Uploads To Date Value Format     ${DATE FORMAT}

Validate Number Plan Uploads Grid Upload Date Format
    [Tags]    LOCALIZATION
    Verify Number Plan Uploads Grid Upload Date Format      ${DATE FORMAT}

Validate Number Plan Uploads Grid Modified Date Column Value Format
    [Tags]    LOCALIZATION
    Verify Number Plan Uploads Grid Modified Date Column Value Format       ${TIME STAMP}

Validate Select Business Admin Dashboard For Network Codes
    [Tags]    LOCALIZATION
    Verify Select Business Admin Dashboard

Validate Click Network Codes Submenu
    [Tags]    LOCALIZATION
    Verify Click Network Codes Submenu

Validate Network Codes Begin Date Value Format
    [Tags]    LOCALIZATION
    Verify Network Codes Begin Date Value Format        ${DATE FORMAT}

Validate Network Codes Grid Begin Date Column Value Format
    [Tags]    LOCALIZATION
    Verify Network Codes Grid Begin Date Column Value Format        ${DATE FORMAT}

Validate Network Codes Grid Modified Date Column Value Format
    [Tags]    LOCALIZATION
    Verify Network Codes Grid Modified Date Column Value Format     ${TIME STAMP}

Validate Select Business Admin Dashboard For Origin Set
    [Tags]    LOCALIZATION
    Verify Select Business Admin Dashboard

Validate Click Origin Set Submenu
    [Tags]    LOCALIZATION
    Verify Click Origin Set Submenu

Validate Origin Set Management Select Date Value Format
    [Tags]    LOCALIZATION
    Verify Origin Set Management Select Date Value Format       ${DATE FORMAT}

Validate Origin Set Management Grid Begin Date Column Value Format
    [Tags]    LOCALIZATION
    Verify Origin Set Management Grid Begin Date Column Value Format        ${DATE FORMAT}

Validate Origin Set Management Grid Modified Date Column Value Format
    [Tags]    LOCALIZATION
    Verify Origin Set Management Grid Modified Date Column Value Format     ${TIME STAMP}

Validate Select Business Admin Dashboard For Origin Set For Country
    [Tags]    LOCALIZATION
    Verify Select Business Admin Dashboard

Validate Expand Company Menu
    [Tags]    LOCALIZATION
    Verify Expand Company Menu

Validate Click Company Submenu
    [Tags]    LOCALIZATION
    Verify Click Company Submenu

Validate Company Grid Last Modified Date Column Value Format
    [Tags]    LOCALIZATION
    Verify Company Grid Last Modified Date Column Value Format      ${TIME STAMP}

Validate Select Business Admin Dashboard For Origin Set For Currency and Exchange Rates
    [Tags]    LOCALIZATION
    Verify Select Business Admin Dashboard

Validate Expand Currency and Exchange Rates Meun
    [Tags]    LOCALIZATION
    Verify Expand Currency And Exchange Rates Menu

Validate Click Currency and Exchange Rates Submenu
    [Tags]    LOCALIZATION
    Verify Click Currency And Exchange Rates Submenu

Validate Currency and Exchange Rates Begin Date Value Format
    [Tags]    LOCALIZATION
    Verify Currency and Exchange Rates Begin Date Value Format      ${DATE FORMAT}

Validate Currency and Exchange Rates Grid Exchange Rate Currency Format
    [Tags]    LOCALIZATION
    Verify Currency and Exchange Rates Grid Exchange Rate Currency Format       ${LOCALE FOR CURRENCY FORMAT}

Validate Exchange Rates Begin Date Column Value Format
    [Tags]    LOCALIZATION
    Verify Exchange Rates Begin Date Column Value Format        ${DATE FORMAT}

Validate Exchange Rates Grid Last Modified Date Column Value Format
    [Tags]    LOCALIZATION
    Verify Exchange Rates Grid Last Modified Date Column Value Format       ${TIME STAMP}

Validate Click Currency Button
    [Tags]    LOCALIZATION
    Verify Click Currency Button

Validate Currency Grid Last Modified Date Column Value Format
    [Tags]    LOCALIZATION
    Verify Currency Grid Last Modified Date Column Value Format     ${TIME STAMP}

Validate Navigate To Business Admin Dashboard Tab For Groups And Categories Menu
    [Tags]    LOCALIZATION
    Verify Select Business Admin Dashboard

Validate Expand Groups and Categories Menu
    [Tags]    LOCALIZATION
    Verify Expand Groups and Categories Menu

Validate Click Categories Submenu
    [Tags]    LOCALIZATION
    Verify Click Categories Submenu

Validate Categories Grid Modified Date Column Value Format
    [Tags]    LOCALIZATION
    Verify Categories Grid Modified Date Column Value Format     ${TIME STAMP}

Validate Navigate To Business Admin Dashboard Tab For Routing Menu
    [Tags]    LOCALIZATION
    Verify Select Business Admin Dashboard

Validate Expand Routing Menu
    [Tags]    LOCALIZATION
    Verify Expand Routing Menu

Validate Click Route Class Submenu
    [Tags]    LOCALIZATION
    Verify Click Route Class Submenu

Validate Minimum Direct Percent Value Format
    [Tags]    LOCALIZATION
    Verify Minimum Direct Percent Value Format     ${LOCALE FOR CURRENCY FORMAT}

Validate Navigate To Business Admin Dashboard Tab For Trading Menu
    [Tags]    LOCALIZATION
    Verify Select Business Admin Dashboard

Validate Expand Trading Menu
    [Tags]    LOCALIZATION
    Verify Expand Trading Menu

Validate Click Source And Policies Submenu
    [Tags]    LOCALIZATION
    Verify Click Source And Policies Submenu

Validate Source And Policy Grid Modified Date Column Value Foramt
    [Tags]    LOCALIZATION
    Verify Source And Policy Grid Modified Date Column Value Foramt     ${TIME STAMP HOUR MINUTE}

Validate Navigate To Business Admin Dashboard Tab Destiantion
    [Tags]    LOCALIZATION
    Verify Select Business Admin Dashboard

Validate Click Destination Submenu
    [Tags]    LOCALIZATION
    Verify Click Destination Submenu

Validate Switch To iXConnect Window
    [Tags]    LOCALIZATION
    Verify Switch To IXConnect

Validate Switch To List Frame
    [Tags]    LOCALIZATION
    Verify Switch To List Frame

Validate Destination Date Format
    [Tags]    LOCALIZATION
    Verify Destination Date Format      ${DATE FORMAT}

Validate Close iXConnect Window
    [Tags]    LOCALIZATION
    Verify Close IxConnect Window

Validate Switch To Previous Window
    [Tags]    LOCALIZATION
    Verify Switch To Previous Window

Validate Expand Rating Menu
    [Tags]    LOCALIZATION
    Verify Expand Rating Menu

Validate Click Daylight Saving Zone Submenu
    [Tags]    LOCALIZATION
    Verify Click Daylight Saving Zone Submenu

Validate Switch To iXConnect Window For Daylight Savings Screen
    [Tags]    LOCALIZATION
    Verify Switch To IXConnect

Validate Switch To List Frame Daylight Savings Screen
    [Tags]    LOCALIZATION
    Verify Switch To List Frame

Validate Daylight Savings Zone Screen Date Format
    [Tags]    LOCALIZATION
    Verify Daylight Savings Zone Screen Date Format     ${DATE FORMAT}

Validate Click Go Button
    [Tags]    LOCALIZATION
    Verify Click Go Button

Validate Close Daylight Savings Zone Screen
    [Tags]    LOCALIZATION
    Verify Close IxConnect Window

Validate Switch To Business Admin Dashboard
    [Tags]    LOCALIZATION
    Verify Switch To Previous Window
