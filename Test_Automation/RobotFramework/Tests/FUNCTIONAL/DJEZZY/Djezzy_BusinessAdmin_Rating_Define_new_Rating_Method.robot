*** Settings ***
Documentation     A Test Suite With Set Of Tests For Djezzy Business Admin Rating To Define New Rating Method

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/ixconnect_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Business Admin Module
    [Tags]    FUNCTIONAL
    click on home icon and select 'business admin' from main menu

Validate Expand Rating Menu
    [Tags]    FUNCTIONAL
    Verify Expand Rating Menu

Validate Click Rating Method Submenu
    [Tags]    FUNCTIONAL
    Verify Click Rating Method Submenu

Validate Switch To IXConnect
    [Tags]    FUNCTIONAL
    Verify Switch To IXConnect

Validate Switch To List Frame For Create Rating Method
    [Tags]    FUNCTIONAL
    Verify Switch To List Frame

Validate Click New Rating Method Button
    [Tags]    FUNCTIONAL
    Verify Click New Rating Method Button

Validate Switch To Default Content
    [Tags]    FUNCTIONAL
    Verify Switch To Default Content

Validate Switch To Detail Frame For Create Rating Method
    [Tags]    FUNCTIONAL
    Verify Switch To Detail Frame

Validate Set New Rating Method Name
    [Tags]    FUNCTIONAL
    Verify Set New Rating Method Name       ${TEST DATA PREFIX}

Validate Set New Rating Method Abbreviation
    [Tags]    FUNCTIONAL
    Verify Set New Rating Method Abbreviation       ${TEST DATA PREFIX}

Validate Set Minimum Value
    [Tags]    FUNCTIONAL
    Verify Set Minimum Value        ${MINIMUM VALUE}

Validate Set Initial Rounding Value
    [Tags]    FUNCTIONAL
    Verify Set Initial Rounding Value       ${INITIAL ROUNDING VALUE}

Validate Set Additional Rounding Value
    [Tags]    FUNCTIONAL
    Verify Set Additional Rounding Value        ${ADDITIONAL ROUNDING VALUE}

Validate Set Maximum Value
    [Tags]    FUNCTIONAL
    Verify Set Maximum Value        ${MAXIMUM VALUE}

Validate Set Measure Adjustment Value
    [Tags]    FUNCTIONAL
    Verify Set Measure Adjustment Value     ${MEASURE ADJUSTMENT VALUE}

Validate Select Rating Dimensions Subtab
    [Tags]    FUNCTIONAL
    Verify Select Rating Dimensions Subtab

Validate Click Date And Time Value Button
    [Tags]    FUNCTIONAL
    Verify Click Date And Time Value Button

Validate Switch To IXConnect For Selecting Rate Dimension Template
    [Tags]    FUNCTIONAL
    Verify Switch To IXConnect

Validate Select Rate Dimension Template
    [Tags]    FUNCTIONAL
    Verify Select Rate Dimension Template       ${RATE DIMENSION TEMPLATE}

Validate Switch To Previous Window
    [Tags]    FUNCTIONAL
    Verify Switch To Previous Window

Validate Switch To Detail Frame After Selecting Rate Dimension Template
    [Tags]    FUNCTIONAL
    Verify Switch To Detail Frame

Validate Select Band Rates Subtab
    [Tags]    FUNCTIONAL
    Verify Select Band Rates Subtab

Validate Select Automatically Assign Band Checkbox
    [Tags]    FUNCTIONAL
    Verify Select Automatically Assign Band Checkbox

Validate Click New Rating Method Save Button
    [Tags]    FUNCTIONAL
    Verify Click New Rating Method Save Button

Validate Switch To Default Content After Saving
    [Tags]    FUNCTIONAL
    Verify Switch To Default Content

Validate Switch To List Frame After Saving
    [Tags]    FUNCTIONAL
    Verify Switch To List Frame

Validate Set Letters For Created Rating Method Search
    [Tags]    FUNCTIONAL
    Verify Set Letters For Created Rating Method Search

Validate Click Go Button
    [Tags]    FUNCTIONAL
    Verify Click Go Button

Validate Expand New Rating Method Structure
    [Tags]    FUNCTIONAL
    Verify Expand New Rating Method Structure

Validate Created Rating Method Is Available
    [Tags]    FUNCTIONAL
    Verify Created Rating Method Is Available

Validate Select Created Rating Method
    [Tags]    FUNCTIONAL
    Verify Select Created Rating Method

Validate Switch To Default Content After Selecting
    [Tags]    FUNCTIONAL
    Verify Switch To Default Content

Validate Switch To Detail Frame After Selecting
    [Tags]    FUNCTIONAL
    Verify Switch To Detail Frame

Validate Click Rating Method Delete Button
    [Tags]    FUNCTIONAL
    Verify Click Rating Method Delete Button

Validate Close IxConnect Window
    [Tags]    FUNCTIONAL
    Verify Close IxConnect Window

Validate Switch To Previous Window After Close IXConnect
    [Tags]    FUNCTIONAL
    Verify Switch To Previous Window