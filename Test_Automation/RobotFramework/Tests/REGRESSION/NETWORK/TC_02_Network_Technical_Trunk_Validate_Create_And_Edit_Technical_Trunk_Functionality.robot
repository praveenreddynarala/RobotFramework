*** Settings ***
Documentation   A Test Suite With Set Of Tests To Validate Create And Verify New Technical Trunk Functionality.

Resource    ../../../Resources/common_resource.robot
Resource    ../../../Resources/Pages/network_page_resource.robot
Resource    ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/network_page_test_data_source.robot

Suite Setup     Validate Login Functionality With Valid Credential
Suite Teardown  Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Network module
    [Tags]  REGRESSION
    Click on Home Icon and Select 'Network' From Main Menu

Validate Technical Trunks Tab Is Available
    [Tags]  REGRESSION
    Verify The Technical Trunks Tab Is Available

Validate Navigate to Technical Trunks Tab
    [Tags]  REGRESSION
    Click On Technical Trunks Tab

Validate Create New Switch
    [Tags]  REGRESSION
    Verify Create New Switch        ${DATABASE SERVER}      ${DATABASE}      ${DATABASE USERNAME}      ${DATABASE PASSWORD}     ${TEST DATA PREFIX}

Validate Click Create New Technical Trunk Button
    [Tags]  REGRESSION
    Verify Click Create New Technical Trunk Button

Valdiate Set Technical Trunk For Create Technical Trunk
    [Tags]  REGRESSION
    Verify Set Technical Trunk For Create Technical Trunk       ${TEST DATA PREFIX}

Validate Set Trunk Type For Create Technical Trunk
    [Tags]  REGRESSION
    Verify Set Trunk Type For Create Technical Trunk        ${TRUNK TYPE FOR CREATE}

Validate Set Switch For Create Technical Trunk
    [Tags]  REGRESSION
    ${SWITCH} =     Verify Get Created Switch
    log  ${SWITCH}
    Verify Set Switch For Create Technical Trunk        ${SWITCH}

Validate Set Carrier For Create Technical Trunk
    [Tags]  REGRESSION
    Verify Set Carrier For Create Technical Trunk

Validate Set CDR Match For Create Technical Trunk
    [Tags]  REGRESSION
    Verify Set CDR Match For Create Technical Trunk     ${TEST DATA PREFIX}

Validate Click Technical Trunk Attribute Tab
    [Tags]  REGRESSION
    Verify Click Technical Trunk Attribute Tab

Validate Set Effective Date For Create Technical Trunk
    [Tags]  REGRESSION
    Verify Set Effective Date For Create Technical Trunk

Validate Set Status For Create Technical Trunk
    [Tags]  REGRESSION
    Verify Set Status For Create Technical Trunk       ${ACTIVE STATUS}

Validate Set Activated Ports For Create Technical Trunk
    [Tags]  REGRESSION
    Verify Set Activated Ports For Create Technical Trunk       ${NUMBER OF ACTIVATED PORTS}

Validate Set Commercial Trunk For Create Technical Trunk
    [Tags]  REGRESSION
    Verify Set Commercial Trunk For Create Technical Trunk

Validate Set Direction For Create Technical Trunk
    [Tags]  REGRESSION
    Verify Set Direction For Create Technical Trunk     ${DIRECTION FOR CREATE}

Validate Click Create New Technical Trunk Save Button
    [Tags]  REGRESSION
    Verify Click Create New Technical Trunk Save Button

Validate Filter Technical Trunks Grid With Created Technical Trunk
    [Tags]  REGRESSION
    Verify Filter Technical Trunks Grid With Created Technical Trunk        ${TECHNICAL TRUNK COLUMN NAME}

Validate Get Technical Trunk Grid Row Data
    [Tags]  REGRESSION
    Verify Get Technical Trunk Grid Row Data

Validate Technical Trunk Name After Create
    [Tags]  REGRESSION
    Verify Technical Trunk Name After Create

Validate Carrier After Create
    [Tags]  REGRESSION
    Verify Carrier After Create

Validate Trunk Type After Create
    [Tags]  REGRESSION
    Verify Trunk Type After Create      ${TRUNK TYPE FOR CREATE}

Validate Commercial Trunk After Create
    [Tags]  REGRESSION
    Verify Commercial Trunk After Create

Validate Status After Create
    [Tags]  REGRESSION
    Verify Status After Create      ${ACTIVE STATUS}

Validate Direction After Create
    [Tags]  REGRESSION
    Verify Direction After Create       ${DIRECTION FOR CREATE}

Validate Activated Ports After Create
    [Tags]  REGRESSION
    Verify Activated Ports After Create     ${NUMBER OF ACTIVATED PORTS}

Validate Select Technical Trunks Grid Row For Edit
    [Tags]  REGRESSION
    Verify Select Technical Trunks Grid Row For Edit

Validate Set Note In Technical Trunks Grid
    [Tags]  REGRESSION
    Verify Set Note In Technical Trunks Grid        ${TEST DATA PREFIX}

Validate Set Clli In Technical Trunks Grid
    [Tags]  REGRESSION
    Verify Set Clli In Technical Trunks Grid        ${Clli FOR EDIT}

Valdiate Click Save Changes Button
    [Tags]  REGRESSION
    Verify Click Save Changes Button

Validate Select Technical Trunks Grid Row After Edit
    [Tags]  REGRESSION
    Verify Select Technical Trunks Grid Row For Edit

Validate Get Technical Trunk Grid Row Data After Edit
    [Tags]  REGRESSION
    Verify Get Technical Trunk Grid Row Data

Validate Technical Trunk Name After Edit
    [Tags]  REGRESSION
    Verify Technical Trunk Name After Create

Validate Note After Edit
    [Tags]  REGRESSION
    Verify Note After Edit

Validate Clli After Edit
    [Tags]  REGRESSION
    Verify Clli After Edit             ${CLLI FOR EDIT}

Validate Delete Created Switch
    [Tags]  REGRESSION
    Verify Delete Created Switch     ${DATABASE SERVER}      ${DATABASE}      ${DATABASE USERNAME}      ${DATABASE PASSWORD}