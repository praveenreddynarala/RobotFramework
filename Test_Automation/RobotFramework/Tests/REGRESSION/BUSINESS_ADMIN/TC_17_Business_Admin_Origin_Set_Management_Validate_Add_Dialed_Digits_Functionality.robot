*** Settings ***
Documentation     A Test Suite With Set Of Tests For Business Admin Origin Set Management To Validate Add Dialed Digits Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/business_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${ORIGIN SET}           ${EMPTY}
${SETTLEMENT ORIGIN}    ${EMPTY}

*** Test Cases ***
Validate Navigate to Business Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Business Admin' From Main Menu

Validate Get Origin Set Name
    [Tags]    REGRESSION
    ${ORIGIN SET} =     Verify Get Origin Set Name
    set suite variable      ${ORIGIN SET}

Validate Get Settlement Origin Name
    [Tags]    REGRESSION
    ${SETTLEMENT ORIGIN} =     Verify Get Settlement Origin Name
    set suite variable      ${SETTLEMENT ORIGIN}

Validate Expand Number Plan Menu
    [Tags]    REGRESSION
    Verify Expand Number Plan Menu

Validate Click Origin Set Submenu
    [Tags]    REGRESSION
    Verify Click Origin Set Submenu

Validate Click Add Dialed Digits Button
    [Tags]    REGRESSION
    Verify Click Add Dialed Digits Button

Validate Set Begin Date
    [Tags]    REGRESSION
    Verify Set Begin Date       ${ADD DIALED DIGITS BEGIN DATE}

Validate Set End Date
    [Tags]    REGRESSION
    Verify Set End Date     ${ADD DIALED DIGITS END DATE}

Validate Set Dialed Digit Type
    [Tags]    REGRESSION
    Verify Set Dialed Digit Type        ${DIAL DIGIT TYPE FOR ADD DIALED DIGITS}

Validate Set Digit 1 Value
    [Tags]    REGRESSION
    Verify Set Digit 1 Value

Validate Click Next Button
    [Tags]    REGRESSION
    Verify Click Next Button

Validate Select Origin Sets For Add Dialed Digits
    [Tags]    REGRESSION
    Verify Select Origin Sets For Add Dialed Digits     ${ORIGIN SET}

Validate Select Settlement Origins For Add Dialed Digits
    [Tags]    REGRESSION
    Verify Select Settlement Origins For Add Dialed Digits      ${SETTLEMENT ORIGIN}

Validate Click Add Dialed Digits Ok Button
    [Tags]    REGRESSION
    Verify Click Add Dialed Digits Ok Button

Validate Set Origin Set For Search
    [Tags]    REGRESSION
    Verify Set Origin Set For Search        ${ORIGIN SET}

Validate Set Settlement Origin For Search
    [Tags]    REGRESSION
    Verify Set Settlement Origin For Search     ${SETTLEMENT ORIGIN}

Validate Set Dialed Digit For Search
    [Tags]    REGRESSION
    Verify Set Dialed Digit For Search

Validate Click Origin Set Search Button
    [Tags]    REGRESSION
    Verify Click Origin Set Search Button

Validate Get Origin Set Grid Row Data
    [Tags]    REGRESSION
    Verify Get Origin Set Grid Row Data

Validate Origin Set After Create
    [Tags]    REGRESSION
    Verify Origin Set After Create      ${ORIGIN SET}

Validate Settlement Origin After Create
    [Tags]    REGRESSION
    Verify Settlement Origin After Create       ${SETTLEMENT ORIGIN}

Validate Dialed Digit After Create
    [Tags]    REGRESSION
    Verify Dialed Digit After Create

Validate Begin Date After Create
    [Tags]    REGRESSION
    Verify Begin Date After Create      ${ADD DIALED DIGITS BEGIN DATE}