*** Settings ***
Documentation     [TAENOSIS-983] A Test Suite With Set Of Tests To Validate Create And Edit New Rate Plan Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/carrier_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${SERVICE LEVEL}        ${EMPTY}
${RATING METHOD}        ${EMPTY}

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

Validate Click Configuration Variables Grid Search Button
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        2

Validate Close System Admin Window
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to Carrier module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Carrier' From Main Menu

Validate Get Created Carrier Name
    [Tags]    REGRESSION
    Verify Get Created Carrier Name

Validate Get Created Service Level
    [Tags]    REGRESSION
    ${SERVICE LEVEL} =    Verify Get Created Service Level
    set suite variable      ${SERVICE LEVEL}

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

Validate Get Rating Method
    [Tags]    REGRESSION
    ${RATING METHOD} =    Verify Get Rating Method
    set suite variable      ${RATING METHOD}

Validate Set Rating Method
    [Tags]    REGRESSION
    Verify Set Rating Method            ${RATING METHOD}

Validate Set Rate Record to Create New Rate Plan
    [Tags]    REGRESSION
    Verify Set Rate Record to Create New Rate Plan

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

Validate Filter Rate Plan Grid For Create
    [Tags]    REGRESSION
    Verify Filter Rate Plan Grid For Create         ${RATE PLAN COLUMN NAME}

Validate Get Rate Plan Grid Row Details
    [Tags]    REGRESSION
    Verify Get Rate Plan Grid Row Details

Validate Rate Plan Grid Rate Plan
    [Tags]    REGRESSION
    Verify Rate Plan Grid Rate Plan

Validate Close Carrier Window
    [Tags]    REGRESSION
    Verify Close Carrier Window

Validate Navigate to System Admin module to update iXToolsWholesaleSolutionType=3
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select System Tab iXToolsWholesaleSolutionType=3
    [Tags]    REGRESSION
    Click on System Tab

Validate Click Configuration Variables Button to update iXToolsWholesaleSolutionType=3
    [Tags]    REGRESSION
    Verify Click Configuration Variables Button

Validate Set Scope to update iXToolsWholesaleSolutionType=3
    [Tags]    REGRESSION
    Verify Set Scope        General

Validate Set Variable Name to update iXToolsWholesaleSolutionType=3
    [Tags]    REGRESSION
    Verify Set Variable Name    iXToolsWholesaleSolutionType

Validate Click Configuration Variables Grid Search Button to update iXToolsWholesaleSolutionType=3
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column iXToolsWholesaleSolutionType=3
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        3

Validate Close System Admin Window after updating iXToolsWholesaleSolutionType=3
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to Carrier module after updating iXToolsWholesaleSolutionType=3
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Carrier' From Main Menu

Validate Get Created Carrier Name after updating iXToolsWholesaleSolutionType=3
    [Tags]    REGRESSION
    Verify Get Created Carrier Name

Validate Get Created Service Level after updating iXToolsWholesaleSolutionType=3
    [Tags]    REGRESSION
    ${SERVICE LEVEL} =    Verify Get Created Service Level
    set suite variable      ${SERVICE LEVEL}

Validate Filter Carrier Grid after updating iXToolsWholesaleSolutionType=3
    [Tags]    REGRESSION
    Verify Filter Carriers Grid After Create        ${CARRIER NAME COLUMN NAME}

Validate Click Carriers Page Inline Action Button after updating iXToolsWholesaleSolutionType=3
    [Tags]    REGRESSION
    carrier_page_resource.Verify Click Carriers Page Inline Action Button After Create

Validate Select Item From Inline Action after updating iXToolsWholesaleSolutionType=3
    [Tags]    REGRESSION
    carrier_page_resource.Verify Select Item From Inline Action           ${CARRIER RELATIONSHIPS INLINE ITEM}

Validate Expand Rate Plans Section after updating iXToolsWholesaleSolutionType=3
    [Tags]    REGRESSION
    Verify Expand Rate Plans Section

Validate Click Create Rate Plan Button after updating iXToolsWholesaleSolutionType=3
    [Tags]    REGRESSION
    Verify Click Create Rate Plan Button

Validate Set Rate Plan Name after updating iXToolsWholesaleSolutionType=3
    [Tags]    REGRESSION
    Verify Set Rate Plan Name                   ${TEST DATA PREFIX}

Validate Set Rate Plan Abbreviation after updating iXToolsWholesaleSolutionType=3
    [Tags]    REGRESSION
    Verify Set Rate Plan Abbreviation           ${TEST DATA PREFIX}

Validate Set Increase Notice Period Days after updating iXToolsWholesaleSolutionType=3
    [Tags]    REGRESSION
    Verify Set Increase Notice Period Days      ${INCREASE NOTICE PERIOD DAYS}

Validate Set Decrease Notice Period Days after updating iXToolsWholesaleSolutionType=3
    [Tags]    REGRESSION
    Verify Set Decrease Notice Period Days      ${DECREASE NOTICE PERIOD DAYS}

Validate Set Dial Digit Change Notice Period Days after updating iXToolsWholesaleSolutionType=3
    [Tags]    REGRESSION
    Verify Set Dial Digit Change Notice Period Days         ${DIAL DIGIT CHANGE NOTICE PERIOD DAYS}

Validate Set Business Type after updating iXToolsWholesaleSolutionType=3
    [Tags]    REGRESSION
    Verify Set Business Type            ${BUSINESS TYPE}

Validate Set Traffic Direction after updating iXToolsWholesaleSolutionType=3
    [Tags]    REGRESSION
    carrier_page_resource.Verify Set Traffic Direction        ${TRAFFIC DIRECTION}

Validate Set Tariff Type after updating iXToolsWholesaleSolutionType=3
    [Tags]    REGRESSION
    carrier_page_resource.Verify Set Tariff Type              ${TARIFF TYPE}

Validate Set Service Level after updating iXToolsWholesaleSolutionType=3
    [Tags]    REGRESSION
    carrier_page_resource.Verify Set Service Level            ${SERVICE LEVEL}

Validate Set Currency after updating iXToolsWholesaleSolutionType=3
    [Tags]    REGRESSION
    carrier_page_resource.Verify Set Currency                 ${CURRENCY}

Validate Set Product Catalog after updating iXToolsWholesaleSolutionType=3
    [Tags]    REGRESSION
    Verify Set Product Catalog          ${PRODUCT CATALOG}

Validate Set Rate Plan Scope after updating iXToolsWholesaleSolutionType=3
    [Tags]    REGRESSION
    Verify Set Rate Plan Scope          ${RATE PLAN SCOPE}

Validate Toggle Cost Pricing Indicator after updating iXToolsWholesaleSolutionType=3
    [Tags]    REGRESSION
    Verify Toggle Cost Pricing Indicator          ${COST PRICE INDICATOR}

Validate Get Rating Method after updating iXToolsWholesaleSolutionType=3
    [Tags]    REGRESSION
    ${RATING METHOD} =    Verify Get Rating Method
    set suite variable      ${RATING METHOD}

Validate Set Rating Method after updating iXToolsWholesaleSolutionType=3
    [Tags]    REGRESSION
    Verify Set Rating Method            ${RATING METHOD}

Validate Set Rate Record to Create New Rate Plan after updating iXToolsWholesaleSolutionType=3
    [Tags]    REGRESSION
    Verify Set Rate Record to Create New Rate Plan

Validate Set Rate Plan Category 1 after updating iXToolsWholesaleSolutionType=3
    [Tags]    REGRESSION
    Verify Set Rate Plan Category 1     ${RATE PLAN CAT 1}

Validate Set Rate Plan Category 2 after updating iXToolsWholesaleSolutionType=3
    [Tags]    REGRESSION
    Verify Set Rate Plan Category 2     ${RATE PLAN CAT 2}

Validate Set Begin Date after updating iXToolsWholesaleSolutionType=3
    [Tags]    REGRESSION
    Verify Set Begin Date For Add New Rate Plan               ${BEGIN DATE}

Validate Set End Date after updating iXToolsWholesaleSolutionType=3
    [Tags]    REGRESSION
    Verify Set End Date                 ${END DATE}

Validate Set Note after updating iXToolsWholesaleSolutionType=3
    [Tags]    REGRESSION
    Verify Set Note                     ${NOTE FOR RATE PLAN}

Validate Click Save Button after updating iXToolsWholesaleSolutionType=3
    [Tags]    REGRESSION
    Verify Click Save Button

Validate Filter Rate Plan Grid For Create after updating iXToolsWholesaleSolutionType=3
    [Tags]    REGRESSION
    Verify Filter Rate Plan Grid For Create         ${RATE PLAN COLUMN NAME}

Validate Get Rate Plan Grid Row Details after updating iXToolsWholesaleSolutionType=3
    [Tags]    REGRESSION
    Verify Get Rate Plan Grid Row Details

Validate Rate Plan Grid Rate Plan after updating iXToolsWholesaleSolutionType=3
    [Tags]    REGRESSION
    Verify Rate Plan Grid Rate Plan