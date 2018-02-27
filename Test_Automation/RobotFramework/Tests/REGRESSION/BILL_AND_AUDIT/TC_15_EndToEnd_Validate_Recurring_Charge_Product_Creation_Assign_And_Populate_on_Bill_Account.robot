*** Settings ***
Documentation     [TAENOSIS-480] EndToEnd: Validate recurring charge product creation, Assign and Populate on Bill account

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/bill_and_audit_page_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/bill_and_audit_page_test_data_source.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/carrier_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Carrier Module
    [Tags]    REGRESSION
    click on home icon and select 'carrier' from main menu

Validate Filter Carriers Grid
    [Tags]    REGRESSION
    ${CARRIER ACCOUNT} =        Verify Get Created Carrier Name
    carrier_page_resource.Verify Grid Filter Details          ${CARRIER NAME COLUMN NAME}           ${CARRIER ACCOUNT}

Validate Click Inline Action Button
    [Tags]    REGRESSION
    Verify Click Carriers Page First Row Inline Action Button

Validate Select Carrier Relationships Inline Item
    [Tags]    REGRESSION
    carrier_page_resource.Verify Select Inline Action Item       ${CARRIER RELATIONSHIPS INLINE ITEM}

Validate Expand Bill And Audit Account Section
    [Tags]    REGRESSION
    Verify Expand Bill And Audit Account Section

Validate Click Bill And Audit Accounts Grid Inline Action Button
    [Tags]    REGRESSION
    ${BILL ACCOUNT} =       Verify Get Created Bill Account Name
    Verify Click Bill And Audit Accounts Grid Inline Action Button          ${BILL ACCOUNT}

Validate Select Edit Inline Item
    [Tags]    REGRESSION
    carrier_page_resource.Verify Select Inline Action Item     ${EDIT INLINE ITEM}

Validate Expand Bill Account Recurrent Charges Section
    [Tags]    REGRESSION
    Verify Expand Bill Account Recurrent Charges Section

Validate Click Recurrent Charges Add New Record Button
    [Tags]    REGRESSION
    Verify Click Recurrent Charges Add New Record Button

Validate Select Recurrent Charges Charge Product
    [Tags]    REGRESSION
    Verify Select Recurrent Charges Charge Product

Validate Select Recurrent Charges Grid Active Checkbox
    [Tags]    REGRESSION
    Verify Select Recurrent Charges Grid Active Checkbox

Validate Set Recurrent Charges Recurring Charge name
    [Tags]    REGRESSION
    Verify Set Recurrent Charges Recurring Charge name          ${TEST DATA PREFIX}

Validate Get Recurrent Charges Recurring Charge name
    [Tags]    REGRESSION
    ${CHARGE NAME} =        Verify Get Recurring Charge Name
    log     ${CHARGE NAME}
    set suite variable          ${CHARGE NAME}

Validate Set Recurrent Charges Begin Date
    [Tags]    REGRESSION
    Verify Set Recurrent Charges Begin Date         2/8/2018 12:00 AM

Validate Set Recurrent Charges Amount
    [Tags]    REGRESSION
    Verify Set Recurrent Charges Charge Amount      10

Validate Set Recurrent Charges Method
    [Tags]    REGRESSION
    Verify Set Recurrent Charges Charge Method

Validate Set Recurrent Charges Accounting Code
    [Tags]    REGRESSION
    Verify Select Recurrent Charges Accounting Code

Validate Click Recurrent Charges Save Changes Button
    [Tags]    REGRESSION
    Verify Click Recurrent Charges Save Changes Button

Validate Click Recurrent Charges Save Changes Button
    [Tags]    REGRESSION
    Verify Click Create Bill Account Save Button

Validate Close Edit Bill Account Pop Up
    [Tags]    REGRESSION
    Verify Close Edit Bill Account Pop Up

Validate Close Carrier Window
    [Tags]    REGRESSION
    Verify Close Carrier Window

