*** Settings ***
Documentation     [TAENOSIS-689] A Test Suite With Set Of Tests To Validate F1SRGR and F2SRGR are Displayed Under The System Parameters on The Cost Policy Formula Screen

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/price_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Price module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Navigate to Cost Policies Tab
    [Tags]    REGRESSION
    Verify select cost policy

Validate Click Formulas Button
    [Tags]    REGRESSION
    Verify Click Formulas Button

Validate Click Create Destination Formula
    [Tags]    REGRESSION
    Verify Click Create Destination Formula

Validate Select Create Destination Formula PopUp System Parameters Tab
    [Tags]    REGRESSION
    Verify Select Create Destination Formula PopUp System Parameters Tab

Validate F1SRGR System Parameter For Create Destination Formula
    [Tags]    REGRESSION
    Verify Specific System Parameter For Create Destination Formula Is Available     F1SRGR

Validate The Description of F1SRGR System Parameter For Create Destination Formula is Correct
    [Tags]    REGRESSION
    Verify Specific System Parameter For Create Destination Formula Is Available     Future 1 Suggested Route Guide Rate

Validate F2SRGR System Parameter For Create Destination Formula Is Available
    [Tags]    REGRESSION
    Verify Specific System Parameter For Create Destination Formula Is Available     F2SRGR

Validate The Description of F2SRGR System Parameter For Create Destination Formula is Correct
    [Tags]    REGRESSION
    Verify Specific System Parameter For Create Destination Formula Is Available     Future 2 Suggested Route Guide Rate

Validate Close Create Cost Policy Destination Formula tab
    [Tags]    REGRESSION
    Verify Close Current Tab         Create Cost Policy Destination Formula

Validate Click Create Global Formula
    [Tags]    REGRESSION
    Verify Click Create Global Formula

Validate Select Create Global Formula PopUp System Parameters Tab
    [Tags]    REGRESSION
    Verify Select Create Destination Formula PopUp System Parameters Tab

Validate F1SRGR System Parameter For Create Global Formula
    [Tags]    REGRESSION
    Verify Specific System Parameter For Create Destination Formula Is Available     F1SRGR

Validate The Description of F1SRGR System Parameter For Create Global Formula is Correct
    [Tags]    REGRESSION
    Verify Specific System Parameter For Create Destination Formula Is Available     Future 1 Suggested Route Guide Rate

Validate F2SRGR System Parameter For Create Global Formula
    [Tags]    REGRESSION
    Verify Specific System Parameter For Create Destination Formula Is Available     F2SRGR

Validate The Description of F2SRGR System Parameter For Create Global Formula is Correct
    [Tags]    REGRESSION
    Verify Specific System Parameter For Create Destination Formula Is Available     Future 2 Suggested Route Guide Rate

Validate Close Create Cost Policy Global Formula tab
    [Tags]    REGRESSION
    Verify Close Current Tab        Create Cost Policy Destination Formula

Validate Click Create Category Formula
    [Tags]    REGRESSION
    Verify Click Create Category Formula

Validate Select Create Category Formula PopUp System Parameters Tab
    [Tags]    REGRESSION
    Verify Select Create Destination Formula PopUp System Parameters Tab

Validate F1SRGR System Parameter For Create Category Formula
    [Tags]    REGRESSION
    Verify Specific System Parameter For Create Destination Formula Is Available     F1SRGR

Validate The Description of F1SRGR System Parameter For Create Category Formula is Correct
    [Tags]    REGRESSION
    Verify Specific System Parameter For Create Destination Formula Is Available     Future 1 Suggested Route Guide Rate

Validate F2SRGR System Parameter For Create Category Formula
    [Tags]    REGRESSION
    Verify Specific System Parameter For Create Destination Formula Is Available     F2SRGR

Validate The Description of F2SRGR System Parameter For Create Category Formula is Correct
    [Tags]    REGRESSION
    Verify Specific System Parameter For Create Destination Formula Is Available     Future 2 Suggested Route Guide Rate

Validate Close Create Cost Policy Category Formula tab
    [Tags]    REGRESSION
    Verify Close Current Tab       Create Cost Policy Destination Formula
