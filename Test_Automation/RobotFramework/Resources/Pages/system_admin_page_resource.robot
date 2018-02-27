*** Settings ***
Documentation   System Admin Page Resource File With All Necessary Keywords.

Resource        ../common_resource.robot

Library     ../../../TestFramework/Libraries/RobotTests/SystemAdmin.py
Library     ../../../TestFramework/Libraries/RobotTests/Home.py
Library         Collections

*** Variables ***
${EXPECTED PAGE TITLE}          System Admin
${ACTUAL PAGE TITLE}            ${EMPTY}
${EXPECTED USER TAB HEADER}     Users
${ACTUAL USER TAB HEADER}       ${EMPTY}
${EXPECTED SYSTEM TAB HEADER}   System
${ACTUAL SYSTEM TAB HEADER}     ${EMPTY}
${STATUS}                       ${EMPTY}
${CREATED PROFILE NAME}         ${EMPTY}
${PROFILES GRID ROW DETAILS}    ${EMPTY}
${CREATED USER NAME}            ${EMPTY}
${USERS GRID ROW DATA}          ${EMPTY}
${COLUMN VALUE}                 ${EMPTY}

*** Keywords ***
Click on Home Icon and Select 'System Admin' From Main Menu
    ${STATUS} =     set variable    False
    select system admin submenu
    ${STATUS} =     switch to system admin
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Page Title
    ${ACTUAL PAGE TITLE} =  get system admin page title
    should contain     ${ACTUAL PAGE TITLE}     ${EXPECTED PAGE TITLE}
    [Teardown]      run keyword unless     '${ACTUAL PAGE TITLE}'=='${EXPECTED PAGE TITLE}'    Log Screenshot

Verify System Admin Dashboard Tab Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is system admin dashboard tab present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Users Tab Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is users tab present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify System Tab Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is system tab present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Click on Users Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select users tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify User Tab Header
    ${ACTUAL USER TAB HEADER} =     get users tab header
    should be equal     ${ACTUAL USER TAB HEADER}    ${EXPECTED USER TAB HEADER}
    [Teardown]      run keyword unless     '${ACTUAL USER TAB HEADER}'=='${EXPECTED USER TAB HEADER}'    Log Screenshot

Click on System Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select system tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify System Tab Header
    ${ACTUAL SYSTEM TAB HEADER} =     get system tab header
    should be equal     ${ACTUAL SYSTEM TAB HEADER}    ${EXPECTED SYSTEM TAB HEADER}
    [Teardown]      run keyword unless     '${ACTUAL SYSTEM TAB HEADER}'=='${EXPECTED SYSTEM TAB HEADER}'    Log Screenshot

Verify Category Link Is Available Under System Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     is category present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Configuration Variables Link Is Available Under System Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     is configuration variables present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Field Alias Link Is Available Under System Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     is field alias present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Security Profile Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click security profile button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Profile Grid First Row Inline Action Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click profile grid first row inline action button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify View Edit Profile Inline Action Item Is Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is view edit profile inline action item present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Inline Action Item
    [Arguments]     ${INLINE ITEM}
    ${STATUS} =     set variable    False
    ${STATUS} =     SystemAdmin.select inline action item       ${INLINE ITEM}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify View Edit Profile Pop Up Is Loaded Properly
    ${STATUS} =     set variable    False
    ${STATUS} =     is view edit profile popup loaded properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Close Current Pop Up
    [Arguments]     ${POP UP NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     SystemAdmin.close current pop up     ${POP UP NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click New Profile Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click new profile button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set New Profile Name
    [Arguments]     ${PROFILE NAME PREFIX}
    ${CREATED PROFILE NAME} =     set new profile name     ${PROFILE NAME PREFIX}
    log     ${CREATED PROFILE NAME}
    set suite variable      ${CREATED PROFILE NAME}
    [Teardown]      run keyword if    '${CREATED PROFILE NAME}'==''    Log Screenshot

Verify Set Profile Status
    [Arguments]     ${PROFILE STATUS}
    ${STATUS} =     set variable    False
    ${STATUS} =     set profile status     ${PROFILE STATUS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Assign Roles To Profile
    [Arguments]     @{LIST OF ROLES}
    ${STATUS} =     set variable    False
    ${STATUS} =     assign roles to profile     @{LIST OF ROLES}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click View Edit Profile Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click view edit profile save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Created Profile Name
    ${CREATED PROFILE NAME} =       get new profile name
    log     ${CREATED PROFILE NAME}
    set suite variable      ${CREATED PROFILE NAME}

Verify Filter Profiles Grid With Profile Name
    [Arguments]     ${COLUMN NAME}      ${PROFILE NAME}=None
    ${STATUS} =     set variable    False
    run keyword if      '${PROFILE NAME}'=='None'        Verify Get Created Profile Name
    ${STATUS} =     filter profiles grid     ${COLUMN NAME}       ${PROFILE NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Profiles Grid Row Details
    ${PROFILES GRID ROW DETAILS} =     get profiles grid row details
    set suite variable      ${PROFILES GRID ROW DETAILS}
    ${LENGTH} =     get length      ${PROFILES GRID ROW DETAILS}
    [Teardown]      run keyword if    '${LENGTH}'=='0'    Log Screenshot

Verify Profiles Grid Row Data
    [Arguments]     ${PROFILE STATUS}
    ${STATUS} =     set variable    False
    ${CREATED PROFILE DETAILS} =   create dictionary     Profile=${CREATED PROFILE NAME}      Status=${PROFILE STATUS}
    log     ${CREATED PROFILE DETAILS}
    dictionaries should be equal        ${CREATED PROFILE DETAILS}      ${PROFILES GRID ROW DETAILS}
    ${STATUS} =     set variable    True
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Users Grid First Row Inline Action Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click users grid first row inline action button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Carrier Security Inline Action Item Is Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is carrier security inline action item present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify View Edit User Profile Pop Up Is Loaded Properly
    ${STATUS} =     set variable    False
    ${STATUS} =     is view edit user profile popup loaded properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Carrier Security Pop Up Is Loaded Properly
    ${STATUS} =     set variable    False
    ${STATUS} =     is carrier security popup loaded properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Users Grid Multiple Row Checkbox
    [Arguments]     ${NUMBER OF ROWS}
    ${STATUS} =     set variable    False
    ${STATUS} =     select users grid multiple row checkbox       ${NUMBER OF ROWS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Users Grid Bulk Edit Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click users grid bulk edit button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Bulk Edit Profile
    [Arguments]     ${PROFILE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set bulk edit profile       ${PROFILE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Bulk Edit Status
    [Arguments]     ${BULK EDIT STATUS}
    ${STATUS} =     set variable    False
    ${STATUS} =     set bulk edit status       ${BULK EDIT STATUS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Bulk Edit Reports To Value
    [Arguments]     ${REPORTS TO VALUE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set bulk edit reports to value       ${REPORTS TO VALUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Bulk Edit Sales Level
    [Arguments]     ${SALES LEVEL}
    ${STATUS} =     set variable    False
    ${STATUS} =     set bulk edit sales level       ${SALES LEVEL}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Bulk Edit Sales Reports To Value
    [Arguments]     ${SALES REPORTS TO VALUE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set bulk edit sales reports to value       ${SALES REPORTS TO VALUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Bulk Edit Undo Reset Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click bulk edit undo reset button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Input Field Is Reset
    [Arguments]     ${LABEL TEXT}
    ${STATUS} =     set variable    False
    ${STATUS} =     is input field reset    ${LABEL TEXT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Bulk Edit Cancel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click bulk edit cancel button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Bulk Edit Submit Button
    ${STATUS} =     set variable    False
    ${STATUS} =     Route.click bulk edit submit button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Users Grid Save Changes Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click users grid save changes button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Compare Selected User Name
    ${STATUS} =     set variable    False
    ${STATUS} =     compare selected user name
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click New User Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click new user button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set User Name
    [Arguments]     ${USER NAME PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set user name       ${USER NAME PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get User Name
    ${CREATED USER NAME} =     get user name
    log   ${CREATED USER NAME}
    set suite variable        ${CREATED USER NAME}
    return from keyword     ${CREATED USER NAME}
    [Teardown]      run keyword if    '${CREATED USER NAME}'==''    Log Screenshot

Verify Set First Name
    [Arguments]     ${FIRST NAME PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set first name       ${FIRST NAME PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Last Name
    [Arguments]     ${LAST NAME PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set last name       ${LAST NAME PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Security Profile
    [Arguments]     ${SECURITY PROFILE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set security profile       ${SECURITY PROFILE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set User Status
    [Arguments]     ${USER STATUS}
    ${STATUS} =     set variable    False
    ${STATUS} =     set user status       ${USER STATUS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Reports To
    [Arguments]     ${USER REPORTS TO}
    ${STATUS} =     set variable    False
    ${STATUS} =     set reports to       ${USER REPORTS TO}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Password
    [Arguments]     ${USER PASSWORD}
    ${STATUS} =     set variable    False
    ${STATUS} =     set password       ${USER PASSWORD}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Confirm Password
    [Arguments]     ${USER PASSWORD}
    ${STATUS} =     set variable    False
    ${STATUS} =     set confirm password       ${USER PASSWORD}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Primary Email
    [Arguments]     ${PRIMARY EMAIL}
    ${STATUS} =     set variable    False
    ${STATUS} =     set email primary       ${PRIMARY EMAIL}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Save And Create New Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click save and create new button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Close Create New User Pop Up
    ${STATUS} =     set variable    False
    ${STATUS} =     close create new user pop up
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set User Name For Search
    [Arguments]     ${CREATED USER NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set user name for search        ${CREATED USER NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Search Button
    ${STATUS} =     set variable    False
    ${STATUS} =     SystemAdmin.click search button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Users Grid Row Details
    ${USERS GRID ROW DATA} =     get users grid row details
    set suite variable      ${USERS GRID ROW DATA}
    ${LENGTH} =     get length      ${USERS GRID ROW DATA}
    [Teardown]      run keyword if    '${LENGTH}'=='0'    Log Screenshot

Verify Users Grid Row Details
    [Arguments]     ${USER STATUS}      ${REPORTS TO}       ${EMAIL}
    ${STATUS} =     set variable    False
    ${CREATED USER DETAILS} =   create dictionary     Status=${USER STATUS}      Reports To=${REPORTS TO}       Email=${EMAIL}      User Name=${CREATED USER NAME}
    log     ${CREATED USER DETAILS}
    dictionaries should be equal        ${CREATED USER DETAILS}      ${USERS GRID ROW DATA}
    ${STATUS} =     set variable    True
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Edit User Ok Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click edit user ok button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Configuration Variables Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click configuration variables button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Variable Name
    [Arguments]     ${VARIABLE NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set variable name       ${VARIABLE NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Configuration Variables Current Value
    [Arguments]     ${CURRENT VALUE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set configuration variables current value       ${CURRENT VALUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Save Changes Button
    ${STATUS} =     set variable    False
    ${STATUS} =     SystemAdmin.click save changes button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Filter Users Grid
    [Arguments]     ${COLUMN NAME}      ${FILTER ITEM}
    ${STATUS} =     set variable    False
    ${STATUS} =     SystemAdmin.filter users grid       ${COLUMN NAME}      ${FILTER ITEM}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Account Security Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select account security tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Move Available Accounts To Destination
    [Arguments]     @{ACCOUNT LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     move available accounts to destination      @{ACCOUNT LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Move All Accounts To Source
    ${STATUS} =     set variable    False
    ${STATUS} =     move all accounts to source
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Users Grid Modified Date Format
    [Arguments]     ${EXPECTED TIME STAMP FORMAT}
    ${MODIFIED DATE VALUE} =    get users grid modified date column value
    log     ${MODIFIED DATE VALUE}
    ${STATUS} =     validate date format         ${MODIFIED DATE VALUE}          ${EXPECTED TIME STAMP FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify User Profile Modified Field Date Format
    [Arguments]     ${EXPECTED TIME STAMP FORMAT}
    ${MODIFIED VALUE} =    get user profile modified value
    log     ${MODIFIED VALUE}
    ${STATUS} =     validate date format         ${MODIFIED VALUE}          ${EXPECTED TIME STAMP FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Profile Management Grid Modified Date Format
    [Arguments]     ${EXPECTED TIME STAMP FORMAT}
    ${MODIFIED DATE VALUE} =    get profile management grid modified date column value
    log     ${MODIFIED DATE VALUE}
    ${STATUS} =     validate date format         ${MODIFIED DATE VALUE}          ${EXPECTED TIME STAMP FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Close Current Tab
    [Arguments]     ${TAB NAME PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     SystemAdmin.close current tab      ${TAB NAME PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Category Link
    ${STATUS} =     set variable    False
    ${STATUS} =     click category link
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Categories Grid Modified Date Format
    [Arguments]     ${EXPECTED TIME STAMP FORMAT}
    ${MODIFIED DATE VALUE} =    get categories grid modified date column value
    log     ${MODIFIED DATE VALUE}
    ${STATUS} =     validate date format         ${MODIFIED DATE VALUE}          ${EXPECTED TIME STAMP FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Configuration Variables Grid Modified Date Format
    [Arguments]     ${EXPECTED TIME STAMP FORMAT}
    ${MODIFIED DATE VALUE} =    get configuration variables grid modified date column value
    log     ${MODIFIED DATE VALUE}
    ${STATUS} =     validate date format         ${MODIFIED DATE VALUE}          ${EXPECTED TIME STAMP FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Field Alias Link
    ${STATUS} =     set variable    False
    ${STATUS} =     click field alias link
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Field Alis Grid Modified Date Format
    [Arguments]     ${EXPECTED TIME STAMP FORMAT}
    ${MODIFIED DATE VALUE} =    get field alias grid modified date column value
    log     ${MODIFIED DATE VALUE}
    ${STATUS} =     validate date format         ${MODIFIED DATE VALUE}          ${EXPECTED TIME STAMP FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click FTP Site Management Link
    ${STATUS} =     set variable    False
    ${STATUS} =     click ftp site management link
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify FTP Site Management Grid Last Modified Date Format
    [Arguments]     ${EXPECTED TIME STAMP FORMAT}
    ${MODIFIED DATE VALUE} =    get ftp site management grid last modified date column value
    log     ${MODIFIED DATE VALUE}
    ${STATUS} =     validate date format         ${MODIFIED DATE VALUE}          ${EXPECTED TIME STAMP FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Server Management Link
    ${STATUS} =     set variable    False
    ${STATUS} =     click server management link
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Server Management Grid Last Modified Date Format
    [Arguments]     ${EXPECTED TIME STAMP FORMAT}
    ${MODIFIED DATE VALUE} =    get server management grid last modified date column value
    log     ${MODIFIED DATE VALUE}
    ${STATUS} =     validate date format         ${MODIFIED DATE VALUE}          ${EXPECTED TIME STAMP FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Scope
    [Arguments]     ${SCOPE}
    ${STATUS} =     set variable    False
    @{SCOPE LIST} =     create list      ${SCOPE}
    ${STATUS} =     set scope    @{SCOPE LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Current Value Column Value
    ${CURRENT VALUE} =      get current value column value
    log     ${CURRENT VALUE}
    return from keyword     ${CURRENT VALUE}

Verify Get Call Type
    ${CALL TYPE} =      get call type
    log     ${CALL TYPE}
    return from keyword     ${CALL TYPE}

Verify Get Dial Digit Tab Name
    [Arguments]     ${MODULE}
    ${DIAL DIGIT TAB} =      get dial digit tab name        ${MODULE}
    log     ${DIAL DIGIT TAB}
    return from keyword     ${DIAL DIGIT TAB}

Verify Set Value In Current Value Column
    [Arguments]     ${COLUMN VALUE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set value in current value column       ${COLUMN VALUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Close System Admin Window
    ${STATUS} =     set variable    False
    ${STATUS} =     close system admin window
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Default Value In Current Value Column
    ${STATUS} =     set variable    False
    ${STATUS} =     set default value in current value column
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Assign Level2 Roles To Profile
    [Arguments]     @{LIST OF ROLES}
    ${STATUS} =     set variable    False
    ${STATUS} =     assign level2 roles to profile     @{LIST OF ROLES}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Created New Profile Name
    ${PROFILE NAME} =     get new profile name
    log       ${PROFILE NAME}
    return from keyword         ${PROFILE NAME}

Verify Log Out
    ${STATUS} =     set variable    False
    ${STATUS} =     sign out
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Submit Credentials
    [Arguments]    ${USERNAME}    ${PASSWORD}
    ${STATUS} =     set variable    True
    perform login    ${USERNAME}    ${PASSWORD}
    should be true    ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Reset Password
    [Arguments]     ${OLD PASSWORD}     ${NEW PASSWORD}
    ${STATUS} =     set variable    False
    ${STATUS} =     reset password      ${OLD PASSWORD}     ${NEW PASSWORD}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set User Status In Grid
    [Arguments]     ${USER STATUS}
    ${STATUS} =     set variable    False
    ${STATUS} =     set user status in grid      ${USER STATUS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Server Name
    [Arguments]     ${SERVER NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set server name       ${SERVER NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Server Management Grid First Row Inline Action Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click server management grid first row inline action button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Sql Instance
    [Arguments]     ${SQL INSTANCE PREFIX}      ${SET PREVIOUS VALUE}=${False}
    ${STATUS} =     set variable    False
    ${STATUS} =     set sql instance       ${SQL INSTANCE PREFIX}       ${SET PREVIOUS VALUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Server Details Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click server details save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Filter Server Management Grid With First Row Value
    [Arguments]     ${COLUMN NAME TO FILTER}
    ${ITEM NAME} =      get server management grid specific column value        ${COLUMN NAME TO FILTER}
    log     ${ITEM NAME}
    set suite variable      ${ITEM NAME}
    clear all table filters        ${COLUMN NAME TO FILTER}
    ${STATUS} =     set variable    False
    ${STATUS} =     filter server management grid     ${COLUMN NAME TO FILTER}        ${ITEM NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Server Management Grid Settings
    [Arguments]     ${GRID SETTING}
    ${STATUS} =     set variable    False
    ${STATUS} =     set server management grid settings        ${GRID SETTING}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get All Rows of Specific Column From Server Management Grid
    [Arguments]     ${COLUMN NAME}
    @{ALL ROW DATA} =     get all rows of specific column from server management grid    ${COLUMN NAME}
    return from keyword         @{ALL ROW DATA}

Verify Sort Server Management Grid Column In Descending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort server management grid column    ${COLUMN NAME}      ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Sort Server Management Grid Column In Ascending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort server management grid column    ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Descending Sorted Data
    [Arguments]     @{LIST OF DATA}
    ${STATUS} =     set variable    False
    ${STATUS} =     compare sorted data    ${TRUE}         @{LIST OF DATA}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Ascending Sorted Data
    [Arguments]     @{LIST OF DATA}
    ${STATUS} =     set variable    False
    ${STATUS} =     compare sorted data     ${FALSE}        @{LIST OF DATA}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Server Management Grid Column Names By Order
    @{COLUMN NAME LIST} =     get server management grid column names by order
    return from keyword         @{COLUMN NAME LIST}

Verify Drag Server Management Grid Column
    [Arguments]     ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     drag server management grid column    ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Grid Column Position After Altering
    [Arguments]     ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}      @{COLUMN NAME LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     compare grid column position after altering     ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}      @{COLUMN NAME LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Inline Action Item With Module Name
    [Arguments]     ${INLINE ITEM}
    ${STATUS} =     set variable    False
    ${STATUS} =     SystemAdmin.select inline action item with module name      ${INLINE ITEM}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click User Page Search Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click users page search button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Select Companies Radio Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click select companies radio button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Move Available Companies To Destination
    [Arguments]     ${COMPANY LIST}
    @{COMPANY LIST TO MOVE} =       create list     ${COMPANY LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     move available companies to destination      @{COMPANY LIST TO MOVE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Select Accounts Radio Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click select accounts radio button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify L2 Roles Section Is Displayed
    ${STATUS} =     set variable    False
    ${STATUS} =     is l2 roles section displayed
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Role Is Available Under L2 Roles
    [Arguments]     ${ROLE NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is role available under l2 roles        ${ROLE NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Profile Status For Search
    [Arguments]     ${PROFILE STATUS}
    ${STATUS} =     set variable    False
    ${STATUS} =     set profile status for search     ${PROFILE STATUS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Unassign Level2 Roles To Profile
    [Arguments]     @{LIST OF ROLES}
    ${STATUS} =     set variable    False
    ${STATUS} =     unassign level2 roles to profile     @{LIST OF ROLES}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Filter Server Management Grid With Provided Value To Filter
    [Arguments]     ${COLUMN NAME TO FILTER}        ${VALUE TO FILTER}
    clear all table filters        ${COLUMN NAME TO FILTER}
    ${STATUS} =     set variable    False
    ${STATUS} =     filter server management grid     ${COLUMN NAME TO FILTER}        ${VALUE TO FILTER}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Sql Instance
    ${SQL INSTANCE} =     get sql instance
    log       ${SQL INSTANCE}
    return from keyword         ${SQL INSTANCE}

Verify Compare Server Management Grid First Row Value
    [Arguments]     ${COLUMN NAME}      ${VALUE TO COMPARE}
    ${STATUS} =     set variable    False
    ${STATUS} =     compare server management grid first row value      ${COLUMN NAME}      ${VALUE TO COMPARE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Physical Server
    [Arguments]     ${PHYSICAL SERVER PREFIX}       ${SET PREVIOUS VALUE}=${False}
    ${STATUS} =     set variable    False
    ${STATUS} =     set physical server       ${PHYSICAL SERVER PREFIX}         ${SET PREVIOUS VALUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Physical Server
    ${SQL INSTANCE} =     get physical server
    log       ${SQL INSTANCE}
    return from keyword         ${SQL INSTANCE}

Verify Set Cluster Note
    [Arguments]     ${CLUSTER NOTE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set cluster note       ${CLUSTER NOTE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Agent User Name
    [Arguments]     ${AGENT USER NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set agent user name       ${AGENT USER NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Agent Password
    [Arguments]     ${AGENT PASSWORD}
    ${STATUS} =     set variable    False
    ${STATUS} =     set agent password      ${AGENT PASSWORD}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Server Status
    [Arguments]     ${SERVER STATUS}
    ${STATUS} =     set variable    False
    ${STATUS} =     set server status     ${SERVER STATUS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Server In Use
    [Arguments]     ${SERVER IN USE STATUS}
    ${STATUS} =     set variable    False
    ${STATUS} =     set server in use     ${SERVER IN USE STATUS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Ip Address
    [Arguments]     ${IP ADDRESS}
    ${STATUS} =     set variable    False
    ${STATUS} =     set ip address     ${IP ADDRESS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Move Available First Database Item To Destination
    ${STATUS} =     set variable    False
    ${STATUS} =     move available first database item to destination
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Security Profile In Grid
    [Arguments]     ${SECURITY PROFILE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set security profile in grid      ${SECURITY PROFILE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Password Version For Newly Created User
    [Arguments]     ${USER NAME}   ${DATABASE SERVER}      ${DATABASE}      ${DATABASE USERNAME}      ${DATABASE PASSWORD}
    ${ACTUAL VALUE} =     get password version     ${USER NAME}     ${DATABASE SERVER}      ${DATABASE}      ${DATABASE USERNAME}      ${DATABASE PASSWORD}
    return from keyword     ${ACTUAL VALUE}

Verify Password Version For Newly Created User
    [Arguments]     ${EXPECTED VALUE}       ${ACTUAL VALUE}
    should be equal           ${ACTUAL VALUE}       ${EXPECTED VALUE}
    [Teardown]      run keyword unless      '${ACTUAL VALUE}'=='${EXPECTED VALUE}'      Log Screenshot

Verify Reset Password From Home
    [Arguments]     ${OLD PASSWORD}     ${NEW PASSWORD}
    ${STATUS} =     set variable    False
    ${STATUS} =     reset password from home      ${OLD PASSWORD}     ${NEW PASSWORD}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set User Name On Login Page
    [Arguments]     ${CREATED USER NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set user name on login page      ${CREATED USER NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click forgot Password Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click forgot password button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click forgot Password Submit Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click forgot password submit button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Close Current Window Without Navigating Other Window
    ${STATUS} =     set variable    False
    ${STATUS} =     close current window without navigating other window
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Password Expiration Date For Newly Created User
    [Arguments]     ${USER NAME}   ${DATABASE SERVER}      ${DATABASE}      ${DATABASE USERNAME}      ${DATABASE PASSWORD}
    ${STATUS} =     set variable    False
    ${STATUS} =     set password expiration date     ${USER NAME}     ${DATABASE SERVER}      ${DATABASE}      ${DATABASE USERNAME}      ${DATABASE PASSWORD}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click New Ftp Site Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click new ftp site button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Value In Site Name Column
    [Arguments]     ${SITENAME PREFIX}      ${SET_VALUE_TO_EDIT}=${False}       ${COLUMN NAME}=${EMPTY}      ${VALUE_TO_COMPARE}=${EMPTY}
    ${STATUS} =     set variable    False
    ${STATUS} =     set value in site name column     ${SITENAME PREFIX}        ${SET_VALUE_TO_EDIT}        ${COLUMN NAME}      ${VALUE_TO_COMPARE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Created New Ftp Site Name
    ${CREATED NEW FTP SITE NAME} =     get created new ftp site name
    set suite variable      ${CREATED NEW FTP SITE NAME}
    should not be equal      ${CREATED NEW FTP SITE NAME}        ''
    return from keyword     ${CREATED NEW FTP SITE NAME}
    [Teardown]      run keyword if    '${CREATED NEW FTP SITE NAME}'==''    Log Screenshot

Verify Set Value In Site Ip Address Column
    [Arguments]     ${IPADDRESS PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set value in site ip address column     ${IPADDRESS PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Value In Site User Name Column
    [Arguments]     ${USER NAME PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set value in site user name column     ${USER NAME PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Value In Site Password Column
    [Arguments]     ${PASSWORD PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set value in site password column     ${PASSWORD PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Value In Site Directory Column
    [Arguments]     ${PASSWORD PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set value in site directory column     ${PASSWORD PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Value In Site Proxy Session Column
    [Arguments]     ${PROXY SESSION PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set value in site proxy session column     ${PROXY SESSION PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Ftp Site For Search
    [Arguments]     ${CREATED FTP SITE NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set ftp site for search        ${CREATED FTP SITE NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Compare Ftp Site Management Grid First Row Value
    [Arguments]     ${COLUMN NAME}      ${VALUE TO COMPARE}
    ${STATUS} =     set variable    False
    ${STATUS} =     compare ftp site management grid first row value      ${COLUMN NAME}      ${VALUE TO COMPARE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Ftp Management Grid Row Checkbox
    [Arguments]     ${SITE NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     click ftp site management grid row check box        ${SITE NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Ftp Site Delete Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click ftp site delete button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Ftp Site Management Grid Settings
    [Arguments]     ${GRID SETTING}
    ${STATUS} =     set variable    False
    ${STATUS} =     set ftp site management grid settings        ${GRID SETTING}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get All Rows of Specific Column From Ftp Site Management Grid
    [Arguments]     ${COLUMN NAME}
    @{ALL ROW DATA} =     get all rows of specific column from ftp site management grid    ${COLUMN NAME}
    return from keyword         @{ALL ROW DATA}

Verify Sort Ftp Site Management Grid Column In Descending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort ftp site management grid column    ${COLUMN NAME}      ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Ftp Site Management Grid Column Names By Order
    @{COLUMN NAME LIST} =     get ftp site management grid column names by order
    return from keyword         @{COLUMN NAME LIST}

Verify Drag Ftp Site Management Grid Column
    [Arguments]     ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     drag ftp site management grid column    ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Field Alias Scope
    [Arguments]     ${SCOPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set field alias scope    ${SCOPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Value In Field Alias Column
    [Arguments]     ${FIELD ALIAS PREFIX}       ${SET_VALUE_FOR_EDIT}=${False}
    ${STATUS} =     set variable    False
    ${STATUS} =     set value in field alias column     ${FIELD ALIAS PREFIX}       ${SET_VALUE_FOR_EDIT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Field Alias Name
    ${CREATED FIELD ALIAS NAME} =     get field alias name
    set suite variable      ${CREATED FIELD ALIAS NAME}
    should not be equal      ${CREATED FIELD ALIAS NAME}        ''
    return from keyword     ${CREATED FIELD ALIAS NAME}
    [Teardown]      run keyword if    '${CREATED FIELD ALIAS NAME}'==''    Log Screenshot

Verify Compare Field Alias Grid First Row Value
    [Arguments]     ${COLUMN NAME}      ${VALUE TO COMPARE}
    ${STATUS} =     set variable    False
    ${STATUS} =     compare field alias grid first row value      ${COLUMN NAME}      ${VALUE TO COMPARE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Field Alias Grid Settings
    [Arguments]     ${GRID SETTING}
    ${STATUS} =     set variable    False
    ${STATUS} =     set field alias grid settings        ${GRID SETTING}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get All Rows of Specific Column From Field Alias Grid
    [Arguments]     ${COLUMN NAME}
    @{ALL ROW DATA} =     get all rows of specific column from field alias grid    ${COLUMN NAME}
    return from keyword         @{ALL ROW DATA}

Verify Sort Field Alias Grid Column In Descending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort field alias grid column    ${COLUMN NAME}      ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Field Alias Grid Column Names By Order
    @{COLUMN NAME LIST} =     get field alias grid column names by order
    return from keyword         @{COLUMN NAME LIST}

Verify Drag Field Alias Grid Column
    [Arguments]     ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     drag field alias grid column    ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click New Category Button For System Admin
    ${STATUS} =     set variable    False
    ${STATUS} =     click new category button for system admin
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set New Category Application
    [Arguments]     ${APPLICATION}
    ${STATUS} =     set variable    False
    ${STATUS} =     set new category application    ${APPLICATION}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set New Category Object
    [Arguments]     ${OBJECT}
    ${STATUS} =     set variable    False
    ${STATUS} =     set new category object    ${OBJECT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set New Category Type
    [Arguments]     ${CATEGORY TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set new category type    ${CATEGORY TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set New Category For System Admin
    [Arguments]     ${CATEGORY PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set new category for system admin     ${CATEGORY PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Created New Category From System Admin
    ${CREATED NEW CATEGORY} =     get created new category from system admin
    set suite variable      ${CREATED NEW CATEGORY}
    should not be equal      ${CREATED NEW CATEGORY}        ''
    return from keyword     ${CREATED NEW CATEGORY}
    [Teardown]      run keyword if    '${CREATED NEW CATEGORY}'==''    Log Screenshot

Verify Set New Category Abbreviation For System Admin
    [Arguments]     ${ABBREVIATION PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set new category abbreviation for system admin     ${ABBREVIATION PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set New Category Level
    [Arguments]     ${LEVEL NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set new category level    ${LEVEL NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click New Category Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click new category save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Filter Categories Grid With Provided Value To Filter
    [Arguments]     ${COLUMN NAME TO FILTER}        ${VALUE TO FILTER}
    clear all table filters        ${COLUMN NAME TO FILTER}
    ${STATUS} =     set variable    False
    ${STATUS} =     filter categories grid     ${COLUMN NAME TO FILTER}        ${VALUE TO FILTER}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Compare Categories Grid First Row Value
    [Arguments]     ${COLUMN NAME}      ${VALUE TO COMPARE}
    ${STATUS} =     set variable    False
    ${STATUS} =     compare categories grid first row value      ${COLUMN NAME}      ${VALUE TO COMPARE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Value In Category Column
    [Arguments]     ${CATEGORY PREFIX}      ${SET_VALUE_TO_EDIT}=${False}       ${COLUMN NAME}=${EMPTY}      ${VALUE_TO_COMPARE}=${EMPTY}
    ${STATUS} =     set variable    False
    ${STATUS} =     set value in category column     ${CATEGORY PREFIX}     ${SET_VALUE_TO_EDIT}        ${COLUMN NAME}      ${VALUE_TO_COMPARE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Categories Grid Row Checkbox
    [Arguments]     ${CATEGORY NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     click categories grid row check box         ${CATEGORY NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Categories Delete Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click categories delete button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Categories Grid Settings
    [Arguments]     ${GRID SETTING}
    ${STATUS} =     set variable    False
    ${STATUS} =     set categories grid settings        ${GRID SETTING}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get All Rows of Specific Column From Categories Grid
    [Arguments]     ${COLUMN NAME}
    @{ALL ROW DATA} =     get all rows of specific column from categories grid    ${COLUMN NAME}
    return from keyword         @{ALL ROW DATA}

Verify Sort Categories Grid Column In Descending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort categories grid column    ${COLUMN NAME}      ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Categories Grid Column Names By Order
    @{COLUMN NAME LIST} =     get categories grid column names by order
    return from keyword         @{COLUMN NAME LIST}

Verify Drag Categories Grid Column
    [Arguments]     ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     drag categories grid column    ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Clear Filter For System Admin
    [Arguments]     ${COLUMN NAME TO CLEAR FILTER}
    ${STATUS} =     set variable    False
    ${STATUS} =     clear filter for system admin        ${COLUMN NAME TO CLEAR FILTER}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Compare Configuration Variables Grid First Row Value
    [Arguments]     ${COLUMN NAME}      ${VALUE TO COMPARE}
    ${STATUS} =     set variable    False
    ${STATUS} =     compare configuration variables grid first row value      ${COLUMN NAME}      ${VALUE TO COMPARE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Export To Excel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click export to excel button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Filter Configuration Variables Grid With Provided Value To Filter
    [Arguments]     ${COLUMN NAME TO FILTER}        ${VALUE TO FILTER}
    ${STATUS} =     set variable    False
    ${STATUS} =     filter configuration variables grid     ${COLUMN NAME TO FILTER}        ${VALUE TO FILTER}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Configuration Variables Grid Settings
    [Arguments]     ${GRID SETTING}
    ${STATUS} =     set variable    False
    ${STATUS} =     set configuration variables grid settings        ${GRID SETTING}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get All Rows of Specific Column From Configuration Variables Grid
    [Arguments]     ${COLUMN NAME}
    @{ALL ROW DATA} =     get all rows of specific column from configuration variables grid    ${COLUMN NAME}
    return from keyword         @{ALL ROW DATA}

Verify Get Configuration Variables Grid Column Names By Order
    @{COLUMN NAME LIST} =     get configuration variables grid column names by order
    return from keyword         @{COLUMN NAME LIST}

Verify Drag Configuration Variables Grid Column
    [Arguments]     ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     drag configuration variables grid column    ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Compare Configuration Variables Grid Row Count
    [Arguments]      ${VALUE TO COMPARE}
    ${STATUS} =     set variable    False
    ${STATUS} =     compare configuration variables grid row count      ${VALUE TO COMPARE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Sort Configuration Variables Grid Column In Descending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort configuration variables grid column    ${COLUMN NAME}      ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get User Profile Modified Date
    [Arguments]     ${LABEL NAME}
    ${MODIFIED DATE} =     get label wise text          ${LABEL NAME}
    set suite variable      ${MODIFIED DATE}
    return from keyword     ${MODIFIED DATE}
    [Teardown]      run keyword if    '${MODIFIED DATE}'==''    Log Screenshot

Verify Compare User Profile Modified Date After Login
    [Arguments]     ${EXPECTED VALUE}       ${LABEL NAME}
    ${ACTUAL VALUE} =     get label wise text          ${LABEL NAME}
    log     ${ACTUAL VALUE}
    should be equal         ${ACTUAL VALUE}      ${EXPECTED VALUE}
    [Teardown]      run keyword unless      '${ACTUAL VALUE}'=='${EXPECTED VALUE}'      Log Screenshot

Verify Compare User Profile Modified Date After Editing
    [Arguments]     ${VALUE BEFORE EDIT}       ${VALUE AFTER EDIT}
    should not be equal         ${VALUE BEFORE EDIT}      ${VALUE AFTER EDIT}
    [Teardown]      run keyword if      '${VALUE BEFORE EDIT}'=='${VALUE AFTER EDIT}'      Log Screenshot

Verify Get Lastactivitydate For Newly Created User
    [Arguments]     ${USER NAME}   ${DATABASE SERVER}      ${DATABASE}      ${DATABASE USERNAME}      ${DATABASE PASSWORD}
    ${LASTACTIVITYDATE VALUE} =     get lastactivitydate     ${USER NAME}     ${DATABASE SERVER}      ${DATABASE}      ${DATABASE USERNAME}      ${DATABASE PASSWORD}
    return from keyword     ${LASTACTIVITYDATE VALUE}

Verify Compare Lastactivitydate
    [Arguments]     ${VALUE AFTER FIRST LOGIN}       ${VALUE AFTER SECOND LOGIN}
    should not be equal         ${VALUE AFTER FIRST LOGIN}      ${VALUE AFTER SECOND LOGIN}
    [Teardown]      run keyword if      '${VALUE AFTER FIRST LOGIN}'=='${VALUE AFTER SECOND LOGIN}'      Log Screenshot

Verify Get Name Of The User
    ${NAME} =      get name of the user
    log     ${NAME}
    return from keyword     ${NAME}

Verify Get User First Name
    ${CREATED USER FIRST NAME} =     get user first name
    log   ${CREATED USER FIRST NAME}
    set suite variable        ${CREATED USER FIRST NAME}
    return from keyword     ${CREATED USER FIRST NAME}
    [Teardown]      run keyword if    '${CREATED USER FIRST NAME}'==''    Log Screenshot

Verify Get User Last Name
    ${CREATED USER LAST NAME} =     get user last name
    log   ${CREATED USER LAST NAME}
    set suite variable        ${CREATED USER LAST NAME}
    return from keyword     ${CREATED USER LAST NAME}
    [Teardown]      run keyword if    '${CREATED USER LAST NAME}'==''    Log Screenshot

Verify Filter Users Grid For Multiple Time
    [Arguments]     ${COLUMN NAME}      ${FILTER ITEM}      ${COLUMN NAME TO CLEAR FILTER}
    clear all table filters        ${COLUMN NAME TO CLEAR FILTER}
    ${STATUS} =     set variable    False
    ${STATUS} =     SystemAdmin.filter users grid       ${COLUMN NAME}      ${FILTER ITEM}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Clear Multiple Kendo Dropdown Selection
    [Arguments]     ${DROPDOWN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     clear multiselect kendo dropdown        ${DROPDOWN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Create Config Variable Presen Dictionary
    ${STATUS} =     set variable    False
    ${STATUS} =     create config variable preset dictionary
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Store Preset Config Variable Current Value
    [Arguments]     ${VARIABLE NAME}
    ${CURRENT VALUE} =     store preset config variable current value     ${VARIABLE NAME}
    log     ${CURRENT VALUE}
    should not be equal     ${CURRENT VALUE}    ''
    return from keyword         ${CURRENT VALUE}
    [Teardown]      run keyword     Log Screenshot

Verify Get Preset Config Variable Current Value
    [Arguments]     ${VARIABLE NAME}
    ${CURRENT VALUE} =     get preset config variable current value     ${VARIABLE NAME}
    log     ${CURRENT VALUE}
    should not be equal     ${CURRENT VALUE}    ''
    return from keyword     ${CURRENT VALUE}
    [Teardown]      run keyword if    '${CURRENT VALUE}'==''    Log Screenshot

Verify Store Preset Config Variable Modified By
    [Arguments]     ${VARIABLE NAME}
    ${MODIFIED BY} =     store preset config variable modified by     ${VARIABLE NAME}
    log     ${MODIFIED BY}
    should not be equal     ${MODIFIED BY}    ''
    [Teardown]      run keyword if    '${MODIFIED BY}'==''    Log Screenshot

Verify Click First Row Info Icon
    ${STATUS} =     set variable    False
    ${STATUS} =     click first row info icon
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Cplenablecurrencypreview System Note
    ${STATUS} =     set variable    False
    ${STATUS} =     verify system note for cplenablecurrencypreview
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Unassign Assigned Roles To Unassigned Role
    [Arguments]     @{LIST OF ROLES}
    ${STATUS} =     set variable    False
    ${STATUS} =     unassign assigned roles to unassigned role     @{LIST OF ROLES}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Update User Status ID
    [Arguments]     ${DATABASE SERVER}      ${DATABASE}      ${DATABASE USERNAME}      ${DATABASE PASSWORD}     ${USER NAME}     ${STATUS ID}
    ${STATUS} =     set variable    False
    ${STATUS} =     update user status id     ${DATABASE SERVER}      ${DATABASE}      ${DATABASE USERNAME}      ${DATABASE PASSWORD}     ${USER NAME}     ${STATUS ID}
    should be true      ${STATUS}

Verify Get Actual Value From Server Setting Management Page
    [Arguments]       ${LABEL NAME}     ${IS DROPDOWN}=${False}
    ${ACTUAL VALUE} =     get label wise text from server setting management page          ${LABEL NAME}        ${IS DROPDOWN}
    return from keyword        ${ACTUAL VALUE}

Verify Get Available Database First Item From Server Setting Management Page
    ${ACTUAL VALUE} =     get available database first item
    return from keyword        ${ACTUAL VALUE}

Verify Unassign Assigned Database
    [Arguments]     @{ITEM NAME LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     unassign assigned database     @{ITEM NAME LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Field Alias Grid Specific Column Value
    [Arguments]     ${COLUMN NAME}
    ${SPECIFIC COLUMN VALUE} =     get field alias grid specific column value       ${COLUMN NAME}
    log   ${SPECIFIC COLUMN VALUE}
    set suite variable        ${SPECIFIC COLUMN VALUE}
    return from keyword     ${SPECIFIC COLUMN VALUE}
    [Teardown]      run keyword if    '${SPECIFIC COLUMN VALUE}'==''    Log Screenshot

Verify Click Profile Grid Row Inline Action Button
    [Arguments]     ${PROFILE NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     click profile grid row inline action button     ${PROFILE NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Users Grid Row Inline Action Button
    [Arguments]     ${USER NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     click users grid row inline action button       ${USER NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click All Accounts Radio Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click all accounts radio button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click All Companies Radio Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click all companies radio button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Description of System Variable
    [Arguments]     ${DESCRIPTION}
    ${STATUS} =     set variable    False
    ${STATUS} =     verify system variable description      ${DESCRIPTION}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Extract Delivery Link Path
    ${EXTRACT PATH} =     get extract delivery link path
    log  ${EXTRACT PATH}
    should not be equal     ${EXTRACT PATH}     ''
    return from keyword     ${EXTRACT PATH}

Verify Set Security Profile Grid Settings
    [Arguments]     ${GRID SETTING}
    ${STATUS} =     set variable    False
    ${STATUS} =     set security profile grid settings        ${GRID SETTING}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get All Rows of Specific Column From Security Profile Grid
    [Arguments]     ${COLUMN NAME}
    @{ALL ROW DATA} =     get all rows of specific column from security profile grid    ${COLUMN NAME}
    return from keyword         @{ALL ROW DATA}

Verify Sort Security Profile Grid Column In Descending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort security profile grid column    ${COLUMN NAME}      ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Sort Security Profile Grid Column In Ascending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort security profile grid column    ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Filter Profiles Grid With First Row Value
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${COLUMN VALUE} =       get security profile grid specific column value     ${COLUMN NAME}
    log     ${COLUMN VALUE}
    ${STATUS} =     filter profiles grid     ${COLUMN NAME}       ${COLUMN VALUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Security Profile Grid Column Names By Order
    @{COLUMN NAME LIST} =     get security profile grid column names by order
    return from keyword         @{COLUMN NAME LIST}

Verify Drag Security Profile Grid Column
    [Arguments]     ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     drag security profile grid column    ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Users Grid Settings
    [Arguments]     ${GRID SETTING}
    ${STATUS} =     set variable    False
    ${STATUS} =     set users grid settings        ${GRID SETTING}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get All Rows of Specific Column From Users Grid
    [Arguments]     ${COLUMN NAME}
    @{ALL ROW DATA} =     get all rows of specific column from users grid    ${COLUMN NAME}
    return from keyword         @{ALL ROW DATA}

Verify Sort Users Grid Column In Descending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort users grid column    ${COLUMN NAME}      ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Sort Users Grid Column In Ascending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort users grid column    ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Filter Users Grid With First Row Value
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${COLUMN VALUE} =       get users grid specific column value     ${COLUMN NAME}
    set suite variable          ${COLUMN VALUE}
    log     ${COLUMN VALUE}
    ${STATUS} =     filter users grid     ${COLUMN NAME}       ${COLUMN VALUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Compare Column Value After Filtering With First Row Value
    [Arguments]     ${COLUMN NAME}
    ${ACTUAL VALUE} =       get users grid specific column value     ${COLUMN NAME}
    log         ${ACTUAL VALUE}
    should be equal     ${COLUMN VALUE}     ${ACTUAL VALUE}
    [Teardown]      run keyword unless      '${ACTUAL VALUE}'=='${COLUMN VALUE}'      Log Screenshot

Verify Get Users Grid Column Names By Order
    @{COLUMN NAME LIST} =     get users grid column names by order
    return from keyword         @{COLUMN NAME LIST}

Verify Drag Users Grid Column
    [Arguments]     ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     drag users grid column    ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Application
    [Arguments]     ${APPLICATION}
    ${STATUS} =     set variable    False
    ${STATUS} =     set application     ${APPLICATION}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Field Alias Grid Field Name
    [Arguments]     ${EXPECTED FIELD NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is field alias grid field name present      ${EXPECTED FIELD NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Field Alias Column Value
    [Arguments]     ${FIELD ALIAS VALUE}    ${COLUM NAME}=${EMPTY}
    ${STATUS} =     set variable    False
    ${STATUS} =     set field alias column value     ${FIELD ALIAS VALUE}       ${COLUM NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Assign All Level2 Roles To Profile
    ${STATUS} =     set variable    False
    ${STATUS} =     assign all level2 roles to profile
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The L2 Role Section Is Not Displayed
    ${STATUS} =     set variable    False
    ${STATUS} =     is l2 roles section not displayed
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Unassign All Level2 Roles To Profile
    ${STATUS} =     set variable    False
    ${STATUS} =     unassign all level2 roles to profile
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Assign All Level1 Roles To Profile
    ${STATUS} =     set variable    False
    ${STATUS} =     assign all level1 roles to profile
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify CPLPreviewDisplayWarnings System Note
    ${STATUS} =     set variable    False
    ${STATUS} =     verify system note for cplpreviewdisplaywarnings
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set User Status For Search
    [Arguments]     ${USER STATUS}
    ${STATUS} =     set variable    False
    ${STATUS} =     set user status for search        ${USER STATUS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Name For Search
    [Arguments]     ${FIRST NAME}   ${LAST NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set name for search        ${FIRST NAME}  ${LAST NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

