*** Settings ***
Documentation     A Test Suite With Set Of Tests For iXControl Run Bill Statement Job

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/job_maintenance_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixcontrol_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Job Maintenance module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Job Maintenance' From Main Menu

Validate Click Bill Submenu
    [Tags]    REGRESSION
    Verify Click Bill Submenu

Validate Set Registry Item
    [Tags]    REGRESSION
    Verify Set Registry Item    Statement

Validate Click Go Button
    [Tags]    REGRESSION
    Verify Click Go Button

Validate Click First Job
    [Tags]    REGRESSION
    Verify Click First Unp Job Link

Validate Click Request Statement Generate Process Link
    [Tags]    REGRESSION
    Verify Click Request Statement Process Link

Validate Click Execute Button
    [Tags]    REGRESSION
    Verify Click Execute Button

Validate Statement Generate Job Completed
    [Tags]    REGRESSION
    Verify Statement Generate Job Completed

Validate Click Exit Button
    [Tags]    REGRESSION
    Verify Click Exit Button