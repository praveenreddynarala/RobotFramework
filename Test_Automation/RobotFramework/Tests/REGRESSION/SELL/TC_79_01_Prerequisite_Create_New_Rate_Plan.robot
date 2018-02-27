*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Create Customer Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/carrier_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${COMPANY NAME FOR CREATE}      ${EMPTY}

*** Test Cases ***
Validate Navigate to Carrier module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Carrier' From Main Menu

Validate Get Created Carrier Name
    [Tags]    REGRESSION
    Verify Get Created Carrier Name

Validate Filter Carrier Grid
    [Tags]    REGRESSION
    Verify Filter Carriers Grid After Create        ${CARRIER NAME COLUMN NAME}

Validate Click Carriers Page Inline Action Button
    [Tags]    REGRESSION
    carrier_page_resource.Verify Click Carriers Page Inline Action Button After Create

Validate Select Item From Inline Action
    [Tags]    REGRESSION
    carrier_page_resource.Verify Select Item From Inline Action           ${CARRIER RELATIONSHIPS INLINE ITEM}

Validate Expand Rate Plans Section
    [Tags]    REGRESSION
    Verify Expand Rate Plans Section

Validate Click Create Rate Plan Button
    [Tags]    REGRESSION
    Verify Click Create Rate Plan Button

Validate Set Rate Plan Name
    [Tags]    REGRESSION
    Verify Set Rate Plan Name     ${TEST DATA PREFIX}

Validate Set Rate Plan Abbreviation
    [Tags]    REGRESSION
    Verify Set Rate Plan Abbreviation           ${TEST DATA PREFIX}

Validate Set Business Type
    [Tags]    REGRESSION
    Verify Set Business Type            ${BUSINESS TYPE}

Validate Set Traffic Direction
    [Tags]    REGRESSION
    carrier_page_resource.Verify Set Traffic Direction        ${INBOUND TRAFFIC DIRECTION}

Validate Set Tariff Type
    [Tags]    REGRESSION
    carrier_page_resource.Verify Set Tariff Type              ${TARIFF TYPE}

Validate Set Currency
    [Tags]    REGRESSION
    carrier_page_resource.Verify Set Currency                 ${CURRENCY}

Validate Set Product Catalog
    [Tags]    REGRESSION
    Verify Set Product Catalog          ${PRODUCT CATALOG}

Validate Set Rating Method
    [Tags]    REGRESSION
    ${RATING METHOD} =      Verify Get Rating Method
    Verify Set Rating Method            ${RATING METHOD}

Validate Set Begin Date
    [Tags]    REGRESSION
    Verify Set Begin Date For Add New Rate Plan               ${BEGIN DATE}

Validate Click Save Button
    [Tags]    REGRESSION
    Verify Click Save Button

Validate Close Carrier Profile Tab After Creating Rate Plan
    [Tags]    REGRESSION
    Verify Close Current Tab            ${CARRIER PROFILE TAB NAME}
