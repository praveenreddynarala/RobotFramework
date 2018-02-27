*** Settings ***
Documentation     A Test Suite With Set Of Tests To Review Customer Price Exception Requests End To End Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/sell_page_test_data_source.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/price_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CUSTOMER NAME}            ${EMPTY}

*** Test Cases ***
Validate Navigate to Sell module
    [Tags]    REGRESSION
    Click On Home Icon And Select 'Sell' From Main Menu

Validate Navigate to Customer Tab
    [Tags]    REGRESSION
    Click On Customer Tab

Validate Click Price Exceptions Button
    [Tags]    REGRESSION
    Verify Click Price Exceptions Button

Validate Click Pricing Exception Upload Link
    [Tags]    REGRESSION
    Verify Click Pricing Exception Upload Link

Validate Set Status For Pricing Exceptions Search
    [Tags]    REGRESSION
    Verify Set Status For Pricing Exceptions Search     ${COMPLETED STATUS}

Validate Click Pricing Exception Upload Search Button
    [Tags]    REGRESSION
    Verify Click Pricing Exception Upload Search Button

Validate Get Price Exceptions Number Of Rows Form Grid
    [Tags]    REGRESSION
    Verify Get Price Exceptions Number Of Rows Form Grid

Validate Close Jobs Tab Before Upload
    [Tags]    REGRESSION
    sell_page_resource.Verify Close Current Tab     ${JOBS TAB NAME PREFIX}

Validate Click Upload Price Exceptions Button
    [Tags]    REGRESSION
    Verify Click Upload Price Exceptions Button

Validate Click Upload Price Exceptions Browse Button
    [Tags]    REGRESSION
    Verify Click Upload Price Exceptions Browse Button

Validate Select Price Exception File To Be Uploaded
    [Tags]    REGRESSION
    ${CALL TYPE} =      Verify Get Call Type
    Verify Select Price Exception File To Be Uploaded       ${TEMPLATE PATH}/${CALL TYPE}/${PRICE EXCEPTION VALID TEMPLATE NAME}

Validate Get Created Customer Name
    [Tags]    REGRESSION
    ${CUSTOMER NAME} =      Verify Get Created Customer Name
    set suite variable          ${CUSTOMER NAME}

Validate Set Customer For Upload Price Exceptions
    [Tags]    REGRESSION
    Verify Set Customer For Upload Price Exceptions

Validate Select Upload To Requested Radio Button
    [Tags]    REGRESSION
    Verify Select Upload To Requested Radio Button

Validate Click Price Exceptions Uplaod Button
    [Tags]    REGRESSION
    Verify Click Price Exceptions Upload Button

Validate Click Pricing Exception Upload Link After Upload
    [Tags]    REGRESSION
    Verify Click Pricing Exception Upload Link

Validate Set Status For Pricing Exceptions Search After Upload
    [Tags]    REGRESSION
    Verify Set Status For Pricing Exceptions Search     ${COMPLETED STATUS}

Validate Click Pricing Exception Upload Search Button After Search
    [Tags]    REGRESSION
    Verify Click Pricing Exception Upload Search Button

Validate Compare Price Exceptions Number Of Rows From Grid
    [Tags]    REGRESSION
    Verify Compare Price Exceptions Number Of Rows From Grid

Validate Close Sell Window
    [Tags]    REGRESSION
    Verify Close Sell Window

Validate Navigate to Price module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Click Review Customer Price Exception Requests Link
    [Tags]    REGRESSION
    Verify Click Review Customer Price Exception Requests Link

Validate Click CPE Bundle Button
    [Tags]    REGRESSION
    Verify Click CPE Bundle Button

Validate Click CPE Bundle Create CPE Bundle Button
    [Tags]    REGRESSION
    Verify Click CPE Bundle Create CPE Bundle Button

Validate Set Customer Source
    [Tags]    REGRESSION
    Verify Set Customer Source      ${CUSTOMER NAME}

Validate Click Create CPE Bundle Save Button
    [Tags]    REGRESSION
    Verify Click Create CPE Bundle Save Button

Validate Select All Customers Of Pricing Exceptions
    [Tags]    REGRESSION
    Verify Select All Customers Of Pricing Exceptions

Validate Click Pricing Exceptions Save Button
    [Tags]    REGRESSION
    Verify Click Save Customer Profile Button

Validate Close Create Customer Price Lists Tab
    [Tags]     REGRESSION
    sell_page_resource.Verify Close Current Tab        CPE Bundle

Validate Set Status Before Status Updation
    [Tags]    REGRESSION
    sell_page_resource.Verify Set Status     @{STATUS ITEM LIST AFTER STATUS UPDATION}

Validate Click Price Exceptions Search Button
    [Tags]    REGRESSION
    sell_page_resource.Verify Click Price Exceptions Search Button

Validate Select Pricing Exception Grid First Row
    [Tags]    REGRESSION
    Verify Select Price Exception Grid First Row

Validate Set Price Exceptions Grid First Row Status
    [Tags]    REGRESSION
    Verify Set Price Exceptions Grid First Row Status        ${APPROVED STATUS}

Validate Click Save Changes Button For Approved
    [Tags]    REGRESSION
    sell_page_resource.Verify Click Save Changes Button

Validate Deselect Status Multiselect Kendo Dropdown
    [Tags]    REGRESSION
    Verify Clear Multiselection Kendo Dropdown      ${STATUS DROPDOWN LABEL}

Validate Set Status After Status Updation For Approved
    [Tags]    REGRESSION
    sell_page_resource.Verify Set Status     @{STATUS ITEM LIST FOR COPY PRICE EXCEPTIONS}

Validate Click Price Exceptions Search Button For Deleted
    [Tags]    REGRESSION
    sell_page_resource.Verify Click Price Exceptions Search Button

Validate Select Pricing Exception Grid First Row For Deleted
    [Tags]    REGRESSION
    Verify Select Price Exception Grid First Row

Validate Set Price Exceptions Grid First Row Status For Deleted
    [Tags]    REGRESSION
    Verify Set Price Exceptions Grid First Row Status        ${DELETED STATUS}

Validate Click Save Changes Button For Deleted
    [Tags]    REGRESSION
    sell_page_resource.Verify Click Save Changes Button

Validate Select Price Exception Grid Multiple Row Checkbox
    [Tags]    REGRESSION
    Verify Select Price Exception Grid Multiple Row

Validate Click Bulk Edit Button
    [Tags]    REGRESSION
    sell_page_resource.Verify Click Bulk Edit Button

Validate Set Bulk Edit Status
    [Tags]    REGRESSION
    sell_page_resource.Verify Set Bulk Edit Status     ${APPROVED STATUS}

Validate Click Bulk Edit Submit Button
    [Tags]    REGRESSION
    sell_page_resource.Verify Click Bulk Edit Submit Button

Validate Click Save Changes Button After Bulk Edit
    [Tags]    REGRESSION
    sell_page_resource.Verify Click Save Changes Button

Validate Deselect Status Multiselect Kendo Dropdown After Bulk Edit
    [Tags]    REGRESSION
    Verify Clear Multiselection Kendo Dropdown      ${STATUS DROPDOWN LABEL}

Validate Set Status After Status Updation After Bulk Edit
    [Tags]    REGRESSION
    sell_page_resource.Verify Set Status     @{APPROVED AND DELETED STATUS ITEM LIST}

Validate Click Price Exceptions Search Button After Bulk Edit
    [Tags]    REGRESSION
    sell_page_resource.Verify Click Price Exceptions Search Button

Validate Select Price Exception Request Grid Multiple Row After Bulk Edit
    [Tags]    REGRESSION
    Verify Select Price Exception Request Grid Multiple Row

Validate Click Bulk Edit Button To Verify Error Pop Up
    [Tags]    REGRESSION
    sell_page_resource.Verify Click Bulk Edit Button

Validate Bulk Edit Error Pop Up Displayed
    [Tags]    REGRESSION
    Verify Bulk Edit Error Pop Up Displayed