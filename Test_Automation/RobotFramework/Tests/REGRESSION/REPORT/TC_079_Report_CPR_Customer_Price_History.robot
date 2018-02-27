*** Settings ***
Documentation     [TAENOSIS-767] A Test Suite With Set Of Tests For Verify CPR Customer Price History

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixreport_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/ixreport_page_test_data_source.robot

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
    Verify Click Sub Report Item        ${CUSTOMER PRICE HISTORY SUBMENU}

Validate Click Account Rate Plan Selection Button
    [Tags]    REGRESSION
    Verify Click Account Rate Plan Selection Button

Validate Move One Available Rate Plan to Assigned
    [Tags]    REGRESSION
    Verify Move One Available Rate Plan to Assigned

Validate Click Account Rate Plan Selection Submit Button
    [Tags]    REGRESSION
    Verify Click Account Rate Plan Selection Submit Button

Validate Click Currency Selection Button
    [Tags]    REGRESSION
    Verify Click Currency Selection Button

Validate Select First Currency
    [Tags]    REGRESSION
    Verify Select First Currency

Validate Set Future Begin Date
    [Tags]    REGRESSION
    Verify Set Future Date as Begin Date    32

Validate Click Submit Button To Validate Error
    [Tags]    REGRESSION
    Verify Click Submit Button

Validate Begin Date Greater Than End Date Warning Message Is Shown
    [Tags]    REGRESSION
    Verify Begin Date Greater Than End Date Warning Message Is Shown

Validate Close Detail Report Window After Validating Error
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Set Begin Date
    [Tags]    REGRESSION
    Verify Set Begin Date       1/1/2016

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