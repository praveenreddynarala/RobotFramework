*** Settings ***
Documentation    [TAENOSIS-954] A Test Suite With Set Of Tests To Verify New Configuration With Name CheckTableLock Exists Under CDR

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/audit_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixadmin_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixcontrol_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to IXAudit Module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Audit' From Main Menu

Validate Navigate to IXAdmin module
    [Tags]    REGRESSION
    Go To IXAdmin Screen With Specific Url

Validate Click Config Management Submenu
    [Tags]    REGRESSION
    Verify Click Config Management Submenu

Validate Set Scope
    [Tags]   REGRESSION
    ixadmin_page_resource.Verify Set Scope        CDR

Validate Click Go Button
    [Tags]    REGRESSION
    ixadmin_page_resource.Verify Click Go Button

Validate Checktablelock Configuration Variable Is Available
    [Tags]    REGRESSION
    Verify Checktablelock Configuration Variable Is Available

Validate Checktablelock Configuration Variable Is Available With The Default Value 1
    [Tags]    REGRESSION
    Verify Checktablelock Configuration Variable Is Available With The Default Value 1

Validate Navigate to IXControl module
    [Tags]    REGRESSION
    Go To IXControl Screen With Specific Url

Validate Click All Items Submenu
    [Tags]    REGRESSION
    Verify Click All Items Submenu

Validate Set Item Type
    [Tags]    REGRESSION
    Verify Set Item Type        Performance Metric

Validate Set Item
    [Tags]    REGRESSION
    Verify Set Registry Item        BatchServer DimensionRefresh

Validate Click Go Button After Setting Item
    [Tags]    REGRESSION
   ixcontrol_page_resource.Verify Click Go Button

Validate Successfully Executed Job Is Available
    [Tags]    REGRESSION
    Verify Successfully Executed Job Is Available

Validate Set Current Status
    [Tags]    REGRESSIOn
    Verify Set Current Status       Failed

Validate Click Go Button After Setting Current Status
    [Tags]    REGRESSION
   ixcontrol_page_resource.Verify Click Go Button

Validate The Jobs Are Completed Without Any Error
    [Tags]    REGRESSION
    Verify The Jobs Are Completed Without Any Error

Validate Set Current Status As Completed
    [Tags]    REGRESSIOn
    Verify Set Current Status       Completed

Validate Click Go Button After Setting Current Status As Completed
    [Tags]    REGRESSION
   ixcontrol_page_resource.Verify Click Go Button

Validate Click First Unp Job Process Button
    [Tags]    REGRESSION
    Verify Click First Unp Job Process Button

Validate The Job Execution Duration Is Not So Long
    [Tags]    REGRESSION
    Verify The Job Execution Duration Is Not So Long

Validate Click Exit Button
    [Tags]    REGRESSION
    ixcontrol_page_resource.Verify Click Exit Button