*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Create Bulk Edit and Delete Inclusion Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/route_page_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/route_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${ACCOUNT}          ${EMPTY}
${TRUNK NAME}       ${EMPTY}
${INCLUSION REASON}      ${EMPTY}

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
    Verify Set Value In Scope Column        ${SCOPE COLUMN VALUE FOR INCLUSION}

Validate Set Value In Reason Column
    [Tags]    REGRESSION
    Verify Set Value In Reason Column       ${TEST DATA PREFIX}

Validate Click Manage Reasones Save Button
    [Tags]    REGRESSION
    Verify Click Manage Reasones Save Button

Validate Navigate to Commercial Routing Tab
    [Tags]    REGRESSION
    Verify Select Commercial Routing Tab

Validate Get Created Reason
    [Tags]    REGRESSION
    ${INCLUSION REASON} =       Verify Get Created Reason
    log     ${INCLUSION REASON}
    set suite variable          ${INCLUSION REASON}

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

Validate Click Inclusion Button
    [Tags]    REGRESSION
    Verify Click Inclusion Button

Validate Click New Inclusion Button
    [Tags]    REGRESSION
    Verify Click New Inclusion Button

Validate Set Inclusion Level
    [Tags]    REGRESSION
    Verify Set Inclusion Level      ${INCLUSION LEVEL}

Validate Set Inclusion Begin Date
    [Tags]    REGRESSION
    Verify Set Inclusion Begin Date     ${INCLUSION BEGIN DATE}

Validate Set End Date
    [Tags]    REGRESSION
    route_page_resource.Verify Set End Date     ${INCLUSION END DATE}

Validate Set New Inclusion Reason
    [Tags]    REGRESSION
    Verify Set New Inclusion Reason     ${INCLUSION REASON}

Validate Set Note
    [Tags]    REGRESSION
    route_page_resource.Verify Set Note     ${INCLUSION NOTE}

Validate Set New Inclusion Account
    [Tags]    REGRESSION
    Verify Set New Inclusion Account    ${ACCOUNT}

Validate Set New Inclusion Trunk
    [Tags]    REGRESSION
    Verify Set New Inclusion Trunk      ${TRUNK NAME}

Validate Click Trunk Go Button
    [Tags]    REGRESSION
    Verify Click Trunk Go Button

Validate Move Available Trunks To Include
    [Tags]    REGRESSION
    Verify Move Available Trunks To Include     ${TRUNK NAME}

Validate Move Available Route Classes To Include
    [Tags]    REGRESSION
    Verify Move Available Route Classes To Include

Validate Set New Inclusion Country
    [Tags]    REGRESSION
    Verify Set New Inclusion Country    @{INCLUSION COUNTRY LIST}

Validate Click Product Go Button
    [Tags]    REGRESSION
    Verify Click Product Go Button

Validate Move Available Products To Include
    [Tags]    REGRESSION
    Verify Move Available Products To Include       @{INCLUSION PRODUCT LIST}

Validate Click Review Inclusions Button
    [Tags]    REGRESSION
    Verify Click Review Inclusions Button

Validate Click Save And Close Button
    [Tags]    REGRESSION
    Verify Inclusion Click Save And Close Button

Validate Set Effective Date
    [Tags]    REGRESSION
    route_page_resource.Verify Set Effective Date

Validate Set Inclusion Type
    [Tags]    REGRESSION
    Verify Set Inclusion Type       ${INCLUSION LEVEL}

Validate Set Reason
    [Tags]    REGRESSION
    Verify Set Reason       ${INCLUSION REASON}

Validate Set Inclusion Country For Search
    [Tags]    REGRESSION
    route_page_resource.Verify Set Inclusion Country For Search     @{INCLUSION COUNTRY LIST}

Validate Set Routing Product
    [Tags]    REGRESSION
    Verify Set Inclusion Routing Product For Search     @{INCLUSION PRODUCT LIST}

Validate Click Inclusion Search Button
    [Tags]    REGRESSION
    Verify Click Inclusion Search Button

Validate Get Inclusions Grid Row Details
    [Tags]    REGRESSION
    Verify Get Inclusions Grid Row Details

Validate Compare Inclusions Grid Row Details
    [Tags]    REGRESSION
    Verify Compare Inclusion Grid Row Data      ${TRUNK NAME}        ${INCLUSION PRODUCT}        ${ACCOUNT}        ${INCLUSION REASON}

Validate Select Inclusions Grid Row Checkbox
    [Tags]    REGRESSION
    Verify Select Inclusions Grid Row Checkbox      ${TRUNK NAME}

Validate Click Inclusion Bulk Edit Button
    [Tags]    REGRESSION
    Verify Click Inclusion Bulk Edit Button

Validate Set Bulk Edit Begin Date
    [Tags]    REGRESSION
    route_page_resource.Verify Set Begin Date       ${INCLUSION BULK EDIT BEGIN DATE}

Validate Set Bulk Edit End Date
    [Tags]    REGRESSION
    route_page_resource.Verify Set End Date       ${INCLUSION BULK EDIT END DATE}

Validate Set Bulk Edit Reason
    [Tags]    REGRESSION
    Verify Set Bulk Edit Reason         ${INCLUSION REASON}

Validate Set Bulk Edit Note
    [Tags]    REGRESSION
    route_page_resource.Verify Set Note         ${INCLUSION BULK EDIT NOTE}

Validate Click Bulk Edit Submit Button
    [Tags]    REGRESSION
    route_page_resource.Verify Click Bulk Edit Submit Button

Validate Click Inclusion Save Changes Button
    [Tags]    REGRESSION
    Verify Click Inclusion Save Changes Button

Validate Select Inclusions Grid Row Checkbox After Edit
    [Tags]    REGRESSION
    Verify Select Inclusions Grid Row Checkbox      ${TRUNK NAME}

Validate Click Inclusion Delete Button
    [Tags]    REGRESSION
    Verify Click Inclusion Delete Button
