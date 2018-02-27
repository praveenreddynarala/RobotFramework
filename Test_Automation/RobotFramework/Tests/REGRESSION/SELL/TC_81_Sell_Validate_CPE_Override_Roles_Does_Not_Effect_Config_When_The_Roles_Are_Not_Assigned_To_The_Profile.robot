*** Settings ***
Documentation    [TAENOSIS-1000] Validate CPE override roles does not effect config when the roles are not assigned to the profile.

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/audit_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixadmin_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/ixadmin_page_test_data_source.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/sell_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to IXAudit Module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Audit' From Main Menu

Validate Navigate to IXAdmin module
    [Tags]    REGRESSION
    Go To IXAdmin Screen With Specific Url

Validate Click Profile Submenu
    [Tags]    REGRESSION
    Verify Click Profile Submenu

Validate Click List Frame Go Button
    [Tags]    REGRESSION
    Verify Click List Frame Go Button

Validate Select Profile Item
    [Tags]    REGRESSION
    Verify Select Profile Item      ${DEVELOPERS ONLY PROFILE ITEM}

Validate Select Roles Tab
    [Tags]    REGRESSION
    Verify Select Roles Tab

Validate Set Application
    [Tags]    REGRESSION
    ixadmin_page_resource.Verify Set Application      ${IXTRADE APPLICATION NAME}

Validate Click Go Button
    [Tags]    REGRESSION
    ixadmin_page_resource.Verify Click Go Button

Validate Select Multiple Role Chechboxes To Delete
    [Tags]    REGRESSION
    Verify Select Multiple Role Chechboxes To Delete      @{IXTRADE OVERRIDE ROLE ID LIST}

Validate Click Delete Button
    [Tags]    REGRESSION
    ixadmin_page_resource.Verify Click Delete Button

Validate Close IXAdmin Window For Deleting
    [Tags]    REGRESSION
    Verify Close IXAdmin Window

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
    Verify Set Variable Name    BackDatePricingExceptionDays

Validate Click Configuration Variables Grid Search Button
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        1

Validate Set Variable Name For ForwardDatePricingExceptionDays
    [Tags]    REGRESSION
    Verify Set Variable Name    ForwardDatePricingExceptionDays

Validate Click Configuration Variables Grid Search Button For ForwardDatePricingExceptionDays
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column For ForwardDatePricingExceptionDays
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        7

Validate Close System Admin Window
    [Tags]    REGRESSION
    Validate Log Out Functionality

Validate Login Functionality With Valid Credential
    [Tags]    REGRESSION
    Validate Login Functionality With Valid Credential

Validate Navigate to Sell module
    [Tags]    REGRESSION
    Click On Home Icon And Select 'Sell' From Main Menu

Validate Navigate to Customer Tab
    [Tags]    REGRESSION
    Click On Customer Tab

Validate Click Price Exceptions Button
    [Tags]    REGRESSION
    Verify Click Price Exceptions Button

Validate Set Status Before Status Updation
    [Tags]    REGRESSION
    sell_page_resource.Verify Set Status           @{STATUS ITEM LIST BEFORE STATUS UPDATION}

Validate Click Price Exceptions Search Button
    [Tags]    REGRESSION
    Verify Click Price Exceptions Search Button

Validate Select Pricing Exception Grid First Row
    [Tags]    REGRESSION
    Verify Select Price Exception Grid First Row

Validate Set Price Exceptions Grid First Row Status
    [Tags]    REGRESSION
    Verify Set Price Exceptions Grid First Row Status        ${PRICE EXCEPTION GRID STATUS}

Validate Click Save Changes Button
    [Tags]    REGRESSION
    sell_page_resource.Verify Click Save Changes Button

Validate Navigate to IXAudit Module For Adding
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Audit' From Main Menu

Validate Navigate to IXAdmin module For Adding
    [Tags]    REGRESSION
    Go To IXAdmin Screen With Specific Url

Validate Click Profile Submenu For Adding
    [Tags]    REGRESSION
    Verify Click Profile Submenu

Validate Click List Frame Go Button For Adding
    [Tags]    REGRESSION
    Verify Click List Frame Go Button

Validate Select Profile Item For Adding
    [Tags]    REGRESSION
    Verify Select Profile Item      ${DEVELOPERS ONLY PROFILE ITEM}

Validate Select Roles Tab For Adding
    [Tags]    REGRESSION
    Verify Select Roles Tab

Validate Set Application For Adding
    [Tags]    REGRESSION
    ixadmin_page_resource.Verify Set Application      ${IXTRADE APPLICATION NAME}

Validate Click Go Button For Adding
    [Tags]    REGRESSION
    ixadmin_page_resource.Verify Click Go Button

Validate Click Add New Roles Button
    [Tags]    REGRESSION
    Verify Click Add New Roles Button

Validate Select Multiple Role Chechboxes To Add
    [Tags]    REGRESSION
    Verify Select Multiple Role Chechboxes To Add      @{IXTRADE OVERRIDE ROLE ID LIST}

Validate Click Add Role Save Button
    [Tags]    REGRESSION
    Verify Click Add Role Save Button

Validate Close IXAdmin Window After Adding
    [Tags]    REGRESSION
    Verify Close IXAdmin Window