*** Settings ***
Documentation     [TAENOSIS-819] A Test Suite With Set Of Tests To Validate All Extracts Should Be Available For The User With Role Developers Only

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixreport_page_resource.robot
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

Validate Set Variable Name To Set iXToolsWholesaleSolutionType As 3
    [Tags]    REGRESSION
    Verify Set Variable Name    iXToolsWholesaleSolutionType

Validate Click Configuration Variables Grid Search Button To Set iXToolsWholesaleSolutionType As 3
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Set Value In Current Value Column To Set iXToolsWholesaleSolutionType As 3
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        3

Validate Close System Admin Window
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to Report Module
    [Tags]    REGRESSION
    Verify Switch To IXReport

Validate Select Extracts Submenu
    [Tags]    REGRESSION
    Verify Select Extracts Submenu

Validate Click Extract List New Button
    [Tags]    REGRESSION
    Verify Click Extract List New Button

Validate Cost, Revenue and ASR Extract Is Present
    [Tags]    REGRESSION
    Verify Extract Is Present        Extract - ${COST REVENUE AND ASR REPORT SUBMENU}

Validate Cost, Revenue and ASR Report DA Extract Is Present
    [Tags]    REGRESSION
    Verify Extract Is Present        Extract - ${COST REVENUE AND ASR REPORT DA SUBMENU}

Validate Cost, Revenue and ASR Report MA Extract Is Present
    [Tags]    REGRESSION
    Verify Extract Is Present        Extract - ${COST REVENUE AND ASR REPORT MA SUBMENU}

Validate Cost and ASR Report Extract Is Present
    [Tags]    REGRESSION
    Verify Extract Is Present        Extract - ${COST AND ASR REPORT SUBMENU}

Validate Customer Specific Margin Report Is Present
    [Tags]    REGRESSION
    Verify Extract Is Present        Extract - ${CUSTOMER SPECIFIC MARGIN REPORT SUBMENU}

Validate Margin In And Out Report Present
    [Tags]    REGRESSION
    Verify Extract Is Present        Extract - ${MARGIN IN AND OUT REPORT SUBMENU}

Validate Margin Out Report Is Present
    [Tags]    REGRESSION
    Verify Extract Is Present        Extract - ${MARGIN OUT REPORT SUBMENU}

Validate Margin Report Extract Is Present
    [Tags]    REGRESSION
    Verify Extract Is Present        Extract - ${MARGIN REPORT SUBMENU}

Validate Revenue and ASR Report Extract Is Present
    [Tags]    REGRESSION
    Verify Extract Is Present        Extract - ${REVENUE AND ASR REPORT SUBMENU}

Validate Daily Raw Cost Revenue and ASR DO Extract Is Present
    [Tags]    REGRESSION
    Verify Extract Is Present        Extract - ${DAILY RAW COST REVENUE AND ASR DO SUBMENU}

Validate Master Cost Revenue and ASR Extract Is Present
    [Tags]    REGRESSION
    Verify Extract Is Present        Extract - ${MASTER COST REVENUE AND ASR REPORT SUBMENU}

Validate Monthly Raw Cost Revenue and ASR DO Extract Is Present
    [Tags]    REGRESSION
    Verify Extract Is Present        Extract - ${MONTHLY RAW COST REVENUE AND ASR SUBMENU}

Validate Suspect Rate Report Extract Is Present
    [Tags]    REGRESSION
    Verify Extract Is Present        Extract - ${SUSPECT RATE REPORT SUBMENU}

Validate PCR Raw Cost Revenue And ASR Report Extract Is Present
    [Tags]    REGRESSION
    Verify Extract Is Present        Extract - ${PCR RAW COST REVENUE AND ASR REPORT SUBMENU}

Validate Quality of Service Report Extract Is Present
    [Tags]    REGRESSION
    Verify Extract Is Present        Extract - ${QUALITY SERVICE REPORT SUBMENU}

Validate Monthly Cost And ASR Report Extract Is Present
    [Tags]    REGRESSION
    Verify Extract Is Present        Extract - ${MONTHLY COST AND ASR SUBMENU}

Validate Monthly Cost Revenue And ASR Report Extract Is Present
    [Tags]    REGRESSION
    Verify Extract Is Present        Extract - ${MONTHLY COST REVENUE AND ASR REPORT SUBMENU}

Validate Monthly Customer Specific Report Extract Is Present
    [Tags]    REGRESSION
    Verify Extract Is Present        Extract - ${MONTHLY CUSTOMER SPECIFIC MARGIN REPORT SUBMENU}

Validate Monthly Margin Report Extract Is Present
    [Tags]    REGRESSION
    Verify Extract Is Present        Extract - ${MONTHLY REVENUE AND ASR SUBMENU}

Validate Traffic Usage Report Extract Is Present
    [Tags]    REGRESSION
    Verify Extract Is Present        Extract - ${TRAFFIC USAGE REPORT SUBMENU}

Validate Daily Weekly Carrier Margin Report Extract Is Present
    [Tags]    REGRESSION
    Verify Extract Is Present        Extract - ${DAILY WEEKLY CARRIER MARGIN REPORT SUBMENU}

Validate Daily Weekly Carrier Revenue And ASR Extract Is Present
    [Tags]    REGRESSION
    Verify Extract Is Present        Extract - ${DAILY WEEKLY CARRIER REVENUE AND ASR SUBMENU}

Validate Monthly Carrier Margin Report Extract Is Present
    [Tags]    REGRESSION
    Verify Extract Is Present        Extract - ${MONTHLY CARRIER MARGIN REPORT SUBMENU}

Validate Monthly Carrier Revenue And ASR Report Extract Is Present
    [Tags]    REGRESSION
    Verify Extract Is Present        Extract - ${MONTHLY CARRIER REVENUE AND ASR REPORT SUBMENU}

Validate In Out ASR Report Extract Is Present
    [Tags]    REGRESSION
    Verify Extract Is Present        Extract - ${IN OUT ASR REPORT SUBMENU}

Validate Monthly In Out ASR Report Extract Is Present
    [Tags]    REGRESSION
    Verify Extract Is Present        Extract - ${MONTHLY IN OUT ASR REPORT SUBMENU}

Validate NGN Quality Of Service Report Extract Is Present
    [Tags]    REGRESSION
    Verify Extract Is Present        Extract - ${NGN QUALITY OF SERVICE REPORT SUBMENU}

Validate Quality Of Service With Benchmarks Extract Is Present
    [Tags]    REGRESSION
    Verify Extract Is Present        Extract - ${QUALITY OF SERVICE WITH BENCHMARKS SUBMENU}

Validate Close Extract Pop Up
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Close IxReport Window
    [Tags]    REGRESSION
    Verify Close IxReport Window
