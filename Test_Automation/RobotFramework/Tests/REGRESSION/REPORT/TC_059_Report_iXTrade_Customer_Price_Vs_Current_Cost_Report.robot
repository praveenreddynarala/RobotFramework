*** Settings ***
Documentation     [TAENOSIS-732] A Test Suite With Set Of Tests For Verify iXTrdae Customer Price Vs Current Cost Report

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
    Verify Expand Reports Section       ${IXTRADE REPORTS MENU}

Validate Click Sub Report Item
    [Tags]    REGRESSION
    Verify Click Sub Report Item        ${CUSTOMER PRICE VS CURRENT COST REPORT SUBMENU}

Validate Click Number Plan Browse Button
    [Tags]    REGRESSION
    Verify Click Number Plan Browse Button

Validate Set First Letters For Outbound Ref
    [Tags]    REGRESSION
    Verify Set First Letters    ${OUTBOUND REF NUMBER PLAN}

Validate Click Go Button For Outbound Ref
    [Tags]    REGRESSION
    Verify Click Go Button

Validate Select Row From Look Up Table
    [Tags]    REGRESSION
    Verify Select Row From Look Up Table        ${OUTBOUND REF NUMBER PLAN}

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

Validate Close Detail Report Window After Preview Done
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Close Detail Report Window After Generating Report For Outbound
    [Tags]    REGRESSION
    Verify Close IxReport Window