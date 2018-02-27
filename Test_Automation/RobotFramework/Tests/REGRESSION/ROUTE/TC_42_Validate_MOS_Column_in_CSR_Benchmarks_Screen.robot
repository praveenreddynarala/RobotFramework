*** Settings ***
Documentation     [TAENOSIS-863] Validate MOS column in CSR benchmarks screen

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/route_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CONFIG VARIABLE VALUE}    ${EMPTY}
${CONFIG VARIABLE VALUE FOR VOIPMOS}    ${EMPTY}

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

Validate Set Variable Name iXToolsWholesaleSolutionType
    [Tags]    REGRESSION
    Verify Set Variable Name    iXToolsWholesaleSolutionType

Validate Click Configuration Variables Grid Search Button for iXToolsWholesaleSolutionType
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Get Current Value Column Value for iXToolsWholesaleSolutionType
    [Tags]    REGRESSION
    ${CONFIG VARIABLE VALUE} =    Verify Get Current Value Column Value
    set suite variable    ${CONFIG VARIABLE VALUE}

Validate Set Value In Current Value Column for iXToolsWholesaleSolutionType
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column    3

Validate Set Variable Name VOIPMOSEnabled
    [Tags]    REGRESSION
    Verify Set Variable Name    VOIPMOSEnabled

Validate Click Configuration Variables Grid Search Button for VOIPMOSEnabled
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Get Current Value Column Value for VOIPMOSEnabled
    [Tags]    REGRESSION
    ${CONFIG VARIABLE VALUE FOR VOIPMOS} =    Verify Get Current Value Column Value
    set suite variable    ${CONFIG VARIABLE VALUE FOR VOIPMOS}

Validate Set Value In Current Value Column for VOIPMOSEnabled
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column    yes

Validate Close System Admin Window
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to Route module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Route' From Main Menu

Validate Select Commercial Routing Tab
    [Tags]    REGRESSION
    Verify Select Commercial Routing Tab

Validate Click Customer Specific Routing Button
    [Tags]    REGRESSION
    Verify Click Customer Specific Routing Button

Validate Click Csr Benchmarks Button
    [Tags]    REGRESSION
    Verify Click Csr Benchmarks Button

Validate is Minimum Mos Column Present in Csr Benchmark Grid
    [Tags]    REGRESSION
    Verify is Minimum Mos Column Present in Csr Benchmark Grid

Validate Set Minimum Mos Value into Csr Benchmark Grid First Row
    [Tags]    REGRESSION
    Verify Set Minimum Mos Value into Csr Benchmark Grid First Row    5

Validate Click Csr Benchmark Grid Save Changes Button
    [Tags]    REGRESSION
    Verify Click Csr Benchmark Grid Save Changes Button

Validate Select Csr Benchmark Grid Multiple Rows
    [Tags]    REGRESSION
    Verify Select Csr Benchmark Grid Multiple Rows

Validate Click Csr Benchmark Bulk Edit Button
    [Tags]    REGRESSION
    Verify Click Csr Benchmark Bulk Edit Button

Validate Set Minimum Mos Bulk Edit Value
    [Tags]    REGRESSION
    Verify Set Minimum Mos Bulk Edit Value

Validate Click Bulk Edit Submit Button
    [Tags]    REGRESSION
    route_page_resource.Verify Click Bulk Edit Submit Button

Validate Click Csr Benchmark Grid Save Changes Button after Bulk Edit
    [Tags]    REGRESSION
    Verify Click Csr Benchmark Grid Save Changes Button

Validate Updated Value Persist in the Csr Benchmark Grid after Bulk Edit
    [Tags]    REGRESSION
    Verify Updated Value Persist in the Csr Benchmark Grid after Bulk Edit

Validate Close Route Window
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to System Admin module For Reset
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select System Tab For Reset
    [Tags]    REGRESSION
    Click on System Tab

Validate Click Configuration Variables Button For Reset
    [Tags]    REGRESSION
    Verify Click Configuration Variables Button

Validate Set Variable Name To Set iXToolsWholesaleSolutionType For Reset
    [Tags]    REGRESSION
    Verify Set Variable Name    iXToolsWholesaleSolutionType

Validate Click Configuration Variables Grid Search Button For Reset
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Set Value In Current Value Column For Reset
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column    ${CONFIG VARIABLE VALUE}

Validate Set Variable Name To Set VOIPMOSEnabled For Reset
    [Tags]    REGRESSION
    Verify Set Variable Name    VOIPMOSEnabled

Validate Click Configuration Variables Grid Search Button For Reset VOIPMOSEnabled
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Set Value In Current Value Column to Reset VOIPMOSEnabled
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column    ${CONFIG VARIABLE VALUE FOR VOIPMOS}

Validate Close System Admin Window After Reseting the Config Value
    [Tags]    REGRESSION
    Verify Close System Admin Window
