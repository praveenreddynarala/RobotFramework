*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Country Filter On Country Groups Screen

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/Pages/buy_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
@{COUNTRY LIST}     ${EMPTY}

*** Test Cases ***
Validate Navigate to System Admin module For Config Value As 1
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select System Tab For Config Value As 1
    [Tags]    REGRESSION
    Click on System Tab

Validate Click Configuration Variables Button For Config Value As 1
    [Tags]    REGRESSION
    Verify Click Configuration Variables Button

Validate Set Variable Name For Config Value As 1
    [Tags]    REGRESSION
    Verify Set Variable Name    iXToolsWholesaleSolutionType

Validate Click Configuration Variables Grid Search Button For Config Value As 1
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column For Config Value As 1
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        1

Validate Close System Admin Window For Config Value As 1
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate To Buy module For Config Value As 1
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Buy' From Main Menu

Validate Select Buy Dashboard For Config Value As 1
    [Tags]    REGRESSION
    Verify Select Buy Dashboard

Validate Click Country Group Link For Config Value As 1
    [Tags]    REGRESSION
    Verify Click Country Group

Validate Get Country Name
    [Tags]    REGRESSION
    ${COUNTRY NAME} =     business_admin_page_resource.Verify Get Country Name
    @{COUNTRY LIST} =       create list         ${COUNTRY NAME}
    set suite variable      @{COUNTRY LIST}

Validate Set Country For Config Value As 1
    [Tags]    REGRESSION
    buy_page_resource.Verify Set Country For Search       @{COUNTRY LIST}

Validate Click Search Button For Config Value As 1
    [Tags]    REGRESSION
    Verify Click Buy Module Search Button

Validate Close Buy Window For Config Value As 1
    [Tags]    REGRESSION
    Verify Close Buy Window

Validate Navigate to System Admin module For Config Value As 2
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select System Tab For Config Value As 2
    [Tags]    REGRESSION
    Click on System Tab

Validate Click Configuration Variables Button For Config Value As 2
    [Tags]    REGRESSION
    Verify Click Configuration Variables Button

Validate Set Variable Name For Config Value As 2
    [Tags]    REGRESSION
    Verify Set Variable Name    iXToolsWholesaleSolutionType

Validate Click Configuration Variables Grid Search Button For Config Value As 2
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column For Config Value As 2
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        2

Validate Close System Admin Window For Config Value As 2
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate To Buy module For Config Value As 2
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Buy' From Main Menu

Validate Select Buy Dashboard For Config Value As 2
    [Tags]    REGRESSION
    Verify Select Buy Dashboard

Validate Click Country Group Link For Config Value As 2
    [Tags]    REGRESSION
    Verify Click Country Group

Validate Set Country For Config Value As 2
    [Tags]    REGRESSION
    buy_page_resource.Verify Set Country For Search       @{COUNTRY LIST}

Validate Click Search Button For Config Value As 2
    [Tags]    REGRESSION
    Verify Click Buy Module Search Button

Validate Close Buy Window For Config Value As 2
    [Tags]    REGRESSION
    Verify Close Buy Window

Validate Navigate to System Admin module For Config Value As 3
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select System Tab For Config Value As 3
    [Tags]    REGRESSION
    Click on System Tab

Validate Click Configuration Variables Button For Config Value As 3
    [Tags]    REGRESSION
    Verify Click Configuration Variables Button

Validate Set Variable Name For Config Value As 3
    [Tags]    REGRESSION
    Verify Set Variable Name    iXToolsWholesaleSolutionType

Validate Click Configuration Variables Grid Search Button For Config Value As 3
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column For Config Value As 3
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        3

Validate Close System Admin Window For Config Value As 3
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate To Buy module For Config Value As 3
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Buy' From Main Menu

Validate Select Buy Dashboard For Config Value As 3
    [Tags]    REGRESSION
    Verify Select Buy Dashboard

Validate Click Country Group Link For Config Value As 3
    [Tags]    REGRESSION
    Verify Click Country Group

Validate Set Country For Config Value As 3
    [Tags]    REGRESSION
    buy_page_resource.Verify Set Country For Search       @{COUNTRY LIST}

Validate Click Search Button For Config Value As 3
    [Tags]    REGRESSION
    Verify Click Buy Module Search Button

Validate Close Buy Window For Config Value As 3
    [Tags]    REGRESSION
    Verify Close Buy Window