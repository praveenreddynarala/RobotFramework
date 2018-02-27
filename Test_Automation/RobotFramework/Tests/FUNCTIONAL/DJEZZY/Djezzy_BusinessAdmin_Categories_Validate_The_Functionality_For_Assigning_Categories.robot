*** Settings ***
Documentation     A Test Suite With Set Of Tests For Djezzy Business Admin Categories To Validate The Functionality For Assigning Categories

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/business_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Business Admin module
    [Tags]    FUNCTIONAL
    Click on Home Icon and Select 'Business Admin' From Main Menu

Validate Expand Groups and Categories Menu
    [Tags]    FUNCTIONAL
    Verify Expand Groups and Categories Menu

Validate Click Categories Submenu
    [Tags]    FUNCTIONAL
    Verify Click Categories Submenu

Validate Set Category Scope For Search
    [Tags]    FUNCTIONAL
    Verify Set Category Scope For Search        @{DJEZZY CATEGORY SCOPE FOR SEARCH}

Validate Set Category Type For Search
    [Tags]    FUNCTIONAL
    Verify Set Category Type        @{DJEZZY CATEGORY TYPE LIST FOR SEARCH}

Validate Click Categories Search Button
    [Tags]    FUNCTIONAL
    Verify Click Categories Search Button

Validate Click Categories Grid First Row Inline Action Button
    [Tags]    FUNCTIONAL
    Verify Click Categories Grid First Row Inline Action Button

Validate Select Mapping Details Inline Action Item
    [Tags]    FUNCTIONAL
    Verify Select Inline Action Item        ${MAPPING DETAILS INLINE ITEM NAME}

Validate Set View Edit Category Type
    [Tags]    FUNCTIONAL
    Verify Set View Edit Category Type      ${DJEZZY VIEW EDIT CATEGORY TYPE}

Validate Set View Edit Category Number Plan Type
    [Tags]    FUNCTIONAL
    Verify Set View Edit Category Number Plan Type      ${DJEZZY VIEW EDIT NUMBER PLAN TYPE}

Validate Set View Edit Category Number Plan
    [Tags]    FUNCTIONAL
    Verify Set View Edit Category Number Plan       ${DJEZZY VIEW EDIT NUMBER PLAN}

Validate Move Categories To Destination
    [Tags]    FUNCTIONAL
    Verify Move Countries To Destination        @{DJEZZY CATEGORY LIST FOR ASSIGNING}

Validate Click Edit Category Save Button
    [Tags]    FUNCTIONAL
    Verify Click Edit Category Save Button

Validate Click Categories Grid First Row Inline Action Button For Reassigning
    [Tags]    FUNCTIONAL
    Verify Click Categories Grid First Row Inline Action Button

Validate Select Mapping Details Inline Action Item For Reassigning
    [Tags]    FUNCTIONAL
    Verify Select Inline Action Item        ${MAPPING DETAILS INLINE ITEM NAME}

Validate Set View Edit Category Number Plan Type For Reassigning
    [Tags]    FUNCTIONAL
    Verify Set View Edit Category Number Plan Type      ${DJEZZY VIEW EDIT NUMBER PLAN TYPE}

Validate Set View Edit Category Number Plan For Reassigning
    [Tags]    FUNCTIONAL
    Verify Set View Edit Category Number Plan       ${DJEZZY VIEW EDIT NUMBER PLAN}

Validate Get Assigned Categories List
    [Tags]    FUNCTIONAL
    Verify Get Assigned Countries List

Validate Categories Are Successfully Assigned
    [Tags]    FUNCTIONAL
    Verify Countries Are Successfully Assigned      @{DJEZZY CATEGORY LIST FOR ASSIGNING}

Validate Reassign Countries To Source
    [Tags]    FUNCTIONAL
    Verify Reassign Countries To Source

Validate Click Edit Category Save Button For Reassigning
    [Tags]    FUNCTIONAL
    Verify Click Edit Category Save Button

Validate Click Categories Grid First Row Inline Action Button For Verifying
    [Tags]    FUNCTIONAL
    Verify Click Categories Grid First Row Inline Action Button

Validate Select Mapping Details Inline Action Item For Verifying
    [Tags]    FUNCTIONAL
    Verify Select Inline Action Item        ${MAPPING DETAILS INLINE ITEM NAME}

Validate Set View Edit Category Number Plan Type For Verifying
    [Tags]    FUNCTIONAL
    Verify Set View Edit Category Number Plan Type      ${DJEZZY VIEW EDIT NUMBER PLAN TYPE}

Validate Set View Edit Category Number Plan For Verifying
    [Tags]    FUNCTIONAL
    Verify Set View Edit Category Number Plan       ${DJEZZY VIEW EDIT NUMBER PLAN}

Validate All Countries Moved To Available
    [Tags]    FUNCTIONAL
    Verify All Countries Moved To Available

Validate Click Edit Category Cancel Button
    [Tags]    FUNCTIONAL
    Verify Click Edit Category Cancel Button