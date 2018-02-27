*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Create, Edit and Delete New Country Groups.

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/business_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Business Admin module
    [Tags]    REGRESSION
    click on home icon and select 'business admin' from main menu

Validate The Business Admin Dashboard Tab Is Available
    [Tags]    REGRESSION
    Verify The Business Admin Dashboard Tab Is Available

Validate Expand Number Plan Menu
    [Tags]    REGRESSION
    Verify Expand Number Plan Menu

Validate Click Country Submenu
    [Tags]    REGRESSION
    Verify Click Country Submenu

Validate Click Country Groups Button
    [Tags]    REGRESSION
    Verify Click Country Groups Button

Validate Click Create Country Groups Button
    [Tags]    REGRESSION
    Verify Click Create Country Group Button

Validate Set Country Group For Create
    [Tags]    REGRESSION
    Verify Set Country Group    ${TEST DATA PREFIX}

Validate Set Country Group Scope For Create
    [Tags]    REGRESSION
    Verify Set Country Group Scope   ${COUNTRY GROUP SCOPE}

Validate Move Available Countries To Destination
    [Tags]    REGRESSION
    Verify Move Available Countries To Destination

Validate Click Save Country Groups Button
    [Tags]    REGRESSION
    Verify Click Save Country Group

Validate Close Country Group Tab
    [Tags]    REGRESSION
    Verify Close Country Group Tab

Validate Click Country Groups Button After Closing Tab
    [Tags]    REGRESSION
    Verify Click Country Groups Button

Validate Select Country Group
    [Tags]    REGRESSION
    Verify Select Country Group

Validate Click Country Group Search Button
    [Tags]    REGRESSION
    Verify Click Country Group Search Button

Validate Get Country Group Grid Row Details
    [Tags]    REGRESSION
    Verify Get Country Group Grid Row Details

Validate Country Group
    [Tags]    REGRESSION
    Verify Country Group

Validate Country Group Scope
    [Tags]    REGRESSION
    Verify Country Group Scope      ${COUNTRY GROUP SCOPE}

Validate Click Country Group Grid Inline Action Button
    [Tags]    REGRESSION
    Verify Click Country Group Grid Inline Action Button

Validate Select Country Group Grid Inline Action Item
    [Tags]    REGRESSION
    Verify Select Country Group Grid Inline Action Item     ${COUNTRY GROUP GRID INLINE ACTION ITEM}

# START: THIS PORTION OF TEST STEPS ARE OMMITED SINCE COUNTRY GROUP SCOPE IS NOT EDITABLE

#Validate Set Country Group Scope For Edit
#    [Tags]    REGRESSION
#    Verify Set Country Group Scope   ${COUNTRY GROUP SCOPE FOR EDIT}

# END: THIS PORTION OF TEST STEPS ARE OMMITED SINCE COUNTRY GROUP SCOPE IS NOT EDITABLE

Validate Click Save Country Groups Button After Edit
    [Tags]    REGRESSION
    Verify Click Save Country Group

# START: THIS PORTION OF TEST STEPS ARE OMMITED SINCE COUNTRY GROUP SCOPE IS NOT EDITABLE

#Validate Close Country Group Tab After Edit
#    [Tags]    REGRESSION
#    Verify Close Country Group Tab
#
#Validate Click Country Groups Button After Edit
#    [Tags]    REGRESSION
#    Verify Click Country Groups Button
#
#Validate Select Country Group After Edit
#    [Tags]    REGRESSION
#    Verify Select Country Group
#
#Validate Click Country Group Search Button After Edit
#    [Tags]    REGRESSION
#    Verify Click Country Group Search Button
#
#Validate Get Country Group Grid Row Details After Edit
#    [Tags]    REGRESSION
#    Verify Get Country Group Grid Row Details
#
#Validate Country Group After Edit
#    [Tags]    REGRESSION
#    Verify Country Group
#
#Validate Country Group Scope After Edit
#    [Tags]    REGRESSION
#    Verify Country Group Scope      ${COUNTRY GROUP SCOPE}

# END: THIS PORTION OF TEST STEPS ARE OMMITED SINCE COUNTRY GROUP SCOPE IS NOT EDITABLE

Validate Select Created Country Group Checkbox
    [Tags]    REGRESSION
    Verify Select Created Country Group Checkbox

Validate Click Country Group Delete Button
    [Tags]    REGRESSION
    Verify Click Country Group Delete Button