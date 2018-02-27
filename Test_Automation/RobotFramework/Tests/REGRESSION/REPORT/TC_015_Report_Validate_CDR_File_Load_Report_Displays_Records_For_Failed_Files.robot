*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate CDR File Load Report Displays Records For Failed Files

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixreport_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/ixreport_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Report Module
    [Tags]    REGRESSION
    Verify Switch To IXReport

Validate Expand Reports Section
    [Tags]    REGRESSION
    Verify Expand Reports Section       ${CDR REPORTS MENU}

Validate Click Sub Report Item
    [Tags]    REGRESSION
    Verify Click Sub Report Item        ${CDR FILE LOAD SUBMENU}

Validate Set Begin Date
    [Tags]    REGRESSION
    Verify Set Past Date As Begin Date With Lower Case d

Validate Set Process Status
    [Tags]    REGRESSION
    Verify Set Process Status       ${FAILED PROCESS STATUS}

Validate Set First Level Summarize By
    [Tags]    REGRESSION
    Verify Set First Level Summarize By        ${CRD PROCESS STATUS FIRST LEVEL SUMMARIZE BY}

Validate Click Submit Button
    [Tags]    REGRESSION
    Verify Click Submit Button

Validate Compare Process Status
    [Tags]    REGRESSION
    Verify Compare Process Status       ${FAILED PROCESS STATUS}

Validate Click Report Preview Button
    [Tags]    REGRESSION
    Verify Click Report Preview Button

Validate Click Report Export To Excel Button
    [Tags]    REGRESSION
    Verify Click Report Export To Excel Button

Validate Click Report Export To CSV Button
    [Tags]    REGRESSION
    Verify Click Report Export To CSV Button

Validate Click Report Export To PDF Button
    [Tags]    REGRESSION
    Verify Click Report Export To PDF Button

Validate Close Detail Report Window
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Set Process Status To Verify All Status
    [Tags]    REGRESSION
    Verify Set Process Status       ALL

Validate Set First Level Summarize By To Verify All Status
    [Tags]    REGRESSION
    Verify Set First Level Summarize By        ${CRD PROCESS STATUS FIRST LEVEL SUMMARIZE BY}

Validate Click Submit Button To Verify All Status
    [Tags]    REGRESSION
    Verify Click Submit Button

Validate Compare Process Status To Verify All Status
    [Tags]    REGRESSION
    Verify Compare Process Status       ALL

Validate Close Detail Report Window After Verifying All Status
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Close IXReport Window
    [Tags]    REGRESSION
    Verify Close IxReport Window