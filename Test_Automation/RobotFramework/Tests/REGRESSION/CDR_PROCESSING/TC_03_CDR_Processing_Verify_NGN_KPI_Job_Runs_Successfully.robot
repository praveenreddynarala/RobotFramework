*** Settings ***
Documentation     A Test Suite With Set Of Tests To Verify NGN KPI Job Runs Successfully

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixcontrol_page_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/ixcontrol_page_test_data_source.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/system_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CDR FILE NAME}     ${EMPTY}

*** Test Cases ***
Validate Navigate to System Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select System Tab
    [Tags]    REGRESSION
    Click on System Tab

Validate Click Configuration Variables Button
    [Tags]    REGRESSION
    Verify Click Configuration Variables Button

Validate Set Scope
    [Tags]    REGRESSION
    Verify Set Scope        CDR

Validate Set Variable Name
    [Tags]    REGRESSION
    Verify Set Variable Name    KPI Next Gen

Validate Click Configuration Variables Grid Search Button
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Set Value In Current Value Column
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        1

Validate Navigate to IXContract Module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate Navigate to IXControl module
    [Tags]    REGRESSION
    Go To IXControl Screen With Specific Url

Validate Click Objects And Processes Submenu
    [Tags]    REGRESSION
    Verify Click Objects And Processes Submenu

Validate Set Object Type
    [Tags]    REGRESSION
    Verify Set Object Type      ${CDR FILE OBJECT TYPE}

Validate Set Object
    [Tags]    REGRESSION
    Verify Set Object       ${OBJECT NAME}

Validate Click Go Button
    [Tags]    REGRESSION
    Verify Click Go Button

Validate Click Object Name
    [Tags]    REGRESSION
    Verify Click Object Name        ${OBJECT NAME}

Validate Copy CDR File
    [Tags]    REGRESSION
    ${CDR FILE NAME} =       Verify Get Cdr File Name
    ${DESTINATION PATH} =       Verify Get Cdr Destination Path
    set suite variable      ${CDR FILE NAME}
    Verify Copy File        ${TEMPLATE PATH}/${CDR FILE PATH}       ${DESTINATION PATH}

Validate Click CDR Files Submenu
    [Tags]    REGRESSION
    Verify Click CDR Files Submenu

Validate Set Current Status
    [Tags]    REGRESSION
    Verify Set Current Status       ${COMPLETED STATUS}

Validate Set Registry Item
    [Tags]    REGRESSION
    Verify Set Registry Item        ${OBJECT NAME}

Validate Click Go Button For Registry
    [Tags]    REGRESSION
    Verify Click Go Button

Validate Click Cdr File Name
    [Tags]    REGRESSION
    Verify Click Cdr File Name        ${CDR FILE NAME}

Validate CDR Load Is Completed
    [Tags]    REGRESSION
    Verify CDR Load Is Completed

Validate Click All Items Submenu
    [Tags]    REGRESSION
    Verify Click All Items Submenu

Validate Click Event Reprocessing Button
    [Tags]    REGRESSION
    Verify Click Event Reprocessing Button

Validate Click Single Event Processing Button
    [Tags]    REGRESSION
    Verify Click Single Event Processing Button

Validate Verify Set Requested Process
    [Tags]    REGRESSION
    Verify Set Requested Process        ${RERATE DROPDOWN ITEM}

Validate Verify Set Event Processing Object
    [Tags]    REGRESSION
    Verify Set Event Processing Object       ${EMPTY}

Validate Verify Set Event Processing Begin Date
    [Tags]    REGRESSION
    Verify Set Event Processing Begin Date

Validate Verify Set Event Processing End Date
    [Tags]    REGRESSION
    Verify Set Event Processing End Date

Validate Click Schedule Process Checkbox
    [Tags]    REGRESSION
    Verify Click Schedule Process Checkbox

Validate Verify Set Event Processing Schedule Date And Time
    [Tags]    REGRESSION
    Verify Set Event Processing Schedule Date And Time

Validate Click Event Processing Save Button
    [Tags]    REGRESSION
    Verify Click Event Processing Save Button

Validate Click Exit Button
    [Tags]    REGRESSION
    Verify Click Exit Button