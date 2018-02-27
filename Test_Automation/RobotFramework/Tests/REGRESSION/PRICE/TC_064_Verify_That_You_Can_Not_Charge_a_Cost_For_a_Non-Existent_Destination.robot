*** Settings ***
Documentation     A Test Suite With Set Of Tests To Verify That You Can Not Charge a Cost For a Non-Existent Destination

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/price_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CALL TYPE}        ${EMPTY}

*** Test Cases ***
Validate Navigate to Price module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Navigate to Cost Policies Tab
    [Tags]    REGRESSION
    Click on Cost Policies Tab

Validate Get Call Type For First Price Policy
    [Tags]    REGRESSION
    ${CALL TYPE} =   Verify Get Call Type
    log  ${CALL TYPE}
    set suite variable      ${CALL TYPE}

Validate Click Create New Cost Policy For First Cost Policy
    [Tags]    REGRESSION
    Verify Click Create New Cost Policy

Validate Set Cost Policy Name For First Cost Policy
    [Tags]    REGRESSION
    Verify Set Cost Policy Name     ${TEST DATA PREFIX}

Validate Set Abbreviation For First Cost Policy
    [Tags]    REGRESSION
    Verify Set Cost Policy Abbreviation

Validate Set Cost Policy Status For First Cost Policy
    [Tags]    REGRESSION
    Verify Set Cost Policy Status       ${COST POLICY ACTIVE STATUS}

Validate Set Call Type For First Cost Policy
    [Tags]    REGRESSION
    Verify Set Cost Policy Call Type        ${CALL TYPE}

Validate Set Route Class For First Cost Policy
    [Tags]    REGRESSION
    ${ROUTE CLASS} =    Verify Get Route Class
    Verify Set Cost Policy Route Class      ${ROUTE CLASS}

Validate Click Create policy Save Button For First Cost Policy
    [Tags]    REGRESSION
    Verify Click Create Cost Policy Save Button

Validate Get Created Cost Policy Name
    [Tags]    REGRESSION
    Verify Get Created Cost Policy Name

Validate Filter Cost Policy Grid With Created New Cost Policy
    [Tags]    REGRESSION
    Verify Filter Cost Policy Grid     ${COST POLICY COLUMN NAME}

Validate Click Cost Policy Grid Inline Action Button
    [Tags]    REGRESSION
    Verify Click Cost Policy Grid Inline Action Button

Validate Click Cost Policy Grid Inline Item
    [Tags]    REGRESSION
    Verify Click Cost Policy Grid Inline Item       ${COSTS INLINE ITEM}

Validate Click Failed Status Red Button
    [Tags]    REGRESSION
    Verify Click Failed Status Red Button

Validate Get Completed Jobs Count
    [Tags]    REGRESSION
    Verify Get Completed Jobs Count

Validate Close Jobs Tab
    [Tags]    REGRESSION
    price_page_resource.Verify Close Current Tab        ${JOBS TAB NAME}

Validate Click Upload Costs Button
    [Tags]    REGRESSION
    Verify Click Upload Costs Button

Valdiate Click Costs Browse Button
    [Tags]    REGRESSION
    Verify Click Costs Browse Button

Valdiate Select The File To Be Uploaded
    [Tags]    REGRESSION
    Verify Select The File To Be Uploaded       ${TEMPLATE PATH}/${CALL TYPE}/${TEMPLATE WITH INVALID DESTINATION}

Validate Click Upload Button
    [Tags]    REGRESSION
    price_page_resource.Verify Click Upload Button

Validate Click Failed Status Red Button After Upload
    [Tags]    REGRESSION
    Verify Click Failed Status Red Button

Validate Compare Completed Jobs Count After Upload
    [Tags]    REGRESSION
    Verify Compare Completed Jobs Count After Upload

Validate Set Jobs Grid Settings
    [Tags]    REGRESSION
    Verify Set Jobs Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Sort Registry Date Column in Descending Order
    [Tags]    REGRESSION
    Verify Sort Registry Date Column In Descending Order      ${REGISTRY DATE COLUMN NAME}

Validate Click Failed Upload Info Icon
    [Tags]    REGRESSION
    Verify Click Failed Upload Info Icon

Validate Compare Failed Error Message
    [Tags]    REGRESSION
    Verify Failed Upload Info       ${ERROR MESSAGE FOR INVALID DESTINATION}

Validate Close Current Pop Up
    [Tags]    REGRESSION
    price_page_resource.Verify Close Current Pop Up     ${ADDITIONAL INFO POP UP NAME}

Validate Close Jobs Tab After Upload
    [Tags]    REGRESSION
    price_page_resource.Verify Close Job Tab        ${JOB TAB NAME}
