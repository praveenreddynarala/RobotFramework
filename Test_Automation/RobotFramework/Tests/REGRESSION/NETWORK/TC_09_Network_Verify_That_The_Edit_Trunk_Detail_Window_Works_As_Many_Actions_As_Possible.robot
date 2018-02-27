*** Settings ***
Documentation   [TAENOSIS-955] A Test Suite With Set Of Tests To Verify That The Edit Trunk Detail Window Works As Many Actions As Possible

Resource    ../../../Resources/common_resource.robot
Resource    ../../../Resources/Pages/network_page_resource.robot
Resource    ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/network_page_test_data_source.robot

Suite Setup     Validate Login Functionality With Valid Credential
Suite Teardown  Validate Log Out Functionality

*** Variables ***
${TECHNICAL TRUNK NAME}         ${EMPTY}
${TECHNICAL TRUNK CDR MATCH}    ${EMPTY}

*** Test Cases ***
Validate Navigate to Network module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Network' From Main Menu

Validate Technical Trunks Tab Is Available
    [Tags]    REGRESSION
    Verify The Technical Trunks Tab Is Available

Validate Navigate to Technical Trunks Tab
    [Tags]    REGRESSION
    Click On Technical Trunks Tab

Validate Create New Switch
    [Tags]    REGRESSION
    Verify Create New Switch        ${DATABASE SERVER}      ${DATABASE}      ${DATABASE USERNAME}      ${DATABASE PASSWORD}     ${TEST DATA PREFIX}

Validate Click Create New Technical Trunk Button
    [Tags]    REGRESSION
    Verify Click Create New Technical Trunk Button

Valdiate Set Technical Trunk For Create Technical Trunk
    [Tags]    REGRESSION
    Verify Set Technical Trunk For Create Technical Trunk       ${TEST DATA PREFIX}

Validate Set Trunk Type For Create Technical Trunk
    [Tags]    REGRESSION
    Verify Set Trunk Type For Create Technical Trunk        ${TRUNK TYPE FOR CREATE}

Validate Set Switch For Create Technical Trunk
    [Tags]    REGRESSION
    ${SWITCH} =     Verify Get Created Switch
    log  ${SWITCH}
    Verify Set Switch For Create Technical Trunk        ${SWITCH}

Validate Set Carrier For Create Technical Trunk
    [Tags]    REGRESSION
    Verify Set Carrier For Create Technical Trunk

Validate Set CDR Match For Create Technical Trunk
    [Tags]    REGRESSION
    Verify Set CDR Match For Create Technical Trunk     ${TEST DATA PREFIX}

Validate Click Technical Trunk Attribute Tab
    [Tags]    REGRESSION
    Verify Click Technical Trunk Attribute Tab

Validate Set Effective Date For Create Technical Trunk
    [Tags]    REGRESSION
    Verify Set Effective Date For Create Technical Trunk

Validate Set Status For Create Technical Trunk
    [Tags]    REGRESSION
    Verify Set Status For Create Technical Trunk       ${ACTIVE STATUS}

Validate Set Activated Ports For Create Technical Trunk
    [Tags]    REGRESSION
    Verify Set Activated Ports For Create Technical Trunk       ${NUMBER OF ACTIVATED PORTS}

Validate Set Commercial Trunk For Create Technical Trunk
    [Tags]    REGRESSION
    Verify Set Commercial Trunk For Create Technical Trunk

Validate Set Direction For Create Technical Trunk
    [Tags]    REGRESSION
    Verify Set Direction For Create Technical Trunk     ${DIRECTION FOR CREATE}

Validate Click Create New Technical Trunk Save Button
    [Tags]    REGRESSION
    Verify Click Create New Technical Trunk Save Button

Validate Filter Technical Trunks Grid With Created Technical Trunk
    [Tags]    REGRESSION
    Verify Filter Technical Trunks Grid With Created Technical Trunk        ${TECHNICAL TRUNK COLUMN NAME}

Validate Click Technical Trunk Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Technical Trunk Grid First Row Inline Action Button

Validate Select Technical Trunk Inline Action Item
    [Tags]    REGRESSION
    Verify Select Technical Trunk Inline Action Item    Edit Trunk Detail

Validate Get Technical Trunk Name
    [Tags]    REGRESSION
    ${TECHNICAL TRUNK NAME} =   Verify Get Technical Trunk Name From Trunk Detail Pop Up
    set suite variable      ${TECHNICAL TRUNK NAME}

Validate Get Technical Trunk CDR Match
    [Tags]    REGRESSION
    ${TECHNICAL TRUNK CDR MATCH} =      Verify Get Technical Trunk CDR Match
    set suite variable      ${TECHNICAL TRUNK CDR MATCH}

Validate Set Tenchnical Trunk Field As Empty
    [Tags]    REGRESSION
    Verify Set Technical Trunk For Create Technical Trunk       ${EMPTY}    ${TRUE}     ${EMPTY}

Validate Set Tenchnical Trunk CDR Match As Empty
    [Tags]    REGRESSION
    Verify Set CDR Match For Create Technical Trunk     ${EMPTY}    ${TRUE}     ${EMPTY}

Validate Click Technical Trunk Detail Save Button With Validation
    [Tags]    REGRESSION
    Verify Click Technical Trunk Detail Save Button With Validation

Validate Set Tenchnical Trunk Field to Previous Value
    [Tags]    REGRESSION
    Verify Set Technical Trunk For Create Technical Trunk       ${EMPTY}    ${TRUE}     ${TECHNICAL TRUNK NAME}

Validate Set Tenchnical Trunk CDR Match to Previous Value
    [Tags]    REGRESSION
    Verify Set CDR Match For Create Technical Trunk     ${EMPTY}    ${TRUE}     ${TECHNICAL TRUNK CDR MATCH}

Validate Set Note
    [Tags]    REGRESSION
    Verify Set Note     ${TEST DATA PREFIX}

Validate Click Create New Technical Trunk Save Button For Edit
    [Tags]    REGRESSION
    Verify Click Create New Technical Trunk Save Button