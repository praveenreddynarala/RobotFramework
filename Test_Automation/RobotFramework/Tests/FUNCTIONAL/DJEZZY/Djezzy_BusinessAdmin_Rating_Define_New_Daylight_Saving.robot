*** Settings ***
Documentation     A Test Suite With Set Of Tests For Djezzy Business Admin Rating To Define New Daylight Saving

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/ixconnect_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Business Admin module
    [Tags]    FUNCTIONAL
    click on home icon and select 'business admin' from main menu

Validate Expand Rating Menu
    [Tags]    FUNCTIONAL
    Verify Expand Rating Menu

Validate Click Daylight Saving Zone Submenu
    [Tags]    FUNCTIONAL
    Verify Click Daylight Saving Zone Submenu

Validate Switch To IXConnect
    [Tags]    FUNCTIONAL
    Verify Switch To IXConnect

Validate Switch To List Frame
    [Tags]    FUNCTIONAL
    Verify Switch To List Frame

Validate Click New Button
    [Tags]    FUNCTIONAL
    Verify Click New Button

Validate Switch To Default Content
    [Tags]    FUNCTIONAL
    Verify Switch To Default Content

Validate Switch To Detail Frame
    [Tags]    FUNCTIONAL
    Verify Switch To Detail Frame

Validate Set New Daylight Saving Zone
    [Tags]    FUNCTIONAL
    Verify Set New Daylight Saving Zone     ${TEST DATA PREFIX}

Validate Set New Daylight Saving Zone Region
    [Tags]    FUNCTIONAL
    Verify Set New Daylight Saving Zone Region      ${DAYLIGHT SAVING ZONE REGION}

Validate Click New Daylight Saving Zone Save Button
    [Tags]    FUNCTIONAL
    Verify Click New Daylight Saving Zone Save Button

Validate Click Add A New Row Button
    [Tags]    FUNCTIONAL
    Verify Click Add A New Row Button

Validate Switch To Default Content For Switching To Period Window
    [Tags]    FUNCTIONAL
    Verify Switch To Default Content

Validate Switch To Period Window
    [Tags]    FUNCTIONAL
    Verify Switch To IXConnect

Validate Set Daylight Saving Zone Period Begin Date
    [Tags]    FUNCTIONAL
    Verify Set Daylight Saving Zone Period Begin Date       ${DAYLIGHT SAVING ZONE PERIOD BEGIN DATE}

Validate Verify Set Begin Hour Value
    [Tags]    FUNCTIONAL
    Verify Set Begin Hour Value     ${PERIOD BEGIN HOUR VALUE}

Validate Set Begin Hour Minute Value
    [Tags]    FUNCTIONAL
    Verify Set Begin Hour Minute Value      ${PERIOD BEGIN HOUR MINUTE VALUE}

Validate Set Daylight Saving Zone Period End Date
    [Tags]    FUNCTIONAL
    Verify Set Daylight Saving Zone Period End Date       ${DAYLIGHT SAVING ZONE PERIOD END DATE}

Validate Verify Set End Hour Value
    [Tags]    FUNCTIONAL
    Verify Set End Hour Value     ${PERIOD END HOUR VALUE}

Validate Set End Hour Minute Value
    [Tags]    FUNCTIONAL
    Verify Set End Hour Minute Value      ${PERIOD END HOUR MINUTE VALUE}

Validate Click Daylight Saving Zone Period Save Button
    [Tags]    FUNCTIONAL
    Verify Click Daylight Saving Zone Period Save Button

Validate Return To Previous Window
    [Tags]    FUNCTIONAL
    Verify Switch To Previous Window

Validate Switch To Default Content For Create Verification
    [Tags]    FUNCTIONAL
    Verify Switch To Default Content

Validate Switch To List Frame For Verification
    [Tags]    FUNCTIONAL
    Verify Switch To List Frame

Validate Set Letters For Created Daylight Saving Zone Search
    [Tags]    FUNCTIONAL
    Verify Set Letters For Created Daylight Saving Zone Search

Validate Click Go Button
    [Tags]    FUNCTIONAL
    Verify Click Go Button

Validate Expand Testhome Region
    [Tags]    FUNCTIONAL
    Verify Expand Testhome Region

Validate Created Daylight Saving Zone Is Available
    [Tags]    FUNCTIONAL
    Verify Created Daylight Saving Zone Is Available

Validate Select Created Daylight Saving Zone
    [Tags]    FUNCTIONAL
    Verify Select Created Daylight Saving Zone

Validate Switch To Default Content For Deleting Created Daylight Saving Zone
    [Tags]    FUNCTIONAL
    Verify Switch To Default Content

Validate Switch To Detail Frame For Deleting Created Daylight Saving Zone
    [Tags]    FUNCTIONAL
    Verify Switch To Detail Frame

Validate Click Daylight Saving Zone Delete Button
    [Tags]    FUNCTIONAL
    Verify Click Daylight Saving Zone Delete Button

Validate Switch To Default Content For Verification
    [Tags]    FUNCTIONAL
    Verify Switch To Default Content

Validate Close IxConnect Window
    [Tags]    FUNCTIONAL
    Verify Close IxConnect Window

Validate Rerturn To Previous Window After Close IXConnect
    [Tags]    FUNCTIONAL
    Verify Switch To Previous Window