*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Create New Origin Reference Price List Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/business_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Business Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Business Admin' From Main Menu

Validate Expand Trading Menu
    [Tags]    REGRESSION
    Verify Expand Trading Menu

Validate Click Source And Policies Submenu
    [Tags]    REGRESSION
    Verify Click Source And Policies Submenu

Validate Set Source Type For Search
    [Tags]    REGRESSION
    Verify Set Source Type For Search    ${ORIGIN REFERENCE PRICE LIST SOURCE TYPE}

Validate Click Sources Search Button
    [Tags]    REGRESSION
    Verify Click Sources Search Button

Validate Click Add New Source Button
    [Tags]    REGRESSION
    Verify Click Add New Source Button

Validate Set Source
    [Tags]    REGRESSION
    Verify Set Source    ${TEST DATA PREFIX}

Validate Set Abbreviation
    [Tags]    REGRESSION
    Verify Set Abbreviation    ${TEST DATA PREFIX}

Validate Set Status
    [Tags]    REGRESSION
    Verify Set Status    ${ACTIVE STATUS}

Validate Set Call Type
    [Tags]    REGRESSION
    Verify Set Call Type    SMS

Validate Set Note
    [Tags]    REGRESSION
    Verify Set Note    ${NOTE FOR ADD ORIGIN REFERENCE PRICE LIST}

Validate Click Create New Customer Save Button
    [Tags]    REGRESSION
    Verify Click Create New Customer Save Button
