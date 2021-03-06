*** Settings ***
Documentation     [TAENOSIS-989] A Test Suite With Set Of Tests To Create New SLWO For Standard RC And All Destinations

Resource          ../../../../Resources/common_resource.robot
Resource          ../../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../../Resources/Pages/network_page_resource.robot
Resource          ../../../../Resources/ExternalDataSource/TestAutomation/carrier_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CREATED CARRIER NAME}         ${EMPTY}
${ROUTE CLASS}                  ${EMPTY}
${COMMERCIAL TRUNK NAME}        ${EMPTY}

*** Test Cases ***
Validate Navigate to Carrier module
    [Tags]    REGRESSION
    carrier_page_resource.Click on Home Icon and Select 'Carrier' From Main Menu

Validate Get Route Class
    [Tags]    REGRESSION
    ${ROUTE CLASS} =       business_admin_page_resource.Verify Get Route Class Name
    log  ${ROUTE CLASS}
    set suite variable      ${ROUTE CLASS}

Validate Get Created Carrier Name
    [Tags]    REGRESSION
    ${CREATED CARRIER NAME} =   carrier_page_resource.Verify Get Created Carrier Name
    set suite variable          ${CREATED CARRIER NAME}

Validate Filter Carrier Grid
    [Tags]    REGRESSION
    carrier_page_resource.Verify Filter Carriers Grid After Create        ${CARRIER NAME COLUMN NAME}     ${CREATED CARRIER NAME}

Validate Click Carriers Page First Row Inline Action Button
    [Tags]    REGRESSION
    carrier_page_resource.Verify Click Carriers Page First Row Inline Action Button

Validate Select Item From Inline Action
    [Tags]    REGRESSION
    carrier_page_resource.Verify Select Item From Inline Action           ${CARRIER RELATIONSHIPS INLINE ITEM}

Validate Expand Commercial Trunks Section
    [Tags]    REGRESSION
    carrier_page_resource.Verify Expand Commercial Trunks Section

Validate Click Create Trunk Button
    [Tags]    REGRESSION
    carrier_page_resource.Verify Click Create Trunk Button

Validate Set Trunk Name
    [Tags]    REGRESSION
    carrier_page_resource.Verify Set Trunk Name           ${TEST DATA PREFIX}

Validate Set Clli
    [Tags]    REGRESSION
    carrier_page_resource.Verify Set Clli                 ${CLLI FOR CREATE}

Validate Set Effective Date
    [Tags]    REGRESSION
    carrier_page_resource.Verify Set Effective Date       ${EFFECTIVE DATE FOR CREATE}

Validate Set Status
    [Tags]    REGRESSION
    carrier_page_resource.Verify Set Status               ${ACTIVE STATUS}

Validate Set Direction
    [Tags]    REGRESSION
    carrier_page_resource.Verify Set Direction            Inbound

Validate Set Description
    [Tags]    REGRESSION
    carrier_page_resource.Verify Set Description          ${DESCRIPTION FOR CREATE}

Validate Click Save Button
    [Tags]    REGRESSION
    carrier_page_resource.Verify Click Save Button

Validate Get Commercial Trunk Name
    [Tags]    REGRESSION
    ${COMMERCIAL TRUNK NAME} =    carrier_page_resource.Verify Get Trunk Name
    set suite variable      ${COMMERCIAL TRUNK NAME}

Validate Close Carrier Window
    [Tags]    REGRESSION
    carrier_page_resource.Verify Close Carrier Window

Validate Navigate to Network module
    [Tags]  REGRESSION
    network_page_resource.Click on Home Icon and Select 'Network' From Main Menu

Validate Technical Trunks Tab Is Available
    [Tags]  REGRESSION
    network_page_resource.Verify The Technical Trunks Tab Is Available

Validate Navigate to Technical Trunks Tab
    [Tags]  REGRESSION
    network_page_resource.Click On Technical Trunks Tab

Validate Create New Switch
    [Tags]  REGRESSION
    network_page_resource.Verify Create New Switch        ${DATABASE SERVER}      ${DATABASE}      ${DATABASE USERNAME}      ${DATABASE PASSWORD}     ${TEST DATA PREFIX}

Validate Click Create New Technical Trunk Button
    [Tags]  REGRESSION
    network_page_resource.Verify Click Create New Technical Trunk Button

Valdiate Set Technical Trunk For Create Technical Trunk
    [Tags]  REGRESSION
    network_page_resource.Verify Set Technical Trunk For Create Technical Trunk       ${TEST DATA PREFIX}

Validate Set Switch For Create Technical Trunk
    [Tags]  REGRESSION
    ${SWITCH} =     network_page_resource.Verify Get Created Switch
    log  ${SWITCH}
    network_page_resource.Verify Set Switch For Create Technical Trunk        ${SWITCH}

Validate Set Carrier For Create Technical Trunk
    [Tags]  REGRESSION
    network_page_resource.Verify Set Carrier For Create Technical Trunk

Validate Set CDR Match For Create Technical Trunk
    [Tags]  REGRESSION
    network_page_resource.Verify Set CDR Match For Create Technical Trunk     ${TEST DATA PREFIX}

Validate Click Technical Trunk Attribute Tab
    [Tags]  REGRESSION
    network_page_resource.Verify Click Technical Trunk Attribute Tab

Validate Set Effective Date For Create Technical Trunk
    [Tags]  REGRESSION
    network_page_resource.Verify Set Effective Date For Create Technical Trunk

Validate Set Status For Create Technical Trunk
    [Tags]  REGRESSION
    network_page_resource.Verify Set Status For Create Technical Trunk       ${ACTIVE STATUS}

Validate Set Activated Ports For Create Technical Trunk
    [Tags]  REGRESSION
    network_page_resource.Verify Set Activated Ports For Create Technical Trunk       30

Validate Set Commercial Trunk For Create Technical Trunk
    [Tags]  REGRESSION
    network_page_resource.Verify Set Carrier Commercial Trunk For Create Technical Trunk        ${COMMERCIAL TRUNK NAME}

Validate Set Direction For Create Technical Trunk
    [Tags]  REGRESSION
    network_page_resource.Verify Set Direction For Create Technical Trunk     Inbound

Validate Click Create New Technical Trunk Save Button
    [Tags]  REGRESSION
    network_page_resource.Verify Click Create New Technical Trunk Save Button

Validate Navigate to Carrier module For SLWO
    [Tags]    REGRESSION
    carrier_page_resource.Click on Home Icon and Select 'Carrier' From Main Menu

Validate Filter Carrier Grid For SLWO
    [Tags]    REGRESSION
    carrier_page_resource.Verify Filter Carriers Grid After Create        ${CARRIER NAME COLUMN NAME}     ${CREATED CARRIER NAME}

Validate Click Carriers Page First Row Inline Action Button For SLWO
    [Tags]    REGRESSION
    carrier_page_resource.Verify Click Carriers Page First Row Inline Action Button

Validate Select Item From Inline Action For SLWO
    [Tags]    REGRESSION
    carrier_page_resource.Verify Select Item From Inline Action           ${CARRIER RELATIONSHIPS INLINE ITEM}

Validate The Service Level Change Work Order Section Is Available
    [Tags]    REGRESSION
    carrier_page_resource.Verify The Service Level Change Work Order Section Is Available

Validate Expand Service Level Change Work Order Section
    [Tags]    REGRESSION
    carrier_page_resource.Verify Expand Service Level Change Work Order Section

Validate Click Add New Service Level Change Work Order Button
    [Tags]    REGRESSION
    carrier_page_resource.Verify Click Add New Service Level Change Work Order Button

Validate Select Service Level Commercial Trunk
    [Tags]    REGRESSION
    carrier_page_resource.Verify Select Service Level Commercial Trunk        ${COMMERCIAL TRUNK NAME}

Validate Click Service Level Commercial Trunk Next Button
    [Tags]    REGRESSION
    carrier_page_resource.Verify Click Next Button

Validate Select Service Level Country
    [Tags]    REGRESSION
    carrier_page_resource.Verify Select Service Level Country        India

Validate Click Service Level Country Next Button
    [Tags]    REGRESSION
    carrier_page_resource.Verify Click Next Button

Validate Set Service Level for Create Service Level
    [Tags]    REGRESSION
    carrier_page_resource.Verify Set Service Level    ${ROUTE CLASS}

Validate Select Service Level Destination
    [Tags]    REGRESSION
    carrier_page_resource.Verify Select Service Level Destination        Any

Validate Click Service Level Destination Next Button
    [Tags]    REGRESSION
    carrier_page_resource.Verify Click Next Button

Validate Select Create Service Level Change Work Order Grid First Row Checkbox
    [Tags]    REGRESSION
    carrier_page_resource.Verify Select Create Service Level Change Work Order Grid First Row Checkbox

Validate Click Submit Button
    [Tags]    REGRESSION
    carrier_page_resource.Verify Click Submit Button

Validate Filter Service Level Change Work Order Grid
    [Tags]    REGRESSION
    carrier_page_resource.Verify Filter Service Level Change Work Order Grid      ${COMMERCIAL TRUNK COLUMN NAME}     ${COMMERCIAL TRUNK NAME}

Validate Set Service Level Change Work Order Grid Status To Approved
    [Tags]    REGRESSION
    carrier_page_resource.Verify Set Service Level Change Work Order Grid Status      Approved

Validate Click Service Level Change Work Order Grid Save Changes Button For Approved
    [Tags]    REGRESSION
    carrier_page_resource.Verify Click Service Level Change Work Order Grid Save Changes Button

Validate Set Service Level Change Work Order Grid Status To Completed
    [Tags]    REGRESSION
    carrier_page_resource.Verify Set Service Level Change Work Order Grid Status      Completed

Validate Click Service Level Change Work Order Grid Save Changes Button For Completed
    [Tags]    REGRESSION
    carrier_page_resource.Verify Click Service Level Change Work Order Grid Save Changes Button

Validate Close Carrier Profile Tab
    [Tags]    REGRESSION
    carrier_page_resource.Verify Close Current Tab      ${CARRIER PROFILE TAB NAME}

Validate Click Carriers Page First Row Inline Action Button For SLA
    [Tags]    REGRESSION
    carrier_page_resource.Verify Click Carriers Page First Row Inline Action Button

Validate Select Item From Inline Action For SLA
    [Tags]    REGRESSION
    carrier_page_resource.Verify Select Item From Inline Action           ${CARRIER RELATIONSHIPS INLINE ITEM}

Validate Expand Service Level Assignments Section
    [Tags]    REGRESSION
    carrier_page_resource.Verify Expand Service Level Assignments Section

Validate Filter Service Level Assignments Grid
    [Tags]    REGRESSION
    carrier_page_resource.Verify Filter Service Level Assignments Grid      ${COMMERCIAL TRUNK COLUMN NAME}     ${COMMERCIAL TRUNK NAME}

Validate Filter Service Level Assignements Grid First Row Value
    [Tags]    REGRESSION
    carrier_page_resource.Verify Filter Service Level Assignements Grid First Row Value       Service Level       ${ROUTE CLASS}
