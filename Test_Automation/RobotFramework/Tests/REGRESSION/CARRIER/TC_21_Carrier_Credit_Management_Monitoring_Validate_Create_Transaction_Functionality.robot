*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Monitoring Create Transaction Functionality In Credit Management

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/carrier_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CARRIER NAME}           ${EMPTY}

*** Test Cases ***
Validate Navigate to Carrier module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Carrier' From Main Menu

Validate Get Created Carrier Name
    [Tags]    REGRESSION
    ${CARRIER NAME} =       Verify Get Created Carrier Name
    set suite variable      ${CARRIER NAME}

Validate Select Credit Management Tab
    [Tags]    REGRESSION
    Click On Credit Management Tab

Validate Filter Credit Management Grid
    [Tags]    REGRESSION
    Verify Filter Credit Management Grid        ${CARRIER NAME COLUMN NAME}     ${CARRIER NAME}

Validate Click Credit Management Page Inline Action Button
    [Tags]    REGRESSION
    Verify Click Credit Management Page Inline Action Button        ${CARRIER NAME}

Validate Select Credit Profile inline Item
    [Tags]    REGRESSION
    Verify Select Inline Action Item        ${CREDIT PROFILE INLINE ITEM}

Validate Click Monitoring Details Tab
    [Tags]    REGRESSION
    Verify Click Monitoring Details Tab

Validate Click Add New Transaction Button
    [Tags]    REGRESSION
    Verify Click Add New Transaction Button

Validate Set Transaction Date
    [Tags]    REGRESSION
    Verify Set Transaction Date     ${TRANSACTION DATE}

Validate Set Transaction Id
    [Tags]    REGRESSION
    Verify Set Transaction Id

Validate Set Transaction Type
    [Tags]    REGRESSION
    Verify Set Transaction Type     ${TRANSACTION TYPE}

Validate Set Transaction Account Type
    [Tags]    REGRESSION
    Verify Set Transaction Account Type     ${TRANSACTION ACCOUNT TYPE}

Validate Set Transaction Account
    [Tags]    REGRESSION
    Verify Set Transaction Account      ${TRANSACTION ACCOUNT}

Validate Set Transaction Amount
    [Tags]    REGRESSION
    Verify Set Transaction Amount       ${TRANSACTION AMOUNT}

Validate Set Transaction Currency
    [Tags]    REGRESSION
    Verify Set Transaction Currency     ${TRANSACTION CURRENCY}

Validate Set External Reference 1
    [Tags]    REGRESSION
    Verify Set External Reference 1     ${EXTERNAL REFERENCE 1}

Valdiate Set External Reference 2
    [Tags]    REGRESSION
    Verify Set External Reference 2     ${EXTERNAL REFERENCE 2}

Validate Set Statement Begin Date
    [Tags]    REGRESSION
    Verify Set Statement Begin Date     ${STATEMENT BEGIN DATE}

Validate Set Statement End Date
    [Tags]    REGRESSION
    Verify Set Statement End Date       ${STATEMENT END DATE}

Validate Click Add New Transaction Save Button
    [Tags]    REGRESSION
    Verify Click Add New Transaction Save Button

Validate Filter Transaction History Grid
    [Tags]    REGRESSION
    Verify Filter Transaction History Grid      ${TRANSACTION ID COLUMN NAME}

Validate Get Transaction History Grid Row Details
    [Tags]    REGRESSION
    Verify Get Transaction History Grid Row Details

Validate Transaction Type After Create
    [Tags]    REGRESSION
    Verify Transaction Type After Create        ${TRANSACTION TYPE}

Validate Transaction Currency After Create
    [Tags]    REGRESSION
    Verify Transaction Currency After Create        ${TRANSACTION CURRENCY}

Validate Transaction Amount After Create
    [Tags]    REGRESSION
    Verify Transaction Amount After Create      ${TRANSACTION AMOUNT}

Validate Transaction Id After Create
    [Tags]    REGRESSION
    Verify Transaction Id After Create

Validate Transaction Date After Create
    [Tags]    REGRESSION
    Verify Transaction Date After Create        ${TRANSACTION DATE}