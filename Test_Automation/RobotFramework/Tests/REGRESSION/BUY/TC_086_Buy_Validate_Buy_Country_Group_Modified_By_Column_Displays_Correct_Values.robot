*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Buy Country Group Modified By Column Displays Correct Values

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/buy_page_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/business_admin_page_test_data_source.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/buy_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${USER NAME}        ${EMPTY}

*** Test Cases ***
Validate Navigate to System Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select Users Tab
    [Tags]    REGRESSION
    Click on Users Tab

Validate Set User Name For Search
    [Tags]    REGRESSION
    Verify Set User Name For Search     ${VALID USERNAME}

Validate Click Users Grid Search Button
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Get Name Of The User
    [Tags]    REGRESSION
    ${USER NAME} =      Verify Get Name Of The User
    set suite variable      ${USER NAME}

Validate Close System Admin Window
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to Buy module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Buy' From Main Menu

Validate Click Country Group
    [Tags]    REGRESSION
    Verify Click Country Group

Validate Click Create Country Groups Button
    [Tags]    REGRESSION
    Verify Click Create Country Group Button

Validate Set Country Group For Create
    [Tags]    REGRESSION
    Verify Set Country Group    ${TEST DATA PREFIX}

Validate Move Available Countries To Destination
    [Tags]    REGRESSION
    Verify Move Available Countries To Destination

Validate Click Save Country Groups Button
    [Tags]    REGRESSION
    Verify Click Save Country Group

Validate Close Country Group Tab
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Close Current Tab      ${COUNTRY GROUPS TAB NAME}

Validate Click Country Groups Button After Closing Tab
    [Tags]    REGRESSION
    Verify Click Country Group

Validate Select Country Group
    [Tags]    REGRESSION
    Verify Select Country Group

Validate Click Country Group Search Button
    [Tags]    REGRESSION
    Verify Click Country Group Search Button

Validate Get Country Group Grid Row Details
    [Tags]    REGRESSION
    Verify Get Country Group Grid Row Details

Validate Country Group
    [Tags]    REGRESSION
    Verify Country Group

Validate Country Group Scope
    [Tags]    REGRESSION
    Verify Country Group Scope      ${COUNTRY GROUP SCOPE}

Validate Click Country Group Grid Inline Action Button
    [Tags]    REGRESSION
    Verify Click Country Group Grid Inline Action Button

Validate Select Country Group Grid Inline Action Item
    [Tags]    REGRESSION
    Verify Select Country Group Grid Inline Action Item     ${COUNTRY GROUP GRID INLINE ACTION ITEM}

Validate Click Save Country Groups Button After Edit
    [Tags]    REGRESSION
    Verify Click Save Country Group

Validate Compare Country Groups Grid Modified By Column Value
    [Tags]    REGRESSION
    Verify Compare Country Groups Grid Modified By Column Value         ${USER NAME}

Validate Select Created Country Group Checkbox
    [Tags]    REGRESSION
    Verify Select Created Country Group Checkbox

Validate Click Country Group Delete Button
    [Tags]    REGRESSION
    Verify Click Country Group Delete Button