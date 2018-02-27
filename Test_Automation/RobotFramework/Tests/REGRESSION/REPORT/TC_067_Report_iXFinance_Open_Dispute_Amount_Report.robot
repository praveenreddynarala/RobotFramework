*** Settings ***
Documentation     [TAENOSIS-763] A Test Suite With Set Of Tests For Verify iXFinance Open Dispute Amount Report

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixreport_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/ixreport_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Report Module
    [Tags]    REGRESSION
    Verify Switch To IXReport

Validate Expand Administrative Reports Section
    [Tags]    REGRESSION
    Verify Expand Reports Section       ${IXFINANCE REPORTS MENU}

Validate Click Sub Report Item
    [Tags]    REGRESSION
    Verify Click Sub Report Item        ${OPEN DISPUTE AMOUNT REPORT SUBMENU}

Validate Set Future Actual Create Begin Date
    [Tags]    REGRESSION
    Verify Set Future Date Into Specific Date Field       Statement Begin Date      32

Validate Click Submit Button To Validate Error
    [Tags]    REGRESSION
    Verify Click Submit Button

Validate Begin Date Greater Than End Date Warning Message Is Shown
    [Tags]    REGRESSION
    Verify Begin Date Greater Than End Date Warning Message Is Shown

Validate Close Detail Report Window After Validating Error
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Set Actual Create Begin Date
    [Tags]    REGRESSION
    Verify Set Date Value Into Specific Date Field         Statement Begin Date        1/1/2016

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

Validate Click Layer 1 First Row
    [Tags]    REGRESSION
    Verify Click Report Table First Row

Validate Switch To Level2 Detail Frame For Layer 1 Preview
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate Click Layer 1 Report Preview Button
    [Tags]    REGRESSION
    Verify Click Report Preview Button If Expand Successful

Validate Switch To Level2 Detail Frame For Layer 1 Excel
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate Click Layer 1 Export To Excel Button If Expand Successful
    [Tags]    REGRESSION
    Verify Click Report Export To Excel Button If Expand Successful

Validate Click Layer 1 Export To Pdf Button If Expand Successful
    [Tags]    REGRESSION
    Verify Click Report Export To Pdf Button If Expand Successful

Validate Click Layer 1 Export To Csv Button If Expand Successful
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

Validate Switch To Level2 Detail Frame For Layer 2 Expand
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate Switch To Level3 Detail Frame For Layer 2 Expand
    [Tags]    REGRESSION
    Verify Switch To Level3 Detail Frame

Validate Click Layer 3 First Row
    [Tags]    REGRESSION
    Verify Click Report Table First Row

Validate Switch To Level2 Detail Frame For Layer 3 Preview
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate Switch To Level3 Detail Frame For Layer 3 Preview
    [Tags]    REGRESSION
    Verify Switch To Level3 Detail Frame

Validate Switch To Level4 Detail Frame For Layer 3 Preview
    [Tags]    REGRESSION
    Verify Switch To Level4 Detail Frame

Validate Click Layer 3 Report Preview Button
    [Tags]    REGRESSION
    Verify Click Report Preview Button If Expand Successful

Validate Switch To Level2 Detail Frame For Layer 3 Excel
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate Switch To Level3 Detail Frame For Layer 3 Excel
    [Tags]    REGRESSION
    Verify Switch To Level3 Detail Frame

Validate Switch To Level4 Detail Frame For Layer 3 Excel
    [Tags]    REGRESSION
    Verify Switch To Level4 Detail Frame

Validate Click Layer 3 Export To Excel Button If Expand Successful
    [Tags]    REGRESSION
    Verify Click Report Export To Excel Button If Expand Successful

Validate Click Layer 3 Export To Pdf Button If Expand Successful
    [Tags]    REGRESSION
    Verify Click Report Export To Pdf Button If Expand Successful

Validate Click Layer 3 Export To Csv Button If Expand Successful
    [Tags]    REGRESSION
    Verify Click Report Export To Csv Button If Expand Successful

Validate Close Detail Report Window After Preview Done
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Close IXReport Window
    [Tags]    REGRESSION
    Verify Close IxReport Window