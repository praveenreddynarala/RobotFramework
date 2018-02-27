*** Settings ***
Documentation     A Test Suite With Set Of Tests To Verify if the CPL Prev Date override field is updated in Sources & Policies and customer profile screen

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/sell_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CUSTOMER NAME}        ${EMPTY}
${CPL PREV DATE OVERRIDE}       ${EMPTY}

*** Test Cases ***
Validate Navigate to Business Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Business Admin' From Main Menu

Validate Navigate to Sell module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Sell' From Main Menu

Validate Select Cutomers Tab
    [Tags]    REGRESSION
    Click On Customer Tab

Validate Get Customer Grid Row Details
    [Tags]    REGRESSION
    Verify Get Customer Grid Row Details

Validate Get Customers Grid First Row Customer Name
    [Tags]    REGRESSION
    ${CUSTOMER NAME} =      Verify Get Customers Grid First Row Customer Name
    set suite variable      ${CUSTOMER NAME}

Validate Click Customer Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Customer Grid First Row Inline Action Button

Validate Select Customer Profile Inline Action Item
    [Tags]    REGRESSION
    sell_page_resource.Verify Select Inline Action Item         ${INLINE ACTION ITEM NAME}

Validate Get Cpl Prev Date Override
    [Tags]    REGRESSION
    ${CPL PREV DATE OVERRIDE} =      Verify Get Cpl Prev Date Override
    set suite variable      ${CPL PREV DATE OVERRIDE}

Validate Set Cpl Prev Date Override
    [Tags]    REGRESSION
    Verify Set Cpl Prev Date Override       Off

Validate Click Save Customer Profile Button
    [Tags]    REGRESSION
    Verify Click Save Customer Profile Button

Validate Close Current Tab
    [Tags]    REGRESSION
    sell_page_resource.Verify Close Current Tab     ${TAB NAME TO CLOSE}

Validate Close Sell Window
    [Tags]    REGRESSION
    Verify Close Sell Window

Validate Expand Trading Menu
    [Tags]    REGRESSION
    Verify Expand Trading Menu

Validate Click Source And Policies Submenu
    [Tags]    REGRESSION
    Verify Click Source And Policies Submenu

Validate Set Source For Search With Parameter
    [Tags]    REGRESSION
    Verify Set Source For Search With Parameter     ${CUSTOMER NAME}

Validate Click Search Button
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Click Search Button

Validate Compare Source Grid Cpl Prev Date Override
    [Tags]    REGRESSION
    Verify Compare Source Grid Cpl Prev Date Override       Off

Validate Set Source Grid Cpl Prev Date Override
    [Tags]    REGRESSION
    Verify Set Source Grid Cpl Prev Date Override           ${CPL PREV DATE OVERRIDE}

Verify Click Save Changes Button
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Click Save Changes Button

Varify Close Business Admin Window
    [Tags]    REGRESSION
    Verify Close Business Admin Window

Validate Navigate to Sell module For Verification
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Sell' From Main Menu

Validate Select Cutomers Tab For Verification
    [Tags]    REGRESSION
    Click On Customer Tab

Validate Click Customer Grid First Row Inline Action Button For Verification
    [Tags]    REGRESSION
    Verify Click Customer Grid First Row Inline Action Button

Validate Select Customer Profile Inline Action Item For Verification
    [Tags]    REGRESSION
    sell_page_resource.Verify Select Inline Action Item         ${INLINE ACTION ITEM NAME}

Validate Compare Cpl Prev Date Override
    [Tags]    REGRESSION
    Verify Compare Cpl Prev Date Override       ${CPL PREV DATE OVERRIDE}