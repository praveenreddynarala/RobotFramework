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
Validate Navigate to Carrier module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Carrier' From Main Menu

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

Validate Filter Carriers Grid
    [Tags]  REGRESSION
    carrier_page_resource.Verify Grid Filter Details   ${CARRIER NAME COLUMN NAME}     ${CARRIER NAME}

Validate Click Carrier Page Inline Action Button
    [Tags]  REGRESSION
    Verify Click Carrier Page Inline Action Button      ${CARRIER NAME}

Validate Select Item From Inline Action
    [Tags]    REGRESSION
    Verify Select Item From Inline Action           ${CARRIER RELATIONSHIPS INLINE ITEM}

Validate Expand Rate Plans Section
    [Tags]    REGRESSION
    Verify Expand Rate Plans Section

Validate Click Create Rate Plan Button
    [Tags]    REGRESSION
    Verify Click Create Rate Plan Button

Validate Set Rate Plan Name
    [Tags]    REGRESSION
    Verify Set Rate Plan Name                   ${TEST DATA PREFIX}

Validate Set Rate Plan Abbreviation
    [Tags]    REGRESSION
    Verify Set Rate Plan Abbreviation           ${TEST DATA PREFIX}

Validate Set Increase Notice Period Days
    [Tags]    REGRESSION
    Verify Set Increase Notice Period Days      ${INCREASE NOTICE PERIOD DAYS}

Validate Set Decrease Notice Period Days
    [Tags]    REGRESSION
    Verify Set Decrease Notice Period Days      ${DECREASE NOTICE PERIOD DAYS}

Validate Set Dial Digit Change Notice Period Days
    [Tags]    REGRESSION
    Verify Set Dial Digit Change Notice Period Days         ${DIAL DIGIT CHANGE NOTICE PERIOD DAYS}

Validate Set Business Type
    [Tags]    REGRESSION
    Verify Set Business Type            ${BUSINESS TYPE}

Validate Set Traffic Direction
    [Tags]    REGRESSION
    carrier_page_resource.Verify Set Traffic Direction        ${TRAFFIC DIRECTION}

Validate Set Tariff Type
    [Tags]    REGRESSION
    carrier_page_resource.Verify Set Tariff Type              ${TARIFF TYPE}

Validate Set Service Level
    [Tags]    REGRESSION
    carrier_page_resource.Verify Set Service Level            ${SERVICE LEVEL}

Validate Set Currency
    [Tags]    REGRESSION
    carrier_page_resource.Verify Set Currency                 ${CURRENCY}

Validate Set Product Catalog
    [Tags]    REGRESSION
    Verify Set Product Catalog          ${PRODUCT CATALOG}

Validate Set Rate Plan Scope
    [Tags]    REGRESSION
    Verify Set Rate Plan Scope          ${RATE PLAN SCOPE}

Validate Toggle Cost Pricing Indicator
    [Tags]    REGRESSION
    Verify Toggle Cost Pricing Indicator          ${COST PRICE INDICATOR}

Validate Set Rating Method
    [Tags]    REGRESSION
    Verify Set Rating Method            ${RATING METHOD}

Validate Set Rate Plan Category 1
    [Tags]    REGRESSION
    Verify Set Rate Plan Category 1     ${RATE PLAN CAT 1}

Validate Set Rate Plan Category 2
    [Tags]    REGRESSION
    Verify Set Rate Plan Category 2     ${RATE PLAN CAT 2}

Validate Set Begin Date
    [Tags]    REGRESSION
    Verify Set Begin Date For Add New Rate Plan               ${BEGIN DATE}

Validate Set End Date
    [Tags]    REGRESSION
    Verify Set End Date                 ${END DATE}

Validate Set Note
    [Tags]    REGRESSION
    Verify Set Note                     ${NOTE FOR RATE PLAN}

Validate Click Save Button
    [Tags]    REGRESSION
    Verify Click Save Button

Validate Get Created Rate Plan Name
    [Tags]    REGRESSION
    ${RATE PLAN} =      Verify Get Rate Plan Name
    set suite variable      ${RATE PLAN}

Validate Close Carrier Window
    [Tags]    REGRESSION
    Verify Close Carrier Window

Validate Navigate to Buy module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Buy' From Main Menu

Validate Navigate To Vendors Tab
    [Tags]    REGRESSION
    Verify Click On Vendors Tab

Validate Click On Create Vendor Button
    [Tags]    REGRESSION
    Verify Click On Create Vendor Button

Validate Set Vendor Name
    [Tags]    REGRESSION
    buy_page_resource.Verify Set Vendor Name          ${TEST DATA PREFIX}

Validate Set Vendor Source
    [Tags]    REGRESSION
    buy_page_resource.Verify Set Vendor Source        ${TEST DATA PREFIX}

Validate Set IXtools Account
    [Tags]    REGRESSION
    Verify Set Ixtools Account

Validate Set Rate Plan
    [Tags]    REGRESSION
    buy_page_resource.Verify Set Rate Plan

Validate Get Call Type
    [Tags]    REGRESSION
    ${CALL TYPE} =   Verify Get Call Type
    log  ${CALL TYPE}
    set suite variable      ${CALL TYPE}

Validate Set Call Type
    [Tags]    REGRESSION
    buy_page_resource.Verify Set Call Type            ${CALL TYPE}

Validate Click On Save Vendor Profile Button
    [Tags]    REGRESSION
    Verify Click On Save Vendor Profile Button

Validate Navigate To Vendors Tab After Create New Vendor
    [Tags]    REGRESSION
    Verify Click On Vendors Tab

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

Validate Get Vendor Price Lists Number Of Rows From Grid For Second Upload
    [Tags]    REGRESSION
    Verify Get Vendor Price Lists Number Of Rows From Grid

Validate Close Vendor Price Lists Tab For Second Upload
    [Tags]    REGRESSION
    Verify Close Vendor Price Lists Tab         ${VENDOR PRICE LISTS TAB NAME}

Validate Click On Buy Page Inline Action Button For Second Upload
    [Tags]    REGRESSION
    Verify Click On Inline Action Button After Create

alidate Select Upload Vendow Price List Inline Action Button For Second Upload
    [Tags]    REGRESSION
    Verify Select Upload Vendor Price List Inline Action Button         ${UPLOAD VENDOR PRICE LIST INLINE ITEM NAME}

Validate Click On Browse Button For Second Upload
    [Tags]    REGRESSION
    Verify Click On Browse Button

Validate Select The File To Be Uploaded For Second Upload
    [Tags]    REGRESSION
    ${CALL TYPE} =      Verify Get Call Type
    set suite variable      ${CALL TYPE}
    Verify Select The File To Be Uploaded       ${TEMPLATE PATH}/${CALL TYPE}/${VENDOR PRICE LIST TEMPALTE NAME}

Validate Click On Upload Button For Second Upload
    [Tags]    REGRESSION
    Verify Click On Upload Button

Validate Click On Vendor Price List Button After Uploading For Second Upload
    [Tags]    REGRESSION
    Verify Click On Vendor Price Lists

Validate Click On Vendor Price List Upload Colored Icon For Second Upload
    [Tags]    REGRESSION
    Verify Click On Vendor Price List Upload Colored Icon

Validate All Completed Jobs Displayed In The Grid For Second Upload
    [Tags]    REGRESSION
    Verify Search Results Displayed In The Grid

Validate Close Jobs Tab For Second Upload
    [Tags]    REGRESSION
    buy_page_resource.Verify Close Job Tab        ${JOB TAB NAME}

Validate Compare Vendor Price Lists Number Of Rows From Grid For Second Upload
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