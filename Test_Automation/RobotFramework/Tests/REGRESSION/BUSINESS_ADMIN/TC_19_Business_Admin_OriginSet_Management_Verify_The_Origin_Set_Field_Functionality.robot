*** Settings ***
Documentation     A Test Suite With Set Of Tests For Business Admin Origin Set Management To Verify The Origin Set Field Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${SETTLEMENT ORIGIN}    ${EMPTY}

*** Test Cases ***
Validate Navigate to Business Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Business Admin' From Main Menu

Validate Get Origin Set Name
    [Tags]    REGRESSION
    ${SETTLEMENT ORIGIN} =     Verify Get Origin Set Name
    set suite variable      ${SETTLEMENT ORIGIN}

Validate Expand Number Plan Menu
    [Tags]    REGRESSION
    Verify Expand Number Plan Menu

Validate Click Origin Set Submenu
    [Tags]    REGRESSION
    Verify Click Origin Set Submenu

Validate Click New Settlement Origin Button
    [Tags]    REGRESSION
    Verify Click New Settlement Origin Button

Validate Set Settlement Origin
    [Tags]    REGRESSION
    Verify Set Settlement Origin For Verify Origin Set Field        ${SETTLEMENT ORIGIN}

Validate Available Origin Set Are Fetched
    [Tags]    REGRESSION
    Verify Available Origin Set Are Fetched

Validate click New Settlement Origin Popup Cancel Button
    [Tags]    REGRESSION
    Verify click New Settlement Origin Popup Cancel Button