*** Settings ***
Documentation     A Test Suite With Set Of Tests For Verify Admin Technical Trunk With History Report

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixreport_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Report Module
    [Tags]    REGRESSION
    Verify Switch To IXReport

Validate Expand Administrative Reports Section
    [Tags]    REGRESSION
    Verify Expand Reports Section       Administrative Reports

Validate Click Sub Report Item
    [Tags]    REGRESSION
    Verify Click Sub Report Item        Technical Trunk With History Report

Validate Click Submit Button
    [Tags]    REGRESSION
    Verify Click Submit Button

Validate End Date Column Is Present
    [Tags]    REGRESSION
    Verify End Date Column Is Present

Validate Empty Orig Point Code Records Are Shown
    [Tags]    REGRESSION
    Verify Empty Orig Point Code Records Are Shown

Validate Close Detail Report Window
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Set Future Date as Begin Date
    [Tags]    REGRESSION
    Verify Set Future Date as Begin Date

Validate Click Submit Button For Future Date
    [Tags]    REGRESSION
    Verify Click Submit Button

Validate Begin Date Greater Than End Date Warning Message Is Shown
    [Tags]    REGRESSION
    Verify Begin Date Greater Than End Date Warning Message Is Shown

Validate Close Detail Report Window For Future Date
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Set Current Date as Begin Date
    [Tags]    REGRESSION
    Verify Set Current Date as Begin Date

Validate Click Submit Button For Current Date
    [Tags]    REGRESSION
    Verify Click Submit Button

Validate End Date Column Is Present For Current Date
    [Tags]    REGRESSION
    Verify End Date Column Is Present

Validate Empty Orig Point Code Records Are Shown For Current Date
    [Tags]    REGRESSION
    Verify Empty Orig Point Code Records Are Shown

Validate Close Detail Report Window For Current Date
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Set Past Date as Begin Date
    [Tags]    REGRESSION
    Verify Set Past Date as Begin Date

Validate Click Submit Button For Past Date
    [Tags]    REGRESSION
    Verify Click Submit Button

Validate End Date Column Is Present For Past Date
    [Tags]    REGRESSION
    Verify End Date Column Is Present

Validate Empty Orig Point Code Records Are Shown For Past Date
    [Tags]    REGRESSION
    Verify Empty Orig Point Code Records Are Shown

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

Validate Close Detail Report Window For Past Date
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Close IXReport Window
    [Tags]    REGRESSION
    Verify Close IxReport Window