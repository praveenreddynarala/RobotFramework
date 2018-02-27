*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Vendor Price List Upload With Non Numeric Dialed Digits

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/buy_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/buy_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CALL TYPE}                    ${EMPTY}

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

Validate Click On Vendor Price Lists
    [Tags]    REGRESSION
    Verify Click On Vendor Price Lists

Validate Click Vendor Price List Upload Failed Red Icon
    [Tags]    REGRESSION
    Verify Click Vendor Price List Upload Failed Red Icon

Validate Get Jobs Grid Initial Row Count
    [Tags]    REGRESSION
    Verify Get Jobs Grid Initial Row Count

Validate Close Jobs Tab
    [Tags]    REGRESSION
    Verify Close Job Tab    ${JOB TAB NAME}

Validate Close Vendor Price Lists Tab
    [Tags]    REGRESSION
    Verify Close Vendor Price Lists Tab     ${VENDOR PRICE LISTS TAB NAME}

Validate Get Previous Created Vendor Name
    [Tags]    REGRESSION
    Verify Get Previous Created Vendor Name

Validate Filter Vendor Grid Column
    [Tags]    REGRESSION
    Verify Filter Vendor Grid Column After Create        ${VENDOR COLUMN NAME}

Validate Click On Inline Action Button
    [Tags]    REGRESSION
    Verify Click On Inline Action Button After Create

Validate Select Upload Vendor Price List Inline Action Button
    [Tags]    REGRESSION
    Verify Select Buy Page Inline Action Item       ${UPLOAD VENDOR PRICE LIST INLINE ITEM NAME}

Validate Click Browse Button
    [Tags]    REGRESSION
    Verify Click On Browse Button

Validate Select The File To Be Uploaded
    [Tags]    REGRESSION
    ${CALL TYPE} =      Verify Get Call Type
    Verify Select The File To Be Uploaded        ${TEMPLATE PATH}/${CALL TYPE}/${INVALID TEMPLATES FOLDER}/${VENDOR PRICE LIST NON NUMERIC DIALED DIGITS TEMPLATE NAME}

Validate Click Upload Button
    [Tags]    REGRESSION
    Verify Click On Upload Button

Validate Click On Vendor Price Lists After Upload
    [Tags]    REGRESSION
    Verify Click On Vendor Price Lists

Validate Click Vendor Price List Upload Failed Red Icon After Upload
    [Tags]    REGRESSION
    Verify Click Vendor Price List Upload Failed Red Icon

Validate Compare Job Grid Number Of Rows
    [Tags]    REGRESSION
    Verify Compare Jobs Grid Number Of Rows

Validate Sort Reg Time Column In Descending Order
    [Tags]    REGRESSION
    Verify Sort Reg Time Column In Descending Order

Validate Click Failed Upload Info Icon
    [Tags]    REGRESSION
    Verify Click Failed Upload Info Icon

Validate Failed Upload Info
    [Tags]    REGRESSION
    Verify Failed Upload Info       ${ALL DESTINATION EXCLUDED FAILURE MESSAGE}

Validate Close Current Pop Up
    [Tags]    REGRESSION
    buy_page_resource.Verify Close Current Pop Up     ${ADDITIONAL INFO POP UP NAME}

Validate Close Jobs Tab After Upload
    [Tags]    REGRESSION
    Verify Close Job Tab    ${JOB TAB NAME}