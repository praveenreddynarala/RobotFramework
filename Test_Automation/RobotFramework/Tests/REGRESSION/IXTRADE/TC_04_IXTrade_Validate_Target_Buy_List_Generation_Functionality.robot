*** Settings ***
Documentation     [TAENOSIS-957] Validate Target Buy List Generation Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixtrade_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Contracts Module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate Navigate to IXTrade module
    [Tags]    REGRESSION
    Go To IXTrade Screen With Specific Url

Validate Click Target Buy List Generation Submenu
    [Tags]    REGRESSION
    Verify Click Target Buy List Generation Submenu

Validate Generate Target Buy Lists Button is Present in Target Buy List Generation Screen
    [Tags]    REGRESSION
    Verify Expected Button is Present in Target Buy List Generation Screen          Generate Target Buy Lists

Validate Generate Target Buy Lists (Via Job) Button is Present in Target Buy List Generation Screen
    [Tags]    REGRESSION
    Verify Expected Button is Present in Target Buy List Generation Screen          Generate Target Buy Lists (Via Job)

Validate Preview Button is Present in Target Buy List Generation Screen
    [Tags]    REGRESSION
    Verify Expected Button is Present in Target Buy List Generation Screen          Preview

Validate myTargetPriceList Dropdown List Control is Present in Target Buy List Generation Screen
    [Tags]    REGRESSION
    Verify Expected Dropdown List Control is Present in Target Buy List Generation Screen       myTargetPriceList

Validate Offer Content Dropdown List Control is Present in Target Buy List Generation Screen
    [Tags]    REGRESSION
    Verify Expected Dropdown List Control is Present in Target Buy List Generation Screen       Offer Content

Validate Target Buy List Dropdown List Control is Present in Target Buy List Generation Screen
    [Tags]    REGRESSION
    Verify Expected Dropdown List Control is Present in Target Buy List Generation Screen       Target Buy List

Validate Published Date Datepicker is Visible
    [Tags]    REGRESSION
    Verify Published Date Datepicker is Visible

Validate Vendors Selector List Box is Visible
    [Tags]    REGRESSION
    Verify Vendors Selector List Box is Visible

Validate Selected Vendors List Box is Visible
    [Tags]    REGRESSION
    Verify Selected Vendors List Box is Visible

Validate Country Selector List Box is Visible
    [Tags]    REGRESSION
    Verify Country Selector List Box is Visible

Validate Selected Country List Box is Visible
    [Tags]    REGRESSION
    Verify Selected Country List Box is Visible

Validate Click Exit Button
    [Tags]    REGRESSION
    Verify Click Exit Button
