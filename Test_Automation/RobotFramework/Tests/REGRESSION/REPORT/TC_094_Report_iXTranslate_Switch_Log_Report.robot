*** Settings ***
Documentation     [TAENOSIS-780] A Test Suite With Set Of Tests For Verify iXTranslate Switch Log Report

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixreport_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/ixreport_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${DESTINATION}      ${EMPTY}

*** Test Cases ***
Validate Navigate to Report Module
    [Tags]    REGRESSION
    Verify Switch To IXReport

Validate Expand Customer Profile Reports Section
    [Tags]    REGRESSION
    Verify Expand Reports Section       ${IXTRANSLATE REPORTS MENU}

Validate Click Sub Report Item
    [Tags]    REGRESSION
    Verify Click Sub Report Item        ${SWITCH LOG REPORT SUBMENU}

Validate Click Submit Button To Verify Warning Message
    [Tags]    REGRESSION
    Verify Click Submit Button To Verify Warning Message

Validate Get Destination From ProductiXRoute Table
    [Tags]    REGRESSION
    ${DESTINATION} =    Verify Get Destination From ProductiXRoute Table       ${DATABASE SERVER}      ${DATABASE}      ${DATABASE USERNAME}      ${DATABASE PASSWORD}
    log  ${DESTINATION}
    set suite variable      ${DESTINATION}

Validate Click Destination Browse Button
    [Tags]    REGRESSION
    Verify Click Destination Browse Button

Validate Set First Letters For Destination
    [Tags]    REGRESSION
    Verify Set First Letters    ${DESTINATION}

Validate Click Go Button For Destination
    [Tags]    REGRESSION
    Verify Click Go Button

Validate Select Row From Look Up Table
    [Tags]    REGRESSION
    Verify Select Second Row From Look Up Table

Validate Click Submit Button For Destination
    [Tags]    REGRESSION
    Verify Click Submit Button

Validate Close Detail Report Window After Validating Report With Destination
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Set Future Begin Date
    [Tags]    REGRESSION
    Verify Set Future Date as Begin Date      32

Validate Click Submit Button To Validate Error
    [Tags]    REGRESSION
    Verify Click Submit Button

Validate Selected Dates Are Out Of Range Warning Message Is Shown
    [Tags]    REGRESSION
    Verify Selected Dates Are Out Of Range Warning Message Is Shown

Validate Close Detail Report Window After Validating Error
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Set Begin Date
    [Tags]    REGRESSION
    Verify Set Begin Date         11/11/2017

Validate Click Country Browse Button
    [Tags]    REGRESSION
    Verify Click Country Browse Button

Validate Select Second Row From Look Up Table
    [Tags]    REGRESSION
    Verify Select Second Row From Look Up Table

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

Validate Close Detail Report Window After Generating Report For Outbound
    [Tags]    REGRESSION
    Verify Close IxReport Window