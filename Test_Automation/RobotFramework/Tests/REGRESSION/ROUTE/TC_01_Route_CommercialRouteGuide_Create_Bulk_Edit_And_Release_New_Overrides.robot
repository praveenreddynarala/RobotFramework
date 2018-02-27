*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Create Bulk Edit and Release New Overrides

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/route_page_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/route_page_test_data_source.robot
Resource          ../../../Resources/Pages/network_page_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/network_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${ROUTE CLASS}      ${EMPTY}
${SWITCH}           ${EMPTY}
${OVERRIDE ACCOUNT}     ${EMPTY}
${TRUNK NAME}       ${EMPTY}
${OVERRIDE REASON}      ${EMPTY}

*** Test Cases ***
Validate Navigate to Route module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Route' From Main Menu

Validate Navigate to Commercial Routing Tab
    [Tags]    REGRESSION
    Verify Select Commercial Routing Tab

Validate Get Route Class
    [Tags]    REGRESSION
    ${ROUTE CLASS} =       Verify Get Route Class Name
    log  ${ROUTE CLASS}
    set suite variable      ${ROUTE CLASS}

Valivate Get Created Switch
    [Tags]    REGRESSION
    ${SWITCH} =     Verify Get Created Switch
    log  ${SWITCH}
    set suite variable      ${SWITCH}

Validate Get Created Carrier Name
    [Tags]    REGRESSION
    ${OVERRIDE ACCOUNT} =       Verify Get Created Carrier Name
    log  ${OVERRIDE ACCOUNT}
    set suite variable      ${OVERRIDE ACCOUNT}

Validate Get Trunk Name
    [Tags]    REGRESSION
    ${TRUNK NAME} =       Verify Get Created Technical Trunk
    log  ${TRUNK NAME}
    set suite variable      ${TRUNK NAME}

Validate Get Created Reason
    [Tags]    REGRESSION
    ${OVERRIDE REASON} =       Verify Get Created Reason
    log     ${OVERRIDE REASON}
    set suite variable          ${OVERRIDE REASON}

Validate Click Override Button
    [Tags]    REGRESSION
    Verify Click Override Button

Validate Click New Override Button
    [Tags]    REGRESSION
    Verify Click New Override Button

Validate Set New Override Switch
    [Tags]    REGRESSION
    Verify Set New Override Switch    ${COMMERCIAL SWITCH}

Validate Set New Override Account
    [Tags]    REGRESSION
    Verify Set New Override Account    ${OVERRIDE ACCOUNT}

Validate Set New Override Country
    [Tags]    REGRESSION
    Verify Set New Override Country    ${OVERRIDE COUNTRY}

Validate Set New Override Trunk
    [Tags]    REGRESSION
    Verify Set New Override Trunk    ${TRUNK NAME}      ${COMMERCIAL SWITCH}

Validate Set Rank
    [Tags]    REGRESSION
    Verify Set Rank    ${OVERRIDE RANK}

Validate Set New Override Reason
    [Tags]    REGRESSION
    Verify Set New Override Reason    ${OVERRIDE REASON}

Validate Set Begin Date
    [Tags]    REGRESSION
    route_page_resource.Verify Set Begin Date    ${OVERRIDE BEGIN DATE}

Validate Set End Date
    [Tags]    REGRESSION
    route_page_resource.Verify Set End Date    ${OVERRIDE END DATE}

Validate Set New Override Note
    [Tags]    REGRESSION
    Verify Set New Override Note    ${OVERRIDE NOTE}

Validate Set New Override Route Class
    [Tags]    REGRESSION
    Verify Set New Override Route Class    ${ROUTE CLASS}

Validate Set New Override Routing Product
    [Tags]    REGRESSION
    Verify Set New Override Routing Product    ${INCLUSION PRODUCT}

Validate Set New Override Routing Percentage
    [Tags]    REGRESSION
    Verify Set New Override Routing Percentage    ${OVERRIDE ROUTING PERCENTAGE}

Validate Click Review Overrides Button
    [Tags]    REGRESSION
    Verify Click Review Overrides Button

Validate Click Override Save And Close Button
    [Tags]    REGRESSION
    Verify Click Override Save And Close Button

Validate Set Effective Date
    [Tags]    REGRESSION
    Verify Set Effective Date With Argument    ${OVERRIDE BEGIN DATE}

Validate Set Reason
    [Tags]    REGRESSION
    Verify Set Reason    ${OVERRIDE REASON}

Validate Set Override Route Class For Search
    [Tags]    REGRESSION
    Verify Set Override Route Class For Search    ${ROUTE CLASS}

Validate Set Override
    [Tags]    REGRESSION
    Verify Set Override    @{OVERRIDE RANK LIST}

Validate Set Switch
    [Tags]    REGRESSION
    Verify Set Switch    ${COMMERCIAL SWITCH}

Validate Click Override Search Button
    [Tags]    REGRESSION
    Verify Click Override Search Button

Validate Filter Overrides Grid
    [Tags]    REGRESSION
    Verify Filter Overrides Grid    ${TRUNK COLUMN NAME}    ${TRUNK NAME}

Validate Get Overrides Grid Row Details
    [Tags]    REGRESSION
    Verify Get Overrides Grid Row Details

Valdiate Compare Overrides Grid Row Details
    [Tags]    REGRESSION
    Verify Compare Overrides Grid Row Details    ${TRUNK NAME}    ${ROUTE CLASS}    ${INCLUSION PRODUCT}    ${OVERRIDE RANK}    ${OVERRIDE REASON}

Validate Select Overrides Grid Row Checkbox
    [Tags]    REGRESSION
    Verify Select Overrides Grid Row Checkbox    ${TRUNK NAME}

Validate Click Override Bulk Edit Button
    [Tags]    REGRESSION
    Verify Click Override Bulk Edit Button

Validate Set Bulk Edit Rank
    [Tags]    REGRESSION
    Verify Set Rank    ${OVERRIDE BULK EDIT RANK}

Validate Set Bulk Edit Percentage
    [Tags]    REGRESSION
    Verify Set Bulk Edit Percentage    ${OVERRIDE BULK EDIT PERCENTAGE}

Validate Set Bulk Edit End Date
    [Tags]    REGRESSION
    route_page_resource.Verify Set End Date    ${OVERRIDE BULK EDIT END DATE}

Validate Set Bulk Edit Reason
    [Tags]    REGRESSION
    Verify Set Bulk Edit Reason    ${OVERRIDE REASON}

Validate Set Note For Bulk Edit
    [Tags]    REGRESSION
    route_page_resource.Verify Set Note    ${OVERRIDE BULK EDIT NOTE}

Validate Click Bulk Edit Submit Button
    [Tags]    REGRESSION
    route_page_resource.Verify Click Bulk Edit Submit Button

Validate Click Override Save Changes Button
    [Tags]    REGRESSION
    Verify Click Override Save Changes Button

Validate Set Reason After Bulk Edit
    [Tags]    REGRESSION
    Verify Set Reason    ${OVERRIDE REASON}

Validate Set Override After Bulk Edit
    [Tags]    REGRESSION
    Verify Set Override    @{OVERRIDE BULK EDIT RANK LIST}

Validate Click Override Search Button After Bulk Edit
    [Tags]    REGRESSION
    Verify Click Override Search Button

Validate Get Overrides Grid Row Details After Bulk Edit
    [Tags]    REGRESSION
    Verify Get Overrides Grid Row Details

Valdiate Compare Overrides Grid Row Details After Bulk Edit
    [Tags]    REGRESSION
    Verify Compare Overrides Grid Row Details    ${TRUNK NAME}    ${ROUTE CLASS}    ${INCLUSION PRODUCT}    ${OVERRIDE BULK EDIT RANK}    ${OVERRIDE REASON}

Validate Click Overrides Grid Inline Action Button
    [Tags]    REGRESSION
    Verify Click Overrides Grid Inline Action Button    ${TRUNK NAME}

Validate Select Inline Action Item
    [Tags]    REGRESSION
    route_page_resource.Verify Select Inline Action Item    ${RELEASE OVERRIDE INLINE ITEM NAME}

Validate Confirm Release Overrides Pop Ups
    [Tags]    REGRESSION
    Verify Confirm Release Overrides Pop Ups
