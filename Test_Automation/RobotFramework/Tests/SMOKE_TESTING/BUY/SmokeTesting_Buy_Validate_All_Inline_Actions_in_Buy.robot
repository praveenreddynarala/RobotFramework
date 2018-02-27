*** Settings ***
Documentation     A Test Suite With Set Of Tests For Smoke Testing Buy To Validate All Inline Actions in Buy

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/buy_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/buy_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate navigate to Buy module
    [Tags]    SMOKE TESTING
    Click on Home Icon and Select 'Buy' From Main Menu

Validate Navigate To Vendors Tab
    [Tags]    SMOKE TESTING
    Verify Click On Vendors Tab

Validate Click Vendors Grid First Row Inline Action Button
    [Tags]    SMOKE TESTING
    Verify Click Vendors Grid First Row Inline Action Button

Validate Vendor Profile is Available
    [Tags]    SMOKE TESTING
    Verify Vendor Profile is Available

Validate Vendor Rates Is Available
    [Tags]    SMOKE TESTING
    Verify Vendor Rates is Available

Validate Vendor Digits Is Available
    [Tags]    SMOKE TESTING
    Verify Vendor Digits is Available

Validate Vendor Destination is Available
    [Tags]    SMOKE TESTING
    Verify Vendor Destination is Available

Validate Upload Vendor Price List is Available
    [Tags]    SMOKE TESTING
    Verify Upload Vendor Price List is Available

Validate Select Vendor Profile Inline Action Item
    [Tags]    SMOKE TESTING
    Verify Select Buy Page Inline Action Item        ${VENDOR PROFILE INLINE ITEM NAME}

Validate Vendor Profile Page Loaded Properly
    [Tags]    SMOKE TESTING
    Verify Vendor Profile Page is Loaded Properly

Validate Close Vendor Profile Tab
    [Tags]    SMOKE TESTING
    Verify Close Current Tab        ${VENDOR PROFILE TAB NAME}

Validate Click Vendors Grid First Row Inline Action Button For Rates
    [Tags]    SMOKE TESTING
    Verify Click Vendors Grid First Row Inline Action Button

Validate Select Vendor Rates Inline Action Item
    [Tags]    SMOKE TESTING
    Verify Select Buy Page Inline Action Item        ${VENDOR RATES INLINE ITEM NAME}

Validate Vendor Rates Page Loaded Properly
    [Tags]    SMOKE TESTING
    Verify Rates Page Loaded Properly

Validate Close Vendor Rates Tab
    [Tags]    SMOKE TESTING
    Verify Close Current Tab        ${VENDOR PROFILE TAB NAME}

Validate Click Vendors Grid First Row Inline Action Button For Digits
    [Tags]    SMOKE TESTING
    Verify Click Vendors Grid First Row Inline Action Button

Validate Select Vendor Digits Inline Action Item
    [Tags]    SMOKE TESTING
    Verify Select Buy Page Inline Action Item        ${VENDOR DIGITS INLINE ITEM NAME}

Validate Vendor Digits Page Loaded Properly
    [Tags]    SMOKE TESTING
    Verify Dialed Digits Page Loaded Properly

Validate Close Vendor Digits Tab
    [Tags]    SMOKE TESTING
    Verify Close Current Tab        ${VENDOR PROFILE TAB NAME}

Validate Click Vendors Grid First Row Inline Action Button For Destinations
    [Tags]    SMOKE TESTING
    Verify Click Vendors Grid First Row Inline Action Button

Validate Select Vendor Destinations Inline Action Item
    [Tags]    SMOKE TESTING
    Verify Select Buy Page Inline Action Item        ${VENDOR DESTINATION INLINE ITEM NAME}

Validate Vendor Destinations Page Loaded Properly
    [Tags]    SMOKE TESTING
    Verify Destinations Page Loaded Properly

Validate Close Vendor Destinations Tab
    [Tags]    SMOKE TESTING
    Verify Close Current Tab        ${VENDOR PROFILE TAB NAME}

Validate Click Vendors Grid First Row Inline Action Button For Upload Vendor Price List
    [Tags]    SMOKE TESTING
    Verify Click Vendors Grid First Row Inline Action Button

Validate Select Upload Vendor Price List Inline Action Item
    [Tags]    SMOKE TESTING
    Verify Select Buy Page Inline Action Item        ${UPLOAD VENDOR PRICE LIST INLINE ITEM NAME}

Validate Upload Vendor Price List Pop Up Is Available
    [Tags]    SMOKE TESTING
    Verify Upload Vendor Price List Pop Up Is Available

Validate Close Upload Vendor Price List Pop Up
    [Tags]    SMOKE TESTING
    Verify Close Current Pop Up     ${UPLOAD VENDOR PRICE LIST POP UP NAME}