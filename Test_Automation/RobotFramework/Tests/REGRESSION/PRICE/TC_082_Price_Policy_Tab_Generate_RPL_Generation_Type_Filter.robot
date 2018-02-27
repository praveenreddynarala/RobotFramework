*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Price Policy Tab Generate RPL Generation Type Filter

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/price_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${ROUTE CLASS}          ${EMPTY}
${VOICE TYPE CREATED PRICE POLICY NAME}     ${EMPTY}
${SMS TYPE CREATED PRICE POLICY NAME}       ${EMPTY}

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
    Verify Set Variable Name    iXToolsWholesaleSolutionType

Validate Click Search Button
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        3

Validate Close System Admin Window
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to Price module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Navigate to Price Policies Tab
    [Tags]    REGRESSION
    Verify Select Price Policies Tab

Validate Get Created Route Class
    [Tags]    REGRESSION
    ${ROUTE CLASS} =    Verify Get Route Class
    set suite variable      ${ROUTE CLASS}

Vlidate Click Create New Price Policy
    [Tags]    REGRESSION
    Verify Click Create New Cost Policy

Validate Set Price Policy Name
    [Tags]    REGRESSION
    Verify Set Cost Policy Name    ${TEST DATA PREFIX}

Validate Set Abbreviation
    [Tags]    REGRESSION
    Verify Set Cost Policy Abbreviation

Validate Set Price Policy Status
    [Tags]    REGRESSION
    Verify Set Cost Policy Status    ${PRICE POLICY ACTIVE STATUS}

Validate Set Call Type
    [Tags]    REGRESSION
    Verify Set Cost Policy Call Type    Analog

Validate Set Route Class
    [Tags]    REGRESSION
    Verify Set Cost Policy Route Class    ${ROUTE CLASS}

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
    Verify Set Cost Policy Route Class      ${ROUTE CLASS}

Validate Click Create Price Policy Save Button For SMS
    [Tags]    REGRESSION
    Verify Click Create Cost Policy Save Button

Validate Get Created Price Policy Name For SMS
    [Tags]    REGRESSION
    ${SMS TYPE CREATED PRICE POLICY NAME} =       Verify Get Created Cost Policy Name
    set suite variable          ${SMS TYPE CREATED PRICE POLICY NAME}

Validate Close Price Window
    [Tags]    REGRESSION
    Verify Close Price Window

Validate Navigate to System Admin module To Set iXToolsWholesaleSolutionType As 1
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select System Tab To Set iXToolsWholesaleSolutionType As 1
    [Tags]    REGRESSION
    Click on System Tab

Validate Click Configuration Variables Button To Set iXToolsWholesaleSolutionType As 1
    [Tags]    REGRESSION
    Verify Click Configuration Variables Button

Validate Set Scope To Set iXToolsWholesaleSolutionType As 1
    [Tags]    REGRESSION
    Verify Set Scope        General

Validate Set Variable Name To Set iXToolsWholesaleSolutionType As 1
    [Tags]    REGRESSION
    Verify Set Variable Name    iXToolsWholesaleSolutionType

Validate Click Search Button To Set iXToolsWholesaleSolutionType As 1
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column To Set iXToolsWholesaleSolutionType As 1
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        1

Validate Close System Admin Window After Setting iXToolsWholesaleSolutionType As 1
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to Price module After Setting iXToolsWholesaleSolutionType As 1
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Navigate to Price Policies Tab After Setting iXToolsWholesaleSolutionType As 1
    [Tags]    REGRESSION
    Verify Select Price Policies Tab

Validate Click Generate Reference Prices Button After Setting iXToolsWholesaleSolutionType As 1
    [Tags]    REGRESSION
    Verify Click Generate Reference Prices Button

Validate By Default Specific Generation Type Is Available After Setting iXToolsWholesaleSolutionType As 1
    [Tags]    REGRESSION
    Verify By Default Specific Generation Type Is Available         ${VOICE GENERATION TYPE NAME}

Validate Voice Type Reference Price Policy Is Available In The Source After Setting iXToolsWholesaleSolutionType As 1
    [Tags]    REGRESSION
    Verify Specific Reference Price Policy Is Available In The Source       ${VOICE TYPE CREATED PRICE POLICY NAME}

Validate Sms Type Reference Price Policy Is Not Available In The Source After Setting iXToolsWholesaleSolutionType As 1
    [Tags]    REGRESSION
    Verify Specific Reference Price Policy Is Not Available In The Source       ${SMS TYPE CREATED PRICE POLICY NAME}

Validate Close Price Window After Setting iXToolsWholesaleSolutionType As 1
    [Tags]    REGRESSION
    Verify Close Price Window

Validate Navigate to System Admin module To Set iXToolsWholesaleSolutionType As 2
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select System Tab To Set iXToolsWholesaleSolutionType As 2
    [Tags]    REGRESSION
    Click on System Tab

Validate Click Configuration Variables Button To Set iXToolsWholesaleSolutionType As 2
    [Tags]    REGRESSION
    Verify Click Configuration Variables Button

Validate Set Scope To Set iXToolsWholesaleSolutionType As 2
    [Tags]    REGRESSION
    Verify Set Scope        General

Validate Set Variable Name To Set iXToolsWholesaleSolutionType As 2
    [Tags]    REGRESSION
    Verify Set Variable Name    iXToolsWholesaleSolutionType

Validate Click Search Button To Set iXToolsWholesaleSolutionType As 2
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column To Set iXToolsWholesaleSolutionType As 2
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        2

Validate Close System Admin Window After Setting iXToolsWholesaleSolutionType As 2
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to Price module After Setting iXToolsWholesaleSolutionType As 2
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Navigate to Price Policies Tab After Setting iXToolsWholesaleSolutionType As 2
    [Tags]    REGRESSION
    Verify Select Price Policies Tab

Validate Click Generate Reference Prices Button After Setting iXToolsWholesaleSolutionType As 2
    [Tags]    REGRESSION
    Verify Click Generate Reference Prices Button

Validate By Default Specific Generation Type Is Available After Setting iXToolsWholesaleSolutionType As 2
    [Tags]    REGRESSION
    Verify By Default Specific Generation Type Is Available         SMS

Validate Sms Type Reference Price Policy Is Available In The Source After Setting iXToolsWholesaleSolutionType As 2
    [Tags]    REGRESSION
    Verify Specific Reference Price Policy Is Available In The Source       ${SMS TYPE CREATED PRICE POLICY NAME}

Validate Voice Type Reference Price Policy Is Not Available In The Source After Setting iXToolsWholesaleSolutionType As 2
    [Tags]    REGRESSION
    Verify Specific Reference Price Policy Is Not Available In The Source       ${VOICE TYPE CREATED PRICE POLICY NAME}

Validate Close Price Window After Setting iXToolsWholesaleSolutionType As 2
    [Tags]    REGRESSION
    Verify Close Price Window

Validate Navigate to System Admin module To Set iXToolsWholesaleSolutionType As 3
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select System Tab To Set iXToolsWholesaleSolutionType As 3
    [Tags]    REGRESSION
    Click on System Tab

Validate Click Configuration Variables Button To Set iXToolsWholesaleSolutionType As 3
    [Tags]    REGRESSION
    Verify Click Configuration Variables Button

Validate Set Scope To Set iXToolsWholesaleSolutionType As 3
    [Tags]    REGRESSION
    Verify Set Scope        General

Validate Set Variable Name To Set iXToolsWholesaleSolutionType As 3
    [Tags]    REGRESSION
    Verify Set Variable Name    iXToolsWholesaleSolutionType

Validate Click Search Button To Set iXToolsWholesaleSolutionType As 3
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column To Set iXToolsWholesaleSolutionType As 3
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        3

Validate Close System Admin Window After Setting iXToolsWholesaleSolutionType As 3
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to Price module After Setting iXToolsWholesaleSolutionType As 3
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Navigate to Price Policies Tab After Setting iXToolsWholesaleSolutionType As 3
    [Tags]    REGRESSION
    Verify Select Price Policies Tab

Validate Click Generate Reference Prices Button After Setting iXToolsWholesaleSolutionType As 3
    [Tags]    REGRESSION
    Verify Click Generate Reference Prices Button

Validate By Default Specific Generation Type Is Available After Setting iXToolsWholesaleSolutionType As 3
    [Tags]    REGRESSION
    Verify By Default Specific Generation Type Is Available         Voice

Validate Voice Type Reference Price Policy Is Available In The Source After Setting iXToolsWholesaleSolutionType As 3
    [Tags]    REGRESSION
    Verify Specific Reference Price Policy Is Available In The Source       ${VOICE TYPE CREATED PRICE POLICY NAME}

Validate Set Generation Type After Setting iXToolsWholesaleSolutionType As 3
    [Tags]    REGRESSION
    Verify Set Generation Type      SMS

Validate Sms Type Reference Price Policy Is Available In The Source After Setting iXToolsWholesaleSolutionType As 3
    [Tags]    REGRESSION
    Verify Specific Reference Price Policy Is Available In The Source       ${SMS TYPE CREATED PRICE POLICY NAME}