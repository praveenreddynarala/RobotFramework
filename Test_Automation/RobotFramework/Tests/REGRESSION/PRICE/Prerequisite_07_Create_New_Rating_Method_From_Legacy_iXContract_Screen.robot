*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Create New Rating Method Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/ixconnect_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${ORIGIN SET}           ${EMPTY}

*** Test Cases ***
Validate Navigate to Business Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Business Admin' From Main Menu

Validate Get Origin Set Name
    [Tags]    REGRESSION
    ${ORIGIN SET} =     Verify Get Origin Set Name
    set suite variable      ${ORIGIN SET}

Validate Expand Rating Menu
    [Tags]    REGRESSION
    Verify Expand Rating Menu

Validate Click Rating Method Submenu
    [Tags]    REGRESSION
    Verify Click Rating Method Submenu

Validate Switch To IXConnect
    [Tags]    REGRESSION
    Verify Switch To IXConnect

Validate Switch To List Frame For Create Rating Method
    [Tags]    REGRESSION
    Verify Switch To List Frame

Validate Click New Rating Method Button
    [Tags]    REGRESSION
    Verify Click New Rating Method Button

Validate Switch To Default Content
    [Tags]    REGRESSION
    Verify Switch To Default Content

Validate Switch To Detail Frame For Create Rating Method
    [Tags]    REGRESSION
    Verify Switch To Detail Frame

Validate Set New Rating Method Name
    [Tags]    REGRESSION
    Verify Set New Rating Method Name       ${TEST DATA PREFIX}

Validate Set New Rating Method Abbreviation
    [Tags]    REGRESSION
    Verify Set New Rating Method Abbreviation       ${TEST DATA PREFIX}

Validate Set Minimum Value
    [Tags]    REGRESSION
    Verify Set Minimum Value        ${MINIMUM VALUE}

Validate Set Initial Rounding Value
    [Tags]    REGRESSION
    Verify Set Initial Rounding Value       ${INITIAL ROUNDING VALUE}

Validate Set Additional Rounding Value
    [Tags]    REGRESSION
    Verify Set Additional Rounding Value        ${ADDITIONAL ROUNDING VALUE}

Validate Set Maximum Value
    [Tags]    REGRESSION
    Verify Set Maximum Value        ${MAXIMUM VALUE}

Validate Set Measure Adjustment Value
    [Tags]    REGRESSION
    Verify Set Measure Adjustment Value     ${MEASURE ADJUSTMENT VALUE}

Validate Select Rating Dimensions Subtab
    [Tags]    REGRESSION
    Verify Select Rating Dimensions Subtab

Validate Click Date And Time Value Button
    [Tags]    REGRESSION
    Verify Click Date And Time Value Button

Validate Switch To IXConnect For Selecting Rate Dimension Template
    [Tags]    REGRESSION
    Verify Switch To IXConnect

Validate Select Rate Dimension Template
    [Tags]    REGRESSION
    Verify Select Rate Dimension Template       ${RATE DIMENSION TEMPLATE}

Validate Switch To Previous Window
    [Tags]    REGRESSION
    Verify Switch To Previous Window

Validate Switch To Detail Frame After Selecting Rate Dimension Template
    [Tags]    REGRESSION
    Verify Switch To Detail Frame

Validate Select Band Rates Subtab
    [Tags]    REGRESSION
    Verify Select Band Rates Subtab

Validate Select Automatically Assign Band Checkbox
    [Tags]    REGRESSION
    Verify Select Automatically Assign Band Checkbox

Validate Select Origin Set Subtab
    [Tags]    REGRESSION
    Verify Select Origin Set Subtab

Validate Click Origin Set Value Button
    [Tags]    REGRESSION
    Verify Click Origin Set Value Button

Validate Switch To IXConnect For Selecting Origin Set
    [Tags]    REGRESSION
    Verify Switch To IXConnect

Validate Set Origin Set Letters
    [Tags]    REGRESSION
    Verify Set Origin Set Letters       ${ORIGIN SET}

Validate Click Origin Set Go Button
    [Tags]    REGRESSION
    Verify Click Go Button

Validate Select Origin Set
    [Tags]    REGRESSION
    Verify Select Rate Dimension Template       ${ORIGIN SET}

Validate Switch To Previous Window After Selecting Origin Set
    [Tags]    REGRESSION
    Verify Switch To Previous Window

Validate Switch To Detail Frame After Selecting Origin Set
    [Tags]    REGRESSION
    Verify Switch To Detail Frame

Validate Click New Rating Method Save Button
    [Tags]    REGRESSION
    Verify Click New Rating Method Save Button

Validate Switch To Default Content After Saving
    [Tags]    REGRESSION
    Verify Switch To Default Content

Validate Close IxConnect Window
    [Tags]    REGRESSION
    Verify Close IxConnect Window       ${True}