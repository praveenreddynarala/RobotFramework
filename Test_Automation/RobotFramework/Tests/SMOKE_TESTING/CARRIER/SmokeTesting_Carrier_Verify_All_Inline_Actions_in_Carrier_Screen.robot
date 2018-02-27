*** Settings ***
Documentation     A Test Suite With Set Of Tests For Smoke Testing Carrier To Verify All Inline Actions In Carrier Screen

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/carrier_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Carrier module
    [Tags]    SMOKE TESTING
    Click on Home Icon and Select 'Carrier' From Main Menu

Validate Click Carriers Page First Row Inline Action Button For Carrier Profile
    [Tags]    SMOKE TESTING
    Verify Click Carriers Page First Row Inline Action Button

Validate Select Carrier Profile Inline Action Item
    [Tags]    SMOKE TESTING
    Verify Select Inline Action Item        ${CARRIER PROFILE INLINE ITEM}

Validate Carrier Profile Page Is Loaded Properly
    [Tags]    SMOKE TESTING
    Verify Carrier Profile Page Is Loaded Properly

Validate Click Save Carrier Profile Button
    [Tags]    SMOKE TESTING
    Verify Click Save Carrier Profile Button

Validate Close Carrier Profile Tab
    [Tags]    SMOKE TESTING
    Verify Close Current Tab        ${CARRIER PROFILE TAB NAME}

Validate Click Carriers Page First Row Inline Action Button For Carrier Relationships
    [Tags]    SMOKE TESTING
    Verify Click Carriers Page First Row Inline Action Button

Validate Select Carrier Relationships Inline Action Item
    [Tags]    SMOKE TESTING
    Verify Select Inline Action Item        ${CARRIER RELATIONSHIPS INLINE ITEM}

Validate Carrier Relationships Page Is Loaded Properly
    [Tags]    SMOKE TESTING
    Verify Carrier Relationships Tab Loaded Properly

Validate Close Carrier Relationships Tab
    [Tags]    SMOKE TESTING
    Verify Close Current Tab        ${CARRIER PROFILE TAB NAME}

Validate Click Carriers Page First Row Inline Action Button For Carrier Dialed Digits
    [Tags]    SMOKE TESTING
    Verify Click Carriers Page First Row Inline Action Button

Validate Select Carrier Dialed Digits Inline Action Item
    [Tags]    SMOKE TESTING
    Verify Select Inline Action Item        ${CARRIER DIALED DIGITS INLINE ITEM}

Validate Carrier Dialed Digits Page Is Loaded Properly
    [Tags]    SMOKE TESTING
    Verify Dialed Digits Tab Loaded Properly

Validate Click Dialed Digits Page Search Button
    [Tags]    SMOKE TESTING
    Verify Click Dialed Digits Search Button

Validate Dialed Digits Search Is Successful
    [Tags]    SMOKE TESTING
    Verify Dialed Digits Search Is Successful

Validate Close Carrier Dialed Digits Tab
    [Tags]    SMOKE TESTING
    Verify Close Current Tab        ${CARRIER PROFILE TAB NAME}

Validate Click Carriers Page First Row Inline Action Button For Carrier Rates
    [Tags]    SMOKE TESTING
    Verify Click Carriers Page First Row Inline Action Button

Validate Select Carrier Rates Inline Action Item
    [Tags]    SMOKE TESTING
    Verify Select Inline Action Item        ${CARRIER RATES INLINE ITEM}

Validate Carrier Rates Page Is Loaded Properly
    [Tags]    SMOKE TESTING
    Verify Rates Tab Loaded Properly

Validate Click Rates Page Search Button
    [Tags]    SMOKE TESTING
    Verify Click Rates Page Search Button

Validate Rates Search Is Successful
    [Tags]    SMOKE TESTING
    Verify Rates Search Is Successful

Validate Close Carrier Rates Tab
    [Tags]    SMOKE TESTING
    Verify Close Current Tab        ${CARRIER PROFILE TAB NAME}

Validate Click Carriers Page First Row Inline Action Button For Carrier Destinations
    [Tags]    SMOKE TESTING
    Verify Click Carriers Page First Row Inline Action Button

Validate Select Carrier Destinations Inline Action Item
    [Tags]    SMOKE TESTING
    Verify Select Inline Action Item        ${CARRIER DESTINATION INLINE ITEM}

Validate Carrier Destinations Page Is Loaded Properly
    [Tags]    SMOKE TESTING
    Verify Destinations Tab Loaded Properly

Validate Click Destinations Page Search Button
    [Tags]    SMOKE TESTING
    Verify Click Destinations Search Button

Validate Destinations Search Is Successful
    [Tags]    SMOKE TESTING
    Verify Destinations Search Is Successful

Validate Close Carrier Destinations Tab
    [Tags]    SMOKE TESTING
    Verify Close Current Tab        ${CARRIER PROFILE TAB NAME}

Validate Click Carriers Page First Row Inline Action Button For Price List History
    [Tags]    SMOKE TESTING
    Verify Click Carriers Page First Row Inline Action Button

Validate Select Price List History Inline Action Item
    [Tags]    SMOKE TESTING
    Verify Select Inline Action Item        ${PRICE LISTS HISTORY INLINE ITEM}

Validate Price List History Page Is Loaded Properly
    [Tags]    SMOKE TESTING
    Verify Price List History Page Is Loaded Properly

Validate Click Price List History Page Search Button
    [Tags]    SMOKE TESTING
    Verify Click Price Lists History Search Button

Validate Price List History Search Is Successful
    [Tags]    SMOKE TESTING
    Verify Price List History Search Is Successful

Validate Close Price List History Tab
    [Tags]    SMOKE TESTING
    Verify Close Current Tab        ${PRICE LISTS HISTORY TAB NAME}