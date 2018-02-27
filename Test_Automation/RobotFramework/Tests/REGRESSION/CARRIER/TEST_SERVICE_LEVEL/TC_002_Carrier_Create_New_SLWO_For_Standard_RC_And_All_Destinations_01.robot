*** Settings ***
Documentation     [TAENOSIS-989] A Test Suite With Set Of Tests To Create New SLWO For Standard RC And All Destinations

Resource          ../../../../Resources/common_resource.robot
Resource          ../../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../../Resources/ExternalDataSource/TestAutomation/business_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${ROUTE CLASS}                  ${EMPTY}

*** Test Cases ***
Validate Navigate to System Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select System Tab
    [Tags]    REGRESSION
    Click on System Tab

Validate Click Configuration Variables Button
    [Tags]    REGRESSION
    Verify Click Configuration Variables Button

Validate Set Variable Name
    [Tags]    REGRESSION
    Verify Set Variable Name    EnableServiceLevelChangeWorkOrders

Validate Click Configuration Variables Grid Search Button
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        1

Validate Set Variable Name For ServiceLevelProvisioning
    [Tags]    REGRESSION
    Verify Set Variable Name    ServiceLevelProvisioning

Validate Click Configuration Variables Grid Search Button For ServiceLevelProvisioning
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column For ServiceLevelProvisioning
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        0

Validate Set Variable Name For UseCSRforServiceLevel
    [Tags]    REGRESSION
    Verify Set Variable Name    UseCSRforServiceLevel

Validate Click Configuration Variables Grid Search Button For UseCSRforServiceLevel
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column For UseCSRforServiceLevel
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        on

Validate Close System Admin Window
    [Tags]    REGRESSION
    Verify Close System Admin Window

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

Validate Expand Number Plan Menu
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Expand Number Plan Menu

Validate Click Destination Submenu
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Click Destination Submenu

Validate Switch To IXConnect Window
    [Tags]    REGRESSION
    Verify Switch To IXConnect

Validate Select Service Level Submenu
    [Tags]    REGRESSION
    Verify Select Service Level Submenu

Validate Service Level Is Created For Route Class
    [Tags]    REGRESSION
    Verify Service Level Is Created For Route Class     ${ROUTE CLASS}
