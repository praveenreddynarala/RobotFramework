*** Settings ***
Documentation     A Test Suite With Set Of Tests To Verify RPL Is Automatically Generated And Approved

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/price_page_test_data_source.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/business_admin_page_test_data_source.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixcontrol_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${PRICE POLICY NAME}        ${EMPTY}
${ROUTE CLASS}              ${EMPTY}

*** Test Cases ***
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
    price_page_resource.Verify Set Begin Date           ${BEGIN DATE FOR DESTINATION PRICE FORMULA}

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

Validate Close Price Window
    [Tags]    REGRESSION
    Verify Close Price Window

Validate Navigate to Business Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Business Admin' From Main Menu

Validate Get Route Class
    [Tags]    REGRESSION
    ${ROUTE CLASS} =     Verify Get Route Class
    log  ${ROUTE CLASS}
    set suite variable      ${ROUTE CLASS}

Validate Get Price Policy Name
    [Tags]    REGRESSION
    ${PRICE POLICY NAME} =     Verify Get Price Policy Name
    log  ${PRICE POLICY NAME}
    set suite variable      ${PRICE POLICY NAME}

Validate Expand Trading Menu
    [Tags]    REGRESSION
    Verify Expand Trading Menu

Validate Click Source And Policies Submenu
    [Tags]    REGRESSION
    Verify Click Source And Policies Submenu

Validate Set Source Type For Search
    [Tags]    REGRESSION
    Verify Set Source Type For Search       ${REFERENCE PRICE LIST SOURCE TYPE}

Validate Click Sources Search Button
    [Tags]    REGRESSION
    Verify Click Sources Search Button

Validate Click Add New Source Button
    [Tags]    REGRESSION
    Verify Click Add New Source Button

Validate Set Source
    [Tags]    REGRESSION
    Verify Set Source       ${TEST DATA PREFIX}

Validate Set Abbreviation
    [Tags]    REGRESSION
    Verify Set Abbreviation     ${TEST DATA PREFIX}

Validate Set Status
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Set Status       ${REFERENCE PRICE LIST SOURCE STATUS}

Validate Set Call Type
    [Tags]    REGRESSION
    Verify Set Call Type        ${CALL TYPE FOR ADD REFERENCE PRICE LIST}

Validate Set Reference Pricing Policy
    [Tags]    REGRESSION
    Verify Set Reference Pricing Policy        ${PRICE POLICY NAME}

Validate Set Route Class
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Set Route Class      ${ROUTE CLASS}

Validate Set Generate RPL Records For
    [Tags]    REGRESSION
    Verify Set Generate RPL Records For     All Destinations

Validate Set Automated Rpl Generation
    [Tags]    REGRESSION
    Verify Set Automated Rpl Generation     Yes & Approve

Validate Set Note
    [Tags]    REGRESSION
    Verify Set Note     ${NOTE FOR ADD REFERENCE PRICE LIST}

Validate Click Create New Customer Save Button
    [Tags]    REGRESSION
    Verify Click Create New Customer Save Button

Validate Close Business Admin Window
    [Tags]    REGRESSION
    Verify Close Business Admin Window

Validate Navigate to Contracts module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate Go To IXControl Screen With Specific Url
    [Tags]    REGRESSION
    Go To IXControl Screen With Specific Url

Validate Click Trade Submenu
    [Tags]    REGRESSION
    Verify Click Trade Submenu

Validate Set Registry Item
    [Tags]    REGRESSION
    Verify Set Registry Item        Reference Price List Generate (Recurring)

Validate Click Go Button
    [Tags]    REGRESSION
    ixcontrol_page_resource.Verify Click Go Button

Validate Click First Registry Item Info Button
    [Tags]    REGRESSION
    Verify Click First Registry Item Info Button

Validate Click First Registry Process
    [Tags]    REGRESSION
    Verify Click First Registry Process

Validate Get SQL Command
    [Tags]    REGRESSION
    Verify Get SQL Command

Validate Execute SQL To Run RPL Job
    [Tags]    REGRESSION
    Verify Execute SQL To Run RPL Job       ${DATABASE SERVER}   ${DATABASE}     ${DATABASE USERNAME}     ${DATABASE PASSWORD}

Validate Close IXControl Window
    [Tags]    REGRESSION
    Verify Close IxConnect Window       ${True}

Validate Navigate to Price Module For Reference Price
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Select Price Policies Tab For Reference Price
    [Tags]    REGRESSION
    Verify Select Price Policies Tab

Validate Click Reference Prices Button
    [Tags]    REGRESSION
    Verify Click Reference Prices Button

Validate Set Price Policy For RPL
    [Tags]    REGRESSION
    Verify Set Price Policy

Validate Click Reference Prices Search Button
    [Tags]    REGRESSION
    Verify Click Reference Prices Search Button

Validate Reference Prices Grid First Row Status
    [Tags]    REGRESSION
    Verify Reference Prices Grid First Row Status