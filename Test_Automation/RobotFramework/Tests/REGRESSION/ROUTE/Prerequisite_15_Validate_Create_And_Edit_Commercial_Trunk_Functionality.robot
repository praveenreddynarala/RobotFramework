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