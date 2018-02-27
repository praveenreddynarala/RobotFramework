*** Settings ***
Documentation     A Test Suite With Set Of Tests To Verify If New Parameters For Traffic Volume Are Available In Create Destibation Formula Screen For Price Policy

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/price_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Price module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Navigate to Price Policies Tab
    [Tags]    REGRESSION
    Verify Select Price Policies Tab

Validate Click Price Policy Grid First Row Checkbox
    [Tags]  REGRESSION
    Verify Click Price Policy Grid First Row Checkbox

Validate Click Formulas Button
    [Tags]    REGRESSION
    Verify Click Formulas Button

Validate Click Create Destination Formula
    [Tags]    REGRESSION
    Verify Click Create Destination Formula

Validate RCVolume_P1 System Parameter For Create Destination Formula Is Available
    [Tags]    REGRESSION
    Verify Specific System Parameter For Create Destination Formula Is Available     ${RCVOLUMEP1 PARAMETER NAME}

Validate RCVolume_P2 System Parameter For Create Destination Formula Is Available
    [Tags]    REGRESSION
    Verify Specific System Parameter For Create Destination Formula Is Available     ${RCVOLUMEP2 PARAMETER NAME}

Validate CustVolume_P1 System Parameter For Create Destination Formula Is Available
    [Tags]    REGRESSION
    Verify Specific System Parameter For Create Destination Formula Is Available     ${CUSTVOLUMEP1 PARAMETER NAME}

Validate CustVolume_P2 System Parameter For Create Destination Formula Is Available
    [Tags]    REGRESSION
    Verify Specific System Parameter For Create Destination Formula Is Available     ${CUSTVOLUMEP2 PARAMETER NAME}

Validate Close Create Price Policy Destination Formula tab
    [Tags]    REGRESSION
    Verify Close Current Pop Up         ${CREATE PRICE POLICY DESTINATION FORMULA POP UP NAME}

