*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Number Plan Uploads Inline Action Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/business_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CSNP NUMBER PLAN}     ${EMPTY}

*** Test Cases ***
Validate Navigate to Business Admin Module
    [Tags]    REGRESSION
    click on home icon and select 'business admin' from main menu

Validate Get CSNP Number Plan
    [Tags]    REGRESSION
    ${CSNP NUMBER PLAN} =     Verify Get CSNP Number Plan
    log  ${CSNP NUMBER PLAN}
    set suite variable      ${CSNP NUMBER PLAN}

Validate The Business Admin Dashboard Tab Is Available
    [Tags]    REGRESSION
    Verify The Business Admin Dashboard Tab Is Available

Validate Expand Number Plan Menu
    [Tags]    REGRESSION
    Verify Expand Number Plan Menu

Validate Click Number Plan Submenu
    [Tags]    REGRESSION
    Verify Click Number Plan Submenu

Validate Click Number Plan Uploads Button After Upload
    [Tags]    REGRESSION
    Verify Click Number Plan Uploads Button

Validate Set Number Plan Uploads Number Plan Type After Upload
    [Tags]    REGRESSION
    Verify Set Number Plan Uploads Number Plan Type         ${NUMBER PLAN TYPE FOR INLINE ACTION}

Validate Set Number Plan Uploads Number Plan After Upload
    [Tags]    REGRESSION
    Verify Set Number Plan Uploads Number Plan              ${CSNP NUMBER PLAN}

Validate Set Multiple Status After Upload
    [Tags]    REGRESSION
    Verify Set Multiple Status              @{STATUS LIST FOR SEARCH INLINE ACTION}

Validate Click Number Plan Uploads Search Button
    [Tags]    REGRESSION
    Verify Click Number Plan Uploads Search Button

Validate Get Number Plan Uploads Grid Row Details
    [Tags]    REGRESSION
    Verify Get Number Plan Uploads Grid Row Details

Validate Click Number Plan Uploads Grid Inline Action Button For Upload Details
    [Tags]    REGRESSION
    Verify Click Number Plan Uploads Grid Inline Action Button         ${CSNP NUMBER PLAN}

Validate Select Upload Details Inline Action Item
    [Tags]    REGRESSION
    Verify Select Inline Action Item        ${UPLOAD DETAILS INLINE ITEM}

Validate Click Show Summary Link
    [Tags]    REGRESSION
    Verify Click Show Summary Link

Validate Information Of Upload Details Tab
    [Tags]    REGRESSION
    Verify Information Of Upload Details Tab

Validate Close Number Plan Upload Details Tab For Upload Details
   [Tags]    REGRESSION
    Verify Close Current Tab        ${NUMBER PLAN UPLOAD DETAILS TAB NAME}

Validate Click Number Plan Uploads Grid Inline Action Button For Dial Digits
    [Tags]    REGRESSION
    Verify Click Number Plan Uploads Grid Inline Action Button         ${CSNP NUMBER PLAN}

Validate Select Dial Digits Inline Action Item
    [Tags]    REGRESSION
    Verify Select Inline Action Item        ${DIAL DIGITS INLINE ITEM}

Validate Dial Digits Tab Loaded Properly
    [Tags]    REGRESSION
    Verify Dial Digits Tab Loaded Properly

Validate Close Number Plan Upload Details Tab For Dial Digits
   [Tags]    REGRESSION
    Verify Close Current Tab        ${NUMBER PLAN UPLOAD DETAILS TAB NAME}

Validate Click Number Plan Uploads Grid Inline Action Button For CSNP Analysis
    [Tags]    REGRESSION
    Verify Click Number Plan Uploads Grid Inline Action Button         ${CSNP NUMBER PLAN}

Validate Select CSNP Analysis Inline Action Item
    [Tags]    REGRESSION
    Verify Select Inline Action Item        ${CSNP ANALYSIS INLINE ITEM}

Validate CSNP Analysis Tab Loaded Properly
    [Tags]    REGRESSION
    Verify Csnp Analysis Tab Loaded Properly

Validate Close Number Plan Upload Details Tab For CSNP Analysis
   [Tags]    REGRESSION
    Verify Close Current Tab        ${NUMBER PLAN UPLOAD DETAILS TAB NAME}

Validate Select Analyze Inline Action Item
    [Tags]    REGRESSION
    Verify Analyze Pending Status If Exists

