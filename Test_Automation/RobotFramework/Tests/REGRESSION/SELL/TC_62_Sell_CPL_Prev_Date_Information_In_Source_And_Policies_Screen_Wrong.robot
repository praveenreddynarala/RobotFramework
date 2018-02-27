*** Settings ***
Documentation     [TAENOSIS-925] A Test Suite With Set Of Tests To Validate CPL Prev Date Information In Source And Policies Screen Wrong

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/business_admin_page_test_data_source.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/sell_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${SOURCE NAME}      ${EMPTY}

*** Test Cases ***
Validate Navigate to Business Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Business Admin' From Main Menu

Validate Expand Trading Menu
    [Tags]    REGRESSION
    Verify Expand Trading Menu

Validate Click Source And Policies Submenu
    [Tags]    REGRESSION
    Verify Click Source And Policies Submenu

Validate Set Source Type For Search
    [Tags]    REGRESSION
    Verify Set Source Type For Search       ${CUSTOMER SOURCE TYPE}

Validate Click Search Button
    [Tags]    REGRESSION
    Verify Click Sources Search Button

Validate Get Sources Grid Row Data
    [Tags]    REGRESSION
    Verify Get Sources Grid Row Data

Validate Get First Source Name
    [Tags]    REGRESSION
    ${SOURCE NAME} =    Verify Get First Source Name
    set suite variable      ${SOURCE NAME}

Validate Set Source Grid Cpl Prev Date Override
    [Tags]    REGRESSION
    Verify Set Source Grid Cpl Prev Date Override           On

Verify Click Save Changes Button
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Click Save Changes Button

Validate Navigate to Sell module For Verification
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Sell' From Main Menu

Validate Select Cutomers Tab For Verification
    [Tags]    REGRESSION
    Click On Customer Tab

Validate Filter Customer Grid Column
    [Tags]    REGRESSION
    Verify Filter Customer Grid Column      ${SOURCE NAME}

Validate Click Customer Grid First Row Inline Action Button For Verification
    [Tags]    REGRESSION
    Verify Click Customer Grid First Row Inline Action Button

Validate Select Customer Profile Inline Action Item For Verification
    [Tags]    REGRESSION
    sell_page_resource.Verify Select Inline Action Item         ${INLINE ACTION ITEM NAME}

Validate Compare Cpl Prev Date Override
    [Tags]    REGRESSION
    Verify Compare Cpl Prev Date Override       On

Varify Close Sell Window
    [Tags]    REGRESSION
    Verify Close Sell Window

Validate Set Source Grid Cpl Prev Date Override For Off
    [Tags]    REGRESSION
    Verify Set Source Grid Cpl Prev Date Override           Off

Verify Click Save Changes Button For Off
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Click Save Changes Button

Validate Navigate to Sell module For Verification For Off
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Sell' From Main Menu

Validate Select Cutomers Tab For Verification For Off
    [Tags]    REGRESSION
    Click On Customer Tab

Validate Filter Customer Grid Column For Off
    [Tags]    REGRESSION
    Verify Filter Customer Grid Column      ${SOURCE NAME}

Validate Click Customer Grid First Row Inline Action Button For Verification For Off
    [Tags]    REGRESSION
    Verify Click Customer Grid First Row Inline Action Button

Validate Select Customer Profile Inline Action Item For Verification For Off
    [Tags]    REGRESSION
    sell_page_resource.Verify Select Inline Action Item         ${INLINE ACTION ITEM NAME}

Validate Compare Cpl Prev Date Override For Off
    [Tags]    REGRESSION
    Verify Compare Cpl Prev Date Override       Off

Varify Close Sell Window For Off
    [Tags]    REGRESSION
    Verify Close Sell Window

Validate Set Source Grid Cpl Prev Date Override For Config Value
    [Tags]    REGRESSION
    Verify Set Source Grid Cpl Prev Date Override           Config Value

Verify Click Save Changes Button For Config Value
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Click Save Changes Button

Validate Navigate to Sell module For Verification For Config Value
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Sell' From Main Menu

Validate Select Cutomers Tab For Verification For Config Value
    [Tags]    REGRESSION
    Click On Customer Tab

Validate Filter Customer Grid Column For Config Value
    [Tags]    REGRESSION
    Verify Filter Customer Grid Column      ${SOURCE NAME}

Validate Click Customer Grid First Row Inline Action Button For Verification For Config Value
    [Tags]    REGRESSION
    Verify Click Customer Grid First Row Inline Action Button

Validate Select Customer Profile Inline Action Item For Verification For Config Value
    [Tags]    REGRESSION
    sell_page_resource.Verify Select Inline Action Item         ${INLINE ACTION ITEM NAME}

Validate Compare Cpl Prev Date Override For Config Value
    [Tags]    REGRESSION
    Verify Compare Cpl Prev Date Override       Config Value

Varify Close Sell Window For Config Value
    [Tags]    REGRESSION
    Verify Close Sell Window

Varify Close Business Admin Window For Config Value
    [Tags]    REGRESSION
    Verify Close Business Admin Window