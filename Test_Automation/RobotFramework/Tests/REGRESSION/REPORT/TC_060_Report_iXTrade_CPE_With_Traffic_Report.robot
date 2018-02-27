*** Settings ***
Documentation     [TAENOSIS-730] A Test Suite With Set Of Tests For Verify iXTrdae CPE With Traffic Report

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixreport_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/ixreport_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${ACCOUNT NAME}         ${EMPTY}
${CUSTOMER SOURCE}      ${EMPTY}

*** Test Cases ***
Validate Navigate to Report Module
    [Tags]    REGRESSION
    Verify Switch To IXReport

Validate Expand Network Reports Section
    [Tags]    REGRESSION
    Verify Expand Reports Section       ${IXTRADE REPORTS MENU}

Validate Click Sub Report Item
    [Tags]    REGRESSION
    Verify Click Sub Report Item        ${CPE WITH TRAFFIC REPORT SUBMENU}

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
    Verify Set Begin Date       1/1/2017

Validate Click Submit Button To Get Values
    [Tags]    REGRESSION
    Verify Click Submit Button

Validate Get Second Row Account Name
    [Tags]    REGRESSION
    ${ACCOUNT NAME} =       Verify Get CPE Traffic Report Second Row Customer Source
    set suite variable      ${ACCOUNT NAME}

Validate Get Second Row Contract Name
    [Tags]    REGRESSION
    ${CUSTOMER SOURCE} =       Verify Get Second Row Customer Source
    set suite variable      ${CUSTOMER SOURCE}

Validate Close Detail Report Window
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Click Account Browse Button
    [Tags]    REGRESSION
    Verify Click Account Browse Button With ID

Validate Set First Letters For Account
    [Tags]    REGRESSION
    Verify Set First Letters    ${ACCOUNT NAME}

Validate Click Go Button For Account
    [Tags]    REGRESSION
    Verify Click Go Button

Validate Select Row From Look Up Table
    [Tags]    REGRESSION
    Verify Select Row From Look Up Table        ${ACCOUNT NAME}

Validate Click Customer Source Browse Button
    [Tags]    REGRESSION
    Verify Click Customer Source Browse Button

Validate Set First Letters For Customer Source
    [Tags]    REGRESSION
    Verify Set First Letters    ${CUSTOMER SOURCE}

Validate Click Go Button For Customer Source
    [Tags]    REGRESSION
    Verify Click Go Button

Validate Select Row From Look Up Table For Customer Source
    [Tags]    REGRESSION
    Verify Select Row From Look Up Table        ${CUSTOMER SOURCE}

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