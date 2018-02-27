*** Settings ***
Documentation     A Test Suite With Set Of Tests For Localization-Price Modules

Resource          ../../Resources/common_resource.robot
Resource          ../../Resources/Pages/price_page_resource.robot
Resource          ../../Resources/Localization/${LOCALE}/localization_settings.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Price Module
    [Tags]    LOCALIZATION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Select Cost Policy
    [Tags]    LOCALIZATION
    Verify select cost policy

Validate Last Price List Date Format
    [Tags]    LOCALIZATION
    Verify Click Cost Policy Grid First Row Inline Action Button

Validate Select View Cost Policy Inline Action Item
    [Tags]    LOCALIZATION
    Verify Select Inline Action Item        View Cost Policy

Validate Cost Policy Last Modified Date Format
    [Tags]    LOCALIZATION
    Verify Cost Policy Last Modified Date Format        ${DATE FORMAT}

Validate Select Formulas Tab
    [Tags]    LOCALIZATION
    Verify Select Formulas Tab

Validate Cost Policy Formulas Select Date Format
    [Tags]    LOCALIZATION
    Verify Cost Policy Formulas Select Date Format          ${DATE FORMAT}

Validate Click Create Destination Formula
    [Tags]    LOCALIZATION
    Verify Click Create Destination Formula

Validate Create Destination Formulas Begin Date Format
    [Tags]    LOCALIZATION
    Verify Create Destination Formulas Begin Date Format          ${DATE FORMAT}

Validate Close Create Cost Policy Destination Screen
    [Tags]    LOCALIZATION
    Verify Close Create Cost Policy Destination Screen


Validate Formulas Grid Begin Date Column Value Format
    [Tags]    LOCALIZATION
    Verify Formulas Grid Begin Date Column Value Format          ${DATE FORMAT}

Validate Click Create Global Formula
    [Tags]    LOCALIZATION
    Verify Click Create Global Formula

Validate Create Gloabl Formulas Begin Date Format
    [Tags]    LOCALIZATION
    Verify Create Global Formulas Begin Date Format          ${DATE FORMAT}

Validate Close Create Global Formula Screen
    [Tags]    LOCALIZATION
    Verify Close Create Global Formula Screen

Validate Click Create Category Formula
    [Tags]    LOCALIZATION
    Verify Click Create Category Formula

Validate Create Category Formulas Begin Date Format
    [Tags]    LOCALIZATION
    Verify Create Category Formulas Begin Date Format          ${DATE FORMAT}

Validate Close Create Category Formula Screen
    [Tags]    LOCALIZATION
    Verify Close Create Category Formula Screen

Validate Select User Defined Parameters Tab
    [Tags]    LOCALIZATION
    Verify Select User Defined Parameters Tab

Validate User Defined Parameters Select Date Format
    [Tags]    LOCALIZATION
    Verify User Defined Parameters Select Date Format          ${DATE FORMAT}

Validate User Defined Parameters Grid Value Column Value
    [Tags]    LOCALIZATION
    Verify User Defined Parameters Grid Value Column Value         ${LOCALE FOR CURRENCY FORMAT}

Validate User Defined Parameters Start Date Format
    [Tags]    LOCALIZATION
    Verify User Defined Parameters Start Date Format          ${DATE FORMAT}

Validate Select Costs Tab
    [Tags]    LOCALIZATION
    Verify Select Costs Tab

Validate Costs Tab Select Date Value Format
    [Tags]    LOCALIZATION
    Verify Costs Tab Select Date Value Format       ${DATE FORMAT}

Validate Costs Tab Active On Date Value Format
    [Tags]    LOCALIZATION
    Verify Costs Tab Active On Date Value Format       ${DATE FORMAT}

Validate Click Cost Upload Link
    [Tags]    LOCALIZATION
    Verify Click Cost Upload Link

Validate Registry From Date Format
    [Tags]    LOCALIZATION
    Verify Registry From Date Format       ${TIME STAMP HOUR MINUTE}

Validate Registry To Date Format
    [Tags]    LOCALIZATION
    Verify Registry To Date Format       ${TIME STAMP HOUR MINUTE}

Validate Reg Date Time Column Value Format
    [Tags]    LOCALIZATION
    Verify Reg Date Time Column Value Format       ${TIME STAMP}

Validate Process Begin Date Column Value Format
    [Tags]    LOCALIZATION
    Verify Process Begin Date Column Value Format       ${TIME STAMP}

Validate Process End Date Column Value Format
    [Tags]    LOCALIZATION
    Verify Process End Date Column Value Format     ${TIME STAMP}

Validate Select Price Policies Tab
    [Tags]    LOCALIZATION
    Verify Select Price Policies Tab

Validate Click Formulas Button
    [Tags]    LOCALIZATION
    Verify Click Formulas Button

Validate Price Policy Formulas Select Date
    [Tags]    LOCALIZATION
    Verify Price Policy Formulas Select Date     ${DATE FORMAT}

Validate Price Policy Formula Begin Date Column Value Format
    [Tags]    LOCALIZATION
    Verify Price Policy Formula Begin Date Column Value Format       ${DATE FORMAT}

Validate Price Policy Formula End Date Column Value Format
    [Tags]    LOCALIZATION
    Verify Price Policy Formula End Date Column Value Format     ${DATE FORMAT}

Validate Select Price Policies Tab For User Defined Parameters
    [Tags]    LOCALIZATION
    Verify Select Price Policies Tab

Validate Click User Defined Parameters Button
    [Tags]    LOCALIZATION
    Verify Click User Defined Parameters Button

Validate User Defined Parameter Select Date Format
    [Tags]    LOCALIZATION
    Verify User Defined Parameter Select Date Format     ${DATE FORMAT}

Validate User Defined Parameter Value Column Value Format
    [Tags]    LOCALIZATION
    Verify User Defined Parameter Value Column Value Format     ${LOCALE FOR CURRENCY FORMAT}

Validate User Defined Parameter Start Date Column Value Format
    [Tags]    LOCALIZATION
    Verify User Defined Parameter Start Date Column Value Format        ${DATE FORMAT}

Validate Select Price Policies Tab For Price Overrides
    [Tags]    LOCALIZATION
    Verify Select Price Policies Tab

Validate Click Price Overrides Button
    [Tags]    LOCALIZATION
    Verify Click Price Overrides Button

Validate Price Overrides Select Date Format
    [Tags]    LOCALIZATION
    Verify User Defined Parameter Select Date Format     ${DATE FORMAT}

Validate Price Overrides Grid Target Price Value Format
    [Tags]    LOCALIZATION
    Verify Price Overrides Grid Target Price Value Format     ${LOCALE FOR CURRENCY FORMAT}

Validate Price Overrides Grid Begin Date Format
    [Tags]    LOCALIZATION
    Verify Price Overrides Grid Begin Date Format        ${DATE FORMAT}

Validate Price Overrides Grid End Date Format
    [Tags]    LOCALIZATION
    Verify Price Overrides Grid End Date Format        ${DATE FORMAT}

Validate Select Price Dashboard
    [Tags]    LOCALIZATION
    Verify Select Price Dashboard

Validate Click Compound Reference Price List Link
    [Tags]    LOCALIZATION
    Verify Click Compound Reference Price List Link

Validate Compound Reference Price Select Date Format
    [Tags]    LOCALIZATION
    Verify Compound Reference Price Select Date Format        ${DATE FORMAT}

Validate Compound Reference Price Grid Begin Date Format
    [Tags]    LOCALIZATION
    Verify Compound Reference Price Grid Begin Date Format        ${DATE FORMAT}

Validate Compound Reference Price Grid Modified Date Format
    [Tags]    LOCALIZATION
    Verify Compound Reference Price Grid Modified Date Format        ${DATE FORMAT}

Validate Select Price Dashboard For Create Customer Price list
    [Tags]    LOCALIZATION
    Verify Select Price Dashboard