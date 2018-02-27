*** Settings ***
Documentation    [TAENOSIS-977] Validate Service Level assignment on Agreement Screen under Carrier

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixtrade_page_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${SOURCE NAME}      ${EMPTY}

*** Test Cases ***
Validate Navigate to Contracts Module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate Navigate to IXTrade module
    [Tags]    REGRESSION
    Go To IXTrade Screen With Specific Url

Validate Click Customer Offer Generation Submenu
    [Tags]    REGRESSION
    Verify Click Customer Offer Generation Submenu

Validate Set Mypricelist In IXTrade
    [Tags]    REGRESSION
    ${MY PRICE LIST} =      Verify Get My Price List
    Verify Set Mypricelist In IXTrade       ${MY PRICE LIST}

Validate Click Mypricelist Generate Button
    [Tags]    REGRESSION
    Verify Click Mypricelist Generate Button

Validate Click Exit Button
    [Tags]    REGRESSION
    ixtrade_page_resource.Verify Click Exit Button

Validate Login Functionality With Valid Credential After Closing Ixtrade Page
    [Tags]    REGRESSION
    Validate Login Functionality With Valid Credential

Validate Navigate to Contracts module After Closing Ixtrade Page
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate Verify Select Carrier Submenu
    [Tags]    REGRESSION
    ixconnect_page_resource.Verify Select Carrier Submenu

Validate Switch To List Frame
    [Tags]    REGRESSION
    ixconnect_page_resource.Verify Switch To List Frame

Validate Verify Set Letters For Created Carrier Search
    [Tags]    REGRESSION
    ${SOURCE NAME} =        Verify Get Source Name
    set suite variable      ${SOURCE NAME}
    Verify Set Letters For Created Carrier Search       ${SOURCE NAME}

Validate Click Go Button
    [Tags]    REGRESSION
    ixconnect_page_resource.Verify Click Go Button

Validate Switch To Default Content
    [Tags]    REGRESSION
    ixconnect_page_resource.Verify Switch To Default Content

Validate Click Carrier Account First Plus Button
    [Tags]    REGRESSION
    Verify Click Carrier Account First Plus Button

Validate Select First Inner Customer
    [Tags]    REGRESSION
    Verify Select First Inner Customer

Validate Service Level Column Is Available
    [Tags]    REGRESSION
    Verify Service Level Column Is Available

Validate Click Exit Button In Carrier Page
    [Tags]    REGRESSION
    Verify Click Exit Header Link