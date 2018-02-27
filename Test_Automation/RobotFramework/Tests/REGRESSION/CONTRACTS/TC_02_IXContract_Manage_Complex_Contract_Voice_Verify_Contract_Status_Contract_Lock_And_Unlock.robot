*** Settings ***
Documentation     A Test Suite With Set Of Tests To Manage Complex Contract SMS Verify Contract Status Contract Lock And Unlock

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/ixconnect_page_test_data_source.robot

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

Validate Click Manage Complex Contract Button
    [Tags]    REGRESSION
    Verify Click Manage Complex Contract Button

Validate Set Complex Contract Account
    [Tags]    REGRESSION
    ${CREATED CARRIER NAME} =       Verify Get Created Carrier Name
    Verify Set Complex Contract Account      ${CREATED CARRIER NAME}

Validate Set Complex Contract Draft Status
    [Tags]    REGRESSION
    Verify Set Complex Contract Status      ${DRAFT STATUS}

Validate Click Complex Contract Management Go Button For Draft
    [Tags]    REGRESSION
    Verify Click Manage Complex Contracts Go Button

Validate Click Contracts Grid First Row Contract Status Change Button For Draft
    [Tags]    REGRESSION
    Verify Click Contracts Grid First Row Contract Status Change Button

Validate Click Change Contract Status Radio Button For Submitted
    [Tags]    REGRESSION
    Verify Click Change Contract Status Radio Button    ${SUBMITTED STATUS}

Validate Click Change Contract Status Save Button For Submitted
    [Tags]    REGRESSION
    Verify Click Change Contract Status Save Button

Validate Set Complex Contract Submitted Status
    [Tags]    REGRESSION
    Verify Set Complex Contract Status      ${SUBMITTED STATUS}

Validate Click Complex Contract Management Go Button For Submitted
    [Tags]    REGRESSION
    Verify Click Manage Complex Contracts Go Button

Validate Click Contracts Grid First Row Contract Status Change Button For Submitted
    [Tags]    REGRESSION
    Verify Click Contracts Grid First Row Contract Status Change Button

Validate Click Change Contract Status Radio Button For Approved
    [Tags]    REGRESSION
    Verify Click Change Contract Status Radio Button    ${APPROVED STATUS}

Validate Click Change Contract Status Save Button For Approved
    [Tags]    REGRESSION
    Verify Click Change Contract Status Save Button

Validate Set Complex Contract Approved Status
    [Tags]    REGRESSION
    Verify Set Complex Contract Status      ${APPROVED STATUS}

Validate Click Complex Contract Management Go Button For Approved
    [Tags]    REGRESSION
    Verify Click Manage Complex Contracts Go Button

Validate Set Contracts Grid Signature Date
    [Tags]    REGRESSION
    Verify Set Contracts Grid Signature Date

Validate Click Contracts Grid First Row Contract Status Change Button For Approved
    [Tags]    REGRESSION
    Verify Click Contracts Grid First Row Contract Status Change Button

Validate Click Change Contract Status Radio Button For Submitted for Accounting Approval
    [Tags]    REGRESSION
    Verify Click Change Contract Status Radio Button    ${SUBMITTED FOR ACCOUNTING APPROVAL STATUS}

Validate Click Change Contract Status Save Button For Submitted for Accounting Approval
    [Tags]    REGRESSION
    Verify Click Change Contract Status Save Button

Validate Set Complex Contract Submitted for Accounting Approval Status
    [Tags]    REGRESSION
    Verify Set Complex Contract Status      ${SUBMITTED FOR ACCOUNTING APPROVAL STATUS}

Validate Click Complex Contract Management Go Button For Submitted for Accounting Approval
    [Tags]    REGRESSION
    Verify Click Manage Complex Contracts Go Button

Validate Click Contracts Grid First Row Contract Status Change Button For Submitted for Accounting Approval
    [Tags]    REGRESSION
    Verify Click Contracts Grid First Row Contract Status Change Button

Validate Click Change Contract Status Radio Button For Signed
    [Tags]    REGRESSION
    Verify Click Change Contract Status Radio Button    ${SIGNED STATUS}

Validate Click Change Contract Status Save Button For Signed
    [Tags]    REGRESSION
    Verify Click Change Contract Status Save Button

Validate Set Complex Contract Locked Status
    [Tags]    REGRESSION
    Verify Set Complex Contract Locked Status       ${YES STATUS}

Validate Set Complex Contract Signed Status
    [Tags]    REGRESSION
    Verify Set Complex Contract Status      ${SIGNED STATUS}

Validate Click Complex Contract Management Go Button For Signed
    [Tags]    REGRESSION
    Verify Click Manage Complex Contracts Go Button

Validate Click Contracts Grid First Row Contract Name
    [Tags]    REGRESSION
    Verify Click Contracts Grid First Row Contract Name

Validate Edit Contract Name Is Disabled
    [Tags]    REGRESSION
    Verify Edit Contract Name Is Disabled

Validate Click Contract Workflow Link
    [Tags]    REGRESSION
    Verify Click Contract Workflow Link

Validate Unlock Contracts Grid First Row
    [Tags]    REGRESSION
    Verify Unlock Contracts Grid First Row

Validate Click Change Contract Locked Status Radio Button
    [Tags]    REGRESSION
    Verify Click Change Contract Locked Status Radio Button     ${UNLOCK STATUS}

Validate Click Change Contract Status Save Button
    [Tags]    REGRESSION
    Verify Click Change Contract Status Save Button

Validate Set Complex Contract Unlocked Status
    [Tags]    REGRESSION
    Verify Set Complex Contract Locked Status       ${NO STATUS}

Validate Click Complex Contract Management Go Button For Unlocked
    [Tags]    REGRESSION
    Verify Click Manage Complex Contracts Go Button

Validate Click Contracts Grid First Row Contract Name For Unlocked
    [Tags]    REGRESSION
    Verify Click Contracts Grid First Row Contract Name

Validate Edit Contract Name Is Enable
    [Tags]    REGRESSION
    Verify Edit Contract Name Is Enable

Validate Close Contracts Page
    [Tags]    REGRESSION
    Verify Close IxConnect Window
