*** Settings ***
Documentation     [TAENOSIS-725] A Test Suite With Set Of Tests For Verify Network Erlang Report

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixreport_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/ixreport_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${TECHNICAL TRUNK}          ${EMPTY}
${SWITCH}                   ${EMPTY}

*** Test Cases ***
Validate Navigate to Report Module
    [Tags]    REGRESSION
    Verify Switch To IXReport

Validate Expand Administrative Reports Section
    [Tags]    REGRESSION
    Verify Expand Reports Section       ${NETWORKS REPORTS MENU}

Validate Click Sub Report Item
    [Tags]    REGRESSION
    Verify Click Sub Report Item        ${ERLANG REPORT SUBMENU}

Validate Set Future Begin Date
    [Tags]    REGRESSION
    Verify Set Future Date as Begin Date    32

Validate Click Submit Button To Validate Error
    [Tags]    REGRESSION
    Verify Click Submit Button

Validate Begin Date Greater Than End Date Warning Message Is Shown
    [Tags]    REGRESSION
    Verify Begin Date Greater Than End Date Warning Message Is Shown

Validate Close Detail Report Window After Validating Error
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Set Begin Date
    [Tags]    REGRESSION
    Verify Set Begin Date       1/1/2016

Validate Click Submit Button To Copy
    [Tags]    REGRESSION
    Verify Click Submit Button

Validate Get Second Row In Account Name
    [Tags]    REGRESSION
    ${SWITCH} =       Verify Get First Row Switch
    set suite variable      ${SWITCH}

Validate Get Second Row Out Account Name
    [Tags]    REGRESSION
    ${TECHNICAL TRUNK} =       Verify Get First Row Technical Trunk
    set suite variable      ${TECHNICAL TRUNK}

Validate Close Detail Report Window
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Click Technical Trunk Browse Button
    [Tags]    REGRESSION
    Verify Click Technical Trunk Browse Button

Validate Set First Letters For Technical Trunk
    [Tags]    REGRESSION
    Verify Set First Letters    ${TECHNICAL TRUNK}

Validate Click Go Button For Technical Trunk
    [Tags]    REGRESSION
    Verify Click Go Button

Validate Select Row From Look Up Table For Technical Trunk
    [Tags]    REGRESSION
    Verify Select Row From Look Up Table        ${TECHNICAL TRUNK} - ${SWITCH}

Validate Set Switch
    [Tags]    REGRESSION
    Verify Set Switch   ${SWITCH}

Validate Click Submit Button
    [Tags]    REGRESSION
    Verify Click Submit Button

Validate Click Report Preview Button
    [Tags]    REGRESSION
    Verify Click Report Preview Button

Validate Click Report Export To Excel Button
    [Tags]    REGRESSION
    Verify Click Report Export To Excel Button

Validate Click Report Export To Csv Button
    [Tags]    REGRESSION
    Verify Click Report Export To Csv Button

Validate Click Report Export To Pdf Button
    [Tags]    REGRESSION
    Verify Click Report Export To Pdf Button

Validate Click First Row Technical Trunk
    [Tags]    REGRESSION
    Verify Click First Row Technical Trunk

Validate Switch To Level2 Detail Frame
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate Click Report Preview Button If Expand Successful
    [Tags]    REGRESSION
    Verify Click Report Preview Button If Expand Successful

Validate Switch To Level2 Detail Frame For Excel
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate Click Report Export To Excel Button If Expand Successful
    [Tags]    REGRESSION
    Verify Click Report Export To Excel Button If Expand Successful

Validate Click Report Export To CSV Button If Expand Successful
    [Tags]    REGRESSION
    Verify Click Report Export To Csv Button If Expand Successful

Validate Switch To Level2 Detail Frame For PDF
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate Click Report Export To PDF Button If Expand Successful
    [Tags]    REGRESSION
    Verify Click Report Export To PDF Button If Expand Successful

Validate Close Detail Report Window After Preview Done
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Close IXReport Window
    [Tags]    REGRESSION
    Verify Close IxReport Window