*** Settings ***
Documentation     [TAENOSIS-873] A Test Suite With Set Of Tests To Validate Search Option For Reference Price Screen Filters

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/price_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Price module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Navigate to Price Policies Tab
    [Tags]    REGRESSION
    Verify Select Price Policies Tab

Validate Click Reference Prices Button
    [Tags]    REGRESSION
    Verify Click Reference Prices Button

Validate The Price Policy Filter Option Is Available In Price Reference Prices Page
    [Tags]    REGRESSION
    Verify The Specific Filter Option Is Available In Price Reference Prices Page       Price Policy

Validate The Status Filter Option Is Available In Price Reference Prices Page
    [Tags]    REGRESSION
    Verify The Specific Filter Option Is Available In Price Reference Prices Page       Status

Validate The Destination Filter Option Is Available In Price Reference Prices Page
    [Tags]    REGRESSION
    Verify The Specific Filter Option Is Available In Price Reference Prices Page       Destination

Validate The Country Filter Option Is Available In Price Reference Prices Page
    [Tags]    REGRESSION
    Verify The Specific Filter Option Is Available In Price Reference Prices Page       Country

Validate The Trade Destination Category Filter Option Is Available In Price Reference Prices Page
    [Tags]    REGRESSION
    Verify The Specific Filter Option Is Available In Price Reference Prices Page       Trade Destination Category

Validate The Region Filter Option Is Available In Price Reference Prices Page
    [Tags]    REGRESSION
    Verify The Specific Filter Option Is Available In Price Reference Prices Page       Region

Validate The Select Date Filter Option Is Available In Price Reference Prices Page
    [Tags]    REGRESSION
    Verify The Specific Filter Option Is Available In Price Reference Prices Page       Select Date

Validate Select Price Policy For Reference Prices Search
    [Tags]    REGRESSION
    ${CREATED PRICE POLICY NAME} =      Verify Get Created Cost Policy Name
    Verify Select Price Policy For Reference Prices Search      ${CREATED PRICE POLICY NAME}

Validate Select Status For Reference Prices Search
    [Tags]    REGRESSION
    Verify Select Status For Reference Prices Search        @{REFERENCE PRICE STATUS LIST FOR REJECT}

Validate Set Reference Prices Destination For Search
    [Tags]    REGRESSION
    Verify Set Reference Prices Destination For Search              ${TEST DATA PREFIX}

Validate Select Country For Reference Prices Search
    [Tags]    REGRESSION
    ${COUNTRY NAME} =      Verify Get Country Name
    Verify Select Country For Reference Prices Search      ${COUNTRY NAME}

Validate Select Trade Destination Category For Reference Prices Search
    [Tags]    REGRESSION
    Verify Select Trade Destination Category For Reference Prices Search

Validate Select Region For Reference Prices Search
    [Tags]    REGRESSION
    ${CREATED REGION NAME} =      Verify Get Region Name
    Verify Select Region For Reference Prices Search      ${CREATED REGION NAME}