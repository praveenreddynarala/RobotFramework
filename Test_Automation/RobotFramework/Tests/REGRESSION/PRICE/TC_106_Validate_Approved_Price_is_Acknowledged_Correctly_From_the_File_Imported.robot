*** Settings ***
Documentation     [TAENOSIS-679] A Test Suite With Set Of Tests To Validate approved price is acknowledged correctly from the file imported.

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Sell Module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Sell' From Main Menu

Validate Navigate to Customer Screen
    [Tags]    REGRESSION
   Click On Customer Tab

Validate Filter Customer Grid
    [Tags]    REGRESSION
    ${CUSTOMER} =   Verify Get Created Customer Name
    Verify Grid Filter Details       Customer       ${CUSTOMER}

Validate Click Customer Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Customer Grid First Row Inline Action Button

Validate Select Inline Action Item 'Upload Price Exceptions'
    [Tags]    REGRESSION
    sell_page_resource.Verify Select Inline Action Item        Upload Price Exceptions

Validate Select Upload To Requested Radio Button
    [Tags]    REGRESSION
    Verify Select Upload To Requested Radio Button

Validate Click Upload Price Exceptions Browse Button
    [Tags]    REGRESSION
    Verify Click Upload Price Exceptions Browse Button

Validate Browse Expected Template
    [Tags]    REGRESSION
    ${CALL TYPE} =   Verify Get Call Type
    sell_page_resource.Verify Select The File To Be Uploaded           ${TEMPLATE PATH}/${CALL TYPE}/${PRICE EXCEPTION VALID TEMPLATE NAME}

Validate Click Upload Price Exceptions Button
    [Tags]    REGRESSION
    Verify Click Price Exceptions Upload Button

Validate Close Sell Window
    [Tags]    REGRESSION
    Verify Close Sell Window

Validate Navigate to Price Module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Click Review Customer Price Exception Requests Link
    [Tags]    REGRESSION
   Verify Click Review Customer Price Exception Requests Link

Validate Click Price Exception Request Import Button
    [Tags]    REGRESSION
    Verify Click Price Exception Request Import Button

Validate Click Price Exception Request Import File Browse Button
    [Tags]    REGRESSION
    Verify Click Price Exception Request Import File Browse Button

Validate Select The File To Be Uploaded
    [Tags]    REGRESSION
    ${CALL TYPE} =   Verify Get Call Type
    price_page_resource.Verify Select The File To Be Uploaded       ${TEMPLATE PATH}/${CALL TYPE}/${PRICE EXCEPTION REQUEST IMPORT FILE NAME}

Validate Click Price Exception Request File Upload Button
    [Tags]    REGRESSION
    price_page_resource.Verify Click Upload Button

Validate Navigate to Price Dashboard
    [Tags]    REGRESSION
    Verify Select Price Dashboard

Validate Click Review Customer Price Exception Requests Screen
    [Tags]    REGRESSION
   Verify Click Review Customer Price Exception Requests Link

Validate Set Requested Status
    [Tags]    REGRESSION
    price_page_resource.Verify Set Status       Requested

Validate Click Price Exceptions Search Button
    [Tags]    REGRESSION
    price_page_resource.Verify Click Price Exceptions Search Button

Validate Click Price Exception Request Export Button
    [Tags]    REGRESSION
    Verify Click Price Exception Request Export Button

