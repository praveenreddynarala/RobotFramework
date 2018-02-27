*** Settings ***
Documentation    [TAENOSIS-862] A Test Suite With Set Of Tests To Verify New Field Alias For Route Class

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/business_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CREATED FIELD ALIAS NAME}     ${EMPTY}

*** Test Cases ***
Validate Select 'System Admin' From Main Menu
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select System Tab
    [Tags]    REGRESSION
    Click on System Tab

Validate Click Field Alias Link
    [Tags]    REGRESSION
    Verify Click Field Alias Link

Validate Set Application
    [Tags]    REGRESSION
    Verify Set Application      iXRoute

Validate Set Field Alias Scope
    [Tags]    REGRESSION
    Verify Set Field Alias Scope        Route Class

Validate Click Search Button
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Field Alias Grid Field Name
    [Tags]    REGRESSION
    Verify Field Alias Grid Field Name      ${CUSTOM FIELD NAME}

Validate et Value In Field Alias Column
    [Tags]    REGRESSION
    Verify Set Field Alias Column Value     ${CUSTOM FIELD NAME}

Validate Click Save Changes Button
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Save Changes Button

Validate Close System Admin Window
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Select 'Business Admin' From Main Menu
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Business Admin' From Main Menu

Validate Expand Routing Menu
    [Tags]    REGRESSION
    Verify Expand Routing Menu

Validate Click Route Class Submenu
    [Tags]    REGRESSION
    Verify Click Route Class Submenu

Validate Route Class Grid Column Is Present
    [Tags]    REGRESSION
    Verify Route Class Grid Column Is Present       ${CUSTOM FIELD NAME}

Validate Click Add Route Class Button
    [Tags]    REGRESSION
    Verify Click Add Route Class Button

Validate Set Route Class Name
    [Tags]    REGRESSION
    Verify Set Route Class Name     ${TEST DATA PREFIX}

Validate Set Route Class Abbreviation
    [Tags]    REGRESSION
    Verify Set Route Class Abbreviation     ${ROUTE CLASS ABBREVIATION PREFIX}

Validate Set Wholesale Type
    [Tags]    REGRESSION
    Verify Set Wholesale Type     ${WHOLESALE TYPE}

Validate Set Target Fulfillment Order
    [Tags]    REGRESSION
    Verify Set Target Fulfillment Order     ${False}

Validate Set Capacity Saturation Order
    [Tags]    REGRESSION
    Verify Set Capacity Saturation Order     ${False}

Validate Set Minimum Direct Percent
    [Tags]    REGRESSION
    Verify Set Minimum Direct Percent       ${MINIMUM DIRECT PERCENT VALUE}

Validate Set CDR Route Class
    [Tags]    REGRESSION
    Verify Set CDR Route Class      ${CDR ROUTE CLASS}

Validate Select Auto Suggest Checkbox
    [Tags]    REGRESSION
    Verify Select Auto Suggest Checkbox     ${AUTO SUGGEST CHECKBOX SELECTION STATUS}

Validate Select Selected For Routing Checkbox
    [Tags]    REGRESSION
    Verify Select Selected For Routing Checkbox     ${SELECTED FOR ROUTING CHECKBOX SELECTION STATUS}

Validate Select CLI Guarantee Checkbox
    [Tags]    REGRESSION
    Verify Select CLI Guarantee Checkbox        ${CLI GUARANTEE CHECKBOX SELECTION STATUS}

Validate Custom Field Alias Is Present
    [Tags]    REGRESSION
    Verify Custom Field Alias Is Present        ${CUSTOM FIELD NAME}

Validate Click Save Button And Verify Success Message For New Entry
    [Tags]    REGRESSION
    Verify Click Add Edit Route Class Save Button       ${SUCCESS MESSAGE VALIDATION TEXT FOR NEW ENTRY}

Valdiate Get New Route Class Data
    [Tags]    REGRESSION
    Verify Get New Route Class Data

Validate Filter Route Class Grid
    [Tags]    REGRESSION
    Verify Filter Route Class Grid      ${ROUTE CLASS COLUMN NAME}

Validate Get Route Class Grid Row Data
    [Tags]    REGRESSION
    Verify Get Route Class Grid Row Data

Validate Click Route Class Grid Inline Action Button
    [Tags]    REGRESSION
    Verify Click Route Class Grid Inline Action Button

Validate Select Route Class Inline Action Item
    [Tags]    REGRESSION
    Verify Select Route Class Inline Action Item        ${EDIT INLINE ITEM}

Validate Edit Route Class Name
    [Tags]    REGRESSION
    Verify Set Route Class Name     ${TEST DATA PREFIX}

Validate Custom Field Alias Is Present For Edit
    [Tags]    REGRESSION
    Verify Custom Field Alias Is Present        ${CUSTOM FIELD NAME}

Validate Click Save Button And Verify Success Message After Edit
    [Tags]    REGRESSION
    Verify Click Add Edit Route Class Save Button       ${SUCCESS MESSAGE VALIDATION TEXT FOR NEW ENTRY}

Validate Close Business Admin Window
    [Tags]    REGRESSION
    Verify Close Business Admin Window

Validate Select 'System Admin' From Main Menu For Resetting
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select System Tab For Resetting
    [Tags]    REGRESSION
    Click on System Tab

Validate Click Field Alias Link For Resetting
    [Tags]    REGRESSION
    Verify Click Field Alias Link

Validate Set Application For Resetting
    [Tags]    REGRESSION
    Verify Set Application      iXRoute

Validate Set Field Alias Scope For Resetting
    [Tags]    REGRESSION
    Verify Set Field Alias Scope        Route Class

Validate Click Search Button For Resetting
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Field Alias Grid Field Name For Resetting
    [Tags]    REGRESSION
    Verify Field Alias Grid Field Name      ${CUSTOM FIELD NAME}

Validate et Value In Field Alias Column For Resetting
    [Tags]    REGRESSION
    Verify Set Field Alias Column Value     ${EMPTY}

Validate Click Save Changes Button For Resetting
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Save Changes Button

Validate Close System Admin Window For Resetting
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Select 'Business Admin' From Main Menu When Field Alias Disabled
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Business Admin' From Main Menu

Validate Expand Routing Menu When Field Alias Disabled
    [Tags]    REGRESSION
    Verify Expand Routing Menu

Validate Click Route Class Submenu When Field Alias Disabled
    [Tags]    REGRESSION
    Verify Click Route Class Submenu

Validate Route Class Grid Column Is Not Present When Field Alias Disabled
    [Tags]    REGRESSION
    Verify Route Class Grid Column Is Not Present       ${CUSTOM FIELD NAME}