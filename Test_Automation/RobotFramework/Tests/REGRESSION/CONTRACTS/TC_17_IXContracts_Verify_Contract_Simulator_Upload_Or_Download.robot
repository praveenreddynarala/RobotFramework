*** Settings ***
Documentation     A Test Suite With Set Of Tests To Verify Contract Simulator Upload Or Download

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/ixconnect_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Contracts module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate Click Contract Simulator Button
    [Tags]    REGRESSION
    Verify Click Contract Simulator Button

Validate Exported File Name Search Field On Contract Simulator Page Is Available
    [Tags]    REGRESSION
    Verify Specific Search Field On Contract Simulator Page Is Available        ${EXPORTED FILE NAME FIELD NAME}

Validate Company Search Field On Contract Simulator Page Is Available
    [Tags]    REGRESSION
    Verify Specific Search Field On Contract Simulator Page Is Available        ${COMPANY FIELD NAME}

Validate Carrier Search Field On Contract Simulator Page Is Available
    [Tags]    REGRESSION
    Verify Specific Search Field On Contract Simulator Page Is Available        ${CARRIER FIELD NAME}

Validate Contract Type Search Field On Contract Simulator Page Is Available
    [Tags]    REGRESSION
    Verify Specific Search Field On Contract Simulator Page Is Available        ${CONTRACT TYPE FIELD NAME}

Validate Status Search Field On Contract Simulator Page Is Available
    [Tags]    REGRESSION
    Verify Specific Search Field On Contract Simulator Page Is Available        ${STATUS FIELD NAME}

Validate Template Search Field On Contract Simulator Page Is Available
    [Tags]    REGRESSION
    Verify Specific Search Field On Contract Simulator Page Is Available        ${TEMPLATE FIELD NAME}

Validate Cost Countries Search Field On Contract Simulator Page Is Available
    [Tags]    REGRESSION
    Verify Specific Search Field On Contract Simulator Page Is Available        ${COST COUNTRIES FIELD NAME}

Validate Revenue Countries Search Field On Contract Simulator Page Is Available
    [Tags]    REGRESSION
    Verify Specific Search Field On Contract Simulator Page Is Available        ${REVENUE COUNTRIES FIELD NAME}

Validate Set Contract Simulator Status For Search
    [Tags]    REGRESSION
    Verify Set Contract Simulator Status For Search     @{STATUS LIST FOR SEARCH}

Validate Click Contract Simulator Search Button
    [Tags]    REGRESSION
    Verify Click Contract Simulator Search Button

Validate Click Contract Simulator Download Button
    [Tags]    REGRESSION
    Verify Click Contract Simulator Download Button

Validate Company Field On Download New Simulator Pop Up Is Available
    [Tags]    REGRESSION
    Verify Specific Field On Download New Simulator Pop Up Is Available     ${COMPANY FIELD NAME}       ${FALSE}

Validate Carrier Field On Download New Simulator Pop Up Is Available
    [Tags]    REGRESSION
    Verify Specific Field On Download New Simulator Pop Up Is Available     ${CARRIER FIELD NAME}       ${FALSE}

Validate Contract Type Field On Download New Simulator Pop Up Is Available
    [Tags]    REGRESSION
    Verify Specific Field On Download New Simulator Pop Up Is Available     ${CONTRACT TYPE FIELD NAME}     ${FALSE}

Validate Previous Contract Field On Download New Simulator Pop Up Is Available
    [Tags]    REGRESSION
    Verify Specific Field On Download New Simulator Pop Up Is Available     ${PREVIOUS CONTRCT FIELD NAME}      ${FALSE}

Validate Traffic Statr Date Field On Download New Simulator Pop Up Is Available
    [Tags]    REGRESSION
    Verify Specific Field On Download New Simulator Pop Up Is Available     ${TRAFFIC START DATE FIELD NAME}        ${TRUE}

Validate Traffic End Date Field On Download New Simulator Pop Up Is Available
    [Tags]    REGRESSION
    Verify Specific Field On Download New Simulator Pop Up Is Available     ${TRAFFIC END DATE FIELD NAME}      ${TRUE}

Validate Templete Field On Download New Simulator Pop Up Is Available
    [Tags]    REGRESSION
    Verify Specific Field On Download New Simulator Pop Up Is Available     ${TEMPLATE FIELD NAME}      ${FALSE}

Validate Cost Country Field On Download New Simulator Pop Up Is Available
    [Tags]    REGRESSION
    Verify Specific Field On Download New Simulator Pop Up Is Available     ${COST COUNTRY FIELD NAME}      ${TRUE}

Validate Set Download New Simulator Carrier
    [Tags]    REGRESSION
    ${CARRIER NAME} =       Verify Get Created Carrier Name
    Verify Set Download New Simulator Carrier       ${CARRIER NAME}

Validate Set Download New Simulator Revenue Country
    [Tags]    REGRESSION
    Verify Set Download New Simulator Revenue Country       @{COUNTRY NAME LIST}

Validate Click Download New Simulator Download Button
    [Tags]    REGRESSION
    Verify Click Download New Simulator Download Button

Validate Click Contract Simulator Exit Button
    [Tags]    REGRESSION
    Verify Click Aggregate Rules Exit Button