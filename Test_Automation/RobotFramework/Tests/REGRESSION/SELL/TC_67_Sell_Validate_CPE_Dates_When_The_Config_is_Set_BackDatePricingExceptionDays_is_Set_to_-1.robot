*** Settings ***
Documentation     [TAENOSIS-854] A Test Suite With Set Of Tests To Validate CPE Dates When The Config is Set BackDatePricingExceptionDays is Set to -1

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot

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

Validate Set Variable Name backDatePricingExceptiondays
    [Tags]    REGRESSION
    Verify Set Variable Name    backDatePricingExceptiondays

Validate Click Configuration Variables Grid Search Button to Change backDatePricingExceptiondays
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column to Change backDatePricingExceptiondays
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        1

Validate Close System Admin Window
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to Sell module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Sell' From Main Menu

Validate Select Customer Tab
    [Tags]    REGRESSION
    Click On Customer Tab

Validate Click Price Exceptions Button
    [Tags]    REGRESSION
    Verify Click Price Exceptions Button

Validate Set Number Plan For Price Exceptions
    [Tags]    REGRESSION
    Verify Set Number Plan For Price Exceptions     Inbound Ref.        ${True}

Validate Set Value into Pricing Exception Destination Input Box
    [Tags]    REGRESSION
    Verify Set Value into Pricing Exception Destination Input Box       Afghanistan

Validate Click Price Exceptions Search Button
    [Tags]    REGRESSION
    Verify Click Price Exceptions Search Button

Validate Set Requested Price
    [Tags]    REGRESSION
    Verify Set First Row Requested Price        50

Validate Price Exception Grid Begin Date Field is Auto Populated
    [Tags]    REGRESSION
    Verify Price Exception Grid Begin Date Field is Auto Populated

Validate Close Sell Window
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to System Admin module to Change The Config Value
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select System Tab to Change The Config Value
    [Tags]    REGRESSION
    Click on System Tab

Validate Click Configuration Variables Button to Change The Config Value
    [Tags]    REGRESSION
    Verify Click Configuration Variables Button

Validate Set Variable Name to Change The Config Value
    [Tags]    REGRESSION
    Verify Set Variable Name    backDatePricingExceptiondays

Validate Click Configuration Variables Grid Search Button to Change The Config Value
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column to Change The Config Value -1
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        -1

Validate Close System Admin Window after Changing The Config Value
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to Sell module after Changing The Config Value
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Sell' From Main Menu

Validate Select Customer Tab after Changing The Config Value
    [Tags]    REGRESSION
    Click On Customer Tab

Validate Click Price Exceptions Button after Changing The Config Value
    [Tags]    REGRESSION
    Verify Click Price Exceptions Button

Validate Set Number Plan For Price Exceptions after Changing The Config Value
    [Tags]    REGRESSION
    Verify Set Number Plan For Price Exceptions     Inbound Ref.        ${True}

Validate Set Value into Pricing Exception Destination Input Box after Changing The Config Value
    [Tags]    REGRESSION
    Verify Set Value into Pricing Exception Destination Input Box       Afghanistan

Validate Click Price Exceptions Search Button after Changing The Config Value
    [Tags]    REGRESSION
    Verify Click Price Exceptions Search Button

Validate Set Requested Price after Changing The Config Value
    [Tags]    REGRESSION
    Verify Set First Row Requested Price        50

Validate Price Exception Grid Begin Date Field is Auto Populated after Changing The Config Value
    [Tags]    REGRESSION
    Verify Price Exception Grid Begin Date Field is Auto Populated       ${True}

Validate Navigate to System Admin module to Revert Back The Value
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select System Tab to Revert Back The Value
    [Tags]    REGRESSION
    Click on System Tab

Validate Click Configuration Variables Button to Revert Back The Value
    [Tags]    REGRESSION
    Verify Click Configuration Variables Button

Validate Set Variable Name to Revert Back The Value
    [Tags]    REGRESSION
    Verify Set Variable Name    backDatePricingExceptiondays

Validate Click Configuration Variables Grid Search Button to Revert Back The Value
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column to Revert Back The Value
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        1

Validate Close System Admin Window after Revert Back The Value
    [Tags]    REGRESSION
    Verify Close System Admin Window
