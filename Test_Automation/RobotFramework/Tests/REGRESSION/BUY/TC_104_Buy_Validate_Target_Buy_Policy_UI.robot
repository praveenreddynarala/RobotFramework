*** Settings ***
Documentation     [TAENOSIS-974] A Test Suite With Set Of Tests To Validate Target Buy Policy UI

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/buy_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate navigate to Buy module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Buy' From Main Menu

Validate Target Buy Policies Tab Is Displayed
    [Tags]    REGRESSION
    Verify Target Buy Policies Tab Is Displayed

Validate Select Target Buy Policies Tab
    [Tags]    REGRESSION
    Verify Select Target Buy Policies Tab

Validate Create New Target Buy Policy Button Is Displayed
    [Tags]    REGRESSION
    Verify Button Is Displayed      Create New Target Buy Policy

Validate Formulas Button Is Displayed
    [Tags]    REGRESSION
    Verify Button Is Displayed      Formulas

Validate User Defined Parameters Button Is Displayed
    [Tags]    REGRESSION
    Verify Button Is Displayed      User Defined Parameters

Validate Target Buy Overrides Button Is Displayed
    [Tags]    REGRESSION
    Verify Button Is Displayed      Target Buy Overrides

Validate Target Buy Rates Button Is Displayed
    [Tags]    REGRESSION
    Verify Button Is Displayed      Target Buy Rates

Validate Generate Target Buy List Button Is Displayed
    [Tags]    REGRESSION
    Verify Button Is Displayed      Generate Target Buy List

Validate Target Buy List Offers Button Is Displayed
    [Tags]    REGRESSION
    Verify Button Is Displayed      Target Buy List Offers

Validate Target Buy Policies Grid Target Buy Policy Column Is Present
    [Tags]    REGRESSION
    Verify Target Buy Policies Grid Column Is Present       Target Buy Policy

Validate Target Buy Policies Grid Abbreviation Column Is Present
    [Tags]    REGRESSION
    Verify Target Buy Policies Grid Column Is Present       Abbreviation

Validate Target Buy Policies Grid Status Column Is Present
    [Tags]    REGRESSION
    Verify Target Buy Policies Grid Column Is Present       Status

Validate Target Buy Policies Grid Call Type Column Is Present
    [Tags]    REGRESSION
    Verify Target Buy Policies Grid Column Is Present       Call Type

Validate Target Buy Policies Grid Route Class Column Is Present
    [Tags]    REGRESSION
    Verify Target Buy Policies Grid Column Is Present       Route Class

Validate Target Buy Policies Grid Target Buy Policy Type Column Is Present
    [Tags]    REGRESSION
    Verify Target Buy Policies Grid Column Is Present       Target Buy Policy Type

Validate Click Target Buy Policies Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Target Buy Policies Grid First Row Inline Action Button

Validate Inline Action View Target Buy Policy Item Is Present
    [Tags]    REGRESSION
    Verify Inline Action Item Is Present        View Target Buy Policy

Validate Inline Action Formulas Item Is Present
    [Tags]    REGRESSION
    Verify Inline Action Item Is Present        Formulas

Validate Inline Action User Defined Parameters Item Is Present
    [Tags]    REGRESSION
    Verify Inline Action Item Is Present        User Defined Parameters

Validate Inline Action Overrides Item Is Present
    [Tags]    REGRESSION
    Verify Inline Action Item Is Present        Overrides

Validate Inline Action Target Buy Rates Item Is Present
    [Tags]    REGRESSION
    Verify Inline Action Item Is Present        Target Buy Rates