*** Settings ***
Documentation    A Test Suite With Set Of Tests To Verify Server Monitoring Page Loads Properly

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/job_maintenance_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixcontrol_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Select 'Job Maintenance' From Main Menu
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Job Maintenance' From Main Menu

Validate Click Server Monitoring Link
    [Tags]    REGRESSION
    Verify Click Server Monitoring Link

Validate Disk Space Usage Chart Loaded
    [Tags]    REGRESSION
    Verify is Disk Space Usage Chart Loaded

Validate Total Space Chart Loaded
    [Tags]    REGRESSION
    Verify is Total Space Chart Loaded

Validate Free Space Chart Loaded
    [Tags]    REGRESSION
    Verify is Free Space Chart Loaded

Validate Server Job Monitoring and Management Table Loaded
    [Tags]    REGRESSION
    Verify is Server Job Monitoring and Management Table Loaded

Validate Click Exit Button
    [Tags]    REGRESSION
    Verify Click Exit Button