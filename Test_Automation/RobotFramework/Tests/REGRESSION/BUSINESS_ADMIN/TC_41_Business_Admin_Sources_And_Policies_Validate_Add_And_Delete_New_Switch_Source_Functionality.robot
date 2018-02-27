*** Settings ***
Documentation     A Test Suite With Set Of Tests For Business Admin Sources and Policies To Validate Add And Delete New Switch Source Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/business_admin_page_test_data_source.robot

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
    Verify Set Source Type For Search       ${SWITCH SOURCE TYPE}

Validate Click Sources Search Button
    [Tags]    REGRESSION
    Verify Click Sources Search Button

Validate Click Add New Source Button
    [Tags]    REGRESSION
    Verify Click Add New Source Button

Validate Set Source
    [Tags]    REGRESSION
    Verify Set Source       ${TEST DATA PREFIX}

Validate Set Abbreviation
    [Tags]    REGRESSION
    Verify Set Abbreviation     ${TEST DATA PREFIX}

Validate Set Status
    [Tags]    REGRESSION
    Verify Set Status       ${ACTIVE STATUS}

Validate Set Call Type
    [Tags]    REGRESSION
    Verify Set Call Type      ${SWITCH SOURCE CALL TYPE}

Validate Set Note
    [Tags]    REGRESSION
    Verify Set Note     ${SWITCH SOURCE NOTE}

Validate Click Create New Customer Save Button
    [Tags]    REGRESSION
    Verify Click Create New Customer Save Button

Validate Set Source For Search
    [Tags]    REGRESSION
    Verify Set Source For Search

Validate Click Sources Search Button After Create New Source
    [Tags]    REGRESSION
    Verify Click Sources Search Button

Validate Get Reference Account Grid Row Data
    [Tags]    REGRESSION
    Verify Get Switch Grid Row Data

Validate Source Name After Create
    [Tags]    REGRESSION
    Verify Source Name After Create

Validate Abbreviation After Create
    [Tags]    REGRESSION
    Verify Abbreviation After Create

Validate Status After Create
    [Tags]    REGRESSION
    Verify Status After Create      ${ACTIVE STATUS}

Validate Call Type After Reference Account Create
    [Tags]    REGRESSION
    Verify Call Type After Create     ${SWITCH SOURCE CALL TYPE}

Validate Note After Create
    [Tags]    REGRESSION
    Verify Note After Create    ${SWITCH SOURCE NOTE}

Validate Select Created Source Checkbox
    [Tags]    REGRESSION
    Verify Select Created Source Checkbox

Validate Click Delete Button
    [Tags]    REGRESSION
    Verify Click Delete Button

Validate Click Add New Source Button For New Source
    [Tags]    REGRESSION
    Verify Click Add New Source Button

Validate Set Source For New Source
    [Tags]    REGRESSION
    Verify Set Source       ${TEST DATA PREFIX}

Validate Set Abbreviation For New Source
    [Tags]    REGRESSION
    Verify Set Abbreviation     ${TEST DATA PREFIX}

Validate Set Status For New Source
    [Tags]    REGRESSION
    Verify Set Status       ${ACTIVE STATUS}

Validate Set Call Type For New Source
    [Tags]    REGRESSION
    Verify Set Call Type      ${SWITCH SOURCE CALL TYPE}

Validate Set Note For New Source
    [Tags]    REGRESSION
    Verify Set Note     ${SWITCH SOURCE NOTE}

Validate Click Create New Customer Save Button For New Source
    [Tags]    REGRESSION
    Verify Click Create New Customer Save Button