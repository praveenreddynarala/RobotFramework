*** Settings ***
Documentation     A Test Suite With Set Of Tests To Verify Country Field Displayed In Grid With Correct Data Commercial Routing Screen

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/route_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/route_page_test_data_source.robot


Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Route module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Route' From Main Menu

Validate Navigate to Commercial Routing Tab
    [Tags]    REGRESSION
    Verify Select Commercial Routing Tab

Validate Click Commercial Routing Grid Search Button
    [Tags]    REGRESSION
    Verify Click Commercial Routing Grid Search Button

Validate The Country Column Is Available In CRGM Grid
    [Tags]    REGRESSION
    Verify The Country Column Is Available In CRGM Grid

Validate Click Override Button
    [Tags]    REGRESSION
    Verify Click Override Button

Validate The Country Column Is Available In Overrides Management Grid
    [Tags]    REGRESSION
    Verify The Country Column Is Available In Overrides Management Grid

Validate Close Overrides Management Tab
    [Tags]    REGRESSION
    Verify Close Current Tab        ${OVERRIDES MANAGEMENT TAB NAME}

Validate Click Inclusion Button
    [Tags]    REGRESSION
    Verify Click Inclusion Button

Validate The Country Column Is Available In Inclusion Management Grid
    [Tags]    REGRESSION
    Verify The Country Column Is Available In Inclusion Management Grid

Validate Close Inclusion Management Tab
    [Tags]    REGRESSION
    Verify Close Current Tab        ${INCLUSION MANAGEMENT TAB NAME}

Validate Click Exclusion Button
    [Tags]    REGRESSION
    Verify Click Exclusion Button

Validate The Country Column Is Available In Exclusion Management Grid
    [Tags]    REGRESSION
    Verify The Country Column Is Available In Exclusion Management Grid