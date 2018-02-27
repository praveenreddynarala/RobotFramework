*** Settings ***
Documentation     [TAENOSIS-986] A Test Suite With Set Of Tests To Verify The Server Level Order Section Is Not Displayed When Config Is Enabled

Resource          ../../../../Resources/common_resource.robot
Resource          ../../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../../Resources/ExternalDataSource/TestAutomation/carrier_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CREATED CARRIER NAME}     ${EMPTY}

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

Validate Set Scope
    [Tags]    REGRESSION
    Verify Set Scope        iXConnect

Validate Set Variable Name
    [Tags]    REGRESSION
    Verify Set Variable Name    EnableServiceLevelChangeWorkOrders

Validate Click Configuration Variables Grid Search Button
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        1

Validate Close System Admin Window
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to Carrier module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Carrier' From Main Menu

Validate Get Created Carrier Name
    [Tags]    REGRESSION
    ${CREATED CARRIER NAME} =   Verify Get Created Carrier Name
    set suite variable          ${CREATED CARRIER NAME}

Validate Filter Carrier Grid
    [Tags]    REGRESSION
    Verify Filter Carriers Grid After Create        ${CARRIER NAME COLUMN NAME}     ${CREATED CARRIER NAME}

Validate Click Carriers Page First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Carriers Page First Row Inline Action Button

Validate Select Item From Inline Action
    [Tags]    REGRESSION
    carrier_page_resource.Verify Select Item From Inline Action           ${CARRIER RELATIONSHIPS INLINE ITEM}

Validate Expand Service Level Assignments Section
    [Tags]    REGRESSION
    Verify Expand Service Level Assignments Section

Validate The Add Service Level Button Is Not Available
    [Tags]    REGRESSION
    Verify The Add Service Level Button Is Not Available

Validate The Add Service Level Inline Action Button Is Not Available
    [Tags]    REGRESSION
    Verify The Add Service Level Inline Action Button Is Not Available

Validate The Service Level Change Work Order Section Is Available
    [Tags]    REGRESSION
    Verify The Service Level Change Work Order Section Is Available