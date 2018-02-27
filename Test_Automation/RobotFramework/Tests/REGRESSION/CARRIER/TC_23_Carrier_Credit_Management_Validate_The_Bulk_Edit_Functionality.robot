*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate The Bulk Edit Functionality In Credit Management

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

Validate Select Credit Management Grid Row Checkbox
    [Tags]    REGRESSION
    Verify Select Credit Management Grid Row Checkbox       ${CARRIER NAME}

Validate Click Credit Management Bulk Edit Button
    [Tags]    REGRESSION
    Verify Click Credit Management Bulk Edit Button

Validate Set Trunk Provisioning Status
    [Tags]    REGRESSION
    Verify Set Trunk Provisioning Status        ${CARRIER ACTIVE PROVISIONING STATUS}

Validate Click Bulk Edit Submit Button
    [Tags]    REGRESSION
    Verify Click Bulk Edit Submit Button

Validate Click Save Chnages Button
    [Tags]    REGRESSION
    Verify Click Save Changes Button