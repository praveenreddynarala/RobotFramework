*** Settings ***
Documentation     A Test Suite With Set Of Tests For Djezzy System Admin To Validate Account Level Security In Connect Trade And Report Modules

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/buy_page_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/login_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/system_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to System Admin module
    [Tags]    FUNCTIONAL
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select Systems Tab
    [Tags]    FUNCTIONAL
    Click on System Tab

Validate Click Configuration Variables Button
    [Tags]    FUNCTIONAL
    Verify Click Configuration Variables Button

Validate Set Variable Name
    [Tags]    FUNCTIONAL
    Verify Set Variable Name        ${VARIABLE NAME}

Validate Click Search Button
    [Tags]    FUNCTIONAL
    Verify Click Search Button

Validate Set Configuration Variables Current Value
    [Tags]    FUNCTIONAL
    Verify Set Configuration Variables Current Value        ${CURRENT VALUE}

Validate Click Save Changes Button
    [Tags]    FUNCTIONAL
    system_admin_page_resource.Verify Click Save Changes Button

Validate Select Users Tab
    [Tags]    FUNCTIONAL
    Click on Users Tab

Validate Filter Users Grid
    [Tags]    FUNCTIONAL
    Verify Filter Users Grid        ${USER NAME COLUMN NAME}        ${CARRIER SECURITY USER NAME}

Validate Click Users Grid First Row Inline Action Button
    [Tags]    FUNCTIONAL
    Verify Click Users Grid First Row Inline Action Button

Validate Select Inline Action Item
    [Tags]    FUNCTIONAL
    system_admin_page_resource.Verify Select Inline Action Item     ${CARRIER SECURITY INLINE ITEM}

Validate Select Account Security Tab
    [Tags]    FUNCTIONAL
    Verify Select Account Security Tab

Validate Move Available Accounts To Destination
    [Tags]    FUNCTIONAL
    Verify Move Available Accounts To Destination       @{ACCOUNT LIST TO MOVE}

Validate Click Edit User Ok Button
    [Tags]    FUNCTIONAL
    Verify Click Edit User Ok Button

Validate Sign Out From System Admin Page
    [Tags]    FUNCTIONAL
    Verify Log Out

Validate Login With Carrier Security Credential
    [Tags]    FUNCTIONAL
    submit credentials      ${CARRIER SECURITY USER NAME}       ${CARRIER SECURITY USER PASSWORD}

Validate Navigate to Buy Module
    [Tags]    FUNCTIONAL
    Click on Home Icon and Select 'Buy' From Main Menu

Validate Select Vendors Tab
    [Tags]    FUNCTIONAL
    Verify Click On Vendors Tab

Validate Vendor Grid Carrier
    [Tags]    FUNCTIONAL
    Verify Vendor Grid Carrier      ${CARRIER ACCOUNT NAME}

Validate Close Buy Window
    [Tags]    FUNCTIONAL
    Verify Close Buy Window

Validate Navigate to Carrier Module
    [Tags]    FUNCTIONAL
    Click on Home Icon and Select 'Carrier' From Main Menu

Validate Get Carriers Grid Row Details
    [Tags]    FUNCTIONAL
    Verify Get Carriers Grid Row Details

Validate Carriers Grid Carrier
    [Tags]    FUNCTIONAL
    Verify Carriers Grid Carrier       ${CARRIER ACCOUNT NAME}

Validate Sign Out From Carrier Page
    [Tags]    FUNCTIONAL
    Verify Log Out

Validate Login With Admin Credential
    [Tags]    FUNCTIONAL
    submit credentials      ${VALID USERNAME}       ${VALID PASSWORD}

Validate Navigate to System Admin Module After Checking
    [Tags]    FUNCTIONAL
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select Users Tab After Checking
    [Tags]    FUNCTIONAL
    Click on Users Tab

Validate Filter Users Grid After Checking
    [Tags]    FUNCTIONAL
    Verify Filter Users Grid        ${USER NAME COLUMN NAME}        ${CARRIER SECURITY USER NAME}

Validate Click Users Grid First Row Inline Action Button After Checking
    [Tags]    FUNCTIONAL
    Verify Click Users Grid First Row Inline Action Button

Validate Select Inline Action Item After Checking
    [Tags]    FUNCTIONAL
    system_admin_page_resource.Verify Select Inline Action Item     ${CARRIER SECURITY INLINE ITEM}

Validate Select Account Security Tab After Checking
    [Tags]    FUNCTIONAL
    Verify Select Account Security Tab

Validate Move All Accounts To Source
    [Tags]    FUNCTIONAL
    Verify Move All Accounts To Source

Validate Click Edit User Ok Button After Checking
    [Tags]    FUNCTIONAL
    Verify Click Edit User Ok Button
