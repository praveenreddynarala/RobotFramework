*** Settings ***
Documentation     A Test Suite With Set Of Tests For Route Technical Route Guide To Create New Fast Track Exclusion

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/route_page_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/Pages/network_page_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/route_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Route module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Route' From Main Menu

Validate Navigate to Technical Routing Tab
    [Tags]    REGRESSION
    Verify Select Technical Routing Tab

Validate Set Technical Routing Status
    [Tags]    REGRESSION
    Verify Set Routing Status For Search        @{NEW FAST TRACK EXCLUSION STATUS}

Validate Click Technical Routing Grid Search Button
    [Tags]    REGRESSION
    Verify Click Technical Routing Grid Search Button

Validate Click Fast Track Exclusion Button
    [Tags]    REGRESSION
    Verify Click Fast Track Exclusion Button

Validate Set Fast Track Exclusion Begin Date
    [Tags]    REGRESSION
    Verify Set Fast Track Exclusion Begin Date      ${FAST TRACK EXCLUSION BEGIN DATE}

Validate Set Fast Track Exclusion End Date
    [Tags]    REGRESSION
    Verify Set Fast Track Exclusion End Date        ${FAST TRACK EXCLUSION END DATE}

Validate Set Fast Track Exclusion Note
    [Tags]    REGRESSION
    Verify Set Fast Track Exclusion Note        ${FAST TRACK EXCLUSION NOTE}

Validate Set Fast Track Exclusion Account
    [Tags]    REGRESSION
    ${ACCOUNT} =       Verify Get Created Carrier Name
    @{ACCOUNT LIST} =   create list     ${ACCOUNT}
    Verify Set Fast Track Exclusion Account     @{ACCOUNT LIST}

Validate Click Trunks Go Button
    [Tags]    REGRESSION
    Verify Click Trunks Go Button

Validate Move Available Trunks To Destination
    [Tags]    REGRESSION
    ${TRUNK NAME} =       Verify Get Created Technical Trunk
    ${SWITCH} =     Verify Get Created Switch
    Verify Move Available Trunks To Destination         ${TRUNK NAME}

Validate Move Available Route Classes To Destination
    [Tags]    REGRESSION
    Verify Move Available Route Classes To Destination

Validate Set Fast Track Exclusion Country
    [Tags]    REGRESSION
    Verify Set Fast Track Exclusion Country     @{FAST TRACK EXCLUSION COUNTRY}

Validate Click Products Go Button
    [Tags]    REGRESSION
    Verify Click Products Go Button

Validate Move Available Products To Destination
    [Tags]    REGRESSION
    Verify Move Available Products To Destination

Validate Click Fast Track Exclusion Save Button
    [Tags]    REGRESSION
    Verify Click Fast Track Exclusion Save Button