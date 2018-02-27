*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Cost Adjustments Bulk Edit And Delete Functions

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Business Admin module
    [Tags]    REGRESSION
    click on home icon and select 'business admin' from main menu

Validate The Business Admin Dashboard Tab Is Available
    [Tags]    REGRESSION
    Verify The Business Admin Dashboard Tab Is Available

Validate Expand Trading Menu
    [Tags]    REGRESSION
    Verify Expand Trading Menu

Validate Click Internal Cost Adjustment Submenu
    [Tags]    REGRESSION
    Verify Click Internal Cost Adjustment Submenu

Validate Click Add New Adjustment Button
    [Tags]    REGRESSION
    Verify Click Add New Adjustment Button

Validate Set Route Class For Cost Adjustment
    [Tags]    REGRESSION
    Verify Set Route Class For Cost Adjustment

Validate Set Cost Per Minute
    [Tags]    REGRESSION
    Verify Set Cost Per Minute

Validate Set Routing Product
    [Tags]    REGRESSION
    Verify Set Routing Product

Validate Click New CSNP Save Button
    [Tags]    REGRESSION
    Verify Click New CSNP Save Button

Validate Select Internal Cost Adjustments Grid First Row Checkbox
    [Tags]    REGRESSION
    Verify Select Internal Cost Adjustments Grid First Row Checkbox

Validate Click Buy And Sell Deal Bulk Edit Button
    [Tags]    REGRESSION
    Verify Click Buy And Sell Deal Bulk Edit Button

Validate Set Bulk Edit End Date
    [Tags]    REGRESSION
    Verify Set Bulk Edit End Date       ${EMPTY}    ${TRUE}

Validate Click Bulk Edit Submit Button
    [Tags]    REGRESSION
    Verify Click Bulk Edit Submit Button

Validate Click Save Changes Button Without Confirmation
    [Tags]    REGRESSION
    Verify Click Save Changes Button Without Confirmation

Validate Select Internal Cost Adjustments Grid First Row Checkbox For Delete
    [Tags]    REGRESSION
    Verify Select Internal Cost Adjustments Grid First Row Checkbox

Validate Click Internal Cost Adjustment Delete Button
    [Tags]    REGRESSION
    Verify Click Internal Cost Adjustment Delete Button