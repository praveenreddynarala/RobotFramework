*** Settings ***
Documentation     [TAENOSIS-996] A Test Suite With Set Of Tests To Verify Service Level Configuaration Create New SLWO For Custom RC And All Destinations

Resource          ../../../../Resources/common_resource.robot
Resource          ../../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../../Resources/ExternalDataSource/TestAutomation/business_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${ROUTE CLASS}                  ${EMPTY}
${COMMERCIAL TRUNK NAME}        ${EMPTY}

*** Test Cases ***
Validate Navigate to Business Admin module
    [Tags]    REGRESSION
    business_admin_page_resource.Click on Home Icon and Select 'Business Admin' From Main Menu

Validate Expand Routing Menu
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Expand Routing Menu

Validate Click Route Class Submenu
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Click Route Class Submenu

Validate Click Add Route Class Button
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Click Add Route Class Button

Validate Set Route Class Name
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Set Route Class Name     ${TEST DATA PREFIX}

Validate Set Route Class Abbreviation
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Set Route Class Abbreviation     ${ROUTE CLASS ABBREVIATION PREFIX}

Validate Set Wholesale Type
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Set Wholesale Type     ${WHOLESALE TYPE}

Validate Set Target Fulfillment Order
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Set Target Fulfillment Order     ${False}

Validate Set Capacity Saturation Order
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Set Capacity Saturation Order     ${False}

Validate Set Minimum Direct Percent
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Set Minimum Direct Percent       ${MINIMUM DIRECT PERCENT VALUE}

Validate Check Custom RC Checkbox
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Check Custom RC Checkbox

Validate Click Save Button And Verify Success Message For New Entry
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Click Add Edit Route Class Save Button       ${SUCCESS MESSAGE VALIDATION TEXT FOR NEW ENTRY}

Validate Get Route Class
    [Tags]    REGRESSION
    ${ROUTE CLASS} =       business_admin_page_resource.Verify Get Route Class Name
    log  ${ROUTE CLASS}
    set suite variable      ${ROUTE CLASS}

Validate Close Route Class Tab
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Close Current Tab       Route Class

Validate Close Business Admin Window
    [Tags]    REGRESSION
    Verify Close Business Admin Window

Validate Navigate to Contracts module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate Switch To IXConnect Window
    [Tags]    REGRESSION
    Verify Switch To IXConnect

Validate Select Service Level Submenu
    [Tags]    REGRESSION
    Verify Select Service Level Submenu

Validate Service Level Is Created For Route Class
    [Tags]    REGRESSION
    Verify Service Level Is Created For Route Class     ${ROUTE CLASS}

Validate Close IxConnect Window
    [Tags]    REGRESSION
    Verify Close IxConnect Window       ${TRUE}
