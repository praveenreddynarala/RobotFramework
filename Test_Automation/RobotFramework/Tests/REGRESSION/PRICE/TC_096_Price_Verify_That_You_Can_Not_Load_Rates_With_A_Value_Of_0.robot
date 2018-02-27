*** Settings ***
Documentation     [TAENOSIS-846] A Test Suite With Set Of Tests To Verify That You Can Not Load Rates With A Value Of 0

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/price_page_test_data_source.robot

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
    Verify Set Scope        iXTrade

Validate Set Variable Name
    [Tags]    REGRESSION
    Verify Set Variable Name    AllowZeroRates

Validate Click Search Button
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        2

Validate Close System Admin Window
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to Price module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Navigate to Cost Policies Tab
    [Tags]    REGRESSION
    Click on Cost Policies Tab

Validate Get Created Cost Policy Name
    [Tags]    REGRESSION
    Verify Get Created Cost Policy Name

Validate Filter Cost Policy Grid With Created New Cost Policy
    [Tags]    REGRESSION
    Verify Filter Cost Policy Grid     ${COST POLICY COLUMN NAME}

Validate Click Cost Policy Grid Inline Action Button
    [Tags]    REGRESSION
    Verify Click Cost Policy Grid First Row Inline Action Button

Validate Click Cost Policy Grid Inline Item
    [Tags]    REGRESSION
    Verify Click Cost Policy Grid Inline Item       ${COSTS INLINE ITEM}

Validate Get Failed Status Red Button Jobs Count
    [Tags]    REGRESSION
    Verify Get Failed Status Red Button Jobs Count

Validate Click Upload Costs Button
    [Tags]    REGRESSION
    Verify Click Upload Costs Button

Valdiate Click Costs Browse Button
    [Tags]    REGRESSION
    Verify Click Costs Browse Button

Valdiate Select The File To Be Uploaded
    [Tags]    REGRESSION
    ${CALL TYPE} =   Verify Get Call Type
    Verify Select The File To Be Uploaded       ${TEMPLATE PATH}/${CALL TYPE}/${RATE VALUE AS 0 COST TEMPLATE NAME}

Validate Click Upload Button
    [Tags]    REGRESSION
    price_page_resource.Verify Click Upload Button

Validate Compare Failed Status Red Buttons Jobs Count After Upload
    [Tags]    REGRESSION
    Verify Compare Only Failed Status Red Buttons Jobs Count After Upload

Validate Click Failed Status Red Button
    [Tags]    REGRESSION
    Verify Click Failed Status Red Button

Validate Click Failed Upload Info Icon
    [Tags]    REGRESSION
    Verify Click Failed Upload Info Icon

Validate Compare Failed Error Message
    [Tags]    REGRESSION
    Verify Failed Upload Info       At least one zero rate entry

Validate Close Current Pop Up
    [Tags]    REGRESSION
    price_page_resource.Verify Close Current Pop Up     ${ADDITIONAL INFO POP UP NAME}

Validate Close Jobs Tab After Upload
    [Tags]    REGRESSION
    price_page_resource.Verify Close Job Tab        ${JOB TAB NAME}

Validate Close Cost Policy Tab
    [Tags]    REGRESSION
    price_page_resource.Verify Close Current Tab        ${VIEW COST POLICY TAB NAME}

Validate Navigate to Price Policies Tab
    [Tags]    REGRESSION
    Verify Select Price Policies Tab

Validate Click Price Policy Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Price Policy Grid First Row Inline Action Button

Validate Select View Price Policy Inline Action Item
    [Tags]    REGRESSION
    price_page_resource.Verify Select Inline Action Item        ${VIEW PRICE POLICY INLINE ITEM}

Validate Selecet Price Overrides Tab
    [Tags]    REGRESSION
    Verify Select Price Overrides Tab

Validate Get Failed Status Red Button Jobs Count For Price Override
    [Tags]    REGRESSION
    Verify Get Failed Status Red Button Jobs Count

Valdiate Click Upload Price Overrides Button
    [Tags]    REGRESSION
    Verify Click Upload Price Overrides Button

Validate Click Browse Button For Price Override
    [Tags]    REGRESSION
    Verify Click Price Override Browse Button

Valdiate Select The File To Be Uploaded For Price Override
    [Tags]    REGRESSION
    ${CALL TYPE} =   Verify Get Call Type
    Verify Select The File To Be Uploaded       ${TEMPLATE PATH}/${CALL TYPE}/${PRICE OVERRIDES WITH RATE VALUE 0 TEMPLATE NAME}

Validate Click Upload Button For Price Override
    [Tags]    REGRESSION
    Verify Click Price Override Upload Button

Validate Compare Failed Status Red Buttons Jobs Count For Price Override
    [Tags]    REGRESSION
    Verify Compare Only Failed Status Red Buttons Jobs Count After Upload

Validate Click Failed Status Red Button For Price Override
    [Tags]    REGRESSION
    Verify Click Failed Status Red Button

Validate Click Failed Upload Info Icon For Price Override
    [Tags]    REGRESSION
    Verify Click Failed Upload Info Icon

Validate Compare Failed Error Message For Price Override
    [Tags]    REGRESSION
    Verify Failed Upload Info       At least one zero rate entry

Validate Close Current Pop Up For Price Override
    [Tags]    REGRESSION
    price_page_resource.Verify Close Current Pop Up     ${ADDITIONAL INFO POP UP NAME}

Validate Close Jobs Tab After Upload For Price Override
    [Tags]    REGRESSION
    price_page_resource.Verify Close Job Tab        ${JOB TAB NAME}