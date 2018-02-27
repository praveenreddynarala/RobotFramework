*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Create Carrier And Rate Plan Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/carrier_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${COMPANY NAME FOR CREATE}      ${EMPTY}
${TRUNK NAME}                   ${EMPTY}
${CALL TYPE}                    ${EMPTY}

*** Test Cases ***
Validate Navigate to Carrier module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Carrier' From Main Menu

Validate Click Create Carrier Button
    [Tags]    REGRESSION
    Verify Click Create Carrier Button

Validate Set Carrier Name
    [Tags]    REGRESSION
    Verify Set Carrier Name        ${TEST DATA PREFIX}

Validate Set Carrier Abbreviation
    [Tags]    REGRESSION
    Verify Set Carrier Abbreviation     ${TEST DATA PREFIX}

Validate Set Status
    [Tags]    REGRESSION
    Verify Set Status                   ${ACTIVE STATUS}

Validate Get Company
    [Tags]    REGRESSION
    ${COMPANY NAME FOR CREATE} =    Verify Get Company
    set suite variable      ${COMPANY NAME FOR CREATE}

Validate Set Company
    [Tags]    REGRESSION
    Verify Set Company                  ${COMPANY NAME FOR CREATE}

Validate Set Carrier Number
    [Tags]    REGRESSION
    Verify Set Carrier Number

Validate Click Create Carrier Save Button
    [Tags]    REGRESSION
    Verify Click Create Carrier Save Button

Validate Expand Commercial Trunks Section
    [Tags]    REGRESSION
    Verify Expand Commercial Trunks Section

Validate Click Create Trunk Button
    [Tags]    REGRESSION
    Verify Click Create Trunk Button

Validate Set Trunk Name
    [Tags]    REGRESSION
    Verify Set Trunk Name           ${TEST DATA PREFIX}

Validate Set Clli
    [Tags]    REGRESSION
    Verify Set Clli                 ${CLLI FOR CREATE}

Validate Set Effective Date
    [Tags]    REGRESSION
    Verify Set Effective Date       ${EFFECTIVE DATE FOR CREATE}

Validate Set Status For Trunk
    [Tags]    REGRESSION
    Verify Set Status               ${ACTIVE STATUS}

Validate Set Direction
    [Tags]    REGRESSION
    Verify Set Direction            ${INBOUND DIRECTION}

Validate Set Description
    [Tags]    REGRESSION
    Verify Set Description          ${DESCRIPTION FOR CREATE}

Validate Click Save Button
    [Tags]    REGRESSION
    Verify Click Save Button

Validate Get Trunk Name
    [Tags]    REGRESSION
    ${TRUNK NAME} =    Verify Get Trunk Name
    set suite variable      ${TRUNK NAME}

Validate Expand Number Plans Section
    [Tags]    REGRESSION
    Verify Expand Number Plans Section

Validate Click Add Number Plan button
    [Tags]    REGRESSION
    Verify Click Add Number Plan Button

Validate Set Trunk Dropdown Value
    [Tags]    REGRESSION
    Verify Set Trunk Dropdown Value       ${TRUNK NAME}

Validate Get Call Type
    [Tags]    REGRESSION
    ${CALL TYPE} =   Verify Get Call Type
    log  ${CALL TYPE}
    set suite variable      ${CALL TYPE}

Validate Set Call Type
    [Tags]    REGRESSION
    carrier_page_resource.Verify Set Call Type      ${CALL TYPE}

Validate Bidirectional Is Not Available In Direction Dropdown
    [Tags]    REGRESSION
    Verify Bidirectional Is Not Available In Direction Dropdown

Validate Set Direction For Number Plan
    [Tags]    REGRESSION
    Verify Set Direction        ${INBOUND DIRECTION}

Validate Set Number Plan
    [Tags]    REGRESSION
    carrier_page_resource.Verify Set Number Plan      ${NUMBER PLAN FOR CREATE NUMBER PLAN}

Validate Set Begin date
    [Tags]    REGRESSION
    Verify Set Begin Date For Add New Rate Plan         ${BEGIN DATE FOR CREATE NUMBER PLAN}

Validate Click Save Button For Create Number Plan
    [Tags]    REGRESSION
    Verify Click Save Button
