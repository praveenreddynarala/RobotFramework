*** Settings ***
Documentation     A Test Suite With Set Of Tests For Price Validate Ability to Save Bulk Edit with Blank End Date for Origin RPL

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/price_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Price module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Click Origin Reference Price List Link
    [Tags]    REGRESSION
    Verify Click Origin Reference Price List Link

Validate Click Search Button
    [Tags]    REGRESSION
    price_page_resource.Verify Click Search Button

Validate Select Multiple Rows From Origin Reference Price List Grid
    [Tags]    REGRESSION
    Verify Select Multiple Rows From Origin Reference Price List Grid

Validate Click Origin Reference Price List Grid Bulk Edit Button
    [Tags]    REGRESSION
    Verify Click Origin Reference Price List Grid Bulk Edit Button

Validate Make Origin Reference Price List Bulk Edit End Date Empty
    [Tags]    REGRESSION
    Verify Set Origin Reference Price List Bulk Edit End Date       ${EMPTY}

Validate Update Note in Origin Reference Price List Grid Bulk Edit
    [Tags]    REGRESSION
    Verify Set Note For Bulk Edit

Validate Click Bulk Edit Submit Button
    [Tags]    REGRESSION
    price_page_resource.Verify Click Bulk Edit Submit Button

Validate Click Search Button After Updating
    [Tags]    REGRESSION
    price_page_resource.Verify Click Search Button

Validate The End Date Field is Empty
    [Tags]    REGRESSION
    Verify The End Date Field of Origin Reference Price List Grid       ${EMPTY}