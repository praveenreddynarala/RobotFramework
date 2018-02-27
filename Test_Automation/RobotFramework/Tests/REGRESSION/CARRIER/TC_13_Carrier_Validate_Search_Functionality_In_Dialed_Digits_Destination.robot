*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Search Functionality In Dialed Digits Destination of Carrier

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/carrier_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CARRIER NAME}           ${EMPTY}

*** Test Cases ***
Validate Navigate to Carrier module
    [Tags]  REGRESSION
    Click on Home Icon and Select 'Carrier' From Main Menu

Validate Get Created Carrier Name
    [Tags]    REGRESSION
    ${CARRIER NAME} =       Verify Get Created Carrier Name
    set suite variable      ${CARRIER NAME}

Validate Filter Carriers Grid
    [Tags]  REGRESSION
    carrier_page_resource.Verify Grid Filter Details    ${CARRIER NAME COLUMN NAME}     ${CARRIER NAME}

Validate Click Carrier Page Inline Action Button
    [Tags]  REGRESSION
    Verify Click Carrier Page Inline Action Button      ${CARRIER NAME}

Validate Select Carrier Page Inline Action Item
    [Tags]  REGRESSION
    Verify Select Item From Inline Action       ${CARRIER DIALED DIGITS INLINE ITEM}

Validate Set Business Type For Dialed Digits Search
    [Tags]  REGRESSION
    Verify Set Business Type For Dialed Digits Search       ${DIALED DIGITS BUSINESS TYPE}

Valdiate Set Number Plan Type For Dialed Digits Search
    [Tags]  REGRESSION
    Verify Set Number Plan Type For Dialed Digits Search        ${DIALED DIGITS NUMBER PLAN TYPE}

Validate Set Number Plan For Dialed Digits Search
    [Tags]  REGRESSION
    Verify Set Number Plan For Dialed Digits Search       @{DIALED DIGITS NUMBER PLAN}

Validate Set Destination For Dialed Digits Search
    [Tags]  REGRESSION
    Verify Set Destination For Dialed Digits Search     ${DIALED DIGITS DESTINATION}

Validate Set Dialed Digits For Dialed Digits Search
    [Tags]  REGRESSION
    Verify Set Dialed Digits For Dialed Digits Search       ${DIALED DIGIT}

Validate Set Begin Date For Dialed Digits Search
    [Tags]  REGRESSION
    Verify Set Begin Date For Dialed Digits Search      ${DIALED DIGITS BEGIN DATE}

Validate Set End Date For Dialed Digits Search
    [Tags]  REGRESSION
    Verify Set End Date For Dialed Digits Search        ${DIALED DIGITS END DATE}

Validate Click Dialed Digits Search Button
    [Tags]  REGRESSION
    Verify Click Dialed Digits Search Button

Validate Data Is Loaded In Dialed Digits Grid
    [Tags]  REGRESSION
    Verify Data Is Loaded In The Grid

Validate Click Destinations Tab
    [Tags]  REGRESSION
    Verify Click Destinations Tab

Validate Set Country For Destinations Search
    [Tags]  REGRESSION
    Verify Set Country For Destinations Search      @{COUNTRY FOR DESTINATIONS SEARCH}

Validate Set Destination For Destinations Search
    [Tags]  REGRESSION
    Verify Set Destination For Destinations Search      ${DESTINATION FOR DESTINATIONS SEARCH}

Validate Set Number Plan For Destinations Search
    [Tags]  REGRESSION
    Verify Set Number Plan For Destinations Search      @{DESTINATIONS NUMBER PLAN}

Validate Set Begin Date For Destinations Search
    [Tags]  REGRESSION
    Verify Set Begin Date For Destinations Search       ${DESTINATIONS BEGIN DATE}

Validate Set End Date For Destinations Search
    [Tags]  REGRESSION
    Verify Set End Date For Destinations Search     ${DESTINATIONS END DATE}

Validate Click Destinations Search Button
    [Tags]  REGRESSION
    Verify Click Destinations Search Button

Validate Data Is Loaded In Destinatiosn Grid
    [Tags]  REGRESSION
    Verify Data Is Loaded In The Grid