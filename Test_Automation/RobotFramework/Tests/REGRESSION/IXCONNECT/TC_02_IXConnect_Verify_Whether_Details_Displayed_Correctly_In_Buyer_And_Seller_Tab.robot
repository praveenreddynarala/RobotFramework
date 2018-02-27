*** Settings ***
Documentation    A Test Suite With Set Of Tests To Verify User Should Able to Make Changes In Product Mapping Screen

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CARRIER NAME}         ${EMPTY}
${FIRST NAME}           ${EMPTY}
${LAST NAME}            ${EMPTY}

*** Test Cases ***
Validate Navigate to IXConnect Module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate Get Carrier Name
    [Tags]    REGRESSION
    ${CARRIER NAME} =       Verify Get Created Carrier Name
    set suite variable      ${CARRIER NAME}

Validate Get First Name
    [Tags]    REGRESSION
    ${FIRST NAME} =       Verify Get User First Name
    set suite variable      ${FIRST NAME}

Validate Get Last Name
    [Tags]    REGRESSION
    ${LAST NAME} =       Verify Get User Last Name
    set suite variable      ${LAST NAME}

Validate Select Carrier Submenu
    [Tags]    REGRESSION
    Verify Select Carrier Submenu

Validate Switch To List Frame
    [Tags]    REGRESSION
    Verify Switch To List Frame

Validate Set Letters For Created Carrier Search
    [Tags]    REGRESSION
    Verify Set Letters For Created Carrier Search       ${CARRIER NAME}

Validate Click Go Button
    [Tags]    REGRESSION
    Verify Click Go Button

Valdiate Switch To Default Content
    [Tags]    REGRESSION
    Verify Switch To Default Content

Validate Click First Account Name
    [Tags]    REGRESSION
    Verify Click First Account Name

Validate Click Buyer Browse Button
    [Tags]    REGRESSION
    Verify Click Buyer Browse Button

Validate Set First Letter
    [Tags]    REGRESSION
    Verify Set First Letter With Value      ${LAST NAME}

Validate Click Go Button For Buyer Name
    [Tags]    REGRESSION
    Verify Click Go Button

Validate Select Buyer Name
    [Tags]    REGRESSION
    Verify Select Selling Product       ${FIRST NAME}

Validate Click Seller Browse Button
    [Tags]    REGRESSION
    Verify Click Seller Browse Button

Validate Set First Letter For Seller
    [Tags]    REGRESSION
    Verify Set First Letter With Value      ${LAST NAME}

Validate Click Go Button For Seller Name
    [Tags]    REGRESSION
    Verify Click Go Button

Validate Select Seller Name
    [Tags]    REGRESSION
    Verify Select Selling Product       ${FIRST NAME}

Validate Click Account Save Button
    [Tags]    REGRESSION
    Verify Click Account Save Button

Validate Select Buyer Tab
    [Tags]    REGRESSION
    Verify Select Buyer Tab

Validate Buyer First Name
    [Tags]    REGRESSION
    Verify User First Name      ${FIRST NAME}

Validate Buyer Last Name
    [Tags]    REGRESSION
    Verify User Last Name      ${LAST NAME}

Validate Select Seller Tab
    [Tags]    REGRESSION
    Verify Select Seller Tab

Validate Seller First Name
    [Tags]    REGRESSION
    Verify User First Name      ${FIRST NAME}

Validate Seller Last Name
    [Tags]    REGRESSION
    Verify User Last Name      ${LAST NAME}

Validate Close IXConnect Window
    [Tags]    REGRESSION
    Verify Close IxConnect Window       ${True}
