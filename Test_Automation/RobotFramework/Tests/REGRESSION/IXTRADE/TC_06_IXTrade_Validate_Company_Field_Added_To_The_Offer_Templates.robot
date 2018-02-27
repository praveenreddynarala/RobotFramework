*** Settings ***
Documentation    [TAENOSIS-1012] Validate company field added to the offer templates

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixtrade_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Contracts Module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate Navigate to IXTrade module
    [Tags]    REGRESSION
    Go To IXTrade Screen With Specific Url

Validate Click Offer Template Management Submenu
    [Tags]    REGRESSION
    Verify Click Offer Template Management Submenu

Validate The Offer Template Management Page Is Loaded Properly
    [Tags]    REGRESSION
    Verify The Offer Template Management Page Is Loaded Properly

Validate Click Offer Template Management Page Go Button
    [Tags]    REGRESSION
    Verify Click Vendor Offers Go Button

Validate The Offer Template Management Filter Option Is Worked Properly
    [Tags]    REGRESSION
    Verify The Offer Template Management Filter Option Is Worked Properly

Validate Click First Offer Template
    [Tags]    REGRESSION
    Verify Click First Offer Template

Validate The Company Field Is Available In Detail Frame
    [Tags]    REGRESSION
    Verify The Company Field Is Available In Detail Frame

Validate Click Offer Template Management Edit Button
    [Tags]    REGRESSION
    Verify Click Offer Template Management Edit Button

Validate The Company Field Is Available
    [Tags]    REGRESSION
    Verify The Company Field Is Available

Validate Click Offer Template Definition Cancel Button
    [Tags]    REGRESSIOn
    Verify Click Offer Template Definition Cancel Button

Validate Click New Offer Template Button
    [Tags]    REGRESSION
    Verify Click New Offer Template Button

Validate The Company Field Is Available In New Offer Template
    [Tags]    REGRESSION
    Verify The Company Field Is Available

Validate Click New Offer Template Cancel Button
    [Tags]    REGRESSIOn
    Verify Click Offer Template Definition Cancel Button

Validate Click Exit Button
    [Tags]    REGRESSION
    ixtrade_page_resource.Verify Click Exit Button