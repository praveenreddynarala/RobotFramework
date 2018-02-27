*** Settings ***
Documentation     [TAENOSIS-972] Validate Target Buy Overrides

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/buy_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate navigate to Buy module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Buy' From Main Menu

Validate Target Buy Policies Tab Is Displayed
    [Tags]    REGRESSION
    Verify Target Buy Policies Tab Is Displayed

Validate Select Target Buy Policies Tab
    [Tags]    REGRESSION
    Verify Select Target Buy Policies Tab

Validate Click Target Buy Overrides Button
    [Tags]    REGRESSION
    Verify Click Target Buy Overrides Button

Validate Target Buy List Overrides Screen Is Loaded
    [Tags]    REGRESSION
    Verify Target Buy List Overrides Screen Is Loaded

Validate Destination Textbox Is Visible
    [Tags]    REGRESSION
    Verify Destination Input Textbox Is Visible

Validate Target Buy List Dropdown Is Visible
    [Tags]    REGRESSION
    Verify Expected Dropdown List Control Present in Target Buy Overrides Screen    policy

Validate Country Dropdown Is Visible
    [Tags]    REGRESSION
    Verify Expected Dropdown List Control Present in Target Buy Overrides Screen    country

Validate Trade Destination Category Dropdown Is Visible
    [Tags]    REGRESSION
    Verify Expected Dropdown List Control Present in Target Buy Overrides Screen    category

Validate Region Dropdown Is Visible
    [Tags]    REGRESSION
    Verify Expected Dropdown List Control Present in Target Buy Overrides Screen    region

Validate Country Category1 Dropdown Is Visible
    [Tags]    REGRESSION
    Verify Expected Dropdown List Control Present in Target Buy Overrides Screen    countryCategory1

Validate Country Category2 Dropdown Is Visible
    [Tags]    REGRESSION
    Verify Expected Dropdown List Control Present in Target Buy Overrides Screen    countryCategory2

Validate Price Policy Column is Present in The Grid
    [Tags]    REGRESSION
    Verify Expected Grid Column Is Present      Price Policy

Validate Destination Column is Present in The Grid
    [Tags]    REGRESSION
    Verify Expected Grid Column Is Present      Destination

Validate Rate Type Column is Present in The Grid
    [Tags]    REGRESSION
    Verify Expected Grid Column Is Present      Rate Type

Validate Target Rate Column is Present in The Grid
    [Tags]    REGRESSION
    Verify Expected Grid Column Is Present      Target Rate

Validate Begin Date Column is Present in The Grid
    [Tags]    REGRESSION
    Verify Expected Grid Column Is Present      Begin Date

Validate End Date Column is Present in The Grid
    [Tags]    REGRESSION
    Verify Expected Grid Column Is Present      End Date

Validate Select Multiple Rows of Target Buy List Overrides Grid
    [Tags]    REGRESSION
    Verify Select Multiple Rows of Target Buy List Overrides Grid

Validate Click Target Buy List Overrides Bulk Edit Button
    [Tags]    REGRESSION
    Verify Click Target Buy List Overrides Bulk Edit Button

Validate Set Bulk Edit End Date
    [Tags]    REGRESSION
    Verify Set Bulk Edit End Date       1/1/2020        ${True}

Validate Click Bulk Edit Submit Button
    [Tags]    REGRESSION
    Verify Click Bulk Edit Submit Button