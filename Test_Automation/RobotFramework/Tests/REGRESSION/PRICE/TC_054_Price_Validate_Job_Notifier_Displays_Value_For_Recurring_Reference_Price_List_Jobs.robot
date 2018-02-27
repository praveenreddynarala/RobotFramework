*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate the Job Notifier Displays Value For Recurring Reference Price List Jobs

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixcontrol_page_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/business_admin_page_test_data_source.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/ixcontrol_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${PRICE POLICY NAME}        ${EMPTY}
${ROUTE CLASS}              ${EMPTY}

*** Test Cases ***
Validate Navigate to Price module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Select Price Policies Tab
    [Tags]    REGRESSION
    Verify Select Price Policies Tab

Validate Click Reference Prices Button
    [Tags]    REGRESSION
    Verify Click Reference Prices Button

Validate Get Completed Status Green Button Jobs Count For Reference Prices
    [Tags]    REGRESSION
    Verify Get Completed Status Green Button Jobs Count For Reference Price

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

Validate Set AZ Min Selection Threshold
    [Tags]    REGRESSION
    Verify Set Az Min Selection Threshold       ${AZ MIN SELECTION THRESHOLD FOR ADD REFERENCE PRICE LIST}

Validate Set Note
    [Tags]    REGRESSION
    Verify Set Note     ${NOTE FOR ADD REFERENCE PRICE LIST}

Validate Set Automated Rpl Generation
    [Tags]    REGRESSION
    Verify Set Automated Rpl Generation     Yes

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

Validate Click Objects And Processes Submenu
    [Tags]    REGRESSION
    Verify Click Objects And Processes Submenu

Validate Set Object Type
    [Tags]    REGRESSION
    Verify Set Object Type      ${TRADE OBJECT TYPE}

Validate Set Object
    [Tags]    REGRESSION
    Verify Set Object       ${RPLG RECURRING OBJECT NAME}

Validate Click Go Button For CDR
    [Tags]    REGRESSION
    ixcontrol_page_resource.Verify Click Go Button

Validate Click Object Name
    [Tags]    REGRESSION
    Verify Click Object Name        ${RPLG RECURRING OBJECT NAME}

Validate Set Registration Procedure
    [Tags]    REGRESSION
    Verify Set Registration Procedure       ${REGISTRATION PROCEDURE TYPE NAME}

Validate Click Modify Reference Price List Generate Save Button
    [Tags]    REGRESSION
    Verify Click Modify Reference Price List Generate Save Button

Validate Close IXControl Window
    [Tags]    REGRESSION
    Verify Close IxConnect Window       ${True}

Validate Navigate to Price Module For Reference Price
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Select Price Policies Tab For Reference Price
    [Tags]    REGRESSION
    Verify Select Price Policies Tab

Validate Click Reference Prices Button For Reference Prices
    [Tags]    REGRESSION
    Verify Click Reference Prices Button

Validate Compare Completed Status Green Buttons Jobs Count For Reference Prices
    [Tags]    REGRESSION
    Verify Compare Completed Status Green Buttons Jobs Count For Reference Price