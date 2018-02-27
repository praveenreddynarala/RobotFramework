*** Settings ***
Documentation     A Test Suite With Set Of Tests For Business Admin Origin Set Management To Validate Upload Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/business_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${ORIGIN SET}           ${EMPTY}
${CALL TYPE}            ${EMPTY}

*** Test Cases ***
Validate Navigate to Business Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Business Admin' From Main Menu

Validate Get Origin Set Name
    [Tags]    REGRESSION
    ${ORIGIN SET} =     Verify Get Origin Set Name
    set suite variable      ${ORIGIN SET}

Validate Expand Number Plan Menu
    [Tags]    REGRESSION
    Verify Expand Number Plan Menu

Validate Click Origin Set Submenu
    [Tags]    REGRESSION
    Verify Click Origin Set Submenu

Validate Click Origin Set Upload Button
    [Tags]    REGRESSION
    Verify Click Origin Set Upload Button

Validate Set Origin Set For Upload
    [Tags]    REGRESSION
    Verify Set Origin Set For Upload        ${ORIGIN SET}

Validate Set Effective Date For Upload Origin Set
    [Tags]    REGRESSION
    Verify Set Effective Date For Upload Origin Set     ${EFFECTIVE DATE FOR UPLOAD ORIGIN SET}

Validate Click Upload Origin Set Browse Button
    [Tags]    REGRESSION
    Verify Click Upload Origin Set Browse Button

Validate Select The File To Be Uploaded
    [Tags]    REGRESSION
    ${CALL TYPE} =      Verify Get Call Type
    Verify Select The File To Be Uploaded        ${TEMPLATE PATH}/${CALL TYPE}/${FILE PATH FOR UPLOAD ORIGIN SET}

Validate Click Upload Origin Set Upload Button
    [Tags]    REGRESSION
    Verify Click Upload Origin Set Upload Button