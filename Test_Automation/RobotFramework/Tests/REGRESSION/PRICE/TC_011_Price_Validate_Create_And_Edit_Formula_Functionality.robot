*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Create And Edit Formula Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/price_page_test_data_source.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/ixconnect_page_test_data_source.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/system_admin_page_test_data_source.robot

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
    Verify Set Scope        General

Validate Set Variable Name
    [Tags]    REGRESSION
    Verify Set Variable Name    InboundReferenceNumberPlanID

Validate Click Search Button
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column To Set InboundReferenceNumberPlanID
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        ${INBOUND REFERENCE NUMBER PLAN ID UPDATE VALUE}

Validate Set Outbound Reference Number Plan ID Variable Name
    [Tags]    REGRESSION
    Verify Set Variable Name    OutboundReferenceNumberPlanID

Validate Click Configuration Variables Grid Search Button To Set OutboundReferenceNumberPlanID
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Outbound Reference Number Plan Value In Current Value Column
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        ${OUTBOUND REFERENCE NUMBER PLAN ID VALUE}

Validate Set iXToolsWholesaleSolutionType Variable Name
    [Tags]    REGRESSION
    Verify Set Variable Name    iXToolsWholesaleSolutionType

Validate Click Configuration Variables Grid Search Button To Set iXToolsWholesaleSolutionType
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column To Set iXToolsWholesaleSolutionType
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        3

Validate Close System Admin Window
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to IXConnect module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate IXConnect Page Loaded Properly
    [Tags]    REGRESSION
    Is Contracts Page Loaded Properly

Validate Select Destination Submenu
    [Tags]    REGRESSION
    Verify Select Destination Submenu

Validate Click Destination New Button
    [Tags]    REGRESSION
    Verify Click Destination New Button

Validate Set Destination
    [Tags]    REGRESSION
    Verify Set Destination      ${TEST DATA PREFIX}

Validate Set Destination Abbreviation
    [Tags]    REGRESSION
    Verify Set Destination Abbreviation

Validate Set Destination Type
    [Tags]    REGRESSION
    Verify Set Destination Type     ${DESTINATION TYPE}

Validate Set Call Char
    [Tags]    REGRESSION
    Verify Set Call Char        ${DESTINATION CALL CHAR}

Validate Set Country
    [Tags]    REGRESSION
    Verify Set Country          ${DESTINATION COUNTRY}

Validate Set Number Plan
    [Tags]    REGRESSION
    Verify Set Number Plan      ${DESTINATION NUMBER PLAN}

Validate Set Destination Begin Date
    [Tags]    REGRESSION
    Verify Set Destination Begin Date

Validate Set Destination End Date
    [Tags]    REGRESSION
    Verify Set Destination End Date

Validate Click Destination Save Button
    [Tags]    REGRESSION
    Verify Click Destination Save Button

Validate Close IxConnect Window
    [Tags]    REGRESSION
    Verify Close IxConnect Window       ${True}

Validate Navigate to Price module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Navigate to Price Policies Tab
    [Tags]    REGRESSION
    Verify Select Price Policies Tab

Validate Click Formulas Button
    [Tags]    REGRESSION
    Verify Click Formulas Button

Validate Get Created Price Policy Name
    [Tags]    REGRESSION
    Verify Get Created Cost Policy Name

Validate Set Price Policy
    [Tags]    REGRESSION
    Verify Set Price Policy

Validate Click Search Button
    [Tags]    REGRESSION
    price_page_resource.Verify Click Search Button

Validate Click Create Destination Formula
    [Tags]    REGRESSION
    Verify Click Create Destination Formula

Validate Set Destination of Formula Pop Up
    [Tags]    REGRESSION
    ${DESTINATION} =    Verify Get Created Destination
    Verify Set Destination of Formula Pop Up        ${DESTINATION}

Validate Set Rate Type For Destination Formula
    [Tags]    REGRESSION
    Verify Set Rate Type            ${RATE TYPE FOR DESTINATION PRICE FORMULA}

Validate Set Begin Date For Destination Formula
    [Tags]    REGRESSION
    Verify Set Begin Date           ${BEGIN DATE FOR DESTINATION PRICE FORMULA}

Validate Set Formula Target For Destination Formula
    [Tags]    REGRESSION
    Verify Set Formula Target       ${TARGET FOR DESTINATION}

Validate Set Formula Minimum For Destination Formula
    [Tags]    REGRESSION
    Verify Set Formula Minimum      ${MINIMUM FOR DESTINATION}

Validate Set Formula Cost For Destination Formula
    [Tags]    REGRESSION
    Verify Set Formula Cost         ${COST FOR DESTINATION}

Validate Click Calculate Button
    [Tags]    REGRESSION
    Verify Click Calculate Button

Validate Click Create Button For Destination Formula
    [Tags]    REGRESSION
    Verify Click Create Button

Validate Set Select Date For Destination Formula
    [Tags]    REGRESSION
    Verify Set Select Date          ${BEGIN DATE FOR DESTINATION PRICE FORMULA}

Validate Click Search Button For Destination Formula
    [Tags]    REGRESSION
    price_page_resource.Verify Click Search Button

Validate Filter Price Policies Formulas Notes Column For Destination Formula
    [Tags]    REGRESSION
    Verify Filter Cost Policies Formulas Grid Notes Column

Validate Get Price Policies Formulas Grid Row Details For Destination Formula
    [Tags]    REGRESSION
    Verify Get Price Policies Formulas Grid Row Details

Validate Formula Type For Destination Formula
    [Tags]    REGRESSION
    Verify Formula Type         ${FORMULA TYPE FOR DESTINATION PRICE FORMULA}

Validate Formula Target For Destination Formula
    [Tags]    REGRESSION
    Verify Formula Target       ${TARGET FOR DESTINATION}

Validate Formula Minimum For Destination Formula
    [Tags]    REGRESSION
    Verify Formula Minimum      ${MINIMUM FOR DESTINATION}

Validate Formula Cost For Destination Formula
    [Tags]    REGRESSION
    Verify Formula Cost         ${COST FOR DESTINATION}

Validate Clear Price Policies Formulas Column Filter For Destination Formula
    [Tags]    REGRESSION
    Verify Clear Cost Policy Column Filter      ${NOTES COLUMN NAME FOR PRICE FORMULA}

Validate Click Create New Policy Formula Dropdown For Global Formula
    [Tags]    REGRESSION
    Verify Click Create New Cost Policy Formula Dropdown

Validate Click Create Global Formula
    [Tags]    REGRESSION
    Verify Click Create Global Formula

Validate Set Rate Type For Global Formula
    [Tags]    REGRESSION
    Verify Set Rate Type            ${RATE TYPE FOR GLOBAL PRICE FORMULA}

Validate Set Begin Date For Global Formula
    [Tags]    REGRESSION
    Verify Set Begin Date           ${BEGIN DATE FOR GLOBAL PRICE FORMULA}

Validate Set Formula Target For Global Formula
    [Tags]    REGRESSION
    Verify Set Formula Target       ${TARGET FOR GLOBAL}

Validate Set Formula Minimum For Global Formula
    [Tags]    REGRESSION
    Verify Set Formula Minimum      ${MINIMUM FOR GLOBAL}

Validate Set Formula Cost For Global Formula
    [Tags]    REGRESSION
    Verify Set Formula Cost         ${COST FOR GLOBAL}

Validate Click Create Button For Global Formula
    [Tags]    REGRESSION
    Verify Click Create Button

Validate Set Select Date For Global Formula
    [Tags]    REGRESSION
    Verify Set Select Date          ${BEGIN DATE FOR GLOBAL PRICE FORMULA}

Validate Click Search Button For Global Formula
    [Tags]    REGRESSION
    price_page_resource.Verify Click Search Button

Validate Filter Price Policies Formulas Notes Column For Global Formula
    [Tags]    REGRESSION
    Verify Filter Cost Policies Formulas Grid Notes Column

Validate Get Price Policies Formulas Grid Row Details For Global Formula
    [Tags]    REGRESSION
    Verify Get Price Policies Formulas Grid Row Details

Validate Formula Type For Global Formula
    [Tags]    REGRESSION
    Verify Formula Type         ${FORMULA TYPE FOR GLOBAL PRICE FORMULA}

Validate Formula Target For Global Formula
    [Tags]    REGRESSION
    Verify Formula Target       ${TARGET FOR GLOBAL}

Validate Formula Minimum For Global Formula
    [Tags]    REGRESSION
    Verify Formula Minimum      ${MINIMUM FOR GLOBAL}

Validate Formula Cost For Global Formula
    [Tags]    REGRESSION
    Verify Formula Cost         ${COST FOR GLOBAL}

Validate Clear Price Policies Formulas Column Filter For Global Formula
    [Tags]    REGRESSION
    Verify Clear Cost Policy Column Filter      ${NOTES COLUMN NAME FOR PRICE FORMULA}

Validate Click Create New Policy Formula Dropdown For Category Formula
    [Tags]    REGRESSION
    Verify Click Create New Cost Policy Formula Dropdown

Validate Click Create Category Formula
    [Tags]    REGRESSION
    Verify Click Create Category Formula

Validate Set Category of Formula Pop Up
    [Tags]    REGRESSION
    Verify Set Category of Formula Pop Up       ${CATEGORY FOR PRICE FORMULA}

Validate Set Rate Type For Category Formula
    [Tags]    REGRESSION
    price_page_resource.Verify Set Rate Type            ${RATE TYPE FOR CATEGORY PRICE FORMULA}

Validate Set Begin Date For Category Formula
    [Tags]    REGRESSION
    price_page_resource.Verify Set Begin Date           ${BEGIN DATE FOR CATEGORY PRICE FORMULA}

Validate Set Formula Target For Category Formula
    [Tags]    REGRESSION
    Verify Set Formula Target       ${TARGET FOR CATEGORY}

Validate Set Formula Minimum For Category Formula
    [Tags]    REGRESSION
    Verify Set Formula Minimum      ${MINIMUM FOR CATEGORY}

Validate Set Formula Cost For Category Formula
    [Tags]    REGRESSION
    Verify Set Formula Cost         ${COST FOR CATEGORY}

Validate Click Create Button For Category Formula
    [Tags]    REGRESSION
    Verify Click Create Button

Validate Set Select Date For Category Formula
    [Tags]    REGRESSION
    price_page_resource.Verify Set Select Date          ${BEGIN DATE FOR CATEGORY PRICE FORMULA}

Validate Click Search Button For Category Formula
    [Tags]    REGRESSION
    price_page_resource.Verify Click Search Button

Validate Filter Price Policies Formulas Notes Column For Category Formula
    [Tags]    REGRESSION
    Verify Filter Cost Policies Formulas Grid Notes Column

Validate Get Price Policies Formulas Grid Row Details For Category Formula
    [Tags]    REGRESSION
    Verify Get Price Policies Formulas Grid Row Details

Validate Formula Type For Category Formula
    [Tags]    REGRESSION
    Verify Formula Type         ${FORMULA TYPE FOR CATEGORY PRICE FORMULA}

Validate Formula Target For Category Formula
    [Tags]    REGRESSION
    Verify Formula Target       ${TARGET FOR CATEGORY}

Validate Formula Minimum For Category Formula
    [Tags]    REGRESSION
    Verify Formula Minimum      ${MINIMUM FOR CATEGORY}

Validate Formula Cost For Category Formula
    [Tags]    REGRESSION
    Verify Formula Cost         ${COST FOR CATEGORY}

Validate Click Policies Formulas Grid Inline Action Button
    [Tags]    REGRESSION
    Verify Click Policies Formulas Grid Inline Action Button

Validate Select Inline Action Item
    [Tags]    REGRESSION
    price_page_resource.Verify Select Inline Action Item        ${EDIT FORMULA ITEM}

Validate Set Formula Target For Edit
    [Tags]    REGRESSION
    Verify Set Formula Target       ${TARGET FOR EDIT}

Validate Set Formula Minimum For Edit
    [Tags]    REGRESSION
    Verify Set Formula Minimum      ${MINIMUM FOR EDIT}

Validate Set Formula Cost For Edit
    [Tags]    REGRESSION
    Verify Set Formula Cost         ${COST FOR EDIT}

Validate Click Save Button For Edit
    [Tags]    REGRESSION
    Verify Click Save Button For Edit

Validate Clear Price Policies Formulas Column Filter For Category Formula
    [Tags]    REGRESSION
    Verify Clear Cost Policy Column Filter      ${NOTES COLUMN NAME FOR PRICE FORMULA}

Validate Filter Price Policies Formulas Notes Column For Category Formula After Edit
    [Tags]    REGRESSION
    Verify Filter Cost Policies Formulas Grid Notes Column

Validate Get Price Policies Formulas Grid Row Details For Edit
    [Tags]    REGRESSION
    Verify Get Price Policies Formulas Grid Row Details

Validate Formula Target For Edit
    [Tags]    REGRESSION
    Verify Formula Target       ${TARGET FOR EDIT}

Validate Formula Minimum For Edit
    [Tags]    REGRESSION
    Verify Formula Minimum      ${MINIMUM FOR EDIT}

Validate Formula Cost For Edit
    [Tags]    REGRESSION
    Verify Formula Cost         ${COST FOR EDIT}

Validate Click Delete Formulas Button Without Selecting Formulas
    [Tags]    REGRESSION
    Verify Click Delete Formulas Button
