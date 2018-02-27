*** Settings ***
Documentation   A Test Suite With Set Of Tests To Validate Create New Commercial Trunk Functionality.

Resource    ../../../Resources/common_resource.robot
Resource    ../../../Resources/Pages/network_page_resource.robot
Resource    ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/network_page_test_data_source.robot

Suite Setup     Validate Login Functionality With Valid Credential
Suite Teardown  Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Network module
    [Tags]  REGRESSION
    Click on Home Icon and Select 'Network' From Main Menu

Validate Commercial Trunks Tab Is Available
    [Tags]  REGRESSION
    Verify The Commercial Trunks Tab Is Available

Validate Navigate to Commercial Trunks Tab
    [Tags]  REGRESSION
    Click On Commercial Trunks Tab

Validate Click Create New Commercial Trunk button
    [Tags]  REGRESSION
    Verify Click Create New Commercial Trunk button

Validate Set Trunk For Create Commercial Trunk
    [Tags]  REGRESSION
    Verify Set Trunk For Create Commercial Trunk        ${TEST DATA PREFIX}

Validate Set Account For Create Commercial Trunk
    [Tags]  REGRESSION
    Verify Set Account For Create Commercial Trunk

Validate Set Effective Date For Create Commercial Trunk
    [Tags]  REGRESSION
    Verify Set Effective Date For Create Commercial Trunk

Validate Set Status For Create Commercial Trunk
    [Tags]  REGRESSION
    Verify Set Status For Create Commercial Trunk       ${COMMERCIAL TRUNK STATUS FOR CREATE}

Validate Set Direction For Create Commercial Trunk
    [Tags]  REGRESSION
    Verify Set Direction For Create Commercial Trunk        ${COMMERCIAL TRUNK DIRECTION FOR CREATE}

Validate Click Create Commercial Trunk Save Button
    [Tags]  REGRESSION
    Verify Click Create Commercial Trunk Save Button

Validate Set Commercial Trunk After Create
    [Tags]  REGRESSION
    Verify Set Commercial Trunk After Create

Validate Set Select Date After Create
    [Tags]  REGRESSION
    Verify Set Commercial Trunk Select Date

Validate Click Commercial Trunk Search Button
    [Tags]  REGRESSION
    Verify Click Commercial Trunk Search Button

Validate Get Commercial Trunks Grid Row Data
    [Tags]  REGRESSION
    Verify Get Commercial Trunks Grid Row Data

Validate Commercial Trunk Trunk Name
    [Tags]  REGRESSION
    Verify Commercial Trunk Trunk Name

Validate Commercial Trunk Account
    [Tags]  REGRESSION
    Verify Commercial Trunk Account

Validate Commercial Trunk Status
    [Tags]  REGRESSION
    Verify Commercial Trunk Status          ${COMMERCIAL TRUNK STATUS FOR CREATE}

Validate Commercial Trunk Direction
    [Tags]  REGRESSION
    Verify Commercial Trunk Direction       ${COMMERCIAL TRUNK DIRECTION FOR CREATE}

Validate Commercial Trunk Effective Date
    [Tags]  REGRESSION
    Verify Commercial Trunk Effective Date

Validate Set Status For Edit Commercial Trunk
    [Tags]    REGRESSION
    Verify Set Status For Edit Commercial Trunk    ${STATUS FOR EDIT TRUNK}

Validate Set Direction For Edit Commercial Trunk
    [Tags]    REGRESSION
    Verify Set Direction For Edit Commercial Trunk    ${COMMERCIAL TRUNK DIRECTION}

Validate Set CLLI For Edit Commercial Trunk
    [Tags]    REGRESSION
    Verify Set CLLI For Edit Commercial Trunk    ${CLLI FOR COMMERCIAL TRUNK}

Validate Set Note For Edit Commercial Trunk
    [Tags]    REGRESSION
    Verify Set Note For Edit Commercial Trunk

Validate Click Save Changes Button
    [Tags]    REGRESSION
    Verify Click Save Changes Button

Validate Get Commercial Trunks Grid Row Data After Edit
    [Tags]    REGRESSION
    Verify Get Commercial Trunks Grid Row Data For Edit

Validate Status After Edit Commercial Trunk
    [Tags]    REGRESSION
    Verify Status After Edit Commercial Trunk    ${STATUS FOR EDIT TRUNK}

Validate Direction After Edit Commercial Trunk
    [Tags]    REGRESSION
    Verify Direction After Edit Commercial Trunk    ${COMMERCIAL TRUNK DIRECTION}

Validate CLLI After Edit Commercial Trunk
    [Tags]    REGRESSION
    Verify CLLI After Edit Commercial Trunk    ${CLLI FOR COMMERCIAL TRUNK}

Validate Note After Edit Commercial Trunk
    [Tags]    REGRESSION
    Verify Note After Edit Commercial Trunk