*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate CPL Preview Displays Errors And Warnings Tabs Only If Errors And Warnings Exist

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
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

Validate Set Apply Increase Notice Period
    [Tags]     REGRESSION
    Verify Set Apply Increase Notice Period

Validate Set Apply Digit Change Notice Period
    [Tags]     REGRESSION
    Verify Set Apply Digit Change Notice Period

Validate Set Apply Decrease Notice Period
    [Tags]     REGRESSION
    Verify Set Apply Decrease Notice Period

Validate Get Created Customer Name
    [Tags]    REGRESSION
    Verify Get Created Customer Name

Validate Select Customers For Price Lists
    [Tags]     REGRESSION
    Verify Select Customers For Price Lists

Validate Select Countries For Price Lists
    [Tags]     REGRESSION
    Verify Select All Countries For Price Lists

Validate Click Preview Button
    [Tags]    REGRESSION
    sell_page_resource.Verify Click Preview Button

Validate Click Show Summary Form Button To Expand
    [Tags]    REGRESSION
    Verify Click Show Summary Form Button To Expand

Validate The Warnings Message Tab Is Available
    [Tags]    REGRESSION
    Verify The Warnings Message Tab Is Available

Validate The Errors Message Tab Is Available
    [Tags]    REGRESSION
    Verify The Errors Message Tab Is Available

Validate Close Preview Page
    [Tags]    REGRESSION
    sell_page_resource.Verify Close Preview Page