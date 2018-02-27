*** Settings ***
Documentation     A Test Suite With Set Of Tests To Verify If User Able To Filter Price Policies For Voice And SMS In Generate Reference Prices Screen

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/price_page_test_data_source.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/ixconnect_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${SMS TYPE CREATED PRICE POLICY NAME}       ${EMPTY}
${VOICE TYPE CREATED PRICE POLICY NAME}       ${EMPTY}
${VOICE DESTINATION}                        ${EMPTY}
${SMS DESTINATION}                        ${EMPTY}

*** Test Cases ***
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

Validate Get Created Destination
    [Tags]    REGRESSION
    ${VOICE DESTINATION} =    Verify Get Created Destination
    set suite variable          ${VOICE DESTINATION}

Validate Click Destination New Button For Sms
    [Tags]    REGRESSION
    Verify Click Destination New Button

Validate Set Destination For Sms
    [Tags]    REGRESSION
    Verify Set Destination      ${TEST DATA PREFIX}

Validate Set Destination Abbreviation For Sms
    [Tags]    REGRESSION
    Verify Set Destination Abbreviation

Validate Set Destination Type For Sms
    [Tags]    REGRESSION
    Verify Set Destination Type     SMS

Validate Set Call Char For Sms
    [Tags]    REGRESSION
    Verify Set Call Char        SMS

Validate Set Country For Sms
    [Tags]    REGRESSION
    Verify Set Country          ${DESTINATION COUNTRY}

Validate Set Number Plan For Sms
    [Tags]    REGRESSION
    Verify Set Number Plan      ${DESTINATION NUMBER PLAN}

Validate Set Destination Begin Date For Sms
    [Tags]    REGRESSION
    Verify Set Destination Begin Date

Validate Set Destination End Date For Sms
    [Tags]    REGRESSION
    Verify Set Destination End Date

Validate Click Destination Save Button For Sms
    [Tags]    REGRESSION
    Verify Click Destination Save Button

Validate Get Created Destination For Sms
    [Tags]    REGRESSION
    ${SMS DESTINATION} =    Verify Get Created Destination
    set suite variable          ${SMS DESTINATION}

Validate Close IxConnect Window
    [Tags]    REGRESSION
    Verify Close IxConnect Window       ${True}

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
    Verify Set Scope    General

Validate Set Variable Name
    [Tags]    REGRESSION
    Verify Set Variable Name    iXToolsWholesaleSolutionType

Validate Click Search Button
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column    3

Validate Click Save Changes Button
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Save Changes Button

Validate Close System Admin Window
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to Price module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Navigate to Price Policies Tab
    [Tags]    REGRESSION
    Verify Select Price Policies Tab

Validate Click Create New Price Policy
    [Tags]    REGRESSION
    Verify Click Create New Cost Policy

Validate Set Price Policy Name
    [Tags]    REGRESSION
    Verify Set Cost Policy Name     ${TEST DATA PREFIX}

Validate Set Abbreviation
    [Tags]    REGRESSION
    Verify Set Cost Policy Abbreviation

Validate Set Price Policy Status
    [Tags]    REGRESSION
    Verify Set Cost Policy Status       ${PRICE POLICY ACTIVE STATUS}

Validate Set Call Type
    [Tags]    REGRESSION
    Verify Set Cost Policy Call Type        Analog

Validate Set Route Class
    [Tags]    REGRESSION
    ${ROUTE CLASS} =    Verify Get Route Class
    Verify Set Cost Policy Route Class      ${ROUTE CLASS}

Validate Click Create Price Policy Save Button
    [Tags]    REGRESSION
    Verify Click Create Cost Policy Save Button

Validate Get Created Price Policy Name
    [Tags]    REGRESSION
    ${VOICE TYPE CREATED PRICE POLICY NAME} =       Verify Get Created Cost Policy Name
    set suite variable          ${VOICE TYPE CREATED PRICE POLICY NAME}

Vlidate Click Create New Price Policy For SMS
    [Tags]    REGRESSION
    Verify Click Create New Cost Policy

Validate Set Price Policy Name For SMS
    [Tags]    REGRESSION
    Verify Set Cost Policy Name     ${TEST DATA PREFIX}

Validate Set Abbreviation For SMS
    [Tags]    REGRESSION
    Verify Set Cost Policy Abbreviation

Validate Set Price Policy Status For SMS
    [Tags]    REGRESSION
    Verify Set Cost Policy Status       ${PRICE POLICY ACTIVE STATUS}

Validate Set Call Type For SMS
    [Tags]    REGRESSION
    Verify Set Cost Policy Call Type        SMS

Validate Set Route Class For SMS
    [Tags]    REGRESSION
    ${ROUTE CLASS} =    Verify Get Route Class
    Verify Set Cost Policy Route Class      ${ROUTE CLASS}

Validate Click Create Price Policy Save Button For SMS
    [Tags]    REGRESSION
    Verify Click Create Cost Policy Save Button

Validate Get Created Price Policy Name For SMS
    [Tags]    REGRESSION
    ${SMS TYPE CREATED PRICE POLICY NAME} =       Verify Get Created Cost Policy Name
    set suite variable          ${SMS TYPE CREATED PRICE POLICY NAME}

Validate Select Price Dashboard
    [Tags]    REGRESSION
    Verify Select Price Dashboard

Validate Click Generate Reference Prices Link
    [Tags]    REGRESSION
    Verify Click Generate Reference Prices Link

Validate Set Generation Type
    [Tags]    REGRESSION
    Verify Set Generation Type      Voice

Validate Voice Type Reference Price Policy Is Available In The Source
    [Tags]    REGRESSION
    Verify Specific Reference Price Policy Is Available In The Source       ${VOICE TYPE CREATED PRICE POLICY NAME}

Validate Sms Type Reference Price Policy Is Not Available In The Source
    [Tags]    REGRESSION
    Verify Specific Reference Price Policy Is Not Available In The Source       ${SMS TYPE CREATED PRICE POLICY NAME}

Validate Voice Type Destination Is Available In The Source
    [Tags]    REGRESSION
    Verify Specific Destination Is Available In The Source      ${VOICE DESTINATION}

Validate Sms Type Destination Is Not Available In The Source
    [Tags]    REGRESSION
    Verify Specific Destination Is Not Available In The Source      ${SMS DESTINATION}

Validate Set Generation Type As SMS
    [Tags]    REGRESSION
    Verify Set Generation Type      SMS

Validate Sms Type Reference Price Policy Is Available In The Source
    [Tags]    REGRESSION
    Verify Specific Reference Price Policy Is Available In The Source       ${SMS TYPE CREATED PRICE POLICY NAME}

Validate Voice Type Reference Price Policy Is Not Available In The Source
    [Tags]    REGRESSION
    Verify Specific Reference Price Policy Is Not Available In The Source       ${VOICE TYPE CREATED PRICE POLICY NAME}

Validate Sms Type Destination Is Available In The Source
    [Tags]    REGRESSION
    Verify Specific Destination Is Available In The Source      ${SMS DESTINATION}

Validate Voice Type Destination Is Not Available In The Source
    [Tags]    REGRESSION
    Verify Specific Destination Is Not Available In The Source      ${VOICE DESTINATION}