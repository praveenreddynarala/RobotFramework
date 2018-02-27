*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Customer Price List Upload CPC Origin And OriginSet Available On Template When EnableOriginBaseRating Config Is Off

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/sell_page_test_data_source.robot

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

Validate Set Scope
    [Tags]    REGRESSION
    Verify Set Scope        CDR

Validate Set Variable Name
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Set Variable Name    InboundReferenceNumberPlanID

Validate Click Configuration Variables Grid Search Button
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        -1

Validate Set Variable Name To Set EnableSettlementOriginRating
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Set Variable Name    EnableSettlementOriginRating

Validate Click Configuration Variables Grid Search Button To Set EnableSettlementOriginRating
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column To Set EnableSettlementOriginRating
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        1

Validate Close System Admin Window
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to Sell module
    [Tags]    REGRESSION
    Click On Home Icon And Select 'Sell' From Main Menu

Validate Navigate to Customer Tab
    [Tags]    REGRESSION
    Click On Customer Tab

Validate Click On Customer Price Lists Button
    [Tags]     REGRESSION
    Verify Click On Customer Price Lists Button

Validate Click Upload Customer Price Lists Button
    [Tags]    REGRESSION
    Verify Click Upload Customer Price Lists Button

Validate Click Choose Template Type To Download Customer Price List Link
    [Tags]    REGRESSION
    Verify Click Choose Template Type To Download Customer Price List Link

Validate Close Current Price Exceptions Pop Up
    [Tags]    REGRESSION
    sell_page_resource.Verify Close Current Pop Up         ${UPLOAD CUSTOMER PRICE LISTS POP UP NAME}