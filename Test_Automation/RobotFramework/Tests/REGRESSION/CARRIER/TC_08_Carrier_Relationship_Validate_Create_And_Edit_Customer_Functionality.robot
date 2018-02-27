*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Create And Edit Customer Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/carrier_page_test_data_source.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/system_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${RATE PLAN}      ${EMPTY}
${CALL TYPE}      ${EMPTY}
${SERVICE LEVEL}    ${EMPTY}

*** Test Cases ***
Validate Navigate to Carrier module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Carrier' From Main Menu

Validate Get Created Carrier Name
    [Tags]    REGRESSION
    Verify Get Created Carrier Name

Validate Get Created Service Level
    [Tags]    REGRESSION
    ${SERVICE LEVEL} =    Verify Get Created Service Level
    set suite variable    ${SERVICE LEVEL}

Validate Filter Carriers Grid
    [Tags]    REGRESSION
    Verify Filter Carriers Grid After Create    ${CARRIER NAME COLUMN NAME}

Validate Click Carriers Page Inline Action Button After Create
    [Tags]    REGRESSION
    Verify Click Carriers Page Inline Action Button After Create

Validate Select Item From Inline Action
    [Tags]    REGRESSION
    Verify Select Item From Inline Action    ${CARRIER RELATIONSHIPS INLINE ITEM}

Validate Expand Rate Plans Section
    [Tags]    REGRESSION
    Verify Expand Rate Plans Section

Validate Click Create Rate Plan Button
    [Tags]    REGRESSION
    Verify Click Create Rate Plan Button

Validate Set Rate Plan Name
    [Tags]    REGRESSION
    Verify Set Rate Plan Name    ${TEST DATA PREFIX}

Validate Set Rate Plan Abbreviation
    [Tags]    REGRESSION
    Verify Set Rate Plan Abbreviation    ${TEST DATA PREFIX}

Validate Set Increase Notice Period Days
    [Tags]    REGRESSION
    Verify Set Increase Notice Period Days    ${INCREASE NOTICE PERIOD DAYS}

Validate Set Decrease Notice Period Days
    [Tags]    REGRESSION
    Verify Set Decrease Notice Period Days    ${DECREASE NOTICE PERIOD DAYS}

Validate Set Dial Digit Change Notice Period Days
    [Tags]    REGRESSION
    Verify Set Dial Digit Change Notice Period Days    ${DIAL DIGIT CHANGE NOTICE PERIOD DAYS}

Validate Set Business Type
    [Tags]    REGRESSION
    Verify Set Business Type    ${BUSINESS TYPE}

Validate Set Traffic Direction
    [Tags]    REGRESSION
    carrier_page_resource.Verify Set Traffic Direction    ${INBOUND TRAFFIC DIRECTION}

Validate Set Tariff Type
    [Tags]    REGRESSION
    carrier_page_resource.Verify Set Tariff Type    ${TARIFF TYPE}

Validate Set Service Level
    [Tags]    REGRESSION
    carrier_page_resource.Verify Set Service Level    ${SERVICE LEVEL}

Validate Set Currency
    [Tags]    REGRESSION
    carrier_page_resource.Verify Set Currency    ${CURRENCY}

Validate Set Product Catalog
    [Tags]    REGRESSION
    Verify Set Product Catalog    ${PRODUCT CATALOG}

Validate Set Rate Plan Scope
    [Tags]    REGRESSION
    Verify Set Rate Plan Scope    ${RATE PLAN SCOPE}

Validate Toggle Cost Pricing Indicator
    [Tags]    REGRESSION
    Verify Toggle Cost Pricing Indicator    ${COST PRICE INDICATOR}

Validate Set Rating Method
    [Tags]    REGRESSION
    ${RATING METHOD} =    Verify Get Rating Method
    Verify Set Rating Method    ${RATING METHOD}

Validate Set Rate Plan Category 1
    [Tags]    REGRESSION
    Verify Set Rate Plan Category 1    ${RATE PLAN CAT 1}

Validate Set Rate Plan Category 2
    [Tags]    REGRESSION
    Verify Set Rate Plan Category 2    ${RATE PLAN CAT 2}

Validate Set Begin Date
    [Tags]    REGRESSION
    Verify Set Begin Date For Add New Rate Plan    ${BEGIN DATE}

Validate Set End Date
    [Tags]    REGRESSION
    Verify Set End Date    ${END DATE}

Validate Set Note
    [Tags]    REGRESSION
    Verify Set Note    ${NOTE FOR RATE PLAN}

Validate Click Save Button
    [Tags]    REGRESSION
    Verify Click Save Button

Validate Get Created Rate Plan Name
    [Tags]    REGRESSION
    ${RATE PLAN} =    Verify Get Rate Plan Name
    set suite variable    ${RATE PLAN}

Validate Expand Customers And Vendors Section
    [Tags]    REGRESSION
    Verify Expand Customers And Vendors Section

Validate Click Create Customer Button
    [Tags]    REGRESSION
    Verify Click Create Customer Button

Validate Set Customer Name
    [Tags]    REGRESSION
    Verify Set Customer Name    ${TEST DATA PREFIX}

Validate Set Abbreviation
    [Tags]    REGRESSION
    Verify Set Abbreviation    ${TEST DATA PREFIX}

Validate Set Rate Plan
    [Tags]    REGRESSION
    carrier_page_resource.Verify Set Rate Plan    ${RATE PLAN}

Validate Get Call Type
    [Tags]    REGRESSION
    ${CALL TYPE} =    Verify Get Call Type
    log    ${CALL TYPE}
    set suite variable    ${CALL TYPE}

Validate Set Call Type
    [Tags]    REGRESSION
    carrier_page_resource.Verify Set Call Type    ${CALL TYPE}

Validate Click Save Customer Profile button
    [Tags]    REGRESSION
    Verify Click Save Customer Profile button

#Validate Filter Trade Source Grid For Create
#    [Tags]    REGRESSION
#    [Documentation]  This test step is being commented out since there will be only one row in the grid. not necessary to fitler each time.
#    Verify Filter Trade Source Grid For Create    ${NAME COLUMN NAME}

Validate Get Trade Source Grid Row Details
    [Tags]    REGRESSION
    Verify Get Trade Source Grid Row Details

Validate Trade Source Grid Name
    [Tags]    REGRESSION
    Verify Trade Source Grid Name

Validate Trade Source Grid Call Type
    [Tags]    REGRESSION
    Verify Trade Source Grid Call Type    ${CALL TYPE}

Validate Trade Source Grid Rate Plan
    [Tags]    REGRESSION
    Verify Trade Source Grid Rate Plan    ${RATE PLAN}

Validate Click Trade Source Grid Inline Action Button For Create
    [Tags]    REGRESSION
    Verify Click Trade Source Grid Inline Action Button For Create

Validate Select Inline Action Item
    [Tags]    REGRESSION
    carrier_page_resource.Verify Select Inline Action Item    ${EDIT INLINE ITEM}

Validate Set Status
    [Tags]    REGRESSION
    Verify Set Status    ${INACTIVE STATUS}

Validate Click Save Customer Profile button After Edit
    [Tags]    REGRESSION
    Verify Click Save Customer Profile button
