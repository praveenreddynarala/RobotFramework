*** Settings ***
Documentation   Route Page Resource File With All Necessary Keywords

Resource        ../common_resource.robot

Library         ../../../TestFramework/Libraries/RobotTests/Home.py
Library         ../../../TestFramework/Libraries/RobotTests/Route.py
Library         Collections

*** Variables ***
${EXPECTED PAGE TITLE}                          Route
${ACTUAL PAGE TITLE}                            ${EMPTY}
${STATUS}                                       ${EMPTY}
${EXPECTED COMMERCIAL ROUTING TAB HEADER}       Commercial Route Guide Management
${ACTUAL COMMERCIAL ROUTING TAB HEADER}         ${EMPTY}
${EXPECTED TECHNICAL ROUTING TAB HEADER}        Technical Route Guide Management
${ACTUAL TECHNICAL ROUTING TAB HEADER}          ${EMPTY}
${INCLUSION BEGIN DATE}                         ${EMPTY}
${INCLUSIONS GRID ROW DETAILS}                  ${EMPTY}
${OVERRIDES GRID ROW DETAILS}                   ${EMPTY}
${SUGGESTED TRUNKS GRID ROW DETAILS}            ${EMPTY}
${EXCLUDED TRUNKS GRID ROW DETAILS}            ${EMPTY}
${AVAILABLE TRUNKS GRID ROW DETAILS}            ${EMPTY}
${EXCLUSIONS GRID ROW DETAILS}                  ${EMPTY}
${SELECTED ROUTE CLASS}                         ${EMPTY}
${SELECTED ROUTING PRODUCT}                     ${EMPTY}
${TRANSITION AUTOMATION GRID ROW DETAILS}       ${EMPTY}

*** Keywords ***
Click on Home Icon and Select 'Route' From Main Menu
    ${STATUS} =     set variable    False
    select route submenu
    ${STATUS} =     switch to route
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Page Title
    ${ACTUAL PAGE TITLE} =  get route page title
    should contain     ${ACTUAL PAGE TITLE}     ${EXPECTED PAGE TITLE}
    [Teardown]      run keyword unless     '${ACTUAL PAGE TITLE}'=='${EXPECTED PAGE TITLE}'    Log Screenshot

Verify The Commercial Dashboard Tab Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is commercial dashboard tab present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Commercial Routing Tab Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is commercial routing tab present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Technical Routing Tab Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is technical routing tab present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Manage Reasons link is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is manage reasons link present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Transition Automation link is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is transition automation link present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Commercial Routing Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select commercial routing tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Commercial Routing Tab Header
    ${ACTUAL COMMERCIAL ROUTING TAB HEADER} =     get commercial routing tab header
    should be equal     ${ACTUAL COMMERCIAL ROUTING TAB HEADER}     ${EXPECTED COMMERCIAL ROUTING TAB HEADER}
    [Teardown]      run keyword unless    '${ACTUAL COMMERCIAL ROUTING TAB HEADER}'=='${EXPECTED COMMERCIAL ROUTING TAB HEADER}'    Log Screenshot

Verify Select Technical Routing Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select technical routing tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Technical Routing Tab Header
    ${ACTUAL TECHNICAL ROUTING TAB HEADER} =     get technical routing tab header
    should be equal     ${ACTUAL TECHNICAL ROUTING TAB HEADER}     ${EXPECTED TECHNICAL ROUTING TAB HEADER}
    [Teardown]      run keyword unless    '${ACTUAL TECHNICAL ROUTING TAB HEADER}'=='${EXPECTED TECHNICAL ROUTING TAB HEADER}'    Log Screenshot

Verify Click Benchmarks Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click benchmarks button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set New Benchmark Values
    ${STATUS} =     set variable    False
    ${STATUS} =     set new benchmark values
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Default Benchmark Values
    ${STATUS} =     set variable    False
    ${STATUS} =     set default benchmark values
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Route Class Benchmarks Save Changes Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click route class benchmarks save changes button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Close Current Tab
    [Arguments]     ${TAB NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     Route.close current tab       ${TAB NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Create New Suggestions Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click create new suggestion button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify New Suggestions Window Is Loaded Properly
    ${STATUS} =     set variable    False
    ${STATUS} =     is new suggestion window loaded properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Close Current Pop Up
    [Arguments]     ${POP UP NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     Route.close current pop up       ${POP UP NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Commercial Routing Grid Search Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click commercial routing grid search button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Commercial Routing Grid First Row Checkbox
    ${STATUS} =     set variable    False
    ${STATUS} =     select commercial routing grid first row checkbox
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Recalc RGs Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click recalc rgs button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Commercial Routing Grid Cancel Changes Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click commercial routing grid cancel changes button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Commercial Routing Grid First Row Routing Product
    ${STATUS} =     set variable    False
    ${STATUS} =     get commercial routing grid first row routing product
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Commercial Grid First Row Inline Action Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click commercial routing grid first row inline action button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Commercial Routing Grid Inline Action Item
    [Arguments]     ${INLINE ITEM NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     select commercial routing grid inline action item       ${INLINE ITEM NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Benchmark Management Page Is Loaded Properly
    ${STATUS} =     set variable    False
    ${STATUS} =     is benchmark management page loaded properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Exclusion Management Page Is Loaded Properly
    ${STATUS} =     set variable    False
    ${STATUS} =     is exclusion management page loaded properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Overrides Management Page Is Loaded Properly
    ${STATUS} =     set variable    False
    ${STATUS} =     is overrides management page loaded properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Emergency Routing Page Is Loaded Properly
    ${STATUS} =     set variable    False
    ${STATUS} =     is emergency routing page loaded properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Compare Selected Routing Product
    ${STATUS} =     set variable    False
    ${STATUS} =     compare selected routing product
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Max Route Commercial Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select max route commercial tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Value In Max Route Commercial Grid Column
    ${STATUS} =     set variable    False
    ${STATUS} =     set value in max route commercial grid column
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Max Route Commercial Save Changes Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click max route commercial save changes button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Max Trunks Per Switch Grid New Benchmark Values
    ${STATUS} =     set variable    False
    ${STATUS} =     set max trunks per switch grid new benchmark values
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Override Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click override button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click New Override Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click new override button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Reason
    [Arguments]     ${REASON}
    @{REASON LIST} =    create list         ${REASON}
    ${STATUS} =     set variable    False
    ${STATUS} =     set reason       @{REASON LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Override Route Class For Search
    [Arguments]     ${ROUTE CLASS}
    @{ROUTE CLASS LIST} =   create list     ${ROUTE CLASS}
    ${STATUS} =     set variable    False
    ${STATUS} =     set override route class for search       @{ROUTE CLASS LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Override
    [Arguments]     @{OVERRIDE LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     set override       @{OVERRIDE LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Switch
    [Arguments]     ${SWITCH}
    @{SWITCH LIST} =    create list     ${SWITCH}
    ${STATUS} =     set variable    False
    ${STATUS} =     set switch      @{SWITCH LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Override Search Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click override search button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set New Override Switch
    [Arguments]     ${SWITCH}
    ${STATUS} =     set variable    False
    ${STATUS} =     set new override switch     ${SWITCH}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set New Override Route Class
    [Arguments]     ${ROUTE CLASS}
    @{ROUTE CLASS LIST} =   create list       ${ROUTE CLASS}
    ${STATUS} =     set variable    False
    ${STATUS} =     set new override route class        @{ROUTE CLASS LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set New Override Account
    [Arguments]     ${ACCOUNT}
    ${STATUS} =     set variable    False
    ${STATUS} =     set new override account    ${ACCOUNT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set New Override Country
    [Arguments]     ${COUNTRY}
    ${STATUS} =     set variable    False
    ${STATUS} =     set new override country    ${COUNTRY}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set New Override Trunk
    [Arguments]     ${TRUNK}        ${SWITCH}
    ${STATUS} =     set variable    False
    ${STATUS} =     set new override trunk      ${TRUNK}        ${SWITCH}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set New Override Routing Product
    [Arguments]     @{ROUTING PRODUCT LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     set new override routing product        @{ROUTING PRODUCT LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set New Override Routing Percentage
    [Arguments]     ${ROUTING PERCENTAGE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set new override routing percentage     ${ROUTING PERCENTAGE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Rank
    [Arguments]     ${RANK}
    ${STATUS} =     set variable    False
    ${STATUS} =     set rank        ${RANK}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set New Override Reason
    [Arguments]     ${REASON}
    ${STATUS} =     set variable    False
    ${STATUS} =     set new override reason     ${REASON}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set New Override Note
    [Arguments]     ${NOTE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set new override note       ${NOTE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Review Overrides Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click review overrides button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Override Save And Close Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click override save and close button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Overrides Grid Inline Action Button
    [Arguments]     ${ROW IDENTIFIER TEXT}
    ${STATUS} =     set variable    False
    ${STATUS} =     click overrides grid inline action button       ${ROW IDENTIFIER TEXT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Inline Action Item
    [Arguments]     ${INLINE ITEM}
    ${STATUS} =     set variable    False
    ${STATUS} =     Route.select inline action item       ${INLINE ITEM}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Confirm Release Overrides Pop Ups
    ${STATUS} =     set variable    False
    ${STATUS} =     confirm release overrides pop ups
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Overrides Grid Row Checkbox
    [Arguments]     ${ROW IDENTIFIER TEXT}
    ${STATUS} =     set variable    False
    ${STATUS} =     select overrides grid row checkbox       ${ROW IDENTIFIER TEXT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Override Bulk Edit Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click override bulk edit button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Note
    [Arguments]     ${NOTE}
    ${STATUS} =     set variable    False
    ${STATUS} =     Route.set note    ${NOTE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Bulk Edit Percentage
    [Arguments]     ${PERCENTAGE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set bulk edit percentage        ${PERCENTAGE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Bulk Edit Submit Button
    ${STATUS} =     set variable    False
    ${STATUS} =     Route.click bulk edit submit button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Override Save Changes Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click override save changes button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Overrides Grid Row Details
    ${OVERRIDES GRID ROW DETAILS} =     get overrides grid row details
    set suite variable      ${OVERRIDES GRID ROW DETAILS}
    ${LENGTH} =     get length      ${OVERRIDES GRID ROW DETAILS}
    [Teardown]      run keyword if    '${LENGTH}'=='0'    Log Screenshot

Verify Filter Overrides Grid
    [Arguments]     ${COLUMN NAME}      ${FILTER ITEM}
    @{FILTER ITEM LIST} =   create list         ${FILTER ITEM}
    ${STATUS} =     set variable    False
    ${STATUS} =     filter overrides grid     ${COLUMN NAME}      @{FILTER ITEM LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Compare Overrides Grid Row Details
    [Arguments]     ${TRUNK}      ${ROUTE CLASS}      ${ROUTING PRODUCT}     ${RANK}    ${REASON}
    ${STATUS} =     set variable    False
    ${CREATED OVERRIDES GRID ROW DETAILS} =   create dictionary     Trunk=${TRUNK}      Route Class=${ROUTE CLASS}     Routing Product=${ROUTING PRODUCT}     Rank=${RANK}     Reason=${REASON}
    dictionaries should be equal        ${CREATED OVERRIDES GRID ROW DETAILS}      ${OVERRIDES GRID ROW DETAILS}
    ${STATUS} =     set variable    True
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Filter Max Route Commercial Grid
    [Arguments]     ${COLUMN NAME}      ${FILTER ITEM TEXT}
    ${STATUS} =     set variable    False
    ${STATUS} =     filter max route commercial grid       ${COLUMN NAME}      ${FILTER ITEM TEXT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Max Trunks Per Switch Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select max trunks per switch tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Compare Max Trunks Per Switch Grid Modified Benchmark Values
    ${STATUS} =     set variable    False
    ${STATUS} =     compare max trunks per switch grid modified benchmark values
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Max Trunks Per Switch Grid Default Benchmark Values
    ${STATUS} =     set variable    False
    ${STATUS} =     set max trunks per switch grid default benchmark values
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Max Trunks Per Switch Save Changes Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click max trunks per switch save changes button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Exclusion Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click exclusion button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click New Exclusion Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click new exclusion button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set New Exclusion Reason
    [Arguments]     ${REASON}
    ${STATUS} =     set variable    False
    ${STATUS} =     set new exclusion reason       ${REASON}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set New Exclusion Note
    [Arguments]     ${NOTE PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set new exclusion note       ${NOTE PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set New Exclusion Account
    [Arguments]     ${ACCOUNT}
    @{ACCOUNT LIST} =    create list     ${ACCOUNT}
    ${STATUS} =     set variable    False
    ${STATUS} =     set new exclusion account       @{ACCOUNT LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set New Exclusion Switch
    [Arguments]     ${SWITCH}
    @{SWITCH LIST} =    create list     ${SWITCH}
    ${STATUS} =     set variable    False
    ${STATUS} =     set new exclusion switch       @{SWITCH LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set New Exclusion Trunk
    [Arguments]     ${TRUNK}
    ${STATUS} =     set variable    False
    ${STATUS} =     set new exclusion trunk     ${TRUNK}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Trunk Section Go Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click trunk section go button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Move Available Trunks To Destination
    [Arguments]     ${TRUNKS}
    ${STATUS} =     set variable    False
    ${STATUS} =     move available trunks to destination     ${TRUNKS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Move Available Route Classes To Destination
    ${STATUS} =     set variable    False
    ${STATUS} =     move available route classes to destination
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set New Exclusion Country
    [Arguments]     @{COUNTRY}
    ${STATUS} =     set variable    False
    ${STATUS} =     set new exclusion country       @{COUNTRY}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Products Section Go Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click products section go button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Move Available Products To Destination
    ${STATUS} =     set variable    False
    ${STATUS} =     move available products to destination
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Review Exclusions Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click review exclusions button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Save And Close Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click save and close button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Reason For Search
    [Arguments]     ${REASON}
    @{REASON LIST} =     create list     ${REASON}
    ${STATUS} =     set variable    False
    ${STATUS} =     set reason for search       @{REASON LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Switch For Search
    [Arguments]     ${SWITCH}
    @{SWITCH LIST} =     create list     ${SWITCH}
    ${STATUS} =     set variable    False
    ${STATUS} =     set switch for search       @{SWITCH LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Account For Search
    [Arguments]     ${ACCOUNT}
    @{ACCOUNT LIST} =    create list     ${ACCOUNT}
    ${STATUS} =     set variable    False
    ${STATUS} =     set account for search       @{ACCOUNT LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Trunk For Search
    [Arguments]     ${TRUNK}
    @{TRUNK LIST} =  create list         ${TRUNK}
    ${STATUS} =     set variable    False
    ${STATUS} =     set trunk for search       @{TRUNK LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Country For Search
    [Arguments]     @{COUNTRY}
    ${STATUS} =     set variable    False
    ${STATUS} =     Route.set country for search       @{COUNTRY}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Exclusions Grid Search Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click exclusions grid search button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Exclusions Grid First Row Checkbox
    ${STATUS} =     set variable    False
    ${STATUS} =     select exclusions grid first row checkbox
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Exclusions Grid Bulk Edit Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click exclusions grid bulk edit button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Exclusions Bulk Edit Begin Date
    [Arguments]     ${BEGIN DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set bulk edit begin date       ${BEGIN DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Exclusions Bulk Edit Note
    [Arguments]     ${NOTE}
    ${STATUS} =     set variable    False
    ${STATUS} =     Route.set bulk edit note       ${NOTE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Bulk Edit Undo Reset Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click bulk edit undo reset button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Bulk Edit Input Field Is Reset
    [Arguments]     ${FIELD LABEL TEXT}
    ${STATUS} =     set variable    False
    ${STATUS} =     is bulk edit input field reset       ${FIELD LABEL TEXT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Bulk Edit Cancel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click bulk edit cancel button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Exclusions Grid Save Changes Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click exclusions grid save changes button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Exclusions Grid Delete Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click exclusions grid delete button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Qos Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select qos tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Qos Save Changes Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click qos save changes button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Value In Qos Grid Column
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set value in qos grid column    ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Inclusion Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click inclusion button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click New Inclusion Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click new inclusion button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Inclusion Level
    [Arguments]     ${INCLUSION LEVEL}
    ${STATUS} =     set variable    False
    ${STATUS} =     set inclusion level     ${INCLUSION LEVEL}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Inclusion Begin Date
    [Arguments]     ${BEGIN DATE}
    ${INCLUSION BEGIN DATE} =     set inclusion begin date    ${BEGIN DATE}
    set suite variable      ${INCLUSION BEGIN DATE}
    should not be equal     ${INCLUSION BEGIN DATE}     ''
    [Teardown]      run keyword if    '${INCLUSION BEGIN DATE}'==''    Log Screenshot

Verify Set End Date
    [Arguments]     ${END DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     Route.set end date    ${END DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set New Inclusion Reason
    [Arguments]     ${REASON}
    ${STATUS} =     set variable    False
    ${STATUS} =     set new inclusion reason        ${REASON}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set New Inclusion Account
    [Arguments]     ${ACCOUNT}
    @{ACCOUNT LIST} =   create list     ${ACCOUNT}
    ${STATUS} =     set variable    False
    ${STATUS} =     set new inclusion account       @{ACCOUNT LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set New Inclusion Trunk
    [Arguments]     ${TRUNK}
    ${STATUS} =     set variable    False
    ${STATUS} =     set new inclusion trunk         ${TRUNK}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Trunk Go Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click trunk go button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Move Available Trunks To Include
    [Arguments]     ${TRUNK}
    ${STATUS} =     set variable    False
    ${STATUS} =     move available trunks to include        ${TRUNK}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Move Available Route Classes To Include
    ${STATUS} =     set variable    False
    ${STATUS} =     move available route classes to include
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set New Inclusion Country
    [Arguments]     @{COUNTRY LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     set new inclusion country       @{COUNTRY LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Move Available Products To Include
    [Arguments]     @{PRODUCT LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     move available products to include      @{PRODUCT LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Product Go Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click product go button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Review Inclusions Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click review inclusions button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Inclusion Click Save And Close Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click inclusion save and close button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Effective Date
    ${STATUS} =     set variable    False
    ${STATUS} =     Route.set effective date      ${INCLUSION BEGIN DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Inclusion Type
    [Arguments]     ${INCLUSION TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set inclusion type      ${INCLUSION TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Inclusion Search Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click inclusion search button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Inclusions Grid Row Details
    ${INCLUSIONS GRID ROW DETAILS} =     get inclusions grid row details
    set suite variable      ${INCLUSIONS GRID ROW DETAILS}
    ${LENGTH} =     get length      ${INCLUSIONS GRID ROW DETAILS}
    [Teardown]      run keyword if    '${LENGTH}'=='0'    Log Screenshot

Verify Compare Inclusion Grid Row Data
    [Arguments]     ${COMMERCIAL TRUNK}      ${PRODUCT}     ${ACCOUNT}    ${REASON}
    ${STATUS} =     set variable    False
    ${CREATED NINCLUSIONS GRID ROW DETAILS} =   create dictionary     Begin Date=${INCLUSION BEGIN DATE}      Commercial Trunk=${COMMERCIAL TRUNK}     Routing Product=${PRODUCT}     Account=${ACCOUNT}     Reason=${REASON}
    dictionaries should be equal        ${CREATED NINCLUSIONS GRID ROW DETAILS}      ${INCLUSIONS GRID ROW DETAILS}
    ${STATUS} =     set variable    True
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Inclusions Grid Row Checkbox
    [Arguments]     ${ROW IDENTIFIER TEXT}
    ${STATUS} =     set variable    False
    ${STATUS} =     select inclusions grid row checkbox     ${ROW IDENTIFIER TEXT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Inclusion Bulk Edit Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click inclusion bulk edit button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Begin Date
    [Arguments]     ${BEGIN DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     Route.set begin date      ${BEGIN DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Bulk Edit Reason
    [Arguments]     ${REASON}
    ${STATUS} =     set variable    False
    ${STATUS} =     set bulk edit reason    ${REASON}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Inclusion Save Changes Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click inclusion save changes button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Inclusion Delete Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click inclusion delete button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Effective Date With Argument
    [Arguments]     ${EFFECTIVE DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     Route.set effective date      ${EFFECTIVE DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Qos Import Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click qos import button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Techincal Routing Override Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click technical routing override button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Import Browse Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click import browse button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select The File To Be Uploaded
    [Arguments]     ${FILE PATH TO UPLOAD}
    ${STATUS} =     set variable    False
    ${STATUS} =     Route.select the file to be uploaded      ${FILE PATH TO UPLOAD}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Upload Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click upload button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Upload Cancel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click upload cancel button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Qos Export Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click qos export button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Commercial Routing Grid First Row Routing Product Link
    ${STATUS} =     set variable    False
    ${STATUS} =     click commercial routing grid first row routing product link
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Notes Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select notes tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Add Note Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click add note button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Note In Notes Grid
    [Arguments]     ${NOTE PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set note in notes grid      ${NOTE PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Add Note Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click add note save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Add Note Delete Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click add note delete button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Benchmarks Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select benchmarks tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set New Benchmark Values In Route Guide Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     set new benchmark values in route guide tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Default Benchmark Values In Route Guide Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     set default benchmark values in route guide tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Technical Routing Grid Search Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click technical routing grid search button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Technical Routing Grid First Row Inline Action Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click technical routing grid first row inline action button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Fast Track Exclusion Window Is Loaded Properly
    ${STATUS} =     set variable    False
    ${STATUS} =     is fast track exclusion window loaded properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Close Fast Track Exclusion Window
    ${STATUS} =     set variable    False
    ${STATUS} =     close fast track exclusion window
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Routing Status For Search
    [Arguments]     ${ROUTING STATUS}
    ${STATUS} =     set variable    False
    ${STATUS} =     set routing status for search      ${ROUTING STATUS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Technical Routing Grid First Row Checkbox
    ${STATUS} =     set variable    False
    ${STATUS} =     select technical routing grid first row checkbox
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Technical Routing Grid Recalc RGs Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click technical routing grid recalc rgs button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Move To Excluded Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click move to excluded button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Move To Available Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click move to available button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Available Trunks Grid Move To Suggested Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click available trunks grid move to suggested button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Excluded Trunks Grid Move To Suggested Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click excluded trunks grid move to suggested button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Save And Recalculate Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click save and recalculate button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Excluded Trunks Radio Button
    ${STATUS} =     set variable    False
    ${STATUS} =     select excluded trunks radio button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Suggested Trunks Grid First Row Checkbox
    ${STATUS} =     set variable    False
    ${STATUS} =     select suggested trunks grid first row checkbox
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Available Trunks Grid First Row Checkbox
    ${STATUS} =     set variable    False
    ${STATUS} =     select available trunks grid first row checkbox
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Excluded Trunks Grid First Row Checkbox
    ${STATUS} =     set variable    False
    ${STATUS} =     select excluded trunks grid first row checkbox
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Suggested Trunks Grid First Row Details
    ${SUGGESTED TRUNKS GRID ROW DETAILS} =     get suggested trunks grid first row details
    set suite variable      ${SUGGESTED TRUNKS GRID ROW DETAILS}
    ${LENGTH} =     get length      ${SUGGESTED TRUNKS GRID ROW DETAILS}
    [Teardown]      run keyword if    '${LENGTH}'=='0'    Log Screenshot

Verify Get Excluded Trunks Grid First Row Details
    ${EXCLUDED TRUNKS GRID ROW DETAILS} =     get excluded trunks grid first row details
    set suite variable      ${EXCLUDED TRUNKS GRID ROW DETAILS}
    ${LENGTH} =     get length      ${EXCLUDED TRUNKS GRID ROW DETAILS}
    [Teardown]      run keyword if    '${LENGTH}'=='0'    Log Screenshot

Verify Get Available Trunks Grid First Row Details
    ${AVAILABLE TRUNKS GRID ROW DETAILS} =     get available trunks grid first row details
    set suite variable      ${AVAILABLE TRUNKS GRID ROW DETAILS}
    ${LENGTH} =     get length      ${AVAILABLE TRUNKS GRID ROW DETAILS}
    [Teardown]      run keyword if    '${LENGTH}'=='0'    Log Screenshot

Verify Compare Excluded And Suggested Trunks Grid Row Details
    ${STATUS} =     set variable    False
    dictionaries should be equal        ${SUGGESTED TRUNKS GRID ROW DETAILS}      ${EXCLUDED TRUNKS GRID ROW DETAILS}
    ${STATUS} =     set variable    True
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Compare Available And Suggested Trunks Grid Row Details
    ${STATUS} =     set variable    False
    dictionaries should be equal        ${SUGGESTED TRUNKS GRID ROW DETAILS}      ${AVAILABLE TRUNKS GRID ROW DETAILS}
    ${STATUS} =     set variable    True
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Technical Routing Exclusion Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click technical routing exclusion button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set New Exclusion Level
    [Arguments]     ${EXCLUSION LEVEL}
    ${STATUS} =     set variable    False
    ${STATUS} =     set new exclusion level     ${EXCLUSION LEVEL}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Exclusion Begin Date
    [Arguments]     ${BEGIN DATE}
    ${INCLUSION BEGIN DATE} =     set exclusion begin date      ${BEGIN DATE}
    set suite variable      ${INCLUSION BEGIN DATE}
    should not be equal     ${INCLUSION BEGIN DATE}     ''
    [Teardown]      run keyword if    '${INCLUSION BEGIN DATE}'==''    Log Screenshot

Verify Set Exclusion End Date
    [Arguments]     ${END DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set exclusion end date      ${END DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set New Exclusion Category
    [Arguments]     @{CATEGORY LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     set new exclusion category      @{CATEGORY LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set New Exclusion Group
    [Arguments]     @{GROUP LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     set new exclusion group         @{GROUP LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set New Exclusion Service
    [Arguments]     @{SERVICE LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     set new exclusion service       @{SERVICE LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set New Exclusion Routing Product
    [Arguments]     @{ROUTING PRODUCT LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     set new exclusion routing product       @{ROUTING PRODUCT LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Exclusion Type
    [Arguments]     ${EXCLUSION TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set exclusion type      ${EXCLUSION TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Exclusions Grid Row Details
    [Arguments]     ${ROW IDENTIFIER TEXT}
    ${EXCLUSIONS GRID ROW DETAILS} =     get exclusions grid row details        ${ROW IDENTIFIER TEXT}
    set suite variable      ${EXCLUSIONS GRID ROW DETAILS}
    log     ${EXCLUSIONS GRID ROW DETAILS}
    ${LENGTH} =     get length      ${EXCLUSIONS GRID ROW DETAILS}
    [Teardown]      run keyword if    '${LENGTH}'=='0'    Log Screenshot

Verify Compare Exclusion Grid Row Data
    [Arguments]     ${TRUNK}      ${ROUTE CLASS}      ${PRODUCT}     ${ACCOUNT}    ${REASON}
    ${STATUS} =     set variable    False
    ${CREATED EXCLUSIONS GRID ROW DETAILS} =   create dictionary     Begin Date=${INCLUSION BEGIN DATE}      Trunk=${TRUNK}     Route Class=${ROUTE CLASS}     Routing Product=${PRODUCT}     Account=${ACCOUNT}     Reason=${REASON}
    dictionaries should be equal        ${CREATED EXCLUSIONS GRID ROW DETAILS}      ${EXCLUSIONS GRID ROW DETAILS}
    ${STATUS} =     set variable    True
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Exclusions Grid Inline Action Button
    [Arguments]     ${ROW IDENTIFIER TEXT}
    ${STATUS} =     set variable    False
    ${STATUS} =     click exclusions grid inline action button          ${ROW IDENTIFIER TEXT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Delete Exclusion Inline Item
    ${STATUS} =     set variable    False
    ${STATUS} =     select delete exclusion inline item
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Exclusions Grid Row Checkbox
    [Arguments]     ${ROW IDENTIFIER TEXT}
    ${STATUS} =     set variable    False
    ${STATUS} =     select exclusions grid row checkbox     ${ROW IDENTIFIER TEXT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Priority For Search
    [Arguments]     ${PRIORITY}
    ${STATUS} =     set variable    False
    ${STATUS} =     set priority for search      ${PRIORITY}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Selected Route Class
    ${SELECTED ROUTE CLASS} =     get selected route class
    set suite variable      ${SELECTED ROUTE CLASS}
    return from keyword     ${SELECTED ROUTE CLASS}
    log     ${SELECTED ROUTE CLASS}
    should not be equal     ${SELECTED ROUTE CLASS}     ''
    [Teardown]      run keyword if    '${SELECTED ROUTE CLASS}'==''    Log Screenshot

Verify Get Selected Routing Product
    ${SELECTED ROUTING PRODUCT} =     get selected routing product
    set suite variable      ${SELECTED ROUTING PRODUCT}
    return from keyword     ${SELECTED ROUTING PRODUCT}
    log     ${SELECTED ROUTING PRODUCT}
    should not be equal     ${SELECTED ROUTING PRODUCT}     ''
    [Teardown]      run keyword if    '${SELECTED ROUTING PRODUCT}'==''    Log Screenshot

Verify Select Emergency Re Routing Available Trunks Grid First Row Checkbox
    ${STATUS} =     set variable    False
    ${STATUS} =     select emergency re routing available trunks grid first row checkbox
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click To Rank Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click to rank button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Move Available Trunks Into Rank Grid
    ${STATUS} =     set variable    False
    ${STATUS} =     move available trunk into rank grid
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Route Percentage Values
    ${STATUS} =     set variable    False
    ${STATUS} =     set route percentage values
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Ranked Trunks
    ${STATUS} =     set variable    False
    ${STATUS} =     get ranked trunks
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Emergency Routing Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click emergency routing save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Clear Multiselect Kendo Dropdown
    [Arguments]     ${DROPDOWN FIELD LABEL}
    ${STATUS} =     set variable    False
    ${STATUS} =     clear multiselect kendo dropdown        ${DROPDOWN FIELD LABEL}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Route Class For Search
    [Arguments]    ${ROUTE CLASS}
    ${STATUS} =     set variable    False
    @{ROUTE CLASS LIST} =   create list     ${ROUTE CLASS}
    ${STATUS} =     set route class for search       @{ROUTE CLASS LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Routing Product For Search
    [Arguments]    ${ROUTING PRODUCT}
    ${STATUS} =     set variable    False
    @{ROUTING PRODUCT LIST} =   create list     ${ROUTING PRODUCT}
    ${STATUS} =     set routing product for search        @{ROUTING PRODUCT LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Priority Status Is Changed
    ${STATUS} =     set variable    False
    ${STATUS} =     verify priority status changed
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Suggested Trunks In The Grid
    ${STATUS} =     set variable    False
    ${STATUS} =     verify suggested trunks
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Sort Column In Ascending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort column in ascending order        ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Commercial Routing Page Is Loaded Properly
    ${STATUS} =     set variable    False
    ${STATUS} =     is commercial routing page loaded properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Technical Routing Benchmarks Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click technical routing benchmarks button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Read Data From Upload Excel File
    [Arguments]     ${UPLOADED EXCEL FILE PATH}
    ${STATUS} =     set variable    False
    ${STATUS} =     read data from upload excel file        ${UPLOADED EXCEL FILE PATH}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Qos Grid Row Details With Excel Data
    ${STATUS} =     set variable    False
    ${STATUS} =     compare qos grid row details with excel data
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Technical Routing Grid First Row Routing Product Link
    ${STATUS} =     set variable    False
    ${STATUS} =     click technical routing grid first row routing product link
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Filter Suggested Trunks Grid Account Column
    ${STATUS} =     set variable    False
    ${STATUS} =     filter suggested trunks grid account column
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Fast Track Exclusion Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click fast track exclusion button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Fast Track Exclusion Begin Date
    [Arguments]     ${BEGIN DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set fast track exclusion begin date        ${BEGIN DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Fast Track Exclusion End Date
    [Arguments]     ${END DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set fast track exclusion end date        ${END DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Fast Track Exclusion Note
    [Arguments]     ${NOTE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set fast track exclusion note        ${NOTE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Fast Track Exclusion Account
    [Arguments]     @{ACCOUNT LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     set fast track exclusion account        @{ACCOUNT LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Trunks Go Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click trunks go button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Fast Track Exclusion Country
    [Arguments]     @{COUNTRY LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     set fast track exclusion country        @{COUNTRY LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Products Go Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click products go button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Fast Track Exclusion Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click fast track exclusion save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Transition Automation Link
    ${STATUS} =     set variable    False
    ${STATUS} =     click transition automation link
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click New Transition Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click new transition button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set New Automated Transition Route Class
    [Arguments]     ${ROUTE CLASS}
    ${STATUS} =     set variable    False
    ${STATUS} =     set new automated transition route class        ${ROUTE CLASS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set New Automated Transition Country Type
    [Arguments]     ${COUNTRY TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set new automated transition country type        ${COUNTRY TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set New Automated Transition Country
    [Arguments]     ${COUNTRY}
    ${STATUS} =     set variable    False
    ${STATUS} =     set new automated transition country        ${COUNTRY}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set New Automated Transition Routing Product
    [Arguments]     ${ROUTING PRODUCT}
    ${STATUS} =     set variable    False
    ${STATUS} =     set new automated transition routing product        ${ROUTING PRODUCT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set New Automated Transition Value
    [Arguments]     ${TRANSITION VALUE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set new automated transition value        ${TRANSITION VALUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Automated Radio Button
    [Arguments]     ${SELECTION CHOICE}
    ${STATUS} =     set variable    False
    ${STATUS} =     select automated radio button        ${SELECTION CHOICE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set New Automated Transition Resolution Order
    [Arguments]     ${RESOLUTION ORDER}
    ${STATUS} =     set variable    False
    ${STATUS} =     set new automated transition resolution order        ${RESOLUTION ORDER}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Transition For Search
    [Arguments]     @{TRANSITION LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     set transition for search        @{TRANSITION LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Transition Country For Search
    [Arguments]     @{TRANSITION COUNTRY LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     set transition country for search        @{TRANSITION COUNTRY LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Automated Choice For Search
    [Arguments]     ${AUTOMATED CHOICE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set automated choice for search        ${AUTOMATED CHOICE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Transition Automation Search Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click transition automation search button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Transition Automation Grid First Row Checkbox
    ${STATUS} =     set variable    False
    ${STATUS} =     select transition automation grid first row checkbox
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Transition Automation Delete Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click transition automation delete button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Transition Automation Bulk Edit Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click transition automation bulk edit button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Bulk Edit Automated Value
    [Arguments]     ${AUTOMATED VALUE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set bulk edit automated value        ${AUTOMATED VALUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Bulk Edit Resolution Order
    [Arguments]     ${RESOLUTION ORDER}
    ${STATUS} =     set variable    False
    ${STATUS} =     set bulk edit resolution order        ${RESOLUTION ORDER}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Transition Automation Save Changes Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click transition automation save changes button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Transition Automation First Row Inline Action Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click transition automation first row inline action button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Transition Automation Delete Inline Action Item
    ${STATUS} =     set variable    False
    ${STATUS} =     select transition automation delete inline action item
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Transition Automation Grid Row Details
    ${TRANSITION AUTOMATION GRID ROW DETAILS} =     get transition automation grid row details
    set suite variable      ${TRANSITION AUTOMATION GRID ROW DETAILS}
    ${LENGTH} =     get length      ${TRANSITION AUTOMATION GRID ROW DETAILS}
    [Teardown]      run keyword if    '${LENGTH}'=='0'    Log Screenshot

Verify Compare Transition Automation Grid Row Data
    [Arguments]     ${ROUTE CLASS}      ${ROUTING PRODUCT}      ${COUNTRY}     ${TRANSITION STATE}
    ${STATUS} =     set variable    False
    ${CREATED TRANSITION AUTOMATION GRID ROW DETAILS} =   create dictionary     Route Class=${ROUTE CLASS}      Routing Product=${ROUTING PRODUCT}     Country=${COUNTRY}     Transition State=${TRANSITION STATE}
    dictionaries should be equal        ${CREATED TRANSITION AUTOMATION GRID ROW DETAILS}      ${TRANSITION AUTOMATION GRID ROW DETAILS}
    ${STATUS} =     set variable    True
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Transition Route Class For Search
    [Arguments]     @{ROUTE CLASS LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     set route class for search        @{ROUTE CLASS LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Transition Routing Product For Search
    [Arguments]     @{ROUTING PRODUCT LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     set routing product for search        @{ROUTING PRODUCT LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Inclusion Country For Search
    [Arguments]     @{COUNTRY}
    ${STATUS} =     set variable    False
    ${STATUS} =     set inclusion country for search       @{COUNTRY}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Inclusion Routing Product For Search
    [Arguments]     @{ROUTING PRODUCT LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     set inclusion routing product for search        @{ROUTING PRODUCT LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set New Suggestion Route Class Value
    [Arguments]     ${ROUTE CLASS}
    ${STATUS} =     set variable    False
    ${STATUS} =     set new suggestion route class value        ${ROUTE CLASS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set New Suggestion Routing Product Value
    [Arguments]     ${ROUTING PRODUCT}
    ${STATUS} =     set variable    False
    ${STATUS} =     set new suggestion routing product value        ${ROUTING PRODUCT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Create New Suggestion Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click create new suggestion button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Commercial Dashboard Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select commercial dashboard tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Manage Reason Link
    ${STATUS} =     set variable    False
    ${STATUS} =     click manage reason link
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Add New Reason Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click add new reason button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Value In Reason Column
    [Arguments]         ${REASON PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set value in reason column      ${REASON PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Value In Scope Column
    [Arguments]         ${COLUMN VALUE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set value in scope column       ${COLUMN VALUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Created Reason
    ${NEW CREATED REASON} =     get created reason
    log       ${NEW CREATED REASON}
    return from keyword         ${NEW CREATED REASON}
    [Teardown]      run keyword if    '${NEW CREATED REASON}'==''    Log Screenshot

Verify Click Manage Reasones Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click manage reasons save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Route Class For Benchmark Management
    [Arguments]    ${ROUTE CLASS}
    ${STATUS} =     set variable    False
    @{ROUTE CLASS LIST} =   create list     ${ROUTE CLASS}
    ${STATUS} =     set route class for benchmark management       @{ROUTE CLASS LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Create Route Suggestion Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click create route suggestion button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Technical Routing Benchmarks Search Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click technical routing Benchmarks search button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Routing Product For Benchmark Management
    [Arguments]    ${ROUTING PRODUCT}
    ${STATUS} =     set variable    False
    @{ROUTING PRODUCT LIST} =   create list     ${ROUTING PRODUCT}
    ${STATUS} =     set routing product for benchmark management       @{ROUTING PRODUCT LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Route Guide Adjuster Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click route guide adjuster button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click View Trags Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click view trgs button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Adjust Button
    ${STATUS} =     set variable    False
    @{LIST} =     click adjust button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Compare Rgs For Route Guide Adjuster
    ${STATUS} =     set variable    False
    ${STATUS} =     compare rgs
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get All Rows Value Of Tuunks Column From Route Guide Adjuste Grid
    ${STATUS} =     set variable    False
    ${STATUS} =     get all rows value of trunks column from route guide adjuster grid
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Trg Adjuster Tab Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is trg adjuster tab present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Route Class Benchmarks Margin Save Changes Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click route class benchmarks margin save changes button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Route Guide Benchmarks Save Changes Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click route guide benchmarks save changes button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Customer Specific Routing Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click customer specific routing button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Destination Category #1
    [Arguments]     @{REASON LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     set destination category no 1       @{REASON LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Destination Category #2
    [Arguments]     @{REASON LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     set destination category no 2       @{REASON LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Customer Specific Routing Search Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click customer specific routing search button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Commercial Routing Grid Settings
    [Arguments]     ${GRID SETTING}
    ${STATUS} =     set variable    False
    ${STATUS} =     set commercial routing grid settings      ${GRID SETTING}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Commercial Routing Grid Column Names By Order
    @{COLUMN NAME LIST} =     get commercial routing grid column names by order
    return from keyword         @{COLUMN NAME LIST}

Verify Drag Commercial Routing Grid Column
    [Arguments]     ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     drag commercial routing grid column    ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Grid Column Position After Altering
    [Arguments]     ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}      @{COLUMN NAME LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     compare grid column position after altering     ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}      @{COLUMN NAME LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Carrier Test Management Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click carrier test management button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click New Test Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click new test button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Carrier New Test Account
    [Arguments]     ${ACCOUNT NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set carrier new test account     ${ACCOUNT NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Carrier New Test Trunk
    [Arguments]     ${TRUNK NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set carrier new test trunk     ${TRUNK NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Carrier New Test Routing Product
    [Arguments]     ${ROUTING PRODUCT}
    ${STATUS} =     set variable    False
    ${STATUS} =     set carrier new test routing product     ${ROUTING PRODUCT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Carrier New Test Route Class
    [Arguments]     ${ROUTE CLASS}
    ${STATUS} =     set variable    False
    ${STATUS} =     set carrier new test route class     ${ROUTE CLASS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Create Test Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click create test button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Country Column Is Available In CRGM Grid
    ${STATUS} =     set variable    False
    ${STATUS} =     is country column present in crgm grid
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Country Column Is Available In Overrides Management Grid
    ${STATUS} =     set variable    False
    ${STATUS} =     is country column present in overrides management grid
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Country Column Is Available In Inclusion Management Grid
    ${STATUS} =     set variable    False
    ${STATUS} =     is country column present in inclusion management grid
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Country Column Is Available In Exclusion Management Grid
    ${STATUS} =     set variable    False
    ${STATUS} =     is country column present in exclusion management grid
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set First Routing Product For Search
    ${STATUS} =     set variable    False
    ${STATUS} =     set first routing product for search
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Clear Routing Product Dropdown Selection
    ${STATUS} =     set variable    False
    ${STATUS} =     clear routing product dropdown selection
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click New CSR Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click new csr button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set CSR Product
    [Arguments]     ${PRODUCT NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set csr product      ${PRODUCT NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set CSR Customer
    [Arguments]     ${CARRIER NAME}     ${TRUNK NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set csr customer      ${CARRIER NAME}        ${TRUNK NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select To Rank Grid First Row Checkbox
    ${STATUS} =     set variable    False
    ${STATUS} =     select to rank grid first row checkbox
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click CSR To Rank Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click csr to rank button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Value In RCN To Rank Grid Column
    ${STATUS} =     set variable    False
    ${STATUS} =     set value in rcn to rank grid column
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Review Route Guide Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click review route guides button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click CSR Save And Create Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click csr save and create button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click CSRM Grid First Row Routing Product Link
    ${STATUS} =     set variable    False
    ${STATUS} =     click csrm grid first row routing product link
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Suggested Trunk Grid Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is suggested trunk grid present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Available Worksheets Grid Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is available worksheets grid present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Excluded Trunks Grid Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is excluded trunks grid present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Override In Grid
    [Arguments]     ${OVERRIDE RANK}
    ${STATUS} =     set variable    False
    ${STATUS} =     set override in grid     ${OVERRIDE RANK}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Suggested Trunk Grid Begin Date
    ${ACTUAL BEGIN DATE} =   get suggested trunks grid first row data       Begin Date
    log         ${ACTUAL BEGIN DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     compare suggested trunks grid begin date        ${ACTUAL BEGIN DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Suggested Trunk Grid End Date
    ${ACTUAL END DATE} =   get suggested trunks grid first row data      End Date
    log     ${ACTUAL END DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     compare suggested trunks grid end date        ${ACTUAL END DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Suggested Trunks Cancel Changes Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click suggested trunks cancel changes button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Available Worksheets Grid Is Not Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is available worksheets grid not present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify CSRM Grid Column Is Present
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is csrm grid column present     ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Route Guide Grid Column Is Present
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is route guide grid column present     ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Route Guide Grid Override
    [Arguments]     ${OVERRIDE RANK}
    ${STATUS} =     set variable    False
    ${STATUS} =     set route guide grid override     ${OVERRIDE RANK}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Route Guide Grid End Date
    [Arguments]     ${END DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set route guide grid end date    ${END DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Route Guide Grid End Date
    [Arguments]     ${EXPECTED END DATE}
    ${ACTUAL END DATE} =     get route guide grid end date
    should be equal     ${EXPECTED END DATE}    ${ACTUAL END DATE}
    [Teardown]      run keyword unless    '${EXPECTED END DATE}'=='${ACTUAL END DATE}'    Log Screenshot

Verify Specific Column Is Present In CSRRG Grid
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is specific column present in csrrg grid        ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Csr Benchmarks Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click csr benchmarks button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify is Minimum Mos Column Present in Csr Benchmark Grid
    ${STATUS} =     set variable    False
    ${STATUS} =     is minimum mos column present in csr benchmark grid
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Minimum Mos Value into Csr Benchmark Grid First Row
    [Arguments]     ${MINIMUM MOS VALUE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set minimum mos value into csr benchmark grid first row         ${MINIMUM MOS VALUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Csr Benchmark Grid Save Changes Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click csr benchmark grid save changes button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Csr Benchmark Grid Multiple Rows
    ${STATUS} =     set variable    False
    ${STATUS} =     select csr benchmark grid multiple rows
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Csr Benchmark Bulk Edit Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click csr benchmark bulk edit button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Minimum Mos Bulk Edit Value
    ${STATUS} =     set variable    False
    ${STATUS} =     set minimum mos bulk edit value
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Updated Value Persist in the Csr Benchmark Grid after Bulk Edit
    ${STATUS} =     set variable    False
    ${STATUS} =     is updated value persist in the csr benchmark grid after bulk edit
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Filter Customer Specific Routing Grid Alerts Column
    [Arguments]      ${FILTER ITEM}
    @{FILTER ITEM LIST} =        create list         ${FILTER ITEM}
    ${STATUS} =     set variable    False
    ${STATUS} =     filter customer specific routing grid alerts column      @{FILTER ITEM LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Specific Column Is Available In CSRM Grid
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is specific column present in csrm grid         ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Customer Specific Routing Management Grid First Row Checkbox
    ${STATUS} =     set variable    False
    ${STATUS} =     select csrm grid first row checkbox
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The New Customer Route Guide Pop Up Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is new customer route guide pop up present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Benchmark Management Margin Grid Is Empty
    ${STATUS} =     set variable    False
    ${STATUS} =     is benchmark management margin grid empty
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click First Row Of Benchmark Management Margin First Grid
    ${STATUS} =     set variable    False
    ${STATUS} =     click first row of benchmark management margin first grid
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Ajax Spinner Load Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is ajax spinner load present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click First Row Of Benchmark Management Max Route Commercial First Grid
    ${STATUS} =     set variable    False
    ${STATUS} =     click first row of benchmark management max route commercial first grid
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Bulk Test Call Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select bulk test call tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Meggase Delivered In Grid
    [Arguments]     ${DROPDOWN VALUE}=${EMPTY}
    ${STATUS} =     set variable    False
    ${STATUS} =     set message delivered in grid       ${DROPDOWN VALUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Ajax Spinner Load Is Not Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is ajax spinner load not present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Meggase Delivered In Grid With Opposite Of Selected Value
    ${STATUS} =     set variable    False
    ${STATUS} =     set message delivered in grid with opposite of selected value
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Bulk Test Call Save Changes Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click bulk test call save changes button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot