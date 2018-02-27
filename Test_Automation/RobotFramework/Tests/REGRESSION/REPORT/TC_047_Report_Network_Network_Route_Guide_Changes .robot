*** Settings ***
Documentation     [TAENOSIS-724] A Test Suite With Set Of Tests For Verify Network Route Guide Changes

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixreport_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/ixreport_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Report Module
    [Tags]    REGRESSION
    Verify Switch To IXReport

Validate Expand Network Reports Section
    [Tags]    REGRESSION
    Verify Expand Reports Section       ${NETWORKS REPORTS MENU}

Validate Click Sub Report Item
    [Tags]    REGRESSION
    Verify Click Sub Report Item        ${NETWORK ROUTE GUIDE CHANGES REPORT SUBMENU}

Validate Set Route Class
    [Tags]    REGRESSION
    Verify Set Route Class      ${STANDARD ROUTE CLASS}

Validate Click Submit Button To Validate Report
    [Tags]    REGRESSION
    Verify Click Submit Button

Validate Close Detail Report Window After Validating Report
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Set Route Class For Premium
    [Tags]    REGRESSION
    Verify Set Route Class      ${PREMIUM ROUTE CLASS}

Validate Click Submit Button To Validate Report For Premium
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

Validate Close Detail Report Window After Preview Done
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Close Detail Report Window After Generating Report For Outbound
    [Tags]    REGRESSION
    Verify Close IxReport Window