*** Settings ***
Documentation     [TAENOSIS-794] A Test Suite With Set Of Tests To Validate HomeCountryID System Variable Description

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CONFIG VARIABLE VALUE}      ${EMPTY}

*** Test Cases ***
Validate Navigate to System Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select System Tab
    [Tags]    REGRESSION
    Click on System Tab

Validate Click Configuration Variables Button
    [Tags]    REGRESSION
    Verify Click Configuration Variables Button

Validate Set Variable Name
    [Tags]    REGRESSION
    Verify Set Variable Name    HomeCountryID

Validate Click Configuration Variables Grid Search Button
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Click First Row Info Icon
    [Tags]    REGRESSION
    Verify Click First Row Info Icon

Validate Description of System Variable
    [Tags]    REGRESSION
    Verify Description of System Variable       Specifies the CountryID associated with the home country of the iXTools client. Maps to tbCountry in iXCore_Main.
