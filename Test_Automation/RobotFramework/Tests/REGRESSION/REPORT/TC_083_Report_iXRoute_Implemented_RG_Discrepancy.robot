*** Settings ***
Documentation     [TAENOSIS-756] A Test Suite With Set Of Tests For Verify iXRoute Implemented RG Discrepancy Tracking

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
    Verify Click Sub Report Item        ${IMPLEMENTED RG DISCREPANCY SUBMENU}

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

Validate Click Report Preview Button For Layer 1
    [Tags]    REGRESSION
    Verify Click Report Preview Button If Expand Successful

Validate Switch To Route Guide Detail Frame For Excel
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate Click Report Export To Excel Button For Layer 1
    [Tags]    REGRESSION
    Verify Click Report Export To Excel Button If Expand Successful

Validate Click Report Export To Pdf Button For Layer 1
    [Tags]    REGRESSION
    Verify Click Report Export To Pdf Button If Expand Successful

Validate Click Report Export To Csv Button For Layer 1
    [Tags]    REGRESSION
    Verify Click Report Export To Csv Button If Expand Successful

Validate Switch To Level2 Detail Frame For Layer 1 Expand
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate Click Layer 2 First Row
    [Tags]    REGRESSION
    Verify Click Report Table First Row

Validate Switch To Level2 Detail Frame For Layer 2 Preview
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate Switch To Level3 Detail Frame For Layer 2 Preview
    [Tags]    REGRESSION
    Verify Switch To Level3 Detail Frame

Validate Click Layer 2 Report Preview Button
    [Tags]    REGRESSION
    Verify Click Report Preview Button If Expand Successful

Validate Switch To Level2 Detail Frame For Layer 2 Excel
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate Switch To Level3 Detail Frame For Layer 2 Excel
    [Tags]    REGRESSION
    Verify Switch To Level3 Detail Frame

Validate Click Layer 2 Export To Excel Button If Expand Successful
    [Tags]    REGRESSION
    Verify Click Report Export To Excel Button If Expand Successful

Validate Click Layer 2 Export To Pdf Button If Expand Successful
    [Tags]    REGRESSION
    Verify Click Report Export To Pdf Button If Expand Successful

Validate Click Layer 2 Export To Csv Button If Expand Successful
    [Tags]    REGRESSION
    Verify Click Report Export To Csv Button If Expand Successful

Validate Close Detail Report Window After Preview Done
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Close IXReport Window
    [Tags]    REGRESSION
    Verify Close IxReport Window