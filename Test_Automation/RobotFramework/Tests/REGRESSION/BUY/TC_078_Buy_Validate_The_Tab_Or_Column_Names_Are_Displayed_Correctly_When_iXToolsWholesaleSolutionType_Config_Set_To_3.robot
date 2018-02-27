*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate The Tab Or Column Names Are Displayed Correctly When iXToolsWholesaleSolutionType Config Set To 3

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/buy_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/buy_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to System Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select System Tab
    [Tags]    REGRESSION
    Click on System Tab

Validate Click Configuration Variables Button
    [Tags]    REGRESSION
    Verify Click Configuration Variables Button

Validate Set Variable Name
    [Tags]    REGRESSION
    Verify Set Variable Name    iXToolsWholesaleSolutionType

Validate Click Configuration Variables Grid Search Button
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        3

Validate Close System Admin Window
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate To Buy module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Buy' From Main Menu

Validate Navigate To Vendors Tab
    [Tags]    REGRESSION
    Verify Click On Vendors Tab

Validate Get Previous Created Vendor Name
    [Tags]    REGRESSION
    Verify Get Previous Created Vendor Name

Validate Filter Vendor Grid Column
    [Tags]    REGRESSION
    Verify Filter Vendor Grid Column After Create        ${VENDOR COLUMN NAME}

Validate Click On Vendor Grid Inline Action Button
    [Tags]    REGRESSION
    Verify Click Vendors Grid First Row Inline Action Button

Validate Select Inline Action Item
    [Tags]    REGRESSION
    Verify Select Inline Action Item With Inline Item Name        ${VENDOR DIALED DIGITS-MCC-MNC INLINE ITEM NAME}

Validate The Dialed Digits/MCC-MNC Tab On Vendor Profile Page Is Available
    [Tags]    REGRESSION
    Verify The Specific Tab On Vendor Profile Page Is Available       ${DIALED DIGITS-MCC-MNC TAB NAME}

Validate The Dialed Digits/MCC-MNC Column On Vendor Profile Grid Is Available
    [Tags]    REGRESSION
    Verify The Specific Column On Vendor Profile Grid Is Available       ${DIALED DIGITS-MCC-MNC COLUMN NAME}