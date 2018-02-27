*** Settings ***
Documentation     [TAENOSIS-769] A Test Suite With Set Of Tests For Verify CPR Customer Price Sheet With Dialed Digits

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
    Verify Click Sub Report Item        ${CUSTOMER PRICE SHEET WITH DIALED DIGITS REPORT SUBMENU}

Validate Click Submit Button To Verify Warning Message
    [Tags]    REGRESSION
    Verify Click Submit Button To Verify Warning Message

Validate Click Account Rate Plan Selection Button
    [Tags]    REGRESSION
    Verify Click Account Rate Plan Selection Button

Validate Move Available Rate Plan to Assigned
    [Tags]    REGRESSION
    Verify Move Available Rate Plan to Assigned

Validate Click Account Rate Plan Selection Submit Button
    [Tags]    REGRESSION
    Verify Click Account Rate Plan Selection Submit Button

Validate Click Currency Browse Button
    [Tags]    REGRESSION
    Verify Click Currency Browse Button

Validate Select First Row From Look Up Table
    [Tags]    REGRESSION
    Verify Select First Row From Look Up Table

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