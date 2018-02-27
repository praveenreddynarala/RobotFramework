*** Settings ***
Documentation     A Test Suite With Set Of Tests For Price Validate New Custom Fields Are Shown In Reference Prices Screen

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/price_page_test_data_source.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/system_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Price module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Navigate to Price Policies Tab
    [Tags]    REGRESSION
    Verify Select Price Policies Tab

Validate Click Reference Prices Button
    [Tags]    REGRESSION
    Verify Click Reference Prices Button

Validate Select Status For Reference Prices Search
    [Tags]    REGRESSION
    Verify Select Status For Reference Prices Search        @{REFERENCE PRICE STATUS LIST}

Validate Click Reference Prices Search Button
    [Tags]    REGRESSION
    Verify Click Reference Prices Search Button

Validate Set Status For Reference Prices
    [Tags]    REGRESSION
    Verify Set Status For Reference Prices      ${APPROVED STATUS}

Validate Click Reference Prices Save Changes Button Without Custom Rule
    [Tags]    REGRESSION
    Verify Click Reference Prices Save Changes Button Without Custom Rule

Validate Click Custom Rule Yes Radio Button
    [Tags]    REGRESSION
    Verify Click Custom Rule Yes Radio Button

Validate Click Reference Prices Save Changes Button
    [Tags]    REGRESSION
    Verify Click Reference Prices Save Changes Button

Validate Close Price Window
    [Tags]    REGRESSION
    Verify Close Price Window

Validate Navigate to System Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Click on System Tab
    [Tags]    REGRESSION
    Click on System Tab

Validate Click Configuration Variables Button
    [Tags]    REGRESSION
    Verify Click Configuration Variables Button

Validate Set Variable Name
    [Tags]    REGRESSION
    Verify Set Variable Name    ${RPLCUSTOM VARIABLE NAME}

Validate Click Search Button
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Default Value In Current Value Column
    [Tags]    REGRESSION
    Verify Set Default Value In Current Value Column

Validate Close System Admin Window
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to Price module After Resetting Config Value
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Select Price Policies Tab After Resetting Config Value
    [Tags]    REGRESSION
    Verify Select Price Policies Tab

Validate Click Reference Prices Button After Resetting Config Value
    [Tags]    REGRESSION
    Verify Click Reference Prices Button

Validate Apply Custom Rules Is Not Presents
    [Tags]    REGRESSION
    Verify Apply Custom Rules Is Not Present
