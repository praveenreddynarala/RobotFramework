*** Settings ***
Documentation     A Test Suite With Set Of Tests For Route Commercial Route Guide To Validate Create Bulk Edit And Delete Exclusion Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/route_page_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/Pages/network_page_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
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

Valivate Get Created Switch
    [Tags]    REGRESSION
    ${SWITCH} =     Verify Get Created Switch
    log  ${SWITCH}
    set suite variable      ${SWITCH}

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

Validate Set Reason For Search
    [Tags]    REGRESSION
    Verify Set Reason For Search        ${EXCLUSION REASON}

Validate Set Switch For Search
    [Tags]    REGRESSION
    Verify Set Switch For Search        ${COMMERCIAL SWITCH}

Validate Set Account For Search
    [Tags]    REGRESSION
    Verify Set Account For Search       ${ACCOUNT}

Validate Set Trunk For Search
    [Tags]    REGRESSION
    Verify Set Trunk For Search     ${TRUNK NAME}

Validate Set Country For Search
    [Tags]    REGRESSION
    route_page_resource.Verify Set Country For Search       @{NEW EXCLUSION COUNTRY}

Validate Click Exclusions Grid Search Button
    [Tags]    REGRESSION
    Verify Click Exclusions Grid Search Button

Validate Select Exclusions Grid First Row Checkbox
    [Tags]    REGRESSION
    Verify Select Exclusions Grid First Row Checkbox

Validate Click Exclusions Grid Bulk Edit Button
    [Tags]    REGRESSION
    Verify Click Exclusions Grid Bulk Edit Button

Validate Set Exclusions Bulk Edit Begin Date
    [Tags]    REGRESSION
    Verify Set Exclusions Bulk Edit Begin Date      ${EXCLUSION BULK EDIT BEGIN DATE}

Validate Set Exclusions Bulk Edit Reason
    [Tags]    REGRESSION
    Verify Set Bulk Edit Reason      ${EXCLUSION REASON}

Validate Set Exclusions Bulk Edit Note
    [Tags]    REGRESSION
    route_page_resource.Verify Set Exclusions Bulk Edit Note        ${EXCLUSION BULK EDIT NOTE}

Validate Click Bulk Edit Undo Reset Button
    [Tags]    REGRESSION
    Verify Click Bulk Edit Undo Reset Button

Validate Verify Bulk Edit Begin Date Field Is Reset
    [Tags]    REGRESSION
    Verify Bulk Edit Input Field Is Reset       ${BEGIN DATE LABEL TEXT}

Validate Verify Bulk Edit Reason Field Is Reset
    [Tags]    REGRESSION
    Verify Bulk Edit Input Field Is Reset       ${REASON LABEL TEXT}

Validate Verify Bulk Edit Note Field Is Reset
    [Tags]    REGRESSION
    Verify Bulk Edit Input Field Is Reset       ${NOTE LABEL TEXT}

Validate Set Exclusions Bulk Edit Note For Cancel
    [Tags]    REGRESSION
    route_page_resource.Verify Set Exclusions Bulk Edit Note        ${EXCLUSION BULK EDIT NOTE}

Validate Click Bulk Edit Cancel Button
    [Tags]    REGRESSION
    Verify Click Bulk Edit Cancel Button

Validate Click Exclusions Grid Bulk Edit Button After Cancel
    [Tags]    REGRESSION
    Verify Click Exclusions Grid Bulk Edit Button

Validate Set Exclusions Bulk Edit Note After Cancel
    [Tags]    REGRESSION
    route_page_resource.Verify Set Exclusions Bulk Edit Note        ${EXCLUSION BULK EDIT NOTE}

Validate Click Bulk Edit Submit Button
    [Tags]    REGRESSION
    route_page_resource.Verify Click Bulk Edit Submit Button

Validate Click Exclusions Grid Save Changes Button
    [Tags]    REGRESSION
    Verify Click Exclusions Grid Save Changes Button

Validate Select Exclusions Grid First Row Checkbox For Delete
    [Tags]    REGRESSION
    Verify Select Exclusions Grid First Row Checkbox

Validate Click Exclusions Grid Delete Button
    [Tags]    REGRESSION
    Verify Click Exclusions Grid Delete Button
