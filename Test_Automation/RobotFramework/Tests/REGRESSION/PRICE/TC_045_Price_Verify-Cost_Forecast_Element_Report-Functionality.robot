*** Settings ***
Documentation     A Test Suite With Set Of Tests To Verify Cost Forcast Element Report Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CALL TYPE}        ${EMPTY}
${ROUTE CLASS}      ${EMPTY}

*** Test Cases ***
Validate Navigate to Price module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Navigate to Cost Policies Tab
    [Tags]    REGRESSION
    Click on Cost Policies Tab

Validate Get Route Class
    [Tags]    REGRESSION
    ${ROUTE CLASS} =       Verify Get Route Class
    log  ${ROUTE CLASS}
    set suite variable      ${ROUTE CLASS}

Validate Get Call Type
    [Tags]    REGRESSION
    ${CALL TYPE} =       Verify Get Call Type
    log  ${CALL TYPE}
    set suite variable      ${CALL TYPE}

Validate Click Formulas Button
    [Tags]    REGRESSION
    Verify Click Formulas Button

Validate Click Cost Forecast Elements Reports Button
    [Tags]    REGRESSION
    Verify Click Cost Forecast Elements Reports Button

Validate Set Route Class
    [Tags]    REGRESSION
    Verify Set Cost Forecast Report Route Class      ${ROUTE CLASS}

Validate Set Call Type
    [Tags]    REGRESSION
    Verify Set Cost Forecast Report Call Type      ${CALL TYPE}

Validate Set Routing Destination
    [Tags]    REGRESSION
    Verify Set Cost Forecast Report Routing Destination      ${TEST DATA PREFIX}

Validate Click Cost Forecast Report Submit Button
    [Tags]    REGRESSION
    Verify Click Cost Forecast Report Submit Button

Validate Page Header Of Cost Forecast Report Page
    [Tags]    REGRESSION
    Verify Page Header of Cost Forecast Report Page

Validate Route Class On Cost Forecast Report Page
    [Tags]    REGRESSION
    Verify Get Cost Forecast Report Parameters Text      ${ROUTE CLASS}       Route Class

Validate Call Type On Forecast Report Page
    [Tags]    REGRESSION
    Verify Get Cost Forecast Report Parameters Text      ${CALL TYPE}       Call Type

Validate Routing Destination On Forecast Report Page
    [Tags]    REGRESSION
    Verify Routing Destination Text For Cost Forecast Report      Routing Destination