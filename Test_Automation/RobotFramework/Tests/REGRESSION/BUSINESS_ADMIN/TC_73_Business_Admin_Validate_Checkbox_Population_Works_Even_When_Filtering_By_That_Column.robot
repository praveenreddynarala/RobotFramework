*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Checkbox Population Works Even When Filtering By That Column

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/business_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${SOURCE NAME}      ${EMPTY}

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

Validate Click Source And Policies Submenu
    [Tags]    REGRESSION
    Verify Click Source And Policies Submenu

Validate Filter Source And Policies Grid Column With Checkbox
    [Tags]    REGRESSION
    Verify Filter Source And Policies Grid Column With Checkbox     ${AUTOMATE EXPORT COLUMN NAME}     ${TRUE}

Validate Get Sources Grid Row Data
    [Tags]    REGRESSION
    Verify Get Sources Grid Row Data

Validate Get First Source Name
    [Tags]    REGRESSION
    ${SOURCE NAME} =    Verify Get First Source Name
    set suite variable      ${SOURCE NAME}

Validate Select Source Grid Row Checkbox
    [Tags]    REGRESSION
    Verify Select Source Grid Row Checkbox      ${SOURCE NAME}

Validate Select Source And Policies First Row Automate Export Checkbox
    [Tags]    REGRESSION
    Verify Select Source And Policies First Row Automate Export Checkbox        ${SOURCE NAME}

Validate Click Source Grid Save Changes Button
    [Tags]    REGRESSION
    Verify Click Source Grid Save Changes Button

Validate Clear All Table Filters
    [Tags]    REGRESSION
    Verify Clear All Table Filters      ${SOURCE COLUMN NAME}

Validate Filter Source And Policies Grid
    [Tags]    REGRESSION
    Verify Filter Source And Policies Grid      ${SOURCE COLUMN NAME}     ${SOURCE NAME}

Validate Source Policies Grid Automate Export Checkbox Status
    [Tags]    REGRESSION
    Verify Source Policies Grid Automate Export Checkbox Status     ${FALSE}    ${SOURCE NAME}