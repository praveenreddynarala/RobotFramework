*** Settings ***
Documentation    [TAENOSIS-993] A Test Suite With Set Of Tests To Verify Save Button In iXAdmin Field Alias Screen Should be Visible And Functional

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/audit_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixadmin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/ixadmin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${FIELD ALIAS VALUE}        ${EMPTY}

*** Test Cases ***
Validate Navigate to IXAudit Module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Audit' From Main Menu

Validate Navigate to IXAdmin module
    [Tags]    REGRESSION
    Go To IXAdmin Screen With Specific Url

Validate Click Field Alias Submenu
    [Tags]    REGRESSION
    Verify Click Field Alias Submenu

Validate Click Field Alias Go Button
    [Tags]    REGRESSION
    Verify Click Field Alias Go Button

Validate Field Alias Save Button Displayed
    [Tags]    REGRESSION
    Verify Field Alias Save Button Displayed

Validate Field Alias Cancel Button Displayed
    [Tags]    REGRESSION
    Verify Field Alias Cancel Button Displayed

Validate Get Field Alias Grid First Row Field Alias Value
    [Tags]    REGRESSION
    ${FIELD ALIAS VALUE} =      Verify Get Field Alias Grid First Row Field Alias Value
    set suite variable      ${FIELD ALIAS VALUE}

Validate Set Field Alias Grid First Row Field Alias Value
    [Tags]    REGRESSION
    Verify Set Field Alias Grid First Row Field Alias Value     TEST_FIELD_ALIAS

Validate Click Field Alias Save Button
    [Tags]    REGRESSION
    Verify Click Field Alias Save Button

Validate Field Alias Grid First Row Value
    [Tags]    REGRESSION
    Verify Field Alias Grid First Row Value     TEST_FIELD_ALIAS

Validate ReSet Field Alias Grid First Row Field Alias Value
    [Tags]    REGRESSION
    Verify Set Field Alias Grid First Row Field Alias Value     ${FIELD ALIAS VALUE}

Validate Click Field Alias Save Button After Reset
    [Tags]    REGRESSION
    Verify Click Field Alias Save Button

Validate Field Alias Grid First Row Value After Reset
    [Tags]    REGRESSION
    Verify Field Alias Grid First Row Value     ${FIELD ALIAS VALUE}

Validate Set Field Alias Grid First Row Field Alias Value For Cancel
    [Tags]    REGRESSION
    Verify Set Field Alias Grid First Row Field Alias Value     ${TEST DATA PREFIX}

Validate Click Field Alias Cancel Button
    [Tags]    REGRESSION
    Verify Click Field Alias Cancel Button

Validate Field Alias Grid First Row Value After Cancel
    [Tags]    REGRESSION
    Verify Field Alias Grid First Row Value     ${FIELD ALIAS VALUE}

Validate Click Exit Button
    [Tags]    REGRESSION
    Verify Click Exit Button