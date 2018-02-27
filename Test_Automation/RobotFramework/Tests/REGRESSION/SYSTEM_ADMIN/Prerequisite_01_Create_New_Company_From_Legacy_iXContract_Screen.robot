*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Create New Company Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/ixconnect_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CURRENT VALUE}        ${EMPTY}

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

Validate Set Variable Name For ChargeType
    [Tags]    REGRESSION
    Verify Set Variable Name    ChargeType

Validate Click Configuration Variables Grid Search Button For ChargeType
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Get Current Value Column Value
    [Tags]    REGRESSION
    ${CURRENT VALUE} =      Verify Get Current Value Column Value
    set suite variable      ${CURRENT VALUE}

Validate Set Value In Current Value Column
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column    0

Validate Close System Admin Window
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to Contracts module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate Contracts Page Loaded Properly
    [Tags]    REGRESSION
    Is Contracts Page Loaded Properly

Validate Select Company Submenu
    [Tags]    REGRESSION
    Verify Select Company Submenu

Validate Switch To List Frame
    [Tags]    REGRESSION
    Verify Switch To List Frame

Validate Click New Button
    [Tags]    REGRESSION
    Verify Click New Button

Validate Switch To Default Content
    [Tags]    REGRESSION
    Verify Switch To Default Content

Validate Set Company Name
    [Tags]    REGRESSION
    Verify Set Company Name     ${TEST DATA PREFIX}

Validate Click Save Button
    [Tags]    REGRESSION
    Verify Click Company Save Button

Validate Close Contracts Page
    [Tags]    REGRESSION
    Verify Close IxConnect Window       ${True}

Validate Navigate to System Admin module To Revert
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select System Tab To Revert
    [Tags]    REGRESSION
    Click on System Tab

Validate Click Configuration Variables Button To Revert
    [Tags]    REGRESSION
    Verify Click Configuration Variables Button

Validate Set Variable Name To Revert
    [Tags]    REGRESSION
    Verify Set Variable Name    ChargeType

Validate Click Configuration Variables Grid Search Button To Revert
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Set Value In Current Value Column To Revert
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column    ${CURRENT VALUE}

Validate Close System Admin Window To Revert
    [Tags]    REGRESSION
    Verify Close System Admin Window
