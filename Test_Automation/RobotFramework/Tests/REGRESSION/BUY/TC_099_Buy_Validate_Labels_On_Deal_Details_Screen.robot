*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Labels On Deal Details Screen

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/buy_page_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/buy_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Buy module
    [Tags]    REGRESSION
    click on home icon and select 'buy' from main menu

Validate Click Buy And Sell Deal Management Link
    [Tags]    REGRESSION
    Verify Click Buy And Sell Deal Management Link

Validate Set Start Date
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Set Start Date      ${BUY AND SELL MANAGEMENT START DATE}

Validate Set Status
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Set Multiple Status      @{ENTERED STATUS}

Validate Click Search Button
    [Tags]    REGRESSION
    Verify Click Buy Module Search Button

Validate Click Buy And Sell Deal Management Grid First Row Inline Action Button
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Click Buy And Sell Deal Management Grid First Row Inline Action Button

Validate Select Inline Action Item
    [Tags]    REGRESSION
    Verify Select Inline Action Item        @{DEAL DETAILS INLINE ITEM}

Validate Account Label Is Displayed Correctly
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Account Label Is Displayed Correctly

Validate Account Manager Label Is Displayed Correctly
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Account Manager Label Is Displayed Correctly

Validate Close Buy And Sell Deal Detail Pop Up
    [Tags]    REGRESSION
    Verify Close Current Pop Up     ${BUY AND SELL DEAL DETAIL POP UP NAME}

