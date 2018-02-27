*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Country Filter for SMS Containing Countries that do not have MobileCountryCodes in tbCountry

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

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

Validate Set Scope
    [Tags]    REGRESSION
    Verify Set Scope        General

Validate Set Variable Name
    [Tags]    REGRESSION
    Verify Set Variable Name    iXToolsWholesaleSolutionType

Validate Click Configuration Variables Grid Search Button
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        2

Validate Close System Admin Window
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to Sell module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Sell' From Main Menu

Validate Click Country Goup Link
    [Tags]    REGRESSION
    Verify Click Country Group Link

Validate Country Dropdown Does Not Show Country Having No Country Code
    [Tags]    REGRESSION
    @{COUNTRIES} =   Verify Get Countries From tbcountry Having No Mobile Country Code       ${DATABASE SERVER}      ${DATABASE}      ${DATABASE USERNAME}      ${DATABASE PASSWORD}
    Verify Country Dropdown Does Not Show Country Having No Country Code      @{COUNTRIES}

Validate Navigate to System Admin module to Revert Back The Value
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select System Tab to Revert Back The Value
    [Tags]    REGRESSION
    Click on System Tab

Validate Click Configuration Variables Button to Revert Back The Value
    [Tags]    REGRESSION
    Verify Click Configuration Variables Button

Validate Set Scope to Revert Back The Value
    [Tags]    REGRESSION
    Verify Set Scope        General

Validate Set Variable Name to Revert Back The Value
    [Tags]    REGRESSION
    Verify Set Variable Name    iXToolsWholesaleSolutionType

Validate Click Configuration Variables Grid Search Button to Revert Back The Value
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column to Revert Back The Value
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        3

Validate Close System Admin Window After Revert Back The Value
    [Tags]    REGRESSION
    Verify Close System Admin Window
