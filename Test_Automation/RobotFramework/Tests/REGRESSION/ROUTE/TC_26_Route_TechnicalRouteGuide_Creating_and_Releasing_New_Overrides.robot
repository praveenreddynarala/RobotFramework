*** Settings ***
Documentation     A Test Suite With Set Of Tests Technical Route Guide To Validate Creating and Releasing Overrides

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/route_page_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/Pages/network_page_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/route_page_test_data_source.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/carrier_page_test_data_source.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/network_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${RATING METHOD}        ${EMPTY}
${COMPANY NAME}        ${EMPTY}
${SERVICE LEVEL}        ${EMPTY}
${COMPANY NAME}        ${EMPTY}
${ROUTE CLASS}      ${EMPTY}
${SWITCH}           ${EMPTY}
${OVERRIDE ACCOUNT}     ${EMPTY}
${TRUNK NAME}       ${EMPTY}
${OVERRIDE REASON}      ${EMPTY}

*** Test Cases ***
Validate Navigate to Carrier module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Carrier' From Main Menu

Validate Click Create Carrier Button
    [Tags]    REGRESSION
    Verify Click Create Carrier Button

Validate Set Carrier Name
    [Tags]    REGRESSION
    Verify Set Carrier Name             ${TEST DATA PREFIX}

Validate Set Carrier Abbreviation
    [Tags]    REGRESSION
    Verify Set Carrier Abbreviation     ${TEST DATA PREFIX}

Validate Set Carrier Legal Name
    [Tags]    REGRESSION
    Verify Set Carrier Legal Name       ${TEST DATA PREFIX}

Validate Set Status For Carrier
    [Tags]    REGRESSION
    carrier_page_resource.Verify Set Status                   ${ACTIVE STATUS}

Validate Get Company Name
    [Tags]    REGRESSION
    ${COMPANY NAME} =     Verify Get Company
    log  ${COMPANY NAME}
    set suite variable      ${COMPANY NAME}

Validate Set Company
    [Tags]    REGRESSION
    Verify Set Company                  ${COMPANY NAME}

Validate Set Carrier Number
    [Tags]    REGRESSION
    Verify Set Carrier Number

Validate Click Create Carrier Save Button
    [Tags]    REGRESSION
    Verify Click Create Carrier Save Button

Validate Close Carrier Profile Tab
    [Tags]    REGRESSION
    carrier_page_resource.Verify Close Current Tab            ${CARRIER PROFILE TAB NAME}

Validate Get Created Carrier Name
    [Tags]    REGRESSION
    Verify Get Created Carrier Name

Validate Filter Carrier Grid
    [Tags]    REGRESSION
    Verify Filter Carriers Grid After Create        ${CARRIER NAME COLUMN NAME}

Validate Click Carriers Page Inline Action Button
    [Tags]    REGRESSION
    Verify Click Carriers Page Inline Action Button After Create

Validate Select Item From Inline Action
    [Tags]    REGRESSION
    Verify Select Item From Inline Action           ${CARRIER RELATIONSHIPS INLINE ITEM}

Validate Expand Commercial Trunks Section
    [Tags]    REGRESSION
    Verify Expand Commercial Trunks Section

Validate Click Create Trunk Button
    [Tags]    REGRESSION
    Verify Click Create Trunk Button

Validate Set Trunk Name
    [Tags]    REGRESSION
    Verify Set Trunk Name           ${TEST DATA PREFIX}

Validate Set Clli
    [Tags]    REGRESSION
    Verify Set Clli                 ${CLLI FOR CREATE}

Validate Set Effective Date
    [Tags]    REGRESSION
    carrier_page_resource.Verify Set Effective Date       ${EFFECTIVE DATE FOR CREATE}

Validate Set Status For Trunk
    [Tags]    REGRESSION
    carrier_page_resource.Verify Set Status               ${ACTIVE STATUS}

Validate Set Direction
    [Tags]    REGRESSION
    Verify Set Direction            ${DIRECTION FOR CREATE}

Validate Set Description
    [Tags]    REGRESSION
    Verify Set Description          ${DESCRIPTION FOR CREATE}

Validate Click Save Button
    [Tags]    REGRESSION
    carrier_page_resource.Verify Click Save Button

Validate Get Created Service Level
    [Tags]    REGRESSION
    ${SERVICE LEVEL} =    Verify Get Created Service Level
    set suite variable      ${SERVICE LEVEL}

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
    Verify Set Traffic Direction        ${TRAFFIC DIRECTION}

Validate Set Tariff Type
    [Tags]    REGRESSION
    Verify Set Tariff Type              ${TARIFF TYPE}

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

Validate Set Rate Plan Category 1
    [Tags]    REGRESSION
    Verify Set Rate Plan Category 1     ${RATE PLAN CAT 1}

Validate Set Rate Plan Category 2
    [Tags]    REGRESSION
    Verify Set Rate Plan Category 2     ${RATE PLAN CAT 2}

Validate Set Begin Date For Add New Rate Plan
    [Tags]    REGRESSION
    Verify Set Begin Date For Add New Rate Plan               ${BEGIN DATE}

Validate Set End Date For Carrier
    [Tags]    REGRESSION
    carrier_page_resource.Verify Set End Date                 ${END DATE}

Validate Set Note
    [Tags]    REGRESSION
    carrier_page_resource.Verify Set Note                     ${NOTE FOR RATE PLAN}

Validate Click Save Button For Rate Plan
    [Tags]    REGRESSION
    carrier_page_resource.Verify Click Save Button

Validate Close Carrier Window
    [Tags]    REGRESSION
    carrier_page_resource.Verify Close Carrier Window

Validate Navigate to Network module
    [Tags]  REGRESSION
    Click on Home Icon and Select 'Network' From Main Menu

Validate Commercial Trunks Tab Is Available
    [Tags]  REGRESSION
    Verify The Commercial Trunks Tab Is Available

Validate Navigate to Commercial Trunks Tab
    [Tags]  REGRESSION
    Click On Commercial Trunks Tab

Validate Click Create New Commercial Trunk button
    [Tags]  REGRESSION
    Verify Click Create New Commercial Trunk button

Validate Set Trunk For Create Commercial Trunk
    [Tags]  REGRESSION
    Verify Set Trunk For Create Commercial Trunk        ${TEST DATA PREFIX}

Validate Set Account For Create Commercial Trunk
    [Tags]  REGRESSION
    Verify Set Account For Create Commercial Trunk

Validate Set Effective Date For Create Commercial Trunk
    [Tags]  REGRESSION
    Verify Set Effective Date For Create Commercial Trunk

Validate Set Status For Create Commercial Trunk
    [Tags]  REGRESSION
    Verify Set Status For Create Commercial Trunk       ${COMMERCIAL TRUNK STATUS FOR CREATE}

Validate Set Direction For Create Commercial Trunk
    [Tags]  REGRESSION
    Verify Set Direction For Create Commercial Trunk        ${COMMERCIAL TRUNK DIRECTION FOR CREATE}

Validate Click Create Commercial Trunk Save Button
    [Tags]  REGRESSION
    Verify Click Create Commercial Trunk Save Button

Validate Navigate to Technical Trunks Tab
    [Tags]  REGRESSION
    Click On Technical Trunks Tab

Validate Create New Switch
    [Tags]  REGRESSION
    Verify Create New Switch        ${DATABASE SERVER}      ${DATABASE}      ${DATABASE USERNAME}      ${DATABASE PASSWORD}     ${TEST DATA PREFIX}

Validate Click Create New Technical Trunk Button
    [Tags]  REGRESSION
    Verify Click Create New Technical Trunk Button

Valdiate Set Technical Trunk For Create Technical Trunk
    [Tags]  REGRESSION
    Verify Set Technical Trunk For Create Technical Trunk       ${TEST DATA PREFIX}

Validate Set Trunk Type For Create Technical Trunk
    [Tags]  REGRESSION
    Verify Set Trunk Type For Create Technical Trunk        ${TRUNK TYPE FOR CREATE}

Validate Set Switch For Create Technical Trunk
    [Tags]  REGRESSION
    ${SWITCH} =     Verify Get Created Switch
    log  ${SWITCH}
    Verify Set Switch For Create Technical Trunk        ${SWITCH}

Validate Set Carrier For Create Technical Trunk
    [Tags]  REGRESSION
    Verify Set Carrier For Create Technical Trunk

Validate Set CDR Match For Create Technical Trunk
    [Tags]  REGRESSION
    Verify Set CDR Match For Create Technical Trunk     ${TEST DATA PREFIX}

Validate Click Technical Trunk Attribute Tab
    [Tags]  REGRESSION
    Verify Click Technical Trunk Attribute Tab

Validate Set Effective Date For Create Technical Trunk
    [Tags]  REGRESSION
    Verify Set Effective Date For Create Technical Trunk

Validate Set Status For Create Technical Trunk
    [Tags]  REGRESSION
    Verify Set Status For Create Technical Trunk       ${ACTIVE STATUS}

Validate Set Activated Ports For Create Technical Trunk
    [Tags]  REGRESSION
    Verify Set Activated Ports For Create Technical Trunk       ${NUMBER OF ACTIVATED PORTS}

Validate Set Commercial Trunk For Create Technical Trunk
    [Tags]  REGRESSION
    Verify Set Commercial Trunk For Create Technical Trunk

Validate Set Direction For Create Technical Trunk
    [Tags]  REGRESSION
    Verify Set Direction For Create Technical Trunk     ${DIRECTION FOR CREATE}

Validate Click Create New Technical Trunk Save Button
    [Tags]  REGRESSION
    Verify Click Create New Technical Trunk Save Button

Validate Close Network Window
    [Tags]    REGRESSION
    Verify Close Network Window

Validate Navigate to Route module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Route' From Main Menu

Validate Click Manage Reason Link
    [Tags]    REGRESSION
    Verify Click Manage Reason Link

Validate Click Add New Reason Button
    [Tags]    REGRESSION
    Verify Click Add New Reason Button

Validate Get Route Class
    [Tags]    REGRESSION
    ${ROUTE CLASS} =       Verify Get Route Class Name
    log  ${ROUTE CLASS}
    set suite variable      ${ROUTE CLASS}

Valivate Get Created Switch
    [Tags]    REGRESSION
    ${SWITCH} =     Verify Get Created Switch
    log  ${SWITCH}
    set suite variable      ${SWITCH}

Validate Get Created Carrier Account Name
    [Tags]    REGRESSION
    ${OVERRIDE ACCOUNT} =       Verify Get Created Carrier Name
    log  ${OVERRIDE ACCOUNT}
    set suite variable      ${OVERRIDE ACCOUNT}

Validate Get Trunk Name
    [Tags]    REGRESSION
    ${TRUNK NAME} =       Verify Get Created Technical Trunk
    log  ${TRUNK NAME}
    set suite variable      ${TRUNK NAME}

Validate Set Value In Scope Column
    [Tags]    REGRESSION
    Verify Set Value In Scope Column        ${SCOPE COLUMN VALUE}

Validate Set Value In Reason Column
    [Tags]    REGRESSION
    Verify Set Value In Reason Column       ${TEST DATA PREFIX}

Validate Click Manage Reasones Save Button
    [Tags]    REGRESSION
    Verify Click Manage Reasones Save Button

Validate Get Created Reason
    [Tags]    REGRESSION
    ${OVERRIDE REASON} =       Verify Get Created Reason
    log     ${OVERRIDE REASON}
    set suite variable          ${OVERRIDE REASON}

Validate Navigate to Technical Routing Tab
    [Tags]    REGRESSION
    Verify Select Technical Routing Tab

Validate Click Technical Routing Override Button
    [Tags]    REGRESSION
    Verify Click Techincal Routing Override Button

Validate Click New Override Button
    [Tags]    REGRESSION
    Verify Click New Override Button

Validate Set New Override Switch
    [Tags]    REGRESSION
    Verify Set New Override Switch    ${COMMERCIAL SWITCH}

Validate Set New Override Account
    [Tags]    REGRESSION
    Verify Set New Override Account    ${OVERRIDE ACCOUNT}

Validate Set New Override Country
    [Tags]    REGRESSION
    Verify Set New Override Country    ${TECHNICAL OVERRIDE COUNTRY}

Validate Set New Override Trunk
    [Tags]    REGRESSION
    Verify Set New Override Trunk    ${TRUNK NAME}      ${COMMERCIAL SWITCH}

Validate Set Rank
    [Tags]    REGRESSION
    Verify Set Rank    ${OVERRIDE RANK}

Validate Set New Override Reason
    [Tags]    REGRESSION
    Verify Set New Override Reason    ${OVERRIDE REASON}

Validate Set Begin Date
    [Tags]    REGRESSION
    route_page_resource.Verify Set Begin Date    ${TECHNICAL OVERRIDE BEGIN DATE}

Validate Set End Date
    [Tags]    REGRESSION
    route_page_resource.Verify Set End Date    ${TECHNICAL OVERRIDE END DATE}

Validate Set New Override Note
    [Tags]    REGRESSION
    Verify Set New Override Note    ${TECHNICAL OVERRIDE NOTE}

Validate Set New Override Route Class
    [Tags]    REGRESSION
    Verify Set New Override Route Class    ${ROUTE CLASS}

Validate Set New Override Routing Product
    [Tags]    REGRESSION
    Verify Set New Override Routing Product    ${INCLUSION PRODUCT}

Validate Set New Override Routing Percentage
    [Tags]    REGRESSION
    Verify Set New Override Routing Percentage    ${TECHNICAL OVERRIDE ROUTING PERCENTAGE}

Validate Click Review Overrides Button
    [Tags]    REGRESSION
    Verify Click Review Overrides Button

Validate Click Override Save And Close Button
    [Tags]    REGRESSION
    Verify Click Override Save And Close Button

Validate Set Effective Date With Argument
    [Tags]    REGRESSION
    Verify Set Effective Date With Argument    ${TECHNICAL OVERRIDE BEGIN DATE}

Validate Set Reason
    [Tags]    REGRESSION
    Verify Set Reason    ${OVERRIDE REASON}

Validate Set Override Route Class For Search
    [Tags]    REGRESSION
    Verify Set Override Route Class For Search    ${ROUTE CLASS}

Validate Set Override
    [Tags]    REGRESSION
    Verify Set Override    @{TECHNICAL OVERRIDE RANK}

Validate Click Override Search Button
    [Tags]    REGRESSION
    Verify Click Override Search Button

Validate Get Overrides Grid Row Details
    [Tags]    REGRESSION
    Verify Get Overrides Grid Row Details

Valdiate Compare Overrides Grid Row Details
    [Tags]    REGRESSION
    Verify Compare Overrides Grid Row Details    ${TRUNK NAME}    ${ROUTE CLASS}    ${INCLUSION PRODUCT}    ${TECHNICAL OVERRIDE RANK}    ${OVERRIDE REASON}

Validate Select Overrides Grid Row Checkbox
    [Tags]    REGRESSION
    Verify Select Overrides Grid Row Checkbox    ${TRUNK NAME}

Validate Click Override Bulk Edit Button
    [Tags]    REGRESSION
    Verify Click Override Bulk Edit Button

Validate Set Bulk Edit Rank
    [Tags]    REGRESSION
    Verify Set Rank    @{TECHNICAL OVERRIDE BULK EDIT RANK}

Validate Set Bulk Edit Percentage
    [Tags]    REGRESSION
    Verify Set Bulk Edit Percentage    ${TECHNICAL OVERRIDE BULK EDIT PERCENTAGE}

Validate Set Bulk Edit End Date
    [Tags]    REGRESSION
    route_page_resource.Verify Set End Date    ${TECHNICAL OVERRIDE BULK EDIT END DATE}

Validate Set Bulk Edit Reason
    [Tags]    REGRESSION
    Verify Set Bulk Edit Reason    ${OVERRIDE REASON}

Validate Set Note For Bulk Edit
    [Tags]    REGRESSION
    route_page_resource.Verify Set Note    ${TECHNICAL OVERRIDE BULK EDIT NOTE}

Validate Click Bulk Edit Submit Button
    [Tags]    REGRESSION
    route_page_resource.Verify Click Bulk Edit Submit Button

Validate Click Override Save Changes Button
    [Tags]    REGRESSION
    Verify Click Override Save Changes Button

Validate Set Reason After Bulk Edit
    [Tags]    REGRESSION
    Verify Set Reason    ${OVERRIDE REASON}

Validate Set Override After Bulk Edit
    [Tags]    REGRESSION
    Verify Set Override    @{TECHNICAL OVERRIDE BULK EDIT RANK}

Validate Click Override Search Button After Bulk Edit
    [Tags]    REGRESSION
    Verify Click Override Search Button

Validate Get Overrides Grid Row Details After Bulk Edit
    [Tags]    REGRESSION
    Verify Get Overrides Grid Row Details

Valdiate Compare Overrides Grid Row Details After Bulk Edit
    [Tags]    REGRESSION
    Verify Compare Overrides Grid Row Details    @{TRUNK NAME}    @{ROUTE CLASS}    ${INCLUSION PRODUCT}    @{TECHNICAL OVERRIDE RANK}    @{OVERRIDE REASON}

Validate Click Overrides Grid Inline Action Button
    [Tags]    REGRESSION
    Verify Click Overrides Grid Inline Action Button    ${TRUNK NAME}

Validate Select Inline Action Item
    [Tags]    REGRESSION
    route_page_resource.Verify Select Inline Action Item    ${RELEASE OVERRIDE INLINE ITEM NAME}

Validate Confirm Release Overrides Pop Ups
    [Tags]    REGRESSION
    Verify Confirm Release Overrides Pop Ups
