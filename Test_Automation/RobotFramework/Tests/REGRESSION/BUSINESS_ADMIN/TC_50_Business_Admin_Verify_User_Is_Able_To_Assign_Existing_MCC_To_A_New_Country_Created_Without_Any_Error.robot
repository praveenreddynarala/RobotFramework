*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate User Is Able To Assign Existing MCC To A New Country Created Without Any Error

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/business_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${REGION NAME}      ${EMPTY}
${EXISTING MCC}     ${EMPTY}

*** Test Cases ***
Validate Navigate to Business Admin module
    [Tags]    REGRESSION
    click on home icon and select 'business admin' from main menu

Validate Get Region Name
    [Tags]    REGRESSION
    ${REGION NAME} =     Verify Get Region Name
    set suite variable      ${REGION NAME}

Validate The Business Admin Dashboard Tab Is Available
    [Tags]    REGRESSION
    Verify The Business Admin Dashboard Tab Is Available

Validate Expand Number Plan Menu
    [Tags]    REGRESSION
    Verify Expand Number Plan Menu

Validate Click Country Submenu
    [Tags]    REGRESSION
    Verify Click Country Submenu

Validate Get Existing MCC
    [Tags]    REGRESSION
    ${EXISTING MCC} =     Verify Get Countries Grid Existing MCC
    set suite variable      ${EXISTING MCC}

Validate Click New Country Button
    [Tags]    REGRESSION
    Verify Click New Country Button

Validate Set New Country Region
    [Tags]    REGRESSION
    Verify Set New Country Region       ${REGION NAME}

Validate Set New Country Country Name
    [Tags]    REGRESSION
    Verify Set New Country Country Name     ${TEST DATA PREFIX}      ${NEW COUNTRY COUNTRY NAME}

Validate Set New Country Country Abbreviation
    [Tags]    REGRESSION
    Verify Set New Country Country Abbreviation     ${TEST DATA PREFIX}

Validate Set New Country Country Code
    [Tags]    REGRESSION
    Verify Set New Country Country Code

Validate Set New Country Mobile Country Code
    [Tags]    REGRESSION
    Verify Set Existing Mobile Country Code         ${EXISTING MCC}

Validate Set New Country Country Type
    [Tags]    REGRESSION
    Verify Set New Country Country Type     ${NEW COUNTRY COUNTRY TYPE}

Validate Click New Country Save Button
    [Tags]    REGRESSION
    Verify Click New Country Save Button