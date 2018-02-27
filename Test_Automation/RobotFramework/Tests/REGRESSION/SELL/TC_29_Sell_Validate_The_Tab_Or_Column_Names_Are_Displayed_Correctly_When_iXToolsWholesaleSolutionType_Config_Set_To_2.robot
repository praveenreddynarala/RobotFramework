*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate The Tab Or Column Names Are Displayed Correctly When iXToolsWholesaleSolutionType Config Set To 2

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/sell_page_test_data_source.robot

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
    Verify Set Value In Current Value Column        2

Validate Close System Admin Window
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to Sell module
    [Tags]    REGRESSION
    Click On Home Icon And Select 'Sell' From Main Menu

Validate Navigate to Customer Tab
    [Tags]    REGRESSION
    Click On Customer Tab

Validate Verify Get Created Customer Name
    [Tags]    REGRESSION
    Verify Get Created Customer Name

Validate Filter Customer Grid Column
    [Tags]    REGRESSION
    Verify Filter Customer Grid Column

Validate Click On Customer Grid Inline Action Button
    [Tags]    REGRESSION
    Verify Click Customer Grid First Row Inline Action Button

Validate Select Inline Action Item
    [Tags]    REGRESSION
    sell_page_resource.Verify Select Inline Action Item        ${CUSTOMER MCC-MNC INLINE ITEM NAME}

Validate The MCC-MNC Tab On Customer Profile Page Is Available
    [Tags]    REGRESSION
    Verify The Specific Tab On Customer Profile Page Is Available       ${MCC-MNC TAB NAME}

Validate The MCC-MNC Column On Customer Profile Grid Is Available
    [Tags]    REGRESSION
    Verify The Specific Column On Customer Profile Grid Is Available       ${MCC-MNC COLUMN NAME}