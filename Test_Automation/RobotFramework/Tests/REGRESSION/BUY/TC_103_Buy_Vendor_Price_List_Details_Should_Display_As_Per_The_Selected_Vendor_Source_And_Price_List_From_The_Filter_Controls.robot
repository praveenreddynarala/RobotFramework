*** Settings ***
Documentation     [TAENOSIS-638] A Test Suite With Set Of Tests To Validate Vendor Price List Details Should Display As Per The Selected Vendor Source And Price List From The Filter Controls

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/buy_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/buy_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CALL TYPE}        ${EMPTY}
${VENDOR NAME}      ${EMPTY}

*** Test Cases ***
Validate navigate to Buy module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Buy' From Main Menu

Validate Vendors Tab Is Available
    [Tags]    REGRESSION
    Verify The Vendors Tab Is Available

Validate Navigate To Vendors Tab
    [Tags]    REGRESSION
    Verify Click On Vendors Tab

Validate Click On Create Vendor Button
    [Tags]    REGRESSION
    Verify Click On Create Vendor Button

Validate Set Vendor Name
    [Tags]    REGRESSION
    Verify Set Vendor Name          ${TEST DATA PREFIX}

Validate Set Vendor Source
    [Tags]    REGRESSION
    Verify Set Vendor Source        ${TEST DATA PREFIX}

Validate Set IXtools Account
    [Tags]    REGRESSION
    Verify Set Ixtools Account

Validate Set Rate Plan
    [Tags]    REGRESSION
    Verify Set Rate Plan

Validate Set Call Type
    [Tags]    REGRESSION
    Verify Set Call Type            SMS

Validate Click On Save Vendor Profile Button
    [Tags]    REGRESSION
    Verify Click On Save Vendor Profile Button

Validate Close Create Vendor Tab
    [Tags]    REGRESSION
    Verify Close Create Vendor Tab      ${CREATE VENDOR TAB NAME}

Validate Click On Vendor Price List Button
    [Tags]    REGRESSION
    Verify Click On Vendor Price Lists

Validate Set From Date
    [Tags]    REGRESSION
    Verify Set From Date As Current Date

Validate Click Search Button
    [Tags]    REGRESSION
    Verify Click On Vendor Price Lists Search Button

Validate Get Vendor Price Lists Number Of Rows From Grid
    [Tags]    REGRESSION
    Verify Get Vendor Price Lists Number Of Rows From Grid

Validate Close Vendor Price Lists Tab
    [Tags]    REGRESSION
    Verify Close Vendor Price Lists Tab         ${VENDOR PRICE LISTS TAB NAME}

Validate Get Previous Created Vendor Name
    [Tags]    REGRESSION
    ${VENDOR NAME} =    Verify Get Previous Created Vendor Name
    set suite variable      ${VENDOR NAME}

Validate Filter Vendor Grid Column
    [Tags]    REGRESSION
    Verify Filter Vendor Grid Column After Create        ${VENDOR COLUMN NAME}      ${VENDOR NAME}

Validate Click On Inline Action Button
    [Tags]    REGRESSION
    Verify Click On Inline Action Button After Create       ${VENDOR NAME}

Validate Select Upload Vendor Price List Inline Action Button
    [Tags]    REGRESSION
    Verify Select Upload Vendor Price List Inline Action Button         ${UPLOAD VENDOR PRICE LIST INLINE ITEM NAME}

Validate Click On Browse Button
    [Tags]    REGRESSION
    Verify Click On Browse Button

Validate Select The File To Be Uploaded
    [Tags]    REGRESSION
    ${CALL TYPE} =      Verify Get Call Type
    set suite variable   ${CALL TYPE}
    Verify Select The File To Be Uploaded        ${TEMPLATE PATH}/${CALL TYPE}/${VENDOR PRICE LIST SMS TEMPALTE NAME}

Validate Read Data From Upload Excel File
    [Tags]    REGRESSION
    buy_page_resource.Verify Read Data From Upload Excel File     ${TEMPLATE PATH}/${CALL TYPE}/${VENDOR PRICE LIST SMS TEMPALTE NAME}

Validate Click Upload Button For New Upload
    [Tags]    REGRESSION
    Verify Click On Upload Button

Validate Click On Vendor Price Lists After New Upload
    [Tags]    REGRESSION
    Verify Click On Vendor Price Lists

Validate Compare Vendor Price Lists Number Of Rows From Grid For Second Upload
    [Tags]    REGRESSION
    Verify Compare Vendor Price Lists Number Of Rows From Grid

Validate Click Vendor Price List Grid First Row Inline Action Button For Detail
    [Tags]    REGRESSION
    Verify Click Vendor Price List Grid First Row Inline Action Button

Validate Select Buy Page Inline Action Item
    [Tags]    REGRESSION
    Verify Select Buy Page Inline Action Item       ${VIEW PRICE LIST DETAIL INLINE ITEM}

Validate Compare Vendor Price List Details Rates Grid Destination
    [Tags]    REGRESSION
    Verify Compare Vendor Price List Detail Rates Grid Destination

Validate Select Vendor Price List Detail Dial Digits Tab
    [Tags]    REGRESSION
    Verify Select Vendor Price List Detail Dial Digits Tab

Validate Compare Vendor Price List Details Dial Digits Grid Destination
    [Tags]    REGRESSION
    Verify Compare Vendor Price List Detail Dial Digits Grid Destination

Validate Select Vendor Price List Detail Qos Tab
    [Tags]    REGRESSION
    Verify Select View Price List Qos Tab

Validate Compare Qos With Excel Data
    [Tags]    REGRESSION
    Verify Compare Qos With Excel Data

Validate Close Buy Window
    [Tags]    REGRESSION
    Verify Close Buy Window
