*** Settings ***
Documentation     A Test Suite With Set Of Tests To Manage Complex Contract(Voice) Verify Edit Delete Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/ixconnect_page_test_data_source.robot

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
    Verify Click Search Button

Validate Set Value In Current Value Column
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        3

Validate Close System Admin Window
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to Contracts module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate Click Manage Complex Contracts Button
    [Tags]    REGRESSION
    Verify Click Manage Complex Contracts Button

Validate Set Contract Status
    [Tags]    REGRESSION
    Verify Set Contract Status      ${APPROVED CONTRACT STATUS}

Validate Click Manage Complex Contracts Go Button
    [Tags]    REGRESSION
    Verify Click Manage Complex Contracts Go Button

Validate Click Manage Complex Contracts Unlocked Button
    [Tags]    REGRESSION
    Verify Click Manage Complex Contracts Unlocked Button

Validate The Lock Unlock Popup Is Available
    [Tags]    REGRESSION
    Verify The Lock Unlock Popup Is Available

Validate Set Manage Complex Contracts Account
    [Tags]    REGRESSION
    ${CARRIER NAME} =       Verify Get Created Carrier Name
    Verify Set Contract Account     ${CARRIER NAME}

Validate Set All Contract Status
    [Tags]    REGRESSION
    Verify Set Contract Status      ${ALL CONTRACT STATUS}

Validate Click Manage Complex Contracts Go Button After Setting Account
    [Tags]    REGRESSION
    Verify Click Manage Complex Contracts Go Button

Validate Set Signature Date
    [Tags]    REGRESSION
    Verify Set Signature Date

Validate Click Manage Complex Contracts Save Button
    [Tags]    REGRESSION
    Verify Click Manage Complex Contracts Save Button

Validate Click Manage Complex Contracts Delete Button
    [Tags]    REGRESSION
    Verify Click Manage Complex Contracts Delete Button