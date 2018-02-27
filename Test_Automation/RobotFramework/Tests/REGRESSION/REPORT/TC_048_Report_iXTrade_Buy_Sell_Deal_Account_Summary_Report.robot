*** Settings ***
Documentation     [TAENOSIS-726] A Test Suite With Set Of Tests For Verify iXTrdae Buy Sell Deal Account Summary Report

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixreport_page_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/ixreport_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CREATED ACCOUNT NAME}     ${EMPTY}

*** Test Cases ***
Validate Navigate to Report Module
    [Tags]    REGRESSION
    Verify Switch To IXReport

Validate Expand Network Reports Section
    [Tags]    REGRESSION
    Verify Expand Reports Section       ${IXTRADE REPORTS MENU}

Validate Click Sub Report Item
    [Tags]    REGRESSION
    Verify Click Sub Report Item        ${BUY SELL DEAL ACCOUNT SUMMARY REPORT SUBMENU}

Validate Click Submit Button To Verify Warning Message
    [Tags]    REGRESSION
    Verify Click Submit Button To Verify Warning Message

Validate Get Created Account Name
    [Tags]    REGRESSION
    ${CREATED ACCOUNT NAME} =       Verify Get Created Carrier Name
    set suite variable          ${CREATED ACCOUNT NAME}

Validate Click Account Browse Button
    [Tags]    REGRESSION
    Verify Click Account Browse Button

Validate Set First Letters For Direction
    [Tags]    REGRESSION
    Verify Set First Letters    ${CREATED ACCOUNT NAME}

Validate Click Go Button For Direction
    [Tags]    REGRESSION
    Verify Click Go Button

Validate Select Row From Look Up Table
    [Tags]    REGRESSION
    Verify Select Row From Look Up Table        ${CREATED ACCOUNT NAME}

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