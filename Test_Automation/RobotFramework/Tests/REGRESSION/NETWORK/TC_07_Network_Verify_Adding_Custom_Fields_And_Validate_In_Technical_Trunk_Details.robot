*** Settings ***
Documentation    [TAENOSIS-864] A Test Suite With Set Of Tests To Verify Adding Custom Fields And Validate In Technical Trunk Details

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/network_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CREATED FIELD ALIAS NAME}     ${EMPTY}

*** Test Cases ***
Validate Select 'System Admin' From Main Menu
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select System Tab
    [Tags]    REGRESSION
    Click on System Tab

Validate Click Field Alias Link
    [Tags]    REGRESSION
    Verify Click Field Alias Link

Validate Set Application
    [Tags]    REGRESSION
    Verify Set Application      iXConnect

Validate Set Field Alias Scope
    [Tags]    REGRESSION
    Verify Set Field Alias Scope        Trunk

Validate Click Search Button
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Field Alias Grid Field Name
    [Tags]    REGRESSION
    Verify Field Alias Grid Field Name      Custom1

Validate Field Alias Grid Field Name For Custom2
    [Tags]    REGRESSION
    Verify Field Alias Grid Field Name      Custom2

Validate Field Alias Grid Field Name For Custom3
    [Tags]    REGRESSION
    Verify Field Alias Grid Field Name      Custom3

Validate Field Alias Grid Field Name For Custom4
    [Tags]    REGRESSION
    Verify Field Alias Grid Field Name      Custom4

Validate Field Alias Grid Field Name For Custom5
    [Tags]    REGRESSION
    Verify Field Alias Grid Field Name      Custom5

Validate Set Value In Field Alias Column
    [Tags]    REGRESSION
    Verify Set Field Alias Column Value     Ensure Actual Exchange      Custom1

Validate Set Value In Field Alias For Custom2 Column
    [Tags]    REGRESSION
    Verify Set Field Alias Column Value     Testing     Custom2

Validate Click Save Changes Button
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Save Changes Button

Validate Set Field Alias Scope For Trunk Detail
    [Tags]    REGRESSION
    Verify Set Field Alias Scope        TrunkDetail

Validate Click Search Button For Trunk Detail
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Field Alias Grid Field Name For Trunk Detail
    [Tags]    REGRESSION
    Verify Field Alias Grid Field Name      Custom1

Validate Field Alias Grid Field Name For Trunk Detail Custom2
    [Tags]    REGRESSION
    Verify Field Alias Grid Field Name      Custom2

Validate Field Alias Grid Field Name For Trunk Detail Custom3
    [Tags]    REGRESSION
    Verify Field Alias Grid Field Name      Custom3

Validate Field Alias Grid Field Name For Trunk Detail Custom4
    [Tags]    REGRESSION
    Verify Field Alias Grid Field Name      Custom4

Validate Field Alias Grid Field Name For Trunk Detail Custom5
    [Tags]    REGRESSION
    Verify Field Alias Grid Field Name      Custom5

Validate Set Value In Field Alias Column For Trunk Detail
    [Tags]    REGRESSION
    Verify Set Field Alias Column Value     Trunk Nature

Validate Set Value In Field Alias For Trunk Detail Custom2 Column
    [Tags]    REGRESSION
    Verify Set Field Alias Column Value     Actual Exchange ID      Custom2

Validate Set Value In Field Alias For Trunk Detail Custom3 Column
    [Tags]    REGRESSION
    Verify Set Field Alias Column Value     PTCL Trunk Type         Custom3

Validate Click Save Changes Button For Trunk Detail
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Save Changes Button

Validate Close System Admin Window
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Select 'Network' From Main Menu For Resetting
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Network' From Main Menu

Validate Click On Technical Trunks Tab
    [Tags]    REGRESSION
    Click On Technical Trunks Tab

Validate Click Inline Action Button
    [Tags]    REGRESSION
    Verify Click Technical Trunk Grid First Row Inline Action Button

Validate Select Edit Attributes Inline Item
    [Tags]    REGRESSION
    Verify Select Technical Trunk Inline Action Item        Edit Trunk Attributes

Validate Technical Trunk Attibutes Grid Column Is Present For Trunk Nature
    [Tags]    REGRESSION
    Verify Technical Trunk Attibutes Grid Column Is Present     Trunk Nature

Validate Technical Trunk Attibutes Grid Column Is Present For Actual Exchange ID
    [Tags]    REGRESSION
    Verify Technical Trunk Attibutes Grid Column Is Present     Actual Exchange ID

Validate Technical Trunk Attibutes Grid Column Is Present For PTCL Trunk Type
    [Tags]    REGRESSION
    Verify Technical Trunk Attibutes Grid Column Is Present     PTCL Trunk Type

Validate Select Technical Trunk Details Tab
    [Tags]    REGRESSION
    Verify Select Technical Trunk Details Tab

Validate Technical Trunk Details Field Is Present For Ensure Actual Exchange
    [Tags]    REGRESSION
    Verify Technical Trunk Details Field Is Present     Ensure Actual Exchange

Validate Technical Trunk Details Field Is Present For Testing
    [Tags]    REGRESSION
    Verify Technical Trunk Details Field Is Present     Testing

Validate Close Network Window
    [Tags]    REGRESSION
    Verify Close Network Window

Validate Select 'System Admin' From Main Menu For Resetting
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select System Tab For Resetting
    [Tags]    REGRESSION
    Click on System Tab

Validate Click Field Alias Link For Resetting
    [Tags]    REGRESSION
    Verify Click Field Alias Link

Validate Set Application For Resetting
    [Tags]    REGRESSION
    Verify Set Application      iXConnect

Validate Set Field Alias Scope For Resetting
    [Tags]    REGRESSION
    Verify Set Field Alias Scope        Trunk

Validate Click Search Button For Resetting
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Field Alias Column For Resetting
    [Tags]    REGRESSION
    Verify Set Field Alias Column Value     ${EMPTY}        Custom1

Validate Set Value In Field Alias For Custom2 Column For Resetting
    [Tags]    REGRESSION
    Verify Set Field Alias Column Value     ${EMPTY}        Custom2

Validate Click Save Changes Button For Resetting
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Save Changes Button

Validate Set Field Alias Scope For Resetting Trunk Detail
    [Tags]    REGRESSION
    Verify Set Field Alias Scope        TrunkDetail

Validate Click Search Button For Resetting Trunk Detail
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Field Alias Column For Resetting Trunk Detail
    [Tags]    REGRESSION
    Verify Set Field Alias Column Value     ${EMPTY}        Custom1

Validate Set Value In Field Alias For Custom2 Column For Resetting Trunk Detail
    [Tags]    REGRESSION
    Verify Set Field Alias Column Value     ${EMPTY}        Custom2

Validate Set Value In Field Alias For Custom3 Column For Resetting Trunk Detail
    [Tags]    REGRESSION
    Verify Set Field Alias Column Value     ${EMPTY}        Custom3

Validate Click Save Changes Button For Resetting Trunk Detail
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Save Changes Button

Validate Close System Admin Window For Resetting
    [Tags]    REGRESSION
    Verify Close System Admin Window

