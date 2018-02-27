*** Settings ***
Documentation     [TAENOSIS-1009] A Test Suite With Set Of Tests to Verify IXRoute Rate Change Impact Report

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
    Verify Expand Reports Section       ${IXROUTE REPORTS MENU}

Validate Click Sub Report Item
    [Tags]    REGRESSION
    Verify Click Sub Report Item        ${RATE CHANGE IMPACT REPORT SUBMENU}

Validate Set Minutes
    [Tags]    REGRESSION
    Verify Set Minutes      100

Validate Click Submit Button
    [Tags]    REGRESSION
    ixreport_page_resource.Verify Click Submit Button

Validate Begin Date of New Rate Column Is Present In Report Page
    [Tags]    REGRESSION
    Verify The Specific Column Is Present In Report Page        Begin Date of New Rate

Validate New Rate Column Is Present In Report Page
    [Tags]    REGRESSION
    Verify The Specific Column Is Present In Report Page        New Rate

Validate Old Rate Column Is Present In Report Page
    [Tags]    REGRESSION
    Verify The Specific Column Is Present In Report Page        Old Rate

Validate Impact Column Is Present In Report Page
    [Tags]    REGRESSION
    Verify The Specific Column Is Present In Report Page        Impact

Validate Actual Rate Change in RP Currency Column Is Present In Report Page
    [Tags]    REGRESSION
    Verify The Specific Column Is Present In Report Page        Actual Rate Change in RP Currency

Validate Exchange Rate Impact Column Is Present In Report Page
    [Tags]    REGRESSION
    Verify The Specific Column Is Present In Report Page        Exchange Rate Impact

Validate Rate Calculation Method Column Is Present In Report Page
    [Tags]    REGRESSION
    Verify The Specific Column Is Present In Report Page        Rate Calculation Method

Validate Minutes Column Is Present In Report Page
    [Tags]    REGRESSION
    Verify The Specific Column Is Present In Report Page        Minutes

Validate First Row Column Value of Actual Rate Change In Rp Currency Column
    [Tags]    REGRESSION
    Verify First Row Column Value of Actual Rate Change In Rp Currency Column

Validate First Row Column Value of Exchange Rate Impact Column
    [Tags]    REGRESSION
    Verify First Row Column Value of Exchange Rate Impact Column

Validate First Row Column Value of Rate Calculation Method Column
    [Tags]    REGRESSION
    Verify First Row Column Value of Rate Calculation Method Column

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

Validate Close Detail Report Window
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Close IXReport Window
    [Tags]    REGRESSION
    Verify Close IxReport Window