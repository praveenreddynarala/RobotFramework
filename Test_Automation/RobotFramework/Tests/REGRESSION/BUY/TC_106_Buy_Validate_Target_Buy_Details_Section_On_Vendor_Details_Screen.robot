*** Settings ***
Documentation     [TAENOSIS-971] A Test Suite With Set Of Tests To Validate Target Buy Details Section On Vendor Details Screen

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/buy_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/buy_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to System Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select System Tab
    [Tags]    REGRESSION
    Click on System Tab

Validate Click Configuration Variables Button
    [Tags]    REGRESSION
    Verify Click Configuration Variables Button

Validate Set Variable Name
    [Tags]    REGRESSION
    Verify Set Variable Name    enablesaasgranular

Validate Click Configuration Variables Grid Search Button
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        0

Validate Log Out Functionality From System Admin
    [Tags]    REGRESSION
    Validate Log Out Functionality

Validate Login Functionality With Valid Credential After Setting config variable
    [Tags]    REGRESSION
    Validate Login Functionality With Valid Credential

Validate navigate to Buy module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Buy' From Main Menu

Validate Vendors Tab Is Available
    [Tags]    REGRESSION
    Verify The Vendors Tab Is Available

Validate Navigate To Vendors Tab
    [Tags]    REGRESSION
    Verify Click On Vendors Tab

Validate Get Previous Created Vendor Name
    [Tags]    REGRESSION
    Verify Get Previous Created Vendor Name

Validate Filter Vendor Grid Column
    [Tags]    REGRESSION
    Verify Filter Vendor Grid Column After Create        ${VENDOR COLUMN NAME}

Validate Click On Inline Action Button
    [Tags]    REGRESSION
    Verify Click On Inline Action Button After Create

Validate Select Vendor Profile Inline Action Item
    [Tags]    REGRESSION
    Verify Select Vendor Profile Inline Action Item

Validate Target Buy Details Section Is Present In Vendor Profile Page
    [Tags]    REGRESSION
    Verify Target Buy Details Section Is Present In Vendor Profile Page

Validate The Target Buy Distribution Link Code Field On Target Buy Details Section Is Available
    [Tags]    REGRESSION
    Verify The Specific Field On Target Buy Details Section Is Available        Target Buy Distribution Link Code

Validate The Target Buy Distribution Receiving Member Field On Target Buy Details Section Is Available
    [Tags]    REGRESSION
    Verify The Specific Field On Target Buy Details Section Is Available        Target Buy Distribution Receiving Member

Validate The Target Buy List Field On Target Buy Details Section Is Available
    [Tags]    REGRESSION
    Verify The Specific Field On Target Buy Details Section Is Available        Target Buy List

Validate The Target Buy List Number Plan Field On Target Buy Details Section Is Available
    [Tags]    REGRESSION
    Verify The Specific Field On Target Buy Details Section Is Available        Target Buy List Number Plan

Validate Set Target Buy Distribution Link Code
    [Tags]    REGRESSION
    Verify Set Target Buy Distribution Link Code

Validate Set Target Buy Distribution Receiving Member
    [Tags]    REGRESSION
    Verify Set Target Buy Distribution Receiving Member     ${TEST DATA PREFIX}

Validate Set First Target Buy List
    [Tags]    REGRESSION
    Verify Set Target Buy List      ${EMPTY}        ${TRUE}

Validate Set Target Buy List Number Plan
    [Tags]    REGRESSION
    Verify Set Target Buy List Number Plan      Outbound Ref.

Validate Click Vendor Profile Save Button
    [Tags]    REGRESSION
    Verify Click Buy And Sell Deal Save Button