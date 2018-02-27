*** Settings ***
Documentation     A Test Suite With Set Of Tests For Business Admin Validate Assign Destination to Destination Categories

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/business_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Business Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Business Admin' From Main Menu

Validate Expand Groups and Categories Menu
    [Tags]    REGRESSION
    Verify Expand Groups and Categories Menu

Validate Click Categories Submenu
    [Tags]    REGRESSION
    Verify Click Categories Submenu

Validate Set Category Type For Search
    [Tags]    REGRESSION
    Verify Set Category Type        @{TRADE DESTINATION CATEGORY TYPE}

Validate Click Categories Search Button
    [Tags]    REGRESSION
    Verify Click Categories Search Button

Validate Click Categories Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Categories Grid First Row Inline Action Button

Validate Select Mapping Details Inline Action Item
    [Tags]    REGRESSION
    Verify Select Inline Action Item        ${MAPPING DETAILS INLINE ITEM NAME}

Validate Set View Edit Category Number Plan Type
    [Tags]    REGRESSION
    Verify Set View Edit Category Number Plan Type      ${DJEZZY VIEW EDIT NUMBER PLAN TYPE}

Validate Set View Edit Category Number Plan
    [Tags]    REGRESSION
    Verify Set View Edit Category Number Plan       ${DJEZZY VIEW EDIT NUMBER PLAN}

Validate Move Categories To Destination
    [Tags]    REGRESSION
    Verify Move First Category To Destination

Validate Click Edit Category Save Button
    [Tags]    REGRESSION
    Verify Click Edit Category Save Button

Validate Click Categories Grid First Row Inline Action Button For Reassigning
    [Tags]    REGRESSION
    Verify Click Categories Grid First Row Inline Action Button

Validate Select Mapping Details Inline Action Item For Reassigning
    [Tags]    REGRESSION
    Verify Select Inline Action Item        ${MAPPING DETAILS INLINE ITEM NAME}

Validate Set View Edit Category Number Plan Type For Reassigning
    [Tags]    REGRESSION
    Verify Set View Edit Category Number Plan Type      ${DJEZZY VIEW EDIT NUMBER PLAN TYPE}

Validate Set View Edit Category Number Plan For Reassigning
    [Tags]    REGRESSION
    Verify Set View Edit Category Number Plan       ${DJEZZY VIEW EDIT NUMBER PLAN}

Validate Reassign Category To Source
    [Tags]    REGRESSION
    Verify Reassign Category To Source

Validate Click Edit Category Save Button For Reassigning
    [Tags]    REGRESSION
    Verify Click Edit Category Save Button

