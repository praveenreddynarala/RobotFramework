*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Create And Edit Vendor Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/carrier_page_test_data_source.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/system_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${RATE PLAN}        ${EMPTY}
${CALL TYPE}        ${EMPTY}

*** Test Cases ***
Validate Navigate to Carrier module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Carrier' From Main Menu

Validate Get Created Carrier Name
    [Tags]    REGRESSION
    Verify Get Created Carrier Name

Validate Get Created Rate Plan Name
    [Tags]    REGRESSION
    ${RATE PLAN} =      Verify Get Rate Plan Name
    set suite variable      ${RATE PLAN}

Validate Filter Carriers Grid
    [Tags]    REGRESSION
    Verify Filter Carriers Grid After Create        ${CARRIER NAME COLUMN NAME}

Validate Click Carriers Page Inline Action Button After Create
    [Tags]    REGRESSION
    Verify Click Carriers Page Inline Action Button After Create

Validate Select Item From Inline Action
    [Tags]    REGRESSION
    Verify Select Item From Inline Action           ${CARRIER RELATIONSHIPS INLINE ITEM}

Validate Expand Customers And Vendors Section
    [Tags]    REGRESSION
    Verify Expand Customers And Vendors Section

Validate Click Create Vendor Button
    [Tags]    REGRESSION
    Verify Click Create Vendor Button

Validate Set Vendor Name
    [Tags]    REGRESSION
    carrier_page_resource.Verify Set Vendor Name           ${TEST DATA PREFIX}

Validate Set Abbreviation
    [Tags]    REGRESSION
    Verify Set Abbreviation             ${TEST DATA PREFIX}

Validate Set Rate Plan
    [Tags]    REGRESSION
    Verify Set Rate Plan For Create Vendor      ${RATE PLAN}

Validate Get Call Type
    [Tags]    REGRESSION
    ${CALL TYPE} =   Verify Get Call Type
    log  ${CALL TYPE}
    set suite variable      ${CALL TYPE}

Validate Set Call Type
    [Tags]    REGRESSION
    carrier_page_resource.Verify Set Call Type               ${CALL TYPE}

Validate Click Save Vendor Profile button
    [Tags]    REGRESSION
    Verify Click Save Vendor Profile Button

Validate Filter Trade Source Grid For Create
    [Tags]    REGRESSION
    Verify Filter Trade Source Grid For Create Vendor           ${NAME COLUMN NAME}

Validate Get Trade Source Grid Row Details
    [Tags]    REGRESSION
    Verify Get Trade Source Grid Row Details

Validate Trade Source Grid Name For Create Vendor
    [Tags]    REGRESSION
    Verify Trade Source Grid Name For Create Vendor

Validate Trade Source Grid Call Type
    [Tags]    REGRESSION
    Verify Trade Source Grid Call Type           ${CALL TYPE}

Validate Trade Source Grid Rate Plan
    [Tags]    REGRESSION
    Verify Trade Source Grid Rate Plan      ${RATE PLAN}

Validate Click Trade Source Grid Inline Action Button For Create Vendor
    [Tags]    REGRESSION

    Verify Click Trade Source Grid Inline Action Button For Create Vendor

Validate Select Inline Action Item
    [Tags]    REGRESSION
    carrier_page_resource.Verify Select Inline Action Item            ${EDIT INLINE ITEM}

Validate Set Status For Vendor
    [Tags]    REGRESSION
    Verify Set Status               ${INACTIVE STATUS}

Validate Click Save Vendor Profile button After Edit
    [Tags]    REGRESSION
    Verify Click Save Vendor Profile Button