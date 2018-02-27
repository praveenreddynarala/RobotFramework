*** Settings ***
Documentation    A Test Suite With Set Of Tests To Validate L2 Roles Functionality In Profile Tab

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/system_admin_page_test_data_source.robot

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
    Verify Set Variable Name        EnableSaaSGranularRoles

Validate Click Search Button
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Set Configuration Variables Current Value
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        1

Validate Sign Out From System Admin Page
    [Tags]    REGRESSION
    Verify Log Out

Validate Login With Carrier Credential
    [Tags]    REGRESSION
    Validate Login Functionality With Valid Credential

Validate Navigate to System Admin module For Users Tab
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select Users Tab
    [Tags]    REGRESSION
    Click on Users Tab

Validate Click Security Profile Button
    [Tags]    REGRESSION
    Verify Click Security Profile Button

Validate Click New Profile Button
    [Tags]    REGRESSION
    Verify Click New Profile Button

Validate L2 Roles Section Is Displayed
    [Tags]    REGRESSION
    Verify L2 Roles Section Is Displayed

Validate Buy - Create/Update Vendor Role Is Available
    [Tags]    REGRESSION
    Verify Role Is Available Under L2 Roles     ${BUY CREATE VENDOR ROLE NAME}

Validate Buy/Sell - Country Groups Role Is Available
    [Tags]    REGRESSION
    Verify Role Is Available Under L2 Roles     ${BUY SELL COUNTRY GROUPS ROLE NAME}

Validate Carrier - Network Code Management Role Is Available
    [Tags]    REGRESSION
    Verify Role Is Available Under L2 Roles     ${CARRIER NETWORK CODE ROLE NAME}

Validate Sell - Create/Update Customer Role Is Available
    [Tags]    REGRESSION
    Verify Role Is Available Under L2 Roles     ${SELL CREATE CUSTOMER ROLE NAME}

Validate Sell - Customer Price Changes Upload Role Is Available
    [Tags]    REGRESSION
    Verify Role Is Available Under L2 Roles     ${SELL CUSTOMER PRICE ROLE NAME}

Validate Close Current Pop Up
    [Tags]    REGRESSION
    Verify Close Current Pop Up     ${VIEW EDIT PROFILE POP UP NAME}