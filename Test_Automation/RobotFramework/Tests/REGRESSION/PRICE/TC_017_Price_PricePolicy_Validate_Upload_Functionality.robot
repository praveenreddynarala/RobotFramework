*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Upload Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/price_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Price module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Navigate to Price Policies Tab
    [Tags]    REGRESSION
    Verify Select Price Policies Tab

Validate Get Created Price Policy Name
    [Tags]    REGRESSION
    Verify Get Created Cost Policy Name

Validate Filter Price Policy Column
    [Tags]    REGRESSION
    Verify Filter Cost Policy Grid          ${PRICE POLICY COLUMN NAME}

Validate Click Price Policy Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Price Policy Grid First Row Inline Action Button

Validate Select View Price Policy Inline Action Item
    [Tags]    REGRESSION
    price_page_resource.Verify Select Inline Action Item        ${VIEW PRICE POLICY INLINE ITEM}

Validate Selecet Price Overrides Tab
    [Tags]    REGRESSION
    Verify Select Price Overrides Tab

Validate Click Price Overrides Completed Status Green Button
    [Tags]    REGRESSION
    Verify Click Price Overrides Completed Status Green Button

Validate Get Completed Jobs Count
    [Tags]    REGRESSION
    Verify Get Completed Jobs Count

Validate Close Jobs Tab
    [Tags]    REGRESSION
    price_page_resource.Verify Close Current Tab        ${JOBS TAB NAME}

Valdiate Click Upload Price Overrides Button
    [Tags]    REGRESSION
    Verify Click Upload Price Overrides Button

Validate Click Browse Button
    [Tags]    REGRESSION
    Verify Click Costs Browse Button

Valdiate Select The File To Be Uploaded
    [Tags]    REGRESSION
    ${CALL TYPE} =   Verify Get Call Type
    Verify Select The File To Be Uploaded       ${TEMPLATE PATH}/${CALL TYPE}/${PRICE OVERRIDES TEMPLATE NAME}

Validate Click Upload Button
    [Tags]    REGRESSION
    price_page_resource.Verify Click Upload Button

Validate Click Price Overrides Completed Status Green Button After Upload
    [Tags]    REGRESSION
    Verify Click Price Overrides Completed Status Green Button

Validate Compare Completed Jobs Count After Upload
    [Tags]    REGRESSION
    Verify Compare Completed Jobs Count After Upload
