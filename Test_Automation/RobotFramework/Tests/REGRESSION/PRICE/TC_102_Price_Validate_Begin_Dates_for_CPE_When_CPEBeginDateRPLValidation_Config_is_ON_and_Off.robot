*** Settings ***
Documentation     [TAENOSIS-855] Validate Begin Dates for CPE When CPEBeginDateRPLValidation Config is ON and Off

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot


Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${PRICE POLICY}     ${EMPTY}
${CUSTOMER}     ${EMPTY}

*** Test Cases ***
Validate Navigate System Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select System Tab
    [Tags]    REGRESSION
    Click on System Tab

Validate Click Configuration Variables Button
    [Tags]    REGRESSION
    Verify Click Configuration Variables Button

Validate Set Variable Name
    [Tags]    REGRESSION
    Verify Set Variable Name    CPEBeginDateRPLValidation

Validate Click Search Button
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        1

Validate Close System Admin Window
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to Sell module
    [Tags]    REGRESSION
    Click On Home Icon And Select 'Sell' From Main Menu

Validate Navigate to Customer Tab
    [Tags]    REGRESSION
    Click On Customer Tab

Validate Click On Create Customer Button
    [Tags]    REGRESSION
    Verify Click On Create Customer Button

Validate Set Customer Name
    [Tags]    REGRESSION
    Verify Set Customer Name        ${TEST DATA PREFIX}

Validate Set Customer Abbreviation
    [Tags]    REGRESSION
    sell_page_resource.Verify Set Customer Abbreviation        ${TEST DATA PREFIX}

Validate Set Customer Profile Status Active
    [Tags]    REGRESSION
    Verify Set Customer Profile Status Active For Create Customer

Validate Get Created Carrier Name
    [Tags]    REGRESSION
    Verify Get Created Carrier Name

Validate Get Created Rate Plan Name
    [Tags]    REGRESSION
    Verify Get Created Rate Plan Name

Validate Set Ixtools Account As Created Carrier
    [Tags]    REGRESSION
    Verify Set Ixtools Account

Validate Set Rate Plan Ad Created Rate Plan
    [Tags]    REGRESSION
    sell_page_resource.Verify Set Rate Plan

Validate Set Number Plan
    [Tags]    REGRESSION
    Verify Set Number Plan For Create Customer      Outbound Ref.

Validate Set Call Type
    [Tags]    REGRESSION
    ${CALL TYPE DROPDOWN ITEM} =        Verify Get Call Type
    sell_page_resource.Verify Set Call Type        ${CALL TYPE DROPDOWN ITEM}

Validate Click On Save Customer Profile For Create
    [Tags]    REGRESSION
    Verify Click On Save Customer Profile For Create

Validate Get Created Customer
    [Tags]    REGRESSION
    ${CUSTOMER} =        Verify Get Created Customer Name
    set suite variable      ${CUSTOMER}

Validate Close Sell Window
    [Tags]    REGRESSION
    Verify Close Sell Window

Validate Navigate to Price module
    [Tags]    REGRESSION
    Click On Home Icon And Select 'Price' From Main Menu

Validate Select Price Policies Tab
    [Tags]    REGRESSION
    Verify Select Price Policies Tab

Validate Click Reference Prices Button
    [Tags]    REGRESSION
    price_page_resource.Verify Click Reference Prices Button

Validate Select Status For Reference Prices Search
    [Tags]    REGRESSION
    price_page_resource.Verify Select Status For Reference Prices Search        Approved

Validate Set Select Date
    [Tags]    REGRESSION
    price_page_resource.Verify Set Select Date          1/1/2015

Validate Search Reference Prices
    [Tags]    REGRESSION
    price_page_resource.Verify Click Search Button

Validate Get Price Policy From Reference Prices Grid
    [Tags]    REGRESSION
    ${PRICE POLICY} =       price_page_resource.Verify Get Price Policy From Reference Prices Grid
    set suite variable      ${PRICE POLICY}

Validate Close Price Window
    [Tags]    REGRESSION
    Verify Close Price Window

Validate Go To Sell Module
    [Tags]    REGRESSION
    Click On Home Icon And Select 'Sell' From Main Menu

Validate Go To Customer Tab
    [Tags]    REGRESSION
     Click On Customer Tab

Validate Filter Customer Grid
    [Tags]    REGRESSION
    @{CUSTOMER LIST} =      create list     ${CUSTOMER}
    sell_page_resource.Verify Grid Filter Details      Customer        @{CUSTOMER LIST}

Validate Navigate To Customer Profile Screen
    [Tags]    REGRESSION
    Verify Click Customer Grid First Row Inline Action Button
    sell_page_resource.Verify Select Inline Action Item    Customer Profile

Validate Update Reference Prices
    [Tags]    REGRESSION
    sell_page_resource.Verify Set Reference Price List         ${PRICE POLICY}

Validate Save Customer Profile Changes
    [Tags]    REGRESSION
    Verify Click On Save Customer Profile For Create

Validate Go To Customer Screen
    [Tags]    REGRESSION
    Click On Customer Tab

Validate Click Price Exception Button
    [Tags]    REGRESSION
    sell_page_resource.Verify Click Price Exceptions Button

Validate Set Number Plan For Price Exceptions
    [Tags]    REGRESSION
    sell_page_resource.Verify Set Number Plan For Price Exceptions     Outbound Ref.

Validate Set Status For Price Exceptions
    [Tags]    REGRESSION
    @{STATUS} =     create list     Not Entered
    sell_page_resource.Verify Set Status       @{STATUS}

Validate Set Customer For Price Exceptions
    [Tags]    REGRESSION
    @{CUSTOMER} =     create list     ${CUSTOMER}
    sell_page_resource.Verify Set Customers     @{CUSTOMER}

Validate Set Select Date For Price Exception
    [Tags]    REGRESSION
    sell_page_resource.Verify Set Select Date      1/1/2015

Validate Look For Price Exception
    [Tags]    REGRESSION
    sell_page_resource.Verify Click Price Exceptions Search Button

Validate Update Begin Date
    [Tags]    REGRESSION
    Verify Set First Row Begin Date         1/1/2000

Validate The Error Message is Appeared
    [Tags]    REGRESSION
    Verify Pricing Exception Grid Error Message is Appeared

Validate Go Away From Price Screen
    [Tags]    REGRESSION
    Verify Close Price Window

Validate Go To System Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Navigate To System Tab
    [Tags]    REGRESSION
    Click on System Tab

Validate Navigate To Configuration Variables Button
    [Tags]    REGRESSION
    Verify Click Configuration Variables Button

Validate Set Variable Name CPEBeginDateRPLValidation
    [Tags]    REGRESSION
    Verify Set Variable Name    CPEBeginDateRPLValidation

Validate Click Search Button To Find CPEBeginDateRPLValidation
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column for CPEBeginDateRPLValidation
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        0

Validate Go Away From System Admin Window
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Go To Sell Module for CPEBeginDateRPLValidation
    [Tags]    REGRESSION
    Click On Home Icon And Select 'Sell' From Main Menu

Validate Navigate To Customer Tab for CPEBeginDateRPLValidation
    [Tags]    REGRESSION
     Click On Customer Tab

Validate Click Price Exception Button for CPEBeginDateRPLValidation
    [Tags]    REGRESSION
    sell_page_resource.Verify Click Price Exceptions Button

Validate Set Number Plan For Price Exceptions for CPEBeginDateRPLValidation
    [Tags]    REGRESSION
    sell_page_resource.Verify Set Number Plan For Price Exceptions     Outbound Ref.

Validate Set Status For Price Exceptions for CPEBeginDateRPLValidation
    [Tags]    REGRESSION
    @{STATUS} =     create list     Not Entered
    sell_page_resource.Verify Set Status       @{STATUS}

Validate Set Customer For Price Exceptions for CPEBeginDateRPLValidation
    [Tags]    REGRESSION
    @{CUSTOMER} =     create list     ${CUSTOMER}
    sell_page_resource.Verify Set Customers     @{CUSTOMER}

Validate Set Select Date For Price Exception for CPEBeginDateRPLValidation
    [Tags]    REGRESSION
    sell_page_resource.Verify Set Select Date      1/1/2015

Validate Look For Price Exception for CPEBeginDateRPLValidation
    [Tags]    REGRESSION
    sell_page_resource.Verify Click Price Exceptions Search Button

Validate Update Begin Date for CPEBeginDateRPLValidation
    [Tags]    REGRESSION
    sell_page_resource.Verify Set First Row Begin Date         1/1/2000

Validate Save The Changes for CPEBeginDateRPLValidation
    [Tags]    REGRESSION
    sell_page_resource.Verify Click Save Changes Button
