*** Settings ***
Documentation     [TAENOSIS-591] Validate Analysis Computes Rate Correctly

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/buy_page_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixtrade_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/buy_page_test_data_source.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/ixtrade_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CALL TYPE}        ${EMPTY}
${VENDOR NAME}      ${EMPTY}

*** Test Cases ***
Validate navigate to Buy module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Buy' From Main Menu

Validate Vendors Tab Is Available
    [Tags]    REGRESSION
    Verify The Vendors Tab Is Available

Validation navigate to Vendors Tab
    [Tags]    REGRESSION
    Verify Click On Vendors Tab

Validate Click On Vendor Price List Button
    [Tags]    REGRESSION
    Verify Click On Vendor Price Lists

Validate Set From Date
    [Tags]    REGRESSION
    Verify Set From Date As Current Date

Validate Click Search Button
    [Tags]    REGRESSION
    Verify Click On Vendor Price Lists Search Button

Validate Get Vendor Price Lists Number Of Rows From Grid
    [Tags]    REGRESSION
    Verify Get Vendor Price Lists Number Of Rows From Grid

Validate Close Vendor Price Lists Tab
    [Tags]    REGRESSION
    Verify Close Vendor Price Lists Tab         ${VENDOR PRICE LISTS TAB NAME}

Validate Get Previous Created Vendor Name
    [Tags]    REGRESSION
    ${VENDOR NAME} =    Verify Get Previous Created Vendor Name
    set suite variable      ${VENDOR NAME}

Validate Filter Vendor Grid Column
    [Tags]    REGRESSION
    Verify Filter Vendor Grid Column After Create        ${VENDOR COLUMN NAME}      ${VENDOR NAME}

Validate Click On Inline Action Button
    [Tags]    REGRESSION
    Verify Click On Inline Action Button After Create       ${VENDOR NAME}

Validate Select Upload Vendor Price List Inline Action Button
    [Tags]    REGRESSION
    Verify Select Upload Vendor Price List Inline Action Button         ${UPLOAD VENDOR PRICE LIST INLINE ITEM NAME}

Validate Click On Browse Button
    [Tags]    REGRESSION
    Verify Click On Browse Button

Validate Select The File To Be Uploaded
    [Tags]    REGRESSION
   ${CALL TYPE} =      Verify Get Call Type
    set suite variable   ${CALL TYPE}
    Verify Select The File To Be Uploaded        ${TEMPLATE PATH}/${CALL TYPE}/${VENDOR PRICE LIST COMPUTE RATES TEMPALTE NAME}

Validate Upload Selected File
    [Tags]  REGRESSION
    Verify Click On Upload Button

Validate Read Data From Upload Excel File
    [Tags]    REGRESSION
    buy_page_resource.Verify Read Data From Upload Excel File     ${TEMPLATE PATH}/${CALL TYPE}/${VENDOR PRICE LIST COMPUTE RATES TEMPALTE NAME}

Validate Navigate To Vendor Price List Screen
    [Tags]    REGRESSION
    Verify Click On Vendor Price Lists

Validate Click On Vendor Price List Upload Colored Icon
    [Tags]    REGRESSION
    Verify Click On Vendor Price List Upload Colored Icon

Validate All Completed Jobs Displayed In The Grid
    [Tags]    REGRESSION
    Verify Search Results Displayed In The Grid

Validate Close Jobs Tab
    [Tags]    REGRESSION
    Verify Close Job Tab        ${JOB TAB NAME}

Validate Compare Vendor Price Lists Number Of Rows From Grid
    [Tags]    REGRESSION
    Verify Compare Vendor Price Lists Number Of Rows From Grid

Validate Click Vendor Price List Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Vendor Price List Grid First Row Inline Action Button

Validate Click Analyze And Complete Inline Action
    [Tags]    REGRESSION
    Verify Click On Analyze And Complete Inline Action

Validate Click Vendor Price List Grid First Row Inline Action Button For Detail
    [Tags]    REGRESSION
    Verify Click Vendor Price List Grid First Row Inline Action Button

Validate Select Buy Page Inline Action Item
    [Tags]    REGRESSION
    Verify Select Buy Page Inline Action Item       ${VIEW PRICE LIST DETAIL INLINE ITEM}

Validate Compare Vendor Price List Detail Rates Grid Rate
    [Tags]    REGRESSION
    Verify Compare Vendor Price List Detail Rates Grid Rate

Validate Close Buy Window
    [Tags]    REGRESSION
    Verify Close Buy Window

Validate Navigate to Contracts module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate Navigate to IXTrade module
    [Tags]    REGRESSION
    Go To IXTrade Screen With Specific Url

Validate Click Vendor Offer Upload Submenu
    [Tags]    REGRESSION
    Verify Click Vendor Offer Upload Submenu

Validate Set Vendor Offer Source Type
    [Tags]    REGRESSION
    Verify Set Vendor Offer Source Type     ${XML SOURCE TYPE}

Validate Click Vendor Offer Browse Button
    [Tags]    REGRESSION
    Verify Click Vendor Offer Browse Button

Validate Upload Vendor Offer XML Temp
    [Tags]    REGRESSION
    ${CALL TYPE} =      Verify Get Call Type
    ixtrade_page_resource.Verify Select The File To Be Uploaded        ${TEMPLATE PATH}/${CALL TYPE}/${VENDOR OFFER COMPUTE RATES TEMPALTE XML}

Validate Click Upload Now Button
    [Tags]    REGRESSION
    Verify Click Upload Now Button

Validate Exit From iXTrade Screen
    [Tags]    REGRESSION
    Verify Click Exit Button
