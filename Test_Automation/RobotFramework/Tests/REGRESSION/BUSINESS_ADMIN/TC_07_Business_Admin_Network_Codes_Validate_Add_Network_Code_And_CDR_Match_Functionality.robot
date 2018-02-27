*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Add Network Code And CDR Match Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/business_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Business Admin module
    [Tags]    REGRESSION
    click on home icon and select 'business admin' from main menu

Validate Get Network Destination
    [Tags]    REGRESSION
    Verify Get Network Destination

Validate The Business Admin Dashboard Tab Is Available
    [Tags]    REGRESSION
    Verify The Business Admin Dashboard Tab Is Available

Validate Expand Number Plan Menu
    [Tags]    REGRESSION
    Verify Expand Number Plan Menu

Validate Click Network Codes Submenu
    [Tags]    REGRESSION
    Verify Click Network Codes Submenu

Validate Set Created Network Destination For Search
    [Tags]    REGRESSION
    Verify Set Created Network Destination For Search

Validate Click Search Button
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Click Network Destinations Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Network Destinations Grid First Row Inline Action Button

Validate Select View Edit Network Code Inline Item
    [Tags]    REGRESSION
    Verify Select Country Group Grid Inline Action Item         ${VIEW EDIT NETWORK CODES INLINE ITEM}

Validate Click Add Network Code Button
    [Tags]    REGRESSION
    Verify Click Add Network Code Button

Validate Set Network Code
    [Tags]    REGRESSION
    Verify Set Network Code                 ${TEST DATA PREFIX}

Validate Set Network Code Begin Date
    [Tags]    REGRESSION
    Verify Set Network Code Begin Date

Validate Set Network Code End Date
    [Tags]    REGRESSION
    Verify Set Network Code End Date

Validate Click Network Code Save Changes Button
    [Tags]    REGRESSION
    Verify Click Network Code Save Changes Button

Validate Click Network Codes Grid Inline Action Button
    [Tags]    REGRESSION
    Verify Click Network Codes Grid Inline Action Button

Validate Select View Edit CDR Match Inline Item
    [Tags]    REGRESSION
    Verify Select Country Group Grid Inline Action Item         ${VIEW EDIT CDR MATCHES INLINE ITEM}

Validate Click Add Cdr Match Button
    [Tags]    REGRESSION
    Verify Click Add Cdr Match Button

Validate Set Cdr Match
    [Tags]    REGRESSION
    Verify Set Cdr Match                ${CDR MATCH}

Validate Set Cdr Match Begin Date
    [Tags]    REGRESSION
    Verify Set Cdr Match Begin Date

Validate Set Cdr Match End Date
    [Tags]    REGRESSION
    Verify Set Cdr Match End Date

Validate Click Cdr Match Save Changes Button
    [Tags]    REGRESSION
    Verify Click Cdr Match Save Changes Button

Validate Click Cdr Matches Grid Inline Action Button
    [Tags]    REGRESSION
    Verify Click Cdr Matches Grid Inline Action Button      ${CDR MATCH}

Validate Select Cdr Match Delete Inline Item
    [Tags]    REGRESSION
    Verify Select Cdr Match Delete Inline Item

Validate Close CDR Matches Pop Up
    [Tags]    REGRESSION
    Verify Close Current Pop Up         ${CDR MATCHES POPUP NAME}

Validate Click Network Codes Grid Inline Action Button To Delete
    [Tags]    REGRESSION
    Verify Click Network Codes Grid Inline Action Button

Validate Select Network Code Delete Inline Item
    [Tags]    REGRESSION
    Verify Select Network Code Delete Inline Item

Validate Close Network Codes Pop Up
    [Tags]    REGRESSION
    Verify Close Current Pop Up         ${NETWORK CODES POPUP NAME}

Validate Click Save Changes Button Without Confirmation
    [Tags]    REGRESSION
    Verify Click Save Changes Button Without Confirmation
