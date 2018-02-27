*** Settings ***
Documentation     A Test Suite With Set Of Tests To Verify Contract Prioritized Workflow

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/ixconnect_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Contracts module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate Click Complex Contract Worklist Button
    [Tags]    REGRESSION
    Verify Click Complex Contract Worklist Button

Validate Click Filters Collapsible Arrow Button
    [Tags]    REGRESSION
    Verify Click Filters Collapsible Arrow Button

Validate Account Category Field On Complex Contract Worklist Is Available
    [Tags]    REGRESSION
    Verify Specific Field On Complex Contract Worklist Is Available     ${ACCOUNT CATEGORY FIELD NAME}

Validate Account Group Field On Complex Contract Worklist Is Available
    [Tags]    REGRESSION
    Verify Specific Field On Complex Contract Worklist Is Available     ${ACCOUNT GROUP FIELD NAME}

Validate Account Region Field On Complex Contract Worklist Is Available
    [Tags]    REGRESSION
    Verify Specific Field On Complex Contract Worklist Is Available     ${ACCOUNT REGION FIELD NAME}

Validate Account Country Field On Complex Contract Worklist Is Available
    [Tags]    REGRESSION
    Verify Specific Field On Complex Contract Worklist Is Available     ${ACCOUNT COUNTRY FIELD NAME}

Validate Account Field On Complex Contract Worklist Is Available
    [Tags]    REGRESSION
    Verify Specific Field On Complex Contract Worklist Is Available     ${ACCOUNT FIELD NAME}

Validate Contract Status Field On Complex Contract Worklist Is Available
    [Tags]    REGRESSION
    Verify Specific Field On Complex Contract Worklist Is Available     ${CONTRACT STATUS FIELD NAME}

Validate Direction Field On Complex Contract Worklist Is Available
    [Tags]    REGRESSION
    Verify Specific Field On Complex Contract Worklist Is Available     ${DIRECTION FIELD NAME}

Validate Set Complex Contract Worklist Contract Status
    [Tags]    REGRESSION
    Verify Set Complex Contract Worklist Contract Status        Draft

Validate Click Complex Contract Worklist Go Button
    [Tags]    REGRESSION
    Verify Click Complex Contract Worklist Go Button

Validate Account Category Column On Complex Contract Management Grid Is Available
    [Tags]    REGRESSION
    Verify Specific Column On Complex Contract Worklist Grid Is Available     ${ACCOUNT CATEGORY FIELD NAME}

Validate Account Group Column On Complex Contract Management Grid Is Available
    [Tags]    REGRESSION
    Verify Specific Column On Complex Contract Worklist Grid Is Available     ${ACCOUNT GROUP FIELD NAME}

Validate Account Region Column On Complex Contract Management Grid Is Available
    [Tags]    REGRESSION
    Verify Specific Column On Complex Contract Worklist Grid Is Available     ${ACCOUNT REGION FIELD NAME}

Validate Account Country Column On Complex Contract Management Grid Is Available
    [Tags]    REGRESSION
    Verify Specific Column On Complex Contract Worklist Grid Is Available     ${ACCOUNT COUNTRY FIELD NAME}

Validate Account Column On Complex Contract Management Grid Is Available
    [Tags]    REGRESSION
    Verify Specific Column On Complex Contract Worklist Grid Is Available     ${ACCOUNT FIELD NAME}

Validate Contract Name Column On Complex Contract Management Grid Is Available
    [Tags]    REGRESSION
    Verify Specific Column On Complex Contract Worklist Grid Is Available     ${CONTRACT NAME COLUMN NAME}

Validate Reference Number Column On Complex Contract Management Grid Is Available
    [Tags]    REGRESSION
    Verify Specific Column On Complex Contract Worklist Grid Is Available     ${REFERENCE NUMBER COLUMN NAME}

Validate Begin Date Column On Complex Contract Management Grid Is Available
    [Tags]    REGRESSION
    Verify Specific Column On Complex Contract Worklist Grid Is Available     ${BEGIN DATE COLUMN NAME}

Validate Direction Column On Complex Contract Management Grid Is Available
    [Tags]    REGRESSION
    Verify Specific Column On Complex Contract Worklist Grid Is Available     ${DIRECTION FIELD NAME}

Validate End Date Column On Complex Contract Management Grid Is Available
    [Tags]    REGRESSION
    Verify Specific Column On Complex Contract Worklist Grid Is Available     ${END DATE COLUMN NAME}

Validate Click Complex Contract Worklist Grid First Row Contract
    [Tags]    REGRESSION
    Verify Click Complex Contract Worklist Grid First Row Contract

Validate Click Complex Contract Management First Row Workflow Button
    [Tags]    REGRESSION
    Verify Click Complex Contract Management First Row Workflow Button

Validate From Status Column On Complex Contract Management Grid Is Available
    [Tags]    REGRESSION
    Verify Specific Column On Complex Contract Management Grid Is Available     From Status

Validate To Status Column On Complex Contract Management Grid Is Available
    [Tags]    REGRESSION
    Verify Specific Column On Complex Contract Management Grid Is Available     To Status

Validate Set Complex Management Grid Signature Date
    [Tags]    REGRESSION
    Verify Set Complex Management Grid Signature Date

Validate Click Complex Contract Management Save Button
    [Tags]    REGRESSION
    Verify Click Complex Contract Management Save Button

Validate Close Complex Contract Management Window
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Click Complex Contract Worklist Clear Sections Button
    [Tags]    REGRESSION
    Verify Click Complex Contract Worklist Clear Sections Button

Validate Click Aggregate Rules Exit Button
    [Tags]    REGRESSION
    Verify Click Aggregate Rules Exit Button
