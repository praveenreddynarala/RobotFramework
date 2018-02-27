*** Settings ***
Documentation     A Test Suite With Set Of Tests For Verify CPR Customer Price Sheet

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
    Verify Expand Reports Section       Customer Profile Reports

Validate Click Sub Report Item
    [Tags]    REGRESSION
    Verify Click Sub Report Item        Customer Price Sheet

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

Validate Click Account Rate Plan Selection Button For Multile Selection
    [Tags]    REGRESSION
    Verify Click Account Rate Plan Selection Button

Validate Move Multiple Available Rate Plan to Assigned
    [Tags]    REGRESSION
    Verify Move Multiple Available Rate Plan to Assigned

Validate Click Account Rate Plan Selection Submit Button For Multile Selection
    [Tags]    REGRESSION
    Verify Click Account Rate Plan Selection Submit Button

Validate Click Submit Button For Multile Selection
    [Tags]    REGRESSION
    Verify Click Submit Button

Validate Click Report Export To Excel Button For Multile Selection
    [Tags]    REGRESSION
    Verify Click Report Export To Excel Button

Validate Click Report Export To CSV Button For Multile Selection
    [Tags]    REGRESSION
    Verify Click Report Export To Csv Button

Validate Close Detail Report Window For All Selection
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Close IXReport Window
    [Tags]    REGRESSION
    Verify Close IxReport Window