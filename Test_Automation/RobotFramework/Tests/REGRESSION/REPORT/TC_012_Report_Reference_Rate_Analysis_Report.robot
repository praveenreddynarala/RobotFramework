*** Settings ***
Documentation     A Test Suite With Set Of Tests For Verify Reference Rate Analysis Report

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixreport_page_resource.robot
Resource          ../../../Resources/Pages/buy_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/ixreport_page_test_data_source.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/buy_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${VENDOR NAME}      ${EMPTY}
${ANALYZED RATE}    ${EMPTY}
${EFFECTIVE DATE}   ${EMPTY}

*** Test Cases ***
Validate Navigate to Buy Module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Buy' From Main Menu

Validate Click On Vendors Tab
    [Tags]    REGRESSION
    Verify Click On Vendors Tab

Validate Click On Vendor Price Lists
    [Tags]    REGRESSION
    Verify Click On Vendor Price Lists

Validate Get Created Vendor Name
    [Tags]    REGRESSION
    ${VENDOR NAME} =    Verify Get Previous Created Vendor Name
    set suite variable      ${VENDOR NAME}

Validate Set Vendors
    [Tags]    REGRESSION
    Verify Set Vendors      ${VENDOR NAME}

Validate Click Vendor Price Lists Search Button
    [Tags]    REGRESSION
    Verify Click On Vendor Price Lists Search Button

Validate Click Vendor Price List Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Vendor Price List Grid First Row Inline Action Button

Validate Select Buy Page Inline Action Item
    [Tags]    REGRESSION
    Verify Select Buy Page Inline Action Item       ${VIEW PRICE LIST DETAIL INLINE ITEM}

Validate Select Reference Rates Tab
    [Tags]    REGRESSION
    Verify Select Reference Rates Tab

Validate Get Reference Rates Tab Analyzed Rate
    [Tags]    REGRESSION
    ${ANALYZED RATE} =      Verify Get Reference Rates Tab Analyzed Rate
    set suite variable      ${ANALYZED RATE}

Validate Get Reference Rates Tab Effective Date
    [Tags]    REGRESSION
    ${EFFECTIVE DATE} =      Verify Get Reference Rates Tab Effective Date
    set suite variable      ${EFFECTIVE DATE}

Validate Navigate to Report Module
    [Tags]    REGRESSION
    Verify Switch To IXReport

Validate Expand Administrative Reports Section
    [Tags]    REGRESSION
    Verify Expand Reports Section       ${IXTRADE REPORTS MENU}

Validate Click Sub Report Item
    [Tags]    REGRESSION
    Verify Click Sub Report Item        ${REFERENCE RATE ANALYSIS REPORT SUBMENU}

Validate Set Future Date as Offers From Date
    [Tags]    REGRESSION
    Verify Set Future Date as Offers From Date

Validate Click Submit Button And Verify Error Message
    [Tags]    REGRESSION
    Verify Click Submit Button And Verify Error Message     ${OFFER DATES ERROR MESSAGE}

Validate Click Vendor Massive Lookup Button
    [Tags]    REGRESSION
    Verify Click Vendor Massive Lookup Button

Validate Move More Than Ten Vendors To Assign
    [Tags]    REGRESSION
    Verify Move More Than Ten Vendors To Assign

Validate Click Vendor Lookup Submit Button And Verify Error Message
    [Tags]    REGRESSION
    Verify Click Vendor Lookup Submit Button And Verify Error Message

Validate Move Selected Vendors To Available
    [Tags]    REGRESSION
    Verify Move Selected Vendors To Available

Validate Set Vendor Lookup First Letter
    [Tags]    REGRESSION
    Verify Set Vendor Lookup First Letter     ${VENDOR NAME}

Validate Click Vendor Lookup Go Button
    [Tags]    REGRESSION
    Verify Click Vendor Lookup Go Button

Validate Move Created Vendor to Assigned
    [Tags]    REGRESSION
    Verify Move Vendor To Assigned

Validate Click Vendor Lookup Submit Button
    [Tags]    REGRESSION
    Verify Click Vendor Lookup Submit Button

Validate Set Past Date as Offers From Date
    [Tags]    REGRESSION
    Verify Set Current Date as Offers From Date

Validate Click Submit Button
    [Tags]    REGRESSION
    Verify Click Submit Button

Validate Analyzed Rate Is Shown Up to Six Decimal Points
    [Tags]    REGRESSION
    Verify Analyzed Rate Is Shown Up to Six Decimal Points

Validate Compare First Row Analyzed Rate
    [Tags]    REGRESSION
    ${REPORT ANALYZED RATE} =       Verify Get First Row Analyzed Rate
    Verify Compare Two Values       ${REPORT ANALYZED RATE}     ${ANALYZED RATE}

Validate Compare First Row Effective Date
    [Tags]    REGRESSION
    ${REPORT EFFECTIVE DATE} =      Verify Get First Row Effective Date
    Verify Compare Two Values       ${REPORT EFFECTIVE DATE}     ${EFFECTIVE DATE}

Validate Reference Rates Analysis Report Table Column Names
    [Tags]    REGRESSION
    Verify Reference Rates Analysis Report Table Column Names       @{REFERENCE RATES ANALYSIS REPORT TABLE COLUMN NAME LIST}

Validate Click Report Preview Button
    [Tags]    REGRESSION
    Verify Click Report Preview Button

Validate Click Report Export To Excel Button
    [Tags]    REGRESSION
    Verify Click Report Export To Excel Button

Validate Click Report Export To CSV Button
    [Tags]    REGRESSION
    Verify Click Report Export To CSV Button

Validate Click Report Export To PDF Button
    [Tags]    REGRESSION
    Verify Click Report Export To PDF Button

Validate Click First Row Vendor Name
    [Tags]    REGRESSION
    Verify Click First Row Vendor Name

Validate Switch To Level2 Detail Frame
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate CDR Error Report Layer 2 Table Column Names
    [Tags]    REGRESSION
    Verify Reference Rates Analysis Report Layer 2 Table Column Names      @{REFERENCE RATES ANALYSIS REPORT LAYER 2 TABLE COLUMN NAME LIST}

Validate Click Report Preview Button For Layer 2
    [Tags]    REGRESSION
    Verify Click Report Preview Button If Expand Successful

Validate Switch To Level2 Detail Frame After Preview
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate Click Report Export To Excel Button For Layer 2
    [Tags]    REGRESSION
    Verify Click Report Export To Excel Button If Expand Successful

Validate Click Report Export To CSV Button For Layer 2
    [Tags]    REGRESSION
    Verify Click Report Export To CSV Button If Expand Successful

Validate Switch To Level2 Detail Frame After CSV
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate Click Report Export To PDF Button For Layer 2
    [Tags]    REGRESSION
    Verify Click Report Export To PDF Button If Expand Successful

Validate Close Detail Report Window
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Close IXReport Window
    [Tags]    REGRESSION
    Verify Close IxReport Window