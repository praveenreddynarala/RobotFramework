*** Settings ***
Documentation     A Test Suite With Set Of Tests For Business Admin Origin Set Management To Validate Origin Settlement Creation

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/business_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${ORIGIN SET}           ${EMPTY}

*** Test Cases ***
Validate Navigate to Business Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Business Admin' From Main Menu

Validate Get Origin Set Name
    [Tags]    REGRESSION
    ${ORIGIN SET} =     Verify Get Origin Set Name
    set suite variable      ${ORIGIN SET}

Validate Expand Number Plan Menu
    [Tags]    REGRESSION
    Verify Expand Number Plan Menu

Validate Click Origin Set Submenu
    [Tags]    REGRESSION
    Verify Click Origin Set Submenu

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
    Verify Select Origin Sets For New Settlement Origin     ${ORIGIN SET}

Validate Click New Settlement Origin Ok Button
    [Tags]    REGRESSION
    Verify Click New Settlement Origin Ok Button

Validate Set Origin Set For Search
    [Tags]    REGRESSION
    Verify Set Origin Set For Search        ${ORIGIN SET}

Validate Generate Settlement Origin
    [Tags]    REGRESSION
    Verify Generate Settlement Origin       ${ORIGIN SET}

Validate Set Settlement Origin For Settlement Orign Search
    [Tags]    REGRESSION
    Verify Set Settlement Origin For Settlement Orign Search

Validate Set Dialed Digit 1 For Search
    [Tags]    REGRESSION
    Verify Set Dialed Digit For Search

Validate Click Origin Set Search Button For Digit 1
    [Tags]    REGRESSION
    Verify Click Origin Set Search Button

Validate Search Results Displayed In The Grid For Digit 1
    [Tags]    REGRESSION
    Verify Search Results Displayed In The Grid

Validate Set Dialed Digit 2 For Search
    [Tags]    REGRESSION
    Verify Set Dialed Digit 2 For Search

Validate Click Origin Set Search Button For Digit 2
    [Tags]    REGRESSION
    Verify Click Origin Set Search Button

Validate Search Results Displayed In The Grid For Digit 2
    [Tags]    REGRESSION
    Verify Search Results Displayed In The Grid