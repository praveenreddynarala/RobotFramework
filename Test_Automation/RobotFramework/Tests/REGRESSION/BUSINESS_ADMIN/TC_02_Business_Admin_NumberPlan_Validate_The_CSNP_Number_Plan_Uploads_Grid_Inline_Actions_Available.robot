*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate The CSNP Number Plan Uploads Grid Inline Actions Available

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
    Verify Set Number Plan Uploads Number Plan Type         ${NUMBER PLAN TYPE FOR INLINE ITEM AVAILABILITY}

Validate Set Number Plan Uploads Number Plan After Upload
    [Tags]    REGRESSION
    Verify Set Number Plan Uploads Number Plan              ${CSNP NUMBER PLAN}

Validate Set Multiple Status After Upload
    [Tags]    REGRESSION
    Verify Set Multiple Status              @{STATUS LIST FOR SEARCH INLINE ITEM AVAILABILITY}

Validate Click Number Plan Uploads Search Button
    [Tags]    REGRESSION
    Verify Click Number Plan Uploads Search Button

Validate Click Number Plan Uploads Grid Inline Action Button
    [Tags]    REGRESSION
    Verify Click Number Plan Uploads Grid Inline Action Button      ${CSNP NUMBER PLAN}

Validate Number Plan Uploads Grid Upload Details Inline Item Availability
    [Tags]    REGRESSION
    Verify Number Plan Uploads Grid Inline Item Availability        ${UPLOAD DETAILS INLINE ITEM}

Validate Number Plan Uploads Grid Dial Digits Inline Item Availability
    [Tags]    REGRESSION
    Verify Number Plan Uploads Grid Inline Item Availability        ${DIAL DIGITS INLINE ITEM}

Validate Number Plan Uploads Grid CSNP Analysis Inline Item Availability
    [Tags]    REGRESSION
    Verify Number Plan Uploads Grid Inline Item Availability        ${CSNP ANALYSIS INLINE ITEM}

Validate Number Plan Uploads Grid Analyze Inline Item Availability
    [Tags]    REGRESSION
    Verify Number Plan Uploads Grid Inline Item Availability        ${ANALYZE INLINE ITEM}