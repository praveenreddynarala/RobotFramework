*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Behavior of DefaultOverridePeriod Config For Removing Enddate

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/route_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/route_page_test_data_source.robot

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
    Verify Set Variable Name    DefaultOverridePeriod

Validate Click Configuration Variables Grid Search Button
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Get Current Value Column Value
    [Tags]    REGRESSION
    ${CONFIG VARIABLE VALUE} =    Verify Get Current Value Column Value
    set suite variable      ${CONFIG VARIABLE VALUE}

Validate Set Value In Current Value Column
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        8

Validate Close System Admin Window
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to Route module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Route' From Main Menu

Validate Select Commercial Routing Tab
    [Tags]    REGRESSION
    Verify Select Commercial Routing Tab

Validate Click Search Button
    [Tags]    REGRESSION
    Verify Click Commercial Routing Grid Search Button

Validate Click Commercial Routing Grid First Row Routing Product Link
    [Tags]    REGRESSION
    Verify Click Commercial Routing Grid First Row Routing Product Link

Validate Set Route Guide Grid Override
    [Tags]    REGRESSION
    Verify Set Route Guide Grid Override   ${OVERRIDE RANK}

Validate Set Route Guide Grid End Date
    [Tags]    REGRESSION
    Verify Set Route Guide Grid End Date   ${EMPTY}

Validate Click Save And Recalculate Button
    [Tags]    REGRESSION
    Verify Click Save And Recalculate Button

Validate Click Commercial Routing Grid First Row Routing Product Link For Verification
    [Tags]    REGRESSION
    Verify Click Commercial Routing Grid First Row Routing Product Link

Validate Route Guide Grid End Date
    [Tags]    REGRESSION
    Verify Route Guide Grid End Date   ${EMPTY}

Validate Close Route Window
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to System Admin module For Reset
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select System Tab For Reset
    [Tags]    REGRESSION
    Click on System Tab

Validate Click Configuration Variables Button For Reset
    [Tags]    REGRESSION
    Verify Click Configuration Variables Button

Validate Set Variable Name To Set iXToolsWholesaleSolutionType For Reset
    [Tags]    REGRESSION
    Verify Set Variable Name    DefaultOverridePeriod

Validate Click Configuration Variables Grid Search Button For Reset
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Set Value In Current Value Column For Reset
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        ${CONFIG VARIABLE VALUE}

Validate Close System Admin Window After Setting iXToolsWholesaleSolutionType For Reset
    [Tags]    REGRESSION
    Verify Close System Admin Window