*** Settings ***
Documentation   Business Admin Page Resource File With All Necessary Keywords.

Resource        ../common_resource.robot

Library     ../../../TestFramework/Libraries/RobotTests/Home.py
Library     ../../../TestFramework/Libraries/RobotTests/BusinessAdmin.py
Library         Collections

*** Variables ***
${EXPECTED PAGE TITLE}   	        Business Admin
${ACTUAL PAGE TITLE}                ${EMPTY}
${STATUS}                           ${EMPTY}
${DIGIT 1 VALUE}                    ${EMPTY}
${ORIGIN SET GRID ROW}              ${EMPTY}
${NUMBER PLAN UPLOADS GRID ROW DATA}                ${EMPTY}
${NUMBER PLAN UPLOADS GRID ROW DATA FOR WORKFLOW}   ${EMPTY}
${WORKFLOW GRID ROW DATA}                           ${EMPTY}
${NUMBER PLAN UPLOADS GRID ROW DATA COPY}           ${EMPTY}
${DIGIT 2 VALUE}                    ${EMPTY}
${SETTLEMENT ORIGIN}                ${EMPTY}
${NEW SOURCE NAME}                  ${EMPTY}
${NEW ABBREVIATION}                 ${EMPTY}
${SOURCES GRID ROW}                 ${EMPTY}
${BULK EDIT NOTE}                   ${EMPTY}
${CREATED COUNTRY NAME}             ${EMPTY}
${CREATED COUNTRY ABBREVIATION}     ${EMPTY}
${CREATED MOBILE COUNTRY CODE}      ${EMPTY}
${COUNTRIES GRID ROW DATA}          ${EMPTY}
${DIGIT 2 VALUE}                ${EMPTY}
${SETTLEMENT ORIGIN}            ${EMPTY}
${NEW SOURCE NAME}              ${EMPTY}
${NEW ABBREVIATION}             ${EMPTY}
${SOURCES GRID ROW}             ${EMPTY}
${BULK EDIT NOTE}               ${EMPTY}
${COUNTRY GROUP}                ${EMPTY}
${COUNTRY GROUP GRID ROW DETAILS}       ${EMPTY}
${LIST OF ASSIGNED COUNTRIES}       ${EMPTY}
${CATEGORIES GRID ROW DATA}         ${EMPTY}
${CREATED EXCHANGE RATE}            ${EMPTY}
${CREATED EXCHANGE RATE BEGIN DATE}     ${EMPTY}
${EXCHANGE RATES GRID ROW DATA}     ${EMPTY}
${CREATED ROUTE CLASS NAME}         ${EMPTY}
${NEW ROUTE CLASS DATA}             ${EMPTY}
${TEMP ROUTE CLASS DATA}            ${EMPTY}
${ROUTE CLASS GRID ROW DATA}        ${EMPTY}
${REGIONS GRID ROW DETAILS}         ${EMPTY}
${CREATED NETWORK CODE}             ${EMPTY}
${REGIONS GRID ROW DETAILS}             ${EMPTY}
${CREATED NETWORK DESTINATION}          ${EMPTY}
${NETWORK DESTINATION BEGIN DATE}       ${EMPTY}
${NETWORK DESTINATION END DATE}         ${EMPTY}
${NETWORK DESTINATION GRID ROW DATA}    ${EMPTY}

*** Keywords ***
Click on Home Icon and Select 'Business Admin' From Main Menu
    ${STATUS} =     set variable    False
    select business admin submenu
    ${STATUS} =     switch to business admin
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Page Title
    ${ACTUAL PAGE TITLE} =  get business admin page title
    should contain     ${ACTUAL PAGE TITLE}     ${EXPECTED PAGE TITLE}
    [Teardown]      run keyword unless     '${ACTUAL PAGE TITLE}'=='${EXPECTED PAGE TITLE}'    Log Screenshot

Verify The Business Admin Dashboard Tab Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is business admin dashboard tab present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Expand Number Plan Menu
    ${STATUS} =     set variable    False
    ${STATUS} =     expand number plan menu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Number Plan Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click number plan submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Upload Number Plan Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click upload number plan button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Number Plan Uploads Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click number plan uploads button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Upload Number Plan Type
    [Arguments]     ${NUMBER PLAN TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set upload number plan type     ${NUMBER PLAN TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Upload Number Plan
    [Arguments]     ${NUMBER PLAN}
    ${STATUS} =     set variable    False
    ${STATUS} =     set upload number plan      ${NUMBER PLAN}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Upload Number Plan Note
    [Arguments]     ${NOTE PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set upload number plan note     ${NOTE PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Number Plan Upload Browse Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click number plan upload browse button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select The File To Be Uploaded
    [Arguments]     ${FILE PATH}
    ${STATUS} =     set variable    False
    ${STATUS} =     select the file to be uploaded      ${FILE PATH}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Number Plan Upload Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click number plan upload button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Number Plan Uploads Number Plan Type
    [Arguments]     ${NUMBER PLAN TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set number plan uploads number plan type      ${NUMBER PLAN TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Number Plan Uploads Number Plan
    [Arguments]     ${CSNP NUMBER PLAN}
    @{NUMBER PLAN LIST} =       create list     ${CSNP NUMBER PLAN}
    ${STATUS} =     set variable    False
    ${STATUS} =     set number plan uploads number plan       @{NUMBER PLAN LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Multiple Status
    [Arguments]     @{STATUS LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     set multiple status       @{STATUS LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Close Current Tab
    [Arguments]     ${TAB NAME TO CLOSE}
    ${STATUS} =     set variable    False
    ${STATUS} =     BusinessAdmin.close current tab       ${TAB NAME TO CLOSE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Number Plan Uploads Search Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click number plan uploads search button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Analyze Pending Status If Exists
    ${STATUS} =     set variable    False
    ${STATUS} =     analyze pending status if exists
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Number Plan Uploads Grid Inline Action Button
    [Arguments]     ${ROW IDENTIFIER TEXT}
    ${STATUS} =     set variable    False
    ${STATUS} =     click number plan uploads grid inline action button       ${ROW IDENTIFIER TEXT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Inline Action Item
    [Arguments]     ${INLINE ITEM NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     select inline action item       ${INLINE ITEM NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Number Plan Upload Cancel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click number plan upload cancel button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Origin Set Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click origin set submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Add Dialed Digits Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click add dialed digits button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Begin Date
    [Arguments]     ${BEGIN DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set begin date      ${BEGIN DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set End Date
    [Arguments]     ${END DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set end date      ${END DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Dialed Digit Type
    [Arguments]     ${DIALED DIGIT TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set dialed digit type      ${DIALED DIGIT TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Digit 1 Value
    ${DIGIT 1 VALUE} =     set digit 1 value
    set suite variable      ${DIGIT 1 VALUE}
    [Teardown]      run keyword if    '${DIGIT 1 VALUE}'==''    Log Screenshot

Verify Select Origin Sets For Add Dialed Digits
    [Arguments]     ${ORIGIN SET}
    @{LIST OF ORIGIN SETS} =    create list     ${ORIGIN SET}
    ${STATUS} =     set variable    False
    ${STATUS} =     select origin sets      @{LIST OF ORIGIN SETS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Settlement Origins For Add Dialed Digits
    [Arguments]     ${SETTLEMENT ORIGINS}
    @{LIST OF SETTLEMENT ORIGINS} =     create list     ${SETTLEMENT ORIGINS}
    ${STATUS} =     set variable    False
    ${STATUS} =     select settlement origins      @{LIST OF SETTLEMENT ORIGINS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Add Dialed Digits Ok Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click add dialed digits ok button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Origin Set For Search
    [Arguments]     ${ORIGIN SET}
    @{LIST OF ORIGIN SETS} =    create list     ${ORIGIN SET}
    ${STATUS} =     set variable    False
    ${STATUS} =     set origin set for search      @{LIST OF ORIGIN SETS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Settlement Origin For Search
    [Arguments]     ${SETTLEMENT ORIGINS}
    @{LIST OF SETTLEMENT ORIGINS} =     create list     ${SETTLEMENT ORIGINS}
    ${STATUS} =     set variable    False
    ${STATUS} =     set settlement origin for search      @{LIST OF SETTLEMENT ORIGINS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Dialed Digit For Search
    ${STATUS} =     set variable    False
    ${STATUS} =     set dialed digit for search     ${DIGIT 1 VALUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Origin Set Search Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click origin set search button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Origin Set Grid Row Data
    ${ORIGIN SET GRID ROW} =      get origin set grid row details
    set suite variable      ${ORIGIN SET GRID ROW}
    ${LENGTH} =     get length      ${ORIGIN SET GRID ROW}
    [Teardown]      run keyword if    '${LENGTH}'=='0'    Log Screenshot

Verify Origin Set After Create
    [Arguments]     ${ORIGIN SET}
    ${ACTUAL ORIGIN SET} =   Get From Dictionary     ${ORIGIN SET GRID ROW}      Origin Set
    should be equal     ${ACTUAL ORIGIN SET}      ${ORIGIN SET}
    [Teardown]      run keyword unless     '${ACTUAL ORIGIN SET}'=='${ORIGIN SET}'    Log Screenshot

Verify Settlement Origin After Create
    [Arguments]     ${SETTLEMENT ORIGIN}
    ${STATUS} =     set variable   False
    ${ACTUAL SETTLEMENT ORIGIN} =   Get From Dictionary     ${ORIGIN SET GRID ROW}      Settlement Origin
    should contain      ${SETTLEMENT ORIGIN}        ${ACTUAL SETTLEMENT ORIGIN}
    ${STATUS} =     set variable   True
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Dialed Digit After Create
    ${ACTUAL DIALED DIGIT} =   Get From Dictionary     ${ORIGIN SET GRID ROW}      Dialed Digit
    should be equal     ${ACTUAL DIALED DIGIT}      ${DIGIT 1 VALUE}
    [Teardown]      run keyword unless     '${ACTUAL DIALED DIGIT}'=='${DIGIT 1 VALUE}'    Log Screenshot

Verify Begin Date After Create
    [Arguments]     ${BEGIN DATE}
    ${ACTUAL BEGIN DATE} =   Get From Dictionary     ${ORIGIN SET GRID ROW}      Begin Date
    should be equal     ${ACTUAL BEGIN DATE}      ${BEGIN DATE}
    [Teardown]      run keyword unless     '${ACTUAL BEGIN DATE}'=='${BEGIN DATE}'    Log Screenshot

Verify Click Show Summary Link
    ${STATUS} =     set variable    False
    ${STATUS} =     click show summary link
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Number Plan Uploads Grid Row Details
    ${NUMBER PLAN UPLOADS GRID ROW DATA} =      get number plan uploads grid row details
    set suite variable      ${NUMBER PLAN UPLOADS GRID ROW DATA}
    ${LENGTH} =     get length      ${NUMBER PLAN UPLOADS GRID ROW DATA}
    [Teardown]      run keyword if    '${LENGTH}'=='0'    Log Screenshot

Verify Information Of Upload Details Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     verify upload details information       ${NUMBER PLAN UPLOADS GRID ROW DATA}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Dial Digits Tab Loaded Properly
    ${STATUS} =     set variable    False
    ${STATUS} =     is dial digits tab loaded properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Csnp Analysis Tab Loaded Properly
    ${STATUS} =     set variable    False
    ${STATUS} =     is csnp analysis tab loaded properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Number Plan Uploads Grid Inline Item Availability
    [Arguments]     ${INLINE ITEM}
    ${STATUS} =     set variable    False
    ${STATUS} =     is number plan uploads grid inline item available      ${INLINE ITEM}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click New Origin Set Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click new origin set button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Origin Set For Add New Origin Set
    [Arguments]     ${ORIGIN SET NAME PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set origin set      ${ORIGIN SET NAME PREFIX}      ${True}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Edit Origin Set Ok Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click edit origin set ok button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Origin Set Grid Inline Action Button
    [Arguments]     ${ORIGIN SET NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     click origin set grid inline action button      ${ORIGIN SET NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Rule of Missing A
    [Arguments]     ${RULE OF MISSING A}
    ${STATUS} =     set variable    False
    ${STATUS} =     set rule of missing a      ${RULE OF MISSING A}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Origin Set Grid Inline Item
    [Arguments]     ${INLINE ITEM}      ${MODULE NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     select origin set grid inline item      ${INLINE ITEM}      ${MODULE NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Origin Set Upload Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click origin set upload button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Origin Set For Upload
    [Arguments]     ${ORIGIN SET NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set origin set for upload      ${ORIGIN SET NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Effective Date For Upload Origin Set
    [Arguments]     ${EFFECTIVE DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set effective date for upload origin set      ${EFFECTIVE DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Upload Origin Set Browse Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click upload origin set browse button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Upload Origin Set Upload Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click upload origin set upload button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify View Origin Set Details Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is view origin set details available
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Edit Origin Set Popup Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is edit origin set popup available
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Edit Origin Set Popup Cancel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click edit origin set popup cancel button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click New Settlement Origin Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click new settlement origin button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Settlement Origin
    [Arguments]     ${SETTLEMENT ORIGIN PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set settlement origin      ${SETTLEMENT ORIGIN PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Digit 2 Value
    ${DIGIT 2 VALUE} =     set digit 2 value
    set suite variable      ${DIGIT 2 VALUE}
    [Teardown]      run keyword if    '${DIGIT 1 VALUE}'==''    Log Screenshot

Verify Select Origin Sets For New Settlement Origin
    [Arguments]     ${ORIGIN SET}
    @{LIST OF ORIGIN SETS} =        create list     ${ORIGIN SET}
    ${STATUS} =     set variable    False
    ${STATUS} =     select origin sets      @{LIST OF ORIGIN SETS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click New Settlement Origin Ok Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click new settlement origin ok button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Generate Settlement Origin
    [Arguments]     ${ORIGIN SET FOR NEW SETTLEMENT ORIGIN}
    ${SETTLEMENT ORIGIN} =     generate settlement origin      ${ORIGIN SET FOR NEW SETTLEMENT ORIGIN}
    set suite variable      ${SETTLEMENT ORIGIN}
    [Teardown]      run keyword if    '${SETTLEMENT ORIGIN}'==''    Log Screenshot

Verify Set Settlement Origin For Settlement Orign Search
    ${STATUS} =     set variable    False
    ${STATUS} =     set settlement origin for search      ${SETTLEMENT ORIGIN}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Dialed Digit 2 For Search
    ${STATUS} =     set variable    False
    ${STATUS} =     set dialed digit for search     ${DIGIT 2 VALUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Search Results Displayed In The Grid
    ${STATUS} =     set variable    False
    ${STATUS} =     search results displayed in the grid
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Add Row Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click add row button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Settlement Origin For Verify Origin Set Field
    [Arguments]     ${SETTLEMENT ORIGIN}
    ${STATUS} =     set variable    False
    ${STATUS} =     set settlement origin      ${SETTLEMENT ORIGIN}     ${False}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Available Origin Set Are Fetched
    ${STATUS} =     set variable    False
    ${STATUS} =     is available origin set fetched
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click New Settlement Origin Popup Cancel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click new settlement origin popup cancel button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Add Origin Set Ok Button For Duplicate
    ${STATUS} =     set variable    False
    ${STATUS} =     click add origin set ok button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Add Origin Set Cancel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click add origin set cancel button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Origin Set
    [Arguments]     ${ORIGIN SET NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set origin set      ${ORIGIN SET NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Origin Set Export To Excel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click export to excel button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Number Plan Uploads Grid Row Details For Workflow
    ${NUMBER PLAN UPLOADS GRID ROW DATA FOR WORKFLOW} =      get number plan uploads grid row details for workflow
    ${NUMBER PLAN UPLOADS GRID ROW DATA COPY} =   copy dictionary     ${NUMBER PLAN UPLOADS GRID ROW DATA FOR WORKFLOW}
    set suite variable      ${NUMBER PLAN UPLOADS GRID ROW DATA COPY}
    ${LENGTH} =     get length      ${NUMBER PLAN UPLOADS GRID ROW DATA FOR WORKFLOW}
    [Teardown]      run keyword if    '${LENGTH}'=='0'    Log Screenshot

Verify Click Show Workflow Link
    ${STATUS} =     set variable    False
    ${STATUS} =     click show workflow link
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Workflow Grid Row Details
    ${WORKFLOW GRID ROW DATA} =      get workflow grid row details
    set suite variable      ${WORKFLOW GRID ROW DATA}
    ${LENGTH} =     get length      ${WORKFLOW GRID ROW DATA}
    [Teardown]      run keyword if    '${LENGTH}'=='0'    Log Screenshot

Verify Set From Date
    [Arguments]     ${FROM DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set from date      ${FROM DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Compare Workflow Grid Details
    ${STATUS} =     set variable    False
    ${WORKFLOW GRID ROW DATA} =     get workflow grid row details
    dictionaries should be equal        ${NUMBER PLAN UPLOADS GRID ROW DATA COPY}      ${WORKFLOW GRID ROW DATA}
    ${STATUS} =     set variable    True
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Expand Trading Menu
    ${STATUS} =     set variable    False
    ${STATUS} =     expand trading menu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Source And Policies Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click source and policies submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Source Type For Search
    [Arguments]     ${SOURCE TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set source type for search      ${SOURCE TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Sources Search Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click sources search button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Bulk Edit Button
    ${STATUS} =     set variable    False
    ${STATUS} =     BusinessAdmin.click bulk edit button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Source Policies Grid Multiple Rows
    [Arguments]     @{LIST OF SOURCE}
    ${STATUS} =     set variable    False
    ${STATUS} =     select source policies grid multiple rows       @{LIST OF SOURCE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Bulk Edit Number Plan
    [Arguments]     ${NUMBER PLAN}
    ${STATUS} =     set variable    False
    ${STATUS} =     set bulk edit number plan       ${NUMBER PLAN}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Bulk Edit Call Type
    [Arguments]     ${CALL TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set bulk edit call type         ${CALL TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Bulk Edit Reference Price List
    [Arguments]     ${REFERENCE PRICE LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     set bulk edit reference price list      ${REFERENCE PRICE LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Bulk Edit Quality Of Service
    [Arguments]     ${QUALITY OF SERVICE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set bulk edit quality of service        ${QUALITY OF SERVICE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Bulk Edit Origin Reference Price List
    [Arguments]     ${ORIGIN REFERENCE PRICE LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     set bulk edit origin reference price list       ${ORIGIN REFERENCE PRICE LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Bulk Edit Note
    [Arguments]     ${NOTE PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set bulk edit note      ${NOTE PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Bulk Edit Submit Button
    ${STATUS} =     set variable    False
    ${STATUS} =     BusinessAdmin.click bulk edit submit button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Details Of Edited Sources Grid Row
    [Arguments]     ${SOURCE NAME}
    @{LIST OF SOURCE} =         create list         ${SOURCE NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     verify edited sources grid row details      @{LIST OF SOURCE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Save Changes Button
    ${STATUS} =     set variable    False
    ${STATUS} =     BusinessAdmin.click save changes button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Add New Source Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click add new source button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Source
    [Arguments]     ${SOURCE PREFIX}
    ${NEW SOURCE NAME} =     set source      ${SOURCE PREFIX}
    set suite variable      ${NEW SOURCE NAME}
    [Teardown]      run keyword if    '${NEW SOURCE NAME}'==''    Log Screenshot

Verify Set Abbreviation
    [Arguments]     ${ABBREVIATION PREFIX}
    ${NEW ABBREVIATION} =     BusinessAdmin.set abbreviation      ${ABBREVIATION PREFIX}
    set suite variable      ${NEW ABBREVIATION}
    [Teardown]      run keyword if    '${NEW ABBREVIATION}'==''    Log Screenshot

Verify Set Status
    [Arguments]     ${SOURCE STATUS}
    ${STATUS} =     set variable    False
    ${STATUS} =     BusinessAdmin.set status      ${SOURCE STATUS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Account
    [Arguments]     ${SOURCE ACCOUNT}
    ${STATUS} =     set variable    False
    ${STATUS} =     set account      ${SOURCE ACCOUNT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Rate Plan
    [Arguments]     ${RATE PLAN}
    ${STATUS} =     set variable    False
    ${STATUS} =     BusinessAdmin.set rate plan      ${RATE PLAN}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Call Type
    [Arguments]     ${CALL TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     BusinessAdmin.set call type      ${CALL TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Number Plan
    [Arguments]     ${NUMBER PLAN}
    ${STATUS} =     set variable    False
    ${STATUS} =     BusinessAdmin.set number plan      ${NUMBER PLAN}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Reference Price List
    [Arguments]     ${REFERENCE PRICE LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     BusinessAdmin.set reference price list      ${REFERENCE PRICE LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Create New Customer Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click create new customer save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Source For Search
    ${STATUS} =     set variable    False
    ${STATUS} =     set source for search      ${NEW SOURCE NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Sources Grid Row Data
    ${SOURCES GRID ROW} =      get source grid row details
    set suite variable      ${SOURCES GRID ROW}
    ${LENGTH} =     get length      ${SOURCES GRID ROW}
    [Teardown]      run keyword if    '${LENGTH}'=='0'    Log Screenshot

Verify Source Name After Create
    ${ACTUAL SOURCE NAME} =   Get From Dictionary     ${SOURCES GRID ROW}      Source
    should be equal     ${ACTUAL SOURCE NAME}      ${NEW SOURCE NAME}
    [Teardown]      run keyword unless     '${ACTUAL SOURCE NAME}'=='${NEW SOURCE NAME}'    Log Screenshot

Verify Abbreviation After Create
    ${ACTUAL ABBREVIATION} =   Get From Dictionary     ${SOURCES GRID ROW}      Abbreviation
    should be equal     ${ACTUAL ABBREVIATION}      ${NEW ABBREVIATION}
    [Teardown]      run keyword unless     '${ACTUAL ABBREVIATION}'=='${NEW ABBREVIATION}'    Log Screenshot

Verify Status After Create
    [Arguments]     ${SOURCE STATUS}
    ${ACTUAL STATUS} =   Get From Dictionary     ${SOURCES GRID ROW}      Status
    should be equal     ${ACTUAL STATUS}      ${SOURCE STATUS}
    [Teardown]      run keyword unless     '${ACTUAL STATUS}'=='${SOURCE STATUS}'    Log Screenshot

Verify Account After Create
    [Arguments]     ${SOURCE ACCOUNT}
    ${ACTUAL ACCOUNT} =   Get From Dictionary     ${SOURCES GRID ROW}      Account
    should be equal     ${ACTUAL ACCOUNT}      ${SOURCE ACCOUNT}
    [Teardown]      run keyword unless     '${ACTUAL ACCOUNT}'=='${SOURCE ACCOUNT}'    Log Screenshot

Verify Rate Plan After Create
    [Arguments]     ${RATE PLAN}
    ${ACTUAL RATE PLAN} =   Get From Dictionary     ${SOURCES GRID ROW}      Rate Plan
    should be equal     ${ACTUAL RATE PLAN}      ${RATE PLAN}
    [Teardown]      run keyword unless     '${ACTUAL RATE PLAN}'=='${RATE PLAN}'    Log Screenshot

Verify Call Type After Create
    [Arguments]     ${CALL TYPE}
    ${ACTUAL CALL TYPE} =   Get From Dictionary     ${SOURCES GRID ROW}      Call Type
    should be equal     ${ACTUAL CALL TYPE}      ${CALL TYPE}
    [Teardown]      run keyword unless     '${ACTUAL CALL TYPE}'=='${CALL TYPE}'    Log Screenshot

Verify Number Plan After Create
    [Arguments]     ${NUMBER PLAN}
    ${ACTUAL NUMBER PLAN} =   Get From Dictionary     ${SOURCES GRID ROW}      Number Plan
    should be equal     ${ACTUAL NUMBER PLAN}      ${NUMBER PLAN}
    [Teardown]      run keyword unless     '${ACTUAL NUMBER PLAN}'=='${NUMBER PLAN}'    Log Screenshot

Verify Reference Price List After Create
    [Arguments]     ${REFERENCE PRICE LIST}
    ${ACTUAL REFERENCE PRICE LIST} =   Get From Dictionary     ${SOURCES GRID ROW}      Reference Price List:
    should be equal     ${ACTUAL REFERENCE PRICE LIST}      ${REFERENCE PRICE LIST}
    [Teardown]      run keyword unless     '${ACTUAL REFERENCE PRICE LIST}'=='${REFERENCE PRICE LIST}'    Log Screenshot

Verify Set Source Status
    [Arguments]     ${SOURCE STATUS}
    ${STATUS} =     set variable    False
    ${STATUS} =     set source status      ${SOURCE STATUS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Source Grid Save Changes Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click source grid save changes button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Created Source Checkbox
    ${STATUS} =     set variable    False
    ${STATUS} =     select created source checkbox      ${NEW SOURCE NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Delete Button
    ${STATUS} =     set variable    False
    ${STATUS} =     BusinessAdmin.click delete button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Source Grid Multiple Checkbox
    [Arguments]     @{SOURCE LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     select source grid multiple checkbox      @{SOURCE LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Vendor Source Grid Row Data
    ${SOURCES GRID ROW} =      get vendor source grid row details
    set suite variable      ${SOURCES GRID ROW}
    ${LENGTH} =     get length      ${SOURCES GRID ROW}
    [Teardown]      run keyword if    '${LENGTH}'=='0'    Log Screenshot

Verify Set Bulk Edit Route Class
    [Arguments]     ${ROUTE CLASS}
    ${STATUS} =     set variable    False
    ${STATUS} =     set bulk edit route class       ${ROUTE CLASS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Bulk Edit Reference Pricing Policy
    [Arguments]     ${REFERENCE PRICING POLICY}
    ${STATUS} =     set variable    False
    ${STATUS} =     set bulk edit reference pricing policy          ${REFERENCE PRICING POLICY}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Bulk Edit Az Min Selection Threshold
    [Arguments]     ${AZ MIN SELECTION THRESHOLD}
    ${STATUS} =     set variable    False
    ${STATUS} =     set bulk edit az min selection threshold        ${AZ MIN SELECTION THRESHOLD}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Check Bulk Edit Compound Rpl Checkbox
    [Arguments]     ${COMPOUND RPL}
    ${STATUS} =     set variable    False
    ${STATUS} =     check bulk edit compound rpl checkbox       ${COMPOUND RPL}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Source Policies Grid Compound Rpl Checkbox Status
    [Arguments]     ${COMPOUND RPL}     ${SOURCE NAME}
    @{SOURCE LIST} =    create list     ${SOURCE NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is source policies grid compound rpl checkbox checked       ${COMPOUND RPL}     @{SOURCE LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Source And Policies Checkboxes
    [Arguments]     ${CHECKBOX LABEL}       ${CHECK STATUS}
    ${STATUS} =     set variable    False
    ${STATUS} =     select source policies screen checkboxes      ${CHECKBOX LABEL}       ${CHECK STATUS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Reference Account Bulk Edit Number Plan
    [Arguments]     ${NUMBER PLAN}
    ${STATUS} =     set variable    False
    ${STATUS} =     set reference account bulk edit number plan      ${NUMBER PLAN}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Route Class
    [Arguments]     ${ROUTE CLASS}
    ${STATUS} =     set variable    False
    ${STATUS} =     BusinessAdmin.set route class    ${ROUTE CLASS}     ${None}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Note
    [Arguments]     ${NOTE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set note      ${NOTE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Switch Grid Row Data
    ${SOURCES GRID ROW} =      get switch grid row details
    set suite variable      ${SOURCES GRID ROW}
    ${LENGTH} =     get length      ${SOURCES GRID ROW}
    [Teardown]      run keyword if    '${LENGTH}'=='0'    Log Screenshot

Verify Route Class After Create
    [Arguments]     ${ROUTE CLASS}
    ${ACTUAL ROUTE CLASS} =   Get From Dictionary     ${SOURCES GRID ROW}      Route Class
    should be equal     ${ACTUAL ROUTE CLASS}      ${ROUTE CLASS}
    [Teardown]      run keyword unless     '${ACTUAL ROUTE CLASS}'=='${ROUTE CLASS}'    Log Screenshot

Verify Grid Checkbox Is Checked
    [Arguments]     ${CHECKBOX LABEL}       ${CHECKING STATUS}
    ${STATUS} =     set variable    False
    ${STATUS} =     is grid checkbox checked      ${CHECKBOX LABEL}       ${CHECKING STATUS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Target Buy List Source Grid Row Data
    ${SOURCES GRID ROW} =      get target buy list grid row details
    set suite variable      ${SOURCES GRID ROW}
    ${LENGTH} =     get length      ${SOURCES GRID ROW}
    [Teardown]      run keyword if    '${LENGTH}'=='0'    Log Screenshot

Verify Note After Create
    [Arguments]     ${NOTE}
    ${ACTUAL NOTE} =   Get From Dictionary     ${SOURCES GRID ROW}      Note
    should be equal     ${ACTUAL NOTE}      ${NOTE}
    [Teardown]      run keyword unless     '${ACTUAL NOTE}'=='${NOTE}'    Log Screenshot

Verify Get Price Cost Basis Grid Row Data
    ${SOURCES GRID ROW} =      get price cost basis grid row details
    set suite variable      ${SOURCES GRID ROW}
    ${LENGTH} =     get length      ${SOURCES GRID ROW}
    [Teardown]      run keyword if    '${LENGTH}'=='0'    Log Screenshot

Verify Set Abbreviation Without Random String
    [Arguments]     ${ABBREVIATION PREFIX}
    ${NEW ABBREVIATION} =     set abbreviation      ${ABBREVIATION PREFIX}      ${False}
    set suite variable      ${NEW ABBREVIATION}
    [Teardown]      run keyword if    '${NEW ABBREVIATION}'==''    Log Screenshot

Verify Get Origin Reference Price List Grid Row Data
    ${SOURCES GRID ROW} =      get origin reference price list grid row details
    set suite variable      ${SOURCES GRID ROW}
    ${LENGTH} =     get length      ${SOURCES GRID ROW}
    [Teardown]      run keyword if    '${LENGTH}'=='0'    Log Screenshot

Verify Get Quality Of Service Grid Row Data
    ${SOURCES GRID ROW} =      get quality of service grid row details
    set suite variable      ${SOURCES GRID ROW}
    ${LENGTH} =     get length      ${SOURCES GRID ROW}
    [Teardown]      run keyword if    '${LENGTH}'=='0'    Log Screenshot

Verify Set Reference Pricing Policy
    [Arguments]     ${REFERENCE PRICING POLICY}
    ${STATUS} =     set variable    False
    ${STATUS} =     set reference pricing policy    ${REFERENCE PRICING POLICY}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Az Min Selection Threshold
    [Arguments]     ${THRESHOLD}
    ${STATUS} =     set variable    False
    ${STATUS} =     set az min selection threshold      ${THRESHOLD}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Reference Price List Grid Row Details
    ${SOURCES GRID ROW} =      get reference price list grid row details
    set suite variable      ${SOURCES GRID ROW}
    ${LENGTH} =     get length      ${SOURCES GRID ROW}
    [Teardown]      run keyword if    '${LENGTH}'=='0'    Log Screenshot

Verify Reference Pricing Policy After Create
    [Arguments]     ${REFERENCE PRICING POLICY}
    ${ACTUAL REFERENCE PRICING POLICY} =   Get From Dictionary     ${SOURCES GRID ROW}      Reference Pricing Policy
    should be equal     ${ACTUAL REFERENCE PRICING POLICY}      ${REFERENCE PRICING POLICY}
    [Teardown]      run keyword unless     '${ACTUAL REFERENCE PRICING POLICY}'=='${REFERENCE PRICING POLICY}'    Log Screenshot

Verify Az Min Selection Threshold After Create
    [Arguments]     ${THRESHOLD}
    ${ACTUAL THRESHOLD} =   Get From Dictionary     ${SOURCES GRID ROW}      A-Z Min Selection Threshold
    should be equal     ${ACTUAL THRESHOLD}      ${THRESHOLD}
    [Teardown]      run keyword unless     '${ACTUAL THRESHOLD}'=='${THRESHOLD}'    Log Screenshot

Verify Get Reference Account Grid Row Data
    ${SOURCES GRID ROW} =      get reference account grid row details
    set suite variable      ${SOURCES GRID ROW}
    ${LENGTH} =     get length      ${SOURCES GRID ROW}
    [Teardown]      run keyword if    '${LENGTH}'=='0'    Log Screenshot

Verify Number Plan After Reference Account Create
    [Arguments]     ${NUMBER PLAN}
    ${ACTUAL NUMBER PLAN} =   Get From Dictionary     ${SOURCES GRID ROW}      NumberPlan
    should be equal     ${ACTUAL NUMBER PLAN}      ${NUMBER PLAN}
    [Teardown]      run keyword unless     '${ACTUAL NUMBER PLAN}'=='${NUMBER PLAN}'    Log Screenshot

Verify Get Reference Pricing Policy Source Grid Row Data
    ${SOURCES GRID ROW} =      get reference pricing policy grid row details
    set suite variable      ${SOURCES GRID ROW}
    ${LENGTH} =     get length      ${SOURCES GRID ROW}
    [Teardown]      run keyword if    '${LENGTH}'=='0'    Log Screenshot

Verify Expand Groups and Categories Menu
    ${STATUS} =     set variable    False
    ${STATUS} =     expand groups and categories menu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Categories Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click categories submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Category Scope For Search
    [Arguments]     @{LIST OF CATEGORY SCOPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set category scope for search       @{LIST OF CATEGORY SCOPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Categories Search Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click categories search button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Categories Grid Inline Action Button
    [Arguments]     ${CATEGORY SCOPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     click categories grid inline action button       ${CATEGORY SCOPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Move Countries To Destination
    [Arguments]     @{LIST OF COUNTRIES}
    ${STATUS} =     set variable    False
    ${STATUS} =     move countries to destination       @{LIST OF COUNTRIES}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Reassign Countries To Source
    ${STATUS} =     set variable    False
    ${STATUS} =     reassign countries to source
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Edit Category Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click edit category save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Assigned Countries List
    ${STATUS} =     set variable    False
    ${LIST OF ASSIGNED COUNTRIES} =     get assigned countries list
    ${STATUS} =     set variable    True
    set suite variable      ${LIST OF ASSIGNED COUNTRIES}
    log      ${LIST OF ASSIGNED COUNTRIES}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Countries Are Successfully Assigned
    [Arguments]     @{LIST OF COUNTRIES}
    ${STATUS} =     set variable    False
    lists should be equal     ${LIST OF COUNTRIES}        ${LIST OF ASSIGNED COUNTRIES}
    ${STATUS} =     set variable    True
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify All Countries Moved To Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is all countries moved to available
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Edit Category Cancel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click edit category cancel button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Country Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click country submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Country Groups Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click country groups button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Create Country Group Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click create country group button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Country Group Scope
    [Arguments]     ${COUNTRY GROUP SCOPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     BusinessAdmin.set country group scope         ${COUNTRY GROUP SCOPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Country Group
    [Arguments]     ${COUNTRY GROUP PREFIX}
    ${COUNTRY GROUP} =      BusinessAdmin.set country group       ${COUNTRY GROUP PREFIX}
    set suite variable      ${COUNTRY GROUP}
    log         ${COUNTRY GROUP}
    [Teardown]      run keyword if    '${COUNTRY GROUP}'==''    Log Screenshot

Verify Move Available Countries To Destination
    ${STATUS} =     set variable    False
    ${STATUS} =      BusinessAdmin.move available countries to destination
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Save Country Group
    ${STATUS} =     set variable    False
    ${STATUS} =     click save country group
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Close Country Group Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     close country group tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Country Group
    ${STATUS} =     set variable    False
    @{COUNTRY GROUP} =      create list         ${COUNTRY GROUP}
    ${STATUS} =      select country group       @{COUNTRY GROUP}
    log     @{COUNTRY GROUP}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Country Group Search Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click country group search button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Country Group Grid Row Details
    ${COUNTRY GROUP GRID ROW DETAILS} =      get country group grid row details
    set suite variable      ${COUNTRY GROUP GRID ROW DETAILS}
    ${LENGTH} =     get length      ${COUNTRY GROUP GRID ROW DETAILS}
    [Teardown]      run keyword if    '${LENGTH}'=='0'    Log Screenshot

Verify Country Group Scope
    [Arguments]     ${COUNTRY GROUP SCOPE}
    ${ACTUAL COUNTRY GROUP SCOPE} =   Get From Dictionary     ${COUNTRY GROUP GRID ROW DETAILS}      Country Group Scope
    should be equal     ${ACTUAL COUNTRY GROUP SCOPE}      ${COUNTRY GROUP SCOPE}
    [Teardown]      run keyword unless     '${ACTUAL COUNTRY GROUP SCOPE}'=='${COUNTRY GROUP SCOPE}'    Log Screenshot

Verify Country Group
    ${ACTUAL COUNTRY GROUP} =   Get From Dictionary     ${COUNTRY GROUP GRID ROW DETAILS}      Country Group
    should be equal     ${ACTUAL COUNTRY GROUP}      ${COUNTRY GROUP}
    [Teardown]      run keyword unless     '${ACTUAL COUNTRY GROUP}'=='${COUNTRY GROUP}'    Log Screenshot

Verify Assigned Country(s)
    [Arguments]     @{AVAILABLE COUNTRY LIST}
    ${STATUS} =         set variable    False
    ${COUNTRY} =        set variable    ${EMPTY}
    ${ACTUAL COUNTRY} =   Get From Dictionary     ${COUNTRY GROUP GRID ROW DETAILS}      Countries
    :For  ${COUNTRY}   IN       @{AVAILABLE COUNTRY LIST}
    \   should contain     ${ACTUAL COUNTRY}        ${COUNTRY}
    ${STATUS} =         set variable    True
    [Teardown]      run keyword if     '${STATUS}'=='False'    Log Screenshot

Verify Click Country Group Grid Inline Action Button
    ${STATUS} =     set variable    False
    ${STATUS} =     BusinessAdmin.click country group grid inline action button       ${COUNTRY GROUP}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Country Group Grid Inline Action Item
    [Arguments]     ${INLINE ITEM NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     BusinessAdmin.select country group grid inline action item       ${INLINE ITEM NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Created Country Group Checkbox
    ${STATUS} =     set variable    False
    ${STATUS} =     select created country group checkbox       ${COUNTRY GROUP}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Country Group Delete Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click country group delete button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Regions Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click regions button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click New Region Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click new region button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Value In Regions Grid First Row Column
    [Arguments]     ${COLUMN NAME}      ${COLUMN VALUE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set value in regions grid first row column      ${COLUMN NAME}      ${COLUMN VALUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Regions Grid Row Checkbox
    [Arguments]     ${ROW IDENTIFIER TEXT}
    ${STATUS} =     set variable    False
    ${STATUS} =     select regions grid row checkbox    ${ROW IDENTIFIER TEXT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Regions Save Changes Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click regions save changes button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Region
    [Arguments]     ${REGION NAME}
    @{REGION LIST} =    create list     ${REGION NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set region      @{REGION LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Generic Search Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click generic search button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Delete Region Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click delete region button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Regions Grid Row Details
    ${REGIONS GRID ROW DETAILS} =      get regions grid row details
    set suite variable      ${REGIONS GRID ROW DETAILS}
    ${LENGTH} =     get length      ${REGIONS GRID ROW DETAILS}
    [Teardown]      run keyword if    '${LENGTH}'=='0'    Log Screenshot

Verify Regions Grid Row Data
    [Arguments]     ${REGION}
    ${STATUS} =     set variable    False
    ${CREATED REGION GRID ROW DETAILS} =   create dictionary     Region=${REGION}
    log     ${CREATED REGION GRID ROW DETAILS}
    dictionaries should be equal        ${CREATED REGION GRID ROW DETAILS}      ${REGIONS GRID ROW DETAILS}
    ${STATUS} =     set variable    True
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click New Country Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click new country button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set New Country Region
    [Arguments]     ${REGION}
    ${STATUS} =     set variable    False
    ${STATUS} =     set new country region      ${REGION}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set New Country Country Type
    [Arguments]     ${COUNTRY TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set new country country type    ${COUNTRY TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set New Country Buy Country Group
    [Arguments]     ${BUY COUNTRY GROUP}
    ${STATUS} =     set variable    False
    ${STATUS} =     set new country buy country group       ${BUY COUNTRY GROUP}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set New Country Sell Country Group
    [Arguments]     ${SELL COUNTRY GROUP}
    ${STATUS} =     set variable    False
    ${STATUS} =     set new country sell country group      ${SELL COUNTRY GROUP}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set New Country Country Name
    [Arguments]     ${COUNTRY NAME PREFIX}      ${COUNTRY NAME}
    ${CREATED COUNTRY NAME} =      set new country country name     ${COUNTRY NAME PREFIX}      ${COUNTRY NAME}
    set suite variable      ${CREATED COUNTRY NAME}
    should not be equal     '${CREATED COUNTRY NAME}'     ''
    [Teardown]      run keyword if    '${CREATED COUNTRY NAME}'==''    Log Screenshot

Verify Set New Country Country Abbreviation
    [Arguments]     ${COUNTRY ABBREVIATION PREFIX}
    ${CREATED COUNTRY ABBREVIATION} =      set new country country abbreviation     ${COUNTRY ABBREVIATION PREFIX}
    set suite variable      ${CREATED COUNTRY ABBREVIATION}
    should not be equal     '${CREATED COUNTRY ABBREVIATION}'     ''
    [Teardown]      run keyword if    '${CREATED COUNTRY ABBREVIATION}'==''    Log Screenshot

Verify Set New Country Country Code
    ${STATUS} =     set variable    False
    ${STATUS} =     set new country country code
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set New Country Mobile Country Code
    ${CREATED MOBILE COUNTRY CODE} =      set new country mobile country code
    set suite variable      ${CREATED MOBILE COUNTRY CODE}
    should not be equal     '${CREATED MOBILE COUNTRY CODE}'     ''
    [Teardown]      run keyword if    '${CREATED MOBILE COUNTRY CODE}'==''    Log Screenshot

Verify Click New Country Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click new country save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Country
    ${STATUS} =     set variable    False
    ${STATUS} =     set country     ${CREATED COUNTRY NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Search Button
    ${STATUS} =     set variable    False
    ${STATUS} =     BusinessAdmin.click search button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Countries Grid Row Details
    ${COUNTRIES GRID ROW DATA} =      get countries grid row details
    set suite variable      ${COUNTRIES GRID ROW DATA}
    ${LENGTH} =     get length      ${COUNTRIES GRID ROW DATA}
    [Teardown]      run keyword if    '${LENGTH}'=='0'    Log Screenshot

Verify Select Countries Grid Row Checkbox
    ${STATUS} =     set variable    False
    ${STATUS} =     select countries grid row checkbox      ${CREATED COUNTRY NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Country Bulk Edit Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click country bulk edit button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Bulk Edit Buy Country Group
    ${STATUS} =     set variable    False
    ${STATUS} =     set bulk edit buy country group
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Bulk Edit Sell Country Group
    ${STATUS} =     set variable    False
    ${STATUS} =     set bulk edit sell country group
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Countries Grid Row Details
    [Arguments]     ${REGION}   ${COUNTRY TYPE}
    ${STATUS} =     set variable    False
    ${CREATED COUNTRIES GRID ROW DETAILS} =   create dictionary     Region=${REGION}      Country Type:=${COUNTRY TYPE}     Country=${CREATED COUNTRY NAME}     Country Abbreviation=${CREATED COUNTRY ABBREVIATION}
    log     ${CREATED COUNTRIES GRID ROW DETAILS}
    dictionaries should be equal        ${CREATED COUNTRIES GRID ROW DETAILS}      ${COUNTRIES GRID ROW DATA}
    ${STATUS} =     set variable    True
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Grid Filter Details
    [Arguments]     ${COLUMN NAME}      @{FILTER ITEM LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     grid filter details     ${COLUMN NAME}      @{FILTER ITEM LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click New Category Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click new category button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Category Scope For New Category
    [Arguments]     ${CATEGORY SCOPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set new category category scope     ${CATEGORY SCOPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Category Type For New Category
    [Arguments]     ${CATEGORY TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set new category category type     ${CATEGORY TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Category Name
    [Arguments]     ${CATEGORY NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set category name     ${CATEGORY NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Category Abbreviation
    [Arguments]     ${CATEGORY ABBREVIATION}
    ${STATUS} =     set variable    False
    ${STATUS} =     set category abbreviation     ${CATEGORY ABBREVIATION}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click New Category Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click new category save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Category Scope
    [Arguments]     @{CATEGORY SCOPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set category scope     @{CATEGORY SCOPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Category Type
    [Arguments]     @{CATEGORY TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set category type     @{CATEGORY TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Categories Grid Row Checkbox
    [Arguments]     ${ROW IDENTIFIER TEXT}
    ${STATUS} =     set variable    False
    ${STATUS} =     select categories grid row checkbox      ${ROW IDENTIFIER TEXT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Categories Grid Row Details
    ${CATEGORIES GRID ROW DATA} =      get categories grid row details
    set suite variable      ${CATEGORIES GRID ROW DATA}
    ${LENGTH} =     get length      ${CATEGORIES GRID ROW DATA}
    [Teardown]      run keyword if    '${LENGTH}'=='0'    Log Screenshot

Verify Click Categories Grid Delete Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click categories grid delete button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Categories Grid Row Data
    [Arguments]     ${CATEGORY SCOPE}       ${CATEGORY TYPE}        ${CATEGORY NAME}        ${CATEGORY ABBREVIATION}
    ${STATUS} =     set variable    False
    ${CREATED CATEGORY DETAILS} =   create dictionary     Category Scope=${CATEGORY SCOPE}      Category Type=${CATEGORY TYPE}       Category=${CATEGORY NAME}       Abbreviation=${CATEGORY ABBREVIATION}
    log     ${CREATED CATEGORY DETAILS}
    dictionaries should be equal        ${CREATED CATEGORY DETAILS}      ${CATEGORIES GRID ROW DATA}
    ${STATUS} =     set variable    True
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Expand Currency And Exchange Rates Menu
    ${STATUS} =     set variable    False
    ${STATUS} =     expand currency and exchange rates menu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Currency And Exchange Rates Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click currency and exchange rates submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click New Exchange Rate Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click new exchange rate button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Exchange Rate Types For Search
    [Arguments]     @{EXCHANGE RATE TYPE LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     set exchange rate types for search      @{EXCHANGE RATE TYPE LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Currency For Search
    [Arguments]     ${CURRENCY NAME}
    @{CURRENCY LIST} =      create list         ${CURRENCY NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set currency for search     @{CURRENCY LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Exchange Rate Type
    [Arguments]     ${EXCHANGE RATE TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set exchange rate type      ${EXCHANGE RATE TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Currency
    [Arguments]     ${CURRENCY}
    ${STATUS} =     set variable    False
    ${STATUS} =     set currency        ${CURRENCY}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Exchange Rate
    [Arguments]     ${EXCHANGE RATE}
    ${CREATED EXCHANGE RATE} =     set exchange rate       ${EXCHANGE RATE}
    set suite variable      ${CREATED EXCHANGE RATE}
    should not be equal     '${CREATED EXCHANGE RATE}'    ''
    [Teardown]      run keyword if    '${CREATED EXCHANGE RATE}'==''    Log Screenshot

Verify Set Exchange Rate Begin Date
    [Arguments]     ${BEGIN DATE}
    ${CREATED EXCHANGE RATE BEGIN DATE} =     set exchange rate begin date      ${BEGIN DATE}
    set suite variable      ${CREATED EXCHANGE RATE BEGIN DATE}
    should not be equal     '${CREATED EXCHANGE RATE BEGIN DATE}'    ''
    [Teardown]      run keyword if    '${CREATED EXCHANGE RATE BEGIN DATE}'==''    Log Screenshot

Verify Click Add Exchange Rate Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click add exchange rate save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Exchange Rates Grid Row Details
    ${EXCHANGE RATES GRID ROW DATA} =      get exchange rates grid row details
    set suite variable      ${EXCHANGE RATES GRID ROW DATA}
    ${LENGTH} =     get length      ${EXCHANGE RATES GRID ROW DATA}
    [Teardown]      run keyword if    '${LENGTH}'=='0'    Log Screenshot

Verify Set Exchange Rate Begin Date For Search
    [Arguments]     ${BEGIN DATE}=${CREATED EXCHANGE RATE BEGIN DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set begin date      ${BEGIN DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Exchange Rates Grid Row Details
    [Arguments]     ${EXCHANGE RATE TYPE}       ${CURRENCY}
    ${STATUS} =     set variable    False
    ${CREATED EXCHANGE RATES DETAILS} =   create dictionary     Exchange Rate Type=${EXCHANGE RATE TYPE}      Currency=${CURRENCY}     Exchange Rate=${CREATED EXCHANGE RATE}     Begin Date=${CREATED EXCHANGE RATE BEGIN DATE}
    log     ${CREATED EXCHANGE RATES DETAILS}
    dictionaries should be equal        ${CREATED EXCHANGE RATES DETAILS}      ${EXCHANGE RATES GRID ROW DATA}
    ${STATUS} =     set variable    True
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Exchange Rates Grid Inline Action Button
    [Arguments]     ${ROW IDENTIFIER TEXT}
    ${STATUS} =     set variable    False
    ${STATUS} =     click exchange rates grid inline action button      ${ROW IDENTIFIER TEXT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Exchange Rate Delete Inline Item
    ${STATUS} =     set variable    False
    ${STATUS} =    click exchange rate delete inline item
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Expand Routing Menu
    ${STATUS} =     set variable    False
    ${STATUS} =     expand routing menu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Route Class Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click route class submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Route Class Grid First Row Data
    ${STATUS} =     set variable    False
    ${STATUS} =     get route class grid first row data
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Add Route Class Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click add route class button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Route Class Name
    [Arguments]     ${NAME PREFIX}
    ${CREATED ROUTE CLASS NAME} =     set route class name    ${NAME PREFIX}
    set suite variable      ${CREATED ROUTE CLASS NAME}
    [Teardown]      run keyword if    '${CREATED ROUTE CLASS NAME}'==''    Log Screenshot

Verify Set Route Class Abbreviation
    [Arguments]     ${ABBREVIATION PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     BusinessAdmin.set route class abbreviation    ${ABBREVIATION PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Target Fulfillment Order
    [Arguments]     ${TARGET FULFILLMENT ORDER STATUS}
    ${STATUS} =     set variable    False
    ${STATUS} =     BusinessAdmin.set target fulfillment order    ${TARGET FULFILLMENT ORDER STATUS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Capacity Saturation Order
    [Arguments]     ${CAPACITY SATURATION ORDER STATUS}
    ${STATUS} =     set variable    False
    ${STATUS} =     BusinessAdmin.set capacity saturation order    ${CAPACITY SATURATION ORDER STATUS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Minimum Direct Percent
    [Arguments]     ${MINIMUM DIRECT PERCENT}
    ${STATUS} =     set variable    False
    ${STATUS} =     set minimum direct percent    ${MINIMUM DIRECT PERCENT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Add Edit Route Class Save Button
    [Arguments]     ${ERROR FIELD LABEL TEXT}
    ${STATUS} =     set variable    False
    ${STATUS} =     click add edit route class save button      ${ERROR FIELD LABEL TEXT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Auto Suggest Checkbox
    [Arguments]     ${SELECTION STATUS}
    ${STATUS} =     set variable    False
    ${STATUS} =     select auto suggest checkbox        ${SELECTION STATUS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Add Edit Route Class Cancel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click add edit route class cancel button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Auto Suggested Value Field Is Disabled
    [Arguments]     ${FIELD LABEL TEXT}
    ${STATUS} =     set variable    False
    ${STATUS} =     is auto suggested value field disabled    ${FIELD LABEL TEXT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Auto Suggested Value
    [Arguments]     ${FIELD LABEL TEXT}     ${EXPECTED VALUE}
    ${ACTUAL VALUE} =     get auto suggested value    ${FIELD LABEL TEXT}
    should be equal     ${ACTUAL VALUE}     ${EXPECTED VALUE}
    [Teardown]      run keyword unless    '${ACTUAL VALUE}'=='${EXPECTED VALUE}'    Log Screenshot

Verify Set AEP Distribution Group
    [Arguments]     ${AEP DISTRIBUTION GROUP}
    ${STATUS} =     set variable    False
    ${STATUS} =     set aep distribution group    ${AEP DISTRIBUTION GROUP}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set CDR Route Class
    [Arguments]     ${CDR ROUTE CLASS}
    ${STATUS} =     set variable    False
    ${STATUS} =     set cdr route class    ${CDR ROUTE CLASS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Selected For Routing Checkbox
    [Arguments]     ${SELECTION STATUS}
    ${STATUS} =     set variable    False
    ${STATUS} =     select selected for routing checkbox        ${SELECTION STATUS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select CLI Guarantee Checkbox
    [Arguments]     ${SELECTION STATUS}
    ${STATUS} =     set variable    False
    ${STATUS} =     select cli guarantee checkbox        ${SELECTION STATUS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get New Route Class Data
    ${NEW ROUTE CLASS DATA} =      get new route class data
    ${TEMP ROUTE CLASS DATA} =      copy dictionary       ${NEW ROUTE CLASS DATA}
    set suite variable      ${TEMP ROUTE CLASS DATA}
    ${LENGTH} =     get length      ${TEMP ROUTE CLASS DATA}
    [Teardown]      run keyword if    '${LENGTH}'=='0'    Log Screenshot

Verify Filter Route Class Grid
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     filter route class grid        ${COLUMN NAME}      ${CREATED ROUTE CLASS NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Route Class Grid Row Data
    ${ROUTE CLASS GRID ROW DATA} =      get route class grid row data
    set suite variable      ${ROUTE CLASS GRID ROW DATA}
    ${LENGTH} =     get length      ${ROUTE CLASS GRID ROW DATA}
    [Teardown]      run keyword if    '${LENGTH}'=='0'    Log Screenshot

Verify Click Route Class Grid Inline Action Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click route class grid inline action button        ${CREATED ROUTE CLASS NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Route Class Inline Action Item
    [Arguments]     ${INLINE ITEM}
    ${STATUS} =     set variable    False
    ${STATUS} =     select route class inline action item        ${INLINE ITEM}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Route Class Grid Row Data After Create
    ${STATUS} =     set variable    False
    dictionaries should be equal        ${ROUTE CLASS GRID ROW DATA}        ${TEMP ROUTE CLASS DATA}
    ${STATUS} =     set variable    True
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Clear All Table Filters
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     clear all table filters     ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Network Codes Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click network codes submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Network Destinations Grid First Row Inline Action Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click network destinations grid first row inline action button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Add Network Code Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click add network code button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Add Cdr Match Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click add cdr match button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Network Code
    [Arguments]     ${NETWORK CODE PREFIX}
    ${CREATED NETWORK CODE} =     set network code     ${NETWORK CODE PREFIX}
    set suite variable      ${CREATED NETWORK CODE}
    should not be equal     '${CREATED NETWORK CODE}'    ''
    [Teardown]      run keyword if    '${CREATED NETWORK CODE}'==''    Log Screenshot

Verify Set Network Code Begin Date
    ${STATUS} =     set variable    False
    ${STATUS} =     set network code begin date
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Network Code End Date
    ${STATUS} =     set variable    False
    ${STATUS} =     set network code end date
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Network Code Save Changes Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click network code save changes button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Network Codes Grid Inline Action Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click network codes grid inline action button       ${CREATED NETWORK CODE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Network Code Delete Inline Item
    ${STATUS} =     set variable    False
    ${STATUS} =     select network code delete inline item
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Cdr Match
    [Arguments]     ${CDR MATCH}
    ${STATUS} =     set variable    False
    ${STATUS} =     set cdr match       ${CDR MATCH}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Cdr Match Begin Date
    ${STATUS} =     set variable    False
    ${STATUS} =     set cdr match begin date
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Cdr Match End Date
    ${STATUS} =     set variable    False
    ${STATUS} =     set cdr match end date
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Cdr Match Save Changes Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click cdr match save changes button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Cdr Matches Grid Inline Action Button
    [Arguments]     ${ROW IDENTIFIER TEXT}
    ${STATUS} =     set variable    False
    ${STATUS} =     click cdr matches grid inline action button         ${ROW IDENTIFIER TEXT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Cdr Match Delete Inline Item
    ${STATUS} =     set variable    False
    ${STATUS} =     select cdr match delete inline item
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Close Current Pop Up
    [Arguments]     ${POP UP NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     BusinessAdmin.close current pop up        ${POP UP NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Save Changes Button Without Confirmation
    ${STATUS} =     set variable    False
    ${STATUS} =     click save changes button without confirmation
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Add Network Destination Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click add network destination button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Network Destination
    [Arguments]     ${NETWORK DESTINATION PREFIX}
    ${CREATED NETWORK DESTINATION} =     set network destination     ${NETWORK DESTINATION PREFIX}
    set suite variable      ${CREATED NETWORK DESTINATION}
    should not be equal     '${CREATED NETWORK DESTINATION}'    ''
    [Teardown]      run keyword if    '${CREATED NETWORK DESTINATION}'==''    Log Screenshot

Verify Set Destination Abbreviation
    [Arguments]     ${DESTINATION ABBREVIATION}
    ${STATUS} =     set variable    False
    ${STATUS} =     set destination abbreviation        ${DESTINATION ABBREVIATION}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Network Destination Country
    [Arguments]     ${COUNTRY NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set network destination country         ${COUNTRY NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Call Char
    [Arguments]     ${CALL CHAR}
    ${STATUS} =     set variable    False
    ${STATUS} =     set call char       ${CALL CHAR}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Network Destination Begin Date
    ${NETWORK DESTINATION BEGIN DATE} =     set network destination begin date
    set suite variable      ${NETWORK DESTINATION BEGIN DATE}
    should not be equal     '${NETWORK DESTINATION BEGIN DATE}'    ''
    [Teardown]      run keyword if    '${NETWORK DESTINATION BEGIN DATE}'==''    Log Screenshot

Verify Set Network Destination End Date
    ${NETWORK DESTINATION END DATE} =     set network destination end date
    set suite variable      ${NETWORK DESTINATION END DATE}
    should not be equal     '${NETWORK DESTINATION END DATE}'    ''
    [Teardown]      run keyword if    '${NETWORK DESTINATION END DATE}'==''    Log Screenshot

Verify Set Internal Code
    [Arguments]     ${INTERNAL CODE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set internal code       ${INTERNAL CODE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set External Code
    [Arguments]     ${EXTERNAL CODE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set external code       ${EXTERNAL CODE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Network Destinations Grid First Row Details
    ${NETWORK DESTINATION GRID ROW DATA} =      get network destinations grid first row details
    set suite variable      ${NETWORK DESTINATION GRID ROW DATA}
    ${LENGTH} =     get length      ${NETWORK DESTINATION GRID ROW DATA}
    [Teardown]      run keyword if    '${LENGTH}'=='0'    Log Screenshot

Verify Add Duplicate Network Destination
    ${STATUS} =     set variable    False
    ${STATUS} =     add duplicate network destination
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Add Network Destination Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click add network destination save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Country For Search
    [Arguments]     ${COUNTRY NAME}
    @{COUNTRY LIST} =       create list     ${COUNTRY NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set country for search      @{COUNTRY LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Created Network Destination For Search
    @{NETWORK DESTINATION LIST} =       create list     ${CREATED NETWORK DESTINATION}
    ${STATUS} =     set variable    False
    ${STATUS} =     set network destination for search      @{NETWORK DESTINATION LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Network Destination Begin Date For Search
    ${STATUS} =     set variable    False
    ${STATUS} =     set begin date      ${NETWORK DESTINATION BEGIN DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Network Destination End Date For Search
    ${STATUS} =     set variable    False
    ${STATUS} =     set end date      ${NETWORK DESTINATION END DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Value In Network Destinations Grid First Row Column
    [Arguments]     ${COLUMN NAME}      ${COLUMN VALUE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set value in network destinations grid first row column         ${COLUMN NAME}      ${COLUMN VALUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Created Network Destinations Details
    [Arguments]     ${DESTINATION ABBREVIATION}     ${COUNTRY NAME}     ${CALL CHAR}        ${INTERNAL CODE}        ${EXTERNAL CODE}
    ${STATUS} =     set variable    False
    ${CREATED NETWORK DESTINATION DETAILS} =   create dictionary     Network Destination=${CREATED NETWORK DESTINATION}      Destination Abbreviation=${DESTINATION ABBREVIATION}     Country=${COUNTRY NAME}     Call Char=${CALL CHAR}    Begin Date=${NETWORK DESTINATION BEGIN DATE}    End Date=${NETWORK DESTINATION END DATE}    Internal Code=${INTERNAL CODE}      External Code=${EXTERNAL CODE}
    dictionaries should be equal        ${CREATED NETWORK DESTINATION DETAILS}      ${NETWORK DESTINATION GRID ROW DATA}
    ${STATUS} =     set variable    True
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Route Class Export To Excel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click route class export to excel button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Compare Number Plan Uploads Grid Row Count After Upload
    ${STATUS} =     set variable    False
    ${STATUS} =     compare number plan uploads grid row count after upload
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Countries Grid Total Number Of Records Returned
    ${STATUS} =     set variable    False
    ${STATUS} =     is countries grid total number of records returned
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Source Policies Grid Total Number Of Records Returned
    ${STATUS} =     set variable    False
    ${STATUS} =     is source policies grid total number of records returned
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Expand Rating Menu
    ${STATUS} =     set variable    False
    ${STATUS} =     expand rating menu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Daylight Saving Zone Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click daylight saving zone submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Bill Cycle And Settlement Management Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click bill cycle and settlement management submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Close Business Admin Window
    ${STATUS} =     set variable    False
    ${STATUS} =     close business admin window
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Expand Bill And Audit Menu
    ${STATUS} =     set variable    False
    ${STATUS} =     expand bill and audit menu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Statement Numbering Templates Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click statement numbering templates submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Categories Grid First Row Inline Action Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click categories grid first row inline action button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set View Edit Category Type
    [Arguments]     ${CATEGORY TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set view edit category type       ${CATEGORY TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set View Edit Category Number Plan Type
    [Arguments]     ${NUMBER PLAN TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set view edit category number plan type       ${NUMBER PLAN TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set View Edit Category Number Plan
    [Arguments]     ${NUMBER PLAN}
    ${STATUS} =     set variable    False
    ${STATUS} =     set view edit category number plan       ${NUMBER PLAN}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Exchange Rates Search Is Successful
    ${STATUS} =     set variable    False
    ${STATUS} =     is exchange rates search successful
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Country Groups Search Is Successful
    ${STATUS} =     set variable    False
    ${STATUS} =     is country groups search successful
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Rating Method Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click rating method submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Country Grid Last Modified Date Column Value Format
    [Arguments]     ${EXPECTED TIME STAMP FORMAT}
    ${LAST MODIFIED DATE VALUE} =    get country grid last modified date column value
    log     ${LAST MODIFIED DATE VALUE}
    ${STATUS} =     BusinessAdmin.validate date format         ${LAST MODIFIED DATE VALUE}          ${EXPECTED TIME STAMP FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Country Groups Management Grid Last Modified Date Column Value Format
    [Arguments]     ${EXPECTED TIME STAMP FORMAT}
    ${LAST MODIFIED DATE VALUE} =    get country group management grid last modified date column value
    log     ${LAST MODIFIED DATE VALUE}
    ${STATUS} =     BusinessAdmin.validate date format         ${LAST MODIFIED DATE VALUE}          ${EXPECTED TIME STAMP FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Business Admin Dashboard
    ${STATUS} =     set variable    False
    ${STATUS} =     select business admin dashboard tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Number Plan Grid Last Modified Date Column Value Format
    [Arguments]     ${EXPECTED TIME STAMP FORMAT}
    ${LAST MODIFIED DATE VALUE} =    get number plan grid last modified date column value
    log     ${LAST MODIFIED DATE VALUE}
    ${STATUS} =     BusinessAdmin.validate date format         ${LAST MODIFIED DATE VALUE}          ${EXPECTED TIME STAMP FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Number Plan Uploads From Date Value Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${FROM DATE VALUE} =    get number plan uploads from date
    log     ${FROM DATE VALUE}
    ${STATUS} =     BusinessAdmin.validate date format         ${FROM DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Number Plan Uploads To Date Value Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${TO DATE VALUE} =    get number plan uploads to date
    log     ${TO DATE VALUE}
    ${STATUS} =     BusinessAdmin.validate date format         ${TO DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Number Plan Uploads Grid Upload Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${UPLOAD DATE VALUE} =    get number plan uploads grid upload date
    log     ${UPLOAD DATE VALUE}
    ${STATUS} =     BusinessAdmin.validate date format         ${UPLOAD DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Number Plan Uploads Grid Modified Date Column Value Format
    [Arguments]     ${EXPECTED TIME STAMP FORMAT}
    ${LAST MODIFIED DATE VALUE} =    get number plan uploads grid modified date
    log     ${LAST MODIFIED DATE VALUE}
    ${STATUS} =     BusinessAdmin.validate date format         ${LAST MODIFIED DATE VALUE}          ${EXPECTED TIME STAMP FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Network Codes Begin Date Value Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${BEGIN DATE VALUE} =    get network codes begin date
    log     ${BEGIN DATE VALUE}
    ${STATUS} =     BusinessAdmin.validate date format         ${BEGIN DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Network Codes Grid Begin Date Column Value Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${BEGIN DATE VALUE} =    get network codes grid begin date column value
    log     ${BEGIN DATE VALUE}
    ${STATUS} =     BusinessAdmin.validate date format         ${BEGIN DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Network Codes Grid Modified Date Column Value Format
    [Arguments]     ${EXPECTED TIME STAMP FORMAT}
    ${MODIFIED DATE VALUE} =    get network codes grid modified date column value
    log     ${MODIFIED DATE VALUE}
    ${STATUS} =     BusinessAdmin.validate date format         ${MODIFIED DATE VALUE}          ${EXPECTED TIME STAMP FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Origin Set Management Select Date Value Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${SELECT DATE VALUE} =    get origin set management select date
    log     ${SELECT DATE VALUE}
    ${STATUS} =     BusinessAdmin.validate date format         ${SELECT DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Origin Set Management Grid Begin Date Column Value Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${BEGIN DATE VALUE} =    get origin set management grid begin date column value
    log     ${BEGIN DATE VALUE}
    ${STATUS} =     BusinessAdmin.validate date format         ${BEGIN DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Origin Set Management Grid Modified Date Column Value Format
    [Arguments]     ${EXPECTED TIME STAMP FORMAT}
    ${MODIFIED DATE VALUE} =    get origin set management grid modified date column value
    log     ${MODIFIED DATE VALUE}
    ${STATUS} =     BusinessAdmin.validate date format         ${MODIFIED DATE VALUE}          ${EXPECTED TIME STAMP FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Expand Company Menu
    ${STATUS} =     set variable    False
    ${STATUS} =     expand company menu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Company Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click company submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Company Grid Last Modified Date Column Value Format
    [Arguments]     ${EXPECTED TIME STAMP FORMAT}
    ${LAST MODIFIED DATE VALUE} =    get company grid last modified column value
    log     ${LAST MODIFIED DATE VALUE}
    ${STATUS} =     BusinessAdmin.validate date format         ${LAST MODIFIED DATE VALUE}          ${EXPECTED TIME STAMP FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Currency and Exchange Rates Begin Date Value Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${BEGIN DATE VALUE} =    get currency and exchange rates begin date
    log     ${BEGIN DATE VALUE}
    ${STATUS} =     BusinessAdmin.validate date format         ${BEGIN DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Currency and Exchange Rates Grid Exchange Rate Currency Format
    [Arguments]     ${LOCALE FOR CURRENCY FORMAT}
    ${EXCHANGE RATE COLUMN VALUE} =     get exchange rate column value
    Log      ${EXCHANGE RATE COLUMN VALUE}
    ${STATUS} =     BusinessAdmin.validate currency format         ${EXCHANGE RATE COLUMN VALUE}          ${LOCALE FOR CURRENCY FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Exchange Rates Begin Date Column Value Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${BEGIN DATE VALUE} =    get exchange rates begin date column value
    log     ${BEGIN DATE VALUE}
    ${STATUS} =     BusinessAdmin.validate date format         ${BEGIN DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Exchange Rates Grid Last Modified Date Column Value Format
    [Arguments]     ${EXPECTED TIME STAMP FORMAT}
    ${LAST MODIFIED DATE VALUE} =    get exchange rates last modified column value
    log     ${LAST MODIFIED DATE VALUE}
    ${STATUS} =     BusinessAdmin.validate date format         ${LAST MODIFIED DATE VALUE}          ${EXPECTED TIME STAMP FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Currency Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click currency button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Currency Grid Last Modified Date Column Value Format
    [Arguments]     ${EXPECTED TIME STAMP FORMAT}
    ${LAST MODIFIED DATE VALUE} =    get currency grid last modified column value
    log     ${LAST MODIFIED DATE VALUE}
    ${STATUS} =     BusinessAdmin.validate date format         ${LAST MODIFIED DATE VALUE}          ${EXPECTED TIME STAMP FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Categories Grid Modified Date Column Value Format
    [Arguments]     ${EXPECTED TIME STAMP FORMAT}
    ${MODIFIED DATE VALUE} =    get categories grid modified date
    log     ${MODIFIED DATE VALUE}
    ${STATUS} =     BusinessAdmin.validate date format         ${MODIFIED DATE VALUE}          ${EXPECTED TIME STAMP FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Minimum Direct Percent Value Format
    [Arguments]     ${LOCALE FOR CURRENCY FORMAT}
    ${ACTUAL VALUE} =     get route classes minimum direct percent column value
    Log      ${ACTUAL VALUE}
    ${STATUS} =     BusinessAdmin.validate currency format         ${ACTUAL VALUE}          ${LOCALE FOR CURRENCY FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Source And Policy Grid Modified Date Column Value Foramt
    [Arguments]     ${EXPECTED TIME STAMP FORMAT}
    ${MODIFIED DATE VALUE} =    get source and policy grid modified date column value
    log     ${MODIFIED DATE VALUE}
    ${STATUS} =     BusinessAdmin.validate date format         ${MODIFIED DATE VALUE}          ${EXPECTED TIME STAMP FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Destination Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click destination submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Origin Set Name
    ${ORIGIN SET NAME} =     get origin set name
    log       ${ORIGIN SET NAME}
    return from keyword         ${ORIGIN SET NAME}

Verify Get Settlement Origin Name
    ${SETTLEMENT ORIGIN NAME} =     get settlement origin name
    log       ${SETTLEMENT ORIGIN NAME}
    return from keyword         ${SETTLEMENT ORIGIN NAME}

Verify Set Rule of Invalid A
    [Arguments]     ${RULE OF INVALID A}
    ${STATUS} =     set variable    False
    ${STATUS} =     set rule of invalid a      ${RULE OF INVALID A}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Next Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click next button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click New CSNP Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click new csnp button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set CSNP Type
    [Arguments]     ${CSNP TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set csnp type       ${CSNP TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set CSNP Number Plan
    [Arguments]     ${CSNP NUMBER PLAN PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set csnp number plan        ${CSNP NUMBER PLAN PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get CSNP Number Plan
    ${CSNP NUMBER PLAN} =     get csnp number plan
    log       ${CSNP NUMBER PLAN}
    return from keyword         ${CSNP NUMBER PLAN}

Verify Set CSNP Number Plan Abbreviation
    [Arguments]     ${CSNP ABBREVIATION PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set csnp number plan abbreviation       ${CSNP ABBREVIATION PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Services
    [Arguments]     @{SERVICES LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     set services        @{SERVICES LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Default Primary Blending Method
    [Arguments]     ${PRIMARY BLENDING METHOD}
    ${STATUS} =     set variable    False
    ${STATUS} =     set default primary blending method         ${PRIMARY BLENDING METHOD}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Default Destination Type
    [Arguments]     ${DESTINATION TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set default destination type        ${DESTINATION TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Default Call Char
    [Arguments]     ${CALL CHAR}
    ${STATUS} =     set variable    False
    ${STATUS} =     set default call char       ${CALL CHAR}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Default Rating Method
    [Arguments]     ${RATING METHOD}
    ${STATUS} =     set variable    False
    ${STATUS} =     set default rating method       ${RATING METHOD}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Enter Min
    [Arguments]     ${MIN}
    ${STATUS} =     set variable    False
    ${STATUS} =     set enter min       ${MIN}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Enter Max
    [Arguments]     ${MAX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set enter max       ${MAX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Define Fixed Blending Security
    [Arguments]     ${FIXED BLENDING SECURITY}
    ${STATUS} =     set variable    False
    ${STATUS} =     set define fixed blending security          ${FIXED BLENDING SECURITY}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Define Minmax Blending Security
    [Arguments]     ${MINMAX BLENDING SECURITY}
    ${STATUS} =     set variable    False
    ${STATUS} =     set define minmax blending security         ${MINMAX BLENDING SECURITY}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click New CSNP Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click new csnp save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Network Destination
    ${CREATED NETWORK DESTINATION} =     get network destination
    set suite variable      ${CREATED NETWORK DESTINATION}
    should not be equal     ${CREATED NETWORK DESTINATION}     ''
    return from keyword     ${CREATED NETWORK DESTINATION}
    [Teardown]      run keyword if    '${CREATED NETWORK DESTINATION}'==''    Log Screenshot

Verify Get Region Name
    ${REGION NAME} =     get region name
    log       ${REGION NAME}
    return from keyword         ${REGION NAME}

Verify Get Country Name
    ${CREATED COUNTRY NAME} =     BusinessAdmin.get country name
    log       ${CREATED COUNTRY NAME}
    set suite variable      ${CREATED COUNTRY NAME}
    return from keyword         ${CREATED COUNTRY NAME}

Verify Click Country Bulk Edit Save Changes Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click country bulk edit save changes button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Details Of Edited Sources Grid Row For Created Source
    @{LIST OF SOURCE} =     create list     ${NEW SOURCE NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     verify edited sources grid row details      @{LIST OF SOURCE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Source Name
    ${SOURCE NAME} =     get source name
    log       ${SOURCE NAME}
    return from keyword         ${SOURCE NAME}

Verify Select Source Grid Row Checkbox
    [Arguments]     ${SOURCE NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     select created source checkbox      ${SOURCE NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Source For Search With Parameter
    [Arguments]     ${SOURCE NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set source for search      ${SOURCE NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set QOS Number Plan
    [Arguments]     ${NUMBER PLAN}
    ${STATUS} =     set variable    False
    ${STATUS} =     set qos number plan         ${NUMBER PLAN}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set QOS Call Type
    [Arguments]     ${CALL TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set qos call type           ${CALL TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Wholesale Solution Type
    [Arguments]     ${SOLUTION TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set wholesale solution type     ${SOLUTION TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Settlement Origin Dialed Digit Type
    [Arguments]     ${DIALED DIGIT TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set settlement origin dialed digit type     ${DIALED DIGIT TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click New Currency Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click new currency button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Currency Name
    [Arguments]     ${CURRENCY NAME PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set currency name       ${CURRENCY NAME PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Currency Abbreviation
    [Arguments]     ${CURRENCY ABBREVIATION PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set currency abbreviation       ${CURRENCY ABBREVIATION PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Currency Symbol
    ${STATUS} =     set variable    False
    ${STATUS} =     set currency symbol
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click New Currency Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click new currency save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Currency Name
    ${CURRENCY NAME} =     get currency name
    log       ${CURRENCY NAME}
    return from keyword         ${CURRENCY NAME}

Verify Move Available Destinations To Destination
    [Arguments]     ${DESTINATION NAME}
    @{AVAILABLE DESTINATION LIST} =     create list     ${DESTINATION NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =      move available destinations to destination          @{AVAILABLE DESTINATION LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Route Class Initialize Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click initialize button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Route Class Name
    ${ROUTE CLASS} =     get route class name
    log       ${ROUTE CLASS}
    return from keyword         ${ROUTE CLASS}
    [Teardown]      run keyword if    '${ROUTE CLASS}'==''    Log Screenshot

Verify Set Wholesale Type
    [Arguments]     ${WHOLESALE TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set wholesale type    ${WHOLESALE TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Move First Category To Destination
    ${STATUS} =     set variable    False
    ${STATUS} =     move first category to destination
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Reassign Category To Source
    ${STATUS} =     set variable    False
    ${STATUS} =     reassign category to source
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Internal Cost Adjustment Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click internal cost adjustment submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Is Network Codes Screen Loaded
    ${STATUS} =     set variable    False
    ${STATUS} =     is network codes screen loaded
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Expand Translate Menu
    ${STATUS} =     set variable    False
    ${STATUS} =     expand translate menu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Calendar Provisioning Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click calendar provisioning submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Is Calendar Provisioning Management Screen Loaded
    ${STATUS} =     set variable    False
    ${STATUS} =     is calendar provisioning management screen loaded
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Rate Dimension Template Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click rate dimension template submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Audit Cycle And Settlement Management Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click audit cycle and settlement management submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Is Cycle And Settlement Management Screen Loaded
    ${STATUS} =     set variable    False
    ${STATUS} =     is cycle and settlement management screen loaded
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Customer Rounding Rule Definition Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click customer rounding rule definition submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Is Customer Rounding Rule Definition Screen Loaded
    ${STATUS} =     set variable    False
    ${STATUS} =     is customer rounding rule definition screen loaded
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Adjustment Folder Approval Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click adjustment folder approval submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Adjustment Folder Approval Page Loaded Properly
    ${STATUS} =     set variable    False
    ${STATUS} =     is adjustment folder approval page loaded properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Audit Statement Fields Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click audit statement fields submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Audit Statement Fields Page Loaded Properly
    ${STATUS} =     set variable    False
    ${STATUS} =     is audit statement fields page loaded properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Bill Statement Fields Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click bill statement fields submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Bill Statement Fields Page Loaded Properly
    ${STATUS} =     set variable    False
    ${STATUS} =     is bill statement fields page loaded properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Charge Categories Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click charge categories submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Charge Categories Page Loaded Properly
    ${STATUS} =     set variable    False
    ${STATUS} =     is charge categories page loaded properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Cover Letter Templates Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click cover letter templates submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Cover Letter Templates Page Loaded Properly
    ${STATUS} =     set variable    False
    ${STATUS} =     is cover letter templates page loaded properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Discrepancy Source Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click discrepancy source submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Discrepancy Source Page Loaded Properly
    ${STATUS} =     set variable    False
    ${STATUS} =     is discrepancy source page loaded properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Dispute Grades Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click dispute grades submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Dispute Grades Page Loaded Properly
    ${STATUS} =     set variable    False
    ${STATUS} =     is dispute grades page loaded properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Dispute Letter Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click dispute letter submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Dispute Letter Page Loaded Properly
    ${STATUS} =     set variable    False
    ${STATUS} =     is dispute letter page loaded properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Statement Numbering Template Page Loaded Properly
    ${STATUS} =     set variable    False
    ${STATUS} =     is statement numbering template page loaded properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Statement Templates Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click statement templates submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Statement Templates Page Loaded Properly
    ${STATUS} =     set variable    False
    ${STATUS} =     is statement templates page loaded properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Accounting Codes Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click accounting codes submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Accounting Codes Page Loaded Properly
    ${STATUS} =     set variable    False
    ${STATUS} =     is accounting codes page loaded properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Summarization Level Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click summarization level submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Summarization Level Page Loaded Properly
    ${STATUS} =     set variable    False
    ${STATUS} =     is summarization level page loaded properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Filter Source And Policies Grid
    [Arguments]     ${COLUMN NAME}     ${COLUMN VALUE}
    ${STATUS} =     set variable    False
    ${STATUS} =     filter source and policies grid         ${COLUMN NAME}      ${COLUMN VALUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Source And Policies First Row CRPL Checkbox
    ${STATUS} =     set variable    False
    ${STATUS} =     select source and policies first row crpl checkbox
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Generate RPL Records For
    [Arguments]     ${DROPDOWN ITEM}
    ${STATUS} =     set variable    False
    ${STATUS} =     set generate rpl records for        ${DROPDOWN ITEM}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Automated Rpl Generation
    [Arguments]     ${DROPDOWN ITEM}
    ${STATUS} =     set variable    False
    ${STATUS} =     set automated rpl generation        ${DROPDOWN ITEM}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Ascending Sorted Data
    [Arguments]     @{LIST OF DATA}
    ${STATUS} =     set variable    False
    ${STATUS} =     compare sorted data     ${FALSE}        @{LIST OF DATA}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Descending Sorted Data
    [Arguments]     @{LIST OF DATA}
    ${STATUS} =     set variable    False
    ${STATUS} =     compare sorted data    ${TRUE}         @{LIST OF DATA}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Grid Column Position After Altering
    [Arguments]     ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}      @{COLUMN NAME LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     compare grid column position after altering     ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}      @{COLUMN NAME LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Network Codes Grid Settings
    [Arguments]     ${GRID SETTING}
    ${STATUS} =     set variable    False
    ${STATUS} =     set network codes grid settings        ${GRID SETTING}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get All Rows of Specific Column From Network Codes Grid
    [Arguments]     ${COLUMN NAME}
    @{ALL ROW DATA} =     get all rows of specific column from network codes grid       ${COLUMN NAME}
    return from keyword         @{ALL ROW DATA}

Verify Sort Network Codes Grid Column In Ascending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort network codes grid column    ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Sort Network Codes Grid Column In Descending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort network codes grid column    ${COLUMN NAME}      ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Network Codes Grid Column Names By Order
    @{COLUMN NAME LIST} =     get network codes grid column names by order
    return from keyword         @{COLUMN NAME LIST}

Verify Drag Network Codes Grid Column
    [Arguments]     ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     drag network codes grid column    ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Network Codes Grid Export To Excel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click network codes grid export to excel button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Route Class Page Loaded Properly
    ${STATUS} =     set variable    False
    ${STATUS} =     is route class page loaded properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Product Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click product submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Product Page Loaded Properly
    ${STATUS} =     set variable    False
    ${STATUS} =     is product page loaded properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Expand Switch Translation Mappings Menu
    ${STATUS} =     set variable    False
    ${STATUS} =     expand switch translation mappings menu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Submenu Of Switch Translation Mappings Menu
    [Arguments]     ${SUBMENU NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     click submenu of switch translation mappings menu       ${SUBMENU NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Title Of Translate Page
    [Arguments]     ${EXPECTED TITLE}
    ${STATUS} =     set variable    False
    ${STATUS} =     verify translate page title     ${EXPECTED TITLE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Title Of Translate Page Filter Frame
    [Arguments]     ${EXPECTED TITLE}
    ${STATUS} =     set variable    False
    ${STATUS} =     verify translate page filter frame title        ${EXPECTED TITLE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Expand Subscribers And Calling Plans Menu
    ${STATUS} =     set variable    False
    ${STATUS} =     expand subscribers and calling plans menu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Submenu Of Subscribers And Calling Plans Menu
    [Arguments]     ${SUBMENU NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     click submenu of subscribers and calling plans menu         ${SUBMENU NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Business Admin Page Tab Header
    [Arguments]     ${TAB HEADER}
    ${STATUS} =     set variable    False
    ${STATUS} =     verify tab header       ${TAB HEADER}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Create Country Group Button Is Not Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is create country group button not present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Delete Country Group Button Is Not Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is delete country group button not present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Countries Grid Existing MCC
    ${EXISTING MCC} =     get countries grid existing mcc
    log       ${EXISTING MCC}
    should not be equal     '${EXISTING MCC}'   ''
    return from keyword         ${EXISTING MCC}

Verify Set Existing Mobile Country Code
    [Arguments]     ${EXISTING MCC}
    ${CREATED MOBILE COUNTRY CODE} =      set new country mobile country code       ${EXISTING MCC}
    set suite variable      ${CREATED MOBILE COUNTRY CODE}
    should not be equal     '${CREATED MOBILE COUNTRY CODE}'     ''
    [Teardown]      run keyword if    '${CREATED MOBILE COUNTRY CODE}'==''    Log Screenshot

Verify Set Countries Grid Column Value
    [Arguments]     ${COLUMN NAME}      ${COLUMN VALUE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set countries grid column value     ${COLUMN NAME}      ${COLUMN VALUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Move First Available Country To Destination
    ${STATUS} =     set variable    False
    ${STATUS} =      move first available country to destination
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Country For Country Group Search
    [Arguments]     @{COUNRTY LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     set country for country group search        @{COUNRTY LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Country Group Grid Is Loaded With Selected Country
    [Arguments]     @{COUNRTY LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     verify country group grid loaded with selected country        @{COUNRTY LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Buy And Sell Management Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click buy and sell deal management submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Start Date
    [Arguments]     ${START DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     BusinessAdmin.set start date         ${START DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Buy And Sell Management Grid Settings
    [Arguments]     ${GRID SETTING}
    ${STATUS} =     set variable    False
    ${STATUS} =     set buy and sell management grid settings        ${GRID SETTING}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get All Rows of Specific Column From Buy And Sell Management Grid
    [Arguments]     ${COLUMN NAME}
    @{ALL ROW DATA} =     get all rows of specific column from buy and sell management grid       ${COLUMN NAME}
    return from keyword         @{ALL ROW DATA}

Verify Sort Buy And Sell Management Grid Column In Ascending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort buy and sell management grid column    ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Sort Buy And Sell Management Grid Column In Descending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort buy and sell management grid column    ${COLUMN NAME}      ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Buy And Sell Management Grid Column Names By Order
    @{COLUMN NAME LIST} =     get buy and sell management grid column names by order
    return from keyword         @{COLUMN NAME LIST}

Verify Drag Buy And Sell Management Grid Column
    [Arguments]     ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     drag buy and sell management grid column    ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Buy And Sell Management Grid Export To Excel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click buy and sell management grid export to excel button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Buy And Sell Deal Management Grid First Row Checkbox
    ${STATUS} =     set variable    False
    ${STATUS} =     select buy and sell deal management grid first row checkbox
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Buy And Sell Deal Bulk Edit Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click buy and sell deal bulk edit button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Bulk Edit End Date
    [Arguments]     ${END DATE}     ${FUTURE DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set bulk edit end date      ${END DATE}     ${FUTURE DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Route Class Grid Settings
    [Arguments]     ${GRID SETTING}
    ${STATUS} =     set variable    False
    ${STATUS} =     set route class grid settings        ${GRID SETTING}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get All Rows of Specific Column From Route Class Grid
    [Arguments]     ${COLUMN NAME}
    @{ALL ROW DATA} =     get all rows of specific column from route class grid       ${COLUMN NAME}
    return from keyword         @{ALL ROW DATA}

Verify Sort Route Class Grid Column In Ascending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort route class grid column    ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Sort Route Class Grid Column In Descending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort route class grid column    ${COLUMN NAME}      ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Route Class Grid Column Names By Order
    @{COLUMN NAME LIST} =     get Route Class grid column names by order
    return from keyword         @{COLUMN NAME LIST}

Verify Drag Route Class Grid Column
    [Arguments]     ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     drag route class grid column    ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Route Class Grid Export To Excel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click route class grid export to excel button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Currency Grid Settings
    [Arguments]     ${GRID SETTING}
    ${STATUS} =     set variable    False
    ${STATUS} =     set currency grid settings        ${GRID SETTING}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get All Rows of Specific Column From Currency Grid
    [Arguments]     ${COLUMN NAME}
    @{ALL ROW DATA} =     get all rows of specific column from currency grid       ${COLUMN NAME}
    return from keyword         @{ALL ROW DATA}

Verify Sort Currency Grid Column In Ascending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort currency grid column    ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Sort Currency Grid Column In Descending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort currency grid column    ${COLUMN NAME}      ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Currency Grid Column Names By Order
    @{COLUMN NAME LIST} =     get currency grid column names by order
    return from keyword         @{COLUMN NAME LIST}

Verify Drag Currency Grid Column
    [Arguments]     ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     drag currency grid column    ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Currency Grid Export To Excel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click currency grid export to excel button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Currency Grid First Row Currency Symbol
    ${STATUS} =     set variable    False
    ${STATUS} =     set currency grid first row currency symbol
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Source Policies Grid Settings
    [Arguments]     ${GRID SETTING}
    ${STATUS} =     set variable    False
    ${STATUS} =     set source policies grid settings        ${GRID SETTING}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get All Rows of Specific Column From Source Policies Grid
    [Arguments]     ${COLUMN NAME}
    @{ALL ROW DATA} =     get all rows of specific column from source policies grid       ${COLUMN NAME}
    return from keyword         @{ALL ROW DATA}

Verify Sort Source Policies Grid Column In Ascending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort source policies grid column    ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Sort Source Policies Grid Column In Descending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort source policies grid column    ${COLUMN NAME}      ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Source Policies Grid Column Names By Order
    @{COLUMN NAME LIST} =     get source policies grid column names by order
    return from keyword         @{COLUMN NAME LIST}

Verify Drag Source Policies Grid Column
    [Arguments]     ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     drag source policies grid column    ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Source Policies Grid Export To Excel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click source policies grid export to excel button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Source Policies Grid First Row Inline Action Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click source policies grid first row inline action button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Copy Source Pop Up Opened Properly
    ${STATUS} =     set variable    False
    ${STATUS} =     is copy source pop up opened properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Copy Source Cancel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click copy source cancel button
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
    @{ALL ROW DATA} =     get all rows of specific column from categories grid       ${COLUMN NAME}
    return from keyword         @{ALL ROW DATA}

Verify Sort Categories Grid Column In Ascending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort categories grid column    ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

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

Verify Click Categories Grid Export To Excel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click categories grid export to excel button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Exchange Rates Grid Settings
    [Arguments]     ${GRID SETTING}
    ${STATUS} =     set variable    False
    ${STATUS} =     set exchange rates grid settings        ${GRID SETTING}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get All Rows of Specific Column From Exchange Rates Grid
    [Arguments]     ${COLUMN NAME}
    @{ALL ROW DATA} =     get all rows of specific column from exchange rates grid       ${COLUMN NAME}
    return from keyword         @{ALL ROW DATA}

Verify Sort Exchange Rates Grid Column In Ascending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort exchange rates grid column    ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Sort Exchange Rates Grid Column In Descending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort exchange rates grid column    ${COLUMN NAME}      ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Exchange Rates Grid Column Names By Order
    @{COLUMN NAME LIST} =     get exchange rates grid column names by order
    return from keyword         @{COLUMN NAME LIST}

Verify Drag Exchange Rates Grid Column
    [Arguments]     ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     drag exchange rates grid column    ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Exchange Rates Grid Export To Excel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click exchange rates grid export to excel button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Exchange Rates Grid First Row Exchange Rate
    ${STATUS} =     set variable    False
    ${STATUS} =     set exchange rates grid first row exchange rate
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Add New Adjustment Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click add new adjustment button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Route Class For Cost Adjustment
    [Arguments]     ${ROUTE CLASS}=None
    ${STATUS} =     set variable    False
    ${STATUS} =     set route class for cost adjustment     ${ROUTE CLASS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Routing Product
    ${STATUS} =     set variable    False
    ${STATUS} =     set routing product
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Cost Per Minute
    ${STATUS} =     set variable    False
    ${STATUS} =     set cost per minute
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Internal Cost Adjustments Grid First Row Checkbox
    [Arguments]     ${ROUTE CLASS}=None
    ${STATUS} =     set variable    False
    ${STATUS} =     select internal cost adjustments grid first row checkbox        ${ROUTE CLASS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Internal Cost Adjustment Delete Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click internal cost adjustment delete button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Accounting Codes Grid First Row Inline Action Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click accounting codes grid first row inline action button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Assign Accounting Codes Page Title Is Not Available
    ${STATUS} =     set variable    True
    ${STATUS} =     is assign accounting codes page title available
    should not be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='True'    Log Screenshot

Verify Compare Source Grid Cpl Prev Date Override
    [Arguments]     ${EXPECTED CPL PREV DATE OVERRIDE}
    ${ACTUAL CPL PREV DATE OVERRIDE} =     get source grid cpl prev date override
    should be equal     ${EXPECTED CPL PREV DATE OVERRIDE}      ${ACTUAL CPL PREV DATE OVERRIDE}
    [Teardown]      run keyword if    '${EXPECTED CPL PREV DATE OVERRIDE}'=='${ACTUAL CPL PREV DATE OVERRIDE}'    Log Screenshot

Verify Set Source Grid Cpl Prev Date Override
    [Arguments]     ${CPL PREV DATE OVERRIDE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set source grid cpl prev date override      ${CPL PREV DATE OVERRIDE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Company Grid Settings
    [Arguments]     ${GRID SETTING}
    ${STATUS} =     set variable    False
    ${STATUS} =     set company grid settings        ${GRID SETTING}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get All Rows of Specific Column From Company Grid
    [Arguments]     ${COLUMN NAME}
    @{ALL ROW DATA} =     get all rows of specific column from company grid       ${COLUMN NAME}
    return from keyword         @{ALL ROW DATA}

Verify Sort Company Grid Column In Descending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort company grid column    ${COLUMN NAME}      ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Sort Company Grid Column In Ascending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort company grid column    ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Company Grid Column Names By Order
    @{COLUMN NAME LIST} =     get company grid column names by order
    return from keyword         @{COLUMN NAME LIST}

Verify Drag Company Grid Column
    [Arguments]     ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     drag company grid column    ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click New Company Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click new company button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Business Admin Company Name
    [Arguments]     ${COMPANY NAME PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set business admin company name    ${COMPANY NAME PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Company Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click company save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Filter Company Grid
    [Arguments]     ${COLUMN NAME}     ${COLUMN VALUE}
    ${STATUS} =     set variable    False
    ${STATUS} =     filter company grid         ${COLUMN NAME}      ${COLUMN VALUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Business Admin Company Name
    ${COMPANY NAME} =     get business admin company name
    log       ${COMPANY NAME}
    return from keyword         ${COMPANY NAME}

Verify Get Duplicate Company From Database
    [Arguments]     ${DATABASE SERVER}      ${DATABASE}      ${DATABASE USERNAME}      ${DATABASE PASSWORD}
    ${AGREEMENT NAME} =     get duplicate company       ${DATABASE SERVER}      ${DATABASE}      ${DATABASE USERNAME}      ${DATABASE PASSWORD}
    return from keyword     ${AGREEMENT NAME}

Verify Set Company For Search
    [Arguments]     ${COMPANY NAME}
    @{LIST OF COMPANY} =    create list     ${COMPANY NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set company for search      @{LIST OF COMPANY}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Company Code
    [Arguments]     ${COMPANY CODE PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set company code     ${COMPANY CODE PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Pending Jobs Count
    ${JOBS COUNT} =     get pending jobs count
    set suite variable      ${JOBS COUNT}
    log     ${JOBS COUNT}
    [Teardown]      run keyword if    '${JOBS COUNT}'==''    Log Screenshot

Verify Compare Number Plan Uploads Grid Row Count After Upload For Pending Job
    ${STATUS} =     set variable    False
    ${STATUS} =     compare number plan uploads grid row count after upload for pending job
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Number Plan Upload Multiple Status
    [Arguments]     @{STATUS LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     set number plan upload multiple status         @{STATUS LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Static Number Plan Uploads Number Plan Type
    [Arguments]     ${NUMBER PLAN TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set static number plan uploads number plan type      ${NUMBER PLAN TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Reference Number Plan Template Download Link Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is reference number plan template download link present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Internal Cost Adjustments Grid Settings
    [Arguments]     ${GRID SETTING}
    ${STATUS} =     set variable    False
    ${STATUS} =     set internal cost adjustments grid settings        ${GRID SETTING}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get All Rows of Specific Column From Internal Cost Adjustments Grid
    [Arguments]     ${COLUMN NAME}
    @{ALL ROW DATA} =     get all rows of specific column from internal cost adjustments grid       ${COLUMN NAME}
    return from keyword         @{ALL ROW DATA}

Verify Sort Internal Cost Adjustments Grid Column In Ascending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort internal cost adjustments grid column    ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Sort Internal Cost Adjustments Grid Column In Descending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort internal cost adjustments grid column    ${COLUMN NAME}      ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Internal Cost Adjustments Grid Column Names By Order
    @{COLUMN NAME LIST} =     get internal cost adjustments grid column names by order
    return from keyword         @{COLUMN NAME LIST}

Verify Drag Internal Cost Adjustments Grid Column
    [Arguments]     ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     drag internal cost adjustments grid column    ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Internal Cost Adjustments Grid Export To Excel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click internal cost adjustments grid export to excel button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Regions Grid Settings
    [Arguments]     ${GRID SETTING}
    ${STATUS} =     set variable    False
    ${STATUS} =     set regions grid settings        ${GRID SETTING}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get All Rows of Specific Column From Regions Grid
    [Arguments]     ${COLUMN NAME}
    @{ALL ROW DATA} =     get all rows of specific column from regions grid       ${COLUMN NAME}
    return from keyword         @{ALL ROW DATA}

Verify Sort Regions Grid Column In Ascending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort regions grid column    ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Sort Regions Grid Column In Descending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort regions grid column    ${COLUMN NAME}      ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Regions Grid Column Names By Order
    @{COLUMN NAME LIST} =     get regions grid column names by order
    return from keyword         @{COLUMN NAME LIST}

Verify Drag Regions Grid Column
    [Arguments]     ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     drag regions grid column    ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Regions Grid Export To Excel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click regions grid export to excel button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Country Groups Grid Settings
    [Arguments]     ${GRID SETTING}
    ${STATUS} =     set variable    False
    ${STATUS} =     set country groups grid settings        ${GRID SETTING}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get All Rows of Specific Column From Country Groups Grid
    [Arguments]     ${COLUMN NAME}
    @{ALL ROW DATA} =     get all rows of specific column from country groups grid       ${COLUMN NAME}
    return from keyword         @{ALL ROW DATA}

Verify Sort Country Groups Grid Column In Ascending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort country groups grid column    ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Sort Country Groups Grid Column In Descending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort country groups grid column    ${COLUMN NAME}      ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Country Groups Grid Column Names By Order
    @{COLUMN NAME LIST} =     get country groups grid column names by order
    return from keyword         @{COLUMN NAME LIST}

Verify Drag Country Groups Grid Column
    [Arguments]     ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     drag country groups grid column    ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Country Groups Grid Export To Excel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click country groups grid export to excel button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Compare Country Groups Grid Modified By Column Value
    [Arguments]     ${USER NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     compare country group grid modified by column value     ${USER NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Currency in Currency Grid
    [Arguments]     ${CURRENCY}
    ${STATUS} =     set variable    False
    ${ACTUAL CURRENCY} =    get currency grid currency column value
    should be equal    ${ACTUAL CURRENCY}       ${CURRENCY}
    [Teardown]      run keyword unless    '${ACTUAL CURRENCY}'=='${CURRENCY}'    Log Screenshot

Verify Set Currency Name Without Prefix
    [Arguments]     ${CURRENCY NAME}
    ${STATUS} =     set variable    False
    ${WITHOUT RANDOM DATA} =        set variable    True
    ${STATUS} =     set currency name       ${CURRENCY NAME}        ${WITHOUT RANDOM DATA}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Error Message For Duplicate Currency
    ${STATUS} =     set variable    False
    ${STATUS} =     is error message displayed for duplicate currency
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Select 'Business Admin' From Main Menu
    ${STATUS} =     set variable    False
    ${STATUS} =     select business admin submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Country Code Is Displayed With Country Name
    ${STATUS} =     set variable    False
    ${STATUS} =      is country code displayed with country name
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Move Assigned Countries To Source
    ${STATUS} =     set variable    False
    ${STATUS} =      move assigned countries to source
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Duplicate Country Group
    BusinessAdmin.set country group       ${EMPTY}    ${COUNTRY GROUP}
    set suite variable      ${COUNTRY GROUP}
    log         ${COUNTRY GROUP}
    [Teardown]      run keyword if    '${COUNTRY GROUP}'==''    Log Screenshot

Verify Error Message Of Save Country Group
    ${STATUS} =     set variable    False
    ${STATUS} =     verify save country group error message
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Country Group Cancel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click country group cancel button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Number Plan Type
    [Arguments]     ${NUMBER PLAN TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set number plan type     ${NUMBER PLAN TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Number Plan Search Result Is Matched
    [Arguments]     ${NUMBER PLAN TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     is number plan search result matched     ${NUMBER PLAN TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Buy And Sell Deal Management Grid First Row Inline Action Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click buy and sell deal management grid first row inline action button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Account Label Is Displayed Correctly
    ${STATUS} =     set variable    False
    ${STATUS} =     is account label displayed correctly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Account Manager Label Is Displayed Correctly
    ${STATUS} =     set variable    False
    ${STATUS} =     is account manager label displayed correctly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Country Group Management Grid Settings
    [Arguments]     ${GRID SETTING}
    ${STATUS} =     set variable    False
    ${STATUS} =     set country group management grid settings        ${GRID SETTING}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get All Rows of Specific Column From Country Group Management Grid
    [Arguments]     ${COLUMN NAME}
    @{ALL ROW DATA} =     get all rows of specific column from country group management grid       ${COLUMN NAME}
    return from keyword         @{ALL ROW DATA}

Verify Sort Country Group Management Grid Column In Descending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort country group management grid column    ${COLUMN NAME}      ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Sort Country Group Management Grid Column In Ascending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort country group management grid column    ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Country Group Management Grid Column Names By Order
    @{COLUMN NAME LIST} =     get country group management grid column names by order
    return from keyword         @{COLUMN NAME LIST}

Verify Drag Country Group Management Grid Column
    [Arguments]     ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     drag country group management grid column    ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Country Group Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click country group submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Filter Source And Policies Grid Column With Checkbox
    [Arguments]     ${COLUMN NAME}      ${CHECKED STATUS}
    ${STATUS} =     set variable    False
    ${STATUS} =     filter source and policies grid column with checkbox     ${COLUMN NAME}      ${CHECKED STATUS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get First Source Name
    ${ACTUAL SOURCE NAME} =   Get From Dictionary     ${SOURCES GRID ROW}      Source
    return from keyword     ${ACTUAL SOURCE NAME}

Verify Select Source And Policies First Row Automate Export Checkbox
    [Arguments]     ${SOURCE NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     select source and policies first row automate export checkbox       ${SOURCE NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Source Policies Grid Automate Export Checkbox Status
    [Arguments]     ${CHECKBOX STATUS}     ${SOURCE NAME}
    @{SOURCE LIST} =    create list     ${SOURCE NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is source policies grid automate export checkbox checked      ${CHECKBOX STATUS}     @{SOURCE LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Opened Tab
    [Arguments]     ${TAB NAME TO CLOSE}
    ${STATUS} =     set variable    False
    ${STATUS} =     select opened tab       ${TAB NAME TO CLOSE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Origin Set Search Button For New Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     click origin set search button for new tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Origin Set Grid Row Count
    ${ORIGIN SET GRID ROW COUNT} =     get origin set grid row count
    return from keyword     ${ORIGIN SET GRID ROW COUNT}

Verify Get New Tab Origin Set Grid Row Count
    ${ORIGIN SET GRID ROW COUNT} =     get new tab origin set grid row count
    return from keyword     ${ORIGIN SET GRID ROW COUNT}

Verify Grid Row Counts Match
    [Arguments]     ${ACTUAL GRID ROW COUNT}        ${EXPECTED GRID ROW COUNT}
    should be equal     ${ACTUAL GRID ROW COUNT}        ${EXPECTED GRID ROW COUNT}
    [Teardown]      run keyword unless    '${ACTUAL GRID ROW COUNT}'=='${EXPECTED GRID ROW COUNT}'    Log Screenshot

Verify Country Bulk Edit Pop Up Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is country bulk edit pop up present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Countries Grid First Row Checkbox
    ${STATUS} =     set variable    False
    ${STATUS} =     select countries grid first row checkbox
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Network Code Save Changes Button Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is network code save changes button present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Network Code Cancel Changes Button Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is network code cancel changes button present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The CDR Match Save Changes Button Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is cdr match save changes button present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The CDR Match Cancel Changes Button Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is cdr match cancel changes button present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Network Code Save Changes Button Not Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is network code save changes button not present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Network Code Cancel Changes Button Not Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is network code cancel changes button not present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The CDR Match Save Changes Button Not Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is cdr match save changes button not present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The CDR Match Cancel Changes Button Not Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is cdr match cancel changes button not present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Request New Deal Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click request new deal button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Buy And Sell Deal Name
    [Arguments]     ${DEAL PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set buy and sell deal name      ${DEAL PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Buy Sell Deal Account
    [Arguments]     ${ACCOUNT NAME}
    @{ACCOUNT LIST} =   create list     ${ACCOUNT NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set buy sell deal account   @{ACCOUNT LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Vendor
    [Arguments]     ${VENDOR NAME}
    @{VENDOR LIST} =   create list     ${VENDOR NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set vendor      @{VENDOR LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Customer
    [Arguments]     ${CUSTOMER NAME}
    @{CUSTOMER LIST} =   create list     ${CUSTOMER NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set customer      @{CUSTOMER LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Buy And Sell Deal Create Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click buy and sell deal create button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Buy And Sell Deal Name
    ${BUY AND SELL DEAL NAME} =     get buy and sell deal name
    log       ${BUY AND SELL DEAL NAME}
    return from keyword         ${BUY AND SELL DEAL NAME}

Verify Click Vendor Grid Add Destination Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click vendor grid add destination button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Source To Add Destination
    [Arguments]     ${SOURCE NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set source to add destination      ${SOURCE NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Route Class To Add Destination
    [Arguments]     @{LIST OF ROUTE CLASS}
    ${STATUS} =     set variable    False
    ${STATUS} =     set route class to add destination       @{LIST OF ROUTE CLASS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Destination To Add Destination
    [Arguments]     @{LIST OF DESTINATION}
    ${STATUS} =     set variable    False
    ${STATUS} =     set destination to add destination       @{LIST OF DESTINATION}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Deat Rate To Add Destination
    [Arguments]     ${DEAL RATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set deal rate to add destination      ${DEAL RATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Deat Volume To Add Destination
    [Arguments]     ${DEAL VOLUME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set deal volume to add destination      ${DEAL VOLUME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Customer Grid Add Destination Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click customer grid add destination button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Request Deal Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click request deal button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Add Destination Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click Add Destination save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Network Destinations Grid Row Inline Action Button
    [Arguments]     ${NETWORK DESTINATION}
    ${STATUS} =     set variable    False
    ${STATUS} =     click network destinations grid row inline action button        ${NETWORK DESTINATION}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Internal Cost Adjustment Link is Not Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is internal cost adjustment submenu not present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Country Grid Settings
    [Arguments]     ${GRID SETTING}
    ${STATUS} =     set variable    False
    ${STATUS} =     set country grid settings        ${GRID SETTING}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Drag Country Grid Column
    [Arguments]     ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     drag country grid column    ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Country Grid Column Names By Order
    @{COLUMN NAME LIST} =     get country grid column names by order
    return from keyword         @{COLUMN NAME LIST}

Verify Get All Rows of Specific Column From Country Grid
    [Arguments]     ${COLUMN NAME}
    @{ALL ROW DATA} =     get all rows of specific column from country grid       ${COLUMN NAME}
    return from keyword         @{ALL ROW DATA}

Verify Sort Country Grid Column In Descending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort country grid column    ${COLUMN NAME}      ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Sort Country Grid Column In Ascending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort country grid column    ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click My Price List Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click my price list submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify My Price List Page Loaded Properly
    ${STATUS} =     set variable    False
    ${STATUS} =     is my price list page loaded properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Number Plan Grid Settings
    [Arguments]     ${GRID SETTING}
    ${STATUS} =     set variable    False
    ${STATUS} =     set number plan grid settings        ${GRID SETTING}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Number Plan Grid Column Names By Order
    @{COLUMN NAME LIST} =     get number plan grid column names by order
    return from keyword         @{COLUMN NAME LIST}

Verify Drag Number Plan Grid Column
    [Arguments]     ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     drag number plan grid column    ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get All Rows of Specific Column From Number Plan Grid
    [Arguments]     ${COLUMN NAME}
    @{ALL ROW DATA} =     get all rows of specific column from number plan grid       ${COLUMN NAME}
    return from keyword         @{ALL ROW DATA}

Verify Sort Number Plan Grid Column In Descending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort number plan grid column    ${COLUMN NAME}      ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Sort Number Plan Grid Column In Ascending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort number plan grid column    ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Percentage
    ${STATUS} =     set variable    False
    ${STATUS} =     set percentage
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Save Button And Pass The Error Message
    ${STATUS} =     set variable    False
    ${STATUS} =     click save button and pass the error message
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Specific Error Message Is Available
    [Arguments]     ${LABEL NAME}     ${ERROR MESSAGE}
    ${STATUS} =     set variable    False
    ${STATUS} =     is specific error message present       ${LABEL NAME}       ${ERROR MESSAGE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Route Class Grid Column Is Present
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is route class grid column present      ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Route Class Grid Column Is Not Present
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    True
    ${STATUS} =     is route class grid column present      ${COLUMN NAME}
    should not be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='True'    Log Screenshot

Verify Custom Field Alias Is Present
    [Arguments]     ${FIELD ALIAS NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is custom field alias present        ${FIELD ALIAS NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Duplicate Cost Adjustment Error Message Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is duplicate cost adjustment error message pop up present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Number Plan Upload Job Notifier
    ${STATUS} =     set variable    False
    ${STATUS} =     click number plan upload job notifier
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Jobs Grid Row Count
    ${STATUS} =     set variable    False
    ${STATUS} =     get jobs grid row count
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Compare Jobs Grid Row Count
    ${STATUS} =     set variable    False
    ${STATUS} =     compare jobs grid row count
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Expected Button is Removed From Screen
    [Arguments]     ${BUTTON}
    ${STATUS} =     set variable    False
    ${STATUS} =     is expected button not visible      ${BUTTON}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Created Category
    ${CATEGORY} =    get category name
    return from keyword         ${CATEGORY}

Verify Click Country Grid First Row Inline Action Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click country grid first row inline action button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Country Delete Inline Item
    ${STATUS} =     set variable    False
    ${STATUS} =    click country delete inline item
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Specific Column Is Available In Source And Policy Grid
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is specific column present in source and policy grid    ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Specific Textbox Column In Source And Policy Grid
    [Arguments]     ${COLUMN NAME}     ${PREFIX}=${EMPTY}
    ${STATUS} =     set variable    False
    ${STATUS} =     set specific textbox column in source and policy grid     ${COLUMN NAME}        ${PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Specific Dropdown Column In Source And Policy Grid
    [Arguments]     ${COLUMN NAME}     ${ITEM NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set specific textbox column in source and policy grid     ${COLUMN NAME}        ${ITEM NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Check Custom RC Checkbox
    ${STATUS} =     set variable    False
    ${STATUS} =     check custom rc checkbox
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Error Message For Empty Search Criteria
    ${STATUS} =     set variable    False
    ${STATUS} =     is error message displayed for empty search criteria
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Compare Begin Date With Given Date
    [Arguments]     ${BEGIN DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     compare begin date with given date          ${BEGIN DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Compare End Date With Given Date
    [Arguments]     ${END DATE}=${EMPTY}
    ${STATUS} =     set variable    False
    ${STATUS} =     compare end date with given date          ${END DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot