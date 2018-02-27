*** Settings ***
Documentation     [TAENOSIS-773] A Test Suite With Set Of Tests For Verify Admin Credit Limit Transaction Report

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixreport_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/ixreport_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${ACCOUNT NAME}             ${EMPTY}

*** Test Cases ***
Validate Navigate to Report Module
    [Tags]    REGRESSION
    Verify Switch To IXReport

Validate Expand Administrative Reports Section
    [Tags]    REGRESSION
    Verify Expand Reports Section       ${ADMINISTRATIVE REPORTS MENU}

Validate Click Sub Report Item
    [Tags]    REGRESSION
    Verify Click Sub Report Item        ${CREDIT LIMIT TRANSACTION REPORT SUBMENU}

Validate Set Future From Date
    [Tags]    REGRESSION
    Verify Set Future Date Into Specific Date Field       From Date       32

Validate Click Submit Button To Validate Error
    [Tags]    REGRESSION
    Verify Click Submit Button

Validate Begin Date Greater Than End Date Warning Message Is Shown
    [Tags]    REGRESSION
    Verify Begin Date Greater Than End Date Warning Message Is Shown

Validate Close Detail Report Window After Validating Error
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Set From Date
    [Tags]    REGRESSION
    Verify Set Date Value Into Specific Date Field      From Date        1/1/2015

Validate Click Submit Button To Copy
    [Tags]    REGRESSION
    Verify Click Submit Button

Validate Get Second Row Account Name
    [Tags]    REGRESSION
    ${ACCOUNT NAME} =       Verify Get Second Row Account Name
    set suite variable      ${ACCOUNT NAME}

Validate Close Detail Report Window
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Click Account Browse Button
    [Tags]    REGRESSION
    Verify Click Account Browse Button

Validate Set First Letters For Account
    [Tags]    REGRESSION
    Verify Set First Letters    ${ACCOUNT NAME}

Validate Click Lookup Go Button
    [Tags]    REGRESSION
    Verify Click Vendor Lookup Go Button

Validate Move Account to Assigned
    [Tags]    REGRESSION
    Verify Move Vendor To Assigned

Validate Click Account Lookup Submit Button
    [Tags]    REGRESSION
    Verify Click Vendor Lookup Submit Button

Validate Click Submit Button
    [Tags]    REGRESSION
    Verify Click Submit Button

Validate Click Report Preview Button
    [Tags]    REGRESSION
    Verify Click Report Preview Button

Validate Click Report Export To Excel Button
    [Tags]    REGRESSION
    Verify Click Report Export To Excel Button

Validate Click Report Export To Csv Button
    [Tags]    REGRESSION
    Verify Click Report Export To Csv Button

Validate Click Report Export To Pdf Button
    [Tags]    REGRESSION
    Verify Click Report Export To Pdf Button

Validate Close Detail Report Window After Preview Done
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Close IXReport Window
    [Tags]    REGRESSION
    Verify Close IxReport Window