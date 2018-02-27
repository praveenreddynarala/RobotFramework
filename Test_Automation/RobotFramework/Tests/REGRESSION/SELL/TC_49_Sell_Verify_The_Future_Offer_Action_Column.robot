*** Settings ***
Documentation     A Test Suite With Set Of Tests To Verify The Future Offer Action Column

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

Validate Set Variable Name
    [Tags]    REGRESSION
    Verify Set Variable Name    ShowFutureOfferAction

Validate Click Configuration Variables Grid Search Button
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        0

Validate Close System Admin Window
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to Sell module
    [Tags]    REGRESSION
    Click On Home Icon And Select 'Sell' From Main Menu

Validate Navigate to Customer Tab
    [Tags]    REGRESSION
    Click On Customer Tab

Validate Click Customer Price Lists Button
    [Tags]    REGRESSION
    Verify Click On Customer Price Lists Button

Validate The Future Price List Action Column Name Is Not Available
    [Tags]    REGRESSION
    Verify The Future Price List Action Column Name Is Not Available

Validate Close Sell Window
    [Tags]    REGRESSION
    Verify Close Sell Window

Validate Navigate to System Admin module To Set ShowFutureOfferAction As 1
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select System Tab To Set ShowFutureOfferAction As 1
    [Tags]    REGRESSION
    Click on System Tab

Validate Click Configuration Variables Button To Set ShowFutureOfferAction As 1
    [Tags]    REGRESSION
    Verify Click Configuration Variables Button

Validate Set Variable Name To Set ShowFutureOfferAction As 1
    [Tags]    REGRESSION
    Verify Set Variable Name    ShowFutureOfferAction

Validate Click Configuration Variables Grid Search Button To Set ShowFutureOfferAction As 1
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column To Set ShowFutureOfferAction As 1
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        1

Validate Close System Admin Window After Setting ShowFutureOfferAction As 1
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to Sell module After Setting ShowFutureOfferAction As 1
    [Tags]    REGRESSION
    Click On Home Icon And Select 'Sell' From Main Menu

Validate Navigate to Customer Tab After Setting ShowFutureOfferAction As 1
    [Tags]    REGRESSION
    Click On Customer Tab

Validate Click Customer Price Lists Button After Setting ShowFutureOfferAction As 1
    [Tags]    REGRESSION
    Verify Click On Customer Price Lists Button

Validate The Future Price List Action Column Name Is Available After Setting ShowFutureOfferAction As 1
    [Tags]    REGRESSION
    Verify The Future Price List Action Column Name Is Available