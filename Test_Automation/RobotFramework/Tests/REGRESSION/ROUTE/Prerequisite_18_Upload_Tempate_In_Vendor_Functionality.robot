*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Create New Rate Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/carrier_page_test_data_source.robot
Resource          ../../../Resources/Pages/buy_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/buy_page_test_data_source.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/system_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CARRIER NAME}           ${EMPTY}
${SERVICE LEVEL}          ${EMPTY}
${RATE PLAN}              ${EMPTY}
${CALL TYPE}              ${EMPTY}
${RATING METHOD}          ${EMPTY}

*** Test Cases ***
Validate Navigate to Buy module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Buy' From Main Menu

Validate Get Created Carrier Name
    [Tags]    REGRESSION
    ${CARRIER NAME} =       Verify Get Created Carrier Name
    set suite variable      ${CARRIER NAME}

Validate Get Rating Method
    [Tags]    REGRESSION
    ${RATING METHOD} =    Verify Get Rating Method
    set suite variable      ${RATING METHOD}

Validate Get Created Service Level
    [Tags]    REGRESSION
    ${SERVICE LEVEL} =      Verify Get Created Service Level
    set suite variable      ${SERVICE LEVEL}

Validate Get Created Rate Plan Name
    [Tags]    REGRESSION
    ${RATE PLAN} =      Verify Get Rate Plan Name
    set suite variable      ${RATE PLAN}

Validate Navigate To Vendors Tab
    [Tags]    REGRESSION
    Verify Click On Vendors Tab

Validate Get Call Type
    [Tags]    REGRESSION
    ${CALL TYPE} =   Verify Get Call Type
    log  ${CALL TYPE}
    set suite variable      ${CALL TYPE}

Validate Click On Vendor Price List Button
    [Tags]    REGRESSION
    Verify Click On Vendor Price Lists

Validate Set From Date
    [Tags]    REGRESSION
    Verify Set From Date As Current Date

Validate Click Search Button
    [Tags]    REGRESSION
    Verify Click On Vendor Price Lists Search Button

Validate Get Vendor Price Lists Number Of Rows From Grid
    [Tags]    REGRESSION
    Verify Get Vendor Price Lists Number Of Rows From Grid

Validate Close Vendor Price Lists Tab
    [Tags]    REGRESSION
    Verify Close Vendor Price Lists Tab         ${VENDOR PRICE LISTS TAB NAME}

Validate Get Previous Created Vendor Name
    [Tags]    REGRESSION
    Verify Get Previous Created Vendor Name

Validate Filter Vendor Grid Column
    [Tags]    REGRESSION
    Verify Filter Vendor Grid Column After Create        ${VENDOR COLUMN NAME}

Validate Click On Inline Action Button
    [Tags]    REGRESSION
    Verify Click On Inline Action Button After Create

Validate Select Upload Vendow Price List Inline Action Button
    [Tags]    REGRESSION
    Verify Select Upload Vendor Price List Inline Action Button         ${UPLOAD VENDOR PRICE LIST INLINE ITEM NAME}

Validate Click On Browse Button
    [Tags]    REGRESSION
    Verify Click On Browse Button

Validate Select The File To Be Uploaded
    [Tags]    REGRESSION
    ${CALL TYPE} =      Verify Get Call Type
    set suite variable      ${CALL TYPE}
    Verify Select The File To Be Uploaded       ${TEMPLATE PATH}/${CALL TYPE}/${VENDOR PRICE LIST TEMPALTE NAME}

Validate Click On Upload Button
    [Tags]    REGRESSION
    Verify Click On Upload Button

Validate Click On Vendor Price List Button After Uploading
    [Tags]    REGRESSION
    Verify Click On Vendor Price Lists

Validate Click On Vendor Price List Upload Colored Icon
    [Tags]    REGRESSION
    Verify Click On Vendor Price List Upload Colored Icon

Validate All Completed Jobs Displayed In The Grid
    [Tags]    REGRESSION
    Verify Search Results Displayed In The Grid

Validate Close Jobs Tab
    [Tags]    REGRESSION
    buy_page_resource.Verify Close Job Tab        ${JOB TAB NAME}

Validate Compare Vendor Price Lists Number Of Rows From Grid
    [Tags]    REGRESSION
    Verify Compare Vendor Price Lists Number Of Rows From Grid

Validate Close Buy Window
    [Tags]    REGRESSION
    Verify Close Buy Window

Validate Navigate to Carrier module After Create Vendor
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Carrier' From Main Menu

Validate Filter Carrier Grid After Create Vendor
    [Tags]    REGRESSION
    carrier_page_resource.Verify Grid Filter Details           ${CARRIER NAME COLUMN NAME}        ${CARRIER NAME}

Validate Click Carriers Page Inline Action Button After Create Vendor
    [Tags]    REGRESSION
    Verify Click Carriers Page Inline Action Button         ${CARRIER NAME}

Validate Select Item From Inline Action After Create Vendor
    [Tags]    REGRESSION
    Verify Select Item From Inline Action           ${CARRIER RATES INLINE ITEM}

Validate Click Add New Rates Button
    [Tags]    REGRESSION
    Verify Click Add New Rates Button

Validate Set Rate plan For Add New Rate
    [Tags]    REGRESSION
    Verify Set Rate plan For Add New Rate       ${RATE PLAN}

Validate Set Begin Date For Add New Rate
    [Tags]    REGRESSION
    Verify Set Begin Date For Add New Rate

Validate Set End Date For Add New rate
    [Tags]    REGRESSION
    Verify Set End Date For Add New rate        ${END DATE FOR ADD NEW RATE}

Validate Set Product For Add New rate
    [Tags]    REGRESSION
    Verify Set Product For Add New rate     ${PRODUCT NAME FOR ADD NEW RATE}

Validate Set Rating Method For Add New Rate
    [Tags]    REGRESSION
    Verify Set Rating Method For Add New Rate       ${RATING METHOD}

Validate Set CLI for Add New Rate
    [Tags]    REGRESSION
    Verify Set CLI for Add New Rate     ${CLI FOR ADD NEW RATE}

Validate Set Grid Value For Add New Rate
    [Tags]    REGRESSION
    Verify Set Grid Value For Add New Rate

Validate Click Add New Rate Save Button
    [Tags]    REGRESSION
    Verify Click Add New Rate Save Button

Validate Set Rate plan For Search
    [Tags]    REGRESSION
    carrier_page_resource.Verify Set Rate plan      ${RATE PLAN}

Validate Set Product Name For Search
    [Tags]    REGRESSION
    carrier_page_resource.Verify Set Product Name     ${PRODUCT NAME FOR ADD NEW RATE}

Validate Set Begin Date For Search
    [Tags]    REGRESSION
    carrier_page_resource.Verify Set Begin Date

Validate Click Rates Page Search Button
    [Tags]    REGRESSION
    Verify Click Rates Page Search Button

Validate Data Is Loaded In The Grid
    [Tags]    REGRESSION
    Verify Data Is Loaded In The Grid