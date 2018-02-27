*** Settings ***
Documentation     A Test Suite With Set Of Tests For Business Admin Route Class validate Create and Edit Route Class functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
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
    business_admin_page_resource.Verify Set Route Class Abbreviation     ${TEST DATA PREFIX}

Validate Set AEP Distribution Group
    [Tags]    REGRESSION
    Verify Set AEP Distribution Group       ${AEP DISTRIBUTION GROUP}

Validate Set Wholesale Type
    [Tags]    REGRESSION
    Verify Set Wholesale Type     ${WHOLESALE TYPE}

Validate Set Target Fulfillment Order
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Set Target Fulfillment Order     ${False}

Validate Set Capacity Saturation Order
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Set Capacity Saturation Order     ${False}

Validate Set Minimum Direct Percent
    [Tags]    REGRESSION
    Verify Set Minimum Direct Percent       ${MINIMUM DIRECT PERCENT VALUE}

Validate Set CDR Route Class
    [Tags]    REGRESSION
    Verify Set CDR Route Class      ${CDR ROUTE CLASS}

Validate Select Selected For Routing Checkbox
    [Tags]    REGRESSION
    Verify Select Selected For Routing Checkbox     ${TRUE}

Validate Select CLI Guarantee Checkbox
    [Tags]    REGRESSION
    Verify Select CLI Guarantee Checkbox        ${TRUE}

Validate Click Save Button And Verify Success Message For New Entry
    [Tags]    REGRESSION
    Verify Click Add Edit Route Class Save Button       ${SUCCESS MESSAGE VALIDATION TEXT FOR NEW ENTRY}

Validate Move Available Destinations To Destination
    [Tags]    REGRESSION
    ${DESTINATION} =        Verify Get Created Destination
    Verify Move Available Destinations To Destination      ${DESTINATION}

Validate Route Class Initialize Button
    [Tags]    REGRESSION
    Verify Route Class Initialize Button
