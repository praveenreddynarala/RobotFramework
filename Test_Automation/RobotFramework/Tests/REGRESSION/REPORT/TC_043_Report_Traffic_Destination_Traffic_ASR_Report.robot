*** Settings ***
Documentation     [TAENOSIS-718] A Test Suite With Set Of Tests For Verify Traffic Destination Traffic ASR Report

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixreport_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/ixreport_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${IN ACCOUNT NAME}          ${EMPTY}
${OUT ACCOUNT NAME}         ${EMPTY}
${ROUTING DESTINATION}      ${EMPTY}

*** Test Cases ***
Validate Navigate to Report Module
    [Tags]    REGRESSION
    Verify Switch To IXReport

Validate Expand Administrative Reports Section
    [Tags]    REGRESSION
    Verify Expand Reports Section       ${TRAFFIC REPORTS MENU}

Validate Click Sub Report Item
    [Tags]    REGRESSION
    Verify Click Sub Report Item        ${DESTINATION TRAFFIC ASR REPORT SUBMENU}

Validate Set Future Begin Date
    [Tags]    REGRESSION
    Verify Set Future Date as Begin Date    32

Validate Click Submit Button To Validate Error
    [Tags]    REGRESSION
    Verify Click Submit Button

Validate Begin Date Greater Than End Date Warning Message Is Shown
    [Tags]    REGRESSION
    Verify Begin Date Greater Than End Date Warning Message Is Shown

Validate Close Detail Report Window After Validating Error
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Set Begin Date
    [Tags]    REGRESSION
    Verify Set Begin Date       1/1/2016

Validate Click Submit Button To Copy
    [Tags]    REGRESSION
    Verify Click Submit Button

Validate Get Second Row In Account Name
    [Tags]    REGRESSION
    ${IN ACCOUNT NAME} =       Verify Get Second Row In Account Name
    set suite variable      ${IN ACCOUNT NAME}

Validate Get Second Row Out Account Name
    [Tags]    REGRESSION
    ${OUT ACCOUNT NAME} =       Verify Get Second Row Out Account Name
    set suite variable      ${OUT ACCOUNT NAME}

Validate Get Second Row Routing Destination
    [Tags]    REGRESSION
    ${ROUTING DESTINATION} =       Verify Get Second Row Routing Destination
    set suite variable      ${ROUTING DESTINATION}

Validate Close Detail Report Window
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Click In Account Browse Button
    [Tags]    REGRESSION
    Verify Click Account Browse Button

Validate Set First Letters For In Account
    [Tags]    REGRESSION
    Verify Set First Letters    ${IN ACCOUNT NAME}

Validate Click Lookup Go Button For In Account
    [Tags]    REGRESSION
    Verify Click Vendor Lookup Go Button

Validate Move In Account to Assigned
    [Tags]    REGRESSION
    Verify Move Vendor To Assigned

Validate Click In Account Lookup Submit Button
    [Tags]    REGRESSION
    Verify Click Vendor Lookup Submit Button

Validate Click Out Account Browse Button
    [Tags]    REGRESSION
    Verify Click Out Account Browse Button

Validate Set First Letters For Out Account
    [Tags]    REGRESSION
    Verify Set First Letters    ${OUT ACCOUNT NAME}

Validate Click Lookup Go Button For Out Account
    [Tags]    REGRESSION
    Verify Click Vendor Lookup Go Button

Validate Move Out Account to Assigned
    [Tags]    REGRESSION
    Verify Move Vendor To Assigned

Validate Click Out Account Lookup Submit Button
    [Tags]    REGRESSION
    Verify Click Vendor Lookup Submit Button

Validate Click Routing Destination Status Browse Button
    [Tags]    REGRESSION
    Verify Click Routing Destination Browse Button

Validate Set First Letters For Routing Destination
    [Tags]    REGRESSION
    Verify Set First Letters    ${ROUTING DESTINATION}

Validate Click Lookup Go Button For Routing Destination
    [Tags]    REGRESSION
    Verify Click Vendor Lookup Go Button

Validate Move Routing Destination to Assigned
    [Tags]    REGRESSION
    Verify Move Vendor To Assigned

Validate Click Routing Destination Lookup Submit Button
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