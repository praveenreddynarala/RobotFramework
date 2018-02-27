*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Offer Upload Allow Old Effective Date

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixtrade_page_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/ixtrade_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CALL TYPE}        ${EMPTY}

*** Test Cases ***
Validate Navigate to IXContract Module
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

Validate Click Vendor Offer Browse Button
    [Tags]    REGRESSION
    Verify Click Vendor Offer Browse Button

Validate Select The File To Be Uploaded
    [Tags]    REGRESSION
    ${CALL TYPE} =      Verify Get Call Type
    Verify Select The File To Be Uploaded        ${TEMPLATE PATH}/${CALL TYPE}/${INVALID TEMPLATES FOLDER}/${ALLOW OLD EFFECTIVE DATE FILE NAME}

Validate Click Upload Now Button
    [Tags]    REGRESSION
    Verify Click Upload Now Button

Validate Upload Failure Message
    [Tags]    REGRESSION
    Verify Upload Failure Message       ${INVALID SOURCE ERROR MESSAGE}
