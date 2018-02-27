*** Settings ***
Documentation     A Test Suite With Set Of Tests For Business Admin Origin Set Management To Validate Origin Set Creation Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/business_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Business Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Business Admin' From Main Menu

Validate Expand Number Plan Menu
    [Tags]    REGRESSION
    Verify Expand Number Plan Menu

Validate Click Origin Set Submenu
    [Tags]    REGRESSION
    Verify Click Origin Set Submenu

Validate Click New Origin Set Button
    [Tags]    REGRESSION
    Verify Click New Origin Set Button

Validate Set Origin Set For Add New Origin Set
    [Tags]    REGRESSION
    Verify Set Origin Set For Add New Origin Set        ${TEST DATA PREFIX}

Validate Set Rule of Missing A
    [Tags]    REGRESSION
    Verify Set Rule of Missing A        ${RULE OF MISSING A FOR ADD ORIGIN SET}

Validate Set Rule of Invalid A
    [Tags]    REGRESSION
    Verify Set Rule of Invalid A        ${RULE OF MISSING A FOR ADD ORIGIN SET}

Validate Click Edit Origin Set Ok Button
    [Tags]    REGRESSION
    Verify Click Edit Origin Set Ok Button

Validate Click New Settlement Origin Button
    [Tags]    REGRESSION
    Verify Click New Settlement Origin Button

Validate Set Settlement Origin
    [Tags]    REGRESSION
    Verify Set Settlement Origin        ${TEST DATA PREFIX}

Validate Set Begin Date
    [Tags]    REGRESSION
    Verify Set Begin Date       ${NEW SETTLEMENT ORIGIN BEGIN DATE}

Validate Set End Date
    [Tags]    REGRESSION
    Verify Set End Date         ${NEW SETTLEMENT ORIGIN END DATE}

Validate Set Dialed Digit Type
    [Tags]    REGRESSION
    Verify Set Settlement Origin Dialed Digit Type      ${DIALED DIGIT TYPE}

Validate Set Digit 1 Value
    [Tags]    REGRESSION
    Verify Set Digit 1 Value

Validate Click Add Row Button
    [Tags]    REGRESSION
    Verify Click Add Row Button

Validate Set Digit 2 Value
    [Tags]    REGRESSION
    Verify Set Digit 2 Value

Validate Select Origin Sets For New Settlement Origin
    [Tags]    REGRESSION
    ${ORIGIN SET} =     Verify Get Origin Set Name
    Verify Select Origin Sets For New Settlement Origin     ${ORIGIN SET}

Validate Click New Settlement Origin Ok Button
    [Tags]    REGRESSION
    Verify Click New Settlement Origin Ok Button