*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Customer Price Exceptions Upload Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/sell_page_test_data_source.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

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
    Verify Select Price Exception File To Be Uploaded       ${TEMPLATE PATH}/${CALL TYPE}/${PRICE EXCEPTION TEMPLATE NAME}

Validate Get Created Customer Name
    [Tags]    REGRESSION
    Verify Get Created Customer Name

Validate Set Customer For Upload Price Exceptions
    [Tags]    REGRESSION
    Verify Set Customer For Upload Price Exceptions

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

Validate Close Jobs Tab After Upload
    [Tags]    REGRESSION
    sell_page_resource.Verify Close Current Tab        ${JOBS TAB NAME PREFIX}

Validate Set Number Plan For Price Exceptions Search
    [Tags]    REGRESSION
    ${NUMBER PLAN} =     Verify Get CSNP Number Plan
    Verify Set Number Plan For Price Exceptions      ${NUMBER PLAN}

Validate Set Customers For Price Exceptions Search
    [Tags]    REGRESSION
    Verify Set Customers

Validate Click Price Exceptions Search Button
    [Tags]    REGRESSION
    Verify Click Price Exceptions Search Button
