*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate The Create Dialed Digits From iXConnect Screen Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${ROUTE CLASS}      ${EMPTY}

*** Test Cases ***
Validate Navigate to Business Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Business Admin' From Main Menu

Validate Expand Number Plan Menu
    [Tags]    REGRESSION
    Verify Expand Number Plan Menu

Validate Click Destination Submenu
    [Tags]    REGRESSION
    Verify Click Destination Submenu

Validate Switch To IXConnect Window
    [Tags]    REGRESSION
    Verify Switch To IXConnect

Validate Switch To List Frame
    [Tags]    REGRESSION
    Verify Switch To List Frame

Validate Click Go Button
    [Tags]    REGRESSION
    Verify Click Go Button

Validate Switch To Default Content
    [Tags]    REGRESSION
    Verify Switch To Default Content

Validate Click New Destination Button
    [Tags]    REGRESSION
    Verify Click New Destination Button

Validate Set Dialed Digits
    [Tags]    REGRESSION
    Verify Set Dialed Digits

Validate Set Dialed Digits Begin Date
    [Tags]    REGRESSION
    Verify Set Dialed Digits Begin Date

Validate Set Dialed Digits End Date
    [Tags]    REGRESSION
    Verify Set Dialed Digits End Date

Validate Click Dialed Digits Save Button
    [Tags]    REGRESSION
    Verify Click Dialed Digits Save Button

Validate Close IxConnect Window
    [Tags]    REGRESSION
    Verify Close IxConnect Window       ${TRUE}