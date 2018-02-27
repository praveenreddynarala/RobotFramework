*** Settings ***
Documentation     [TAENOSIS-753] A Test Suite With Set Of Tests For Verify iXRoute CRG Tracking

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixreport_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/ixreport_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Report Module
    [Tags]    REGRESSION
    Verify Switch To IXReport

Validate Expand Network Reports Section
    [Tags]    REGRESSION
    Verify Expand Reports Section       ${IXROUTE REPORTS MENU}

Validate Click Sub Report Item
    [Tags]    REGRESSION
    Verify Click Sub Report Item        ${CRG TRACKING SUBMENU}

Validate Set Future Begin Date
    [Tags]    REGRESSION
    Verify Set Future Date as Begin Date      32

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
    Verify Set Begin Date         1/1/2016

Validate Click Submit Button
    [Tags]    REGRESSION
    Verify Click Submit Button

Validate Click Report Preview Button
    [Tags]    REGRESSION
    Verify Click Report Preview Button

Validate Click Report Export To Excel Button
    [Tags]    REGRESSION
    Verify Click Report Export To Excel Button

Validate Click Report Export To CSV Button
    [Tags]    REGRESSION
    Verify Click Report Export To Csv Button

Validate Click Report Export To Pdf Button
    [Tags]    REGRESSION
    Verify Click Report Export To Pdf Button

Validate Click First Row Routing Product For CRG
    [Tags]    REGRESSION
    Verify Click First Row Routing Product For CRG

Validate Switch To Route Guide Detail Frame
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate Click Report Preview Button For Layer 2
    [Tags]    REGRESSION
    Verify Click Report Preview Button If Expand Successful

Validate Switch To Route Guide Detail Frame For Excel
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate Click Report Export To Excel Button For Layer 2
    [Tags]    REGRESSION
    Verify Click Report Export To Excel Button If Expand Successful

Validate Click Report Export To Pdf Button For Layer 2
    [Tags]    REGRESSION
    Verify Click Report Export To Pdf Button If Expand Successful

Validate Click Report Export To Csv Button For Layer 2
    [Tags]    REGRESSION
    Verify Click Report Export To Csv Button If Expand Successful

Validate Close Detail Report Window After Preview Done
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Close IXReport Window
    [Tags]    REGRESSION
    Verify Close IxReport Window