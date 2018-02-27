*** Settings ***
Documentation    A Test Suite With Set Of Tests To Validate The RPL List In The Reference Price List Approved Reject Should Be Sorted Alphabetically

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixtrade_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
@{ALL RPL LIST}     ${EMPTY}

*** Test Cases ***
Validate Navigate to Contracts Module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate Navigate to IXTrade module
    [Tags]    REGRESSION
    Go To IXTrade Screen With Specific Url

Validate Click Click Reference Price List management Submenu
    [Tags]    REGRESSION
    Verify Click Reference Price List management Submenu

Validate Click Approval Reject Wizard Button
    [Tags]    REGRESSION
    Verify Click Approval Reject Wizard Button

Validate The RPLM Approval Reject Wizard Page Loaded Properly
    [Tags]    REGRESSION
    Verify The RPLM Approval Reject Wizard Page Is Present

Validate Get All RPL List
    [Tags]    REGRESSION
    @{ALL RPL LIST} =   Verify Get All RPL List
    set suite variable      @{ALL RPL LIST}

Validate Verify Ascending Sorted Data For RPL
    [Tags]    REGRESSION
    Verify Ascending Sorted Data For RPL        @{ALL RPL LIST}

Validate Close IXTrade Window
    [Tags]    REGRESSION
    Verify Click Exit Button