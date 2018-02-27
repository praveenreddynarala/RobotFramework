*** Settings ***
Documentation     A Test Suite With Set Of Tests For Verify CDR CDR Error Report

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixreport_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/ixreport_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to System Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select System Tab
    [Tags]    REGRESSION
    Click on System Tab

Validate Click Configuration Variables Button
    [Tags]    REGRESSION
    Verify Click Configuration Variables Button

Validate Set Variable Name
    [Tags]    REGRESSION
    Verify Set Variable Name    iXToolsWholesaleSolutionType

Validate Click Configuration Variables Grid Search Button
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Set Value In Current Value Column
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        1

Validate Close System Admin Window
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to Report Module
    [Tags]    REGRESSION
    Verify Switch To IXReport

Validate Expand Administrative Reports Section
    [Tags]    REGRESSION
    Verify Expand Reports Section       ${CDR REPORTS MENU}

Validate Click Sub Report Item
    [Tags]    REGRESSION
    Verify Click Sub Report Item        ${CDR ERROR REPORT SUBMENU}

Validate Set Begin Date
    [Tags]    REGRESSION
    Verify Set Begin Date       ${CDR ERROR REPORT DATE}

Validate Click Submit Button
    [Tags]    REGRESSION
    Verify Click Submit Button

Validate CDR Error Report Table Column Names
    [Tags]    REGRESSION
    Verify CDR Error Report Table Column Names      @{CDR ERROR REPORT TABLE COLUMN NAME LIST VOICE}

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

Validate Click Error Type Name
    [Tags]    REGRESSION
    Verify Click First Row Error Type

Validate Switch To Level2 Detail Frame
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate CDR Error Report Layer 2 Table Column Names
    [Tags]    REGRESSION
    Verify CDR Error Report Layer 2 Table Column Names      @{CDR ERROR REPORT LAYER 2 TABLE COLUMN NAME LIST VOICE}

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
    Verify Expand Layer First Row

Validate Switch To Level2 Detail Frame For Layer 3
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate CDR Error Report Layer 3 Table Column Names
    [Tags]    REGRESSION
    Verify CDR Error Report Layer 3 Table Column Names      @{CDR ERROR REPORT LAYER 3 TABLE COLUMN NAME LIST}

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

Validate Expand Layer First Row For Layer 3
    [Tags]    REGRESSION
    Verify Expand Layer First Row

Validate Switch To Level3 Detail Frame For Layer 4
    [Tags]    REGRESSION
    Verify Switch To Level3 Detail Frame

Validate CDR Error Report Layer 4 Table Column Names
    [Tags]    REGRESSION
    Verify CDR Error Report Layer 3 Table Column Names      @{CDR ERROR REPORT LAYER 4 TABLE COLUMN NAME LIST}

Validate Click Report Preview Button For Layer 4
    [Tags]    REGRESSION
    Verify Click Report Preview Button If Expand Successful

Validate Switch To Level2 Detail Frame For Layer 4 After Preview
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate Switch To Level2 Detail Frame For Layer 4 After Preview Done
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate Switch To Level3 Detail Frame For Layer 4 After Preview
    [Tags]    REGRESSION
    Verify Switch To Level3 Detail Frame

Validate Click Report Export To Excel Button For Layer 4
    [Tags]    REGRESSION
    Verify Click Report Export To Excel Button If Expand Successful

Validate Click Report Export To CSV Button For Layer 4
    [Tags]    REGRESSION
    Verify Click Report Export To CSV Button If Expand Successful

Validate Switch To Level2 Detail Frame For Layer 4 After CSV
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate Switch To Level2 Detail Frame For Layer 4 After CSV Done
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate Switch To Level3 Detail Frame For Layer 4 After CSV
    [Tags]    REGRESSION
    Verify Switch To Level3 Detail Frame

Validate Click Report Export To PDF Button For Layer 4
    [Tags]    REGRESSION
    Verify Click Report Export To PDF Button If Expand Successful

Validate Expand Layer First Row For Layer 4
    [Tags]    REGRESSION
    Verify Expand Layer First Row

Validate Switch To Level4 Detail Frame For Layer 5
    [Tags]    REGRESSION
    Verify Switch To Level4 Detail Frame

Validate Click Report Preview Button For Layer 5
    [Tags]    REGRESSION
    Verify Click Report Preview Button If Expand Successful

Validate Switch To Level2 Detail Frame For Layer 5 After Preview
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate Switch To Level2 Detail Frame For Layer 5 After Preview Done
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate Switch To Level3 Detail Frame For Layer 5 After Preview
    [Tags]    REGRESSION
    Verify Switch To Level3 Detail Frame

Validate Switch To Level4 Detail Frame For Layer 5 After Preview
    [Tags]    REGRESSION
    Verify Switch To Level4 Detail Frame

Validate Click Report Export To Excel Button For Layer 5
    [Tags]    REGRESSION
    Verify Click Report Export To Excel Button If Expand Successful

Validate Click Report Export To CSV Button For Layer 5
    [Tags]    REGRESSION
    Verify Click Report Export To CSV Button If Expand Successful

Validate Switch To Level2 Detail Frame For Layer 5 After CSV
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate Switch To Level2 Detail Frame For Layer 5 After CSV Done
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate Switch To Level3 Detail Frame For Layer 5 After CSV
    [Tags]    REGRESSION
    Verify Switch To Level3 Detail Frame

Validate Switch To Level4 Detail Frame For Layer 5 After CSV
    [Tags]    REGRESSION
    Verify Switch To Level4 Detail Frame

Validate Click Report Export To PDF Button For Layer 5
    [Tags]    REGRESSION
    Verify Click Report Export To PDF Button If Expand Successful

Valdiate Layer 5 Report Title
    [Tags]    REGRESSION
    Verify Title Of Layer 5 Report         ${LAYER 5 REPORT TITLE}

Validate Close Detail Report Window
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Close IXReport Window
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Navigate to System Admin module For SMS
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select System Tab For SMS
    [Tags]    REGRESSION
    Click on System Tab

Validate Click Configuration Variables Button For SMS
    [Tags]    REGRESSION
    Verify Click Configuration Variables Button

Validate Set Variable Name For SMS
    [Tags]    REGRESSION
    Verify Set Variable Name    iXToolsWholesaleSolutionType

Validate Click Configuration Variables Grid Search Button For SMS
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Set Value In Current Value Column For SMS
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        2

Validate Close System Admin Window For SMS
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to Report Module For SMS
    [Tags]    REGRESSION
    Verify Switch To IXReport

Validate Expand Administrative Reports Section For SMS
    [Tags]    REGRESSION
    Verify Expand Reports Section       ${CDR REPORTS MENU}

Validate Click Sub Report Item For SMS
    [Tags]    REGRESSION
    Verify Click Sub Report Item        ${CDR ERROR REPORT SUBMENU}

Validate Set Begin Date For SMS
    [Tags]    REGRESSION
    Verify Set Begin Date       ${CDR ERROR REPORT DATE}

Validate Click Submit Button For SMS
    [Tags]    REGRESSION
    Verify Click Submit Button

Validate CDR Error Report Table Column Names For SMS
    [Tags]    REGRESSION
    Verify CDR Error Report Table Column Names      @{CDR ERROR REPORT TABLE COLUMN NAME LIST SMS}

Validate Click Report Preview Button For SMS
    [Tags]    REGRESSION
    Verify Click Report Preview Button

Validate Click Report Export To Excel Button For SMS
    [Tags]    REGRESSION
    Verify Click Report Export To Excel Button

Validate Click Report Export To CSV Button For SMS
    [Tags]    REGRESSION
    Verify Click Report Export To CSV Button

Validate Click Report Export To PDF Button For SMS
    [Tags]    REGRESSION
    Verify Click Report Export To PDF Button

Validate Click Error Type Name For SMS
    [Tags]    REGRESSION
    Verify Click First Row Error Type

Validate Switch To Level2 Detail Frame For SMS
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate CDR Error Report Layer 2 Table Column Names For SMS
    [Tags]    REGRESSION
    Verify CDR Error Report Layer 2 Table Column Names      @{CDR ERROR REPORT LAYER 2 TABLE COLUMN NAME LIST SMS}

Validate Click Report Preview Button For Layer 2 For SMS
    [Tags]    REGRESSION
    Verify Click Report Preview Button If Expand Successful

Validate Switch To Level2 Detail Frame After Preview For SMS
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate Click Report Export To Excel Button For Layer 2 For SMS
    [Tags]    REGRESSION
    Verify Click Report Export To Excel Button If Expand Successful

Validate Click Report Export To CSV Button For Layer 2 For SMS
    [Tags]    REGRESSION
    Verify Click Report Export To CSV Button If Expand Successful

Validate Switch To Level2 Detail Frame After CSV For SMS
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate Click Report Export To PDF Button For Layer 2 For SMS
    [Tags]    REGRESSION
    Verify Click Report Export To PDF Button If Expand Successful

Validate Expand Layer First Row For Layer 2 For SMS
    [Tags]    REGRESSION
    Verify Expand Layer First Row

Validate Switch To Level2 Detail Frame For Layer 3 For SMS
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate CDR Error Report Layer 3 Table Column Names For SMS
    [Tags]    REGRESSION
    Verify CDR Error Report Layer 3 Table Column Names      @{CDR ERROR REPORT LAYER 3 TABLE COLUMN NAME LIST SMS}

Validate Click Report Preview Button For Layer 3 For SMS
    [Tags]    REGRESSION
    Verify Click Report Preview Button If Expand Successful

Validate Switch To Level2 Detail Frame For Layer 3 After Preview For SMS
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate Switch To Level2 Detail Frame For Layer 3 After Preview Done For SMS
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate Click Report Export To Excel Button For Layer 3 For SMS
    [Tags]    REGRESSION
    Verify Click Report Export To Excel Button If Expand Successful

Validate Click Report Export To CSV Button For Layer 3 For SMS
    [Tags]    REGRESSION
    Verify Click Report Export To CSV Button If Expand Successful

Validate Switch To Level2 Detail Frame For Layer 3 After CSV For SMS
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate Switch To Level2 Detail Frame For Layer 3 After CSV Done For SMS
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate Click Report Export To PDF Button For Layer 3 For SMS
    [Tags]    REGRESSION
    Verify Click Report Export To PDF Button If Expand Successful

Validate Expand Layer First Row For Layer 3 For SMS
    [Tags]    REGRESSION
    Verify Expand Layer First Row

Validate Switch To Level3 Detail Frame For Layer 4 For SMS
    [Tags]    REGRESSION
    Verify Switch To Level3 Detail Frame

Validate CDR Error Report Layer 4 Table Column Names For SMS
    [Tags]    REGRESSION
    Verify CDR Error Report Layer 3 Table Column Names      @{CDR ERROR REPORT LAYER 4 TABLE COLUMN NAME LIST SMS}

Validate Click Report Preview Button For Layer 4 For SMS
    [Tags]    REGRESSION
    Verify Click Report Preview Button If Expand Successful

Validate Switch To Level2 Detail Frame For Layer 4 After Preview For SMS
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate Switch To Level2 Detail Frame For Layer 4 After Preview Done For SMS
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate Switch To Level3 Detail Frame For Layer 4 After Preview For SMS
    [Tags]    REGRESSION
    Verify Switch To Level3 Detail Frame

Validate Click Report Export To Excel Button For Layer 4 For SMS
    [Tags]    REGRESSION
    Verify Click Report Export To Excel Button If Expand Successful

Validate Click Report Export To CSV Button For Layer 4 For SMS
    [Tags]    REGRESSION
    Verify Click Report Export To CSV Button If Expand Successful

Validate Switch To Level2 Detail Frame For Layer 4 After CSV For SMS
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate Switch To Level2 Detail Frame For Layer 4 After CSV Done For SMS
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate Switch To Level3 Detail Frame For Layer 4 After CSV For SMS
    [Tags]    REGRESSION
    Verify Switch To Level3 Detail Frame

Validate Click Report Export To PDF Button For Layer 4 For SMS
    [Tags]    REGRESSION
    Verify Click Report Export To PDF Button If Expand Successful

Validate Expand Layer First Row For Layer 4 For SMS
    [Tags]    REGRESSION
    Verify Expand Layer First Row

Validate Switch To Level4 Detail Frame For Layer 5 For SMS
    [Tags]    REGRESSION
    Verify Switch To Level4 Detail Frame

Validate Click Report Preview Button For Layer 5 For SMS
    [Tags]    REGRESSION
    Verify Click Report Preview Button If Expand Successful

Validate Switch To Level2 Detail Frame For Layer 5 After Preview For SMS
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate Switch To Level2 Detail Frame For Layer 5 After Preview Done For SMS
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate Switch To Level3 Detail Frame For Layer 5 After Preview For SMS
    [Tags]    REGRESSION
    Verify Switch To Level3 Detail Frame

Validate Switch To Level4 Detail Frame For Layer 5 After Preview For SMS
    [Tags]    REGRESSION
    Verify Switch To Level4 Detail Frame

Validate Click Report Export To Excel Button For Layer 5 For SMS
    [Tags]    REGRESSION
    Verify Click Report Export To Excel Button If Expand Successful

Validate Click Report Export To CSV Button For Layer 5 For SMS
    [Tags]    REGRESSION
    Verify Click Report Export To CSV Button If Expand Successful

Validate Switch To Level2 Detail Frame For Layer 5 After CSV For SMS
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate Switch To Level2 Detail Frame For Layer 5 After CSV Done For SMS
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate Switch To Level3 Detail Frame For Layer 5 After CSV For SMS
    [Tags]    REGRESSION
    Verify Switch To Level3 Detail Frame

Validate Switch To Level4 Detail Frame For Layer 5 After CSV For SMS
    [Tags]    REGRESSION
    Verify Switch To Level4 Detail Frame

Validate Click Report Export To PDF Button For Layer 5 For SMS
    [Tags]    REGRESSION
    Verify Click Report Export To PDF Button If Expand Successful

Valdiate Layer 5 Report Title For SMS
    [Tags]    REGRESSION
    Verify Title Of Layer 5 Report         ${LAYER 5 REPORT TITLE}

Validate Close Detail Report Window For SMS
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Close IXReport Window For SMS
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Navigate to System Admin module For All
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select System Tab For All
    [Tags]    REGRESSION
    Click on System Tab

Validate Click Configuration Variables Button For All
    [Tags]    REGRESSION
    Verify Click Configuration Variables Button

Validate Set Variable Name For All
    [Tags]    REGRESSION
    Verify Set Variable Name    iXToolsWholesaleSolutionType

Validate Click Configuration Variables Grid Search Button For All
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Set Value In Current Value Column For All
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        3

Validate Close System Admin Window For All
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to Report Module For All
    [Tags]    REGRESSION
    Verify Switch To IXReport

Validate Expand Administrative Reports Section For All
    [Tags]    REGRESSION
    Verify Expand Reports Section       ${CDR REPORTS MENU}

Validate Click Sub Report Item For All
    [Tags]    REGRESSION
    Verify Click Sub Report Item        ${CDR ERROR REPORT SUBMENU}

Validate Set Begin Date For All
    [Tags]    REGRESSION
    Verify Set Begin Date       ${CDR ERROR REPORT DATE}

Validate Click Submit Button For All
    [Tags]    REGRESSION
    Verify Click Submit Button

Validate CDR Error Report Table Column Names For All
    [Tags]    REGRESSION
    Verify CDR Error Report Table Column Names      @{CDR ERROR REPORT TABLE COLUMN NAME LIST}

Validate Click Report Preview Button For All
    [Tags]    REGRESSION
    Verify Click Report Preview Button

Validate Click Report Export To Excel Button For All
    [Tags]    REGRESSION
    Verify Click Report Export To Excel Button

Validate Click Report Export To CSV Button For All
    [Tags]    REGRESSION
    Verify Click Report Export To CSV Button

Validate Click Report Export To PDF Button For All
    [Tags]    REGRESSION
    Verify Click Report Export To PDF Button

Validate Click Error Type Name For All
    [Tags]    REGRESSION
    Verify Click First Row Error Type

Validate Switch To Level2 Detail Frame For All
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate CDR Error Report Layer 2 Table Column Names For All
    [Tags]    REGRESSION
    Verify CDR Error Report Layer 2 Table Column Names      @{CDR ERROR REPORT LAYER 2 TABLE COLUMN NAME LIST}

Validate Click Report Preview Button For Layer 2 For All
    [Tags]    REGRESSION
    Verify Click Report Preview Button If Expand Successful

Validate Switch To Level2 Detail Frame After Preview For All
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate Click Report Export To Excel Button For Layer 2 For All
    [Tags]    REGRESSION
    Verify Click Report Export To Excel Button If Expand Successful

Validate Click Report Export To CSV Button For Layer 2 For All
    [Tags]    REGRESSION
    Verify Click Report Export To CSV Button If Expand Successful

Validate Switch To Level2 Detail Frame After CSV For All
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate Click Report Export To PDF Button For Layer 2 For All
    [Tags]    REGRESSION
    Verify Click Report Export To PDF Button If Expand Successful

Validate Expand Layer First Row For Layer 2 For All
    [Tags]    REGRESSION
    Verify Expand Layer First Row

Validate Switch To Level2 Detail Frame For Layer 3 For All
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate CDR Error Report Layer 3 Table Column Names For All
    [Tags]    REGRESSION
    Verify CDR Error Report Layer 3 Table Column Names      @{CDR ERROR REPORT LAYER 3 TABLE COLUMN NAME LIST}

Validate Click Report Preview Button For Layer 3 For All
    [Tags]    REGRESSION
    Verify Click Report Preview Button If Expand Successful

Validate Switch To Level2 Detail Frame For Layer 3 After Preview For All
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate Switch To Level2 Detail Frame For Layer 3 After Preview Done For All
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate Click Report Export To Excel Button For Layer 3 For All
    [Tags]    REGRESSION
    Verify Click Report Export To Excel Button If Expand Successful

Validate Click Report Export To CSV Button For Layer 3 For All
    [Tags]    REGRESSION
    Verify Click Report Export To CSV Button If Expand Successful

Validate Switch To Level2 Detail Frame For Layer 3 After CSV For All
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate Switch To Level2 Detail Frame For Layer 3 After CSV Done For All
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate Click Report Export To PDF Button For Layer 3 For All
    [Tags]    REGRESSION
    Verify Click Report Export To PDF Button If Expand Successful

Validate Expand Layer First Row For Layer 3 For All
    [Tags]    REGRESSION
    Verify Expand Layer First Row

Validate Switch To Level3 Detail Frame For Layer 4 For All
    [Tags]    REGRESSION
    Verify Switch To Level3 Detail Frame

Validate CDR Error Report Layer 4 Table Column Names For All
    [Tags]    REGRESSION
    Verify CDR Error Report Layer 3 Table Column Names      @{CDR ERROR REPORT LAYER 4 TABLE COLUMN NAME LIST}

Validate Click Report Preview Button For Layer 4 For All
    [Tags]    REGRESSION
    Verify Click Report Preview Button If Expand Successful

Validate Switch To Level2 Detail Frame For Layer 4 After Preview For All
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate Switch To Level2 Detail Frame For Layer 4 After Preview Done For All
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate Switch To Level3 Detail Frame For Layer 4 After Preview For All
    [Tags]    REGRESSION
    Verify Switch To Level3 Detail Frame

Validate Click Report Export To Excel Button For Layer 4 For All
    [Tags]    REGRESSION
    Verify Click Report Export To Excel Button If Expand Successful

Validate Click Report Export To CSV Button For Layer 4 For All
    [Tags]    REGRESSION
    Verify Click Report Export To CSV Button If Expand Successful

Validate Switch To Level2 Detail Frame For Layer 4 After CSV For All
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate Switch To Level2 Detail Frame For Layer 4 After CSV Done For All
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate Switch To Level3 Detail Frame For Layer 4 After CSV For All
    [Tags]    REGRESSION
    Verify Switch To Level3 Detail Frame

Validate Click Report Export To PDF Button For Layer 4 For All
    [Tags]    REGRESSION
    Verify Click Report Export To PDF Button If Expand Successful

Validate Expand Layer First Row For Layer 4 For All
    [Tags]    REGRESSION
    Verify Expand Layer First Row

Validate Switch To Level4 Detail Frame For Layer 5 For All
    [Tags]    REGRESSION
    Verify Switch To Level4 Detail Frame

Validate Click Report Preview Button For Layer 5 For All
    [Tags]    REGRESSION
    Verify Click Report Preview Button If Expand Successful

Validate Switch To Level2 Detail Frame For Layer 5 After Preview For All
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate Switch To Level2 Detail Frame For Layer 5 After Preview Done For All
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate Switch To Level3 Detail Frame For Layer 5 After Preview For All
    [Tags]    REGRESSION
    Verify Switch To Level3 Detail Frame

Validate Switch To Level4 Detail Frame For Layer 5 After Preview For All
    [Tags]    REGRESSION
    Verify Switch To Level4 Detail Frame

Validate Click Report Export To Excel Button For Layer 5 For All
    [Tags]    REGRESSION
    Verify Click Report Export To Excel Button If Expand Successful

Validate Click Report Export To CSV Button For Layer 5 For All
    [Tags]    REGRESSION
    Verify Click Report Export To CSV Button If Expand Successful

Validate Switch To Level2 Detail Frame For Layer 5 After CSV For All
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate Switch To Level2 Detail Frame For Layer 5 After CSV Done For All
    [Tags]    REGRESSION
    Verify Switch To Level2 Detail Frame

Validate Switch To Level3 Detail Frame For Layer 5 After CSV For All
    [Tags]    REGRESSION
    Verify Switch To Level3 Detail Frame

Validate Switch To Level4 Detail Frame For Layer 5 After CSV For All
    [Tags]    REGRESSION
    Verify Switch To Level4 Detail Frame

Validate Click Report Export To PDF Button For Layer 5 For All
    [Tags]    REGRESSION
    Verify Click Report Export To PDF Button If Expand Successful

Valdiate Layer 5 Report Title For All
    [Tags]    REGRESSION
    Verify Title Of Layer 5 Report         ${LAYER 5 REPORT TITLE}

Validate Close Detail Report Window For All
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Close IXReport Window For All
    [Tags]    REGRESSION
    Verify Close IxReport Window