*** Settings ***
Documentation    A Test Suite With Set Of Tests To Verify Accounts Displayed In Buy Sell And Carrier Module When ALSConfig Turned On

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot
Resource          ../../../Resources/Pages/buy_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/system_admin_page_test_data_source.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/carrier_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${ACCOUNT}             ${EMPTY}
${NEW USER NAME}        ${EMPTY}

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
    Verify Set Variable Name    ALSConfigFlag

Validate Click Configuration Variables Grid Search Button
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        ${ALS CONFIG FLAG VALUE}

Validate Close Configuration Variables Tab
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Close Current Tab        ${CONFIGURATION VARIABLE TAB NAME}

Validate Select Users Tab
    [Tags]    REGRESSION
    Click on Users Tab

Validate Click New User Button
    [Tags]    REGRESSION
    Verify Click New User Button

Validate Set User Name
    [Tags]    REGRESSION
    Verify Set User Name        ${TEST DATA PREFIX}

Validate Set First Name
    [Tags]    REGRESSION
    Verify Set First Name       ${TEST DATA PREFIX}

Validate Set Last Name
    [Tags]    REGRESSION
    Verify Set Last Name       ${TEST DATA PREFIX}

Validate Set Security Profile
    [Tags]    REGRESSION
    Verify Set Security Profile     ${NEW USER SECURITY PROFILE}

Validate Set User Status
    [Tags]    REGRESSION
    Verify Set User Status      ${NEW USER ACTIVE STATUS}

Validate Set Reports To
    [Tags]    REGRESSION
    Verify Set Reports To       ${NEW USER REPORTS TO}

Validate Set Password
    [Tags]    REGRESSION
    Verify Set Password     ${NEW USER PASSWORD}

Validate Set Confirm Password
    [Tags]    REGRESSION
    Verify Set Confirm Password     ${NEW USER PASSWORD}

Validate Set Primary Email
    [Tags]    REGRESSION
    Verify Set Primary Email        ${NEW USER PRIMARY EMAIL}

Validate Click Save And Create New Button
    [Tags]    REGRESSION
    Verify Click Save And Create New Button

Validate Get User Name
   [Tags]    REGRESSION
    ${NEW USER NAME} =    Verify Get User Name
    log   ${NEW USER NAME}
    set suite variable      ${NEW USER NAME}

Validate Close Create New User Pop Up
    [Tags]    REGRESSION
    Verify Close Create New User Pop Up

Validate Select Users Tab After Create User
    [Tags]    REGRESSION
    Click on Users Tab

Validate Set Profile Active Status For Search
    [Tags]    REGRESSION
    Verify Set Profile Status For Search      ${ACTIVE PROFILE STATUS}

Validate Click User Page Search Button
    [Tags]    REGRESSION
    Verify Click User Page Search Button

Validate Filter Users Grid To Assign Created Profile
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Filter Users Grid        ${USER NAME COLUMN NAME}        ${NEW USER NAME}

Validate Click Users Grid Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Users Grid Row Inline Action Button        ${NEW USER NAME}

Validate Select Users Grid Inline Action Item
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Select Inline Action Item       ${CARRIER SECURITY INLINE ITEM}

Validate Select Account Security Tab
    [Tags]    REGRESSION
    Verify Select Account Security Tab

Validate Click Select Accounts Radio Button
    [Tags]    REGRESSION
    Verify Click Select Accounts Radio Button

Validate Get Created Carrier Name
    [Tags]    REGRESSION
    ${ACCOUNT} =       carrier_page_resource.Verify Get Created Carrier Name
    set suite variable      ${ACCOUNT}

Validate Move Available Accounts To Destination
    [Tags]    REGRESSION
    @{ACCOUNT LIST TO MOVE} =   create list     ${ACCOUNT}
    Verify Move Available Accounts To Destination       ${ACCOUNT}

Validate Click Edit User Ok Button
    [Tags]    REGRESSION
    Verify Click Edit User Ok Button

Validate Navigate to Carrier module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Carrier' From Main Menu

Validate Filter Carriers Grid
    [Tags]    REGRESSION
    Verify Filter Carriers Grid After Create        ${CARRIER NAME COLUMN NAME}

Validate Get Carriers Grid Row Details
    [Tags]    REGRESSION
    Verify Get Carriers Grid Row Details

Validate Carriers Grid Carrier Name
    [Tags]    REGRESSION
    Verify Carriers Grid Carrier Name

Validate Close Carrier Window
    [Tags]    REGRESSION
    Verify Close Carrier Window

Validate Navigate to Buy module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Buy' From Main Menu

Validate Navigate To Vendors Tab
    [Tags]    REGRESSION
    Verify Click On Vendors Tab

Validate Click On Create Vendor Button
    [Tags]    REGRESSION
    Verify Click On Create Vendor Button

Validate IXTools Account Is Available
    [Tags]    REGRESSION
    Verify IXTools Account Is Available     ${ACCOUNT}

Validate Close Buy Window
    [Tags]    REGRESSION
    Verify Close Buy Window

Validate Navigate to Sell module
    [Tags]    REGRESSION
    Click On Home Icon And Select 'Sell' From Main Menu

Validate Navigate to Customer Tab
    [Tags]    REGRESSION
    Click On Customer Tab

Validate Click On Create Customer Button
    [Tags]    REGRESSION
    Verify Click On Create Customer Button

Validate IXTools Account Is Available In Sell Module
    [Tags]    REGRESSION
    Verify IXTools Account Is Available     ${ACCOUNT}