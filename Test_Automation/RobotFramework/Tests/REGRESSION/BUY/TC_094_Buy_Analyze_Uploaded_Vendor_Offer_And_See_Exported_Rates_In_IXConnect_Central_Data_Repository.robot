*** Settings ***
Documentation     A Test Suite With Set Of Tests To Analyze Uploaded Vendor Offer And See Exported Rates In IXConnect Central Data Repository

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/buy_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/buy_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CALL TYPE}        ${EMPTY}

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
    Verify Get Previous Created Vendor Name

Validate Filter Vendor Grid Column
    [Tags]    REGRESSION
    Verify Filter Vendor Grid Column After Create        ${VENDOR COLUMN NAME}

Validate Click On Inline Action Button
    [Tags]    REGRESSION
    Verify Click On Inline Action Button After Create

Validate Select Upload Vendow Price List Inline Action Button
    [Tags]    REGRESSION
    Verify Select Upload Vendor Price List Inline Action Button         ${UPLOAD VENDOR PRICE LIST INLINE ITEM NAME}

Validate Click On Browse Button
    [Tags]    REGRESSION
    Verify Click On Browse Button

Validate Select The File To Be Uploaded
    [Tags]    REGRESSION
    ${CALL TYPE} =      Verify Get Call Type
    set suite variable   ${CALL TYPE}
    Verify Select The File To Be Uploaded        ${TEMPLATE PATH}/${CALL TYPE}/${VENDOR PRICE LIST TEMPALTE NAME}

Validate Click On Upload Button
    [Tags]    REGRESSION
    Verify Click On Upload Button

Validate Click On Vendor Price List Button After Uploading
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

Validate Filter Vendor Price List Grid Column
    [Tags]    REGRESSION
    Verify Filter Vendor Grid Column After Create        ${VENDOR COLUMN NAME}

Validate Click Vendor Price List Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Vendor Price List Grid First Row Inline Action Button

Validate Click On Analyze And Complete Inline Action
    [Tags]    REGRESSION
    Verify Click On Analyze And Complete Inline Action

Validate Close Buy Window
    [Tags]    REGRESSION
    Verify Close Buy Window

Validate Navigate to Contracts module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate Verify Select Carrier Submenu
    [Tags]    REGRESSION
    ixconnect_page_resource.Verify Select Carrier Submenu

Validate Switch To List Frame
    [Tags]    REGRESSION
    Verify Switch To List Frame

Validate Verify Set Letters For Created Carrier Search
    [Tags]    REGRESSION
    ${CREATED CARRIER NAME} =       carrier_page_resource.Verify Get Created Carrier Name
    Verify Set Letters For Created Carrier Search       ${CREATED CARRIER NAME}

Validate Click Go Button
    [Tags]    REGRESSION
    Verify Click Go Button

Validate Switch To Default Content
    [Tags]    REGRESSION
    Verify Switch To Default Content

Validate Click Carrier Account First Plus Button
    [Tags]    REGRESSION
    Verify Click Carrier Account First Plus Button

Validate Click Other Rate Plan First Plus Button
    [Tags]    REGRESSION
    Verify Click Other Rate Plan First Plus Button

Validate Click Other Rate Plan First Book Icon Button
    [Tags]    REGRESSION
    Verify Click Other Rate Plan First Book Icon Button