*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate All Possible Actions In Server Management Tab

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/system_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
@{ALL ROW DATA}                 ${EMPTY}
@{COLUMN NAME LIST}             ${EMPTY}
@{FILTER ITEM LIST}             ${EMPTY}
${SQL INSTANCE ACTUAL VALUE}        ${EMPTY}

*** Test Cases ***
Validate Navigate to System Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select System Tab
    [Tags]    REGRESSION
    Click on System Tab

Validate Click Server Management Link
    [Tags]    REGRESSION
    Verify Click Server Management Link

Validate Set Server Management Grid Settings
    [Tags]    REGRESSION
    Verify Set Server Management Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get All Rows Of Server Name Column From Server Managemen Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Server Management Grid       ${SERVER NAME COLUMN NAME}
    set suite variable      @{ALL ROW DATA}

Validate Sort Server Name Column Of Server Management Grid In Descending Order
    [Tags]    REGRESSION
    Verify Sort Server Management Grid Column In Descending Order      ${SERVER NAME COLUMN NAME}

Validate Get All Rows Of Server Name Column From Server Management Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Server Management Grid    ${SERVER NAME COLUMN NAME}

Validate Descending Sorted Data For Server Name Column Of Server Management Grid
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Sort Server Name Column Of Server Management Grid In Ascending Order
    [Tags]    REGRESSION
    Verify Sort Server Management Grid Column In Ascending Order      ${SERVER NAME COLUMN NAME}

Validate Get All Rows Of Server Name Column From Server Management Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Server Management Grid    ${SERVER NAME COLUMN NAME}

Validate Ascending Sorted Data For Server Name Column Of Server Management Grid
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Set Server Management Grid Settings For Work Database Column
    [Tags]    REGRESSION
    Verify Set Server Management Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get All Rows Of Work Database Column From Server Managemen Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Server Management Grid       ${WORK DATABASE COLUMN NAME}
    set suite variable      @{ALL ROW DATA}

Validate Sort Work Database Column Of Server Management Grid In Descending Order
    [Tags]    REGRESSION
    Verify Sort Server Management Grid Column In Descending Order      ${WORK DATABASE COLUMN NAME}

Validate Get All Rows Of Work Database Column From Server Management Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Server Management Grid    ${WORK DATABASE COLUMN NAME}

Validate Descending Sorted Data For Work Database Column Of Server Management Grid
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Sort Work Database Column Of Server Management Grid In Ascending Order
    [Tags]    REGRESSION
    Verify Sort Server Management Grid Column In Ascending Order      ${WORK DATABASE COLUMN NAME}

Validate Get All Rows Of Work Database Column From Server Management Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Server Management Grid    ${WORK DATABASE COLUMN NAME}

Validate Ascending Sorted Data For Work Database Column Of Server Management Grid
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Set Server Management Grid Settings For Physical Server Column
    [Tags]    REGRESSION
    Verify Set Server Management Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get All Rows Of Physical Server Column From Server Managemen Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Server Management Grid       ${PHYSICAL SERVER COLUMN NAME}
    set suite variable      @{ALL ROW DATA}

Validate Sort Physical Server Column Of Server Management Grid In Descending Order
    [Tags]    REGRESSION
    Verify Sort Server Management Grid Column In Descending Order      ${PHYSICAL SERVER COLUMN NAME}

Validate Get All Rows Of Physical Server Column From Server Management Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Server Management Grid    ${PHYSICAL SERVER COLUMN NAME}

Validate Descending Sorted Data For Physical Server Column Of Server Management Grid
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Sort Physical Server Column Of Server Management Grid In Ascending Order
    [Tags]    REGRESSION
    Verify Sort Server Management Grid Column In Ascending Order      ${PHYSICAL SERVER COLUMN NAME}

Validate Get All Rows Of Physical Server Column From Server Management Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Server Management Grid    ${PHYSICAL SERVER COLUMN NAME}

Validate Ascending Sorted Data For Physical Server Column Of Server Management Grid
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Set Server Management Grid Settings For Sql Instance Column
    [Tags]    REGRESSION
    Verify Set Server Management Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get All Rows Of Sql Instance Column From Server Managemen Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Server Management Grid       ${SQL INSTANCE COLUMN NAME}
    set suite variable      @{ALL ROW DATA}

Validate Sort Sql Instance Column Of Server Management Grid In Descending Order
    [Tags]    REGRESSION
    Verify Sort Server Management Grid Column In Descending Order      ${SQL INSTANCE COLUMN NAME}

Validate Get All Rows Of Sql Instance Column From Server Management Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Server Management Grid    ${SQL INSTANCE COLUMN NAME}

Validate Descending Sorted Data For Sql Instance Column Of Server Management Grid
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Sort Sql Instance Column Of Server Management Grid In Ascending Order
    [Tags]    REGRESSION
    Verify Sort Server Management Grid Column In Ascending Order      ${SQL INSTANCE COLUMN NAME}

Validate Get All Rows Of Sql Instance Column From Server Management Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Server Management Grid    ${SQL INSTANCE COLUMN NAME}

Validate Ascending Sorted Data For Sql Instance Column Of Server Management Grid
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Set Server Management Grid Settings For Ip Address Column
    [Tags]    REGRESSION
    Verify Set Server Management Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get All Rows Of Ip Address Column From Server Managemen Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Server Management Grid       ${IP ADDRESS COLUMN NAME}
    set suite variable      @{ALL ROW DATA}

Validate Sort Ip Address Column Of Server Management Grid In Descending Order
    [Tags]    REGRESSION
    Verify Sort Server Management Grid Column In Descending Order      ${IP ADDRESS COLUMN NAME}

Validate Get All Rows Of Ip Address Column From Server Management Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Server Management Grid    ${IP ADDRESS COLUMN NAME}

Validate Descending Sorted Data For Ip Address Column Of Server Management Grid
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Sort Ip Address Column Of Server Management Grid In Ascending Order
    [Tags]    REGRESSION
    Verify Sort Server Management Grid Column In Ascending Order      ${IP ADDRESS COLUMN NAME}

Validate Get All Rows Of Ip Address Column From Server Management Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Server Management Grid    ${IP ADDRESS COLUMN NAME}

Validate Ascending Sorted Data For Ip Address Column Of Server Management Grid
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Set Server Management Grid Settings For Server Status Column
    [Tags]    REGRESSION
    Verify Set Server Management Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get All Rows Of Server Status Column From Server Managemen Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Server Management Grid       ${SERVER STATUS COLUMN NAME}
    set suite variable      @{ALL ROW DATA}

Validate Sort Server Status Column Of Server Management Grid In Descending Order
    [Tags]    REGRESSION
    Verify Sort Server Management Grid Column In Descending Order      ${SERVER STATUS COLUMN NAME}

Validate Get All Rows Of Server Status Column From Server Management Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Server Management Grid    ${SERVER STATUS COLUMN NAME}

Validate Descending Sorted Data For Server Status Column Of Server Management Grid
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Sort Server Status Column Of Server Management Grid In Ascending Order
    [Tags]    REGRESSION
    Verify Sort Server Management Grid Column In Ascending Order      ${SERVER STATUS COLUMN NAME}

Validate Get All Rows Of Server Status Column From Server Management Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Server Management Grid    ${SERVER STATUS COLUMN NAME}

Validate Ascending Sorted Data For Server Status Column Of Server Management Grid
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Set Server Management Grid Settings For Server In Use Column
    [Tags]    REGRESSION
    Verify Set Server Management Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get All Rows Of Server In Use Column From Server Managemen Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Server Management Grid       ${SERVER IN USE COLUMN NAME}
    set suite variable      @{ALL ROW DATA}

Validate Sort Server In Use Column Of Server Management Grid In Descending Order
    [Tags]    REGRESSION
    Verify Sort Server Management Grid Column In Descending Order      ${SERVER IN USE COLUMN NAME}

Validate Get All Rows Of Server In Use Column From Server Management Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Server Management Grid    ${SERVER IN USE COLUMN NAME}

Validate Descending Sorted Data For Server In Use Column Of Server Management Grid
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Sort Server In Use Column Of Server Management Grid In Ascending Order
    [Tags]    REGRESSION
    Verify Sort Server Management Grid Column In Ascending Order      ${SERVER IN USE COLUMN NAME}

Validate Get All Rows Of Server In Use Column From Server Management Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Server Management Grid    ${SERVER IN USE COLUMN NAME}

Validate Ascending Sorted Data For Server In Use Column Of Server Management Grid
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Set Server Management Grid Settings For Last Modified Column
    [Tags]    REGRESSION
    Verify Set Server Management Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Get All Rows Of Last Modified Column From Server Managemen Grid
    [Tags]    REGRESSION
    @{ALL ROW DATA} =   Verify Get All Rows of Specific Column From Server Management Grid       ${LAST MODIFIED COLUMN NAME}
    set suite variable      @{ALL ROW DATA}

Validate Sort Last Modified Column Of Server Management Grid In Descending Order
    [Tags]    REGRESSION
    Verify Sort Server Management Grid Column In Descending Order      ${LAST MODIFIED COLUMN NAME}

Validate Get All Rows Of Last Modified ColumnFrom Server Management Grid For Descending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Server Management Grid    ${LAST MODIFIED COLUMN NAME}

Validate Descending Sorted Data For Last Modified Column Of Server Management Grid
    [Tags]    REGRESSION
    Verify Descending Sorted Data    @{ALL ROW DATA}

Validate Sort Last Modified Column Of Server Management Grid In Ascending Order
    [Tags]    REGRESSION
    Verify Sort Server Management Grid Column In Ascending Order      ${LAST MODIFIED COLUMN NAME}

Validate Get All Rows Of Last Modified Column From Server Management Grid For Ascending Sort
    [Tags]    REGRESSION
    Verify Get All Rows of Specific Column From Server Management Grid    ${LAST MODIFIED COLUMN NAME}

Validate Ascending Sorted Data For Last Modified Column Of Server Management Grid
    [Tags]    REGRESSION
    Verify Ascending Sorted Data    @{ALL ROW DATA}

Validate Get Server Management Grid Column Name List
    [Tags]    REGRESSION
    @{COLUMN NAME LIST} =   Verify Get Server Management Grid Column Names By Order
    set suite variable      @{COLUMN NAME LIST}

Validate Drag Server Management Grid Column
    [Tags]    REGRESSION
    Verify Drag Server Management Grid Column     ${SERVER NAME COLUMN NAME}       ${WORK DATABASE COLUMN NAME}

Validate Get Server Management Grid Column Name List After Altering
    [Tags]    REGRESSION
    Verify Get Server Management Grid Column Names By Order

Validate Set Server Management Grid Save Settings After Altering
    [Tags]    REGRESSION
    Verify Set Server Management Grid Settings        ${SAVE SETTINGS GRID SETTINGS}

Validate Close Server Management Tab After Altering
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Close Current Tab     ${SERVER MANAGEMENT TAB NAME}

Validate Server Management Grid Column Position After Altering
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      ${SERVER NAME COLUMN NAME}       ${WORK DATABASE COLUMN NAME}       @{COLUMN NAME LIST}

Validate Click Server Management Link After Altering
    [Tags]    REGRESSION
    Verify Click Server Management Link

Validate Set Server Management Grid Reset Column Order Settings
    [Tags]    REGRESSION
    Verify Set Server Management Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Set Server Management Grid Save Settings After Resetting
    [Tags]    REGRESSION
    Verify Set Server Management Grid Settings        ${SAVE SETTINGS GRID SETTINGS}

Validate Close Server Management Tab After Resetting
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Close Current Tab     ${SERVER MANAGEMENT TAB NAME}

Validate Click Server Management Link After Resetting
    [Tags]    REGRESSION
    Verify Click Server Management Link

Validate Get Server Management Column Name List After Resetting
    [Tags]    REGRESSION
    Verify Get Server Management Grid Column Names By Order

Validate Server Management Grid Column Position After Resetting
    [Tags]    REGRESSION
    Verify Grid Column Position After Altering      ${SERVER NAME COLUMN NAME}       ${SERVER NAME COLUMN NAME}       @{COLUMN NAME LIST}

Validate Set Server Name
    [Tags]    REGRESSION
    Verify Set Server Name      ${WEB SERVER2 SERVER NAME}

Validate Click Search Button
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Click Server Management Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Server Management Grid First Row Inline Action Button

Validate Select Inline Action Item
    [Tags]    REGRESSION
    Verify Select Inline Action Item With Module Name        ${SERVER SETTING INLINE ITEM}

Validate Get SQL Instance Actual Value From Server Setting Management Page
    [Tags]    REGRESSION
    ${SQL INSTANCE ACTUAL VALUE} =   Verify Get Actual Value From Server Setting Management Page     SQL Instance
    log     ${SQL INSTANCE ACTUAL VALUE}
    set suite variable          ${SQL INSTANCE ACTUAL VALUE}

Validate Set Sql Instance
    [Tags]    REGRESSION
    Verify Set Sql Instance     ${TEST DATA PREFIX}

Validate Click Server Details Save Button
    [Tags]    REGRESSION
    Verify Click Server Details Save Button

Validate Close Server Settings Tab
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Close Current Tab     ${SERVER SETTINGS TAB NAME}

Validate Set Server Name To Filter Server Management Grid Columns
    [Tags]    REGRESSION
    Verify Set Server Name      ${EMPTY}

Validate Click Search Button To Filter Server Management Grid Columns
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Filter Server Management Grid Server Name Column
    [Tags]    REGRESSION
    Verify Filter Server Management Grid With First Row Value      ${SERVER NAME COLUMN NAME}

Validate Filter Server Management Grid Work Database Column
    [Tags]    REGRESSION
    Verify Filter Server Management Grid With First Row Value      ${WORK DATABASE COLUMN NAME}

Validate Filter Server Management Grid Physical Server Column
    [Tags]    REGRESSION
    Verify Filter Server Management Grid With First Row Value      ${PHYSICAL SERVER COLUMN NAME}

Validate Filter Server Management Grid Sql Instance Column
    [Tags]    REGRESSION
    Verify Filter Server Management Grid With First Row Value      ${SQL INSTANCE COLUMN NAME}

Validate Click Server Management Grid Export To Excel
    [Tags]    REGRESSION
    Verify Set Server Management Grid Settings        ${EXPORT TO EXCEL GRID SETTINGS}

Validate Set Server Name To Filter Server Management Grid Columns After Filtering
    [Tags]    REGRESSION
    Verify Set Server Name      ${WEB SERVER2 SERVER NAME}

Validate Click Search Button To Filter Server Management Grid Columns After Filtering
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Click Server Management Grid First Row Inline Action Button To Set Previous Value
    [Tags]    REGRESSION
    Verify Click Server Management Grid First Row Inline Action Button

Validate Select Inline Action Item To Set Previous Value
    [Tags]    REGRESSION
    Verify Select Inline Action Item With Module Name        ${SERVER SETTING INLINE ITEM}

Validate Set Sql Instance To Set Previous Value
    [Tags]    REGRESSION
    Verify Set Sql Instance     ${SQL INSTANCE ACTUAL VALUE}        ${True}

Validate Click Server Details Save Button To Set Previous Value
    [Tags]    REGRESSION
    Verify Click Server Details Save Button