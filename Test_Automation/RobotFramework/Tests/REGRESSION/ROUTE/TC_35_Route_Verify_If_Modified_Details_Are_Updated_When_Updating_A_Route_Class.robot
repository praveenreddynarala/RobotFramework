*** Settings ***
Documentation     A Test Suite With Set Of Tests To Verify If Modified Details Are Updated When Updating A Route Class

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/business_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Business Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Business Admin' From Main Menu

Validate Expand Routing Menu
    [Tags]    REGRESSION
    Verify Expand Routing Menu

Validate Click Route Class Submenu
    [Tags]    REGRESSION
    Verify Click Route Class Submenu

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

Validate Click Save Button And Verify Success Message For New Entry
    [Tags]    REGRESSION
    Verify Click Add Edit Route Class Save Button       ${SUCCESS MESSAGE VALIDATION TEXT FOR NEW ENTRY}

Validate Filter Route Class Grid
    [Tags]    REGRESSION
    Verify Filter Route Class Grid      ${ROUTE CLASS COLUMN NAME}

Validate Click Route Class Grid Inline Action Button
    [Tags]    REGRESSION
    Verify Click Route Class Grid Inline Action Button

Validate Select Route Class Inline Action Item
    [Tags]    REGRESSION
    Verify Select Route Class Inline Action Item        ${EDIT INLINE ITEM}

Validate Edit Route Class Name
    [Tags]    REGRESSION
    Verify Set Route Class Name     ${TEST DATA PREFIX}

Validate Click Save Button And Verify Success Message After Edit
    [Tags]    REGRESSION
    Verify Click Add Edit Route Class Save Button       ${SUCCESS MESSAGE VALIDATION TEXT FOR NEW ENTRY}

Validate Clear All Table Filters
    [Tags]    REGRESSION
    Verify Clear All Table Filters      ${ROUTE CLASS ABBREVIATION COLUMN NAME}

Validate Filter Route Class Grid With Edited Route Class
    [Tags]    REGRESSION
    Verify Filter Route Class Grid      ${ROUTE CLASS COLUMN NAME}

Validate Edited Route Class Displayed In The Grid
    [Tags]    REGRESSION
    Verify Search Results Displayed In The Grid
