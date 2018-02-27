*** Settings ***
Documentation     A Test Suite With Set Of Tests For Business Admin Sources and Policies To Validate Vendor Source Bulk Edit Functionality

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

Validate Click Source And Policies Submenu
    [Tags]    REGRESSION
    Verify Click Source And Policies Submenu

Validate Set Source Type For Search
    [Tags]    REGRESSION
    Verify Set Source Type For Search       ${VENDOR SOURCE TYPE}

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
    Verify Set Bulk Edit Call Type      ${BULK EDIT CALL TYPE}

Validate Set Bulk Edit Note
    [Tags]    REGRESSION
    Verify Set Bulk Edit Note       ${TEST DATA PREFIX}

Validate Click Bulk Edit Submit Button
    [Tags]    REGRESSION
    Verify Click Bulk Edit Submit Button

Validate Click Source Grid Save Changes Button
    [Tags]    REGRESSION
    Verify Click Source Grid Save Changes Button