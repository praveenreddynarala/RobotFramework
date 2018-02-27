*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Search Function In Multiple Origin Set Tabs In Business Admin

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${ORIGIN SET GRID ROW COUNT}    ${EMPTY}

*** Test Cases ***
Validate Navigate to Business Admin Module
    [Tags]    REGRESSION
    click on home icon and select 'business admin' from main menu

Validate The Business Admin Dashboard Tab Is Available
    [Tags]    REGRESSION
    Verify The Business Admin Dashboard Tab Is Available

Validate Expand Number Plan Menu
    [Tags]    REGRESSION
    Verify Expand Number Plan Menu

Validate Click Origin Set Submenu
    [Tags]    REGRESSION
    Verify Click Origin Set Submenu

Validate Select Business Admin Dashboard
    [Tags]    REGRESSION
    Verify Select Business Admin Dashboard

Validate Click Origin Set Submenu For Multiple Screen
    [Tags]    REGRESSION
    Verify Click Origin Set Submenu

Validate Click Origin Set Search Button
    [Tags]    REGRESSION
    Verify Click Origin Set Search Button

Validate Get Origin Set Grid Row Count
    [Tags]    REGRESSION
    ${ORIGIN SET GRID ROW COUNT} =      Verify Get Origin Set Grid Row Count
    set suite variable      ${ORIGIN SET GRID ROW COUNT}

Validate Select Opened Tab
    [Tags]    REGRESSION
    Verify Select Opened Tab        Origin Set - 1

Validate Click Origin Set Search Button For Other Tab
    [Tags]    REGRESSION
    Verify Click Origin Set Search Button For New Tab

Validate Grid Row Counts Match
    [Tags]    REGRESSION
    ${NEW TAB ORIGIN SET GRID ROW COUNT} =      Verify Get New Tab Origin Set Grid Row Count
    Verify Grid Row Counts Match    ${ORIGIN SET GRID ROW COUNT}    ${NEW TAB ORIGIN SET GRID ROW COUNT}