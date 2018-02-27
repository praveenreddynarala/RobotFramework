*** Settings ***
Documentation     A Test Suite With Set Of Tests To Verify Transmission Type Value In The Trunk Details Screen And Technical Trunk With History Report

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixreport_page_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/Pages/network_page_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/ixreport_page_test_data_source.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/network_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${TECHNICAL TRUNK}      ${EMPTY}
${CARRIER NAME}         ${EMPTY}

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

Validate Set Transmission Type For Create Technical Trunk
    [Tags]  REGRESSION
    Verify Set Transmission Type For Create Technical Trunk     VOIP

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

Validate Get Created Technical Trunk
    [Tags]  REGRESSION
    ${TECHNICAL TRUNK} =    Verify Get Created Technical Trunk
    set suite variable      ${TECHNICAL TRUNK}

Validate Close Network Window
    [Tags]    REGRESSION
    Verify Close Network Window

Validate Navigate to Contracts Module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate Select Network Trunk Submenu
    [Tags]    REGRESSION
    Verify Select Network Trunk Submenu

Validate Switch To UpperList Frame
    [Tags]    REGRESSION
    Verify Switch To UpperList Frame

Validate Set Trunk Letters
    [Tags]    REGRESSION
    Verify Set Trunk Letters    ${TECHNICAL TRUNK}

Validate Click Go Button
    [Tags]    REGRESSION
    ixconnect_page_resource.Verify Click Go Button

Validate Click Expand Switch Button
    [Tags]    REGRESSION
    Verify Click Expand Switch Button

Validate Switch To Default Content
    [Tags]    REGRESSION
    Verify Switch To Default Content

Validate Click Trunk Name for Details
    [Tags]    REGRESSION
    Verify Click Trunk Name for Details     ${TECHNICAL TRUNK}

Validate Trunk Transmission Type
    [Tags]    REGRESSION
    Verify Trunk Transmission Type       VOIP

Validate Close IxConnect Window
    [Tags]    REGRESSION
    Verify Close IxConnect Window

Validate Navigate to Report Module
    [Tags]    REGRESSION
    Verify Switch To IXReport

Validate Expand Reports Section
    [Tags]    REGRESSION
    Verify Expand Reports Section       ${ADMINISTRATIVE REPORTS MENU}

Validate Click Sub Report Item
    [Tags]    REGRESSION
    Verify Click Sub Report Item        ${TECHNICAL TRUNK WITH HISTORY REPORT SUBMENU}

Validate Click Account Browse Button
    [Tags]    REGRESSION
    Verify Click Account Browse Button

Validate Set First Letters
    [Tags]    REGRESSION
    ${CARRIER NAME} =       Verify Get Created Carrier Name
    set suite variable      ${CARRIER NAME}
    Verify Set First Letters    ${CARRIER NAME}

Validate Click Go Button For Account
    [Tags]    REGRESSION
    ixreport_page_resource.Verify Click Go Button

Validate Select Row From Look Up Table
    [Tags]    REGRESSION
    Verify Select Row From Look Up Table        ${CARRIER NAME}

Validate Set Report Trunk Name
    [Tags]    REGRESSION
    Verify Set Report Trunk Name        ${TECHNICAL TRUNK}

Validate Click Submit Button
    [Tags]    REGRESSION
    ixreport_page_resource.Verify Click Submit Button

Validate Get First Row Account Name
    [Tags]    REGRESSION
    Verify First Row Transmission Type      VOIP

Validate Close Detail Report Window
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Close IXReport Window
    [Tags]    REGRESSION
    Verify Close IxReport Window
