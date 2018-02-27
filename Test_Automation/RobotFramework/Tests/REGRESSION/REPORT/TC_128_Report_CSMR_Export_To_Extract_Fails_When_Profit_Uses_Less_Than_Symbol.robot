*** Settings ***
Documentation     [TAENOSIS-821] A Test Suite With Set Of Tests For Verify CSMR Export To Extract Fails When Profit Uses Less Than Symbol

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
    Verify Expand Reports Section       ${DAILY OPERATIONAL REPORTS MENU}

Validate Click Sub Report Item
    [Tags]    REGRESSION
    Verify Click Sub Report Item        ${CUSTOMER SPECIFIC MARGIN REPORT SUBMENU}

Validate Set Profit Symbol For Drilldown
    [Tags]    REGRESSION
    Verify Set Profit Symbol        <

Validate Set Profit Value For Drilldown
    [Tags]    REGRESSION
    Verify Set Profit Value         1234

Validate Click Submit Button For Drilldown
    [Tags]    REGRESSION
    Verify Click Submit Button With ID

Validate Click Report Export To Excel Button For Drilldown
    [Tags]    REGRESSION
    Verify Click Report Export To Excel Button

Validate Click Report Export To CSV Button For Drilldown
    [Tags]    REGRESSION
    Verify Click Report Export To Csv Button

Validate Close Detail Report Window After Setting Profit For Drilldown
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Click Tabular Tab On Report Page
    [Tags]    REGRESSION
    Verify Click Specific Tab On Report Page        Tabular

Validate Set Profit Symbol For Tabular
    [Tags]    REGRESSION
    Verify Set Profit Symbol        <

Validate Set Profit Value For Tabular
    [Tags]    REGRESSION
    Verify Set Profit Value         1234

Validate Click Submit Button For Tabular
    [Tags]    REGRESSION
    Verify Click Submit Button With ID

Validate Click Report Export To Excel Button For Tabular
    [Tags]    REGRESSION
    Verify Click Report Export To Excel Button

Validate Click Report Export To CSV Button For Tabular
    [Tags]    REGRESSION
    Verify Click Report Export To Csv Button

Validate Close Detail Report Window After Setting Profit For Tabular
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Click Standard Tab On Report Page
    [Tags]    REGRESSION
    Verify Click Specific Tab On Report Page        Standard

Validate Set Profit Symbol For Standard
    [Tags]    REGRESSION
    Verify Set Profit Symbol        <

Validate Set Profit Value For Standard
    [Tags]    REGRESSION
    Verify Set Profit Value         1234

Validate Click Submit Button For Standard
    [Tags]    REGRESSION
    Verify Click Submit Button With ID

Validate Click Report Export To Excel Button For Standard
    [Tags]    REGRESSION
    Verify Click Report Export To Excel Button

Validate Click Report Export To CSV Button For Standard
    [Tags]    REGRESSION
    Verify Click Report Export To Csv Button

Validate Close Detail Report Window After Setting Profit For Standard
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Close Report Page Exit Button
    [Tags]    REGRESSION
    Verify Click Report Page Exit Button