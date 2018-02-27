*** Settings ***
Documentation     A Test Suite With Set Of Tests To Verify Origin Set In The Contract

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/ixconnect_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

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

Validate Set Variable Name
    [Tags]    REGRESSION
    Verify Set Variable Name    EnableSettlementOriginRating

Validate Click Configuration Variables Grid Search Button
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Set Value In Current Value Column
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        1

Validate Close System Admin Window
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to Contracts module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate Click Manage Complex Contracts Button
    [Tags]    REGRESSION
    Verify Click Manage Complex Contracts Button

Validate Set Contract Name For Search
    [Tags]    REGRESSION
    ${CONTRACT NAME} =       Verify Get Created Contract Name
    Verify Set Contract Name For Search      ${CONTRACT NAME}

Validate Click Manage Complex Contracts Go Button
    [Tags]    REGRESSION
    Verify Click Manage Complex Contracts Go Button

Validate Click Contracts Grid First Row Contract Name
    [Tags]    REGRESSION
    Verify Click Contracts Grid First Row Contract Name

Velidate Click Detail Tab
    [Tags]    REGRESSION
    Verify Click Detail Tab

Validate Click First Row Add Product Button
    [Tags]    REGRESSION
    Verify Click First Row Add Product Button

Validate Set Aggregate Product Name
    [Tags]    REGRESSION
    Verify Set Aggregate Product Name By Switching Iframe       ${TEST DATA PREFIX}

Validate Set Aggregate Product Abbreviation
    [Tags]    REGRESSION
    Verify Set Aggregate Product Abbreviation By Switching Iframe       ${TEST DATA PREFIX}

Validate Click Create Aggregate Product Save Button
    [Tags]    REGRESSION
    Verify Click Create Aggregation Group Save Button By Switching Iframe

Validate Click Complex Contract Wizard Next Button For Aggregate Product Screen
    [Tags]    REGRESSION
    Verify Click Complex Contract Wizard Next Button By Switching Iframe

Validate Click Complex Contract Wizard Next Button To Go To Aggregation Rules Screen
    [Tags]    REGRESSION
    Verify Click Complex Contract Wizard Next Button By Switching Iframe

Validate Set Traffic Direction
    [Tags]    REGRESSION
    ixconnect_page_resource.Verify Set Traffic Direction By Switching Iframe       ${OUTBOUND DIRECTION}

Validate Check Traffic Type
    [Tags]    REGRESSION
    Verify Check Traffic Type By Switching Iframe          Hubbing

Validate Check Traffic Type For Bilateral
    [Tags]    REGRESSION
    Verify Check Traffic Type By Switching Iframe          Bilateral

Validate Check Rate Type
    [Tags]    REGRESSION
    Verify Check Rate Type By Switching Iframe             @{RATE TYPE LIST}

Validate Rate Type Checkboxes Are Disabled
    [Tags]    REGRESSION
    Verify Rate Type Checkboxes Are Disabled By Switching Iframe

Validate Select Aggregation Rules Service Tab
    [Tags]    REGRESSION
    Verify Select Aggregation Rules Tab By Switching Iframe     ${SERVICE TAB NAME}

Validate Move Available Service To Destination
    [Tags]    REGRESSION
    Verify Move Available Service To Destination By Switching Iframe

Validate Select Aggregation Rules Countries Tab
    [Tags]    REGRESSION
    Verify Select Aggregation Rules Tab By Switching Iframe     ${COUNTRIES TAB NAME}

Validate Move Available Countries To Destination For Aggregation Rules
    [Tags]    REGRESSION
    Verify Move Available Countries To Destination Deselecting First Item By Switching Iframe      ${CONFIGURE NUMBER PLAN COUNTRY}

Validate Select Aggregation Rules Commercial Trunk Tab
    [Tags]    REGRESSION
    Verify Select Aggregation Rules Tab By Switching Iframe    ${COMMERCIAL TRUNK TAB NAME}

Validate Move Available Commercial Trunk To Destination
    [Tags]    REGRESSION
    Verify Move Available Commercial Trunk To Destination By Switching Iframe

Validate Select Aggregation Rules Settlement Origin Tab
    [Tags]    REGRESSION
    Verify Select Aggregation Rules Tab By Switching Iframe    ${SETTLEMENT ORIGIN TAB NAME}

Validate Set Origin Set
    [Tags]    REGRESSION
    ${ORIGIN SET} =     Verify Get Origin Set Name
    ixconnect_page_resource.Verify Set Origin Set By Switching Iframe       ${ORIGIN SET}

Validate Move Available Settlement Origin To Destination
    [Tags]    REGRESSION
    Verify Move Available Settlement Origin To Destination By Switching Iframe

Validate Select Aggregation Rules Confirm Aggregation Rules Tab
    [Tags]    REGRESSION
    Verify Select Aggregation Rules Tab By Switching Iframe       ${CONFIRM AGGREGATION RULES TAB NAME}

Validate Select Aggregation Rules Grid First Row Checkbox
    [Tags]    REGRESSION
    Verify Select Aggregation Rules Grid First Row Checkbox By Switching Iframe

Validate Click Create Aggregation Rules Save Button
    [Tags]    REGRESSION
    Verify Click Create Aggregation Group Save Button By Switching Iframe

Validate Click Aggregate Rules Exit Button
    [Tags]    REGRESSION
    Verify Click Aggregate Rules Exit Button