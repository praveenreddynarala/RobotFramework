*** Settings ***
Documentation     [TAENOSIS-996] A Test Suite With Set Of Tests To Verify Service Level Configuaration Create New SLWO For Custom RC And All Destinations

Resource          ../../../../Resources/common_resource.robot
Resource          ../../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../../Resources/ExternalDataSource/TestAutomation/carrier_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${ROUTE CLASS}                  ${EMPTY}
${COMMERCIAL TRUNK NAME}        ${EMPTY}
${CREATED CARRIER NAME}         ${EMPTY}

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

Validate Get Commercial Trunk Name
    [Tags]    REGRESSION
    ${COMMERCIAL TRUNK NAME} =    carrier_page_resource.Verify Get Trunk Name
    set suite variable      ${COMMERCIAL TRUNK NAME}

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

Validate Click Submit Button And Verify Error Message
    [Tags]    REGRESSION
    carrier_page_resource.Verify Click Submit Button And Verify Error Message