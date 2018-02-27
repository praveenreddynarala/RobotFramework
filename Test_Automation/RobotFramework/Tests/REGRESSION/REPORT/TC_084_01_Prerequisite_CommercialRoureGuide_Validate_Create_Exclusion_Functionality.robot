*** Settings ***
Documentation     A Test Suite With Set Of Tests For Route Commercial Route Guide To Validate Create Bulk Edit And Delete Exclusion Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/route_page_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/route_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${ACCOUNT}          ${EMPTY}
${TRUNK NAME}       ${EMPTY}
${EXCLUSION REASON}      ${EMPTY}

*** Test Cases ***
Validate Navigate to Route module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Route' From Main Menu

Validate Click Manage Reason Link
    [Tags]    REGRESSION
    Verify Click Manage Reason Link

Validate Click Add New Reason Button
    [Tags]    REGRESSION
    Verify Click Add New Reason Button

Validate Set Value In Scope Column
    [Tags]    REGRESSION
    Verify Set Value In Scope Column        ${SCOPE COLUMN VALUE FOR EXCLUSION}

Validate Set Value In Reason Column
    [Tags]    REGRESSION
    Verify Set Value In Reason Column       ${TEST DATA PREFIX}

Validate Click Manage Reasones Save Button
    [Tags]    REGRESSION
    Verify Click Manage Reasones Save Button

Validate Get Created Reason
    [Tags]    REGRESSION
    ${EXCLUSION REASON} =       Verify Get Created Reason
    log     ${EXCLUSION REASON}
    set suite variable          ${EXCLUSION REASON}

Validate Get Created Carrier Name
    [Tags]    REGRESSION
    ${ACCOUNT} =       Verify Get Created Carrier Name
    log  ${ACCOUNT}
    set suite variable      ${ACCOUNT}

Validate Get Trunk Name
    [Tags]    REGRESSION
    ${TRUNK NAME} =       Verify Get Trunk Name
    log  ${TRUNK NAME}
    set suite variable      ${TRUNK NAME}

Validate Navigate to Commercial Routing Tab
    [Tags]    REGRESSION
    Verify Select Commercial Routing Tab

Validate Click Exclusion Button
    [Tags]    REGRESSION
    Verify Click Exclusion Button

Validate Click New Exclusion Button
    [Tags]    REGRESSION
    Verify Click New Exclusion Button

Validate Set New Exclusion Reason
    [Tags]    REGRESSION
    Verify Set New Exclusion Reason     ${EXCLUSION REASON}

Validate Set New Exclusion Note
    [Tags]    REGRESSION
    Verify Set New Exclusion Note       ${TEST DATA PREFIX}

Validate Set New Exclusion Account
    [Tags]    REGRESSION
    Verify Set New Exclusion Account        ${ACCOUNT}

Validate Set New Exclusion Trunk
    [Tags]    REGRESSION
    Verify Set New Exclusion Trunk      ${TRUNK NAME}

Validate Click Trunk Section Go Button
    [Tags]    REGRESSION
    Verify Click Trunk Section Go Button

Validate Move Available Trunks To Destination
    [Tags]    REGRESSION
    Verify Move Available Trunks To Destination     ${TRUNK NAME}

Validate Move Available Route Classes To Destination
    [Tags]    REGRESSION
    Verify Move Available Route Classes To Destination

Validate Set New Exclusion Country
    [Tags]    REGRESSION
    Verify Set New Exclusion Country        @{NEW EXCLUSION COUNTRY}

Validate Click Products Section Go Button
    [Tags]    REGRESSION
    Verify Click Products Section Go Button

Validate Move Available Products To Destination
    [Tags]    REGRESSION
    Verify Move Available Products To Destination

Validate Verify Click Review Exclusions Button
    [Tags]    REGRESSION
    Verify Click Review Exclusions Button

Validate Click Save And Close Button
    [Tags]    REGRESSION
    Verify Click Save And Close Button