*** Settings ***
Documentation    A Test Suite With Set Of Tests To Verify Server Usage Audit Report Drilldown Test

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/job_maintenance_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixcontrol_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Select 'Job Maintenance' From Main Menu
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Job Maintenance' From Main Menu

Validate Click Server Usage Audit Link
    [Tags]    REGRESSION
    Verify Click Server Usage Audit Link

Validate Click Server Usage Audit Submit Button
    [Tags]    REGRESSION
    Verify Click Server Usage Audit Submit Button

Validate Click And Expand C Drive
    [Tags]    REGRESSION
    Verify Click And Expand C Drive

Validate Server Details Is Available
    [Tags]    REGRESSION
    Verify Server Details Is Available

Validate Close Ixcontrol Window
    [Tags]    REGRESSION
    Verify Close Ixcontrol Window

Validate Click Exit Button
    [Tags]    REGRESSION
    Verify Click Exit Button