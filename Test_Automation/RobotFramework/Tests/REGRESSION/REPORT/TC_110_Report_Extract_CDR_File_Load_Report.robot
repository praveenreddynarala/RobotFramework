*** Settings ***
Documentation     [TAENOSIS-806] A Test Suite With Set Of Tests For Verify Extract CDR File Load Report

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixreport_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/ixreport_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${EXTRACT NAME}     ${EMPTY}

*** Test Cases ***
Validate Navigate to Report Module
    [Tags]    REGRESSION
    Verify Switch To IXReport

Validate Select Extracts Submenu
    [Tags]    REGRESSION
    Verify Select Extracts Submenu

Validate Click Extract List New Button
    [Tags]    REGRESSION
    Verify Click Extract List New Button

Validate Click Extract - Suspect Rate Report Submenu
    [Tags]    REGRESSION
    Verify Click Specific Extract name From List        Extract - ${CDR FILE LOAD REPORT SUBMENU}

Validate Set Begin Date
    [Tags]    REGRESSION
    Verify Set Extract Begin Date         1/1/2016

Validate Click Extract Save Button
    [Tags]    REGRESSION
    Verify Click Extract Save Button

Validate Set Extract Relative Period
    [Tags]    REGRESSION
    Verify Set Extract Relative Period      Today

Validate Set Extract Title
    [Tags]    REGRESSION
    Verify Set Extract Title        ${TEST DATA PREFIX}

Validate Get Created Extract Name
    [Tags]    REGRESSION
    ${EXTRACT NAME} =   Verify Get Created Extract Name
    set suite variable      ${EXTRACT NAME}

Validate Click My Report Save Button
    [Tags]    REGRESSION
    Verify Click My Report Save Button

Validate Set Report Group
    [Tags]    REGRESSION
    Verify Set Report Group     ${CDR REPORTS MENU}

Validate Set Report
    [Tags]    REGRESSION
    Verify Set Report       ${CDR FILE LOAD SUBMENU}

Validate Click Extract Go Button
    [Tags]    REGRESSION
    Verify Click Extract Go Button

Validate Click Specific Add Button
    [Tags]    REGRESSION
    Verify Click Specific Add Button        ${EXTRACT NAME}

Validate Click Extract Next Button
    [Tags]    REGRESSION
    Verify Click Extract Next Button

Validate Set Extract Schedule Name
    [Tags]    REGRESSION
    Verify Set Extract Schedule Name        ${TEST DATA PREFIX}

Validate Set Extract Active Time
    [Tags]    REGRESSION
    Verify Set Extract Active Time

Validate Set Extract Active Date
    [Tags]    REGRESSION
    Verify Set Extract Active Date      Today

Validate Click Extract Schedule Save Button
    [Tags]    REGRESSION
    Verify Click Extract Schedule Save Button

Validate The Extract Generation Is Present
    [Tags]    REGRESSION
    Verify The Extract Generation Is Present        ${EXTRACT NAME}

Validate The Extract Delivery Is Present
    [Tags]    REGRESSION
    Verify The Extract Delivery Is Present        ${EXTRACT NAME}

Validate The Completed Extract Status Is Present
    [Tags]    REGRESSION
    Verify The Completed Extract Status Is Present

Validate The Completed Extract Delivery Status Is Present
    [Tags]    REGRESSION
    Verify The Completed Extract Delivery Status Is Present

Validate Click Specific Extract Name Button
    [Tags]    REGRESSION
    Verify Click Specific Extract Name Button        ${EXTRACT NAME}

Validate Click Extract Delete Button
    [Tags]    REGRESSION
    Verify Click Extract Delete Button

Validate Close Report Page Exit Button
    [Tags]    REGRESSION
    Verify Click Report Page Exit Button