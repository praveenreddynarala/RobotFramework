*** Settings ***
Documentation     [TAENOSIS-744] A Test Suite With Set Of Tests For Verify iXTranslate Delta Report

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixreport_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/ixreport_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Report Module
    [Tags]    REGRESSION
    Verify Switch To IXReport

Validate Expand iXTranslate Reports Section
    [Tags]    REGRESSION
    Verify Expand Reports Section       ${IXTRANSLATE REPORTS MENU}

Validate Click Sub Report Item
    [Tags]    REGRESSION
    Verify Click Sub Report Item        ${DELTA REPORT SUBMENU}

Validate Click Submit Button To Verify Warning Message
    [Tags]    REGRESSION
    Verify Click Submit Button To Verify Warning Message

Validate Set Delta Report Item
    [Tags]    REGRESSION
    Verify Set Delta Report Item     ${DESTINATION ITEM NAME}

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