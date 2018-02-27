*** Settings ***
Documentation     A Test Suite With Set Of Tests For Business Admin Routing Route Class To Validate All Duplicate Routing Class Field Values

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/business_admin_page_test_data_source.robot

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

Validate Get Route Class Grid First Row Data
    [Tags]    REGRESSION
    Verify Get Route Class Grid First Row Data

Validate Click Add Route Class Button
    [Tags]    REGRESSION
    Verify Click Add Route Class Button

Validate Set Duplicate Route Class Name
    [Tags]    REGRESSION
    Verify Set Route Class Name     ${ROUTE CLASS PREFIX FOR DUPLICATE VALUE}

Validate Set Duplicate Route Class Abbreviation
    [Tags]    REGRESSION
    Verify Set Route Class Abbreviation     ${ROUTE CLASS ABBREVIATION PREFIX FOR DUPLICATE VALUE}

Validate Set Duplicate Wholesale Type
    [Tags]    REGRESSION
    Verify Set Wholesale Type     ${WHOLESALE TYPE}

Validate Set Duplicate Target Fulfillment Order
    [Tags]    REGRESSION
    Verify Set Target Fulfillment Order     ${True}

Validate Set Duplicate Capacity Saturation Order
    [Tags]    REGRESSION
    Verify Set Capacity Saturation Order     ${True}

Validate Set Duplicate Minimum Direct Percent
    [Tags]    REGRESSION
    Verify Set Minimum Direct Percent       ${MINIMUM DIRECT PERCENT FOR DUPLICATE VALUE}

Validate Click Save Button And Verify Route Class Error Message
    [Tags]    REGRESSION
    Verify Click Add Edit Route Class Save Button       ${ROUTE CLASS FIELD LABEL TEXT}

Validate Set New Route Class Name
    [Tags]    REGRESSION
    Verify Set Route Class Name     ${TEST DATA PREFIX}

Validate Set New Route Class Abbreviation
    [Tags]    REGRESSION
    Verify Set Route Class Abbreviation     ${ROUTE CLASS ABBREVIATION PREFIX}

Validate Set New Wholesale Type
    [Tags]    REGRESSION
    Verify Set Wholesale Type     ${WHOLESALE TYPE}

Validate Click Save Button And Verify Target Fulfillment Order Error Message
    [Tags]    REGRESSION
    Verify Click Add Edit Route Class Save Button       ${TARGET FULFILLMENT ORDER LABEL TEXT}

Validate Set New Target Fulfillment Order
    [Tags]    REGRESSION
    Verify Set Target Fulfillment Order     ${False}

Validate Click Save Button And Verify Capacity Saturation Order Error Message
    [Tags]    REGRESSION
    Verify Click Add Edit Route Class Save Button       ${CAPACITY SATURATION ORDER LABEL TEXT}

Validate Set New Capacity Saturation Order
    [Tags]    REGRESSION
    Verify Set Capacity Saturation Order     ${False}

Validate Set Invalid Minimum Direct Percent
    [Tags]    REGRESSION
    Verify Set Minimum Direct Percent       ${MINIMUM DIRECT PERCENT FOR INVALID VALUE}

Validate Click Save Button And Verify Minimum Direct Percent Error Message
    [Tags]    REGRESSION
    Verify Click Add Edit Route Class Save Button       ${MINIMUM DIRECT PERCENT LABEL TEXT}

Validate Select Auto Suggest Checkbox
    [Tags]    REGRESSION
    Verify Select Auto Suggest Checkbox     ${True}

Validate Auto Suggested Target Fulfillment Order Field Is Disabled
    [Tags]    REGRESSION
    Verify Auto Suggested Value Field Is Disabled       ${TARGET FULFILLMENT ORDER LABEL TEXT}

Validate Auto Suggested Capacity Saturation Order Field Is Disabled
    [Tags]    REGRESSION
    Verify Auto Suggested Value Field Is Disabled       ${CAPACITY SATURATION ORDER LABEL TEXT}

Validate Auto Suggested Minimum Direct Percent Field Is Disabled
    [Tags]    REGRESSION
    Verify Auto Suggested Value Field Is Disabled       ${MINIMUM DIRECT PERCENT LABEL TEXT}

Validate Target Fulfillment Order Auto Suggested Value
    [Tags]    REGRESSION
    Verify Auto Suggested Value     ${TARGET FULFILLMENT ORDER LABEL TEXT}      ${TARGET FULFILLMENT ORDER AUTO SUGGESTED VALUE}

Validate Capacity Saturation Order Auto Suggested Value
    [Tags]    REGRESSION
    Verify Auto Suggested Value     ${CAPACITY SATURATION ORDER LABEL TEXT}      ${CAPACITY SATURATION ORDER AUTO SUGGESTED VALUE}

Validate Minimum Direct Percent Auto Suggested Value
    [Tags]    REGRESSION
    Verify Auto Suggested Value     ${MINIMUM DIRECT PERCENT LABEL TEXT}      ${MINIMUM DIRECT PERCENT AUTO SUGGESTED VALUE}

Validate DeSelect Auto Suggest Checkbox
    [Tags]    REGRESSION
    Verify Select Auto Suggest Checkbox     ${True}

Validate Set New Target Fulfillment Order For New Entry
    [Tags]    REGRESSION
    Verify Set Target Fulfillment Order     ${False}

Validate Set New Capacity Saturation Order For New Entry
    [Tags]    REGRESSION
    Verify Set Capacity Saturation Order     ${False}

Validate Set New Minimum Direct Percent For New Entry
    [Tags]    REGRESSION
    Verify Set Minimum Direct Percent       ${MINIMUM DIRECT PERCENT FOR NEW VALUE}

Validate Click Save Button And Verify Success Message For New Entry
    [Tags]    REGRESSION
    Verify Click Add Edit Route Class Save Button       ${SUCCESS MESSAGE VALIDATION TEXT FOR NEW ENTRY}

Validate Click Add Edit Route Class Cancel Button
    [Tags]    REGRESSION
    Verify Click Add Edit Route Class Cancel Button