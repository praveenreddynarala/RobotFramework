*** Settings ***
Documentation     [TAENOSIS-973] A Test Suite With Set Of Tests To Validate Creating New Target Buy Policy Screen

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/buy_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/buy_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CALL TYPE}            ${EMPTY}

*** Test Cases ***
Validate navigate to Buy module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Buy' From Main Menu

Validate Target Buy Policies Tab Is Displayed
    [Tags]    REGRESSION
    Verify Target Buy Policies Tab Is Displayed

Validate Select Target Buy Policies Tab
    [Tags]    REGRESSION
    Verify Select Target Buy Policies Tab

Validate Click Create New Target Buy Policy Button
    [Tags]    REGRESSION
    Verify Click Create New Target Buy Policy Button

Validate Set Target Buy Policy Name
    [Tags]    REGRESSION
    Verify Set Target Buy Policy Name      ${TEST DATA PREFIX}

Validate Set Target Buy Policy Abbreviation
    [Tags]    REGRESSION
    Verify Set Target Buy Policy Abbreviation    ${TEST DATA PREFIX}

Validate Set Target Buy Policy Call Type
    [Tags]    REGRESSION
    ${CALL TYPE} =      system_admin_page_resource.Verify Get Call Type
    Verify Set Call Type        ${CALL TYPE}
    set suite variable          ${CALL TYPE}

Validate Click Include CLI Checkbox
    [Tags]    REGRESSION
    Verify Click Include CLI Checkbox

Validate Click Automate Generation Checkbox
    [Tags]    REGRESSION
    Verify Click Automate Generation Checkbox

Validate Set Target Buy Policy Type
    [Tags]    REGRESSION
    Verify Set Target Buy Policy Type       Formula

Validate Set Route Class to Create New Target Buy Policy
    [Tags]    REGRESSION
    Verify Set Route Class to Create New Target Buy Policy    ${PREMIUM ROUTE CLASS}

Validate Click Save Target Buy Policy Button
    [Tags]    REGRESSION
    Verify Click Save Target Buy Policy Button

Validate Close Target Buy Policy Tab
    [Tags]    REGRESSION
    buy_page_resource.Verify Close Current Tab        ${TARGET BUY POLICY TAB NAME}

Validate Filter Target Buy Policy Grid
    [Tags]    REGRESSION
    ${TARGET BUY POLICY} =      Verify Get Created Target Buy Policy
    buy_page_resource.Verify Grid Filter Details      ${TARGET BUY POLICY GRID COLUMN NAME}           ${TARGET BUY POLICY}

Validate Target Buy Policy Grid Details
    [Tags]    REGRESSION
    Verify Target Buy Policy Grid Row Details       ${ACTIVE STATUS}       Formula     ${CALL TYPE}        ${PREMIUM ROUTE CLASS}

Validate Click Target Buy Policy Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Target Buy Policy Grid First Row Inline Action Button

Validate Select View Target Buy Policy Inline Action Item
    [Tags]    REGRESSION
    buy_page_resource.Verify Select Inline Action Item        ${VIEW TARGET BUY POLICY INLINE ITEM}

Validate Click Edit Target Buy Policy Button
    [Tags]    REGRESSION
    Verify Click Edit Target Buy Policy Button

Validate Edit Target Buy Policy Type Uploaded
    [Tags]    REGRESSION
    Verify Set Target Buy Policy Type       Uploaded

Validate Edit Target Buy Policy Status
    [Tags]    REGRESSION
    Verify Set Vendor Profile Status      ${INACTIVE STATUS}

Validate Click Cancel Edited Target Buy Policy Button
    [Tags]    REGRESSION
    Verify Click Cancel Edited Target Buy Policy Button

Validate Click Edit Target Buy Policy Button to Edit The Fields
    [Tags]    REGRESSION
    Verify Click Edit Target Buy Policy Button

Validate Set Target Buy Policy Type Uploaded
    [Tags]    REGRESSION
    Verify Set Target Buy Policy Type       Uploaded

Validate Set Target Buy Policy Status
    [Tags]    REGRESSION
    Verify Set Vendor Profile Status      ${INACTIVE STATUS}

Validate Click Save Edited Target Buy Policy Button
    [Tags]    REGRESSION
    Verify Click Save Edited Target Buy Policy Button

Validate Close Edited Target Buy Policy Tab
    [Tags]    REGRESSION
    buy_page_resource.Verify Close Current Tab        ${TARGET BUY POLICY TAB NAME}

Validate Refresh Buy Window
    [Tags]    REGRESSION
    Verify Refresh Buy Window

Validate Navigate to Target Buy Policies
    [Tags]    REGRESSION
    Verify Select Target Buy Policies Tab

Validate Clear Status Column Filter
    [Tags]    REGRESSION
    Verify Clear All Table Filters          Status

Validate Filter Target Buy Policy Grid After Edit Operation
    [Tags]    REGRESSION
    ${TARGET BUY POLICY} =      Verify Get Created Target Buy Policy
    buy_page_resource.Verify Grid Filter Details      ${TARGET BUY POLICY GRID COLUMN NAME}           ${TARGET BUY POLICY}

Validate Target Buy Policy Grid Details After Editing The Status
    [Tags]    REGRESSION
    Verify Target Buy Policy Grid Row Details       ${INACTIVE STATUS}       Uploaded     ${CALL TYPE}       ${PREMIUM ROUTE CLASS}

