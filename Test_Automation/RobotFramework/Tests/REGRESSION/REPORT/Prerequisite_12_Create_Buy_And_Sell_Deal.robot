*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Create Buy And Sell Deal Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/Pages/buy_page_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${NEW VENDOR NAME}      ${EMPTY}
${ROUTE CLASS}          ${EMPTY}
${DESTINATION}          ${EMPTY}
${CUSTOMER NAME}        ${EMPTY}
${ACCOUNT NAME}         ${EMPTY}

*** Test Cases ***
Validate Navigate to Buy module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Buy' From Main Menu

Validate Expand Trading Menu
    [Tags]    REGRESSION
    Verify Click Buy And Sell Deal Management Link

Validate Click Request New Deal Button
    [Tags]    REGRESSION
    Verify Click Request New Deal Button

Validate Set Buy And Sell Deal Name
    [Tags]    REGRESSION
    Verify Set Buy And Sell Deal Name       ${TEST DATA PREFIX}

Validate Set Buy Sell Deal Account
    [Tags]    REGRESSION
    ${ACCOUNT NAME} =       carrier_page_resource.Verify Get Created Carrier Name
    set suite variable          ${ACCOUNT NAME}
    Verify Set Buy Sell Deal Account    ${ACCOUNT NAME}

Validate Set Vendor
    [Tags]    REGRESSION
    ${NEW VENDOR NAME} =       Verify Get Created Vendor Name
    set suite variable          ${NEW VENDOR NAME}
    Verify Set Vendor       ${NEW VENDOR NAME}

Validate Set Customer
    [Tags]    REGRESSION
    ${CUSTOMER NAME} =       Verify Get Created Customer Name
    set suite variable          ${CUSTOMER NAME}
    Verify Set Customer     ${CUSTOMER NAME}

Validate Click Buy And Sell Deal Create Button
    [Tags]    REGRESSION
    Verify Click Buy And Sell Deal Create Button

Validate Click Vendor Grid Add Destination Button
    [Tags]    REGRESSION
    Verify Click Vendor Grid Add Destination Button

Validate Set Source To Add Destination
    [Tags]    REGRESSION
    Verify Set Source To Add Destination        ${NEW VENDOR NAME}

Validate Get Route Class
    [Tags]    REGRESSION
    ${ROUTE CLASS} =     Verify Get Route Class
    log  ${ROUTE CLASS}
    set suite variable    ${ROUTE CLASS}

Validate Get Created Destination
    [Tags]    REGRESSION
    ${DESTINATION} =     Verify Get Created Destination
    log  ${DESTINATION}
    set suite variable    ${DESTINATION}

Validate Set Route Class To Add Destination
    [Tags]    REGRESSION
    @{LIST OF ROUTE CLASS} =        create list         ${ROUTE CLASS}
    Verify Set Route Class To Add Destination       @{LIST OF ROUTE CLASS}

Validate Set Destination To Add Destination
    [Tags]    REGRESSION
    @{LIST OF DESTINATION} =        create list         ${DESTINATION}
    Verify Set Destination To Add Destination       @{LIST OF DESTINATION}

Validate Set Deat Rate To Add Destination
    [Tags]    REGRESSION
    Verify Set Deat Rate To Add Destination     11

Validate Set Deat Volume To Add Destination
    [Tags]    REGRESSION
    Verify Set Deat Volume To Add Destination     1

Validate Click Save Button To Add Destination
    [Tags]    REGRESSION
    Verify Click Add Destination Save Button

Validate Click Customer Grid Add New Button
    [Tags]    REGRESSION
    Verify Click Customer Grid Add Destination Button

Validate Set Source To Add Destination In Customer Grid
    [Tags]    REGRESSION
    Verify Set Source To Add Destination        ${CUSTOMER NAME}

Validate Set Destination To Add Destination In Customer Grid
    [Tags]    REGRESSION
    @{LIST OF DESTINATION} =        create list         ${DESTINATION}
    Verify Set Destination To Add Destination       @{LIST OF DESTINATION}

Validate Set Deat Rate To Add Destination In Customer Grid
    [Tags]    REGRESSION
    Verify Set Deat Rate To Add Destination     11

Validate Set Deat Volume To Add Destination In Customer Grid
    [Tags]    REGRESSION
    Verify Set Deat Volume To Add Destination     1

Validate Click Save Button To Add Destination In Customer Grid
    [Tags]    REGRESSION
    Verify Click Add Destination Save Button

Validate Click Request Deal Button
    [Tags]    REGRESSION
    Verify Click Request Deal Button