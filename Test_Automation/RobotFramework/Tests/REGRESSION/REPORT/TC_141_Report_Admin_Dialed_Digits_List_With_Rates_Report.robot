*** Settings ***
Documentation     [TAENOSIS-1010] A Test Suite With Set Of Tests To Verify Admin Dialed Digits List With Rates Report

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixcontrol_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixreport_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/ixcontrol_page_test_data_source.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/ixreport_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${WEB SERVER NAME}      ${EMPTY}
${MAX RECORDS}          ${EMPTY}

*** Test Cases ***
Validate Navigate to IXContract Module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate Navigate to IXControl module
    [Tags]    REGRESSION
    ixcontrol_page_resource.Go To IXControl Screen With Specific Url

Validate Click Objects And Processes Submenu
    [Tags]    REGRESSION
    ixcontrol_page_resource.Verify Click Objects And Processes Submenu

Validate Set Object Type
    [Tags]    REGRESSION
    ixcontrol_page_resource.Verify Set Object Type      ${CDR FILE OBJECT TYPE}

Validate Set Object
    [Tags]    REGRESSION
    ixcontrol_page_resource.Verify Set Object       ${OBJECT NAME}

Validate Click Go Button
    [Tags]    REGRESSION
    ixcontrol_page_resource.Verify Click Go Button

Validate Click Object Name
    [Tags]    REGRESSION
    ixcontrol_page_resource.Verify Click Object Name        ${OBJECT NAME}

Validate Get Web Server Name
    [Tags]    REGRESSION
    ${WEB SERVER NAME} =       Verify Get Web Server Name
    set suite variable      ${WEB SERVER NAME}

Validate Read Settings File Max Records Value
    ${MAX RECORDS} =    Verify Read Settings File Max Records Value     ${WEB SERVER NAME}/${SETTINGS FILE PATH}
    set suite variable       ${MAX RECORDS}

Validate Write Settings File Max Records Value
    Verify Write Settings File Max Records Value     ${WEB SERVER NAME}/${SETTINGS FILE PATH}       30000

Validate lose Ixcontrol Window
    [Tags]    REGRESSION
    Verify Close Ixcontrol Window       ${TRUE}

Validate Navigate to Report Module
    [Tags]    REGRESSION
    Verify Switch To IXReport

Validate Expand Customer Profile Reports Section
    [Tags]    REGRESSION
    Verify Expand Reports Section       ${ADMINISTRATIVE REPORTS MENU}

Validate Click Sub Report Item
    [Tags]    REGRESSION
    Verify Click Sub Report Item        ${DIALED DIGITS LIST WITH RATES REPORT SUBMENU}

Validate Set Rate Type
    [Tags]    REGRESSION
    Verify Set Rate Type    Rate 1

Validate Click Submit Button To Validate Error Message
    [Tags]    REGRESSION
    Verify Click Submit Button And Verify Error Message     Selection Invalid.

Validate Click Country Browse Button
    [Tags]    REGRESSION
    Verify Click Country Browse Button

Validate Move More Than Ten Vendors To Assign
    [Tags]    REGRESSION
    Verify Move More Than Ten Vendors To Assign

Validate Click Vendor Lookup Submit Button
    [Tags]    REGRESSION
    Verify Click Vendor Lookup Submit Button

Validate Set Future Begin Date
    [Tags]    REGRESSION
    Verify Set Future Date as Begin Date    32

Validate Click Submit Button To Validate Error
    [Tags]    REGRESSION
    ixreport_page_resource.Verify Click Submit Button

Validate Begin Date Greater Than End Date Warning Message Is Shown
    [Tags]    REGRESSION
    Verify Begin Date Greater Than End Date Warning Message Is Shown

Validate Close Detail Report Window After Validating Error
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Set Begin Date
    [Tags]    REGRESSION
    Verify Set Begin Date       1/1/2010

Validate Click Submit Button With Wait
    [Tags]    REGRESSION
    ixreport_page_resource.Verify Click Submit Button With Wait

Validate Row Exceeds Warning Message
    [Tags]    REGRESSION
    Verify Row Exceeds Warning Message

Validate Click Report Export To CSV Button
    [Tags]    REGRESSION
    Verify Click Report Export To Csv Button

Validate Close Detail Report Window For All Selection
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Close IXReport Window
    [Tags]    REGRESSION
    Verify Close IxReport Window