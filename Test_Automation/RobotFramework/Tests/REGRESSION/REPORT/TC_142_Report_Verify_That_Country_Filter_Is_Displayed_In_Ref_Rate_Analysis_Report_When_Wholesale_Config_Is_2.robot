*** Settings ***
Documentation     [TAENOSIS-1007] A Test Suite With Set Of Tests For Verify That Country Filter Is Displayed In Ref Rate Analysis Report When Wholesale Congif Is 2

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixreport_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/ixreport_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Valdiate Navigate To System Admin Module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Valdiate Click on System Tab
    [Tags]    REGRESSION
    Click on System Tab

Valdiate Click Configuration Variables Button
    [Tags]    REGRESSION
    Verify Click Configuration Variables Button

Validate Set Variable Name For iXToolsWholesaleSolutionType
    [Tags]    REGRESSION
    Verify Set Variable Name    iXToolsWholesaleSolutionType

Validate Click Configuration Variables Grid Search Button For iXToolsWholesaleSolutionType
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Store Preset Config Variable Current Value For iXToolsWholesaleSolutionType
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column    2

Validate Close System Admin Window
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Switch To IXReport
    [Tags]    REGRESSION
    Verify Switch To IXReport

Validate Expand Administrative Reports Section
    [Tags]    REGRESSION
    Verify Expand Reports Section       ${IXTRADE REPORTS MENU}

Validate Click Sub Report Item
    [Tags]    REGRESSION
    Verify Click Sub Report Item        ${REFERENCE RATE ANALYSIS REPORT SUBMENU}

Validate Country Filter Is Available
    [Tags]    REGRESSION
    Verify Country Filter Is Available

Validate Click Country Browse Button
    [Tags]    REGRESSION
    Verify Click Country Browse Button

Validate Country Filter Has Countries
    [Tags]    REGRESSION
    Verify Country Filter Has Countries

Validate Close Country Pop Up
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Close IXReport Window
    [Tags]    REGRESSION
    Verify Close IxReport Window

Valdiate Navigate To System Admin Module For Wholesale to 1
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Valdiate Click on System Tab For Wholesale to 1
    [Tags]    REGRESSION
    Click on System Tab

Valdiate Click Configuration Variables Button For Wholesale to 1
    [Tags]    REGRESSION
    Verify Click Configuration Variables Button

Validate Set Variable Name For iXToolsWholesaleSolutionType For Wholesale to 1
    [Tags]    REGRESSION
    Verify Set Variable Name    iXToolsWholesaleSolutionType

Validate Click Configuration Variables Grid Search Button For iXToolsWholesaleSolutionType For Wholesale to 1
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Store Preset Config Variable Current Value For iXToolsWholesaleSolutionType For Wholesale to 1
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column    1

Validate Close System Admin Window For Wholesale to 1
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Switch To IXReport For Wholesale to 1
    [Tags]    REGRESSION
    Verify Switch To IXReport

Validate Expand Administrative Reports Section For Wholesale to 1
    [Tags]    REGRESSION
    Verify Expand Reports Section       ${IXTRADE REPORTS MENU}

Validate Click Sub Report Item For Wholesale to 1
    [Tags]    REGRESSION
    Verify Click Sub Report Item        ${REFERENCE RATE ANALYSIS REPORT SUBMENU}

Validate Country Filter Is Not Available For Wholesale to 1
    [Tags]    REGRESSION
    Verify Country Filter Is Not Available

Validate Close IXReport Window For Wholesale to 1
    [Tags]    REGRESSION
    Verify Close IxReport Window

Valdiate Navigate To System Admin Module For Wholesale to 3
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Valdiate Click on System Tab For Wholesale to 3
    [Tags]    REGRESSION
    Click on System Tab

Valdiate Click Configuration Variables Button For Wholesale to 3
    [Tags]    REGRESSION
    Verify Click Configuration Variables Button

Validate Set Variable Name For iXToolsWholesaleSolutionType For Wholesale to 3
    [Tags]    REGRESSION
    Verify Set Variable Name    iXToolsWholesaleSolutionType

Validate Click Configuration Variables Grid Search Button For iXToolsWholesaleSolutionType For Wholesale to 3
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Store Preset Config Variable Current Value For iXToolsWholesaleSolutionType For Wholesale to 3
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column    3

Validate Close System Admin Window For Wholesale to 3
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Switch To IXReport For Wholesale to 3
    [Tags]    REGRESSION
    Verify Switch To IXReport

Validate Expand Administrative Reports Section For Wholesale to 3
    [Tags]    REGRESSION
    Verify Expand Reports Section       ${IXTRADE REPORTS MENU}

Validate Click Sub Report Item For Wholesale to 3
    [Tags]    REGRESSION
    Verify Click Sub Report Item        ${REFERENCE RATE ANALYSIS REPORT SUBMENU}

Validate Country Filter Is Not Available For Wholesale to 3
    [Tags]    REGRESSION
    Verify Country Filter Is Not Available

Validate Close IXReport Window For Wholesale to 3
    [Tags]    REGRESSION
    Verify Close IxReport Window