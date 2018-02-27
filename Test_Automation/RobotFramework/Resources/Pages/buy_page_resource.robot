*** Settings ***
Documentation   Buy Page Resource File With All Necessary Keywords

Resource        ../common_resource.robot

Library         ../../../TestFramework/Libraries/RobotTests/Home.py
Library         ../../../TestFramework/Libraries/RobotTests/Buy.py

*** Variables ***
${EXPECTED PAGE TITLE}              		    Buy
${ACTUAL PAGE TITLE}                		    ${EMPTY}
${STATUS}                           		    ${EMPTY}
${VENDOR PROFILE INLINE ITEM}       		    Vendor Profile
${VIEW PRICE LISTS DETAIL INLINE ITEM}   	    View Price List Detail
${VIEW PRICE LISTS DETAILS EXPECTED HEADER}     Price List Summary Show Summary
${VIEW PRICE LISTS DETAILS ACTUAL HEADER}       ${EMPTY}
${SEARCH RESULT WHEN NO DATA FOUND}             No records found.
${CREATED VENDOR NAME}                          ${EMPTY}
${ABBREVIATION NAME}                            ${EMPTY}
${VENDOR DETAILS}                               ${EMPTY}
${ANALYZE AND COMPLETE INLINE ITEM}             Analyze and Complete
${VENDOR PRICE LIST DETAILS DATA}               ${EMPTY}
${VENDOR NAME}                                  ${EMPTY}
${PRICE LIST ITEM}                              ${EMPTY}
${CREATED RATE PLAN NAME}                       ${EMPTY}
${CREATED IXTOOLS ACCOUNT}                      ${EMPTY}

*** Keywords ***
Click on Home Icon and Select 'Buy' From Main Menu
    [Documentation]  Navigate to buy screen from dashboard.
    ...         Param:
    ...         Return:
    ${STATUS} =     set variable    False
    select buy submenu
    ${STATUS} =     switch to buy
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Page Title
    [Documentation]  Verify the page title of buy screen.
    ...     Param:  Expected page title.
    ...     Return:
    ${ACTUAL PAGE TITLE} =  get buy page title
    should contain     ${ACTUAL PAGE TITLE}     ${EXPECTED PAGE TITLE}
    [Teardown]      run keyword unless     '${ACTUAL PAGE TITLE}'=='${EXPECTED PAGE TITLE}'    Log Screenshot

Verify The Buy Dashboard Tab Is Available
    [Documentation]  Check the 'Buy Dashboard' tab is present or not.
    ...     Param:
    ...     Return:
    ${STATUS} =     set variable    False
    ${STATUS} =     is buy dashboard tab present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Country Groups link is Available
    [Documentation]  Check the 'Country Groups' link is present or not.
    ...     Param:
    ...     Return:
    ${STATUS} =     set variable    False
    ${STATUS} =     is country groups link present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Re-Analysis link is Available
    [Documentation]  Check the 'Re-Analysis' link is present or not.
    ...     Param:
    ...     Return:
    ${STATUS} =     set variable    False
    ${STATUS} =     is re analysis link present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Vendors Tab Is Available
    [Documentation]  Check the 'Vendors' tab is present or not.
    ...     Param:
    ...     Return:
    ${STATUS} =     set variable    False
    ${STATUS} =     is vendors tab present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click On Vendors Tab
    [Documentation]  Navigate to vendors screen.
    ...     Param:
    ...     Return:
    ${STATUS} =     set variable    False
    ${STATUS} =     select vendors tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The 'Create Vendor' Button Is Present Under Vendors Tab
    [Documentation]  Check the 'Create Vendor' Button is present or not.
    ...     Param:
    ...     Return:
    ${STATUS} =     set variable    False
    ${STATUS} =     is create vendor present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The 'Vendor Price Lists' Button Is Present Under Vendors Tab
    [Documentation]  Check the 'Vendor Price Lists' Button is present or not.
    ...     Param:
    ...     Return:
    ${STATUS} =     set variable    False
    ${STATUS} =     is vendor price lists present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click On Inline Action Button
    [Arguments]     ${VENDOR NAME}
    [Documentation]  Click on inline action button for a specific vendor. Must call 'Verify Filter Vendor Grid Column' berfore calling this keyword.
    ...     Param: vendor name
    ...     Return:
    ${STATUS} =     set variable    False
    click buy page inline action button    ${VENDOR NAME}
    ${STATUS} =     is inline action popup loaded properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Vendor Profile is Available
    [Documentation]     Check the 'Vendor Profile' inline item is visible or not. Must call 'Verify Click On Inline Action Button' before calling this keyword.
    ...     Param:
    ...     Return:
    ${STATUS} =     set variable    False
    ${STATUS} =     is vendor profile present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Vendor Rates is Available
    [Documentation]     Check the 'Vendor Rates' inline item is visible or not. Must call 'Verify Filter Vendor Grid Column' berfore calling this keyword.
    ...     Param:
    ...     Return:
    ${STATUS} =     set variable    False
    ${STATUS} =     is vendor rates present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Vendor Digits is Available
    [Documentation]     Check the 'Vendor Digits' inline item is visible or not. Must call 'Verify Filter Vendor Grid Column' berfore calling this keyword.
    ...     Param:
    ...     Return:
    ${STATUS} =     set variable    False
    ${STATUS} =     is vendor digits present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Vendor Destination is Available
    [Documentation]      Check the 'Vendor Destination' inline item is visible or not. Must call 'Verify Filter Vendor Grid Column' berfore calling this keyword.
    ...         Param:
    ...         Return:
    ${STATUS} =     set variable    False
    ${STATUS} =     is vendor destination present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Upload Vendor Price List is Available
    [Documentation]     Check the 'Upload Vendor Price List' inline item is visible or not. Must call 'Verify Filter Vendor Grid Column' berfore calling this keyword.
    ...     Param:
    ...     Return:
    ${STATUS} =     set variable    False
    ${STATUS} =     is upload vendor price list present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Vendor Profile Inline Action Item
    ${STATUS} =     set variable    False
    Buy.select inline action item    ${VENDOR PROFILE INLINE ITEM}
    ${STATUS} =     is vendor profile page loaded properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click On Rates Tab
    [Arguments]     ${RATES TAB NAME}
    ${STATUS} =     set variable    False
    click on tab of vendor profile page    ${RATES TAB NAME}
    ${STATUS} =     is rates page loaded properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Inline Action Item
    [Arguments]     ${INLINE ITEM NAME}=${VENDOR PROFILE INLINE ITEM}
    ${STATUS} =     set variable    False
    ${STATUS} =     Buy.select inline action item       ${INLINE ITEM NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Vendor Profile Page is Loaded Properly
    ${STATUS} =     set variable    False
    ${STATUS} =     is vendor profile page loaded properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click On Dial Digits Tab
    [Arguments]     ${DIAL DIGITS TAB NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     click on tab of vendor profile page    ${DIAL DIGITS TAB NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click On Destinations Tab
    [Arguments]     ${DESTINATIONS TAB NAME}
    ${STATUS} =     set variable    False
    click on tab of vendor profile page    ${DESTINATIONS TAB NAME}
    ${STATUS} =     is destinations page loaded properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click On Vendor Price Lists
    ${STATUS} =     set variable    False
    ${STATUS} =     click on vendor price lists
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set From Date
    [Arguments]         ${FROM DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     Buy.set from date       ${FROM DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set To Date
    ${STATUS} =     set variable    False
    ${STATUS} =     set to date
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click On Vendor Price Lists Search Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click vendor price lists search button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click On View Price List Detail Inline Action Button
    [Arguments]     ${PRICE LIST ITEM NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     click view price list detail page inline action button       ${PRICE LIST ITEM NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify View Price List Detail Inline Action Item
    ${STATUS} =     set variable    False
    ${STATUS} =     Buy.select inline action item       ${VIEW PRICE LISTS DETAIL INLINE ITEM}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Price List Item
    [Arguments]     ${DROPDOWN ITEM}=${PRICE LIST ITEM}
    ${STATUS} =     set variable    False
    ${STATUS} =      verify price list item     ${DROPDOWN ITEM}
    should be true     ${STATUS}
    [Teardown]  run keyword if  '${STATUS}'=='False'    Log Screenshot

Verify Search Results Displayed In The Grid
    ${STATUS} =     set variable      False
    ${STATUS} =     search results displayed in the grid
    [Teardown]  run keyword if  '${STATUS}'=='False'    log     ${SEARCH RESULT WHEN NO DATA FOUND}

Verify Click On Create Vendor Button
    [Documentation]     There are multiple keywords with the same name in another page resource. To avoid conflicts, class name has been mentioned to specify the targetted method.
    ${STATUS} =     set variable    False
    ${STATUS} =     Buy.click create vendor button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Vendor Name
    [Arguments]     ${VENDOR NAME PREFIX}
    [Documentation]     There are multiple keywords with the same name in another page resource. To avoid conflicts, class name has been mentioned to specify the targetted method.
    ${CREATED VENDOR NAME} =        Buy.set vendor name         ${VENDOR NAME PREFIX}
    Set Suite Variable      ${CREATED VENDOR NAME}
    should not be equal     ${CREATED VENDOR NAME}     ''
    [Teardown]      run keyword if    '${CREATED VENDOR NAME}'==''    Log Screenshot

Verify Set Vendor Source
    [Arguments]     ${ABBREVIATION PREFIX}
    [Documentation]     There are multiple keywords with the same name in another page resource. To avoid conflicts, class name has been mentioned to specify the targetted method.
    ${ABBREVIATION NAME} =     Buy.set abbreviation        ${ABBREVIATION PREFIX}
    should not be equal     ${ABBREVIATION NAME}     ''
    [Teardown]      run keyword if    '${ABBREVIATION NAME}'==''    Log Screenshot

Verify Set Ixtools Account
    [Documentation]     There are multiple keywords with the same name in another page resource. To avoid conflicts, class name has been mentioned to specify the targetted method.
    ${CREATED IXTOOLS ACCOUNT} =        Buy.get created carrier name
    ${STATUS} =     set variable    False
    ${STATUS} =     set ixtools account     ${CREATED IXTOOLS ACCOUNT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Rate Plan
    [Documentation]     There are multiple keywords with the same name in another page resource. To avoid conflicts, class name has been mentioned to specify the targetted method.
    ${CREATED RATE PLAN NAME} =        Buy.get created rate plan name
    ${STATUS} =     set variable    False
    ${STATUS} =     Buy.set rate plan       ${CREATED RATE PLAN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Call Type
    [Arguments]     ${CALL TYPE DROPDOWN ITEM}
    [Documentation]     There are multiple keywords with the same name in another page resource. To avoid conflicts, class name has been mentioned to specify the targetted method.
    ${STATUS} =     set variable    False
    ${STATUS} =     Buy.set call type       ${CALL TYPE DROPDOWN ITEM}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Vendor Profile Status
    [Arguments]     ${VENDOR PROFILE STATUS DROPDOWN ITEM}
    ${STATUS} =     set variable    False
    ${STATUS} =     set vendor profile status       ${VENDOR PROFILE STATUS DROPDOWN ITEM}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click On Save Vendor Profile Button
    [Documentation]     There are multiple keywords with the same name in another page resource. To avoid conflicts, class name has been mentioned to specify the targetted method.
    ${STATUS} =     set variable    False
    ${STATUS} =     Buy.click save vendor profile button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Close Create Vendor Tab
    [Arguments]     ${TAB NAME TO CLOSE}
    [Documentation]     There are multiple keywords with the same name in another page resource. To avoid conflicts, class name has been mentioned to specify the targetted method.
    ${STATUS} =     set variable    False
    ${STATUS} =     Buy.close current tab       ${TAB NAME TO CLOSE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot+

Verify Close Vendor Profile Tab
    [Arguments]     ${TAB NAME TO CLOSE}
    [Documentation]     There are multiple keywords with the same name in another page resource. To avoid conflicts, class name has been mentioned to specify the targetted method.
    ${STATUS} =     set variable    False
    ${STATUS} =     Buy.close current tab       ${TAB NAME TO CLOSE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Filter Vendor Grid Column
    [Arguments]     ${COLUMN NAME TO FILTER}      @{FILTER ITEM LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     grid filter details       ${COLUMN NAME TO FILTER}      @{FILTER ITEM LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Filter Price List Grid Column
    [Arguments]     ${COLUMN NAME TO FILTER}      @{FILTER ITEM LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     grid filter details       ${COLUMN NAME TO FILTER}      @{FILTER ITEM LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Clear Status Filter
    [Arguments]     ${COLUMN NAME TO CLEAR FILTER}
    ${STATUS} =     set variable    False
    ${STATUS} =     clear filter        ${COLUMN NAME TO CLEAR FILTER}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Clear Vendor Filter
    [Arguments]     ${COLUMN NAME TO CLEAR FILTER}
    [Documentation]     There are multiple keywords with the same name in another page resource. To avoid conflicts, class name has been mentioned to specify the targetted method.
    ${STATUS} =     set variable    False
    ${STATUS} =     Buy.clear filter        ${COLUMN NAME TO CLEAR FILTER}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Filter Status Grid Column
    [Arguments]     ${COLUMN NAME TO FILTER}      @{FILTER ITEM LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     grid filter details       ${COLUMN NAME TO FILTER}      @{FILTER ITEM LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Grid Row Data
    [Arguments]     ${GRID STATUS}      ${VENDOR NAME}=${CREATED VENDOR NAME}
    ${VENDOR DETAILS} =     create dictionary       Vendor=${VENDOR NAME}     Status=${GRID STATUS}
    ${STATUS} =     set variable    False
    ${STATUS} =     verify vendor details    ${VENDOR DETAILS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Grid Row Data With Active Status
    [Arguments]     ${VENDOR NAME}      ${ACTIVE STATUS}
    ${VENDOR DETAILS} =     create dictionary       Vendor=${VENDOR NAME}     Status=${ACTIVE STATUS}
    ${STATUS} =     set variable    False
    ${STATUS} =     verify vendor details    ${VENDOR DETAILS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Clear All Table Filters
    [Arguments]     ${COLUMN NAME TO CLEAR ALL TABLE FILTERS}
    ${STATUS} =     set variable    False
    ${STATUS} =     Buy.clear all table filters      ${COLUMN NAME TO CLEAR ALL TABLE FILTERS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get First Row Vendor Name From Price List Grid
    [Arguments]     ${COLUMN NAME}
    ${VENDOR NAME} =       get first row item from price lists grid        ${COLUMN NAME}
    set suite variable      ${VENDOR NAME}
    return from keyword     ${VENDOR NAME}
    [Teardown]      run keyword if    '${VENDOR NAME}'==''    Log Screenshot

Verify View Price List Detail Is Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is view price list detail present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Analyze and Complete Is Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is analyze and complete present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Selected Vendor Name
    [Arguments]     ${SELECTED VENDOR NAME}=${VENDOR NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     verify selected vendor      ${SELECTED VENDOR NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Selected Price List Item
    [Arguments]     ${SELECTED PRICE LIST}=${PRICE LIST ITEM}
    ${STATUS} =     set variable    False
    ${STATUS} =     verify selected price list      ${SELECTED PRICE LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Rates Tab of View Price List Detail
    [Arguments]     ${RATES TAB NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     select tab of view price list detail page      ${RATES TAB NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Dial Digits Tab of View Price List Detail
    [Arguments]     ${DIAL DIGITS TAB NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     select tab of view price list detail page      ${DIAL DIGITS TAB NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Reference Rates Tab of View Price List Detail
    [Arguments]     ${REFERENCE RATES TAB NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     select tab of view price list detail page      ${REFERENCE RATES TAB NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Rates Tab Is Loaded Properly
    ${STATUS} =     set variable    False
    ${STATUS} =     is rates tab loaded properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Dial Digits Tab Is Loaded Properly
    ${STATUS} =     set variable    False
    ${STATUS} =     is dial digits tab loaded properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Reference Rates Tab Is Loaded Properly
    ${STATUS} =     set variable    False
    ${STATUS} =     is reference rates tab loaded properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Vendor Price List Grid Row Checkbox
    ${STATUS} =     set variable    False
    ${STATUS} =     select vendor price list grid row checkbox
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Vendor Price List Status
    [Arguments]     @{STATUS ITEM LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     set vendor price list status      @{STATUS ITEM LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Compare Price Lists Button
    ${STATUS} =     set variable    False
    ${STATUS} =     Buy.click compare price lists button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click On Analyze And Complete Inline Action
    ${STATUS} =     set variable    False
    ${STATUS} =     click on analyze and complete inline action     ${ANALYZE AND COMPLETE INLINE ITEM}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Selected Price Lists Details Info
    ${STATUS} =     set variable    False
    ${STATUS} =     verify selected price lists details
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Rates Grid Columns Header
    ${STATUS} =     set variable    False
    ${STATUS} =     verify rates grid columns
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Dial Digits Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select dial digits tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Dialed Digits Columns Header
    ${STATUS} =     set variable    False
    ${STATUS} =     verify dialed digits columns
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Close Compare Price Lists Pop Up
    ${STATUS} =     set variable    False
    ${STATUS} =     close compare price lists pop up
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Upload Vendor Price List Inline Action Button
    [Arguments]     ${UPLOAD VENDOR PRICE LIST INLINE ITEM}
    ${STATUS} =     set variable    False
    ${STATUS} =     Buy.select inline action item       ${UPLOAD VENDOR PRICE LIST INLINE ITEM}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click On Browse Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click on browse button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select The File To Be Uploaded
    [Arguments]     ${VENDOR PRICE LIST FILE PATH}
    ${STATUS} =     set variable    False
    ${STATUS} =     Buy.select the file to be uploaded      ${VENDOR PRICE LIST FILE PATH}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click On Upload Button
    ${STATUS} =     set variable    False
    ${STATUS} =     Buy.click on upload button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click On Vendor Price List Upload Colored Icon
    ${STATUS} =     set variable    False
    ${STATUS} =     click on vendor price list upload colored icon
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click On Vendor Price List Upload Search Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click on vendor price list upload search button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set From Date As Current Date
    ${STATUS} =     set variable    False
    ${STATUS} =     set from date as current date
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Close Job Tab
    [Arguments]     ${JOB TAB NAME}
    [Documentation]     There are multiple keywords with the same name in another page resource. To avoid conflicts, class name has been mentioned to specify the targetted method.
    ${STATUS} =     set variable    False
    ${STATUS} =     Buy.close current tab       ${JOB TAB NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Filter Vendor Grid Column For Upload Vendor Price List
    [Arguments]     ${COLUMN NAME TO FILTER}        @{FILTER ITEM LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     grid filter details       ${COLUMN NAME TO FILTER}      @{FILTER ITEM LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Vendor Price Lists Number Of Rows From Grid
    ${STATUS} =     set variable    False
    ${STATUS} =     get vendor price lists number of rows from grid
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Compare Vendor Price Lists Number Of Rows From Grid
    ${STATUS} =     set variable    False
    ${STATUS} =     compare vendor price lists number of rows from grid
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Close Vendor Price Lists Tab
    [Arguments]     ${VENDOR PRICE LISTS TAB NAME}
    [Documentation]     There are multiple keywords with the same name in another page resource. To avoid conflicts, class name has been mentioned to specify the targetted method.
    ${STATUS} =     set variable    False
    ${STATUS} =     Buy.close current tab       ${VENDOR PRICE LISTS TAB NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Vendor Price Lists Grid Details
    [Arguments]     ${VENDOR NAME}=${CREATED VENDOR NAME}
    ${VENDOR PRICE LIST DETAILS DATA} =      create dictionary       Vendor=${VENDOR NAME}         Status=Completed
    ${STATUS} =     set variable    False
    ${STATUS} =     verify vendor price lists details        ${VENDOR PRICE LIST DETAILS DATA}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Vendor Price Lists Details
    ${STATUS} =     set variable    False
    ${STATUS} =     get vendor price lists details
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Uploaded Vendor Price List details on Database
    [Arguments]     ${DATABASE SERVER}       ${DATABASE}     ${DATABASE USERNAME}        ${DATABASE PASSWORD}
    ${STATUS} =     set variable    False
    ${STATUS} =     verify vendor price lists details on database       ${DATABASE SERVER}       ${DATABASE}     ${DATABASE USERNAME}        ${DATABASE PASSWORD}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click On Inline Action Button For Upload Price List
    [Arguments]     ${UPLOAD PRICE LIST VENDOR NAME}
    ${STATUS} =     set variable    False
    click buy page inline action button    ${UPLOAD PRICE LIST VENDOR NAME}
    ${STATUS} =     is inline action popup loaded properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click On View Price List Detail Inline Action Button For Analyze And Complete
    [Arguments]     ${PRICE LIST ITEM FOR ANALYZE AND COMPLETE}
    ${STATUS} =     set variable    False
    ${STATUS} =     click view price list detail page inline action button       ${PRICE LIST ITEM FOR ANALYZE AND COMPLETE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click On Inline Action Button After Create
    [Arguments]     ${VENDOR NAME}=${CREATED VENDOR NAME}
    [Documentation]     There are multiple keywords with the same name in another page resource. To avoid conflicts, class name has been mentioned to specify the targetted method.
    ${STATUS} =     set variable    False
    Buy.click buy page inline action button    ${VENDOR NAME}
    ${STATUS} =     is inline action popup loaded properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Filter Vendor Grid Column After Create
    [Arguments]     ${COLUMN NAME TO FILTER}    ${VENDOR NAME}=${CREATED VENDOR NAME}
    [Documentation]     There are multiple keywords with the same name in another page resource. To avoid conflicts, class name has been mentioned to specify the targetted method.
    @{FILTER ITEM LIST} =       create list         ${VENDOR NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     Buy.grid filter details       ${COLUMN NAME TO FILTER}      @{FILTER ITEM LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Grid Row Details
    [Arguments]     ${GRID STATUS}      ${VENDOR NAME}=${CREATED VENDOR NAME}
    ${VENDOR DETAILS} =     create dictionary       Vendor=${VENDOR NAME}     Status=${GRID STATUS}
    ${STATUS} =     set variable    False
    ${STATUS} =     verify vendor details    ${VENDOR DETAILS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click View Price List Detail First Row Inline Action Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click view price list detail first row inline action button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get First Row Price List Name From Price List Grid
    [Arguments]     ${COLUMN NAME}
    ${PRICE LIST ITEM} =       get first row item from price lists grid        ${COLUMN NAME}
    set suite variable      ${PRICE LIST ITEM}
    return from keyword     ${PRICE LIST ITEM}
    [Teardown]      run keyword if    '${PRICE LIST ITEM}'==''    Log Screenshot

Verify Check Has Network Code Checkbox
    ${STATUS} =     set variable    False
    ${STATUS} =     check has network code checkbox
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Read Data From Upload Excel File
    [Arguments]     ${UPLOAD FILE PATH}
    [Documentation]     There are multiple keywords with the same name in another page resource. To avoid conflicts, class name has been mentioned to specify the targetted method.
    ${STATUS} =     set variable    False
    ${STATUS} =     Buy.read data from upload excel file        ${UPLOAD FILE PATH}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Compare Dialed Digit With Excel Data
    ${STATUS} =     set variable    False
    ${STATUS} =     compare dialed digit with excel data
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Compare Rates With Excel Data
    ${STATUS} =     set variable    False
    ${STATUS} =     compare rates with excel data
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Compare Destination With Excel Data
    ${STATUS} =     set variable    False
    ${STATUS} =     compare destination with excel data
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Rate Catalog
    [Arguments]     ${RATE CATALOG}
    ${STATUS} =     set variable    False
    ${STATUS} =     set rate catalog        ${RATE CATALOG}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Buy Module Begin Date
    [Arguments]     ${BEGIN DATE}
    [Documentation]     There are multiple keywords with the same name in another page resource. To avoid conflicts, class name has been mentioned to specify the targetted method.
    ${STATUS} =     set variable    False
    ${STATUS} =     Buy.set begin date      ${BEGIN DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Buy Module Search Button
    [Documentation]     There are multiple keywords with the same name in another page resource. To avoid conflicts, class name has been mentioned to specify the targetted method.
    ${STATUS} =     set variable    False
    ${STATUS} =     Buy.click search button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Vendor Price List Upload Failed Red Icon
    ${STATUS} =     set variable    False
    ${STATUS} =     click vendor price list upload failed red icon
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Jobs Grid Initial Row Count
    ${STATUS} =     set variable    False
    ${STATUS} =     get jobs grid initial row count
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Compare Jobs Grid Number Of Rows
    ${STATUS} =     set variable    False
    ${STATUS} =     compare jobs grid number of rows
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Sort Reg Time Column In Descending Order
    ${STATUS} =     set variable    False
    ${STATUS} =     sort reg time column in descending order
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Error Icon
    ${STATUS} =     set variable    False
    ${STATUS} =     click error icon
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Close Current Pop Up
    [Arguments]     ${POP UP NAME}
    [Documentation]     There are multiple keywords with the same name in another page resource. To avoid conflicts, class name has been mentioned to specify the targetted method.
    ${STATUS} =     set variable    False
    ${STATUS} =     Buy.close current pop up        ${POP UP NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Non Numeric Dd Invalid Message Shown
    ${STATUS} =     set variable    False
    ${STATUS} =     is non numeric dd invalid message shown
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Has Network Code Unchecked
    ${STATUS} =     set variable    False
    ${STATUS} =     is has network code unchecked
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Close Buy Window
    ${STATUS} =     set variable    False
    ${STATUS} =     close buy window
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Grid Filter Details
    [Arguments]     ${COLUMN NAME}       @{FILTER ITEM LIST}
    [Documentation]     There are multiple keywords with the same name in another page resource. To avoid conflicts, class name has been mentioned to specify the targetted method.
    ${STATUS} =     set variable    False
    ${STATUS} =     Buy.grid filter details     ${COLUMN NAME}       @{FILTER ITEM LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Buy Page Inline Action Button
    [Arguments]     ${ROW IDENTIFIER TEXT}
    ${STATUS} =     set variable    False
    ${STATUS} =     click buy page inline action button     ${ROW IDENTIFIER TEXT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Buy Page Inline Action Item
    [Arguments]     ${INLINE ITEM NAME}
    [Documentation]     There are multiple keywords with the same name in another page resource. To avoid conflicts, class name has been mentioned to specify the targetted method.
    ${STATUS} =     set variable    False
    ${STATUS} =     Buy.select inline action item       ${INLINE ITEM NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Created Vendor Name
    return from keyword     ${CREATED VENDOR NAME}

Verify Click Vendors Grid First Row Inline Action Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click vendors grid first row inline action button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Rates Page Loaded Properly
    ${STATUS} =     set variable    False
    ${STATUS} =     is rates page loaded properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Dialed Digits Page Loaded Properly
    ${STATUS} =     set variable    False
    ${STATUS} =     is dial digits page loaded properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Destinations Page Loaded Properly
    ${STATUS} =     set variable    False
    ${STATUS} =     is destinations page loaded properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Upload Vendor Price List Pop Up Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is upload vendor price list pop up available
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Close Current Tab
    [Arguments]     ${TAB NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     Buy.close current tab     ${TAB NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Vendor Page Inline Action Item
    [Arguments]     ${INLINE ITEM NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     select inline action item     ${INLINE ITEM NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Vendor Price List Grid First Row Inline Action Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click vendor price list grid first row inline action button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Export To Excel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click export to excel button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Vendor Grid Carrier
    [Arguments]     ${CARRIER NAME}
    ${VENDOR DETAILS} =     create dictionary       Carrier=${CARRIER NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     verify vendor details    ${VENDOR DETAILS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Last Price List Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${LAST PRICE LIST} =     get last price list from vendors grid
    log     ${LAST PRICE LIST}
    ${STATUS} =     validate date format       ${LAST PRICE LIST}       ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Vendors Grid Cost Currency Format
    [Arguments]     ${LOCALE FOR CURRENCY FORMAT}
    ${COST COLUMN VALUE} =     get vendors grid cost currency
    Log      ${COST COLUMN VALUE}
    ${STATUS} =     validate currency format         ${COST COLUMN VALUE}          ${LOCALE FOR CURRENCY FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Previous Created Vendor Name
    ${CREATED VENDOR NAME} =        get created vendor name
    Set Suite Variable      ${CREATED VENDOR NAME}
    should not be equal     ${CREATED VENDOR NAME}     ''
    return from keyword     ${CREATED VENDOR NAME}
    [Teardown]      run keyword if    '${CREATED VENDOR NAME}'==''    Log Screenshot

Verify Set Vendors
    [Arguments]     ${VENDOR NAME}=${CREATED VENDOR NAME}
    @{VENDORS LIST} =       create list         ${VENDOR NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set vendors     @{VENDORS LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Rates Destination
    ${STATUS} =     set variable    False
    ${STATUS} =     set rates destination
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Vendors Grid Margin Format
    [Arguments]     ${LOCALE FOR CURRENCY FORMAT}
    ${MARGIN COLUMN VALUE} =    get vendors grid margin column value
    log     ${MARGIN COLUMN VALUE}
    ${STATUS} =     validate currency format         ${MARGIN COLUMN VALUE}          ${LOCALE FOR CURRENCY FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Last Modified Date Format
    [Arguments]     ${EXPECTED TIME STAMP FORMAT}
    ${LAST MODIFIED DATE VALUE} =    get last modified value
    log     ${LAST MODIFIED DATE VALUE}
    ${STATUS} =     validate date format         ${LAST MODIFIED DATE VALUE}          ${EXPECTED TIME STAMP FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Rates Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select rates tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Begin Date Input Field Value Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${BEGIN DATE VALUE} =    get begin date
    log     ${BEGIN DATE VALUE}
    ${STATUS} =     validate date format         ${BEGIN DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Rates Grid Begin Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${BEGIN DATE VALUE} =    get rates grid begin date
    log     ${BEGIN DATE VALUE}
    ${STATUS} =     validate date format         ${BEGIN DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Rates Grid Last Modified Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${LAST MODIFIED DATE VALUE} =    get rates grid last modified date
    log     ${LAST MODIFIED DATE VALUE}
    ${STATUS} =     validate date format         ${LAST MODIFIED DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Dialed Digits Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select dialed digits tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Dialed Digits Grid Begin Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${BEGIN DATE VALUE} =    get dialed digits grid begin date
    log     ${BEGIN DATE VALUE}
    ${STATUS} =     validate date format         ${BEGIN DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Dialed Digits Last Modified Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${LAST MODIFIED DATE VALUE} =    get dialed digits grid last modified date
    log     ${LAST MODIFIED DATE VALUE}
    ${STATUS} =     validate date format         ${LAST MODIFIED DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Destinations Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     Buy.select destinations tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Destinations Grid Begin Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${BEGIN DATE VALUE} =    get destinations grid begin date
    log     ${BEGIN DATE VALUE}
    ${STATUS} =     validate date format         ${BEGIN DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Destinations Grid Last Modified Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${LAST MODIFIED DATE VALUE} =    get destinations grid last modified date
    log     ${LAST MODIFIED DATE VALUE}
    ${STATUS} =     validate date format         ${LAST MODIFIED DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Vendors Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select vendors tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Vendor Price List Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE VALUE} =    get vendor price list date
    log     ${ACTUAL DATE VALUE}
    ${STATUS} =     validate date format         ${ACTUAL DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Upload Cancel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click upload cancel button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Vendor Price List From Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE VALUE} =    get vendor price lists from date value
    log     ${ACTUAL DATE VALUE}
    ${STATUS} =     validate date format         ${ACTUAL DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Vendor Price List To Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE VALUE} =    get vendor price lists to date value
    log     ${ACTUAL DATE VALUE}
    ${STATUS} =     validate date format         ${ACTUAL DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Price List Date Column Value Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE VALUE} =    get price list date column value
    log     ${ACTUAL DATE VALUE}
    ${STATUS} =     validate date format         ${ACTUAL DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Price List Modified Date Column Value Format
    [Arguments]     ${EXPECTED TIME STAMP FORMAT}
    ${ACTUAL DATE VALUE} =    get price list modified date column value
    log     ${ACTUAL DATE VALUE}
    ${STATUS} =     validate date format         ${ACTUAL DATE VALUE}          ${EXPECTED TIME STAMP FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Buy Dashboard
    ${STATUS} =     set variable    False
    ${STATUS} =     select buy dashboard tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Country Group
    ${STATUS} =     set variable    False
    ${STATUS} =     click country group
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Country Groups Grid Last Modified Date Column Value Format
    [Arguments]     ${EXPECTED TIME STAMP FORMAT}
    ${ACTUAL DATE VALUE} =    get country groups grid last modified column value
    log     ${ACTUAL DATE VALUE}
    ${STATUS} =     validate date format         ${ACTUAL DATE VALUE}          ${EXPECTED TIME STAMP FORMAT}
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

Verify Set Vendors Grid Settings
    [Arguments]     ${GRID SETTING}
    ${STATUS} =     set variable    False
    ${STATUS} =     set vendor grid settings        ${GRID SETTING}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get All Rows of Specific Column From Vendors Grid
    [Arguments]     ${COLUMN NAME}
    @{ALL ROW DATA} =     get all rows of specific column from vendors grid       ${COLUMN NAME}
    return from keyword         @{ALL ROW DATA}

Verify Sort Vendors Grid Column In Ascending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort vendors grid column    ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Sort Vendors Grid Column In Descending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort vendors grid column    ${COLUMN NAME}      ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Vendors Grid Column Names By Order
    @{COLUMN NAME LIST} =     get vendors grid column names by order
    return from keyword         @{COLUMN NAME LIST}

Verify Drag Vendors Grid Column
    [Arguments]     ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     drag vendors grid column    ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Vendor Price Lists Grid Settings
    [Arguments]     ${GRID SETTING}
    ${STATUS} =     set variable    False
    ${STATUS} =     set vendor price lists grid settings        ${GRID SETTING}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get All Rows of Specific Column From Vendor Price Lists Grid
    [Arguments]     ${COLUMN NAME}
    @{ALL ROW DATA} =     get all rows of specific column from vendor price lists grid       ${COLUMN NAME}
    return from keyword         @{ALL ROW DATA}

Verify Sort Vendor Price Lists Grid Column In Ascending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort vendor price lists grid column    ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Sort Vendor Price Lists Grid Column In Descending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort vendor price lists grid column    ${COLUMN NAME}      ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Vendor Price Lists Grid Column Names By Order
    @{COLUMN NAME LIST} =     get vendor price lists grid column names by order
    return from keyword         @{COLUMN NAME LIST}

Verify Drag Vendor Price Lists Grid Column
    [Arguments]     ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     drag vendor price lists grid column    ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get All Rows of Specific Column From Rates Grid
    [Arguments]     ${COLUMN NAME}
    @{ALL ROW DATA} =     get all rows of specific column from rates grid       ${COLUMN NAME}
    return from keyword         @{ALL ROW DATA}

Verify Sort Rates Grid Column In Ascending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort rates grid column    ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Sort Rates Grid Column In Descending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort rates grid column    ${COLUMN NAME}      ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Rates Grid Column Names By Order
    @{COLUMN NAME LIST} =     get rates grid column names by order
    return from keyword         @{COLUMN NAME LIST}

Verify Drag Rates Grid Column
    [Arguments]     ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     drag rates grid column    ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get All Rows of Specific Column From Destinations Grid
    [Arguments]     ${COLUMN NAME}
    @{ALL ROW DATA} =     get all rows of specific column from destinations grid       ${COLUMN NAME}
    return from keyword         @{ALL ROW DATA}

Verify Sort Destinations Grid Column In Ascending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort destinations grid column    ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Sort Destinations Grid Column In Descending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort destinations grid column    ${COLUMN NAME}      ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Destinations Grid Column Names By Order
    @{COLUMN NAME LIST} =     get destinations grid column names by order
    return from keyword         @{COLUMN NAME LIST}

Verify Drag Destinations Grid Column
    [Arguments]     ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     drag destinations grid column    ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get All Rows of Specific Column From Dial Digits Grid
    [Arguments]     ${COLUMN NAME}
    @{ALL ROW DATA} =     get all rows of specific column from dialed digits grid       ${COLUMN NAME}
    return from keyword         @{ALL ROW DATA}

Verify Sort Dial Digits Grid Column In Ascending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort dialed digits grid column    ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Sort Dial Digits Grid Column In Descending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort dialed digits grid column    ${COLUMN NAME}      ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Dial Digits Grid Column Names By Order
    @{COLUMN NAME LIST} =     get dialed digits grid column names by order
    return from keyword         @{COLUMN NAME LIST}

Verify Drag Dial Digits Grid Column
    [Arguments]     ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     drag dialed digits grid column    ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Vendor Price List Detail Grid Settings
    [Arguments]     ${GRID SETTING}
    ${STATUS} =     set variable    False
    ${STATUS} =     set vendor price list detail grid settings        ${GRID SETTING}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get All Rows of Specific Column From Vendor Price List Detail Grid
    [Arguments]     ${COLUMN NAME}
    @{ALL ROW DATA} =     get all rows of specific column from vendor price list detail grid       ${COLUMN NAME}
    return from keyword         @{ALL ROW DATA}

Verify Sort Vendor Price List Detail Grid Column In Ascending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort vendor price list detail grid column    ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Sort Vendor Price List Detail Grid Column In Descending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort vendor price list detail grid column    ${COLUMN NAME}      ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Vendor Price List Detail Grid Column Names By Order
    @{COLUMN NAME LIST} =     get vendor price list detail grid column names by order
    return from keyword         @{COLUMN NAME LIST}

Verify Drag Vendor Price List Detail Grid Column
    [Arguments]     ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     drag vendor price list detail grid column    ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Dial Digits Tab Renamed
    [Arguments]     ${EXPECTED TAB NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     compare digits tab name     ${EXPECTED TAB NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Vendor Price List Detail Dial Digits Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select vendor price list detail dial digits tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Vendor Price List Detail Reference Rates Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select vendor price list detail reference rates tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Vendor Price List Detail Dial Digits Grid Settings
    [Arguments]     ${GRID SETTING}
    ${STATUS} =     set variable    False
    ${STATUS} =     set vendor price list detail dial digits grid settings        ${GRID SETTING}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get All Rows of Specific Column From Vendor Price List Detail Dial Digits Grid
    [Arguments]     ${COLUMN NAME}
    @{ALL ROW DATA} =     get all rows of specific column from vendor price list detail dial digits grid       ${COLUMN NAME}
    return from keyword         @{ALL ROW DATA}

Verify Sort Vendor Price List Detail Dial Digits Grid Column In Ascending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort vendor price list detail dial digits grid column    ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Sort Vendor Price List Detail Dial Digits Grid Column In Descending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort vendor price list detail dial digits grid column    ${COLUMN NAME}      ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Vendor Price List Detail Dial Digits Grid Column Names By Order
    @{COLUMN NAME LIST} =     get vendor price list detail dial digits grid column names by order
    return from keyword         @{COLUMN NAME LIST}

Verify Drag Vendor Price List Detail Dial Digits Grid Column
    [Arguments]     ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     drag vendor price list detail dial digits grid column    ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Vendor Price List Detail Reference Rates Grid Settings
    [Arguments]     ${GRID SETTING}
    ${STATUS} =     set variable    False
    ${STATUS} =     set vendor price list detail reference rates grid settings        ${GRID SETTING}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get All Rows of Specific Column From Vendor Price List Detail Reference Rates Grid
    [Arguments]     ${COLUMN NAME}
    @{ALL ROW DATA} =     get all rows of specific column from vendor price list detail reference rates grid       ${COLUMN NAME}
    return from keyword         @{ALL ROW DATA}

Verify Sort Vendor Price List Detail Reference Rates Grid Column In Ascending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort vendor price list detail reference rates grid column    ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Sort Vendor Price List Detail Reference Rates Grid Column In Descending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort vendor price list detail reference rates grid column    ${COLUMN NAME}      ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Vendor Price List Detail Reference Rates Grid Column Names By Order
    @{COLUMN NAME LIST} =     get vendor price list detail reference rates grid column names by order
    return from keyword         @{COLUMN NAME LIST}

Verify Drag Vendor Price List Detail Reference Rates Grid Column
    [Arguments]     ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     drag vendor price list detail reference rates grid column    ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Vendor Price List Detail Rates Grid Export To Excel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click vendor price list detail rates grid export to excel button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Vendor Price List Detail Dial Digits Grid Export To Excel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click vendor price list detail dial digits grid export to excel button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Vendor Price List Detail Reference Rates Grid Export To Excel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click vendor price list detail reference rates grid export to excel button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Country Group Scope
    [Arguments]     ${COUNTRY GROUP SCOPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set country group scope     ${COUNTRY GROUP SCOPE}
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

Verify Click Re Analysis Link
    ${STATUS} =     set variable    False
    ${STATUS} =     click re analysis link
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Re Analysis Grid Settings
    [Arguments]     ${GRID SETTING}
    ${STATUS} =     set variable    False
    ${STATUS} =     set re analysis grid settings        ${GRID SETTING}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get All Rows of Specific Column From Re Analysis Grid
    [Arguments]     ${COLUMN NAME}
    @{ALL ROW DATA} =     get all rows of specific column from re analysis grid       ${COLUMN NAME}
    return from keyword         @{ALL ROW DATA}

Verify Sort Re Analysis Grid Column In Ascending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort re analysis grid column    ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Sort Re Analysis Grid Column In Descending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort re analysis grid column    ${COLUMN NAME}      ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Re Analysis Grid Column Names By Order
    @{COLUMN NAME LIST} =     get re analysis grid column names by order
    return from keyword         @{COLUMN NAME LIST}

Verify Drag Re Analysis Grid Column
    [Arguments]     ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     drag re analysis grid column    ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Re Analysis Grid Export To Excel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click re analysis grid export to excel button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Upload Failure Message
    [Arguments]     ${MESSAGE}
    ${STATUS} =     set variable    False
    ${STATUS} =     compare upload failure message      ${MESSAGE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Failed Upload Info Icon
    ${STATUS} =     set variable    False
    ${STATUS} =     click failed upload info icon
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Failed Upload Info
    [Arguments]     ${MESSAGE}
    ${STATUS} =     set variable    False
    ${STATUS} =     compare failed upload info      ${MESSAGE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select View Price List Qos Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select qos tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Compare Qos With Excel Data
    ${STATUS} =     set variable    False
    ${STATUS} =     compare qos with excel data
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Mnp Column is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is mnp column present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Comments Column is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is comments column present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get All Rows of Rate Column From Vendor Price List Detail Grid
    [Arguments]     ${COLUMN NAME}
    @{ALL ROW DATA} =     get all rows of rate column from vendor price list detail grid       ${COLUMN NAME}
    return from keyword         @{ALL ROW DATA}

Verify Get All Rows of Rate Increase Violation Column From Vendor Price List Detail Grid
    [Arguments]     ${COLUMN NAME}
    @{ALL ROW DATA} =     get all rows of rate increase violation column from vendor price list detail grid       ${COLUMN NAME}
    return from keyword         @{ALL ROW DATA}

Verify Ascending Sorting Option Is Not Available In Destination Column
    [Arguments]    ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is sorting option not available in destination column         ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Descending Sorting Option Is Not Available In Destination Column
    [Arguments]    ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is sorting option not available in destination column         ${COLUMN NAME}        ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify IXTools Account Is Available
    [Arguments]      ${ACCOUNT NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is ixtools account present    ${ACCOUNT NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify New Uploaded Vendor Price List Is Not Available In The Grid
    ${STATUS} =     set variable    False
    ${STATUS} =     is vendor price list not displayed in the grid
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Guarantee CLI Checkbox
    ${STATUS} =     set variable    False
    ${STATUS} =     click guarantee cli checkbox
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Exclude Rating Method From Price List Checkbox
    ${STATUS} =     set variable    False
    ${STATUS} =     click exclude rating method from price list checkbox
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Price List Content
    [Arguments]     ${PRICE LIST CONTENT}
    ${STATUS} =     set variable    False
    ${STATUS} =     set price list content      ${PRICE LIST CONTENT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Country For Search
    [Arguments]     @{CREATED COUNTRY NAME LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     Buy.set country for search    @{CREATED COUNTRY NAME LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Inline Action Item With Inline Item Name
    [Arguments]     ${INLINE ITEM NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     Buy.select inline action item       ${INLINE ITEM NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Specific Tab On Vendor Profile Page Is Available
    [Arguments]     ${TAB NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is specific tab on vendor profile page present        ${TAB NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Specific Column On Vendor Profile Grid Is Available
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is specific column on vendor profile grid present        ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Reference Rates Show Search Form Link
    ${STATUS} =     set variable    False
    ${STATUS} =     click reference rates show search form link
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify View Dropdown Is Visible
    ${STATUS} =     set variable    False
    ${STATUS} =     is view dropdown visible
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Status Dropdown Is Visible
    ${STATUS} =     set variable    False
    ${STATUS} =     is status dropdown visible
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Discrepancy Dropdown Is Visible
    ${STATUS} =     set variable    False
    ${STATUS} =     is discrepancy dropdown visible
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify In Routing Flags Dropdown Is Visible
    ${STATUS} =     set variable    False
    ${STATUS} =     is in routing flags dropdown visible
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Rate Textbox Is Visible
    ${STATUS} =     set variable    False
    ${STATUS} =     is rate textbox visible
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Destination Textbox Is Visible
    ${STATUS} =     set variable    False
    ${STATUS} =     is destination textbox visible
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Reference Rates Grid Accept Column Is Checkbox
    ${STATUS} =     set variable    False
    ${STATUS} =     is reference rates grid accept column checkbox
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Re Analysis Grid First Row Inline Action Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click re analysis grid first row inline action button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Number Plan Changes Grid Header Is Dialed Digits MCC MNC
    ${STATUS} =     set variable    False
    ${STATUS} =     is number plan changes grid header dialed digits mcc mnc
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Inline Action Item With Module Name
    [Arguments]     ${INLINE ITEM NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     select inline action item with module name      ${INLINE ITEM NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Country Selection Criteria Field Is Available In Re Analysis Page
    ${STATUS} =     set variable    False
    ${STATUS} =     is country selection criteria field present in re analysis page
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Country Column Is Available In Re Analysis Page
    ${STATUS} =     set variable    False
    ${STATUS} =     is country column present in re analysis page
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Country Selection Criteria Field Is Available In Vendor Profile Page
    ${STATUS} =     set variable    False
    ${STATUS} =     is country selection criteria field present in vendor profile page
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Country Column Is Available In Vendor Profile Page
    ${STATUS} =     set variable    False
    ${STATUS} =     is country column present in vendor profile page
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Country Selection Criteria Field Is Available In Vendor Profile Dialed Digits Page
    ${STATUS} =     set variable    False
    ${STATUS} =     is country selection criteria field present in vendor profile dialed digits page
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Country Column Is Available In Vendor Profile Dialed Digits Page
    ${STATUS} =     set variable    False
    ${STATUS} =     is country column present in vendor profile dialed digits page
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Country Selection Criteria Field Is Available In Vendor Profile Destinations Page
    ${STATUS} =     set variable    False
    ${STATUS} =     is country selection criteria field present in vendor profile destinations page
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Country Column Is Available In Vendor Profile Destinations Page
    ${STATUS} =     set variable    False
    ${STATUS} =     is country column present in vendor profile destinations page
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Search Rate Arrow Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click search rate arrow button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Country Selection Criteria Field Is Available In View Price List Details Rate Page
    ${STATUS} =     set variable    False
    ${STATUS} =     is country selection criteria field present in view price list details rate page
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Country Column Is Available In View Price List Details Rate Page
    ${STATUS} =     set variable    False
    ${STATUS} =     is country column present in view price list details rate page
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Search Dialed Digits Arrow Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click search dialed digits arrow button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Country Selection Criteria Field Is Available In View Price List Details Dialed Digits Page
    ${STATUS} =     set variable    False
    ${STATUS} =     is country selection criteria field present in view price list details dialed digits page
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Country Column Is Available In View Price List Details Dialed Digits Page
    ${STATUS} =     set variable    False
    ${STATUS} =     is country column present in view price list details dialed digits page
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Search Ref Rates Arrow Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click search ref rates arrow button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Country Selection Criteria Field Is Available In View Price List Details Ref Rates Page
    ${STATUS} =     set variable    False
    ${STATUS} =     is country selection criteria field present in view price list details ref rates page
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Country Column Is Available In View Price List Details Ref Rates Page
    ${STATUS} =     set variable    False
    ${STATUS} =     is country column present in view price list details ref rates page
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Reference Rates Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select reference rates tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Country Selection Criteria Field Is Available In Compare Price List Pop Up
    ${STATUS} =     set variable    False
    ${STATUS} =     is country selection criteria field present in compare price list pop up
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Country Column Is Available In Compare Price List Pop Up
    ${STATUS} =     set variable    False
    ${STATUS} =     is country column present in compare price list pop up
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Mcc Mnc Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select mcc mnc tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Search Mcc Mnc Arrow Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click search mcc mnc arrow button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Status Filter Has All Status Item
    [Arguments]     @{STATUS ITEM LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     verify status filter      @{STATUS ITEM LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Re Analysis Status
    [Arguments]     @{STATUS ITEM LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     set re analysis status      @{STATUS ITEM LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Compare Vendor Price List Detail Rates Grid Destination
    ${STATUS} =     set variable    False
    ${STATUS} =     compare vendor price list detail rates grid destination
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Compare Vendor Price List Detail Dial Digits Grid Destination
    ${STATUS} =     set variable    False
    ${STATUS} =     compare vendor price list detail dial digits grid destination
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Compare Vendor Price List Detail Rates Grid Rate
    ${STATUS} =     set variable    False
    ${STATUS} =     compare vendor price list detail rates grid rate
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Reference Rates Tab Analyzed Rate
    ${ANALYZED RATE} =     get reference rates tab analyzed rate
    log     ${ANALYZED RATE}
    should not be equal     '${ANALYZED RATE}'    ''
    return from keyword     ${ANALYZED RATE}
    [Teardown]      run keyword if    '${ANALYZED RATE}'==''    Log Screenshot

Verify Get Reference Rates Tab Effective Date
    ${EFFECTIVE DATE} =     get reference rates tab effective date
    log     ${EFFECTIVE DATE}
    should not be equal     '${EFFECTIVE DATE}'    ''
    return from keyword     ${EFFECTIVE DATE}
    [Teardown]      run keyword if    '${EFFECTIVE DATE}'==''    Log Screenshot

Verify Target Buy Policies Tab Is Displayed
    ${STATUS} =     set variable    False
    ${STATUS} =     is target buy policies tab displayed
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Target Buy Policies Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select target buy policies tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Button Is Displayed
    [Arguments]     ${BUTTON NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is button displayed     ${BUTTON NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Target Buy Policies Grid Column Is Present
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is target buy policies grid column present      ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Target Buy Policies Grid First Row Inline Action Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click target buy policies grid first row inline action button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Inline Action Item Is Present
    [Arguments]     ${ITEM NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is inline action item present      ${ITEM NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Create New Target Buy Policy Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click create new target buy policy button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Target Buy Policy Name
    [Arguments]     ${PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set target buy policy name      ${PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Created Target Buy Policy
    ${TARGET BUY POLICY} =      get target buy policy
    return from keyword     ${TARGET BUY POLICY}

Verify Set Target Buy Policy Abbreviation
    [Arguments]     ${PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set target buy policy abbreviation      ${PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Route Class to Create New Target Buy Policy
    [Arguments]     ${ROUTE CLASS}
    ${STATUS} =     set variable    False
    ${STATUS} =     set route class to create new target buy policy      ${ROUTE CLASS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Include CLI Checkbox
    ${STATUS} =     set variable    False
    ${STATUS} =     click include cli checkbox
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Automate Generation Checkbox
    ${STATUS} =     set variable    False
    ${STATUS} =     click automate generation checkbox
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Save Target Buy Policy Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click save target buy policy button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Target Buy Overrides Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click target buy overrides button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Target Buy List Overrides Screen Is Loaded
    ${STATUS} =     set variable    False
    ${STATUS} =     is target buy list overrides screen loaded
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Destination Input Textbox Is Visible
    ${STATUS} =     set variable    False
    ${STATUS} =     is destination input textbox visible
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Expected Grid Column Is Present
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is expected grid column present     ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Expected Dropdown List Control Present in Target Buy Overrides Screen
    [Arguments]     ${DROP DOWN}
    ${STATUS} =     set variable    False
    ${STATUS} =     is expected dropdown list control visible in target buy overrides screen    ${DROP DOWN}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Multiple Rows of Target Buy List Overrides Grid
    ${STATUS} =     set variable    False
    ${STATUS} =     select multiple rows of target buy list overrides grid
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Target Buy List Overrides Bulk Edit Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click target buy list overrides bulk edit button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Bulk Edit End Date
    [Arguments]     ${END DATE}        ${FUTURE DATE}=${False}
    ${STATUS} =     set variable    False
    ${STATUS} =     set bulk edit end date      ${END DATE}     ${FUTURE DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Bulk Edit Submit Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click bulk edit submit button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Buy And Sell Deal Management Link
    ${STATUS} =     set variable    False
    ${STATUS} =     click buy and sell deal management link
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Request New Buy And Sell Deal
    ${STATUS} =     set variable    False
    ${STATUS} =     click request new buy and sell deal
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Buy and Sell Deal Details Screen Status Dropdown is Visible
    ${STATUS} =     set variable    False
    ${STATUS} =     is buy and sell deal details screen status dropdown visible
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify End Date Text Box is Visible
    ${STATUS} =     set variable    False
    ${STATUS} =     is end date text box visible
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Auto Expire CheckBox is Visible
    ${STATUS} =     set variable    False
    ${STATUS} =     is auto expire checkbox visible
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Column Name Proposed Deal Summary Table
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     verify proposed deal summary table column name     ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Target Buy Details Section Is Present In Vendor Profile Page
    ${STATUS} =     set variable    False
    ${STATUS} =     is target buy details section present in vendor profile page
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Specific Field On Target Buy Details Section Is Available
    [Arguments]     ${FIELD NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is specific field on target buy details section present        ${FIELD NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Target Buy Distribution Link Code
    ${STATUS} =     set variable    False
    ${STATUS} =     set target buy distribution link code
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Target Buy Distribution Receiving Member
    [Arguments]     ${MEMBER NAME PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set target buy distribution receiving member        ${MEMBER NAME PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Target Buy List
    [Arguments]     ${ITEM NAME}=${EMPTY}       ${IS FIRST ITEM}=${FALSE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set target buy list       ${ITEM NAME}        ${IS FIRST ITEM}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Target Buy List Number Plan
    [Arguments]     ${ITEM NAME}=${EMPTY}       ${IS FIRST ITEM}=${FALSE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set target buy list number plan       ${ITEM NAME}        ${IS FIRST ITEM}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Buy And Sell Deal Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click buy and sell deal save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Target Buy Policy Grid Row Details
    [Arguments]     ${STATUS}       ${TYPE}     ${CALL TYPE}        ${ROUTE CLASS}
    ${ACTUAL DETAILS} =     create dictionary       Status=${STATUS}     Target Buy Policy Type=${TYPE}     Call Type=${CALL TYPE}      Route Class=${ROUTE CLASS}
    ${STATUS} =     set variable    False
    ${EXPECTED DETAILS} =     get target buy policy grid row details
    should be equal         ${ACTUAL DETAILS}       ${EXPECTED DETAILS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Target Buy Policy Grid First Row Inline Action Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click target buy policy grid first row inline action button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Edit Target Buy Policy Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click edit target buy policy button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Cancel Edited Target Buy Policy Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click cancel edited target buy policy button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Save Edited Target Buy Policy Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click save edited target buy policy button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Target Buy Policy Type
    [Arguments]     ${TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set target buy policy type      ${TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Refresh Buy Window
    ${STATUS} =     set variable    False
    ${STATUS} =     refresh window
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot
