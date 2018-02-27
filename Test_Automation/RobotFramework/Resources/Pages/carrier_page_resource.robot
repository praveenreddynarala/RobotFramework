*** Settings ***
Documentation   Carrier Page Resource File With All Necessary Keywords

Resource        ../common_resource.robot

Library         ../../../TestFramework/Libraries/RobotTests/Carrier.py
Library         Collections

*** Variables ***
${EXPECTED PAGE TITLE}                          Carrier
${ACTUAL PAGE TITLE}                            ${EMPTY}
${STATUS}                                       ${EMPTY}
${EXPECTED CARRIERS TAB HEADER}                 Carriers
${ACTUAL CARRIERS TAB HEADER}                   ${EMPTY}
${EXPECTED CREDIT MANAGEMENT TAB HEADER}        Credit Management
${ACTUAL CREDIT MANAGEMENT TAB HEADER}          ${EMPTY}
${CREATED CARRIER NAME}                         ${EMPTY}
${CREATED CARRIER ABBREVIATION}                 ${EMPTY}
${CREATED CARRIER LEGAL NAME}                   ${EMPTY}
${CARRIERS GRID ROW DETAILS}                    ${EMPTY}
${CREATED CUSTOMER NAME}                        ${EMPTY}
${CREATED CUSTOMER ABBREVIATION}                ${EMPTY}
${TRADE SOURCE GRID ROW DETAILS}                ${EMPTY}
${BEGIN DATE FOR ADD NEW RATE PLAN}             ${EMPTY}
${CREATED TRUNK NAME}                           ${EMPTY}
${TRUNKS GRID ROW DETAILS}                      ${EMPTY}
${CREATED VENDOR NAME}                          ${EMPTY}
${CREATED RATE PLAN NAME}                       ${EMPTY}
${CREATED RATE PLAN ABBREVIATION}               ${EMPTY}
${RATE PLAN GRID ROW DETAILS}                   ${EMPTY}
${CREATED ACCOUNT NAME}                         ${EMPTY}
${CREATED ACCOUNT ABBREVIATION}                 ${EMPTY}
${CREATED ACCOUNT LEGAL NAME}                   ${EMPTY}
${BILL AND ACCOUNT GRID ROW DETAILS}            ${EMPTY}
${CREATED TRANSACTION ID}                       ${EMPTY}
${TRANSACTION HISTORY GRID ROW DATA}            ${EMPTY}
${CREDIT MANAGEMENT GRID ROW DATA}              ${EMPTY}
${CREDIT LIMIT VALUE}                           ${EMPTY}
${SCENARIOS GRID ROW DETAILS}                   ${EMPTY}
${THRESHOLD GRID ROW DATA}                      ${EMPTY}
${CREATED MONITORING DETAILS NOTE}              ${EMPTY}
${NUMBER PLANS GRID ROW DETAILS}                ${EMPTY}
${CREATED CARRIER NAME FOR RATE PLAN}           ${EMPTY}

*** Keywords ***
Click on Home Icon and Select 'Carrier' From Main Menu
    ${STATUS} =     set variable    False
    Home.select carrier submenu
    ${STATUS} =     switch to carrier
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Page Title
    ${ACTUAL PAGE TITLE} =  get carrier page title
    should be equal     ${ACTUAL PAGE TITLE}     ${EXPECTED PAGE TITLE}
    [Teardown]      run keyword unless     '${ACTUAL PAGE TITLE}'=='${EXPECTED PAGE TITLE}'    Log Screenshot

Verify The Carrier Dashboard Tab Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is carrier dashboard tab present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Carriers Tab Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is carriers tab present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Credit Management Tab Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is credit management tab present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Click On Carriers Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select carriers tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Carriers Tab Header
    ${ACTUAL CARRIERS TAB HEADER} =     get carriers tab header
    should be equal     ${ACTUAL CARRIERS TAB HEADER}     ${EXPECTED CARRIERS TAB HEADER}
    [Teardown]      run keyword unless     '${ACTUAL CARRIERS TAB HEADER}'=='${EXPECTED CARRIERS TAB HEADER}'    Log Screenshot

Click On Credit Management Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select credit management tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Credit Management Tab Header
    ${ACTUAL CREDIT MANAGEMENT TAB HEADER} =     get credit management tab header
    should be equal     ${ACTUAL CREDIT MANAGEMENT TAB HEADER}     ${EXPECTED CREDIT MANAGEMENT TAB HEADER}
    [Teardown]      run keyword unless     '${ACTUAL CREDIT MANAGEMENT TAB HEADER}'=='${EXPECTED CREDIT MANAGEMENT TAB HEADER}'    Log Screenshot

Verify Filter Carriers Grid
    [Arguments]     ${CARRIER NAME COLUMN NAME}     @{CARRIER NAME LIST FOR FILTER}
    ${STATUS} =     set variable    False
    ${STATUS} =     grid filter details       ${CARRIER NAME COLUMN NAME}     @{CARRIER NAME LIST FOR FILTER}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Carrier Page Inline Action Button
    [Arguments]     ${CARRIER NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     click carrier page inline action button     ${CARRIER NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Inline Action Item
    [Arguments]     ${CARRIER DIALED DIGITS INLINE ITEM}
    ${STATUS} =     set variable    False
    ${STATUS} =     Carrier.select inline action item     ${CARRIER DIALED DIGITS INLINE ITEM}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Business Type For Dialed Digits Search
    [Arguments]     ${DIALED DIGITS BUSINESS TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set business type for dialed digits search     ${DIALED DIGITS BUSINESS TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Number Plan Type For Dialed Digits Search
    [Arguments]     ${DIALED DIGITS NUMBER PLAN TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set number plan type for dialed digits search     ${DIALED DIGITS NUMBER PLAN TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Number Plan For Dialed Digits Search
    [Arguments]     @{DIALED DIGITS NUMBER PLAN}
    ${STATUS} =     set variable    False
    ${STATUS} =     set number plan for dialed digits search     @{DIALED DIGITS NUMBER PLAN}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Destination For Dialed Digits Search
    [Arguments]     ${DIALED DIGITS DESTINATION}
    ${STATUS} =     set variable    False
    ${STATUS} =     set destination for dialed digits search     ${DIALED DIGITS DESTINATION}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Dialed Digits For Dialed Digits Search
    [Arguments]     ${DIALED DIGIT}
    ${STATUS} =     set variable    False
    ${STATUS} =     set dialed digits for dialed digits search     ${DIALED DIGIT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Begin Date For Dialed Digits Search
    [Arguments]     ${DIALED DIGITS BEGIN DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set begin date for dialed digits search     ${DIALED DIGITS BEGIN DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set End Date For Dialed Digits Search
    [Arguments]     ${DIALED DIGITS END DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set end date for dialed digits search     ${DIALED DIGITS END DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Dialed Digits Search Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click dialed digits search button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Data Is Loaded In The Grid
    ${STATUS} =     set variable    False
    ${STATUS} =     is data loaded in the grid
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Destinations Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     click destinations tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Country For Destinations Search
    [Arguments]     @{COUNTRY FOR DESTINATIONS SEARCH}
    ${STATUS} =     set variable    False
    ${STATUS} =     set country for destinations search     @{COUNTRY FOR DESTINATIONS SEARCH}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Destination For Destinations Search
    [Arguments]     ${DESTINATION FOR DESTINATIONS SEARCH}
    ${STATUS} =     set variable    False
    ${STATUS} =     set destination for destinations search     ${DESTINATION FOR DESTINATIONS SEARCH}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Number Plan For Destinations Search
    [Arguments]     @{DESTINATIONS NUMBER PLAN}
    ${STATUS} =     set variable    False
    ${STATUS} =     set number plan for destinations search     @{DESTINATIONS NUMBER PLAN}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Begin Date For Destinations Search
    [Arguments]     ${DESTINATIONS BEGIN DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set begin date for destinations search    ${DESTINATIONS BEGIN DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set End Date For Destinations Search
    [Arguments]     ${DESTINATIONS END DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set end date for destinations search    ${DESTINATIONS END DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Destinations Search Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click destinations search button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Grid Filter Details
    [Arguments]     ${COLUMN NAME}      ${FILTER LIST VARIABLE}
    @{FILTER LIST} =        create list     ${FILTER LIST VARIABLE}
    [Documentation]     There are multiple keywords with the same name in another page resource. To avoid conflicts, class name has been mentioned to specify the targetted method.
    ${STATUS} =     set variable    False
    ${STATUS} =     Carrier.grid filter details         ${COLUMN NAME}      @{FILTER LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Carriers Page Inline Action Button
    [Arguments]     ${CARRIER NAME}
    [Documentation]     There are multiple keywords with the same name in another page resource. To avoid conflicts, class name has been mentioned to specify the targetted method.
    ${STATUS} =     set variable    False
    ${STATUS} =     Carrier.click carrier page inline action button         ${CARRIER NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Item From Inline Action
    [Arguments]     ${INLINE ITEM}
    [Documentation]     There are multiple keywords with the same name in another page resource. To avoid conflicts, class name has been mentioned to specify the targetted method.
    ${STATUS} =     set variable    False
    ${STATUS} =     Carrier.select inline action item       ${INLINE ITEM}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Commercial Trunks Section Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is commercial trunks section displayed
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Service Level Assignments Section Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is service level assignments section displayed
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Rate Plans Section Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is rate plans section displayed
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Scenarios Section Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is scenarios section displayed
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Number Plans Section Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is number plans section displayed
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Customers And Vendors Section Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is customers and vendors section displayed
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Bill Audit Accounts Section Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is bill audit accounts section displayed
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Create Carrier Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click create carrier button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Carrier Name
    [Arguments]     ${CARRIER NAME PREFIX}
    ${CREATED CARRIER NAME} =     set carrier name          ${CARRIER NAME PREFIX}
    set suite variable      ${CREATED CARRIER NAME}
    log     ${CREATED CARRIER NAME}
    should not be equal     ${CREATED CARRIER NAME}     'False'
    [Teardown]      run keyword if    '${CREATED CARRIER NAME}'=='False'    Log Screenshot

Verify Set Carrier Abbreviation
    [Arguments]     ${CARRIER ABBREVIATION PREFIX}
    ${CREATED CARRIER ABBREVIATION} =     set carrier abbreviation          ${CARRIER ABBREVIATION PREFIX}
    set suite variable      ${CREATED CARRIER ABBREVIATION}
    log     ${CREATED CARRIER ABBREVIATION}
    should not be equal     ${CREATED CARRIER ABBREVIATION}     'False'
    [Teardown]      run keyword if    '${CREATED CARRIER ABBREVIATION}'=='False'    Log Screenshot

Verify Set Carrier Legal Name
    [Arguments]     ${CARRIER LEGAL NAME PREFIX}
    ${CREATED CARRIER LEGAL NAME} =     set carrier legal name              ${CARRIER LEGAL NAME PREFIX}
    set suite variable      ${CREATED CARRIER LEGAL NAME}
    log     ${CREATED CARRIER LEGAL NAME}
    should not be equal     ${CREATED CARRIER LEGAL NAME}     'False'
    [Teardown]      run keyword if    '${CREATED CARRIER LEGAL NAME}'=='False'    Log Screenshot

Verify Set Status
    [Arguments]     ${STATUS ITEM}
    ${STATUS} =     set variable    False
    ${STATUS} =     Carrier.set status           ${STATUS ITEM}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Company
    [Arguments]     ${COMPANY}
    ${STATUS} =     set variable    False
    ${STATUS} =     set company          ${COMPANY}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Carrier Number
    ${CREATED CARRIER NUMBER} =     set carrier number
    set suite variable      ${CREATED CARRIER NUMBER}
    log     ${CREATED CARRIER NUMBER}
    should not be equal     ${CREATED CARRIER NUMBER}     'False'
    [Teardown]      run keyword if    '${CREATED CARRIER NUMBER}'=='False'    Log Screenshot

Verify Click Create Carrier Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click create carrier save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Close Current Tab
    [Arguments]     ${TAB NAME}
    [Documentation]     There are multiple keywords with the same name in another page resource. To avoid conflicts, class name has been mentioned to specify the targetted method.
    ${STATUS} =     set variable    False
    ${STATUS} =     Carrier.close current tab          ${TAB NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Carriers Grid Row Details
    ${CARRIERS GRID ROW DETAILS} =     get carriers grid row details
    set suite variable      ${CARRIERS GRID ROW DETAILS}
    ${LENGTH} =     get length      ${CARRIERS GRID ROW DETAILS}
    [Teardown]      run keyword if    '${LENGTH}'=='0'    Log Screenshot

Verify Click Save Carrier Profile Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click save carrier profile button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Clear Filter
    [Arguments]     ${COLUMN NAME TO CLEAR FILTER}
    ${STATUS} =     set variable    False
    ${STATUS} =     clear filter        ${COLUMN NAME TO CLEAR FILTER}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Carriers Grid Carrier Name
    [Arguments]     ${CREATED CARRIER NAME}=None
    run keyword if      '${CREATED CARRIER NAME}'=='None'         Verify Get Created Carrier Name
    ${ACTUAL CARRIER NAME} =   Get From Dictionary     ${CARRIERS GRID ROW DETAILS}      Carrier Name
    should be equal     ${ACTUAL CARRIER NAME}      ${CREATED CARRIER NAME}
    [Teardown]      run keyword unless     '${ACTUAL CARRIER NAME}'=='${CREATED CARRIER NAME}'    Log Screenshot

Verify Carriers Grid Company
    [Arguments]     ${COMPANY}
    ${ACTUAL COMPANY} =   Get From Dictionary     ${CARRIERS GRID ROW DETAILS}      Company
    should be equal     ${ACTUAL COMPANY}      ${COMPANY}
    [Teardown]      run keyword unless     '${ACTUAL COMPANY}'=='${COMPANY}'    Log Screenshot

Verify Carriers Grid Carrier Status
    [Arguments]     ${CARRIER STATUS}
    ${ACTUAL CARRIER STATUS} =   Get From Dictionary     ${CARRIERS GRID ROW DETAILS}      Carrier Status
    should be equal     ${ACTUAL CARRIER STATUS}      ${CARRIER STATUS}
    [Teardown]      run keyword unless     '${ACTUAL CARRIER STATUS}'=='${CARRIER STATUS}'    Log Screenshot

Verify Filter Carriers Grid After Create
    [Arguments]     ${COLUMN NAME}      ${CREATED CARRIER NAME}=None
    run keyword if      '${CREATED CARRIER NAME}'=='None'         Verify Get Created Carrier Name
    @{CARRIER NAME LIST FOR FILTER} =       create list         ${CREATED CARRIER NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     Carrier.grid filter details       ${COLUMN NAME}     @{CARRIER NAME LIST FOR FILTER}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Multiple Status
    [Arguments]     @{STATUS LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     set multiple status     @{STATUS LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Price List Type
    [Arguments]     ${PRICE LIST TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set price list type         ${PRICE LIST TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Destinations
    [Arguments]     ${DESTINATIONS}
    ${STATUS} =     set variable    False
    ${STATUS} =     set destinations        ${DESTINATIONS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set From Date
    [Arguments]     ${FROM DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set from date           ${FROM DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set To Date
    [Arguments]     ${TO DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set to date             ${TO DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Price Lists History Search Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click price lists history search button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Price Lists History Grid Multiple Rows
    ${STATUS} =     set variable    False
    ${STATUS} =     select price lists history grid multiple rows
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Compare Price Lists Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click compare price lists button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Selected Price Lists Details Info
    ${STATUS} =     set variable    False
    ${STATUS} =     verify selected price lists details
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Dial Digits Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select dial digits tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Close Compare Price Lists Pop Up
    ${STATUS} =     set variable    False
    ${STATUS} =     close compare price lists pop up
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Rates Grid Columns Header
    ${STATUS} =     set variable    False
    ${STATUS} =     verify rates grid columns
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Dialed Digits Columns Header
    ${STATUS} =     set variable    False
    ${STATUS} =     verify dialed digits columns
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Carrier Relationships Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     click carrier relationships tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Dialed Digits Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     click dialed digits tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Rates Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     click rates tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Carrier Relationships Tab Loaded Properly
    ${STATUS} =     set variable    False
    ${STATUS} =     is carrier relationships tab loaded
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Dialed Digits Tab Loaded Properly
    ${STATUS} =     set variable    False
    ${STATUS} =     is dialed digits tab loaded
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Rates Tab Loaded Properly
    ${STATUS} =     set variable    False
    ${STATUS} =     is rates tab loaded
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Destinations Tab Loaded Properly
    ${STATUS} =     set variable    False
    ${STATUS} =     is destinations tab loaded
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Carriers Page Inline Action Button After Create
    [Arguments]     ${CREATED CARRIER NAME}=None
    run keyword if      '${CREATED CARRIER NAME}'=='None'         Verify Get Created Carrier Name
    ${STATUS} =     set variable    False
    ${STATUS} =     click carrier page inline action button         ${CREATED CARRIER NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Expand Customers And Vendors Section
    ${STATUS} =     set variable    False
    ${STATUS} =     expand customers and vendors section
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Create Customer Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click create customer button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Customer Name
    [Arguments]     ${CUSTOMER NAME PREFIX}
    ${CREATED CUSTOMER NAME} =     set customer name          ${CUSTOMER NAME PREFIX}
    set suite variable      ${CREATED CUSTOMER NAME}
    log     ${CREATED CUSTOMER NAME}
    should not be equal     ${CREATED CUSTOMER NAME}     'False'
    [Teardown]      run keyword if    '${CREATED CUSTOMER NAME}'=='False'    Log Screenshot

Verify Set Abbreviation
    [Arguments]     ${ABBREVIATION PREFIX}
    ${CREATED CUSTOMER ABBREVIATION} =     set abbreviation          ${ABBREVIATION PREFIX}
    set suite variable      ${CREATED CUSTOMER ABBREVIATION}
    log     ${CREATED CUSTOMER ABBREVIATION}
    should not be equal     ${CREATED CUSTOMER ABBREVIATION}     'False'
    [Teardown]      run keyword if    '${CREATED CUSTOMER ABBREVIATION}'=='False'    Log Screenshot

Verify Set Rate Plan
    [Arguments]     ${RATE PLAN}
    ${STATUS} =     set variable    False
    ${STATUS} =     Carrier.set rate plan         ${RATE PLAN}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Call Type
    [Arguments]     ${CALL TYPE}
    log     ${CALL TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     Carrier.set call type         ${CALL TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Save Customer Profile button
    ${STATUS} =     set variable    False
    ${STATUS} =     click save customer profile button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Filter Trade Source Grid For Create
    [Arguments]     ${COLUMN NAME}
    @{FILTER ITEM LIST} =       create list         ${CREATED CUSTOMER NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     filter trade source grid       ${COLUMN NAME}      @{FILTER ITEM LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Trade Source Grid Inline Action Button For Create
    ${STATUS} =     set variable    False
    ${STATUS} =     click trade source grid inline action button       ${CREATED CUSTOMER NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Trade Source Grid Row Details
    ${TRADE SOURCE GRID ROW DETAILS} =     get trade source grid row details
    set suite variable      ${TRADE SOURCE GRID ROW DETAILS}
    ${LENGTH} =     get length      ${TRADE SOURCE GRID ROW DETAILS}
    [Teardown]      run keyword if    '${LENGTH}'=='0'    Log Screenshot

Verify Trade Source Grid Name
    ${ACTUAL TRADE SOURCE NAME} =   Get From Dictionary     ${TRADE SOURCE GRID ROW DETAILS}      Name
    should be equal     ${ACTUAL TRADE SOURCE NAME}      ${CREATED CUSTOMER NAME}
    [Teardown]      run keyword unless     '${ACTUAL TRADE SOURCE NAME}'=='${CREATED CUSTOMER NAME}'    Log Screenshot

Verify Trade Source Grid Call Type
    [Arguments]     ${TRADE SOURCE CALL TYPE}
    ${ACTUAL TRADE SOURCE CALL TYPE} =   Get From Dictionary     ${TRADE SOURCE GRID ROW DETAILS}      Call Type
    should be equal     ${ACTUAL TRADE SOURCE CALL TYPE}      ${TRADE SOURCE CALL TYPE}
    [Teardown]      run keyword unless     '${ACTUAL TRADE SOURCE CALL TYPE}'=='${TRADE SOURCE CALL TYPE}'    Log Screenshot

Verify Trade Source Grid Rate Plan
    [Arguments]     ${CREATED RATE PLAN NAME}
    ${ACTUAL TRADE SOURCE RATE PLAN} =   Get From Dictionary     ${TRADE SOURCE GRID ROW DETAILS}      Rate Plan
    should be equal     ${ACTUAL TRADE SOURCE RATE PLAN}      ${CREATED RATE PLAN NAME}
    [Teardown]      run keyword unless     '${ACTUAL TRADE SOURCE RATE PLAN}'=='${CREATED RATE PLAN NAME}'    Log Screenshot

Verify Click Price List History Grid Inline Action Button
    [Arguments]     ${PRICE LIST FOR PRICE LIST HISTORY}
    ${STATUS} =     set variable    False
    ${STATUS} =     click price lists history grid inline action button         ${PRICE LIST FOR PRICE LIST HISTORY}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Vendor For View Price List Detail
    [Arguments]     ${VENDOR FOR VIEW PRICE LIST DETAIL}
    ${STATUS} =     set variable    False
    ${STATUS} =     set vendor for view price list detail         ${VENDOR FOR VIEW PRICE LIST DETAIL}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Price List For View Price List Detail
    [Arguments]     ${PRICE LIST FOR VIEW PRICE LIST DETAIL}
    ${STATUS} =     set variable    False
    ${STATUS} =     set price list for view price list detail         ${PRICE LIST FOR VIEW PRICE LIST DETAIL}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Add New Rates Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click add new rates button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Rate plan For Add New Rate
    [Arguments]     ${RATE PLAN FOR ADD NEW RATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set rate plan for add new rate        ${RATE PLAN FOR ADD NEW RATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Begin Date For Add New Rate
    ${BEGIN DATE FOR ADD NEW RATE PLAN} =   set begin date for add new rate
    set suite variable      ${BEGIN DATE FOR ADD NEW RATE PLAN}
    [Teardown]      run keyword if    '${BEGIN DATE FOR ADD NEW RATE PLAN}'==''    Log Screenshot

Verify Set End Date For Add New rate
    [Arguments]     ${END DATE FOR ADD NEW RATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set end date for add new rate        ${END DATE FOR ADD NEW RATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Product For Add New rate
    [Arguments]     ${PRODUCT NAME FOR ADD NEW RATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set product for add new rate        ${PRODUCT NAME FOR ADD NEW RATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Rating Method For Add New Rate
    [Arguments]     ${RATING METHOD FOR ADD NEW RATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set rating method for add new rate        ${RATING METHOD FOR ADD NEW RATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set CLI for Add New Rate
    [Arguments]     ${CLI FOR ADD NEW RATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set cli for add new rate        ${CLI FOR ADD NEW RATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Grid Value For Add New Rate
    ${STATUS} =     set variable    False
    ${STATUS} =     set grid value for add new rate
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Add New Rate Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click add new rate save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Product Name
    [Arguments]     ${PRODUCT NAME FOR ADD NEW RATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     Carrier.set product name        ${PRODUCT NAME FOR ADD NEW RATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Begin Date
    ${STATUS} =     set variable    False
    ${STATUS} =     Carrier.set begin date        ${BEGIN DATE FOR ADD NEW RATE PLAN}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Rates Page Search Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click rates page search button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Expand Commercial Trunks Section
    ${STATUS} =     set variable    False
    ${STATUS} =     expand commercial trunks section
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Create Trunk Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click create trunk button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Trunk Name
    [Arguments]     ${TRUNK NAME PREFIX}
    ${CREATED TRUNK NAME} =     set trunk name          ${TRUNK NAME PREFIX}
    set suite variable      ${CREATED TRUNK NAME}
    log     ${CREATED TRUNK NAME}
    should not be equal     ${CREATED TRUNK NAME}     'False'
    [Teardown]      run keyword if    '${CREATED TRUNK NAME}'=='False'    Log Screenshot

Verify Set Clli
    [Arguments]     ${CLLI}
    ${STATUS} =     set variable    False
    ${STATUS} =     set clli        ${CLLI}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Description
    [Arguments]     ${DESCRIPTION}
    ${STATUS} =     set variable    False
    ${STATUS} =     set description         ${DESCRIPTION}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Effective Date
    [Arguments]     ${EFFECTIVE DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     Carrier.set effective date          ${EFFECTIVE DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Direction
    [Arguments]     ${DIRECTION}
    ${STATUS} =     set variable    False
    ${STATUS} =     set direction       ${DIRECTION}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     Carrier.click save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Filter Trunks Grid For Create
    [Arguments]     ${COLUMN NAME}
    @{FILTER ITEM LIST} =       create list         ${CREATED TRUNK NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     filter trunks grid       ${COLUMN NAME}      @{FILTER ITEM LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Trunks Grid Inline Action Button For Create
    ${STATUS} =     set variable    False
    ${STATUS} =     click trunks grid inline action button       ${CREATED TRUNK NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Trunks Grid Row Details
    ${TRUNKS GRID ROW DETAILS} =     get trunks grid row details
    set suite variable      ${TRUNKS GRID ROW DETAILS}
    ${LENGTH} =     get length      ${TRUNKS GRID ROW DETAILS}
    [Teardown]      run keyword if    '${LENGTH}'=='0'    Log Screenshot

Verify Trunks Grid Trunk Name
    ${ACTUAL TRUNK NAME} =   Get From Dictionary     ${TRUNKS GRID ROW DETAILS}      Name
    should be equal     ${ACTUAL TRUNK NAME}      ${CREATED TRUNK NAME}
    [Teardown]      run keyword unless     '${ACTUAL TRUNK NAME}'=='${CREATED TRUNK NAME}'    Log Screenshot

Verify Click Create Vendor Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click create vendor button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Vendor Name
    [Arguments]     ${VENDOR NAME PREFIX}
    ${CREATED VENDOR NAME} =     set vendor name        ${VENDOR NAME PREFIX}
    set suite variable      ${CREATED VENDOR NAME}
    log     ${CREATED VENDOR NAME}
    [Teardown]      run keyword if    '${CREATED VENDOR NAME}'==''    Log Screenshot

Verify Click Save Vendor Profile Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click save vendor profile button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Trade Source Grid Name For Create Vendor
    ${ACTUAL TRADE SOURCE NAME} =   Get From Dictionary     ${TRADE SOURCE GRID ROW DETAILS}      Name
    should be equal     ${ACTUAL TRADE SOURCE NAME}      ${CREATED VENDOR NAME}
    [Teardown]      run keyword unless     '${ACTUAL TRADE SOURCE NAME}'=='${CREATED VENDOR NAME}'    Log Screenshot

Verify Filter Trade Source Grid For Create Vendor
    [Arguments]     ${COLUMN NAME}
    @{FILTER ITEM LIST} =       create list         ${CREATED VENDOR NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     filter trade source grid       ${COLUMN NAME}      @{FILTER ITEM LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Trade Source Grid Inline Action Button For Create Vendor
    ${STATUS} =     set variable    False
    ${STATUS} =     click trade source grid inline action button       ${CREATED VENDOR NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Expand Rate Plans Section
    ${STATUS} =     set variable    False
    ${STATUS} =     expand rate plans section
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Filter Rate Plan Grid For Create
    [Arguments]     ${COLUMN NAME}
    @{FILTER ITEM LIST} =       create list         ${CREATED RATE PLAN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     filter rate plan grid      ${COLUMN NAME}      @{FILTER ITEM LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Rate Plan Grid Inline Action Button For Create
    ${STATUS} =     set variable    False
    ${STATUS} =     click rate plan grid inline action button       ${CREATED RATE PLAN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Rate Plan Grid Row Details
    ${RATE PLAN GRID ROW DETAILS} =     get rate plan grid row details
    set suite variable      ${RATE PLAN GRID ROW DETAILS}
    ${LENGTH} =     get length      ${RATE PLAN GRID ROW DETAILS}
    [Teardown]      run keyword if    '${LENGTH}'=='0'    Log Screenshot

Verify Click Create Rate Plan Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click create rate plan button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Rate Plan Name
    [Arguments]     ${RATE PLAN NAME PREFIX}
    ${CREATED RATE PLAN NAME} =     Carrier.set rate plan name        ${RATE PLAN NAME PREFIX}
    set suite variable      ${CREATED RATE PLAN NAME}
    log     ${CREATED RATE PLAN NAME}
    should not be equal     ${CREATED RATE PLAN NAME}     'False'
    [Teardown]      run keyword if    '${CREATED RATE PLAN NAME}'=='False'    Log Screenshot

Verify Set Rate Plan Abbreviation
    [Arguments]     ${RATE PLAN ABBREVIATION PREFIX}
    ${CREATED RATE PLAN ABBREVIATION} =     Carrier.set rate plan abbreviation         ${RATE PLAN ABBREVIATION PREFIX}
    set suite variable      ${CREATED RATE PLAN ABBREVIATION}
    log     ${CREATED RATE PLAN ABBREVIATION}
    should not be equal     ${CREATED RATE PLAN ABBREVIATION}     'False'
    [Teardown]      run keyword if    '${CREATED RATE PLAN ABBREVIATION}'=='False'    Log Screenshot

Verify Set Increase Notice Period Days
    [Arguments]     ${INCREASE NOTICE PERIOD DAYS}
    ${STATUS} =     set variable    False
    ${STATUS} =     set increase notice period days         ${INCREASE NOTICE PERIOD DAYS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Decrease Notice Period Days
    [Arguments]     ${DECREASE NOTICE PERIOD DAYS}
    ${STATUS} =     set variable    False
    ${STATUS} =     set decrease notice period days         ${DECREASE NOTICE PERIOD DAYS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Dial Digit Change Notice Period Days
    [Arguments]     ${DIAL DIGIT CHANGE NOTICE PERIOD DAYS}
    ${STATUS} =     set variable    False
    ${STATUS} =     set dial digit change notice period days        ${DIAL DIGIT CHANGE NOTICE PERIOD DAYS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Business Type
    [Arguments]     ${BUSINESS TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set business type           ${BUSINESS TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Traffic Direction
    [Arguments]     ${TRAFFIC DIRECTION}
    ${STATUS} =     set variable    False
    ${STATUS} =     Carrier.set traffic direction         ${TRAFFIC DIRECTION}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Tariff Type
    [Arguments]     ${TARIFF TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     Carrier.set tariff type             ${TARIFF TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Service Level
    [Arguments]     ${SERVICE LEVEL}
    ${STATUS} =     set variable    False
    ${STATUS} =     Carrier.set service level           ${SERVICE LEVEL}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Currency
    [Arguments]     ${CURRENCY}
    ${STATUS} =     set variable    False
    ${STATUS} =     Carrier.set currency                ${CURRENCY}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Product Catalog
    [Arguments]     ${PRODUCT CATALOG}
    ${STATUS} =     set variable    False
    ${STATUS} =     set product catalog         ${PRODUCT CATALOG}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Rate Plan Scope
    [Arguments]     ${RATE PLAN SCOPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set rate plan scope         ${RATE PLAN SCOPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Toggle Cost Pricing Indicator
    [Arguments]     ${COST PRICING INDICATOR}
    ${STATUS} =     set variable    False
    ${STATUS} =     toggle cost pricing indicator         ${COST PRICING INDICATOR}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Rating Method
    [Arguments]     ${RATING METHOD}
    ${STATUS} =     set variable    False
    ${STATUS} =     set rating method           ${RATING METHOD}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Rate Plan Category 1
    [Arguments]     ${RATE PLAN CAT 1}
    ${STATUS} =     set variable    False
    ${STATUS} =     set rate plan category 1        ${RATE PLAN CAT 1}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Rate Plan Category 2
    [Arguments]     ${RATE PLAN CAT 2}
    ${STATUS} =     set variable    False
    ${STATUS} =     set rate plan category 2        ${RATE PLAN CAT 2}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Begin Date For Add New Rate Plan
    [Arguments]     ${BEGIN DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set begin date for add new rate plan         ${BEGIN DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Expand Bill And Audit Account Section
    ${STATUS} =     set variable    False
    ${STATUS} =     expand bill and audit account section
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Create Bill Account
    ${STATUS} =     set variable    False
    ${STATUS} =     click create bill account
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Bill And Audit Account Name
    [Arguments]     ${ACCOUNT TYPE}     ${ACCOUNT NAME PREFIX}
    ${CREATED ACCOUNT NAME} =     set bill and audit account name      ${ACCOUNT TYPE}         ${ACCOUNT NAME PREFIX}
    set suite variable      ${CREATED ACCOUNT NAME}
    log     ${CREATED ACCOUNT NAME}
    [Teardown]      run keyword if    '${CREATED ACCOUNT NAME}'==''    Log Screenshot

Verify Set Bill And Audit Account Abbreviation
    [Arguments]     ${ACCOUNT TYPE}     ${ACCOUNT ABBREVIATION PREFIX}
    ${CREATED ACCOUNT ABBREVIATION} =     set bill and audit account abbreviation      ${ACCOUNT TYPE}       ${ACCOUNT ABBREVIATION PREFIX}
    set suite variable      ${CREATED ACCOUNT ABBREVIATION}
    log     ${CREATED ACCOUNT ABBREVIATION}
    [Teardown]      run keyword if    '${CREATED ACCOUNT ABBREVIATION}'==''    Log Screenshot

Verify Set Account Legal Name
    [Arguments]     ${ACCOUNT LEGAL NAME PREFIX}
    ${CREATED ACCOUNT LEGAL NAME} =     set legal name         ${ACCOUNT LEGAL NAME PREFIX}
    set suite variable      ${CREATED ACCOUNT LEGAL NAME}
    [Teardown]      run keyword if    '${CREATED ACCOUNT LEGAL NAME}'==''    Log Screenshot

Verify Set Billing Method
    [Arguments]     ${BILLING METHOD}
    ${STATUS} =     set variable    False
    ${STATUS} =     set billing method       ${BILLING METHOD}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Billing Terms Number
    [Arguments]     ${BILLING TERMS NUMBER}
    ${STATUS} =     set variable    False
    ${STATUS} =     set billing terms number       ${BILLING TERMS NUMBER}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Billing Terms Base Period
    [Arguments]     ${BILLING TERMS BASE PERIOD}
    ${STATUS} =     set variable    False
    ${STATUS} =     set billing terms base period       ${BILLING TERMS BASE PERIOD}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Billing Terms Date Type
    [Arguments]     ${BILLING TERMS DATE TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set billing terms date type       ${BILLING TERMS DATE TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Payment Terms Number
    [Arguments]     ${PAYMENT TERMS NUMBER}
    ${STATUS} =     set variable    False
    ${STATUS} =     set payment terms number       ${PAYMENT TERMS NUMBER}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Payment Terms Base Period
    [Arguments]     ${PAYMENT TERMS BASE PERIOD}
    ${STATUS} =     set variable    False
    ${STATUS} =     set payment terms base period       ${PAYMENT TERMS BASE PERIOD}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Payment Terms Date Type
    [Arguments]     ${PAYMENT TERMS DATE TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set payment terms date type       ${PAYMENT TERMS DATE TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Paying Account
    [Arguments]     ${CREATED CARRIER NAME}=None
    run keyword if      '${CREATED CARRIER NAME}'=='None'         Verify Get Created Carrier Name
    ${STATUS} =     set variable    False
    ${STATUS} =     set paying account       ${CREATED CARRIER NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Receiving Account
    [Arguments]     ${RECEIVING ACCOUNT}
    ${STATUS} =     set variable    False
    ${STATUS} =     set receiving account       ${RECEIVING ACCOUNT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Usage Time Zone
    [Arguments]     ${USAGE TIME ZONE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set usage time zone       ${USAGE TIME ZONE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Accounting Code
    [Arguments]     ${ACCOUNTING CODE}
    ${STATUS} =     set variable    False
    ${STATUS} =     Carrier.set accounting code       ${ACCOUNTING CODE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Origin Based Rating
    [Arguments]     ${ORIGIN BASED RATING}
    ${STATUS} =     set variable    False
    ${STATUS} =     set origin based rating       ${ORIGIN BASED RATING}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Expand Current Cycles Section
    ${STATUS} =     set variable    False
    ${STATUS} =     expand current cycles section
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Billing Cycle Template
    [Arguments]     ${BILLING CYCLE TEMPLATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set billing cycle template       ${BILLING CYCLE TEMPLATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Settlement Cycle Template
    [Arguments]     ${SETTLEMENT CYCLE TEMPLATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set settlement cycle template       ${SETTLEMENT CYCLE TEMPLATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Billing Cycle Begin Date
    [Arguments]     ${BILLING CYCLE BEGIN DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set billing cycle begin date       ${BILLING CYCLE BEGIN DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Billing Cycle End Date
    [Arguments]     ${BILLING CYCLE END DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set billing cycle end date      ${BILLING CYCLE END DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Settlement Cycle Begin Date
    [Arguments]     ${SETTLEMENT CYCLE BEGIN DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set settlement cycle begin date       ${SETTLEMENT CYCLE BEGIN DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Settlement Cycle End Date
    [Arguments]     ${SETTLEMENT CYCLE END DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set settlement cycle end date      ${SETTLEMENT CYCLE END DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Residual Traffic Window Number
    [Arguments]     ${RESIDUAL TRAFFIC WINDOW NUMBER}
    ${STATUS} =     set variable    False
    ${STATUS} =     set residual traffic window number     ${RESIDUAL TRAFFIC WINDOW NUMBER}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Expand Additional Fields Section
    ${STATUS} =     set variable    False
    ${STATUS} =     expand additional fields section
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Analyst
    [Arguments]     ${ACCOUNT TYPE}     ${FIRST NAME}       ${LAST NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set analyst     ${ACCOUNT TYPE}     ${FIRST NAME}       ${LAST NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Manager
    [Arguments]     ${ACCOUNT TYPE}     ${FIRST NAME}       ${LAST NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set manager     ${ACCOUNT TYPE}     ${FIRST NAME}       ${LAST NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Expand Statement Section
    ${STATUS} =     set variable    False
    ${STATUS} =     expand statement section
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Cover Letter Template
    [Arguments]     ${COVER LETTER TEMPLATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set cover letter template     ${COVER LETTER TEMPLATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Statement Template
    [Arguments]     ${STATEMENT TEMPLATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set statement template    ${STATEMENT TEMPLATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Statement Number Template
    [Arguments]     ${STATEMENT NUMBER TEMPLATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set statement number template    ${STATEMENT NUMBER TEMPLATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Positive Adjustment Statement Template
    [Arguments]     ${POSITIVE ADJUSTMENT STATEMENT TEMPLATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set positive adjustment statement template        ${POSITIVE ADJUSTMENT STATEMENT TEMPLATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Negative Adjustment Statement Template
    [Arguments]     ${NEGATIVE ADJUSTMENT STATEMENT TEMPLATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set negative adjustment statement template        ${NEGATIVE ADJUSTMENT STATEMENT TEMPLATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Residual Traffic Treatment
    [Arguments]     ${RESIDUAL TRAFFIC TREATMENT}
    ${STATUS} =     set variable    False
    ${STATUS} =     set residual traffic treatment        ${RESIDUAL TRAFFIC TREATMENT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Shortfall Approval Method
    [Arguments]     ${SHORTFALL APPROVAL METHOD}
    ${STATUS} =     set variable    False
    ${STATUS} =     set shortfall approval method        ${SHORTFALL APPROVAL METHOD}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Create Bill Account Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click create bill account save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Close Add New Bill Account Popup
    ${STATUS} =     set variable    False
    ${STATUS} =     close add new bill account popup
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Filter Bill And Audit Account Grid
    [Arguments]     ${NAME COLUMN NAME}
    @{FILTER ITEM LIST} =       create list         ${CREATED ACCOUNT NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     filter bill and audit accounts grid       ${NAME COLUMN NAME}     @{FILTER ITEM LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Bill And Audit Account Grid Row Details
    ${BILL AND ACCOUNT GRID ROW DETAILS} =      get bill and audit accounts grid row details
    set suite variable      ${BILL AND ACCOUNT GRID ROW DETAILS}
    ${LENGTH} =     get length      ${BILL AND ACCOUNT GRID ROW DETAILS}
    [Teardown]      run keyword if    '${LENGTH}'=='0'    Log Screenshot

Verify Account Name After Create
    ${ACTUAL ACCOUNT NAME} =   Get From Dictionary     ${BILL AND ACCOUNT GRID ROW DETAILS}      Name
    should be equal     ${ACTUAL ACCOUNT NAME}      ${CREATED ACCOUNT NAME}
    [Teardown]      run keyword unless     '${ACTUAL ACCOUNT NAME}'=='${CREATED ACCOUNT NAME}'    Log Screenshot

Verify Billing Method After Create
    [Arguments]     ${BILLING METHOD}
    ${ACTUAL BILLING METHOD} =   Get From Dictionary     ${BILL AND ACCOUNT GRID ROW DETAILS}      Billing Method
    should be equal     ${ACTUAL BILLING METHOD}      ${BILLING METHOD}
    [Teardown]      run keyword unless     '${ACTUAL BILLING METHOD}'=='${BILLING METHOD}'    Log Screenshot

Verify Paying Account After Create
    [Arguments]     ${CREATED CARRIER NAME}=None
    run keyword if      '${CREATED CARRIER NAME}'=='None'         Verify Get Created Carrier Name
    ${ACTUAL PAYING ACCOUNT} =   Get From Dictionary     ${BILL AND ACCOUNT GRID ROW DETAILS}      Paying Account
    should be equal     ${ACTUAL PAYING ACCOUNT}      ${CREATED CARRIER NAME}
    [Teardown]      run keyword unless     '${ACTUAL PAYING ACCOUNT}'=='${CREATED CARRIER NAME}'    Log Screenshot

Verify Receiving Account After Create
    [Arguments]     ${RECEIVING ACCOUNT}
    ${ACTUAL RECEIVING ACCOUNT} =   Get From Dictionary     ${BILL AND ACCOUNT GRID ROW DETAILS}      Receiving Account
    should be equal     ${ACTUAL RECEIVING ACCOUNT}      ${RECEIVING ACCOUNT}
    [Teardown]      run keyword unless     '${ACTUAL RECEIVING ACCOUNT}'=='${RECEIVING ACCOUNT}'    Log Screenshot

Verify Click Bill And Audit Accounts Grid Inline Action Button
    [Arguments]     ${RECEIVING ACCOUNT}=${CREATED ACCOUNT NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     click bill and audit accounts grid inline action button        ${CREATED ACCOUNT NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Close Edit Bill Account Pop Up
    ${STATUS} =     set variable    False
    ${STATUS} =     close edit bill account popup
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set End Date
    [Arguments]     ${END DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     Carrier.set end date            ${END DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Note
    [Arguments]     ${NOTE}
    ${STATUS} =     set variable    False
    ${STATUS} =     Carrier.set note                ${NOTE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Select Date
    [Arguments]     ${SELECT DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set select date         ${SELECT DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Carrier Relationships Search Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click carrier relationships search button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Rate Plan Grid Rate Plan
    ${ACTUAL RATE PLAN} =   Get From Dictionary     ${RATE PLAN GRID ROW DETAILS}      Rate Plan
    should be equal     ${ACTUAL RATE PLAN}      ${CREATED RATE PLAN NAME}
    [Teardown]      run keyword unless     '${ACTUAL RATE PLAN}'=='${CREATED RATE PLAN NAME}'    Log Screenshot

Verify Rate Plan Grid Currency
    [Arguments]     ${RATE PLAN GRID CURRENCY}
    ${ACTUAL CURRENCY} =   Get From Dictionary     ${RATE PLAN GRID ROW DETAILS}      Currency
    should be equal     ${ACTUAL CURRENCY}      ${RATE PLAN GRID CURRENCY}
    [Teardown]      run keyword unless     '${ACTUAL CURRENCY}'=='${RATE PLAN GRID CURRENCY}'    Log Screenshot

Verify Rate Plan Grid Business Type
    [Arguments]     ${RATE PLAN GRID BUSINESS TYPE}
    ${ACTUAL BUSINESS TYPE} =   Get From Dictionary     ${RATE PLAN GRID ROW DETAILS}      Business Type
    should be equal     ${ACTUAL BUSINESS TYPE}      ${RATE PLAN GRID BUSINESS TYPE}
    [Teardown]      run keyword unless     '${ACTUAL BUSINESS TYPE}'=='${RATE PLAN GRID BUSINESS TYPE}'    Log Screenshot

Verify Rate Plan Grid Traffic Direction
    [Arguments]     ${RATE PLAN GRID TRAFFIC DIRECTION}
    ${ACTUAL TRAFFIC DIRECTION} =   Get From Dictionary     ${RATE PLAN GRID ROW DETAILS}      Traffic Direction
    should be equal     ${ACTUAL TRAFFIC DIRECTION}      ${RATE PLAN GRID TRAFFIC DIRECTION}
    [Teardown]      run keyword unless     '${ACTUAL TRAFFIC DIRECTION}'=='${RATE PLAN GRID TRAFFIC DIRECTION}'    Log Screenshot

Verify Rate Plan Grid Tariff Type
    [Arguments]     ${RATE PLAN GRID TARIFF TYPE}
    ${ACTUAL TARIFF TYPE} =   Get From Dictionary     ${RATE PLAN GRID ROW DETAILS}      Tariff Type
    should be equal     ${ACTUAL TARIFF TYPE}      ${RATE PLAN GRID TARIFF TYPE}
    [Teardown]      run keyword unless     '${ACTUAL TARIFF TYPE}'=='${RATE PLAN GRID TARIFF TYPE}'    Log Screenshot

Verify Click Price Lists History Grid Inline Action Button
    [Arguments]     ${PRICE LIST NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     click price lists history grid inline action button         ${PRICE LIST NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Export To Excel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click export to excel button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Filter Credit Management Grid
    [Arguments]     ${CARRIER NAME COLUMN NAME}     ${CARRIER NAME FOR BULK EDIT}
    ${STATUS} =     set variable    False
    ${STATUS} =     filter credit management grid       ${CARRIER NAME COLUMN NAME}     ${CARRIER NAME FOR BULK EDIT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Credit Management Grid Row Checkbox
    [Arguments]     ${CARRIER NAME FOR BULK EDIT}
    ${STATUS} =     set variable    False
    ${STATUS} =     select credit management grid row checkbox         ${CARRIER NAME FOR BULK EDIT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Credit Management Bulk Edit Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click credit management bulk edit button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Trunk Provisioning Status
    [Arguments]     ${CARRIER ACTIVE PROVISIONING STATUS}
    ${STATUS} =     set variable    False
    ${STATUS} =     set trunk provisioning status         ${CARRIER ACTIVE PROVISIONING STATUS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Bulk Edit Submit Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click bulk edit submit button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Save Changes Button
    ${STATUS} =     set variable    False
    ${STATUS} =     Carrier.click save changes button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Credit Management Page Inline Action Button
    [Arguments]     ${CARRIER NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     click credit management page inline action button        ${CARRIER NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Monitoring Details Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     click monitoring details tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Add New Transaction Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click add new transaction button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Transaction Date
    [Arguments]     ${TRANSACTION DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set transaction date       ${TRANSACTION DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Transaction Id
    ${CREATED TRANSACTION ID} =     set transaction id
    set suite variable      ${CREATED TRANSACTION ID}
    log     ${CREATED TRANSACTION ID}
    [Teardown]      run keyword if    '${CREATED TRANSACTION ID}'==''    Log Screenshot

Verify Set Transaction Type
    [Arguments]     ${TRANSACTION TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set transaction type       ${TRANSACTION TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Transaction Account Type
    [Arguments]     ${TRANSACTION ACCOUNT TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set transaction account type       ${TRANSACTION ACCOUNT TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Transaction Account
    [Arguments]     ${TRANSACTION ACCOUNT}
    ${STATUS} =     set variable    False
    ${STATUS} =     set transaction account       ${TRANSACTION ACCOUNT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Transaction Amount
    [Arguments]     ${TRANSACTION AMOUNT}
    ${STATUS} =     set variable    False
    ${STATUS} =     set transaction amount       ${TRANSACTION AMOUNT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Transaction Currency
    [Arguments]     ${TRANSACTION CURRENCY}
    ${STATUS} =     set variable    False
    ${STATUS} =     set transaction currency       ${TRANSACTION CURRENCY}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set External Reference 1
    [Arguments]     ${EXTERNAL REFERENCE 1}
    ${STATUS} =     set variable    False
    ${STATUS} =     set external reference 1       ${EXTERNAL REFERENCE 1}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set External Reference 2
    [Arguments]     ${EXTERNAL REFERENCE 2}
    ${STATUS} =     set variable    False
    ${STATUS} =     set external reference 2       ${EXTERNAL REFERENCE 2}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Statement Begin Date
    [Arguments]     ${STATEMENT BEGIN DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set statement begin date       ${STATEMENT BEGIN DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Statement End Date
    [Arguments]     ${STATEMENT END DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set statement end date      ${STATEMENT END DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Add New Transaction Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click add new transaction save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Filter Transaction History Grid
    [Arguments]     ${COLUMN NAME}
    @{FILTER ITEM LIST} =       create list         ${CREATED TRANSACTION ID}
    ${STATUS} =     set variable    False
    ${STATUS} =     filter transaction history grid       ${COLUMN NAME}      @{FILTER ITEM LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Transaction History Grid Row Details
    ${TRANSACTION HISTORY GRID ROW DATA} =      get transaction history grid row details
    set suite variable      ${TRANSACTION HISTORY GRID ROW DATA}
    ${LENGTH} =     get length      ${TRANSACTION HISTORY GRID ROW DATA}
    [Teardown]      run keyword if    '${LENGTH}'=='0'    Log Screenshot

Verify Transaction Type After Create
    [Arguments]     ${TRANSACTION TYPE}
    ${ACTUAL TRANSACTION TYPE} =   Get From Dictionary     ${TRANSACTION HISTORY GRID ROW DATA}      Transaction Type
    should be equal     ${ACTUAL TRANSACTION TYPE}      ${TRANSACTION TYPE}
    [Teardown]      run keyword unless     '${ACTUAL TRANSACTION TYPE}'=='${TRANSACTION TYPE}'    Log Screenshot

Verify Transaction Currency After Create
    [Arguments]     ${TRANSACTION CURRENCY}
    ${ACTUAL TRANSACTION CURRENCY} =   Get From Dictionary     ${TRANSACTION HISTORY GRID ROW DATA}      Transaction Currency
    should be equal     ${ACTUAL TRANSACTION CURRENCY}      ${TRANSACTION CURRENCY}
    [Teardown]      run keyword unless     '${ACTUAL TRANSACTION CURRENCY}'=='${TRANSACTION CURRENCY}'    Log Screenshot

Verify Transaction Amount After Create
    [Arguments]     ${TRANSACTION AMOUNT}
    ${ACTUAL TRANSACTION AMOUNT} =   Get From Dictionary     ${TRANSACTION HISTORY GRID ROW DATA}      Transaction Amount
    should be equal     ${ACTUAL TRANSACTION AMOUNT}      ${TRANSACTION AMOUNT}
    [Teardown]      run keyword unless     '${ACTUAL TRANSACTION AMOUNT}'=='${TRANSACTION AMOUNT}'    Log Screenshot

Verify Transaction Id After Create
    ${ACTUAL TRANSACTION ID} =   Get From Dictionary     ${TRANSACTION HISTORY GRID ROW DATA}      Transaction Id
    should be equal     ${ACTUAL TRANSACTION ID}      ${CREATED TRANSACTION ID}
    [Teardown]      run keyword unless     '${ACTUAL TRANSACTION ID}'=='${CREATED TRANSACTION ID}'    Log Screenshot

Verify Transaction Date After Create
    [Arguments]     ${TRANSACTION DATE}
    ${ACTUAL TRANSACTION DATE} =   Get From Dictionary     ${TRANSACTION HISTORY GRID ROW DATA}      Transaction Date
    should be equal     ${ACTUAL TRANSACTION DATE}      ${TRANSACTION DATE}
    [Teardown]      run keyword unless     '${ACTUAL TRANSACTION DATE}'=='${TRANSACTION DATE}'    Log Screenshot

Verify Click Activate Credit Limit Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click activate credit limit button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Carrier Name For Activate Credit Limit
    [Arguments]     ${CREATED CARRIER NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set carrier name for activate credit limit      ${CREATED CARRIER NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Credit Management Status
    [Arguments]     ${CREDIT MANAGEMENT STATUS}
    ${STATUS} =     set variable    False
    ${STATUS} =     set credit management status      ${CREDIT MANAGEMENT STATUS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Prepaid Customer Status
    [Arguments]     ${PRE PAID CUSTOMER STATUS}
    ${STATUS} =     set variable    False
    ${STATUS} =     set pre paid customer      ${PRE PAID CUSTOMER STATUS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Credit Limit
    [Arguments]     ${CREDIT LIMIT FOR ACTIVATE CREDIT LIMIT}
    ${STATUS} =     set variable    False
    ${STATUS} =     set credit limit      ${CREDIT LIMIT FOR ACTIVATE CREDIT LIMIT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Threshold Values
    [Arguments]     ${THRESHOLD LEVEL}      ${THRESHOLD VALUE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set threshold values      ${THRESHOLD LEVEL}      ${THRESHOLD VALUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Credit Limit Monitoring
    [Arguments]     ${CREDIT LIMIT MONITORING}
    ${STATUS} =     set variable    False
    ${STATUS} =     set credit limit monitoring      ${CREDIT LIMIT MONITORING}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Tarrif Type Assignment
    [Arguments]     ${TARRIF TYPE ASSIGNMENT}
    ${STATUS} =     set variable    False
    ${STATUS} =     set tarrif type assignment      ${TARRIF TYPE ASSIGNMENT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Save Credit Profile Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click save credit profile button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Credit Management Grid Row Details
    ${CREDIT MANAGEMENT GRID ROW DATA} =      get credit management grid row details
    set suite variable      ${CREDIT MANAGEMENT GRID ROW DATA}
    ${LENGTH} =     get length      ${CREDIT MANAGEMENT GRID ROW DATA}
    [Teardown]      run keyword if    '${LENGTH}'=='0'    Log Screenshot

Verify Carrier Name After Activate Credit Limit
    [Arguments]     ${CREATED CARRIER NAME}=None
    run keyword if      '${CREATED CARRIER NAME}'=='None'         Verify Get Created Carrier Name
    ${ACTUAL CARRIER NAME} =   Get From Dictionary     ${CREDIT MANAGEMENT GRID ROW DATA}      Carrier Name
    should be equal     ${ACTUAL CARRIER NAME}      ${CREATED CARRIER NAME}
    [Teardown]      run keyword unless     '${ACTUAL CARRIER NAME}'=='${CREATED CARRIER NAME}'    Log Screenshot

Verify Currency After Activate Credit Limit
    [Arguments]     ${CURRENCY}
    ${ACTUAL CURRENCY} =   Get From Dictionary     ${CREDIT MANAGEMENT GRID ROW DATA}      Currency
    should be equal     ${ACTUAL CURRENCY}      ${CURRENCY}
    [Teardown]      run keyword unless     '${ACTUAL CURRENCY}'=='${CURRENCY}'    Log Screenshot

Verify Credit Limit After Activate Credit Limit
    [Arguments]     ${CREDIT LIMIT}
    ${ACTUAL CREDIT LIMIT} =   Get From Dictionary     ${CREDIT MANAGEMENT GRID ROW DATA}      Credit Limit
    should be equal     ${ACTUAL CREDIT LIMIT}      ${CREDIT LIMIT}
    [Teardown]      run keyword unless     '${ACTUAL CREDIT LIMIT}'=='${CREDIT LIMIT}'    Log Screenshot

Verify Credit Management Grid Inline Item Visibility
    [Arguments]     ${INLINE ITEM}
    ${STATUS} =   is credit management grid inline item visible        ${INLINE ITEM}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set User Activation Approval Required
    [Arguments]     ${USER ACTIVATION APPROVAL STATUS}
    ${STATUS} =   set user activation approval required        ${USER ACTIVATION APPROVAL STATUS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set User Shutoff Approval Required
    [Arguments]     ${USER SHUTOFF APPROVAL STATUS}
    ${STATUS} =   set user shutoff approval required        ${USER SHUTOFF APPROVAL STATUS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Credit Limit For Edit Credit Profile
    [Arguments]     ${CREDIT LIMIT FOR EDIT}
    ${CREDIT LIMIT VALUE} =      set credit limit for edit credit profile       ${CREDIT LIMIT FOR EDIT}
    set suite variable      ${CREDIT LIMIT VALUE}
    [Teardown]      run keyword if    '${CREDIT LIMIT VALUE}'==''    Log Screenshot

Verify Credit Limit After Edit
    ${ACTUAL CREDIT LIMIT} =   Get From Dictionary     ${CREDIT MANAGEMENT GRID ROW DATA}      Credit Limit
    should be equal     ${ACTUAL CREDIT LIMIT}      ${CREDIT LIMIT VALUE}
    [Teardown]      run keyword unless     '${ACTUAL CREDIT LIMIT}'=='${CREDIT LIMIT VALUE}'    Log Screenshot

Verify Select Price List History Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select price lists history tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Create In Audit Account
    ${STATUS} =     set variable    False
    ${STATUS} =     click create in audit account
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Dispute Terms Number
    [Arguments]     ${DISPUTE TERMS NUMBER FOR AUDIT}
    ${STATUS} =     set variable    False
    ${STATUS} =     set dispute terms number       ${DISPUTE TERMS NUMBER FOR AUDIT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Dispute Terms Base Period
    [Arguments]     ${DISPUTE TERMS BASE PERIOD FOR AUDIT}
    ${STATUS} =     set variable    False
    ${STATUS} =     set dispute terms base period       ${DISPUTE TERMS BASE PERIOD FOR AUDIT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Dispute Terms Date Type
    [Arguments]     ${DISPUTE TERMS DATE TYPE FOR AUDIT}
    ${STATUS} =     set variable    False
    ${STATUS} =     set dispute terms date type       ${DISPUTE TERMS DATE TYPE FOR AUDIT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Default Dispute Grade
    [Arguments]     ${DEFAULT DISPUTE FOR AUDIT}
    ${STATUS} =     set variable    False
    ${STATUS} =     set default dispute grade       ${DEFAULT DISPUTE FOR AUDIT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Audit Account Status
    [Arguments]     ${AUDIT ACCOUNT ACTIVE STATUS}
    ${STATUS} =     set variable    False
    ${STATUS} =     set audit account status       ${AUDIT ACCOUNT ACTIVE STATUS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Close Add In Audit Account Pop Up
    ${STATUS} =     set variable    False
    ${STATUS} =     close add in audit account pop up
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Close Edit In Audit Account Pop Up
    ${STATUS} =     set variable    False
    ${STATUS} =     close edit in audit account pop up
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Create Out Audit Account
    ${STATUS} =     set variable    False
    ${STATUS} =     click create out audit account
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Bill Account For Out Audit Account
    ${STATUS} =     set variable    False
    ${STATUS} =     set bill account for out audit account      ${CREATED ACCOUNT NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Filter Bill And Audit Account Grid After Create Out Audit Account
    [Arguments]     ${NAME COLUMN NAME}     ${BILL ACCOUNT FOR CREATE OUT AUDIT ACCOUNT}
    @{FILTER ITEM LIST} =       create list         ${BILL ACCOUNT FOR CREATE OUT AUDIT ACCOUNT}
    ${STATUS} =     set variable    False
    ${STATUS} =     filter bill and audit accounts grid       ${NAME COLUMN NAME}     @{FILTER ITEM LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Close Add Out Audit Account Pop Up
    ${STATUS} =     set variable    False
    ${STATUS} =     close add out audit account pop up
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Close Edit Out Audit Account Pop Up
    ${STATUS} =     set variable    False
    ${STATUS} =     close edit out audit account pop up
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Bill And Audit Accounts Grid Inline Action Button After Create Out Audit Account
    [Arguments]     ${BILL ACCOUNT FOR CREATE OUT AUDIT ACCOUNT}
    ${STATUS} =     set variable    False
    ${STATUS} =     click bill and audit accounts grid inline action button        ${BILL ACCOUNT FOR CREATE OUT AUDIT ACCOUNT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Expand Scenarios Section
    ${STATUS} =     set variable    False
    ${STATUS} =     expand scenarios section
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Create Scenario Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click create scenario button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Scenario Type
    [Arguments]     ${SCENARIO TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set scenario type           ${SCENARIO TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Commercial Trunk
    [Arguments]     ${COMMERCIAL TRUNK}
    ${STATUS} =     set variable    False
    ${STATUS} =     set commercial trunk        ${COMMERCIAL TRUNK}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Country
    [Arguments]     ${COUTNRY}
    ${STATUS} =     set variable    False
    ${STATUS} =     set country         ${COUTNRY}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Service
    [Arguments]     ${SERVICE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set service         ${SERVICE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Close Current Pop Up
    [Arguments]     ${POP UP NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     Carrier.close current pop up        ${POP UP NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Filter Scenarios Grid
    [Arguments]     ${SCENARIOS GRID NAME COLUMN NAME}     ${COMMERCIAL TRUNK}
    @{COMMERCIAL TRUNK LIST FOR FILTER} =       create list     ${COMMERCIAL TRUNK}
    ${STATUS} =     set variable    False
    ${STATUS} =     filter scenarios grid       ${SCENARIOS GRID NAME COLUMN NAME}     @{COMMERCIAL TRUNK LIST FOR FILTER}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Scenarios Grid Inline Action Button
    [Arguments]     ${COMMERCIAL TRUNK}
    ${STATUS} =     set variable    False
    ${STATUS} =     click scenarios grid inline action button       ${COMMERCIAL TRUNK}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Scenarios Grid Row Details
    ${SCENARIOS GRID ROW DETAILS} =     get scenarios grid row details
    set suite variable      ${SCENARIOS GRID ROW DETAILS}
    ${LENGTH} =     get length      ${SCENARIOS GRID ROW DETAILS}
    [Teardown]      run keyword if    '${LENGTH}'=='0'    Log Screenshot

Verify Click Add New Event Settlement Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click add new event settlement button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Delete Event Settlement Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click delete event settlement button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Event Settlement Grid Row Checkbox
    [Arguments]     ${PAYING PARTY}
    ${STATUS} =     set variable    False
    ${STATUS} =     select event settlement grid row checkbox       ${PAYING PARTY}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Scenarios Grid Row Checkbox
    [Arguments]     ${COMMERCIAL TRUNK}
    ${STATUS} =     set variable    False
    ${STATUS} =     select scenarios grid row checkbox      ${COMMERCIAL TRUNK}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Delete Scenario Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click delete scenario button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Scenarios Grid Direction
    [Arguments]     ${SCENARIOS GRID DIRECTION}
    ${ACTUAL DIRECTION} =   Get From Dictionary     ${SCENARIOS GRID ROW DETAILS}      Direction
    should be equal     ${ACTUAL DIRECTION}      ${SCENARIOS GRID DIRECTION}
    [Teardown]      run keyword unless     '${ACTUAL DIRECTION}'=='${SCENARIOS GRID DIRECTION}'    Log Screenshot

Verify Scenarios Grid Service
    [Arguments]     ${SCENARIOS GRID SERVICE}
    ${ACTUAL SERVICE} =   Get From Dictionary     ${SCENARIOS GRID ROW DETAILS}      Service
    should be equal     ${ACTUAL SERVICE}      ${SCENARIOS GRID SERVICE}
    [Teardown]      run keyword unless     '${ACTUAL SERVICE}'=='${SCENARIOS GRID SERVICE}'    Log Screenshot

Verify Scenarios Grid Scenario Type
    [Arguments]     ${SCENARIOS GRID SCENARIO TYPE}
    ${ACTUAL SCENARIO TYPE} =   Get From Dictionary     ${SCENARIOS GRID ROW DETAILS}      Scenario Type
    should be equal     ${ACTUAL SCENARIO TYPE}      ${SCENARIOS GRID SCENARIO TYPE}
    [Teardown]      run keyword unless     '${ACTUAL SCENARIO TYPE}'=='${SCENARIOS GRID SCENARIO TYPE}'    Log Screenshot

Verify Scenarios Grid Country
    [Arguments]     ${SCENARIOS GRID COUNTRY}
    ${ACTUAL COUNTRY} =   Get From Dictionary     ${SCENARIOS GRID ROW DETAILS}      Country
    should be equal     ${ACTUAL COUNTRY}      ${SCENARIOS GRID COUNTRY}
    [Teardown]      run keyword unless     '${ACTUAL COUNTRY}'=='${SCENARIOS GRID COUNTRY}'    Log Screenshot

Verify Scenarios Grid Commercial Trunk
    [Arguments]     ${SCENARIOS GRID COMMERCIAL TRUNK}
    ${ACTUAL COMMERCIAL TRUNK} =   Get From Dictionary     ${SCENARIOS GRID ROW DETAILS}      Commercial Trunk
    should be equal     ${ACTUAL COMMERCIAL TRUNK}      ${SCENARIOS GRID COMMERCIAL TRUNK}
    [Teardown]      run keyword unless     '${ACTUAL COMMERCIAL TRUNK}'=='${SCENARIOS GRID COMMERCIAL TRUNK}'    Log Screenshot

Verify Click Threshold Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click threshold button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Threshold Grid Row Checkbox
    [Arguments]     ${CARRIER NAME}
    @{CARRIER LIST FOR THRESHOLD BULK EDIT} =       create list     ${CARRIER NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     select threshold grid row checkbox      @{CARRIER LIST FOR THRESHOLD BULK EDIT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Threshold Grid Bulk Edit Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click threshold grid bulk edit button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Threshold Type For Bulk Edit
    [Arguments]     ${THRESHOLD TYPE FOR BULK EDIT}
    ${STATUS} =     set variable    False
    ${STATUS} =     set threshold type for bulk edit      ${THRESHOLD TYPE FOR BULK EDIT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Warning Levels For Bulk Edit
    [Arguments]     ${LEVEL TEXT}       ${VALUE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set warning levels for bulk edit    ${LEVEL TEXT}       ${VALUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Threshold Grid Save Changes Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click threshold grid save changes button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Filter Threshold Grid
    [Arguments]     ${COLUMN NAME}       ${CARRIER NAME}
    @{FILTER ITEM LIST} =       create list         ${CARRIER NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     grid filter details    ${COLUMN NAME}       @{FILTER ITEM LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Threshold Grid Row Details
    ${THRESHOLD GRID ROW DATA} =      get threshold grid row details
    set suite variable      ${THRESHOLD GRID ROW DATA}
    ${LENGTH} =     get length      ${THRESHOLD GRID ROW DATA}
    [Teardown]      run keyword if    '${LENGTH}'=='0'    Log Screenshot

Verify Threshold Type After Bulk Edit
    [Arguments]     ${THRESHOLD TYPE FOR BULK EDIT}
    ${ACTUAL THRESHOLD TYPE} =   Get From Dictionary     ${THRESHOLD GRID ROW DATA}      Threshold Type
    should be equal     ${ACTUAL THRESHOLD TYPE}      ${THRESHOLD TYPE FOR BULK EDIT}
    [Teardown]      run keyword unless     '${ACTUAL THRESHOLD TYPE}'=='${THRESHOLD TYPE FOR BULK EDIT}'    Log Screenshot

Verify Level 1 Warning After Bulk Edit
    [Arguments]     ${LEVEL 1 WARNING}
    ${ACTUAL LEVEL 1 WARNING} =   Get From Dictionary     ${THRESHOLD GRID ROW DATA}      Level 1 Warning
    should be equal     ${ACTUAL LEVEL 1 WARNING}      ${LEVEL 1 WARNING}
    [Teardown]      run keyword unless     '${ACTUAL LEVEL 1 WARNING}'=='${LEVEL 1 WARNING}'    Log Screenshot

Verify Level 2 Warning After Bulk Edit
    [Arguments]     ${LEVEL 2 WARNING}
    ${ACTUAL LEVEL 2 WARNING} =   Get From Dictionary     ${THRESHOLD GRID ROW DATA}      Level 2 Warning
    should be equal     ${ACTUAL LEVEL 2 WARNING}      ${LEVEL 2 WARNING}
    [Teardown]      run keyword unless     '${ACTUAL LEVEL 2 WARNING}'=='${LEVEL 2 WARNING}'    Log Screenshot

Verify Level 3 Warning After Bulk Edit
    [Arguments]     ${LEVEL 3 WARNING}
    ${ACTUAL LEVEL 3 WARNING} =   Get From Dictionary     ${THRESHOLD GRID ROW DATA}      Level 3 Warning
    should be equal     ${ACTUAL LEVEL 3 WARNING}      ${LEVEL 3 WARNING}
    [Teardown]      run keyword unless     '${ACTUAL LEVEL 3 WARNING}'=='${LEVEL 3 WARNING}'    Log Screenshot

Verify Shutoff Recommended After Bulk Edit
    [Arguments]     ${SHUTOFF RECOMMENDED}
    ${ACTUAL SHUTOFF RECOMMENDED} =   Get From Dictionary     ${THRESHOLD GRID ROW DATA}      Shut-off Recommended
    should be equal     ${ACTUAL SHUTOFF RECOMMENDED}      ${SHUTOFF RECOMMENDED}
    [Teardown]      run keyword unless     '${ACTUAL SHUTOFF RECOMMENDED}'=='${SHUTOFF RECOMMENDED}'    Log Screenshot

Verify Set Monitoring Details Note
    [Arguments]     ${NOTE PREFIX}
    ${CREATED MONITORING DETAILS NOTE} =     set monitoring details note          ${NOTE PREFIX}
    set suite variable      ${CREATED MONITORING DETAILS NOTE}
    log     ${CREATED MONITORING DETAILS NOTE}
    should not be equal     ${CREATED MONITORING DETAILS NOTE}     'False'
    [Teardown]      run keyword if    '${CREATED MONITORING DETAILS NOTE}'=='False'    Log Screenshot

Verify Click Save Monitoring Details Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click save monitoring details button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Compare Trunk Provisioning Status Value
    [Arguments]     ${SET TRUNK PROVISIONING STATUS}
    ${ACTUAL TRUNK PROVISIONING STATUS} =   get trunk provisioning status value
    should be equal     ${ACTUAL TRUNK PROVISIONING STATUS}      ${SET TRUNK PROVISIONING STATUS}
    [Teardown]      run keyword unless     '${ACTUAL TRUNK PROVISIONING STATUS}'=='${SET TRUNK PROVISIONING STATUS}'    Log Screenshot

Verify Compare Monitoring Details Note
    ${ACTUAL MONITORING DETAILS NOTE} =   get monitoring details note
    should be equal     ${ACTUAL MONITORING DETAILS NOTE}      ${CREATED MONITORING DETAILS NOTE}
    [Teardown]      run keyword unless     '${ACTUAL MONITORING DETAILS NOTE}'=='${CREATED MONITORING DETAILS NOTE}'    Log Screenshot

Verify Compare Carrier Dialed Digit With Excel Data
    ${STATUS} =     set variable    False
    ${STATUS} =     compare carrier dialed digit with excel data
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Compare Carrier Rates With Excel Data
    ${STATUS} =     set variable    False
    ${STATUS} =     compare carrier rates with excel data
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Compare Carrier Destination With Excel Data
    ${STATUS} =     set variable    False
    ${STATUS} =     compare carrier destination with excel data
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Expand Number Plans Section
    ${STATUS} =     set variable    False
    ${STATUS} =     expand number plans section
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Add Number Plan Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click add number plan button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Number Plan
    [Arguments]     ${NUMBER PLAN}
    ${STATUS} =     set variable    False
    ${STATUS} =     Carrier.set number plan     ${NUMBER PLAN}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Number Plans Grid Row Details
    ${NUMBER PLANS GRID ROW DETAILS} =     get number plans grid row details
    set suite variable      ${NUMBER PLANS GRID ROW DETAILS}
    ${LENGTH} =     get length      ${NUMBER PLANS GRID ROW DETAILS}
    [Teardown]      run keyword if    '${LENGTH}'=='0'    Log Screenshot

Verify Set Begin Date For Add Number Plan
    [Arguments]     ${BEGIN DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set begin date for add number plan      ${BEGIN DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Close Carrier Window
    ${STATUS} =     set variable    False
    ${STATUS} =     Carrier.close carrier window
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Carrier Module Call Type
    [Arguments]     ${CALL TYPE DROPDOWN ITEM}
    [Documentation]     There are multiple keywords with the same name in another page resource. To avoid conflicts, class name has been mentioned to specify the targetted method.
    ${STATUS} =     set variable    False
    ${STATUS} =     Carrier.set call type       ${CALL TYPE DROPDOWN ITEM}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Carrier Module Grid Filter Details
    [Arguments]     ${COLUMN NAME}       @{FILTER ITEM LIST}
    [Documentation]     There are multiple keywords with the same name in another page resource. To avoid conflicts, class name has been mentioned to specify the targetted method.
    ${STATUS} =     set variable    False
    ${STATUS} =     Carrier.grid filter details     ${COLUMN NAME}       @{FILTER ITEM LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Carrier Module Rate Plan
    [Arguments]     ${RATE PLAN}
    [Documentation]     There are multiple keywords with the same name in another page resource. To avoid conflicts, class name has been mentioned to specify the targetted method.
    ${STATUS} =     set variable    False
    ${STATUS} =     Carrier.set rate plan         ${RATE PLAN}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Carrier Module Begin Date
    [Arguments]     ${BEGIN DATE}
    [Documentation]     There are multiple keywords with the same name in another page resource. To avoid conflicts, class name has been mentioned to specify the targetted method.
    ${STATUS} =     set variable    False
    ${STATUS} =     Carrier.set begin date        ${BEGIN DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Read Data From Upload Excel File
    [Arguments]     ${UPLOAD FILE PATH}
    [Documentation]     There are multiple keywords with the same name in another page resource. To avoid conflicts, class name has been mentioned to specify the targetted method.
    ${STATUS} =     set variable    False
    ${STATUS} =     Carrier.read data from upload excel file        ${UPLOAD FILE PATH}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Number Plans Grid Row Details
    [Arguments]     ${CALL TYPE}    ${DIRECTION}    ${NUMBER PLAN}
    ${STATUS} =     set variable    False
    ${CREATED NUMBER PLANS GRID ROW DETAILS} =   create dictionary     Trunk=${CREATED TRUNK NAME}      Call Type=${CALL TYPE}     Direction=${DIRECTION}     Number Plan=${NUMBER PLAN}
    log     ${CREATED NUMBER PLANS GRID ROW DETAILS}
    dictionaries should be equal        ${CREATED NUMBER PLANS GRID ROW DETAILS}      ${NUMBER PLANS GRID ROW DETAILS}
    ${STATUS} =     set variable    True
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Carriers Page First Row Inline Action Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click carriers page first row inline action button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Carrier Profile Page Is Loaded Properly
    ${STATUS} =     set variable    False
    ${STATUS} =     is carrier profile page loaded properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Dialed Digits Search Is Successful
    ${STATUS} =     set variable    False
    ${STATUS} =     is dialed digits search successful
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Rates Search Is Successful
    ${STATUS} =     set variable    False
    ${STATUS} =     is rates search successful
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Destinations Search Is Successful
    ${STATUS} =     set variable    False
    ${STATUS} =     is destinations search successful
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Price List History Page Is Loaded Properly
    ${STATUS} =     set variable    False
    ${STATUS} =     is price list history page loaded properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Price List History Search Is Successful
    ${STATUS} =     set variable    False
    ${STATUS} =     is price list history search successful
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Create InterCompany Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click create intercompany button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Carriers Grid Carrier Type
    [Arguments]     ${CARRIER TYPE}
    ${ACTUAL CARRIER TYPE} =   Get From Dictionary     ${CARRIERS GRID ROW DETAILS}      Carrier Type
    should be equal     ${ACTUAL CARRIER TYPE}      ${CARRIER TYPE}
    [Teardown]      run keyword unless     '${ACTUAL CARRIER TYPE}'=='${CARRIER TYPE}'    Log Screenshot

Verify Carriers Grid Carrier
    [Arguments]     ${CARRIER NAME}
    ${ACTUAL CARRIER NAME} =   Get From Dictionary     ${CARRIERS GRID ROW DETAILS}      Carrier Name
    should be equal     ${ACTUAL CARRIER NAME}      ${CARRIER NAME}
    [Teardown]      run keyword unless     '${ACTUAL CARRIER NAME}'=='${CARRIER NAME}'    Log Screenshot

Verify Click Price List History Grid First Row Inline Action Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click price lists history grid first row inline action button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Rate Plan For Create Vendor
    [Arguments]     ${CREATED RATE PLAN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     Carrier.set rate plan         ${CREATED RATE PLAN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Filter Credit Management Grid After Creating Carrier
    [Arguments]     ${CARRIER NAME COLUMN NAME}     ${CREATED CARRIER NAME}=None
    run keyword if      '${CREATED CARRIER NAME}'=='None'         Verify Get Created Carrier Name
    ${STATUS} =     set variable    False
    ${STATUS} =     filter credit management grid       ${CARRIER NAME COLUMN NAME}     ${CREATED CARRIER NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Carrier Name For Activate Credit Limit After Create
    [Arguments]     ${CARRIER NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set carrier name for activate credit limit      ${CARRIER NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Credit Management Page Inline Action Button After Create
    [Arguments]     ${CREATED CARRIER NAME}=None
    run keyword if      '${CREATED CARRIER NAME}'=='None'         Verify Get Created Carrier Name
    ${STATUS} =     set variable    False
    ${STATUS} =     click credit management page inline action button       ${CREATED CARRIER NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Filter Credit Management Grid After Activate Creadit Limit
    [Arguments]     ${CARRIER NAME COLUMN NAME}     ${CARRIER NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     filter credit management grid       ${CARRIER NAME COLUMN NAME}     ${CARRIER NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Commercial Trunk After Create
    ${STATUS} =     set variable    False
    ${STATUS} =     set commercial trunk        ${CREATED TRUNK NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Carrier Module Grid Filter Details After Creating Trunk
    [Arguments]     ${COLUMN NAME}
    @{FILTER ITEM LIST} =       create list     ${CREATED TRUNK NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     Carrier.grid filter details     ${COLUMN NAME}       @{FILTER ITEM LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Created Carrier Name
    ${CREATED CARRIER NAME} =        Carrier.get created carrier name
    ${CREATED CARRIER NAME FOR RATE PLAN} =     Carrier.get created carrier name
    Set Suite Variable      ${CREATED CARRIER NAME}
    set suite variable      ${CREATED CARRIER NAME FOR RATE PLAN}
    should not be equal     ${CREATED CARRIER NAME}     ''
    return from keyword     ${CREATED CARRIER NAME}
    [Teardown]      run keyword if    '${CREATED CARRIER NAME}'==''    Log Screenshot

Verify Get Created Carrier Name For Rate Plan
    return from keyword     ${CREATED CARRIER NAME FOR RATE PLAN}

Verify Set Rates Product
    ${STATUS} =     set variable    False
    ${STATUS} =     set rates product
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Carriers Grid Column Currency Format
    [Arguments]     ${EXPECTED CURRENCY FORMAT}     ${COLUMN NAME}
    ${ACTUAL CURRENCY VALUE} =    get carriers grid column value        ${COLUMN NAME}
    log     ${ACTUAL CURRENCY VALUE}
    ${STATUS} =     validate currency format        ${ACTUAL CURRENCY VALUE}          ${EXPECTED CURRENCY FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Carrier Relationships Select Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE VALUE} =    get carrier relationships select date
    log     ${ACTUAL DATE VALUE}
    ${STATUS} =     validate date format        ${ACTUAL DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Expand Service Level Assignments Section
    ${STATUS} =     set variable    False
    ${STATUS} =     expand service level assignments section
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Commercial Trunks Grid Effective Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE VALUE} =    get commercial trunks grid effective date
    log     ${ACTUAL DATE VALUE}
    ${STATUS} =     validate date format        ${ACTUAL DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Effective Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE VALUE} =    get effective date
    log     ${ACTUAL DATE VALUE}
    ${STATUS} =     validate date format         ${ACTUAL DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Begin Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE VALUE} =    get begin date
    log     ${ACTUAL DATE VALUE}
    ${STATUS} =     validate date format         ${ACTUAL DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify End Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE VALUE} =    get end date
    log     ${ACTUAL DATE VALUE}
    ${STATUS} =     validate date format         ${ACTUAL DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Service Level Grid Begin Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE VALUE} =    get service level grid begin date
    log     ${ACTUAL DATE VALUE}
    ${STATUS} =     validate date format         ${ACTUAL DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Service Level Grid End Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE VALUE} =    get service level grid end date
    log     ${ACTUAL DATE VALUE}
    ${STATUS} =     validate date format         ${ACTUAL DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Rate Plans Grid Begin Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE VALUE} =    get rate plans grid begin date
    log     ${ACTUAL DATE VALUE}
    ${STATUS} =     validate date format         ${ACTUAL DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Rate Plans Grid End Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE VALUE} =    get rate plans grid end date
    log     ${ACTUAL DATE VALUE}
    ${STATUS} =     validate date format         ${ACTUAL DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Number Plans Grid Begin Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE VALUE} =    get number plans grid begin date
    log     ${ACTUAL DATE VALUE}
    ${STATUS} =     validate date format         ${ACTUAL DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Number Plans Grid End Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE VALUE} =    get number plans grid end date
    log     ${ACTUAL DATE VALUE}
    ${STATUS} =     validate date format         ${ACTUAL DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Add Service Level button
    ${STATUS} =     set variable    False
    ${STATUS} =     click add service level button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Rates Tab Begin Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE VALUE} =    get rates tab begin date
    log     ${ACTUAL DATE VALUE}
    ${STATUS} =     validate date format         ${ACTUAL DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Rates Tab End Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE VALUE} =    get rates tab end date
    log     ${ACTUAL DATE VALUE}
    ${STATUS} =     validate date format         ${ACTUAL DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Destinations Tab Begin Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE VALUE} =    get destinations tab begin date
    log     ${ACTUAL DATE VALUE}
    ${STATUS} =     validate date format         ${ACTUAL DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Destinations Tab End Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE VALUE} =    get destinations tab end date
    log     ${ACTUAL DATE VALUE}
    ${STATUS} =     validate date format         ${ACTUAL DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Dialed Digits Grid Begin Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE VALUE} =    get dialed digits grid begin date
    log     ${ACTUAL DATE VALUE}
    ${STATUS} =     validate date format         ${ACTUAL DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Dialed Digits Grid End Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE VALUE} =    get dialed digits grid end date
    log     ${ACTUAL DATE VALUE}
    ${STATUS} =     validate date format         ${ACTUAL DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Rates Grid Begin Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE VALUE} =    get rates grid begin date
    log     ${ACTUAL DATE VALUE}
    ${STATUS} =     validate date format         ${ACTUAL DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Rates Grid End Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE VALUE} =    get rates grid end date
    log     ${ACTUAL DATE VALUE}
    ${STATUS} =     validate date format         ${ACTUAL DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Destinations Grid Begin Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE VALUE} =    get destinations grid begin date
    log     ${ACTUAL DATE VALUE}
    ${STATUS} =     validate date format         ${ACTUAL DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Destinations Grid End Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE VALUE} =    get destinations grid end date
    log     ${ACTUAL DATE VALUE}
    ${STATUS} =     validate date format         ${ACTUAL DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Credit Management Grid Column For Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}     ${COLUMN NAME}
    ${ACTUAL DATE VALUE} =    get credit management grid column value       ${COLUMN NAME}
    log     ${ACTUAL DATE VALUE}
    ${STATUS} =     validate date format         ${ACTUAL DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Credit Management Grid Column For Currency Format
    [Arguments]     ${EXPECTED CURRENCY FORMAT}     ${COLUMN NAME}
    ${ACTUAL CURRENCY VALUE} =    get credit management grid column value       ${COLUMN NAME}
    log     ${ACTUAL CURRENCY VALUE}
    ${STATUS} =     validate currency format        ${ACTUAL CURRENCY VALUE}          ${EXPECTED CURRENCY FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Credit Management Grid First Row Inline Action Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click credit management grid first row inline action button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Credit Profile Credit Limit Currency Format
    [Arguments]     ${EXPECTED CURRENCY FORMAT}
    ${ACTUAL CURRENCY VALUE} =    get credit profile credit limit
    log     ${ACTUAL CURRENCY VALUE}
    ${STATUS} =     validate currency format        ${ACTUAL CURRENCY VALUE}          ${EXPECTED CURRENCY FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Credit Limit Last Modified Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE VALUE} =    get credit limit last modified date
    log     ${ACTUAL DATE VALUE}
    ${STATUS} =     validate date format         ${ACTUAL DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Label Wise Text For Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}     ${LABEL NAME}
    ${ACTUAL DATE VALUE} =    get label wise text       ${LABEL NAME}
    log     ${ACTUAL DATE VALUE}
    ${STATUS} =     validate date format         ${ACTUAL DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Label Wise Text For Currency Format
    [Arguments]     ${EXPECTED CURRENCY FORMAT}     ${LABEL NAME}
    ${ACTUAL CURRENCY VALUE} =    get label wise text        ${LABEL NAME}
    log     ${ACTUAL CURRENCY VALUE}
    ${STATUS} =     validate currency format        ${ACTUAL CURRENCY VALUE}          ${EXPECTED CURRENCY FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Transactions History Grid Column For Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}     ${COLUMN NAME}
    ${ACTUAL DATE VALUE} =    get transactions history grid column value        ${COLUMN NAME}
    log     ${ACTUAL DATE VALUE}
    ${STATUS} =     validate date format         ${ACTUAL DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Transactions History Grid Column For Currency Format
    [Arguments]     ${EXPECTED CURRENCY FORMAT}     ${COLUMN NAME}
    ${ACTUAL CURRENCY VALUE} =    get transactions history grid column value     ${COLUMN NAME}
    log     ${ACTUAL CURRENCY VALUE}
    ${STATUS} =     validate currency format        ${ACTUAL CURRENCY VALUE}          ${EXPECTED CURRENCY FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Add New Transaction Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE VALUE} =    get add new transaction date
    log     ${ACTUAL DATE VALUE}
    ${STATUS} =     validate date format         ${ACTUAL DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Statement Begin Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE VALUE} =    get statement begin date
    log     ${ACTUAL DATE VALUE}
    ${STATUS} =     validate date format         ${ACTUAL DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Trunk Name
    ${TRUNK NAME} =     get trunk name
    log       ${TRUNK NAME}
    return from keyword         ${TRUNK NAME}

Verify Set Trunk Dropdown Value
    [Arguments]     ${TRUNK}
    ${STATUS} =     set variable    False
    ${STATUS} =     set trunk dropdown value        ${TRUNK}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Destination Dropdown Value
    [Arguments]     ${DESTINATION}
    ${STATUS} =     set variable    False
    ${STATUS} =     set destination dropdown value        ${DESTINATION}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Service Level Begin Date
    ${STATUS} =     set variable    False
    ${STATUS} =     set service level begin date
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Service Level End Date
    ${STATUS} =     set variable    False
    ${STATUS} =     set service level end date
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Rate Plan Name
    ${RATE PLAN NAME} =     get rate plan name
    log       ${RATE PLAN NAME}
    return from keyword         ${RATE PLAN NAME}

Verify Get Carrier Account Name
    ${RATE PLAN NAME} =     get created carrier name
    log       ${RATE PLAN NAME}
    return from keyword         ${RATE PLAN NAME}

Verify Get Number Plan Name
    ${RATE PLAN NAME} =     get rate plan name
    log       ${RATE PLAN NAME}
    return from keyword         ${RATE PLAN NAME}

Verify Set Company Carrier Name
    [Arguments]     ${CARRIER NAME PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set company carrier name    ${CARRIER NAME PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Company Carrier Name
    ${COMPANY NAME} =     get created company carrier name
    log       ${COMPANY NAME}
    return from keyword         ${COMPANY NAME}
    [Teardown]      run keyword if    '${COMPANY NAME}'==''    Log Screenshot

Verify Set In Audit Paying Account
    [Arguments]     ${CARRIER NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set paying account       ${CARRIER NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set In Audit Receiving Account
    [Arguments]     ${CREATED CARRIER NAME}=None
    run keyword if      '${CREATED CARRIER NAME}'=='None'         Verify Get Created Carrier Name
    ${STATUS} =     set variable    False
    ${STATUS} =     set receiving account       ${CREATED CARRIER NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify In Audit Receiving Account
    [Arguments]     ${CREATED CARRIER NAME}=None
    run keyword if      '${CREATED CARRIER NAME}'=='None'         Verify Get Created Carrier Name
    ${ACTUAL RECEIVING ACCOUNT} =   Get From Dictionary     ${BILL AND ACCOUNT GRID ROW DETAILS}      Receiving Account
    should be equal     ${ACTUAL RECEIVING ACCOUNT}      ${CREATED CARRIER NAME}
    [Teardown]      run keyword unless     '${ACTUAL RECEIVING ACCOUNT}'=='${CREATED CARRIER NAME}'    Log Screenshot

Verify In Audit Paying Account
    [Arguments]     ${PAYING ACCOUNT}
    ${ACTUAL PAYING ACCOUNT} =   Get From Dictionary     ${BILL AND ACCOUNT GRID ROW DETAILS}      Paying Account
    should be equal     ${ACTUAL PAYING ACCOUNT}      ${PAYING ACCOUNT}
    [Teardown]      run keyword unless     '${ACTUAL PAYING ACCOUNT}'=='${PAYING ACCOUNT}'    Log Screenshot

Verify Set Carrier Type For Carriers Search
    [Arguments]     ${INTERCOMPANY CARRIER TYPE}
    @{CARRIER TYPE}     create list         ${INTERCOMPANY CARRIER TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set carrier type for carriers search     @{CARRIER TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Expand Show Search Form Link
    ${STATUS} =     set variable    False
    ${STATUS} =     expand show search form link
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Carriers Page Search Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click carriers page search button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Inter Opco Scenarios Section Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is inter opco scenarios section present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Expand Inter Opco scenarios Section
    ${STATUS} =     set variable    False
    ${STATUS} =     expand inter opco scenarios section
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Inter Opco Create Scenario Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click inter opco create scenario button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Inter Opco Name
    [Arguments]     ${INTER OPCO NAME PREFIX}
    ${STATUS} =     set inter opco name        ${INTER OPCO NAME PREFIX}
    should be true    ${STATUS}
    [Teardown]      run keyword if    '${CREATED RATE PLAN NAME}'=='False'    Log Screenshot

Verify Set In Opco
    [Arguments]     ${IN OPCO}
    ${STATUS} =     set variable    False
    ${STATUS} =     set in opco        ${IN OPCO}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Out Opco
    [Arguments]     ${OUT OPCO}
    ${STATUS} =     set variable    False
    ${STATUS} =     set out opco        ${OUT OPCO}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Filter Carriers Grid For Inter Company
    [Arguments]     ${COLUMN NAME}      ${CREATED COMPANY CARRIER NAME}
    @{CARRIER NAME LIST FOR FILTER} =       create list         ${CREATED COMPANY CARRIER NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     Carrier.grid filter details       ${COLUMN NAME}     @{CARRIER NAME LIST FOR FILTER}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Inter Opco Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click inter opco save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Inter Opco Add New Event Settlement Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click inter opco add new event settlement button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set New Event Paying Account
    [Arguments]    ${CARRIER ACCOUNT}
    ${STATUS} =     set variable    False
    ${STATUS} =     set new event paying account     ${CARRIER ACCOUNT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set New Event Receiving Account
    [Arguments]    ${CARRIER ACCOUNT}
    ${STATUS} =     set variable    False
    ${STATUS} =     set new event receiving account     ${CARRIER ACCOUNT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set New Event Rate Plan
    [Arguments]    ${RATE PLAN}        ${ACCOUNT}
    ${STATUS} =     set variable    False
    ${STATUS} =     set new event rate plan     ${RATE PLAN}       ${ACCOUNT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set New Event Direction
    [Arguments]    ${DIRECTION}
    ${STATUS} =     set variable    False
    ${STATUS} =     set new event direction     ${DIRECTION}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click On Carrier Dashboard Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select carrier dashboard tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click On Network Codes Link
    ${STATUS} =     set variable    False
    ${STATUS} =     click network codes link
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Network Codes Link Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is network codes link present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Network Codes Link Is Not Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is network codes link not present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Agreement From Agreement Table
    [Arguments]     ${DATABASE SERVER}      ${DATABASE}      ${DATABASE USERNAME}      ${DATABASE PASSWORD}
    ${AGREEMENT NAME} =     get agreement from agreement table       ${DATABASE SERVER}      ${DATABASE}      ${DATABASE USERNAME}      ${DATABASE PASSWORD}
    return from keyword     ${AGREEMENT NAME}

Verify Filter Carriers Grid With Parameter
    [Arguments]     ${COLUMN NAME}      ${ITEM NAME}
    @{CARRIER NAME LIST FOR FILTER} =       create list         ${ITEM NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     Carrier.grid filter details       ${COLUMN NAME}     @{CARRIER NAME LIST FOR FILTER}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Number Plans Inline Action Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click number plans inline action button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Carriers Page Inline Action Button With Parameter
    [Arguments]     ${CARRIER NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     click carrier page inline action button         ${CARRIER NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Number Plans Grid Direction
    [Arguments]     ${NUMBER PLANS GRID DIRECTION}
    ${ACTUAL DIRECTION} =   Get From Dictionary     ${NUMBER PLANS GRID ROW DETAILS}      Direction
    should be equal     ${ACTUAL DIRECTION}      ${NUMBER PLANS GRID DIRECTION}
    [Teardown]      run keyword unless     '${ACTUAL DIRECTION}'=='${NUMBER PLANS GRID DIRECTION}'    Log Screenshot

Verify Get All Values From Lookup Table
    [Arguments]     ${DATABASE SERVER}      ${DATABASE}      ${DATABASE USERNAME}      ${DATABASE PASSWORD}
    ${STATUS} =     set variable    False
    ${STATUS} =     get all values from lookup table         ${DATABASE SERVER}      ${DATABASE}      ${DATABASE USERNAME}      ${DATABASE PASSWORD}
    should be true      ${STATUS}

Verify Bidirectional Is Not Available In Direction Dropdown
    ${STATUS} =     set variable    True
    ${STATUS} =     is bidirectional available in direction dropdown
    should not be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='True'    Log Screenshot

Verify Compound Carrier Grid First Row
    [Arguments]     ${CARRIER NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     compare carrier grid first row data      ${CARRIER NAME}
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

Verify Set Carriers Grid Settings
    [Arguments]     ${GRID SETTING}
    ${STATUS} =     set variable    False
    ${STATUS} =     set carriers grid settings        ${GRID SETTING}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get All Rows of Specific Column From Carriers Grid
    [Arguments]     ${COLUMN NAME}
    @{ALL ROW DATA} =     get all rows of specific column from carriers grid       ${COLUMN NAME}
    return from keyword         @{ALL ROW DATA}

Verify Sort Carriers Grid Column In Ascending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort carriers grid column    ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Sort Carriers Grid Column In Descending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort carriers grid column    ${COLUMN NAME}      ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Carriers Grid Column Names By Order
    @{COLUMN NAME LIST} =     get carriers grid column names by order
    return from keyword         @{COLUMN NAME LIST}

Verify Drag Carriers Grid Column
    [Arguments]     ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     drag carriers grid column    ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Carriers Grid Export To Excel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click carriers grid export to excel button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Create Carrier Button Is Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is create carrier button present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Rates Grid First Row Checkbox
    ${STATUS} =     set variable    False
    ${STATUS} =     select rates grid first row checkbox
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Bulk Edit Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click bulk edit button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Bulk Edit End Date
    [Arguments]     ${END DATE}     ${FUTURE DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set bulk edit end date      ${END DATE}     ${FUTURE DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Save Changes Button With Confirmation
    ${STATUS} =     set variable    False
    ${STATUS} =     click save changes button with confirmation
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Filter Rate Plan Grid
    [Arguments]     ${COLUMN NAME}      @{FILTER ITEM LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     filter rate plan grid      ${COLUMN NAME}      @{FILTER ITEM LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Carrier Profile Rates Grid Begin Date
    ${STATUS} =     set variable    False
    ${STATUS} =     set carrier profile rates grid begin date
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Future Date
    [Arguments]     ${NUMBER OF DAYS TO ADD}
    ${FUTURE DATE} =    get future date     ${NUMBER OF DAYS TO ADD}
    return from keyword     ${FUTURE DATE}

Verify Set Begin Date For Rate Search
    [Arguments]     ${DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     Carrier.set begin date        ${DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set End Date For Rate Search
    [Arguments]     ${DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     Carrier.set end date        ${DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Add Network Destination Button Is Not Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is add network destination button not present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Network Codes Search Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click network codes search button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'      Log Screenshot

Verify Inactive User Is Not Present in Seller Name Dropdown
    [Arguments]        ${USER FIRST NAME}      ${USER LAST NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     check inactive user is not present in seller name dropdown      ${USER FIRST NAME}      ${USER LAST NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'          Log Screenshot

Verify The Specific Tab Is Focused Properly In Credit Profile Page
    [Arguments]     ${TAB NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is specific tab focused properly in credit profile page     ${TAB NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Specific Error Message Is Displayed In Credit Profile Page
    [Arguments]     ${ERROR MESSAGE}
    ${STATUS} =     set variable    False
    ${STATUS} =     is specific error message is displayed in credit profile page    ${ERROR MESSAGE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Remaining Credit Amount Threshold Values
    [Arguments]     ${THRESHOLD LEVEL}      ${THRESHOLD VALUE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set remaining credit amount threshold values      ${THRESHOLD LEVEL}      ${THRESHOLD VALUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Add New Transaction Pop Up Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is add new transaction pop up present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Deactivate Credit Limit Inline Action Item
    [Arguments]     ${INLINE ACTION ITEM NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     select deactivate credit limit inline action item     ${INLINE ACTION ITEM NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Trunk Provisioning Status In Grid
    [Arguments]     ${STATUS NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set trunk provisioning status in grid     ${STATUS NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Created Bill Account Name
    ${CREATED BILL ACCOUNT NAME} =     Carrier.get created bill account name
    log       ${CREATED BILL ACCOUNT NAME}
    return from keyword         ${CREATED BILL ACCOUNT NAME}

Verify Set Create Carrier Window Carrier Category1
    [Arguments]     ${CATEGORY}
    ${STATUS} =     set variable    False
    ${STATUS} =     set create carrier window carrier category_1     ${CATEGORY}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Create Carrier Window Carrier Category2
    [Arguments]     ${CATEGORY}
    ${STATUS} =     set variable    False
    ${STATUS} =     set create carrier window carrier category_2     ${CATEGORY}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Rate Record to Create New Rate Plan
    [Arguments]     ${RATE RECORD}=None
    ${STATUS} =     set variable    False
    ${STATUS} =     set rate record to add new rate     ${RATE RECORD}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Add Service Level Button Is Not Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is add service level button not present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Add Service Level Inline Action Button Is Not Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is add service level inline action button not present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Service Level Change Work Order Section Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is service level change work order section present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Expand Service Level Change Work Order Section
    ${STATUS} =     set variable    False
    ${STATUS} =     expand service level change work order section
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Add New Service Level Change Work Order Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click add new service level change work order button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Service Level Commercial Trunk
    [Arguments]     ${COMMERCIAL TRUNK}
    ${STATUS} =     set variable    False
    ${STATUS} =     select service level commercial trunk       ${COMMERCIAL TRUNK}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Service Level Country
    [Arguments]     ${COUNTRY}      ${ALL}=${FALSE}
    ${STATUS} =     set variable    False
    ${STATUS} =     select service level country    ${COUNTRY}      ${ALL}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Service Level Destination
    [Arguments]     ${DESTINATION}
    ${STATUS} =     set variable    False
    ${STATUS} =     select service level destination    ${DESTINATION}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Create Service Level Change Work Order Grid First Row Checkbox
    ${STATUS} =     set variable    False
    ${STATUS} =     select create service level change work order grid first row checkbox
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Next Button
    ${STATUS} =     set variable    False
    ${STATUS} =     Carrier.click next button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Submit Button
    ${STATUS} =     set variable    False
    ${STATUS} =     Carrier.click submit button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Filter Service Level Change Work Order Grid
    [Arguments]     ${COLUMN NAME}     ${VALUE FOR FILTER}
    @{VALUE LIST} =     create list     ${VALUE FOR FILTER}
    ${STATUS} =     set variable    False
    ${STATUS} =     filter service level change work order grid        ${COLUMN NAME}     ${VALUE FOR FILTER}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Service Level Change Work Order Grid Status
    [Arguments]     ${SLWO STATUS}
    ${STATUS} =     set variable    False
    ${STATUS} =     set service level change work order grid status     ${SLWO STATUS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Service Level Change Work Order Grid Save Changes Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click service level change work order grid save changes button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Filter Service Level Assignments Grid
    [Arguments]     ${COLUMN NAME}     ${VALUE FOR FILTER}
    @{VALUE LIST} =     create list     ${VALUE FOR FILTER}
    ${STATUS} =     set variable    False
    ${STATUS} =     filter service level assignments grid        ${COLUMN NAME}     ${VALUE FOR FILTER}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Filter Service Level Assignements Grid First Row Value
    [Arguments]     ${COLUMN NAME}      ${EXPECTED VALUE}
    ${ACTUAL VALUE} =     get service level assignments grid first row column value     ${COLUMN NAME}
    should be equal      ${ACTUAL VALUE}        ${EXPECTED VALUE}
    [Teardown]      run keyword unless    '${ACTUAL VALUE}'=='${EXPECTED VALUE}'    Log Screenshot

Verify Click Service Level Change Work Order Grid First Row Work Order Name
    ${STATUS} =     set variable    False
    ${STATUS} =     click service level change work order grid first row work order name
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Service Level Change Work Order Report First Row Work Order
    ${STATUS} =     set variable    False
    ${STATUS} =     click service level change work order report first row work order
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Service Level Change Work Order Report First Row Has End Date
    ${END DATE} =     get service level change work order report first row end date
    should not be equal     '${END DATE}'       ''
    [Teardown]      run keyword if    '${END DATE}'==''    Log Screenshot

Verify Sort Service Level Change Work Order Grid Column In Descending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort service level change work order grid column In Descending Order   ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Add Service Level Button Is Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is add service level button present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'      Log Screenshot

Verify Click Service Level Assignments Grid First Row Inline Action Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click service level assignments first row inline action button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Is Service Level Change Work Order Section Not Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is service level change work order section not present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Cancel Button
    ${STATUS} =     set variable    False
    ${STATUS} =    click cancel button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Service Level Change Work Order Grid First Row Work Order Name
    ${COLUMN VALUE} =     get service level change work order grid first row work order name
    should not be equal     '${COLUMN VALUE}'     ''
    return from keyword     ${COLUMN VALUE}
    [Teardown]      run keyword if    '${COLUMN VALUE}'==''    Log Screenshot

Verify SLWO Got End Dated
    [Arguments]     ${DATABASE SERVER}      ${DATABASE}      ${DATABASE USERNAME}      ${DATABASE PASSWORD}     ${WORK ORDER NAME}
    ${STATUS} =     verify slwo got end dated in database       ${DATABASE SERVER}      ${DATABASE}      ${DATABASE USERNAME}      ${DATABASE PASSWORD}     ${WORK ORDER NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Expand Bill Account Recurrent Charges Section
    ${STATUS} =     set variable    False
    ${STATUS} =     expand bill account recurrent charges section
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'      Log Screenshot

Verify Click Recurrent Charges Add New Record Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click recurrent charges add new record button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'      Log Screenshot

Verify Select Recurrent Charges Charge Product
    [Arguments]     ${CHARGE PRODUCT}=None
    ${STATUS} =     set variable    False
    ${STATUS} =     select recurrent charges charge product     ${CHARGE PRODUCT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'      Log Screenshot

Verify Select Recurrent Charges Grid Active Checkbox
    ${STATUS} =     set variable    False
    ${STATUS} =     select recurrent charges grid active checkbox
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'      Log Screenshot

Verify Set Recurrent Charges Recurring Charge name
    [Arguments]     ${PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set recurrent charges recurring charge name     ${PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'      Log Screenshot

Verify Get Recurring Charge Name
    ${CHARGE NAME} =        get recurrent charges recurring charge name
    return from keyword     ${CHARGE NAME}

Verify Set Recurrent Charges Begin Date
    [Arguments]     ${DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set recurrent charges begin date     ${DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'      Log Screenshot

Verify Set Recurrent Charges Charge Amount
    [Arguments]     ${AMOUNT}
    ${STATUS} =     set variable    False
    ${STATUS} =     set recurrent charges amount    ${AMOUNT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'      Log Screenshot

Verify Set Recurrent Charges Charge Method
    ${STATUS} =     set variable    False
    ${STATUS} =     set recurrent charges charge method
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'      Log Screenshot

Verify Select Recurrent Charges Accounting Code
    ${STATUS} =     set variable    False
    ${STATUS} =     select recurrent charges accounting code
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'      Log Screenshot

Verify Click Recurrent Charges Save Changes Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click recurrent charges save changes button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'      Log Screenshot

Verify Credit Management Enabled Status
    [Arguments]     ${EXPECTED STATUS}
    ${STATUS} =     get credit management enable status
    should be equal     '${EXPECTED STATUS}'     '${STATUS}'
    [Teardown]      run keyword unless    '${EXPECTED STATUS}'=='${STATUS}'    Log Screenshot

Verify Close Credit Profile Tab Without Saving
    ${STATUS} =     set variable    False
    ${STATUS} =    close credit profile tab without saving
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Credit Profile Has Credit Limit
    ${CREDIT LIMIT} =     get credit profile credit limit
    should not be equal     '${CREDIT LIMIT}'     ''
    [Teardown]      run keyword if    '${CREDIT LIMIT}'==''    Log Screenshot

Verify The Specific Column Is Available In Service Level Work Order Section
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is specific column present in service level work order section     ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Service Level Work Order First Row Info Icon
    ${STATUS} =     set variable    False
    ${STATUS} =    click service level work order first row info icon
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Service Order Report Pop Up Page Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is service order report pop up page present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Service Level Change Work Order Grid Save Changes Button Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is service level change work order grid save changes button present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Service Level Change Work Order Grid Cancel Changes Button Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is service level change work order grid cancel changes button present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Add New Service Level Change Work Order Button Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is add new service level change work order button present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Service Level Change Work Order Grid Row Column Value
    [Arguments]     ${COLUMN NAME}     ${EXPECTED VALUE}
    ${ACTUAL VALUE} =     get service level change work order grid first row column value        ${COLUMN NAME}
    should be equal     ${EXPECTED VALUE}   ${ACTUAL VALUE}
    [Teardown]      run keyword unless    '${EXPECTED VALUE}'=='${ACTUAL VALUE}'    Log Screenshot

Verify Click Submit Button And Verify Error Message
    ${STATUS} =     set variable    False
    ${STATUS} =     click submit button and verify error message
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot
