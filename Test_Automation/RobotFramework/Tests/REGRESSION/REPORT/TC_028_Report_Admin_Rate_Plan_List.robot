*** Settings ***
Documentation     A Test Suite With Set Of Tests For Verify Admin Rete Plan List

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixreport_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/ixreport_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${TARIFF TYPE}      ${EMPTY}

*** Test Cases ***
Validate Navigate to Report Module
    [Tags]    REGRESSION
    Verify Switch To IXReport

Validate Expand Administrative Reports Section
    [Tags]    REGRESSION
    Verify Expand Reports Section       ${ADMINISTRATIVE REPORTS MENU}

Validate Click Sub Report Item
    [Tags]    REGRESSION
    Verify Click Sub Report Item        ${RATE PLAN LIST REPORT SUBMENU}

Validate Click Submit Button Without Product Catalog
    [Tags]    REGRESSION
    Verify Click Submit Button

Validate Get First Row Tariff Type
    [Tags]    REGRESSION
    ${TARIFF TYPE} =    Verify Get First Row Tariff Type
    set suite variable      ${TARIFF TYPE}

Validate Close Detail Report Window
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Set Tariff Type
    [Tags]    REGRESSION
    Verify Set Tariff Type      ${TARIFF TYPE}

Validate Click Submit Button
    [Tags]    REGRESSION
    Verify Click Submit Button

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

Validate Close Detail Report Window After Preview Done
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Close IXReport Window
    [Tags]    REGRESSION
    Verify Close IxReport Window