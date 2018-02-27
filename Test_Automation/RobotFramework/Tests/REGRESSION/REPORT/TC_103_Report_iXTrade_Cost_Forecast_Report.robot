*** Settings ***
Documentation     [TAENOSIS-798] A Test Suite With Set Of Tests For Verify iXTrade Cost Forecasr Report

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixreport_page_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/ixreport_page_test_data_source.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/price_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CALL TYPE}        ${EMPTY}
${ROUTE CLASS}      ${EMPTY}

*** Test Cases ***
Validate Navigate to Price module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate The Cost Policies Tab Is Available
    [Tags]    REGRESSION
    Verify The Cost Policies Tab Is Available

Validate Get Call Type
    [Tags]    REGRESSION
    ${CALL TYPE} =   Verify Get Call Type
    log  ${CALL TYPE}
    set suite variable      ${CALL TYPE}

Validate Get Created Route Class
    [Tags]    REGRESSION
    ${ROUTE CLASS} =    Verify Get Route Class
    set suite variable      ${ROUTE CLASS}

Validate Navigate to Cost Policies Tab
    [Tags]    REGRESSION
    Click on Cost Policies Tab

Vlidate Click Create New Cost Policy
    [Tags]    REGRESSION
    Verify Click Create New Cost Policy

Validate Set Cost Policy Name
    [Tags]    REGRESSION
    Verify Set Cost Policy Name     ${TEST DATA PREFIX}

Validate Set Abbreviation
    [Tags]    REGRESSION
    Verify Set Cost Policy Abbreviation

Validate Set Cost Policy Status
    [Tags]    REGRESSION
    Verify Set Cost Policy Status       ${COST POLICY ACTIVE STATUS}

Validate Set Cost Policy Type
    [Tags]    REGRESSION
    Verify Set Cost Policy Type     ${COST POLICY TYPE}

Validate Set Call Type
    [Tags]    REGRESSION
    Verify Set Cost Policy Call Type        ${CALL TYPE}

Validate Set Route Class
    [Tags]    REGRESSION
    Verify Set Cost Policy Route Class      ${ROUTE CLASS}

Validate Click Create policy Save Button
    [Tags]    REGRESSION
    Verify Click Create Cost Policy Save Button

Validate Close Price Window
    [Tags]    REGRESSION
    Verify Close Price Window

Validate Navigate to Report Module
    [Tags]    REGRESSION
    Verify Switch To IXReport

Validate Expand Network Reports Section
    [Tags]    REGRESSION
    Verify Expand Reports Section       ${IXTRADE REPORTS MENU}

Validate Click Sub Report Item
    [Tags]    REGRESSION
    Verify Click Sub Report Item        ${COST FORECAST REPORT SUBMENU}

Validate Click Submit Button
    [Tags]    REGRESSION
    ixreport_page_resource.Verify Click Submit Button

Validate The Cost Test Column Is Not Present In Report Page
    [Tags]    REGRESSION
    Verify The Specific Column Is Not Present In Report Page        Cost

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

Validate Click Source Browse Button To Select Two Source
    [Tags]    REGRESSION
    Verify Click Source Browse Button

Validate Move Available Source to Assigned
    [Tags]    REGRESSION
    Verify Move Available Rate Plan to Assigned

Validate Move Available 2nd Source to Assigned
    [Tags]    REGRESSION
    Verify Move Available Rate Plan to Assigned

Validate Click Source Selection Submit Button
    [Tags]    REGRESSION
    Verify Click Account Rate Plan Selection Submit Button

Validate Click Submit Button After Selecting Two Source
    [Tags]    REGRESSION
    ixreport_page_resource.Verify Click Submit Button

Validate The Cost Test Column Is Not Present In Report Page For Two Source
    [Tags]    REGRESSION
    Verify The Specific Column Is Not Present In Report Page        Cost

Validate Close Detail Report Window
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Click Sub Report Item To Select One Source
    [Tags]    REGRESSION
    Verify Click Sub Report Item        ${COST FORECAST REPORT SUBMENU}

Validate Click Source Browse Button To Select One Source
    [Tags]    REGRESSION
    Verify Click Source Browse Button

Validate Move Available Source to Assigned To Select One Source
    [Tags]    REGRESSION
    Verify Move Available Rate Plan to Assigned

Validate Click Source Selection Submit Button To Select One Source
    [Tags]    REGRESSION
    Verify Click Account Rate Plan Selection Submit Button

Validate Click Submit Button After Selecting One Source
    [Tags]    REGRESSION
    ixreport_page_resource.Verify Click Submit Button

Validate The Cost Test Column Is Present In Report Page
    [Tags]    REGRESSION
    Verify The Specific Column Is Present In Report Page        Cost

Validate Close Detail Report Window Finally
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Close IXReport Window Finally
    [Tags]    REGRESSION
    Verify Close IxReport Window