*** Settings ***
Documentation     A Test Suite With Set Of Tests For Localization-Report Module Daily Accounting Reports

Resource          ../../Resources/common_resource.robot
Resource          ../../Resources/Pages/Legacy/ixreport_page_resource.robot
Resource          ../../Resources/Localization/${LOCALE}/localization_settings.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Report Module
    [Tags]    LOCALIZATION
    Verify Switch To IXReport

Validate Expand Daily Accounting Reports Section
    [Tags]    LOCALIZATION
    Verify Expand Reports Section       Daily Accounting Reports

Validate Click Cost Revenue and ASR Sub Report Item
    [Tags]    LOCALIZATION
    Verify Click Sub Report Item        Cost, Revenue and ASR (DA)

Validate Begin Date Format
    [Tags]    LOCALIZATION
    Verify Begin Date Format With Lower Case d      ${DATE FORMAT}

Validate End Date Format
    [Tags]    LOCALIZATION
    Verify End Date Format With Lower Case d        ${DATE FORMAT}

Validate Close IXReport Window
    [Tags]    LOCALIZATION
    Verify Close IxReport Window
