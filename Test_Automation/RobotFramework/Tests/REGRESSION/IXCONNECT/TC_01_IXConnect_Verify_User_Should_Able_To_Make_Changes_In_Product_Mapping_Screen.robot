*** Settings ***
Documentation    A Test Suite With Set Of Tests To Verify User Should Able to Make Changes In Product Mapping Screen

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixcontrol_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${SELLING PRODUCT}      ${EMPTY}

*** Test Cases ***
Validate Navigate to IXConnect Module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate Select Prudct Mapping Submenu
    [Tags]    REGRESSION
    Verify Select Product Mapping Submenu

Validate Click Product Mapping Go Button
    [Tags]    REGRESSION
    Verify Click Product Mapping Go Button

Validate Get Product Mapping Grid First Row Selling Product
    [Tags]    REGRESSION
    ${SELLING PRODUCT} =    Verify Get Product Mapping Grid First Row Selling Product
    set suite variable      ${SELLING PRODUCT}

Validate Click Selling Product Browse Button
    [Tags]    REGRESSION
    Verify Click Selling Product Browse Button

Validate Set First Letter
    [Tags]    REGRESSION
    Verify Set First Letter With Value      ${SELLING PRODUCT}

Validate Click Go Button
    [Tags]    REGRESSION
    ixconnect_page_resource.Verify Click Go Button

Validate Select Selling Product
    [Tags]    REGRESSION
    Verify Select Selling Product       ${SELLING PRODUCT}

Validate Click Product Mapping Go Button After Selection
    [Tags]    REGRESSION
    Verify Click Product Mapping Go Button

Validate Make Routing to Selling Percentage to 100
    [Tags]    REGRESSION
    Verify Make Routing to Selling Percentage to 100

Validate Navigate to IXControl Module
    [Tags]    REGRESSION
    Go To IXControl Screen With Specific Url

Validate Click Trade Submenu
    [Tags]    REGRESSION
    Verify Click Trade Submenu

Validate Set Registry Item
    [Tags]    REGRESSION
    Verify Set Registry Item    iXTrade Refresh

Validate Click iXControl Go Button
    [Tags]    REGRESSION
    ixcontrol_page_resource.Verify Click Go Button

Validate Click First Registry Process
    [Tags]    REGRESSION
    Verify Click First Unp Job Link

Validate Click Request Data Refresh Process
    [Tags]    REGRESSION
    Verify Click Request Data Refresh Process

Validate Click Execute Button
    [Tags]    REGRESSION
    Verify Click Execute Button

Validate Close IXConnect Window
    [Tags]    REGRESSION
    Verify Close IxConnect Window       ${True}
