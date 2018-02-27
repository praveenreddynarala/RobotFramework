*** Settings ***
Documentation     A Test Suite With Set Of Tests To Verify If Requested Price Begin Date Estimated Volume And Approval Type Fields Are Not Editable For Requested And Approved Status

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/sell_page_test_data_source.robot

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

Validate Click Bulk Edit Button
    [Tags]    REGRESSION
    sell_page_resource.Verify Click Bulk Edit Button

Validate Pricing Exception Error Message Is Displayed For Approved Or Request Status
    [Tags]    REGRESSION
    Verify Pricing Exception Error Message Is Displayed For Approved Or Request Status

Validate Verify The Pricing Exception Bulk Edit Is Not Available
    [Tags]    REGRESSION
    Verify The Pricing Exception Bulk Edit Is Not Available

Validate Clear Multiselection Kendo Dropdown
    [Tags]    REGRESSION
    sell_page_resource.Verify Clear Multiselection Kendo Dropdown       ${STATUS DROPDOWN LABEL}

Validate Set Status As Approved
    [Tags]    REGRESSION
    sell_page_resource.Verify Set Status           @{APPROVED STATUS ITEM LIST}

Validate Click Price Exceptions Search Button After Setting Status As Approved
    [Tags]    REGRESSION
    Verify Click Price Exceptions Search Button

Validate Select Price Exception Grid Multiple Row Checkbox After Setting Status As Approved
    [Tags]    REGRESSION
    Verify Select Price Exception Grid Multiple Row

Validate Click Bulk Edit Button After Setting Status As Approved
    [Tags]    REGRESSION
    sell_page_resource.Verify Click Bulk Edit Button

Validate Pricing Exception Error Message Is Displayed For Approved Or Request Status After Setting Status As Approved
    [Tags]    REGRESSION
    Verify Pricing Exception Error Message Is Displayed For Approved Or Request Status

Validate Verify The Pricing Exception Bulk Edit Is Not Available After Setting Status As Approved
    [Tags]    REGRESSION
    Verify The Pricing Exception Bulk Edit Is Not Available