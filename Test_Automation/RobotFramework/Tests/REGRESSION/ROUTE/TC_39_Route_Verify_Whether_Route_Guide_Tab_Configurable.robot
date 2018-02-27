*** Settings ***
Documentation     A Test Suite With Set Of Tests To Verify Whether Route Guide Tab Configurable

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/route_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/route_page_test_data_source.robot

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
    Verify Set Variable Name    RGWorksheetUIOption

Validate Click Configuration Variables Grid Search Button
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Set Value In Current Value Column
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        0

Validate Close System Admin Window
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to Route module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Route' From Main Menu

Validate Navigate to Commercial Routing Tab
    [Tags]    REGRESSION
    Verify Select Commercial Routing Tab

Validate Set Routing Product For Search
    [Tags]    REGRESSION
    Verify Set Routing Product For Search       ${ROUTING PRODUCT}

Valiadte Click Commercial Routing Grid Search Button
    [Tags]    REGRESSION
    Verify Click Commercial Routing Grid Search Button

Validate Click Commercial Routing Grid First Row Routing Product Link
    [Tags]    REGRESSION
    Verify Click Commercial Routing Grid First Row Routing Product Link

Validate The Suggested Trunk Grid Is Available
    [Tags]    REGRESSION
    Verify The Suggested Trunk Grid Is Available

Validate The Available Worksheets Grid Is Available
    [Tags]    REGRESSION
    Verify The Available Worksheets Grid Is Available

Validate Select Excluded Trunks Radio Button
    [Tags]    REGRESSION
    Verify Select Excluded Trunks Radio Button

Validate The Excluded Trunks Grid Is Available
    [Tags]    REGRESSION
    Verify The Excluded Trunks Grid Is Available

Validate Set Override In Grid
    [Tags]    REGRESSION
    Verify Set Override In Grid     ${OVERRIDE RANK}

Validate Suggested Trunk Grid Begin Date
    [Tags]    REGRESSION
    Verify Suggested Trunk Grid Begin Date

Validate Suggested Trunk Grid End Date
    [Tags]    REGRESSION
    Verify Suggested Trunk Grid End Date

Validate Click Suggested Trunks Cancel Changes Button
    [Tags]    REGRESSION
    Verify Click Suggested Trunks Cancel Changes Button

Validate Click Save And Recalculate Button
    [Tags]    REGRESSION
    Verify Click Save And Recalculate Button

Validate Close Route Window
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to System Admin module To Set RGWorksheetUIOption To 1
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select System Tab To Set RGWorksheetUIOption To 1
    [Tags]    REGRESSION
    Click on System Tab

Validate Click Configuration Variables Button To Set RGWorksheetUIOption To 1
    [Tags]    REGRESSION
    Verify Click Configuration Variables Button

Validate Set Variable Name To Set RGWorksheetUIOption To 1
    [Tags]    REGRESSION
    Verify Set Variable Name    RGWorksheetUIOption

Validate Click Configuration Variables Grid Search Button To Set RGWorksheetUIOption To 1
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Set Value In Current Value Column To Set RGWorksheetUIOption To 1
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        1

Validate Close System Admin Window After Setting RGWorksheetUIOption To 1
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to Route module After Setting RGWorksheetUIOption To 1
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Route' From Main Menu

Validate Navigate to Commercial Routing Tab After Setting RGWorksheetUIOption To 1
    [Tags]    REGRESSION
    Verify Select Commercial Routing Tab

Validate Set Routing Product For Search After Setting RGWorksheetUIOption To 1
    [Tags]    REGRESSION
    Verify Set Routing Product For Search       ${ROUTING PRODUCT}

Valiadte Click Commercial Routing Grid Search Button After Setting RGWorksheetUIOption To 1
    [Tags]    REGRESSION
    Verify Click Commercial Routing Grid Search Button

Validate Click Commercial Routing Grid First Row Routing Product Link After Setting RGWorksheetUIOption To 1
    [Tags]    REGRESSION
    Verify Click Commercial Routing Grid First Row Routing Product Link

Validate The Available Worksheets Grid Is Not Available
    [Tags]    REGRESSION
    Verify The Available Worksheets Grid Is Not Available