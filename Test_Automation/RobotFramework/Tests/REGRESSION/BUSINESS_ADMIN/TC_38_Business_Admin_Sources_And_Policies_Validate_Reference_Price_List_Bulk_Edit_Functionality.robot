*** Settings ***
Documentation     A Test Suite With Set Of Tests For Business Admin Sources & Policies Validate Reference Price List Bulk Edit Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/business_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${SOURCE NAME}      ${EMPTY}

*** Test Cases ***
Validate Navigate to Business Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Business Admin' From Main Menu

Validate Get Source Name
    [Tags]    REGRESSION
    ${SOURCE NAME} =        Verify Get Source Name
    set suite variable      ${SOURCE NAME}

Validate Expand Trading Menu
    [Tags]    REGRESSION
    Verify Expand Trading Menu

Validate Click Source And Polices Submenu
    [Tags]    REGRESSION
    Verify Click Source And Policies Submenu

Validate Set Source Type For Search
    [Tags]    REGRESSION
    Verify Set Source Type For Search       ${REFERENCE PRICE LIST SOURCE TYPE}

Validate Set Source For Search With Parameter
    [Tags]    REGRESSION
    Verify Set Source For Search With Parameter     ${SOURCE NAME}

Validate Click Sources Search Button
    [Tags]    REGRESSION
    Verify Click Sources Search Button

Validate Select Source Grid Row Checkbox
    [Tags]    REGRESSION
    Verify Select Source Grid Row Checkbox     ${SOURCE NAME}

Validate Click Bulk Edit Button
    [Tags]    REGRESSION
    Verify Click Bulk Edit Button

Validate Set Bulk Edit Call Type
    [Tags]    REGRESSION
    Verify Set Bulk Edit Call Type                      ${REFERENCE PRICE LIST BULK EDIT CALL TYPE}

Validate Set Bulk Edit Route Class
    [Tags]    REGRESSION
    Verify Set Bulk Edit Route Class                    ${REFERENCE PRICE LIST BULK EDIT ROUTE CLASS}

Verify Set Bulk Edit Reference Pricing Policy
    [Tags]    REGRESSION
    Verify Set Bulk Edit Reference Pricing Policy       ${REFERENCE PRICE LIST BULK EDIT REFERENCE PRICING POLICY}

Verify Set Bulk Edit Az Min Selection Threshold
    [Tags]    REGRESSION
    Verify Set Bulk Edit Az Min Selection Threshold     ${REFERENCE PRICE LIST BULK EDIT AZ MIN SELECTION THRESHOLD}

Verify Check Bulk Edit Compound Rpl Checkbox
    [Tags]    REGRESSION
    Verify Check Bulk Edit Compound Rpl Checkbox        ${REFERENCE PRICE LIST BULK EDIT COMPOUND RPL}

Validate Set Bulk Edit Note
    [Tags]    REGRESSION
    Verify Set Bulk Edit Note                   ${TEST DATA PREFIX}

Validate Click Bulk Edit Submit Button
    [Tags]    REGRESSION
    Verify Click Bulk Edit Submit Button

Validate Click Save Changes Button
    [Tags]    REGRESSION
    Verify Click Save Changes Button

Validate Details Of Edited Sources Grid Row
    [Tags]    REGRESSION
    Verify Details Of Edited Sources Grid Row      ${SOURCE NAME}

Verify Source Policies Grid Compound Rpl Checkbox Status
    [Tags]    REGRESSION
    Verify Source Policies Grid Compound Rpl Checkbox Status        ${REFERENCE PRICE LIST BULK EDIT COMPOUND RPL}       ${SOURCE NAME}