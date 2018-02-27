*** Settings ***
Documentation     A Test Suite With Set Of Tests For Business Admin Groups and Category For Assigning and Removing Categories

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/business_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
@{COUNTRY LIST}

*** Test Cases ***
Validate Navigate to Business Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Business Admin' From Main Menu

Validate Get Country Name
    [Tags]    REGRESSION
    ${COUNTRY NAME} =     Verify Get Country Name
    @{COUNTRY LIST} =       create list         ${COUNTRY NAME}
    set suite variable      @{COUNTRY LIST}

Validate Expand Groups and Categories Menu
    [Tags]    REGRESSION
    Verify Expand Groups and Categories Menu

Validate Click Categories Submenu
    [Tags]    REGRESSION
    Verify Click Categories Submenu

Validate Set Category Scope For Search
    [Tags]    REGRESSION
    Verify Set Category Scope For Search        @{CATEGORY SCOPE FOR SEARCH}

Validate Click Categories Search Button
    [Tags]    REGRESSION
    Verify Click Categories Search Button

Validate Click Categories Grid Inline Action Button
    [Tags]    REGRESSION
    Verify Click Categories Grid Inline Action Button       @{CATEGORY SCOPE FOR SEARCH}

Validate Select Mapping Details Inline Action Item
    [Tags]    REGRESSION
    Verify Select Inline Action Item        ${MAPPING DETAILS INLINE ITEM NAME}

Validate Move Countries To Destination
    [Tags]    REGRESSION
    Verify Move Countries To Destination        @{COUNTRY LIST}

Validate Click Edit Category Save Button
    [Tags]    REGRESSION
    Verify Click Edit Category Save Button

Validate Click Categories Grid Inline Action Button After Assigning
    [Tags]    REGRESSION
    Verify Click Categories Grid Inline Action Button       @{CATEGORY SCOPE FOR SEARCH}

Validate Select Mapping Details Inline Action Item After Assigning
    [Tags]    REGRESSION
    Verify Select Inline Action Item        ${MAPPING DETAILS INLINE ITEM NAME}

Validate Get Assigned Countries List
    [Tags]    REGRESSION
    Verify Get Assigned Countries List

Validate Countries Are Successfully Assigned
    [Tags]    REGRESSION
    Verify Countries Are Successfully Assigned      @{COUNTRY LIST}

Validate Move Countries Back To Available
    [Tags]    REGRESSION
    Verify Reassign Countries To Source

Validate Click Edit Category Save Button After Removing Countries
    [Tags]    REGRESSION
    Verify Click Edit Category Save Button

Validate Click Categories Grid Inline Action Button After Removing
    [Tags]    REGRESSION
    Verify Click Categories Grid Inline Action Button       @{CATEGORY SCOPE FOR SEARCH}

Validate Select Mapping Details Inline Action Item After Removing
    [Tags]    REGRESSION
    Verify Select Inline Action Item        ${MAPPING DETAILS INLINE ITEM NAME}

Validate All Countries Moved To Available
    [Tags]    REGRESSION
    Verify All Countries Moved To Available

Validate Click Edit Category Cancel Button
    [Tags]    REGRESSION
    Verify Click Edit Category Cancel Button
