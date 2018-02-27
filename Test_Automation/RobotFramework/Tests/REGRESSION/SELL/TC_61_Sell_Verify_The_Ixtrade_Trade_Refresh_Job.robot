*** Settings ***
Documentation     [TAENOSIS-869] A Test Suite With Set Of Tests To Verify The iXTrade Trade Refresh Job

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/job_maintenance_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixcontrol_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Job Maintenance module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Job Maintenance' From Main Menu

Validate Click Trade Submenu
    [Tags]    REGRESSION
    Verify Click Trade Submenu

Validate Set Registry Item
    [Tags]    REGRESSION
    Verify Set Registry Item        iXTrade Refresh

Validate Click iXControl Go Button
    [Tags]    REGRESSION
    ixcontrol_page_resource.Verify Click Go Button

Validate Click First Registry Process
    [Tags]    REGRESSION
    Verify Click First Unp Job Link

Validate Click Request Data Refresh Process
    [Tags]    REGRESSION
    Verify Click Request Data Refresh Process

Validate Click Execute Button
    [Tags]    REGRESSION
    Verify Click Execute Button

Validate Trade Data Refresh Job Completed
    [Tags]    REGRESSION
    Verify Trade Data Refresh Job Completed

Validate Close Ixcontrol Window
    [Tags]    REGRESSION
    Verify Click Exit Button
