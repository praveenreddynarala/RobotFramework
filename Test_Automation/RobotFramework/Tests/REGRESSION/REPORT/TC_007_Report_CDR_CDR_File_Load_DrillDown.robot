*** Settings ***
Documentation     A Test Suite With Set Of Tests To Verify CDR CDR File Load DrillDown

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixreport_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/ixreport_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Report Module
    [Tags]    REGRESSION
    Verify Switch To IXReport

Validate Expand Reports Section
    [Tags]    REGRESSION
    Verify Expand Reports Section       ${CDR REPORTS MENU}

Validate Click Sub Report Item
    [Tags]    REGRESSION
    Verify Click Sub Report Item        ${CDR FILE LOAD SUBMENU}

Validate Set Begin Date
    [Tags]    REGRESSION
    Verify Set Past Date As Begin Date With Lower Case d

Validate Set Second Level Summarize By
    [Tags]    REGRESSION
    Verify Set Second Level Summarize By        ${CRD FILE LOAD SECOND LEVEL SUMMARIZE BY}

Validate Set Third Level Summarize By
    [Tags]    REGRESSION
    Verify Set Third Level Summarize By         ${CRD FILE LOAD THIRD LEVEL SUMMARIZE BY}

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
    Verify Click Report Export To CSV Button

Validate Click Report Export To PDF Button
    [Tags]    REGRESSION
    Verify Click Report Export To PDF Button

Validate Expand First Layer First Row
    [Tags]    REGRESSION
    Verify Expand First Layer First Row

Validate Switch To Level2 Detail Frame
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate Click Report Preview Button For Layer 2
    [Tags]    REGRESSION
    Verify Click Report Preview Button If Expand Successful

Validate Switch To Level2 Detail Frame After Preview
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate Click Report Export To Excel Button For Layer 2
    [Tags]    REGRESSION
    Verify Click Report Export To Excel Button If Expand Successful

Validate Click Report Export To CSV Button For Layer 2
    [Tags]    REGRESSION
    Verify Click Report Export To CSV Button If Expand Successful

Validate Switch To Level2 Detail Frame After CSV
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate Click Report Export To PDF Button For Layer 2
    [Tags]    REGRESSION
    Verify Click Report Export To PDF Button If Expand Successful

Validate Expand Layer First Row For Layer 2
    [Tags]    REGRESSION
    Verify Expand Second Layer First Row

Validate Switch To Level2 Detail Frame For Layer 3
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate Click Report Preview Button For Layer 3
    [Tags]    REGRESSION
    Verify Click Report Preview Button If Expand Successful

Validate Switch To Level2 Detail Frame For Layer 3 After Preview
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate Switch To Level2 Detail Frame For Layer 3 After Preview Done
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate Click Report Export To Excel Button For Layer 3
    [Tags]    REGRESSION
    Verify Click Report Export To Excel Button If Expand Successful

Validate Click Report Export To CSV Button For Layer 3
    [Tags]    REGRESSION
    Verify Click Report Export To CSV Button If Expand Successful

Validate Switch To Level2 Detail Frame For Layer 3 After CSV
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate Switch To Level2 Detail Frame For Layer 3 After CSV Done
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate Click Report Export To PDF Button For Layer 3
    [Tags]    REGRESSION
    Verify Click Report Export To PDF Button If Expand Successful

Validate Close Detail Report Window
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Click Save My Report Button
    [Tags]    REGRESSION
    Verify Click Save My Report Button

Validate Set My Report Title
    [Tags]    REGRESSION
    Verify Set My Report Title      ${TEST DATA PREFIX}

Validate Click My Report Save Button
    [Tags]    REGRESSION
    Verify Click My Report Save Button

Validate Close IXReport Window
    [Tags]    REGRESSION
    Verify Close IxReport Window
