*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate the Job Notifiers For All Jobs In Price Module

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/price_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Price module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Navigate to Cost Policies Tab
    [Tags]    REGRESSION
    Click on Cost Policies Tab

Validate Get Created Cost Policy Name
    [Tags]    REGRESSION
    Verify Get Created Cost Policy Name

Validate Filter Cost Policy Grid With Created New Cost Policy
    [Tags]    REGRESSION
    Verify Filter Cost Policy Grid     ${COST POLICY COLUMN NAME}

Validate Click Cost Policy Grid Inline Action Button
    [Tags]    REGRESSION
    Verify Click Cost Policy Grid First Row Inline Action Button

Validate Click Cost Policy Grid Inline Item
    [Tags]    REGRESSION
    Verify Click Cost Policy Grid Inline Item       ${COSTS INLINE ITEM}

Validate Get Completed Status Green Button Jobs Count
    [Tags]    REGRESSION
    Verify Get Completed Status Green Button Jobs Count

Validate Get Failed Status Red Button Jobs Count
    [Tags]    REGRESSION
    Verify Get Failed Status Red Button Jobs Count

Validate Click Upload Costs Button
    [Tags]    REGRESSION
    Verify Click Upload Costs Button

Valdiate Click Costs Browse Button
    [Tags]    REGRESSION
    Verify Click Costs Browse Button

Valdiate Select The File To Be Uploaded
    [Tags]    REGRESSION
    ${CALL TYPE} =   Verify Get Call Type
    Verify Select The File To Be Uploaded       ${TEMPLATE PATH}/${CALL TYPE}/${TEMPLATE NAME}

Validate Click Upload Button
    [Tags]    REGRESSION
    price_page_resource.Verify Click Upload Button

Validate Compare Completed Status Green Buttons Jobs Count After Upload
    [Tags]    REGRESSION
    Verify Compare Completed Status Green Buttons Jobs Count After Upload

Validate Compare Failed Status Red Buttons Jobs Count After Upload
    [Tags]    REGRESSION
    Verify Compare Failed Status Red Buttons Jobs Count After Upload

Validate Close Cost Policy Tab
    [Tags]    REGRESSION
    price_page_resource.Verify Close Current Tab        ${VIEW COST POLICY TAB NAME}

Validate Navigate to Price Policies Tab
    [Tags]    REGRESSION
    Verify Select Price Policies Tab

Validate Click Price Policy Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Price Policy Grid First Row Inline Action Button

Validate Select View Price Policy Inline Action Item
    [Tags]    REGRESSION
    price_page_resource.Verify Select Inline Action Item        ${VIEW PRICE POLICY INLINE ITEM}

Validate Selecet Price Overrides Tab
    [Tags]    REGRESSION
    Verify Select Price Overrides Tab

Validate Get Completed Status Green Button Jobs Count For Price Override
    [Tags]    REGRESSION
    Verify Get Completed Status Green Button Jobs Count

Validate Get Failed Status Red Button Jobs Count For Price Override
    [Tags]    REGRESSION
    Verify Get Failed Status Red Button Jobs Count

Valdiate Click Upload Price Overrides Button
    [Tags]    REGRESSION
    Verify Click Upload Price Overrides Button

Validate Click Browse Button For Price Override
    [Tags]    REGRESSION
    Verify Click Price Override Browse Button

Valdiate Select The File To Be Uploaded For Price Override
    [Tags]    REGRESSION
    ${CALL TYPE} =   Verify Get Call Type
    Verify Select The File To Be Uploaded       ${TEMPLATE PATH}/${CALL TYPE}/${PRICE OVERRIDES TEMPLATE NAME}

Validate Click Upload Button For Price Override
    [Tags]    REGRESSION
    Verify Click Price Override Upload Button

Validate Compare Completed Status Green Buttons Jobs Count For Price Override
    [Tags]    REGRESSION
    Verify Compare Completed Status Green Buttons Jobs Count After Upload

Validate Compare Failed Status Red Buttons Jobs Count For Price Override
    [Tags]    REGRESSION
    Verify Compare Failed Status Red Buttons Jobs Count After Upload

Validate Close Price Policy Tab
    [Tags]    REGRESSION
    price_page_resource.Verify Close Current Tab        ${PRICE POLICY TAB NAME TEXT}

Validate Click Price Policy Grid First Row Checkbox
    [Tags]  REGRESSION
    Verify Click Price Policy Grid First Row Checkbox

Validate Click Generate Reference Prices Button
    [Tags]    REGRESSION
    Verify Click Generate Reference Prices Button

Validate Get Completed Status Green Button Jobs Count For Generate Reference Prices
    [Tags]    REGRESSION
    Verify Get Completed Status Green Button Jobs Count For Reference Price

Validate Get Failed Status Red Button Jobs Count For Generate Reference Prices
    [Tags]    REGRESSION
    Verify Get Failed Status Red Button Jobs Count For Reference Price

Validate Select Available Destinations
    [Tags]    REGRESSION
    ${DESTINATION} =    Verify Get Created Destination
    @{DESTINATIONS} =       create list       ${DESTINATION}
    Verify Select Available Destinations        @{DESTINATIONS}

Validate Click Generate Reference Prices Submit Button
    [Tags]    REGRESSION
    Verify Click Generate Reference Prices Submit Button

Validate Compare Completed Status Green Buttons Jobs Count For Generate Reference Prices
    [Tags]    REGRESSION
    Verify Compare Completed Status Green Buttons Jobs Count For Reference Price

Validate Compare Failed Status Red Buttons Jobs Count For Generate Reference Prices
    [Tags]    REGRESSION
    Verify Compare Failed Status Red Buttons Jobs Count For Reference Price