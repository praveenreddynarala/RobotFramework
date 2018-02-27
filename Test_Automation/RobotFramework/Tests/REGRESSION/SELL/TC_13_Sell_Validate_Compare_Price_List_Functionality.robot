*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Compare Price List Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/sell_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CALL TYPE}        ${EMPTY}

*** Test Cases ***
Validate Navigate to Sell module
    [Tags]    REGRESSION
    Click On Home Icon And Select 'Sell' From Main Menu

Validate Navigate to Customer Tab
    [Tags]    REGRESSION
    Click On Customer Tab

Validate Get Created Customer Name
    [Tags]    REGRESSION
    Verify Get Created Customer Name

Validate Click Customer Price Lists Button
    [Tags]    REGRESSION
    Verify Click On Customer Price Lists Button

Validate Click Upload Customer Price Lists Button For First Upload
    [Tags]    REGRESSION
    Verify Click Upload Customer Price Lists Button

Validate Click Upload Customer Price Lists Browse Button For First Upload
    [Tags]    REGRESSION
    Verify Click Upload Customer Price Lists Browse Button

Validate Select The File To Be Uploaded For First Upload
    [Tags]    REGRESSION
    ${CALL TYPE} =      Verify Get Call Type
    set suite variable      ${CALL TYPE}
    Verify Select The File To Be Uploaded       ${TEMPLATE PATH}/${CALL TYPE}/${CUSTOMER PRICE LIST TEMPLATE NAME}

Validate Set Customer Name For Price List First Upload
    [Tags]    REGRESSION
    Verify Set Customer Name For Price List Upload

Validate Click Price Exceptions Upload Button For First Upload
    [Tags]    REGRESSION
    Verify Click Price Exceptions Upload Button

Validate Click Upload Customer Price Lists Button For Second Upload
    [Tags]    REGRESSION
    Verify Click Upload Customer Price Lists Button

Validate Click Upload Customer Price Lists Browse Button For Second Upload
    [Tags]    REGRESSION
    Verify Click Upload Customer Price Lists Browse Button

Validate Select The File To Be Uploaded For Second Upload
    [Tags]    REGRESSION
    Verify Select The File To Be Uploaded       ${TEMPLATE PATH}/${CALL TYPE}/${CUSTOMER PRICE LIST TEMPLATE NAME}

Validate Set Customer Name For Price List Second Upload
    [Tags]    REGRESSION
    Verify Set Customer Name For Price List Upload

Validate Click Price Exceptions Upload Button For Second Upload
    [Tags]    REGRESSION
    Verify Click Price Exceptions Upload Button

Validate Set Customers
    [Tags]    REGRESSION
    Verify Set Customers

Validate Compare Customer Price List Number Of Rows After Upload
    [Tags]    REGRESSION
    Verify Compare Customer Price List Number Of Rows After Upload

Validate Select Customer Price Lists Checkboxes
    [Tags]    REGRESSION
    Verify Select Customer Price Lists Checkbox

Validate Click Compare Price Lists Button
    [Tags]    REGRESSION
    Verify Click Compare Price Lists Button

Validate Selected Price Lists Details Info
    [Tags]    REGRESSION
    Verify Selected Price Lists Details Info

Validate Rates Grid Columns Header
    [Tags]    REGRESSION
    Verify Rates Grid Columns Header

Validate Close Compare Price Lists Pop Up
    [Tags]    REGRESSION
    Verify Close Compare Price Lists Pop Up