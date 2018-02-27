*** Settings ***
Documentation    [TAENOSIS-984] Validate CPE Management screen (Legacy UI)

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixtrade_page_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Contracts Module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate Navigate to IXTrade module
    [Tags]    REGRESSION
    Go To IXTrade Screen With Specific Url

Validate Click Customer Pricing exception management Submenu
    [Tags]    REGRESSION
    Verify Click Customer Pricing Exception Management Submenu

Validate Refresh iXTrade Window
    [Tags]    REGRESSION
    Verify Refresh iXTrade Window

Validate Set Status For Search
    [Tags]    REGRESSION
    ixtrade_page_resource.Verify Set Status           Requested

Validate Click Customer Pricing Exception Management Search Button
    [Tags]    REGRESSION
    Verify Click Customer Pricing Exception Management Search Button

Validate Click Pricing Exception Grid First Row Checkbox
    [Tags]    REGRESSION
    ixtrade_page_resource.Verify Click Pricing Exception Grid First Row Checkbox

Validate Click Bulk Edit Button
    [Tags]    REGRESSIOn
    Verify Click CPEM Grid Bulk Edit Button

Validate Set Status For Bulk Edit
    [Tags]    REGRESSION
    Verify Set Status For Bulk Edit         Requested

Validate Set Requested Price For Bulk Edit
    [Tags]    REGRESSION
    Verify Set Requested Price For Bulk Edit        12

Validate Click Bulk Edit Submit Button
    [Tags]    REGRESSIOn
    ixtrade_page_resource.Verify Click Bulk Edit Submit Button

Validate Click On Copy Button
    [Tags]    REGRESSION
    Verify Click On Copy Button

Validate Select Customers For Copy Price Exceptions
    [Tags]    REGRESSION
    ${CREATED CUSTOMER NAME} =      Verify Get Created Customer Name
    ixtrade_page_resource.Verify Select Customers For Copy Price Exceptions       ${CREATED CUSTOMER NAME}

Validate Click On Copy Cpe Save Button
    [Tags]    REGRESSIOn
    Verify Click On Copy Cpe Save Button

Validate Click Pricing Exception Grid First Row Checkbox For CRE Report
    [Tags]    REGRESSION
    ixtrade_page_resource.Verify Click Pricing Exception Grid First Row Checkbox

Validate Click CPEM Grid CPE Report Button
    [Tags]    REGRESSION
    Verify Click CPEM Grid CPE Report Button

Validate CPE Report Page Is Loaded Properly
    [Tags]    REGRESSION
    Verify CPE Report Page Is Loaded Properly

Validate Close CPE Report Window
    [Tags]    REGRESSION
    Verify Close iXTrade Window

Validate Click Exit Button
    [Tags]    REGRESSION
    ixtrade_page_resource.Verify Click Exit Button

Validate Login Functionality With Valid Credential After Closing Ixtrade
    [Tags]    REGRESSION
    Validate Login Functionality With Valid Credential

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
    Verify Set Variable Name    BundlePricingExceptions

Validate Click Configuration Variables Grid Search Button
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        0

Validate Log Out Functionality After Setting Config Variable
    [Tags]    REGRESSION
    Validate Log Out Functionality

Validate Login Functionality With Valid Credential After Setting Config Variable
    [Tags]    REGRESSION
    Validate Login Functionality With Valid Credential

Validate Navigate to Contracts Module After Setting Config Variable
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate Navigate to IXTrade module After Setting Config Variable
    [Tags]    REGRESSION
    Go To IXTrade Screen With Specific Url

Validate Click Customer Pricing exception management Submenu After Setting Config Variable
    [Tags]    REGRESSION
    Verify Click Customer Pricing Exception Management Submenu

Validate Refresh iXTrade Window After Setting Config Variable
    [Tags]    REGRESSION
    Verify Refresh iXTrade Window

Validate Click Customer Pricing Exception Management Search Button After Setting Config Variable
    [Tags]    REGRESSION
    Verify Click Customer Pricing Exception Management Search Button

Validate Data Is Displayed In CPE Grid
    [Tags]    REGRESSION
    Verify Data Is Displayed In CPE Grid

Validate Left Side Status Column Is Present In CPE Grid
    [Tags]    REGRESSION
    Verify Left Side Specific Column Is Present In CPE Grid     Status

Validate Left Side Customer Column Is Present In CPE Grid
    [Tags]    REGRESSION
    Verify Left Side Specific Column Is Present In CPE Grid     Customer

Validate Left Side Selling Destination Column Is Present In CPE Grid
    [Tags]    REGRESSION
    Verify Left Side Specific Column Is Present In CPE Grid     Selling Destination

Validate Click Exit Button After Setting Config Variable
    [Tags]    REGRESSION
    ixtrade_page_resource.Verify Click Exit Button