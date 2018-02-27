*** Settings ***
Documentation     A Test Suite With Set Of Tests For Route Commercial Route Guide To Validate The Functionality For Basic Actions Available in Available and Excluded Trunk Sub Tab

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/route_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/route_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Route module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Route' From Main Menu

Validate Navigate to Commercial Routing Tab
    [Tags]    REGRESSION
    Verify Select Commercial Routing Tab

Validate Set Route Class For Search
    [Tags]    REGRESSION
    Verify Set Route Class For Search    ${ROUTE CLASS}

Validate Click Commercial Routing Grid Search Button
    [Tags]    REGRESSION
    Verify Click Commercial Routing Grid Search Button

Validate Click Commercial Routing Grid First Row Routing Product Link
    [Tags]    REGRESSION
    Verify Click Commercial Routing Grid First Row Routing Product Link

Validate Get Suggested Trunks Grid First Row Details
    [Tags]    REGRESSION
    Verify Get Suggested Trunks Grid First Row Details

Validate Select Suggested Trunks Grid First Row Checkbox
    [Tags]    REGRESSION
    Verify Select Suggested Trunks Grid First Row Checkbox

Validate Click Move To Excluded Button
    [Tags]    REGRESSION
    Verify Click Move To Excluded Button

Validate Select Excluded Trunks Radio Button
    [Tags]    REGRESSION
    Verify Select Excluded Trunks Radio Button

Validate Get Excluded Trunks Grid First Row Details
    [Tags]    REGRESSION
    Verify Get Excluded Trunks Grid First Row Details

Validate Compare Excluded And Suggested Trunks Grid Row Details
    [Tags]    REGRESSION
    Verify Compare Excluded And Suggested Trunks Grid Row Details

Validate Select Excluded Trunks Grid First Row Checkbox
    [Tags]    REGRESSION
    Verify Select Excluded Trunks Grid First Row Checkbox

Validate Click Excluded Trunks Grid Move To Suggested Button
    [Tags]    REGRESSION
    Verify Click Excluded Trunks Grid Move To Suggested Button

Validate Click Save And Recalculate Button
    [Tags]    REGRESSION
    Verify Click Save And Recalculate Button

Validate Click Commercial Routing Grid First Row Routing Product Link For Available Trunks
    [Tags]    REGRESSION
    Verify Click Commercial Routing Grid First Row Routing Product Link

Validate Filter Suggested Trunks Grid Account Column
    [Tags]    REGRESSION
    Verify Filter Suggested Trunks Grid Account Column

Validate Get Suggested Trunks Grid First Row Details For Available Trunks
    [Tags]    REGRESSION
    Verify Get Suggested Trunks Grid First Row Details

Validate Select Suggested Trunks Grid First Row Checkbox For Available Trunks
    [Tags]    REGRESSION
    Verify Select Suggested Trunks Grid First Row Checkbox

Validate Click Move To Available Button
    [Tags]    REGRESSION
    Verify Click Move To Available Button

Validate Get Available Trunks Grid First Row Details
    [Tags]    REGRESSION
    Verify Get Available Trunks Grid First Row Details

Validate Compare Available And Suggested Trunks Grid Row Details
    [Tags]    REGRESSION
    Verify Compare Available And Suggested Trunks Grid Row Details

Validate Select Available Trunks Grid First Row Checkbox
    [Tags]    REGRESSION
    Verify Select Available Trunks Grid First Row Checkbox

Validate Click Available Trunks Grid Move To Suggested Button
    [Tags]    REGRESSION
    Verify Click Available Trunks Grid Move To Suggested Button

Validate Click Save And Recalculate Button For Available Trunks
    [Tags]    REGRESSION
    Verify Click Save And Recalculate Button
