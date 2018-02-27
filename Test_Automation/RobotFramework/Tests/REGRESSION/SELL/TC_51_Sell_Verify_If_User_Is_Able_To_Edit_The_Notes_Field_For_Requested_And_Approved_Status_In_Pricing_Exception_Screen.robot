*** Settings ***
Documentation     A Test Suite With Set Of Tests To Verify If User Is Able TO Edit The Notes Field For Requested And Approved Status In Pricing Exception Screen

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/sell_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Sell module
    [Tags]    REGRESSION
    Click On Home Icon And Select 'Sell' From Main Menu

Validate Navigate to Customer Tab
    [Tags]    REGRESSION
    Click On Customer Tab

Validate Click Price Exceptions Button
    [Tags]    REGRESSION
    Verify Click Price Exceptions Button

Validate Set Status
    [Tags]    REGRESSION
    sell_page_resource.Verify Set Status           @{REQUESTED STATUS ITEM LIST}

Validate Set Select Date
    [Tags]    REGRESSION
    sell_page_resource.Verify Set Select Date      ${SELECT DATE}

Validate Click Price Exceptions Search Button
    [Tags]    REGRESSION
    Verify Click Price Exceptions Search Button

Validate Select Price Exception Grid Multiple Row Checkbox
    [Tags]    REGRESSION
    Verify Select Price Exception Grid Multiple Row

Validate Set First Row Note
    [Tags]    REGRESSION
    Verify Set First Row Note             ${TEST DATA PREFIX}

Validate Click Save Changes Button
    [Tags]    REGRESSION
    sell_page_resource.Verify Click Save Changes Button

Validate Clear Multiselection Kendo Dropdown
    [Tags]    REGRESSION
    sell_page_resource.Verify Clear Multiselection Kendo Dropdown       ${STATUS DROPDOWN LABEL}

Validate Set Status As Requested
    [Tags]    REGRESSION
    sell_page_resource.Verify Set Status           @{APPROVED STATUS ITEM LIST}

Validate Set Select Date After Setting Status As Requested
    [Tags]    REGRESSION
    sell_page_resource.Verify Set Select Date      ${SELECT DATE}

Validate Click Price Exceptions Search Button After Setting Status As Requested
    [Tags]    REGRESSION
    Verify Click Price Exceptions Search Button

Validate Select Price Exception Grid Multiple Row Checkbox After Setting Status As Requested
    [Tags]    REGRESSION
    Verify Select Price Exception Grid Multiple Row

Validate Set First Row Note After Setting Status As Requested
    [Tags]    REGRESSION
    Verify Set First Row Note             ${TEST DATA PREFIX}

Validate Click Save Changes Button After Setting Status As Requested
    [Tags]    REGRESSION
    sell_page_resource.Verify Click Save Changes Button