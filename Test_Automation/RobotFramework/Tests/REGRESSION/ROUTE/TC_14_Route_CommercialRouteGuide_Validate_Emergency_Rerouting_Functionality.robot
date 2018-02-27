*** Settings ***
Documentation     A Test Suite With Set Of Tests For Route Commercial Route Guide To Validate Emergency Rerouting Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/route_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/route_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${SELECTED ROUTING PRODUCT}      ${Empty}
${SELECTED ROUTE CLASS}      ${Empty}

*** Test Cases ***
Validate Navigate to Route module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Route' From Main Menu

Validate Navigate to Commercial Routing Tab
    [Tags]    REGRESSION
    Verify Select Commercial Routing Tab

Validate Set Priority For Search
    [Tags]    REGRESSION
    Verify Set Priority For Search      @{MEDIUM PRIORITY LIST}

Validate Set Route Class For Search
    [Tags]    REGRESSION
    Verify Set Route Class For Search       ${ROUTE CLASS}

Validate Click Commercial Routing Grid Search Button
    [Tags]    REGRESSION
    Verify Click Commercial Routing Grid Search Button

Validate Sort Routing Product Column In Ascending Order
    [Tags]    REGRESSION
    Verify Sort Column In Ascending Order       ${ROUTING PRODUCT COLUMN NAME}

Validate Click Commercial Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Commercial Grid First Row Inline Action Button

Validate Select Emergency Re Routing Inline Action Item
    [Tags]    REGRESSION
    Verify Select Commercial Routing Grid Inline Action Item     ${EMERGENCY RE ROUTING INLINE ACTION ITEM}

Validate Get Selected Route Class
    [Tags]    REGRESSION
    ${SELECTED ROUTE CLASS} =        Verify Get Selected Route Class
    set suite variable      ${SELECTED ROUTE CLASS}

Validate Get Selected Routing Product
    [Tags]    REGRESSION
    ${SELECTED ROUTING PRODUCT} =       Verify Get Selected Routing Product
    set suite variable      ${SELECTED ROUTING PRODUCT}

Validate Select Available Trunks Grid First Row Checkbox
    [Tags]    REGRESSION
    Verify Select Emergency Re Routing Available Trunks Grid First Row Checkbox

Validate Click To Rank Button
    [Tags]    REGRESSION
    Verify Click To Rank Button

Validate Move Available Trunks Into Rank Grid
    [Tags]    REGRESSION
    Verify Move Available Trunks Into Rank Grid

Validate Set Route Percentage Values
    [Tags]    REGRESSION
    Verify Set Route Percentage Values

Validate Get Ranked Trunks
    [Tags]    REGRESSION
    Verify Get Ranked Trunks

Validate Click Emergency Routing Save Button
    [Tags]    REGRESSION
    Verify Click Emergency Routing Save Button

Validate Close Emergency Routing Tab
    [Tags]    REGRESSION
    route_page_resource.Verify Close Current Tab        ${EMERGENCY RE ROUTING TAB NAME}

Validate Clear Multiselect Kendo Dropdown
    [Tags]    REGRESSION
    Verify Clear Multiselect Kendo Dropdown     ${PRIORITY DROPDOWN LABEL TEXT}

Validate Clear Multiselect Kendo Dropdown For Route Class
    [Tags]    REGRESSION
    Verify Clear Multiselect Kendo Dropdown     ${ROUTE CLASS DROPDOWN LABEL TEXT}

Validate Set Selected Route Class For Search
    [Tags]    REGRESSION
    Verify Set Route Class For Search       ${SELECTED ROUTE CLASS}

Validate Click Commercial Routing Grid Search Button After Closing Emergency Routing Tab
    [Tags]    REGRESSION
    Verify Click Commercial Routing Grid Search Button

Validate Priority Status Is Changed
    [Tags]    REGRESSION
    Verify Priority Status Is Changed

Validate Click Commercial Routing Grid First Row Routing Product Link
    [Tags]    REGRESSION
    Verify Click Commercial Routing Grid First Row Routing Product Link

Validate Suggested Trunks In The Grid
    [Tags]    REGRESSION
    Verify Suggested Trunks In The Grid