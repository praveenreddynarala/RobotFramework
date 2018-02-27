*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Customer Price List Inline Action

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

Validate Click On Customer Price Lists Button
    [Tags]     REGRESSION
    Verify Click On Customer Price Lists Button

Validate Customer Price Lists Screen Displayed
    [Tags]     REGRESSION
    Verify Customer Price Lists Screen Displayed

Validate Set From Date
    [Tags]     REGRESSION
    Verify Set From Date        1/1/2010

Validate Click Customer Price Lists Search Button
    [Tags]     REGRESSION
    Verify Click Customer Price Lists Search Button

Validate Status Filter Customer Price Lists Grid Before Issuing
    [Tags]     REGRESSION
    Verify Status Filter Customer Price Lists Grid      Created

Validate Filter Customer Price List Grid With Generated Price List Type
    [Tags]     REGRESSION
    Verify Filter Customer Price Lists Grid      Price List Type     Generated

Validate Click Customer Price Lists Inline Action Button Before Issuing
    [Tags]     REGRESSION
    Verify Click Customer Price Lists Inline Action Button      Created

Validate Is Delete Inline Action Item Present
    [Tags]     REGRESSION
    Verify Is Delete Inline Action Item Present

Validate Is Issue Inline Action Item Present
    [Tags]     REGRESSION
    Verify Is Issue Inline Action Item Present

Validate Is Issue For Manual Distribution Inline Action Item Present
    [Tags]     REGRESSION
    Verify Is Issue For Manual Distribution Inline Action Item Present

Validate Is View Price List Detail Inline Action Item Present
    [Tags]     REGRESSION
    Verify Is View Price List Detail Inline Action Item Present

Validate Select Issue Inline Action
    [Tags]     REGRESSION
    Verify Select Inline Action Item With Argument      Issue

Validate Accept Price Lists Pop Up After Issuing
    [Tags]     REGRESSION
    Verify Accept Price List Processed Pop Up

Validate Clear Status Filter After Issuing
    [Tags]     REGRESSION
    Verify Clear Filter Of Customer Price List      Status

Validate Clear All Table Filters After Issuing
    [Tags]     REGRESSION
    Verify Clear All Table Filters of Customer Price List       Price List

Validate Price List Filter Customer Price Lists Grid After Issuing
    [Tags]     REGRESSION
    Verify Price List Filter Customer Price Lists Grid

Validate Details of Customer Price List Grid Row After Issuing
    [Tags]     REGRESSION
    Verify Details of Customer Price List Grid Row          Export Requested

Validate Clear Price List Filter Before Issuing for Manual Distribution
    [Tags]     REGRESSION
    Verify Clear Filter Of Customer Price List      Price List

Validate Status Filter Customer Price Lists Grid Before Issuing for Manual Distribution
    [Tags]     REGRESSION
    Verify Status Filter Customer Price Lists Grid      Created

Validate Filter Customer Price List Grid With Generated Price List Type for Manual Distribution
    [Tags]     REGRESSION
    Verify Filter Customer Price Lists Grid      Price List Type     Generated

Validate Click Customer Price Lists Inline Action Button Before Issuing for Manual Distribution
    [Tags]     REGRESSION
    Verify Click Customer Price Lists Inline Action Button      Created

Validate Select Issue for Manual Distribution Inline Action
    [Tags]     REGRESSION
    Verify Select Inline Action Item With Argument      Issue for Manual Distribution

Validate Accept Price Lists Pop Up After Issuing for Manual Distribution
    [Tags]     REGRESSION
    Verify Accept Price List Processed Pop Up

Validate Clear Status Filter After Issuing for Manual Distribution
    [Tags]     REGRESSION
    Verify Clear Filter Of Customer Price List      Status

Validate Clear All Table Filters After Issuing for Manual Distribution
    [Tags]     REGRESSION
    Verify Clear All Table Filters of Customer Price List       Status

Validate Price List Filter Customer Price Lists Grid After Issuing for Manual Distribution
    [Tags]     REGRESSION
    Verify Price List Filter Customer Price Lists Grid

Validate Details of Customer Price List Grid Row After Issuing for Manual Distribution
    [Tags]     REGRESSION
    Verify Details of Customer Price List Grid Row          Export Requested