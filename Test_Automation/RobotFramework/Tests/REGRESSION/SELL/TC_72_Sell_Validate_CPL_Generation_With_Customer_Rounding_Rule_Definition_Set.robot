*** Settings ***
Documentation     [TAENOSIS-525] A Test Suite With Set Of Tests To Validate CPL Generation With Customer Rounding Rule Definition Set

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixtrade_page_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/sell_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${SOURCE NAME}      ${EMPTY}
${CUSTOMER PRICE LIST ROW COUNT}        ${EMPTY}

*** Test Cases ***
Validate Navigate to Business Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Business Admin' From Main Menu

Validate Expand Rating Menu
    [Tags]    REGRESSION
    Verify Expand Rating Menu

Validate Click Customer Rounding Rule Definition Submenu
    [Tags]    REGRESSION
    Verify Click Customer Rounding Rule Definition Submenu

Validate Is Customer Rounding Rule Definition Screen Loaded
    [Tags]  REGRESSION
    Verify Is Customer Rounding Rule Definition Screen Loaded

Validate Click To Expand Rounding Rules Definition Bar In Customer Routing Role Definition Screen
    [Tags]    REGRESSION
    Verify Click To Expand Specific Bar In Customer Routing Role Definition Screen      Rounding Rules Definition

Validate Check First Rounding Rule Checkbox
    [Tags]    REGRESSION
    Verify Check First Rounding Rule Checkbox

Validate Click Rounding Rules Definition Save Button
    [Tags]    REGRESSION
    Verify Click Rounding Rules Definition Save Button

Validate Click To Expand Country Definition Bar In Customer Routing Role Definition Screen
    [Tags]    REGRESSION
    Verify Click To Expand Specific Bar In Customer Routing Role Definition Screen      Country Definition

Validate Filter Country Definition
    [Tags]    REGRESSION
    Verify Filter Country Definition        India

Validate Check First Country Definition Checkbox
    [Tags]    REGRESSION
    Verify Check First Country Definition Checkbox

Validate Click Country Definition Save Button
    [Tags]    REGRESSION
    Verify Click Country Definition Save Button

Validate Click To Expand Rating Method Definition Bar In Customer Routing Role Definition Screen
    [Tags]    REGRESSION
    Verify Click To Expand Specific Bar In Customer Routing Role Definition Screen      Rating Method Definition

Validate Set Rate Dimension Template
    [Tags]    REGRESSION
    Verify Set Rate Dimension Template

Validate Click Rate Dimension Template Save Button
    [Tags]    REGRESSION
    Verify Click Rate Dimension Template Save Button

Validate Click To Expand Customer Rounding Rules Definition Bar In Customer Routing Role Definition Screen
    [Tags]    REGRESSION
    Verify Click To Expand Specific Bar In Customer Routing Role Definition Screen      Customer Rounding Rules Definition

Validate Filter Customer Source
    [Tags]    REGRESSION
    ${SOURCE NAME} =        Verify Get Source Name
    set suite variable        ${SOURCE NAME}
    Verify Filter Customer Source       ${SOURCE NAME}

Validate Verify Set Rounding Rule To Customer Source
    [Tags]    REGRESSION
    Verify Set Rounding Rule To Customer Source

Validate Click Customer Source Save Button
    [Tags]    REGRESSION
    Verify Click Customer Source Save Button

Validate Close iXTrade Window
    [Tags]    REGRESSION
    Verify Close iXTrade Window

Validate Navigate to Sell module
    [Tags]    REGRESSION
    Click On Home Icon And Select 'Sell' From Main Menu

Validate Navigate to Customer Tab
    [Tags]    REGRESSION
    Click On Customer Tab

Validate Click Customer Price Lists Button
    [Tags]     REGRESSION
    Verify Click On Customer Price Lists Button

Validate Set Customers For Search
    [Tags]    REGRESSION
    Verify Set Customers        ${SOURCE NAME}

Validate Click Customer Price Lists Search Button
    [Tags]     REGRESSION
    Verify Click Customer Price Lists Search Button

Validate Get Customer Price List Grid Number Of Rows
    [Tags]    REGRESSION
    ${CUSTOMER PRICE LIST ROW COUNT} =       Verify Get Customer Price List Grid Number Of Rows
    set suite variable          ${CUSTOMER PRICE LIST ROW COUNT}

Validate Close Customer Price Lists Tab
    [Tags]    REGRESSION
    sell_page_resource.Verify Close Current Tab        Customer Price Lists

Validate Click Create Customer Price Lists Button
    [Tags]     REGRESSION
    Verify Click Create Customer Price Lists Button

Validate Create Customer Price Lists Screen Displayed
    [Tags]     REGRESSION
    Verify Create Customer Price Lists Screen Loaded

Validate Set Apply Increase Notice Period
    [Tags]     REGRESSION
    Verify Set Apply Increase Notice Period

Validate Set Apply Digit Change Notice Period
    [Tags]     REGRESSION
    Verify Set Apply Digit Change Notice Period

Validate Set Apply Decrease Notice Period
    [Tags]     REGRESSION
    Verify Set Apply Decrease Notice Period

Validate Select Customers For Price Lists
    [Tags]     REGRESSION
    Verify Select Customers For Price Lists         ${SOURCE NAME}

Validate Assign Available Country To Source
    [Tags]    REGRESSION
    Verify Assign Available Country To Source       India

Validate Click On Generate Customer Price Lists Button
    [Tags]     REGRESSION
    Verify Click On Generate Customer Price Lists Button

Validate Customer Price Lists Generation Is Successful
    [Tags]     REGRESSION
    Verify Customer Price Lists Generation Is Successful

Validate Close Create Customer Price Lists Tab
    [Tags]    REGRESSION
    sell_page_resource.Verify Close Current Tab        Create Customer Price Lists

Validate Click Customer Price Lists Button After Creating CPL
    [Tags]     REGRESSION
    Verify Click On Customer Price Lists Button

Validate Set Customers For Search After Creating CPL
    [Tags]    REGRESSION
    Verify Set Customers        ${SOURCE NAME}

Validate Click Customer Price Lists Search Button After Creating CPL
    [Tags]     REGRESSION
    Verify Click Customer Price Lists Search Button

Validate Compare CPL Count After Creating A New One
    [Tags]    REGRESSION
    Verify Compare CPL Count After Creating A New One

Validate Click Customer Price Lists Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Customer Price Lists Grid First Row Inline Action Button

Validate Select Inline Action Item
    [Tags]    REGRESSION
    sell_page_resource.Verify Select Inline Action Item        ${VIEW PRICE LIST DETAIL INLINE ITEM NAME}

Validate The Dialed Digit MCC-MNC Tab Is Available
    [Tags]    REGRESSION
    Verify The Dialed Digit MCC-MNC Tab Is Available

