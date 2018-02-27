*** Settings ***
Documentation    [TAENOSIS-666] A Test Suite With Set Of Tests To Verify The Generate Offers Link In Customer Offers Screen

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixtrade_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot

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
    Verify Set Variable Name    ExportToiXLinkEnhancedWorkflow

Validate Click Configuration Variables Grid Search Button
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        1

Validate Close System Admin Window
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to Contracts Module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate Navigate to IXTrade module
    [Tags]    REGRESSION
    Go To IXTrade Screen With Specific Url

Validate Click Customer Offers Submenu
    [Tags]    REGRESSION
    Verify Click Customer Offers Submenu

Validate Set Customer Offer From Date For Search
    [Tags]    REGRESSION
    Verify Set Vendor Offer From Date For Search    10/16/2011

Validate Set Current Status For iXLink Response Pending
    [Tags]    REGRESSION
    Verify Set Current Status       iXLink Response: Pending

Validate Click Customer Offers Go Button For iXLink Response Pending
    [Tags]    REGRESSION
    Verify Click Vendor Offers Go Button

Validate Click Customer Offer First Plus Button For iXLink Response Pending
    [Tags]    REGRESSION
    Verify Click Vendor Offer First Plus Button

Validate Click First Customer Offer Link For iXLink Response Pending
    [Tags]    REGRESSION
    Verify Click First Vendor Offer Link

Validate Generate Offer File Link Is Present For iXLink Response Pending
    [Tags]    REGRESSION
    Verify Generate Offer File Link Is Present

Validate Set Current Status For iXLink Response Rejected
    [Tags]    REGRESSION
    Verify Set Current Status       iXLink Response: Rejected

Validate Click Customer Offers Go Button For iXLink Response Rejected
    [Tags]    REGRESSION
    Verify Click Vendor Offers Go Button

Validate Click Customer Offer First Plus Button For iXLink Response Rejected
    [Tags]    REGRESSION
    Verify Click Vendor Offer First Plus Button

Validate Click First Customer Offer Link For iXLink Response Rejected
    [Tags]    REGRESSION
    Verify Click First Vendor Offer Link

Validate Generate Offer File Link Is Present For iXLink Response Rejected
    [Tags]    REGRESSION
    Verify Generate Offer File Link Is Present

Validate Set Current Status For iXLink Response Accepted
    [Tags]    REGRESSION
    Verify Set Current Status       iXLink Response: Accepted

Validate Click Customer Offers Go Button For iXLink Response Accepted
    [Tags]    REGRESSION
    Verify Click Vendor Offers Go Button

Validate Click Customer Offer First Plus Button For iXLink Response Accepted
    [Tags]    REGRESSION
    Verify Click Vendor Offer First Plus Button

Validate Click First Customer Offer Link For iXLink Response Accepted
    [Tags]    REGRESSION
    Verify Click First Vendor Offer Link

Validate Generate Offer File Link Is Present For iXLink Response Accepted
    [Tags]    REGRESSION
    Verify Generate Offer File Link Is Present

Validate Set Current Status For Export Completed
    [Tags]    REGRESSION
    Verify Set Current Status       Export Completed

Validate Click Customer Offers Go Button For Export Completed
    [Tags]    REGRESSION
    Verify Click Vendor Offers Go Button

Validate Click Customer Offer First Plus Button For Export Completed
    [Tags]    REGRESSION
    Verify Click Vendor Offer First Plus Button

Validate Click First Customer Offer Link For Export Completed
    [Tags]    REGRESSION
    Verify Click First Vendor Offer Link

Validate Generate Offer File Link Is Present For Export Completed
    [Tags]    REGRESSION
    Verify Generate Offer File Link Is Present