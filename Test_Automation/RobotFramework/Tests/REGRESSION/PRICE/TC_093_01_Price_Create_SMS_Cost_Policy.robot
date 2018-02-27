*** Settings ***
Documentation     A Test Suite With Set Of Tests To Create SMS Cost Policy

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/price_page_test_data_source.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${ROUTE CLASS}      ${EMPTY}

*** Test Cases ***
Validate Navigate to Price module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate The Cost Policies Tab Is Available
    [Tags]    REGRESSION
    Verify The Cost Policies Tab Is Available

Validate Get Created Route Class
    [Tags]    REGRESSION
    ${ROUTE CLASS} =    Verify Get Route Class
    set suite variable      ${ROUTE CLASS}

Validate Navigate to Cost Policies Tab
    [Tags]    REGRESSION
    Click on Cost Policies Tab

Vlidate Click Create New Cost Policy
    [Tags]    REGRESSION
    Verify Click Create New Cost Policy

Validate Set Cost Policy Name
    [Tags]    REGRESSION
    Verify Set Cost Policy Name     ${TEST DATA PREFIX}

Validate Set Abbreviation
    [Tags]    REGRESSION
    Verify Set Cost Policy Abbreviation

Validate Set Cost Policy Status
    [Tags]    REGRESSION
    Verify Set Cost Policy Status       ${COST POLICY ACTIVE STATUS}

Validate Set Cost Policy Type
    [Tags]    REGRESSION
    Verify Set Cost Policy Type     ${COST POLICY TYPE}

Validate Set Call Type
    [Tags]    REGRESSION
    Verify Set Cost Policy Call Type        SMS

Validate Set Route Class
    [Tags]    REGRESSION
    Verify Set Cost Policy Route Class      ${ROUTE CLASS}

Validate Click Create policy Save Button
    [Tags]    REGRESSION
    Verify Click Create Cost Policy Save Button

