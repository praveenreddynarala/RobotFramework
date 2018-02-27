*** Settings ***
Documentation     A Test Suite With Set Of Tests For Localization-Report Module iXBill Reports

Resource          ../../Resources/common_resource.robot
Resource          ../../Resources/Pages/Legacy/ixreport_page_resource.robot
Resource          ../../Resources/Localization/${LOCALE}/localization_settings.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Report Module
    [Tags]    LOCALIZATION
    Verify Switch To IXReport

Validate Expand iXBill Reports Section
    [Tags]    LOCALIZATION
    Verify Expand Reports Section       iXBill Reports

Validate Click Netting Statement Report Sub Report Item
    [Tags]    LOCALIZATION
    Verify Click Sub Report Item        Netting Statement Report

Validate Netting Statement Report Statement Begin Date Format
    [Tags]    LOCALIZATION
    Verify Begin Date Format      ${DATE FORMAT}

Validate Netting Statement Report Statement End Date Format
    [Tags]    LOCALIZATION
    Verify End Date Format        ${DATE FORMAT}

Validate Click Submit Button
    [Tags]    LOCALIZATION
    Verify Click Submit Button

Validate Neeting Statement Report's Begin Date Format
    [Tags]    LOCALIZATION
    Verify Report's Begin Date Format      ${DATE FORMAT}

Validate Neeting Statement Report's End Date Format
    [Tags]    LOCALIZATION
    Verify Report's End Date Format      ${DATE FORMAT}

Validate Close Neeting Statement Report's Screen
    [Tags]    LOCALIZATION
    Verify Close IxReport Window

Validate Click Payment and Collection Report Sub Report Item
    [Tags]    LOCALIZATION
    Verify Click Sub Report Item        Payment and Collection Report

Validate Payment and Collection Report Statement Begin Date Format
    [Tags]    LOCALIZATION
    Verify Begin Date Format      ${DATE FORMAT}

Validate Payment and Collection Report Statement End Date Format
    [Tags]    LOCALIZATION
    Verify End Date Format        ${DATE FORMAT}

Validate Click Payment And Collection Report Submit Button
    [Tags]    LOCALIZATION
    Verify Click Submit Button

Validate Payment And Collection Report Begin Date Format
    [Tags]    LOCALIZATION
    Verify Report's Begin Date Format      ${DATE FORMAT}

Validate Payment And Collection Report End Date Format
    [Tags]    LOCALIZATION
    Verify Report's End Date Format      ${DATE FORMAT}

Validate Close Payment And Collection Report Screen
    [Tags]    LOCALIZATION
    Verify Close IxReport Window

Validate Click PCR Error Report Sub Report Item
    [Tags]    LOCALIZATION
    Verify Click Sub Report Item        PCR Error Report

Validate PCR Error Report Begin Date Format
    [Tags]    LOCALIZATION
    Verify Begin Date Format      ${DATE FORMAT}

Validate PCR Error Report End Date Format
    [Tags]    LOCALIZATION
    Verify End Date Format        ${DATE FORMAT}

Validate Click PCR Error Report Submit Button
    [Tags]    LOCALIZATION
    Verify Click Submit Button

Validate PCR Error Report's Screen Begin Date Format
    [Tags]    LOCALIZATION
    Verify Report's Begin Date Format      ${DATE FORMAT}

Validate PCR Error Report's Screen End Date Format
    [Tags]    LOCALIZATION
    Verify Report's End Date Format      ${DATE FORMAT}

Validate Close PCR Error Report's Screen
    [Tags]    LOCALIZATION
    Verify Close IxReport Window

Validate Click PCR Raw Cost Revenue and ASR Report Sub Report Item
    [Tags]    LOCALIZATION
    Verify Click Sub Report Item        PCR Raw Cost, Revenue and ASR Report

Validate PCR Raw Cost Revenue and ASR Report Begin Date Format
    [Tags]    LOCALIZATION
    Verify Begin Date Format With Lower Case d      ${DATE FORMAT}

Validate PCR Raw Cost Revenue and ASR Report End Date Format
    [Tags]    LOCALIZATION
    Verify End Date Format With Lower Case d        ${DATE FORMAT}

Validate Click Statement Report Sub Report Item
    [Tags]    LOCALIZATION
    Verify Click Sub Report Item        Statement Report

Validate Statement Report Statement Begin Date Format
    [Tags]    LOCALIZATION
    Verify Begin Date Format      ${DATE FORMAT}

Validate Statement Report Statement End Date Format
    [Tags]    LOCALIZATION
    Verify End Date Format        ${DATE FORMAT}

Validate Click Statement Report Submit Button
    [Tags]    LOCALIZATION
    Verify Click Submit Button

Validate Statement Report's Screen Begin Date Format
    [Tags]    LOCALIZATION
    Verify Report's Begin Date Format      ${DATE FORMAT}

Validate Statement Report's Screen End Date Format
    [Tags]    LOCALIZATION
    Verify Report's End Date Format      ${DATE FORMAT}

Validate Close Statement Report's Screen
    [Tags]    LOCALIZATION
    Verify Close IxReport Window

Validate Close Report Window
    [Tags]    LOCALIZATION
    Verify Close IxReport Window