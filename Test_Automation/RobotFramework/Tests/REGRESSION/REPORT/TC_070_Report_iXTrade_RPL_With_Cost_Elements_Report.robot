*** Settings ***
Documentation     [TAENOSIS-740] A Test Suite With Set Of Tests For Verify iXTrdae RPL With Cost Elements Report

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixreport_page_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/ixreport_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CREATED PRICE POLICY NAME}        ${EMPTY}

*** Test Cases ***
Validate Navigate to Report Module
    [Tags]    REGRESSION
    Verify Switch To IXReport

Validate Expand iXTrade Reports Section
    [Tags]    REGRESSION
    Verify Expand Reports Section       ${IXTRADE REPORTS MENU}

Validate Click Sub Report Item
    [Tags]    REGRESSION
    Verify Click Sub Report Item        ${RPL WITH COST ELEMENTS REPORT SUBMENU}

Validate Click Submit Button To Currency Validation Message
    [Tags]    REGRESSION
    Verify Click Submit Button And Verify Error Message     Currency is required.

Validate Set Currency
    [Tags]    REGRESSION
    Verify Set First Currency

Validate Click Submit Button And Verify Warning Message
    [Tags]    REGRESSION
    Verify Click Submit Button To Verify Warning Message

Validate Get Created Price Policy Name
    [Tags]    REGRESSION
    ${CREATED PRICE POLICY NAME} =       Verify Get Created Cost Policy Name
    set suite variable          ${CREATED PRICE POLICY NAME}

Validate Verify Set Reference Price List
    [Tags]    REGRESSION
    ixreport_page_resource.Verify Set Reference Price List     ${CREATED PRICE POLICY NAME}

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

Validate Close IxReport Window
    [Tags]    REGRESSION
    Verify Close IxReport Window