*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Credit Management Grid's Inline Actions Availibity.

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/carrier_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CARRIER NAME}             ${EMPTY}
${PREVIOUS CARRIER NAME}    ${EMPTY}
${COMPANY NAME}             ${EMPTY}

*** Test Cases ***
Validate Navigate to Carrier module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Carrier' From Main Menu

Validate Get Previously Created Carrier Name
    [Tags]    REGRESSION
    ${PREVIOUS CARRIER NAME} =       Verify Get Created Carrier Name
    set suite variable      ${PREVIOUS CARRIER NAME}

Validate Click Create Carrier Button
    [Tags]    REGRESSION
    Verify Click Create Carrier Button

Validate Set Carrier Name
    [Tags]    REGRESSION
    Verify Set Carrier Name             ${TEST DATA PREFIX}

Validate Set Carrier Abbreviation
    [Tags]    REGRESSION
    Verify Set Carrier Abbreviation     ${TEST DATA PREFIX}

Validate Set Carrier Legal Name
    [Tags]    REGRESSION
    Verify Set Carrier Legal Name       ${TEST DATA PREFIX}

Validate Set Status
    [Tags]    REGRESSION
    Verify Set Status                   ${ACTIVE STATUS}

Validate Get Company Name
    [Tags]    REGRESSION
    ${COMPANY NAME} =     Verify Get Company
    log  ${COMPANY NAME}
    set suite variable      ${COMPANY NAME}

Validate Set Company
    [Tags]    REGRESSION
    Verify Set Company                  ${COMPANY NAME}

Validate Set Carrier Number
    [Tags]    REGRESSION
    Verify Set Carrier Number

Validate Click Create Carrier Save Button
    [Tags]    REGRESSION
    Verify Click Create Carrier Save Button

Validate Close Carrier Profile Tab
    [Tags]    REGRESSION
    Verify Close Current Tab            ${CARRIER PROFILE TAB NAME}

Validate Select Credit Management Tab
    [Tags]    REGRESSION
    Click On Credit Management Tab

Validate Filter Credit Management For Active Status
    [Tags]    REGRESSION
    Verify Filter Credit Management Grid           ${CARRIER NAME COLUMN NAME}        ${PREVIOUS CARRIER NAME}

Validate Click Credit Management Grid Inline Action Button For Active Status
    [Tags]    REGRESSION
    Verify Click Credit Management Page Inline Action Button          ${PREVIOUS CARRIER NAME}

Validate Credit Profile Inline Action Item Is Available For Active Status
    [Tags]    REGRESSION
    Verify Credit Management Grid Inline Item Visibility     ${CREDIT PROFILE INLINE ITEM}

Validate Monitoring Profile Inline Action Item Is Available For Active Status
    [Tags]    REGRESSION
    Verify Credit Management Grid Inline Item Visibility     ${MONITORING DETAILS INLINE ITEM}

Validate Enter Transaction Inline Action Item Is Available For Active Status
    [Tags]    REGRESSION
    Verify Credit Management Grid Inline Item Visibility     ${ENTER TRANSACTIONS INLINE ITEM}

Validate Deactivate Credit Limit Inline Action Item Is Available For Active Status
    [Tags]    REGRESSION
    Verify Credit Management Grid Inline Item Visibility     ${DEACTIVATE CREDIT LIMIT INLINE ITEM}

Validate Clear Carrier Column Filter
    [Tags]    REGRESSION
    Verify Clear Filter     ${CARRIER NAME COLUMN NAME}

Validate Get Created Carrier Name
    [Tags]    REGRESSION
    ${CARRIER NAME} =       Verify Get Created Carrier Name
    set suite variable      ${CARRIER NAME}

Validate Click Activate Credit Limit Button
    [Tags]    REGRESSION
    Verify Click Activate Credit Limit Button

Validate Set Carrier Name For Activate Credit Limit After Create
    [Tags]    REGRESSION
    Verify Set Carrier Name For Activate Credit Limit After Create      ${CARRIER NAME}

Validate Set Credit Management Status
    [Tags]    REGRESSION
    Verify Set Credit Management Status     ${CREDIT MANAGEMENT STATUS}

Validate Set Prepaid Customer Status
    [Tags]    REGRESSION
    Verify Set Prepaid Customer Status      ${PRE PAID CUSTOMER STATUS}

Validate Set Currency
    [Tags]    REGRESSION
    carrier_page_resource.Verify Set Currency     ${CURRENCY FOR ACTIVATE CREDIT LIMIT}

Validate Set Credit Limit
    [Tags]    REGRESSION
    Verify Set Credit Limit     ${CREDIT LIMIT FOR ACTIVATE CREDIT LIMIT}

Validate Set Level 1 Threshold Value
    [Tags]    REGRESSION
    Verify Set Threshold Values     ${THRESHOLD LEVEL 1 TEXT}       ${THRESHOLD LEVEL 1 VALUE}

Validate Set Level 2 Threshold Value
    [Tags]    REGRESSION
    Verify Set Threshold Values     ${THRESHOLD LEVEL 2 TEXT}       ${THRESHOLD LEVEL 2 VALUE}

Validate Set Level 3 Threshold Value
    [Tags]    REGRESSION
    Verify Set Threshold Values     ${THRESHOLD LEVEL 3 TEXT}       ${THRESHOLD LEVEL 3 VALUE}

Validate Set Shut-off Threshold Value
    [Tags]    REGRESSION
    Verify Set Threshold Values     ${THRESHOLD SHUTOFF TEXT}       ${THRESHOLD SHUTOFF VALUE}

Validate Set Credit Limit Monitoring
    [Tags]    REGRESSION
    Verify Set Credit Limit Monitoring      ${CREDIT LIMIT MONITORING}

Validate Set Tarrif Type Assignment
    [Tags]    REGRESSION
    Verify Set Tarrif Type Assignment       ${TARRIF TYPE ASSIGNMENT}

Validate Click Save Credit Profile Button
    [Tags]    REGRESSION
    Verify Click Save Credit Profile Button

Validate Close Current Tab
    [Tags]    REGRESSION
    Verify Close Current Tab        ${CREDIT PROFILE TAB NAME}

Validate Filter Credit Management Grid For Shutoff Approved Status
    [Tags]    REGRESSION
    Verify Filter Credit Management Grid           ${CARRIER NAME COLUMN NAME}       ${CARRIER NAME}

Validate Click Credit Management Page Inline Action Button After Create
    [Tags]    REGRESSION
    Verify Click Credit Management Page Inline Action Button After Create

Validate Select Credit Profile inline Item
    [Tags]    REGRESSION
    Verify Select Inline Action Item        ${MONITORING DETAILS INLINE ITEM}

Validate Set Trunk Provisioning Status
    [Tags]    REGRESSION
    Verify Set Trunk Provisioning Status        ${TRUNK PROVISIONING STATUS FOR SHUTOFF}

Validate Set Monitoring Details Note
    [Tags]    REGRESSION
    Verify Set Monitoring Details Note          ${TEST DATA PREFIX}

Validate Click Save Monitoring Details Button
    [Tags]    REGRESSION
    Verify Click Save Monitoring Details Button

Validate Close Credit Profile Tab
    [Tags]    REGRESSION
    Verify Close Current Tab        ${CREDIT PROFILE TAB NAME}

Validate Click Credit Management Grid Inline Action Button For Shutoff Approved Status
    [Tags]    REGRESSION
    Verify Click Credit Management Page Inline Action Button        ${CARRIER NAME}

Validate Monitoring Profile Inline Action Item Is Available For Shutoff Approved Status
    [Tags]    REGRESSION
    Verify Credit Management Grid Inline Item Visibility     ${MONITORING DETAILS INLINE ITEM}

Validate Enter Transaction Inline Action Item Is Available For Shutoff Approved Status
    [Tags]    REGRESSION
    Verify Credit Management Grid Inline Item Visibility     ${ENTER TRANSACTIONS INLINE ITEM}

Validate Deactivate Credit Limit Inline Action Item Is Available For Shutoff Approved Status
    [Tags]    REGRESSION
    Verify Credit Management Grid Inline Item Visibility     ${DEACTIVATE CREDIT LIMIT INLINE ITEM}