*** Settings ***
Documentation     A Test Suite With Set Of Tests For Buy Validate Number Plan Changes Details Screen To Show Header As Dialed Digits/MCC-MNC

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/buy_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
@{ALL ROW DATA}
@{COLUMN NAME LIST}

*** Test Cases ***
Validate Navigate to Buy module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Buy' From Main Menu

Validate Click Re Analysis Link
    [Tags]    REGRESSION
    Verify Click Re Analysis Link

Validate Set Begin Date
    [Tags]    REGRESSION
    Verify Set Buy Module Begin Date        1/1/2010

Validate Click Search Button
    [Tags]    REGRESSION
    Verify Click Buy Module Search Button

Validate Click Re Analysis Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Re Analysis Grid First Row Inline Action Button

Validate Select Buy Page Inline Action Item
    [Tags]    REGRESSION
    Verify Select Inline Action Item With Module Name       View Re-Analysis Detail

Validate Number Plan Changes Grid Header Is Dialed Digits MCC MNC
    [Tags]    REGRESSION
    Verify Number Plan Changes Grid Header Is Dialed Digits MCC MNC
