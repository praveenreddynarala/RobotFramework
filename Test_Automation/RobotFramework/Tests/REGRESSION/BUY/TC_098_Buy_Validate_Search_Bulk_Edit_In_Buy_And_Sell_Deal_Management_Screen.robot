*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Business Admin Search Bulk Edit In Buy And Sell Deal Management Screen

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/buy_page_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/buy_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Buy module
    [Tags]    REGRESSION
    click on home icon and select 'Buy' from main menu

Validate Click Buy And Sell Deal Management Link
    [Tags]    REGRESSION
    Verify Click Buy And Sell Deal Management Link

Validate Set Start Date
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Set Start Date      ${BUY AND SELL MANAGEMENT START DATE}

Validate Set Status
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Set Multiple Status      @{BUY AND SELL MANAGEMENT STATUS}

Validate Click Search Button
    [Tags]    REGRESSION
    Verify Click Buy Module Search Button

Validate Select Buy And Sell Deal Management Grid First Row Checkbox
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Select Buy And Sell Deal Management Grid First Row Checkbox

Validate Click Buy And Sell Deal Bulk Edit Button
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Click Buy And Sell Deal Bulk Edit Button

Validate Set Bulk Edit End Date
    [Tags]    REGRESSION
    Verify Set Bulk Edit End Date       ${EMPTY}        ${TRUE}

Valdiate Click Bulk Edit Submit Button
    [Tags]    REGRESSION
    Verify Click Bulk Edit Submit Button

Valdiate Click Save Changes Button
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Click Save Changes Button

