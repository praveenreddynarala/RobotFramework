*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Create Vendor Functionalities

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/buy_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/buy_page_test_data_source.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/carrier_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CREATED NEW VENDOR NAME}      ${EMPTY}
@{CREATED VENDOR NAME LIST}     ${EMPTY}
${CALL TYPE}                    ${EMPTY}

*** Test Cases ***
Validate Navigate to System Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select System Tab
    [Tags]    REGRESSION
    Click on System Tab

Validate Click Configuration Variables Button
    [Tags]    REGRESSION
    Verify Click Configuration Variables Button

Validate Set Variable Name
    [Tags]    REGRESSION
    Verify Set Variable Name    EnableNetworkDestinationRating

Validate Click Configuration Variables Grid Search Button
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Set Value In Current Value Column
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        2

Validate Close System Admin Window
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate navigate to Buy module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Buy' From Main Menu

Validate Vendors Tab Is Available
    [Tags]    REGRESSION
    Verify The Vendors Tab Is Available

Validate Navigate To Vendors Tab
    [Tags]    REGRESSION
    Verify Click On Vendors Tab

Validate Click On Create Vendor Button
    [Tags]    REGRESSION
    Verify Click On Create Vendor Button

Validate Set Vendor Name
    [Tags]    REGRESSION
    buy_page_resource.Verify Set Vendor Name          ${TEST DATA PREFIX}

Validate Set Vendor Source
    [Tags]    REGRESSION
    Verify Set Vendor Source        ${TEST DATA PREFIX}

Validate Set IXtools Account
    [Tags]    REGRESSION
    Verify Set Ixtools Account

Validate Set Rate Plan
    [Tags]    REGRESSION
    buy_page_resource.Verify Set Rate Plan

Validate Set Call Type
    [Tags]    REGRESSION
    ${CALL TYPE} =        Verify Get Call Type
    set suite variable   ${CALL TYPE}
    buy_page_resource.Verify Set Call Type            ${CALL TYPE}

Validate Click On Save Vendor Profile Button
    [Tags]    REGRESSION
    Verify Click On Save Vendor Profile Button

Validate Close Create Vendor Tab
    [Tags]    REGRESSION
    Verify Close Create Vendor Tab      ${CREATE VENDOR TAB NAME}

Validate Click On Vendor Price Lists
    [Tags]    REGRESSION
    Verify Click On Vendor Price Lists

Validate Click Vendor Price List Upload Failed Red Icon
    [Tags]    REGRESSION
    Verify Click Vendor Price List Upload Failed Red Icon

Validate Get Jobs Grid Initial Row Count
    [Tags]    REGRESSION
    Verify Get Jobs Grid Initial Row Count

Validate Close Jobs Tab
    [Tags]    REGRESSION
    Verify Close Job Tab    ${JOB TAB NAME}

Validate Close Vendor Price Lists Tab
    [Tags]    REGRESSION
    Verify Close Vendor Price Lists Tab    ${VENDOR PRICE LISTS TAB NAME}

Validate Grid Filter Details
    [Tags]    REGRESSION
    Verify Filter Vendor Grid Column After Create      ${VENDOR COLUMN NAME}

Validate Click Buy Page Inline Action Button
    [Tags]    REGRESSION
    Verify Click On Inline Action Button After Create

Validate Select Vendor Profile Inline Action Item
    [Tags]    REGRESSION
    Verify Select Buy Page Inline Action Item       ${VENDOR PROFILE INLINE ITEM NAME}

Validate Has Network Code Unchecked
    [Tags]    REGRESSION
    Verify Has Network Code Unchecked

Validate Close Vendor Profile Tab
    [Tags]    REGRESSION
    Verify Close Vendor Profile Tab     ${VENDOR PROFILE TAB NAME}

Validate Click Buy Page Inline Action Button To Upload
    [Tags]    REGRESSION
    Verify Click On Inline Action Button After Create

Validate Select Upload Vendor Price List Inline Action Item
    [Tags]    REGRESSION
    Verify Select Buy Page Inline Action Item       ${UPLOAD VENDOR PRICE LIST INLINE ITEM NAME}

Validate Click Browse Button
    [Tags]    REGRESSION
    Verify Click On Browse Button

Validate Select File To Be Uploaded
    [Tags]    REGRESSION
    Verify Select The File To Be Uploaded       ${TEMPLATE PATH}/${CALL TYPE}/${UPLOAD FILE PATH}

Validate Click Upload Button
    [Tags]    REGRESSION
    Verify Click On Upload Button

Validate Click On Vendor Price Lists After Upload
    [Tags]    REGRESSION
    Verify Click On Vendor Price Lists

Validate Click Vendor Price List Upload Failed Red Icon After Upload
    [Tags]    REGRESSION
    Verify Click Vendor Price List Upload Failed Red Icon

Validate Compare Job Grid Number Of Rows
    [Tags]    REGRESSION
    Verify Compare Jobs Grid Number Of Rows

Validate Click Error Icon
    [Tags]    REGRESSION
    Verify Click Error Icon

Validate Non Numeric Dd Invalid Message Shown
    [Tags]    REGRESSION
    Verify Non Numeric Dd Invalid Message Shown

Validate Close Current Pop Up
    [Tags]    REGRESSION
    buy_page_resource.Verify Close Current Pop Up     ${EXCLUDED DESTINATIONS POP UP NAME}

Validate Close Jobs Tab After Upload
    [Tags]    REGRESSION
    Verify Close Job Tab    ${JOB TAB NAME}

Validate Close Vendor Price Lists Tab After Upload
    [Tags]    REGRESSION
    Verify Close Vendor Price Lists Tab    ${VENDOR PRICE LISTS TAB NAME}

Validate Click On Create Vendor Button For New Vendor
    [Tags]    REGRESSION
    Verify Click On Create Vendor Button

Validate Set Buy Module Vendor Name For New Vendor
    [Tags]    REGRESSION
    buy_page_resource.Verify Set Vendor Name          ${TEST DATA PREFIX}

Validate Get Created Vendor Name For New Vendor
    [Tags]    REGRESSION
    ${CREATED NEW VENDOR NAME} =    Verify Get Created Vendor Name
    @{CREATED VENDOR NAME LIST} =   create list     ${CREATED NEW VENDOR NAME}
    set suite variable      ${CREATED NEW VENDOR NAME}
    set suite variable      @{CREATED VENDOR NAME LIST}
    log  ${CREATED NEW VENDOR NAME}

Validate Set Vendor Source For New Vendor
    [Tags]    REGRESSION
    Verify Set Vendor Source        ${TEST DATA PREFIX}

Validate Set IXtools Account For New Vendor
    [Tags]    REGRESSION
    Verify Set Ixtools Account

Validate Set Rate Plan For New Vendor
    [Tags]    REGRESSION
    buy_page_resource.Verify Set Rate Plan

Validate Set Call Type For New Vendor
    [Tags]    REGRESSION
    buy_page_resource.Verify Set Call Type            ${NEW CALL TYPE DROPDOWN ITEM}

Validate Check Has Network Code Checkbox For New Vendor
    [Tags]    REGRESSION
    Verify Check Has Network Code Checkbox

Validate Click On Save Vendor Profile Button For New Vendor
    [Tags]    REGRESSION
    Verify Click On Save Vendor Profile Button

Validate Close Create Vendor Tab For New Vendor
    [Tags]    REGRESSION
    Verify Close Create Vendor Tab      ${CREATE VENDOR TAB NAME}

Validate Click On Vendor Price Lists Before New Upload
    [Tags]    REGRESSION
    Verify Click On Vendor Price Lists

Validate Click Vendor Price List Upload Colored Icon
    [Tags]    REGRESSION
    Verify Click On Vendor Price List Upload Colored Icon

Validate Get Jobs Grid Initial Row Count Before New Upload
    [Tags]    REGRESSION
    Verify Get Jobs Grid Initial Row Count

Validate Close Jobs Tab Before New Upload
    [Tags]    REGRESSION
    Verify Close Job Tab    ${JOB TAB NAME}

Validate Close Vendor Price ListS Tab Before New Upload
    [Tags]    REGRESSION
    Verify Close Vendor Price Lists Tab    ${VENDOR PRICE LISTS TAB NAME}

Validate Clear Filter
    [Tags]    REGRESSION
    Verify Clear Vendor Filter      ${VENDOR COLUMN NAME}

Validate Filter Vendor Grid Column After Create
    [Tags]    REGRESSION
    Verify Filter Vendor Grid Column After Create        ${VENDOR COLUMN NAME}

Validate Click on Inline Action Button After Create
    [Tags]    REGRESSION
    Verify Click On Inline Action Button After Create

Validate Select Upload Vendor Price List Inline Action Item For New Upload
    [Tags]    REGRESSION
    Verify Select Buy Page Inline Action Item       ${UPLOAD VENDOR PRICE LIST INLINE ITEM NAME}

Validate Click Browse Button For New Upload
    [Tags]    REGRESSION
    Verify Click On Browse Button

Validate Select File To Be Uploaded For New Upload
    [Tags]    REGRESSION
    Verify Select The File To Be Uploaded        ${TEMPLATE PATH}/${CALL TYPE}/${UPLOAD FILE PATH}

Validate Read Data From Upload Excel File
    [Tags]    REGRESSION
    buy_page_resource.Verify Read Data From Upload Excel File     ${TEMPLATE PATH}/${CALL TYPE}/${UPLOAD FILE PATH}

Validate Click Upload Button For New Upload
    [Tags]    REGRESSION
    Verify Click On Upload Button

Validate Click On Vendor Price Lists After New Upload
    [Tags]    REGRESSION
    Verify Click On Vendor Price Lists

Validate Click Vendor Price List Upload Colored Icon After Upload
    [Tags]    REGRESSION
    Verify Click On Vendor Price List Upload Colored Icon

Validate Compare Job Grid Number Of Rows After New Upload
    [Tags]    REGRESSION
    Verify Compare Jobs Grid Number Of Rows

Validate Close Jobs Tab After New Upload
    [Tags]    REGRESSION
    Verify Close Job Tab    ${JOB TAB NAME}

Validate Close Vendor Price ListS Tab After New Upload
    [Tags]    REGRESSION
    Verify Close Vendor Price Lists Tab    ${VENDOR PRICE LISTS TAB NAME}

Validate Click On Inline Action Button For Vendor Digits
    [Tags]    REGRESSION
    Verify Click On Inline Action Button After Create

Validate Select Vendor Digits Inline Action Item
    [Tags]    REGRESSION
    Verify Select Buy Page Inline Action Item       ${VENDOR DIGITS INLINE ITEM NAME}

Validate Compare Dialed Digit With Excel Data
    [Tags]    REGRESSION
    Verify Compare Dialed Digit With Excel Data

Validate Close Vendor Digits Tab
    [Tags]    REGRESSION
    Verify Close Vendor Profile Tab     ${VENDOR PROFILE TAB NAME}

Validate Click On Inline Action Button For Vendor Rates
    [Tags]    REGRESSION
    Verify Click On Inline Action Button After Create

Validate Select Vendor Rates Inline Action Item
    [Tags]    REGRESSION
    Verify Select Buy Page Inline Action Item       ${VENDOR RATES INLINE ITEM NAME}

Validate Set Rates Destination
    [Tags]    REGRESSION
    Verify Set Rates Destination

Validate Set Rate Catalog
    [Tags]    REGRESSION
    Verify Set Rate Catalog     ${RATE CATALOG}

Validate Set Rates Begin Date
    [Tags]    REGRESSION
    Verify Set Buy Module Begin Date    ${RATE BEGIN DATE}

Validate Click Rates Search Button
    [Tags]    REGRESSION
    Verify Click Buy Module Search Button

Validate Compare Rates With Excel Data
    [Tags]    REGRESSION
    Verify Compare Rates With Excel Data

Validate Close Vendor Rates Tab
    [Tags]    REGRESSION
    Verify Close Vendor Profile Tab     ${VENDOR PROFILE TAB NAME}

Validate Click On Inline Action Button For Vendor Destination
    [Tags]    REGRESSION
    Verify Click On Inline Action Button After Create

Validate Select Vendor Destination Inline Action Item
    [Tags]    REGRESSION
    Verify Select Buy Page Inline Action Item       ${VENDOR DESTINATION INLINE ITEM NAME}

Validate Compare Destination With Excel Data
    [Tags]    REGRESSION
    Verify Compare Destination With Excel Data

Validate Close Vendor Destination Tab
    [Tags]    REGRESSION
    Verify Close Vendor Profile Tab     ${VENDOR PROFILE TAB NAME}

Validate Close Buy Window
    [Tags]    REGRESSION
    Verify Close Buy Window

Validate Navigate to Carrier module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Carrier' From Main Menu

Validate Get Created Carrier Name
    [Tags]    REGRESSION
    Verify Get Created Carrier Name

Validate Filter Carrier Grid
    [Tags]    REGRESSION
    Verify Filter Carriers Grid After Create          ${CARRIER NAME COLUMN NAME}

Validate Click Carriers Page Inline Action Button
    [Tags]    REGRESSION
    Verify Click Carriers Page Inline Action Button After Create

Validate Select Item From Inline Action
    [Tags]    REGRESSION
    Verify Select Item From Inline Action           ${CARRIER RELATIONSHIPS INLINE ITEM}

Validate Expand Commercial Trunks Section
    [Tags]    REGRESSION
    Verify Expand Commercial Trunks Section

Validate Click Create Trunk Button
    [Tags]    REGRESSION
    Verify Click Create Trunk Button

Validate Set Trunk Name
    [Tags]    REGRESSION
    Verify Set Trunk Name           ${TEST DATA PREFIX}

Validate Set Clli
    [Tags]    REGRESSION
    Verify Set Clli                 ${CLLI FOR CREATE}

Validate Set Effective Date
    [Tags]    REGRESSION
    Verify Set Effective Date       ${EFFECTIVE DATE FOR CREATE}

Validate Set Status
    [Tags]    REGRESSION
    Verify Set Status               ${ACTIVE STATUS}

Validate Set Direction
    [Tags]    REGRESSION
    Verify Set Direction            ${DIRECTION FOR CREATE}

Validate Set Description
    [Tags]    REGRESSION
    Verify Set Description          ${DESCRIPTION FOR CREATE}

Validate Click Save Button
    [Tags]    REGRESSION
    Verify Click Save Button

Validate Shrink Commercial Trunks Section
    [Tags]    REGRESSION
    Verify Expand Commercial Trunks Section

Validate Expand Number Plans Section
    [Tags]    REGRESSION
    Verify Expand Number Plans Section

Validate Click Add Number Plan Button
    [Tags]    REGRESSION
    Verify Click Add Number Plan Button

Validate Set Commercial Trunk
    [Tags]    REGRESSION
    Verify Set Commercial Trunk After Create

Validate Set Carrier Module Call Type
    [Tags]    REGRESSION
    Verify Set Carrier Module Call Type    ${NEW CALL TYPE DROPDOWN ITEM}

Validate Set Direction For Add Number Plan
    [Tags]    REGRESSION
    Verify Set Direction     ${NUMBER PLAN DIRECTION}

Validate Set Number Plan
    [Tags]    REGRESSION
    Verify Set Number Plan     ${CREATED NEW VENDOR NAME}

Validate Set Begin Date For Add Number Plan
    [Tags]    REGRESSION
    Verify Set Begin Date For Add Number Plan       ${NUMBER PLAN BEGIN DATE}

Validate Click Save Button For Add Number Plan
    [Tags]    REGRESSION
    Verify Click Save Button

Validate Filter Number Plans Grid
    [Tags]    REGRESSION
    Verify Carrier Module Grid Filter Details After Creating Trunk      ${TRUNK COLUMN NAME}

Validate Get Number Plans Grid Row Details
    [Tags]    REGRESSION
    Verify Get Number Plans Grid Row Details

Validate Number Plans Grid Row Details
    [Tags]    REGRESSION
    Verify Number Plans Grid Row Details     ${NEW CALL TYPE DROPDOWN ITEM}      ${NUMBER PLAN DIRECTION}    ${CREATED NEW VENDOR NAME}

Validate Close Carrier Profile Tab
    [Tags]    REGRESSION
    carrier_page_resource.Verify Close Current Tab        ${CARRIER PROFILE TAB NAME}

Validate Read Data From Upload Excel File For Carrier Page
    [Tags]    REGRESSION
    carrier_page_resource.Verify Read Data From Upload Excel File     ${TEMPLATE PATH}/${CALL TYPE}/${UPLOAD FILE PATH}

Validate Click Carriers Page Inline Action Button For Dialed Digit
    [Tags]    REGRESSION
    Verify Click Carriers Page Inline Action Button After Create

Validate Select Carrier Dialed Digits Inline Action Item
    [Tags]    REGRESSION
    Verify Select Item From Inline Action           ${CARRIER DIALED DIGITS INLINE ITEM}

Validate Set Number Plan Type For Dialed Digits Search
    [Tags]    REGRESSION
    Verify Set Number Plan Type For Dialed Digits Search        ${NUMBER PLAN TYPE FOR SEARCH}

Validate Set Begin Date For Dialed Digits Search
    [Tags]    REGRESSION
    Verify Set Begin Date For Dialed Digits Search      ${BEGIN DATE FOR SEARCH}

Validate Click Dialed Digits Search Button
    [Tags]    REGRESSION
    Verify Click Dialed Digits Search Button

Validate Compare Carrier Dialed Digit With Excel Data
    [Tags]    REGRESSION
    Verify Compare Carrier Dialed Digit With Excel Data

Validate Close Carrier Dialed Digits Tab
    [Tags]    REGRESSION
    carrier_page_resource.Verify Close Current Tab        ${CARRIER PROFILE TAB NAME}

Validate Click Carriers Page Inline Action Button For Rates
    [Tags]    REGRESSION
        Verify Click Carriers Page Inline Action Button After Create

Validate Select Carrier Rates Inline Action Item
    [Tags]    REGRESSION
    Verify Select Item From Inline Action           ${CARRIER RATES INLINE ITEM}

Validate Set Rates Product
    [Tags]    REGRESSION
    Verify Set Rates Product

Validate Set Carrier Module Begin Date
    [Tags]    REGRESSION
    Verify Set Carrier Module Begin Date    ${RATE BEGIN DATE}

Validate Click Rates Page Search Button
    [Tags]    REGRESSION
    Verify Click Rates Page Search Button

Validate Compare Carrier Rates With Excel Data
    [Tags]    REGRESSION
    Verify Compare Carrier Rates With Excel Data

Validate Close Carrier Rates Tab
    [Tags]    REGRESSION
    carrier_page_resource.Verify Close Current Tab        ${CARRIER PROFILE TAB NAME}

Validate Click Carriers Page Inline Action Button For Destination
    [Tags]    REGRESSION
        Verify Click Carriers Page Inline Action Button After Create

Validate Select Carrier Destination Inline Action Item
    [Tags]    REGRESSION
    Verify Select Item From Inline Action           ${CARRIER DESTINATION INLINE ITEM}

Validate Click Destinations Search Button
    [Tags]    REGRESSION
    Verify Click Destinations Search Button

Validate Compare Carrier Destinations With Excel Data
    [Tags]    REGRESSION
    Verify Compare Carrier Destination With Excel Data

Validate Close Carrier Destinations Tab
    [Tags]    REGRESSION
    carrier_page_resource.Verify Close Current Tab        ${CARRIER PROFILE TAB NAME}

Validate Close Carrier Window
    [Tags]    REGRESSION
    Verify Close Carrier Window

Validate navigate to Buy module To Change Status
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Buy' From Main Menu

Validate Navigate To Vendors Tab To Change Status
    [Tags]    REGRESSION
    Verify Click On Vendors Tab

Validate Filter Vendor Grid Column To Change Status
    [Tags]    REGRESSION
    Verify Filter Vendor Grid Column After Create        ${VENDOR COLUMN NAME}

Validate Click on Inline Action Button To Change Status
    [Tags]    REGRESSION
    Verify Click On Inline Action Button After Create

Validate Select Vendor Profile Inline Action Item To Change Status
    [Tags]    REGRESSION
    Verify Select Buy Page Inline Action Item       ${VENDOR PROFILE INLINE ITEM NAME}

Validate Set Vendor Profile Staus
    [Tags]    REGRESSION
    Verify Set Vendor Profile Status        ${VENDOR PROFILE STATUS FOR CHANGE}

Validate Click Save Vendor Profile Button After Change
    [Tags]    REGRESSION
    Verify Click On Save Vendor Profile Button
