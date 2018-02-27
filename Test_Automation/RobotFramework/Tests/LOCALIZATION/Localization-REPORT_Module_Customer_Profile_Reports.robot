*** Settings ***
Documentation     A Test Suite With Set Of Tests For Localization-Report Module Customer Profile Reports

Resource          ../../Resources/common_resource.robot
Resource          ../../Resources/Pages/Legacy/ixreport_page_resource.robot
Resource          ../../Resources/Localization/${LOCALE}/localization_settings.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Report Module
    [Tags]    LOCALIZATION
    Verify Switch To IXReport

Validate Expand Customer Profile Reports Section
    [Tags]    LOCALIZATION
    Verify Expand Reports Section       Customer Profile Reports

Validate Click Customer Price History Sub Report Item
    [Tags]    LOCALIZATION
    Verify Click Sub Report Item        Customer Price History

Validate Begin Date Format
    [Tags]    LOCALIZATION
    Verify Begin Date Format         ${DATE FORMAT}

Validate End Date Format
    [Tags]    LOCALIZATION
    Verify End Date Format           ${DATE FORMAT}

Validate Close IXReport Window
    [Tags]    LOCALIZATION
    Verify Close IxReport Window