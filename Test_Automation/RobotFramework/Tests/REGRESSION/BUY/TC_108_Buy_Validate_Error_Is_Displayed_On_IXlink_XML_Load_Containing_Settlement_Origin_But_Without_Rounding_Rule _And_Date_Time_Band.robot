*** Settings ***
Documentation    [TAENOSIS-998] Validate validation error is displayed on iXlink XML load containing Settlement Origin but without Rounding Rule and Date Time Band

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixtrade_page_resource.robot
Resource          ../../../Resources/Pages/buy_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/ixtrade_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CREATED NEW VENDOR NAME}      ${EMPTY}
${CALL TYPE}                    ${EMPTY}

*** Test Cases ***
Validate Navigate to Contracts Module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate Navigate to IXTrade module
    [Tags]    REGRESSION
    Go To IXTrade Screen With Specific Url

Validate Click Vendor Offer Upload Submenu
    [Tags]    REGRESSION
    Verify Click Vendor Offer Upload Submenu

Validate Set Vendor Offer Source Type
    [Tags]    REGRESSION
    Verify Set Vendor Offer Source Type     ${XML SOURCE TYPE}

Validate Get Created Vendor Name For New Vendor
    [Tags]    REGRESSION
    ${CREATED NEW VENDOR NAME} =    Verify Get Created Vendor Name
    set suite variable      ${CREATED NEW VENDOR NAME}
    log  ${CREATED NEW VENDOR NAME}

Validate Update The XML File
    [Tags]    REGRESSION
    ${CALL TYPE} =      Verify Get Call Type
    set suite variable      ${CALL TYPE}
    Verify Update The XML File      ${TEMPLATE PATH}/${CALL TYPE}/${WITHOUT ROUNDING ROLE VENDOR OFFER UPLOAD XML FILE NAME}      ${CREATED NEW VENDOR NAME}

Validate Click Vendor Offer Browse Button
    [Tags]    REGRESSION
    Verify Click Vendor Offer Browse Button

Validate Select The File To Be Uploaded
    [Tags]    REGRESSION
    ixtrade_page_resource.Verify Select The File To Be Uploaded        ${TEMPLATE PATH}/${CALL TYPE}/${WITHOUT ROUNDING ROLE VENDOR OFFER UPLOAD XML FILE NAME}

Validate Click Upload Now Button
    [Tags]    REGRESSION
    Verify Click Upload Now Button

Validate The Vendor Offer Upload Fail Message Is Available
    [Tags]    REGRESSION
    Verify The Vendor Offer Upload Fail Message Is Available

Validate Click Exit Button
    [Tags]    REGRESSION
    ixtrade_page_resource.Verify Click Exit Button