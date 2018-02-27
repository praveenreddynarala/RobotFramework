*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate The Create Carrier Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/carrier_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${COMPANY NAME}     ${EMPTY}

*** Test Cases ***
Validate Navigate to Carrier module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Carrier' From Main Menu

Validate Click Create Carrier Button
    [Tags]    REGRESSION
    Verify Click Create Carrier Button

Validate Set Carrier Name
    [Tags]    REGRESSION
    Verify Set Carrier Name             ${TEST DATA PREFIX}

Validate Set Carrier Abbreviation
    [Tags]    REGRESSION
    Verify Set Carrier Abbreviation     ${TEST DATA PREFIX}

Validate Set Carrier Legal Name
    [Tags]    REGRESSION
    Verify Set Carrier Legal Name       ${TEST DATA PREFIX}

Validate Set Status
    [Tags]    REGRESSION
    Verify Set Status                   ${ACTIVE STATUS}

Validate Get Company Name
    [Tags]    REGRESSION
    ${COMPANY NAME} =     Verify Get Company
    log  ${COMPANY NAME}
    set suite variable      ${COMPANY NAME}

Validate Set Company
    [Tags]    REGRESSION
    Verify Set Company                  ${COMPANY NAME}

Validate Set Carrier Number
    [Tags]    REGRESSION
    Verify Set Carrier Number

Validate Click Create Carrier Save Button
    [Tags]    REGRESSION
    Verify Click Create Carrier Save Button

Validate Close Carrier Profile Tab
    [Tags]    REGRESSION
    Verify Close Current Tab            ${CARRIER PROFILE TAB NAME}
