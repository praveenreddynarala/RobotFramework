*** Settings ***
Documentation    A Test Suite With Set Of Tests To Validate UI Control Behavior In Vendor Offer Upload In Legacy

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixtrade_page_resource.robot
Resource          ../../../Resources/Pages/buy_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/ixtrade_page_test_data_source.robot

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
    Verify Update The XML File      ${TEMPLATE PATH}/${CALL TYPE}/${XML TEMPLATES FOLDER}/${VENDOR OFFER UPLOAD XML FILE NAME}      ${CREATED NEW VENDOR NAME}

Validate Click Vendor Offer Browse Button
    [Tags]    REGRESSION
    Verify Click Vendor Offer Browse Button

Validate Select The File To Be Uploaded
    [Tags]    REGRESSION
    ixtrade_page_resource.Verify Select The File To Be Uploaded        ${TEMPLATE PATH}/${CALL TYPE}/${XML TEMPLATES FOLDER}/${VENDOR OFFER UPLOAD XML FILE NAME}

Validate Click Upload Now Button
    [Tags]    REGRESSION
    Verify Click Upload Now Button

Validate Verify Close IXTrade Window
    [Tags]    REGRESSION
    ixtrade_page_resource.Verify Close Current Window

Validate Navigate to Contracts Module After First Upload
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate Navigate to IXTrade module After First Upload
    [Tags]    REGRESSION
    Go To IXTrade Screen With Specific Url

Validate Click Vendor Offer Upload Submenu After First Upload
    [Tags]    REGRESSION
    Verify Click Vendor Offer Upload Submenu

Validate The Upload Now Button Is Available
    [Tags]    REGRESSION
    Verify The Upload Now Button Is Available

Validate Close IXTrade Window After First Upload
    [Tags]    REGRESSION
    ixtrade_page_resource.Verify Close Current Window

