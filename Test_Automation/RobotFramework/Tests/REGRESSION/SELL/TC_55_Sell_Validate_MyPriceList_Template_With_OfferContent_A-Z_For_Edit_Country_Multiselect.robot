*** Settings ***
Documentation    [TAENOSIS-793] A Test Suite With Set Of Tests To Validate MyPriceList Template With OfferContent A-Z for Edit Country Multiselect

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
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
    Verify Set Variable Name    cplLockAtoZCountryList

Validate Click Configuration Variables Grid Search Button
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column
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

Validate Click Customer Price Lists Button
    [Tags]     REGRESSION
    Verify Click Create Customer Price Lists Button

Validate Create Customer Price Lists Screen Displayed
    [Tags]     REGRESSION
    Verify Create Customer Price Lists Screen Loaded

Validate Click My Price List Button
    [Tags]     REGRESSION
    Verify Click My Price List Button

Validate Click My Price List Management Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click My Price List Management Grid First Row Inline Action Button

Validate Select My Price List Management Grid Inline Action Item
    [Tags]     REGRESSION
    Verify Select My Price List Management Grid Inline Action Item      Edit

Validate Offer Content Field Value
    [Tags]     REGRESSION
    Verify Offer Content Field Value    A-Z

Validate Country Multiselection Field Is Disabled In Edit Page
    [Tags]     REGRESSION
    Verify Country Multiselection Field Is Disabled
