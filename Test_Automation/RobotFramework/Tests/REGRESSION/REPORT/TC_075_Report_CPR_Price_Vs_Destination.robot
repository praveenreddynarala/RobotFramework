*** Settings ***
Documentation     [TAENOSIS-770] A Test Suite With Set Of Tests For Verify CPR Price Vs Destination

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixreport_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/ixreport_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Report Module
    [Tags]    REGRESSION
    Verify Switch To IXReport

Validate Expand Customer Profile Reports Section
    [Tags]    REGRESSION
    Verify Expand Reports Section       ${CUSTOMER PROFILE REPORTS MENU}

Validate Click Sub Report Item
    [Tags]    REGRESSION
    Verify Click Sub Report Item        ${PRICE VS DESTINATION REPORT SUBMENU}

Validate Click Country Browse Button
    [Tags]    REGRESSION
    Verify Click Country Browse Button

Validate Select First Row From Look Up Table
    [Tags]    REGRESSION
    Verify Select First Row From Look Up Table

Validate Set Rate Type
    [Tags]    REGRESSION
    Verify Set Rate Type        Rate 1

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