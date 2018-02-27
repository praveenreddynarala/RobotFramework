*** Settings ***
Documentation    [TAENOSIS-842] A Test Suite With Set Of Tests To Validate DD Tab Displays All Data For Customer Offers On Legacy UI

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixtrade_page_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/sell_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CREATED CUSTOMER NAME}        ${EMPTY}

*** Test Cases ***
Validate Navigate to Sell module
    [Tags]    REGRESSION
    Click On Home Icon And Select 'Sell' From Main Menu

Validate Navigate to Customer Tab
    [Tags]    REGRESSION
    Click On Customer Tab

Validate Get Created Customer Name
    [Tags]    REGRESSION
    ${CREATED CUSTOMER NAME} =      Verify Get Created Customer Name
    set suite variable          ${CREATED CUSTOMER NAME}

Validate Click Customer Price Lists Button
    [Tags]    REGRESSION
    Verify Click On Customer Price Lists Button

Validate Click Upload Customer Price Lists Button
    [Tags]    REGRESSION
    Verify Click Upload Customer Price Lists Button

Validate Click Upload Customer Price Lists Browse Button
    [Tags]    REGRESSION
    Verify Click Upload Customer Price Lists Browse Button

Validate Select The File To Be Uploaded
    [Tags]    REGRESSION
    ${CALL TYPE} =      Verify Get Call Type
    sell_page_resource.Verify Select The File To Be Uploaded       ${TEMPLATE PATH}/${CALL TYPE}/${CUSTOMER PRICE LIST TEMPLATE NAME}

Validate Set Customer Name For Price List First Upload
    [Tags]    REGRESSION
    Verify Set Customer Name For Price List Upload

Validate Click Price Exceptions Upload Button
    [Tags]    REGRESSION
    Verify Click Price Exceptions Upload Button

Validate Set Customers
    [Tags]    REGRESSION
    Verify Set Customers

Validate Compare Customer Price List Number Of Rows After Upload
    [Tags]    REGRESSION
    Verify Compare Customer Price List Number Of Rows After Upload For One Upload

Validate Close Sell Module
    [Tags]    REGRESSIon
    Verify Close Sell Window

Validate Navigate to Contracts Module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate Navigate to IXTrade module
    [Tags]    REGRESSION
    Go To IXTrade Screen With Specific Url

Validate Click Customer Offers Submenu
    [Tags]    REGRESSION
    Verify Click Customer Offers Submenu

Validate Set Customer Name For Search
    [Tags]    REGRESSION
    Verify Set Vendor Name For Search       ${CREATED CUSTOMER NAME}

Validate Click Customer Offers Go Button
    [Tags]    REGRESSION
    Verify Click Vendor Offers Go Button

Validate Click Customer Offer First Plus Button
    [Tags]    REGRESSION
    Verify Click Vendor Offer First Plus Button

Validate Click Customer Offer First DDicon Button
    [Tags]    REGRESSION
    Verify Click Customer Offer First DDicon Button

Validate Click Customer Offers Destination Go Button
    [Tags]    REGRESSION
    Verify Click Vendor Offers Destination Go Button

Validate Verify The Uploaded Dialed Digit Information Is Present
    [Tags]    REGRESSION
    Verify The Uploaded Dialed Digit Information Is Present