*** Settings ***
Documentation   Network Page Resource File With All Necessary Keywords.

Resource        ../common_resource.robot

Library     ../../../TestFramework/Libraries/RobotTests/Home.py
Library     ../../../TestFramework/Libraries/RobotTests/Network.py
Library     Collections

*** Variables ***
${EXPECTED PAGE TITLE}                      Network
${ACTUAL PAGE TITLE}                        ${EMPTY}
${STATUS}                                   ${EMPTY}
${EXPECTED TECHNICAL TRUNKS TAB HEADER}     Technical Trunk
${ACTUAL TECHNICAL TRUNKS TAB HEADER}       ${EMPTY}
${EXPECTED COMMERCIAL TRUNKS TAB HEADER}    Commercial Trunk
${ACTUAL COMMERCIAL TRUNKS TAB HEADER}      ${EMPTY}
${SEARCH RESULT WHEN NO DATA FOUND}         No records found.
${CREATED TECHNICAL TRUNK}                  ${EMPTY}
${CDR MATCH FOR CREATED TECHNICAL TRUNK}    ${EMPTY}
${CREATED NOTE}                             ${EMPTY}
${CREATED COMMERCIAL TRUNK}                 ${EMPTY}
${COMMERCIAL TRUNKS GRID ROW DATA}          ${EMPTY}
${COMMERCIAL TRUNK NOTE}                    ${EMPTY}
${COMMERCIAL TRUNK GRID ROW DATA}           ${EMPTY}
${TECHNICAL TRUNKS GRID ROW DATA}           ${EMPTY}

*** Keywords ***
Click on Home Icon and Select 'Network' From Main Menu
    ${STATUS} =     set variable    False
    select network submenu
    ${STATUS} =     switch to network
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Page Title
    ${ACTUAL PAGE TITLE} =  get network page title
    should be equal     ${ACTUAL PAGE TITLE}     ${EXPECTED PAGE TITLE}
    [Teardown]      run keyword unless     '${ACTUAL PAGE TITLE}'=='${EXPECTED PAGE TITLE}'    Log Screenshot

Verify The Network Dashboard Tab Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is network dashboard tab present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Technical Trunks Tab Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is technical trunks tab present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Commercial Trunks Tab Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is commercial trunks tab present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Click On Technical Trunks Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select technical trunks tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Technical Trunks Tab Header
    ${ACTUAL TECHNICAL TRUNKS TAB HEADER} =     get technical trunks tab header
    should be equal     ${ACTUAL TECHNICAL TRUNKS TAB HEADER}     ${EXPECTED TECHNICAL TRUNKS TAB HEADER}
    [Teardown]      run keyword unless     '${ACTUAL TECHNICAL TRUNKS TAB HEADER}'=='${EXPECTED TECHNICAL TRUNKS TAB HEADER}'    Log Screenshot

Click On Commercial Trunks Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select commercial trunks tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Commercial Trunks Tab Header
    ${ACTUAL COMMERCIAL TRUNKS TAB HEADER} =     get commercial trunks tab header
    should be equal     ${ACTUAL COMMERCIAL TRUNKS TAB HEADER}     ${EXPECTED COMMERCIAL TRUNKS TAB HEADER}
    [Teardown]      run keyword unless     '${ACTUAL COMMERCIAL TRUNKS TAB HEADER}'=='${EXPECTED COMMERCIAL TRUNKS TAB HEADER}'    Log Screenshot

Verify Technical Trunks Tab Is Loaded Properly
    ${STATUS} =     set variable    False
    ${STATUS} =     is technical trunks tab loaded properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Technical Trunk For Search
    ${STATUS} =     set variable    False
    ${STATUS} =     set technical trunk for search
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Status For Search
    [Arguments]     @{STATUS LIST FOR SEARCH}
    ${STATUS} =     set variable    False
    ${STATUS} =     set status for search      @{STATUS LIST FOR SEARCH}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Date For Search
    ${STATUS} =     set variable    False
    ${STATUS} =     set date for search
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Technical Trunks Tab Search Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click technical trunks tab search button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Data Is Loaded In The Grid
    ${DATA LOADING STATUS} =     set variable      False
    ${DATA LOADING STATUS} =     is data loaded in the grid
    [Teardown]  run keyword if  '${DATA LOADING STATUS}'=='False'    log     ${SEARCH RESULT WHEN NO DATA FOUND}

Verify Click Create New Technical Trunk Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click create new technical trunk button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Technical Trunk For Create Technical Trunk
    [Arguments]     ${TECHNICAL TRUNK PREFIX}   ${IS STATIC VALUE}=${FALSE}     ${STATIC VALUE}=${EMPTY}
    ${CREATED TECHNICAL TRUNK} =     set technical trunk for create technical trunk      ${TECHNICAL TRUNK PREFIX}      ${IS STATIC VALUE}     ${STATIC VALUE}
    set suite variable      ${CREATED TECHNICAL TRUNK}
    log     ${CREATED TECHNICAL TRUNK}

Verify Set Trunk Type For Create Technical Trunk
    [Arguments]     ${TRUNK TYPE FOR CREATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set trunk type for create technical trunk      ${TRUNK TYPE FOR CREATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Switch For Create Technical Trunk
    [Arguments]     ${SWITCH FOR CREATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set switch for create technical trunk      ${SWITCH FOR CREATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Carrier For Create Technical Trunk
    ${CARRIER} =     get created account
    ${STATUS} =     set variable    False
    ${STATUS} =     set carrier for create technical trunk      ${CARRIER}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set CDR Match For Create Technical Trunk
    [Arguments]     ${CDR MATCH PREFIX}     ${IS STATIC VALUE}=${FALSE}     ${STATIC VALUE}=${EMPTY}
    ${CDR MATCH FOR CREATED TECHNICAL TRUNK} =     set cdr match for create technical trunk      ${CDR MATCH PREFIX}      ${IS STATIC VALUE}     ${STATIC VALUE}
    set suite variable      ${CDR MATCH FOR CREATED TECHNICAL TRUNK}
    log     ${CDR MATCH FOR CREATED TECHNICAL TRUNK}

Verify Click Technical Trunk Attribute Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     click technical trunk attributes tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Effective Date For Create Technical Trunk
    ${STATUS} =     set variable    False
    ${STATUS} =     set effective date for create technical trunk
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Status For Create Technical Trunk
    [Arguments]     ${STATUS FOR CREATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set status for create technical trunk      ${STATUS FOR CREATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Activated Ports For Create Technical Trunk
    [Arguments]     ${NUMBER OF ACTIVATED PORTS}
    ${STATUS} =     set variable    False
    ${STATUS} =     set activated ports for create technical trunk      ${NUMBER OF ACTIVATED PORTS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Commercial Trunk For Create Technical Trunk
    ${STATUS} =     set variable    False
    ${COMMERCIAL TRUNK FOR CREATE} =    get created commercial trunk
    ${STATUS} =     set commercial trunk for create technical trunk      ${COMMERCIAL TRUNK FOR CREATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Direction For Create Technical Trunk
    [Arguments]     ${DIRECTION FOR CREATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set direction for create technical trunk      ${DIRECTION FOR CREATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Create New Technical Trunk Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click create new technical trunk save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Filter Technical Trunks Grid With Created Technical Trunk
    [Arguments]     ${TECHNICAL TRUNK COLUMN NAME}
    @{FILTER ITEM LIST} =       create list        ${CREATED TECHNICAL TRUNK}
    ${STATUS} =     set variable    False
    ${STATUS} =     filter technical trunks grid       ${TECHNICAL TRUNK COLUMN NAME}      @{FILTER ITEM LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Technical Trunk Grid Row Data
    ${GRID ROW DATA} =     get technical trunks grid row data
    ${TECHNICAL TRUNKS GRID ROW DATA} =     copy dictionary            ${GRID ROW DATA}
    set suite variable      ${TECHNICAL TRUNKS GRID ROW DATA}
    ${LENGTH} =     get length      ${TECHNICAL TRUNKS GRID ROW DATA}
    [Teardown]      run keyword if    '${LENGTH}'=='0'    Log Screenshot

Verify Technical Trunk Name After Create
    ${ACTUAL TECHNICAL TRUNK NAME} =   Get From Dictionary     ${TECHNICAL TRUNKS GRID ROW DATA}        Technical Trunk
    should be equal     ${ACTUAL TECHNICAL TRUNK NAME}      ${CREATED TECHNICAL TRUNK}
    [Teardown]      run keyword unless     '${ACTUAL TECHNICAL TRUNK NAME}'=='${CREATED TECHNICAL TRUNK}'    Log Screenshot

Verify Carrier After Create
    ${CARRIER FOR CREATE} =     get created account
    ${ACTUAL CARRIER} =   Get From Dictionary     ${TECHNICAL TRUNKS GRID ROW DATA}        Account
    should be equal     ${ACTUAL CARRIER}      ${CARRIER FOR CREATE}
    [Teardown]      run keyword unless     '${ACTUAL CARRIER}'=='${CARRIER FOR CREATE}'    Log Screenshot

Verify Trunk Type After Create
    [Arguments]     ${TRUNK TYPE FOR CREATE}
    ${ACTUAL TRUNK TYPE} =   Get From Dictionary     ${TECHNICAL TRUNKS GRID ROW DATA}        Trunk Type
    should be equal     ${ACTUAL TRUNK TYPE}      ${TRUNK TYPE FOR CREATE}
    [Teardown]      run keyword unless     '${ACTUAL TRUNK TYPE}'=='${TRUNK TYPE FOR CREATE}'    Log Screenshot

Verify Commercial Trunk After Create
    ${COMMERCIAL TRUNK FOR CREATE} =    get created commercial trunk
    ${ACTUAL COMMERCIAL TRUNK} =   Get From Dictionary     ${TECHNICAL TRUNKS GRID ROW DATA}        Commercial Trunk
    should be equal     ${ACTUAL COMMERCIAL TRUNK}      ${COMMERCIAL TRUNK FOR CREATE}
    [Teardown]      run keyword unless     '${ACTUAL COMMERCIAL TRUNK}'=='${COMMERCIAL TRUNK FOR CREATE}'    Log Screenshot

Verify Status After Create
    [Arguments]     ${STATUS FOR CREATE}
    ${ACTUAL STATUS} =   Get From Dictionary     ${TECHNICAL TRUNKS GRID ROW DATA}        Status
    should be equal     ${ACTUAL STATUS}      ${STATUS FOR CREATE}
    [Teardown]      run keyword unless     '${ACTUAL STATUS}'=='${STATUS FOR CREATE}'    Log Screenshot

Verify Direction After Create
    [Arguments]     ${DIRECTION FOR CREATE}
    ${ACTUAL DIRECTION} =   Get From Dictionary     ${TECHNICAL TRUNKS GRID ROW DATA}        Direction
    should be equal     ${ACTUAL DIRECTION}      ${DIRECTION FOR CREATE}
    [Teardown]      run keyword unless     '${ACTUAL DIRECTION}'=='${DIRECTION FOR CREATE}'    Log Screenshot

Verify Activated Ports After Create
    [Arguments]     ${ACTIVATED PORTS FOR CREATE}
    ${ACTUAL ACTIVATED PORTS} =   Get From Dictionary     ${TECHNICAL TRUNKS GRID ROW DATA}        Activated Ports
    should be equal     ${ACTUAL ACTIVATED PORTS}      ${ACTIVATED PORTS FOR CREATE}
    [Teardown]      run keyword unless     '${ACTUAL ACTIVATED PORTS}'=='${ACTIVATED PORTS FOR CREATE}'    Log Screenshot

Verify Begin Date After Create
    [Arguments]     ${BEGIN DATE FOR CREATE}
    ${ACTUAL BEGIN DATE} =   Get From Dictionary     ${TECHNICAL TRUNKS GRID ROW DATA}        Begin Date
    should be equal     ${ACTUAL BEGIN DATE}      ${BEGIN DATE FOR CREATE}
    [Teardown]      run keyword unless     '${ACTUAL BEGIN DATE}'=='${BEGIN DATE FOR CREATE}'    Log Screenshot

Verify Select Technical Trunks Grid Row For Edit
    ${STATUS} =     set variable    False
    ${STATUS} =     select technical trunks grid row      ${CREATED TECHNICAL TRUNK}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Note In Technical Trunks Grid
    [Arguments]     ${NOTE PREFIX}
    ${CREATED NOTE} =     set note in technical trunks grid     ${NOTE PREFIX}
    set suite variable      ${CREATED NOTE}
    log     ${CREATED NOTE}

Verify Set Clli In Technical Trunks Grid
    [Arguments]     ${CLLI}
    ${STATUS} =     set variable    False
    ${STATUS} =     set clli in technical trunks grid      ${CLLI}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Save Changes Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click save changes button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Note After Edit
    ${ACTUAL NOTE} =   Get From Dictionary     ${TECHNICAL TRUNKS GRID ROW DATA}        Note
    should be equal     ${ACTUAL NOTE}      ${CREATED NOTE}
    [Teardown]      run keyword unless     '${ACTUAL NOTE}'=='${CREATED NOTE}'    Log Screenshot

Verify Clli After Edit
    [Arguments]     ${CLLI FOR EDIT}
    ${ACTUAL CLLI} =   Get From Dictionary     ${TECHNICAL TRUNKS GRID ROW DATA}        CLLI
    should be equal     ${ACTUAL CLLI}      ${CLLI FOR EDIT}
    [Teardown]      run keyword unless     '${ACTUAL CLLI}'=='${CLLI FOR EDIT}'    Log Screenshot

Verify Set Technical Trunk For Search For Edit
    ${STATUS} =     set variable    False
    ${STATUS} =     set technical trunk for search      ${CREATED TECHNICAL TRUNK}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Create New Commercial Trunk button
    ${STATUS} =     set variable    False
    ${STATUS} =     click create new commercial trunk button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Trunk For Create Commercial Trunk
    [Arguments]     ${TRUNK PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set trunk for create commercial trunk      ${TRUNK PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Account For Create Commercial Trunk
    ${ACCOUNT} =     get created account
    ${STATUS} =     set variable    False
    ${STATUS} =     set account for create commercial trunk             ${ACCOUNT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Effective Date For Create Commercial Trunk
    ${STATUS} =     set variable    False
    ${STATUS} =     set effective date for create commercial trunk
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Status For Create Commercial Trunk
    [Arguments]     ${STATUS FOR CREATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set status for create commercial trunk          ${STATUS FOR CREATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Direction For Create Commercial Trunk
    [Arguments]     ${DIRECTION FOR CREATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set direction for create commercial trunk       ${DIRECTION FOR CREATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Create Commercial Trunk Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click create commercial trunk save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Commercial Trunk After Create
    ${STATUS} =     set variable    False
    ${CREATED COMMERCIAL TRUNK} =     get created commercial trunk
    set suite variable      ${CREATED COMMERCIAL TRUNK}
    log     ${CREATED COMMERCIAL TRUNK}
    ${STATUS} =     set commercial trunk        ${CREATED COMMERCIAL TRUNK}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Commercial Trunk Search Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click commercial trunk search button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Commercial Trunks Grid Row Data
    ${COMMERCIAL TRUNKS GRID ROW DATA} =     get commercial trunks grid row data
    set suite variable      ${COMMERCIAL TRUNKS GRID ROW DATA}
    ${LENGTH} =     get length      ${COMMERCIAL TRUNKS GRID ROW DATA}
    [Teardown]      run keyword if    '${LENGTH}'=='0'    Log Screensho

Verify Commercial Trunk Trunk Name
    ${ACTUAL TRUNK} =   Get From Dictionary     ${COMMERCIAL TRUNKS GRID ROW DATA}        Trunk
    should be equal     ${ACTUAL TRUNK}      ${CREATED COMMERCIAL TRUNK}
    [Teardown]      run keyword unless     '${ACTUAL TRUNK}'=='${CREATED COMMERCIAL TRUNK}'    Log Screenshot

Verify Commercial Trunk Account
    ${EXPECTED ACCOUNT} =       get created account
    ${ACTUAL ACCOUNT} =   Get From Dictionary     ${COMMERCIAL TRUNKS GRID ROW DATA}        Account
    should be equal     ${ACTUAL ACCOUNT}      ${EXPECTED ACCOUNT}
    [Teardown]      run keyword unless     '${ACTUAL ACCOUNT}'=='${EXPECTED ACCOUNT}'    Log Screenshot

Verify Commercial Trunk Status
    [Arguments]     ${COMMERCIAL TRUNK STATUS}
    ${ACTUAL STATUS} =   Get From Dictionary     ${COMMERCIAL TRUNKS GRID ROW DATA}        Status
    should be equal     ${ACTUAL STATUS}      ${COMMERCIAL TRUNK STATUS}
    [Teardown]      run keyword unless     '${ACTUAL STATUS}'=='${COMMERCIAL TRUNK STATUS}'    Log Screenshot

Verify Commercial Trunk Direction
    [Arguments]     ${COMMERCIAL TRUNK DIRECTION}
    ${ACTUAL DIRECTION} =   Get From Dictionary     ${COMMERCIAL TRUNKS GRID ROW DATA}        Direction
    should be equal     ${ACTUAL DIRECTION}      ${COMMERCIAL TRUNK DIRECTION}
    [Teardown]      run keyword unless     '${ACTUAL DIRECTION}'=='${COMMERCIAL TRUNK DIRECTION}'    Log Screenshot

Verify Commercial Trunk Effective Date
    ${EXPECTED EFFECTIVE DATE} =    get commercial trunk effective date
    ${ACTUAL EFFECTIVE DATE} =   Get From Dictionary     ${COMMERCIAL TRUNKS GRID ROW DATA}        Effective Date
    should be equal     ${ACTUAL EFFECTIVE DATE}      ${EXPECTED EFFECTIVE DATE}
    [Teardown]      run keyword unless     '${ACTUAL EFFECTIVE DATE}'=='${EXPECTED EFFECTIVE DATE}'    Log Screenshot

Verify Set Commercial Trunk Select Date
    ${STATUS} =     set variable    False
    ${STATUS} =     set commercial trunk select date
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Commercial Trunks Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select commercial trunks tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Commercial Trunk For Search
    [Arguments]     ${COMMERCIAL TRUNK FOR SEARCH}
    ${STATUS} =     set variable    False
    ${STATUS} =     set commercial trunk for search     ${COMMERCIAL TRUNK FOR SEARCH}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Commercial Trunks Search Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click commercial trunks search button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Status For Edit Commercial Trunk
    [Arguments]     ${COMMERCIAL TRUNK STATUS}
    ${STATUS} =     set variable    False
    ${STATUS} =     set status for edit commercial trunk     ${COMMERCIAL TRUNK STATUS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Direction For Edit Commercial Trunk
    [Arguments]     ${COMMERCIAL TRUNK DIRECTION}
    ${STATUS} =     set variable    False
    ${STATUS} =     set direction for edit commercial trunk     ${COMMERCIAL TRUNK DIRECTION}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set CLLI For Edit Commercial Trunk
    [Arguments]     ${CLLI FOR COMMERCIAL TRUNK}
    ${STATUS} =     set variable    False
    ${STATUS} =     set clli for edit commercial trunk     ${CLLI FOR COMMERCIAL TRUNK}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Note For Edit Commercial Trunk
    ${COMMERCIAL TRUNK NOTE} =     set note for edit commercial trunk
    set suite variable      ${COMMERCIAL TRUNK NOTE}
    log     ${COMMERCIAL TRUNK NOTE}
    [Teardown]      run keyword if    '${COMMERCIAL TRUNK NOTE}'==''    Log Screenshot

Verify Get Commercial Trunks Grid Row Data For Edit
    ${COMMERCIAL TRUNK GRID ROW DATA} =     get commercial trunks grid row data for edit
    set suite variable      ${COMMERCIAL TRUNK GRID ROW DATA}
    ${LENGTH} =     get length      ${COMMERCIAL TRUNK GRID ROW DATA}
    [Teardown]      run keyword if    '${LENGTH}'=='0'    Log Screenshot

Verify Status After Edit Commercial Trunk
    [Arguments]     ${COMMERCIAL TRUNK STATUS}
    ${ACTUAL STATUS} =   Get From Dictionary     ${COMMERCIAL TRUNK GRID ROW DATA}        Status
    should be equal     ${ACTUAL STATUS}      ${COMMERCIAL TRUNK STATUS}
    [Teardown]      run keyword unless     '${ACTUAL STATUS}'=='${COMMERCIAL TRUNK STATUS}'    Log Screenshot

Verify Direction After Edit Commercial Trunk
    [Arguments]     ${COMMERCIAL TRUNK DIRECTION}
    ${ACTUAL DIRECTION} =   Get From Dictionary     ${COMMERCIAL TRUNK GRID ROW DATA}        Direction
    should be equal     ${ACTUAL DIRECTION}      ${COMMERCIAL TRUNK DIRECTION}
    [Teardown]      run keyword unless     '${ACTUAL DIRECTION}'=='${COMMERCIAL TRUNK DIRECTION}'    Log Screenshot

Verify Trunk Name For Edit Commercial Trunk
    [Arguments]     ${TRUNK NAME FOR EDIT}
    ${ACTUAL TRUNK NAME} =   Get From Dictionary     ${COMMERCIAL TRUNK GRID ROW DATA}        Trunk
    should be equal     ${ACTUAL TRUNK NAME}      ${TRUNK NAME FOR EDIT}
    [Teardown]      run keyword unless     '${ACTUAL TRUNK NAME}'=='{TRUNK NAME FOR EDIT}'    Log Screenshot

Verify CLLI After Edit Commercial Trunk
    [Arguments]     ${CLLI FOR COMMERCIAL TRUNK}
    ${ACTUAL CLLI} =   Get From Dictionary     ${COMMERCIAL TRUNK GRID ROW DATA}        CLLI
    should be equal     ${ACTUAL CLLI}      ${CLLI FOR COMMERCIAL TRUNK}
    [Teardown]      run keyword unless     '${ACTUAL CLLI}'=='${CLLI FOR COMMERCIAL TRUNK}'    Log Screenshot

Verify Note After Edit Commercial Trunk
    ${ACTUAL NOTE} =   Get From Dictionary     ${COMMERCIAL TRUNK GRID ROW DATA}        Note
    should be equal     ${ACTUAL NOTE}      ${COMMERCIAL TRUNK NOTE}
    [Teardown]      run keyword unless     '${ACTUAL NOTE}'=='${COMMERCIAL TRUNK NOTE}'    Log Screenshot

Verify Technical Trunk Select Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${TECHNICAL TRUNK SELECT DATE} =     get technical trunk select date
    log     ${TECHNICAL TRUNK SELECT DATE}
    ${STATUS} =     validate date format       ${TECHNICAL TRUNK SELECT DATE}       ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Technical Trunk Grid First Row Inline Action Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click technical trunk grid first row inline action button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Technical Trunk Inline Action Item
    [Arguments]     ${INLINE ITEM NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     select technical trunk inline action item       ${INLINE ITEM NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Technical Trunk Attributes Grid Begin Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${TECHNICAL TRUNK ATTRIBUTE GRID BEGIN DATE} =     get technical trunk attributes grid begin date column value
    log     ${TECHNICAL TRUNK ATTRIBUTE GRID BEGIN DATE}
    ${STATUS} =     validate date format       ${TECHNICAL TRUNK ATTRIBUTE GRID BEGIN DATE}       ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Technical Trunk Attributes Grid End Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${TECHNICAL TRUNK ATTRIBUTE GRID END DATE} =     get technical trunk attributes grid end date column value
    log     ${TECHNICAL TRUNK ATTRIBUTE GRID END DATE}
    ${STATUS} =     validate date format       ${TECHNICAL TRUNK ATTRIBUTE GRID END DATE}       ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Technical Trunk Attributes Grid Modified Date Format
    [Arguments]     ${EXPECTED TIME STAMP FORMAT}
    ${TECHNICAL TRUNK ATTRIBUTE GRID MODIFIED DATE} =     get technical trunk attributes grid Modified date column value
    log     ${TECHNICAL TRUNK ATTRIBUTE GRID MODIFIED DATE}
    ${STATUS} =     validate date format       ${TECHNICAL TRUNK ATTRIBUTE GRID MODIFIED DATE}       ${EXPECTED TIME STAMP FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Close Current Pop Up
    [Arguments]     ${POP UP NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     close current pop up        ${POP UP NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Commercial Trunk Select Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${COMMERTIAL TRUNK SELECT DATE} =     get commercial trunk select date
    log     ${COMMERTIAL TRUNK SELECT DATE}
    ${STATUS} =     validate date format       ${COMMERTIAL TRUNK SELECT DATE}       ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Commercial Trunk Grid Effective Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${COMMERTIAL TRUNK GRID EFFECTIVE DATE} =     get commercial trunk grid effective date column value
    log     ${COMMERTIAL TRUNK GRID EFFECTIVE DATE}
    ${STATUS} =     validate date format       ${COMMERTIAL TRUNK GRID EFFECTIVE DATE}       ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Commercial Trunk Grid Modified Date Format
    [Arguments]     ${EXPECTED TIME STAMP FORMAT}
    ${COMMERTIAL TRUNK GRID MODIFIED DATE} =     get commercial trunk grid modified date column value
    log     ${COMMERTIAL TRUNK GRID MODIFIED DATE}
    ${STATUS} =     validate date format       ${COMMERTIAL TRUNK GRID MODIFIED DATE}       ${EXPECTED TIME STAMP FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Create New Commercial Trunk Effective Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${CREATE NEW COMMERTIAL TRUNK EFFECTIVE DATE} =     get create new commercial trunk effective date
    log     ${CREATE NEW COMMERTIAL TRUNK EFFECTIVE DATE}
    ${STATUS} =     validate date format       ${CREATE NEW COMMERTIAL TRUNK EFFECTIVE DATE}       ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Create New Switch
    [Arguments]     ${DATABASE SERVER}      ${DATABASE}      ${DATABASE USERNAME}      ${DATABASE PASSWORD}     ${SWITCH PREFIX}
    create new switch           ${DATABASE SERVER}      ${DATABASE}      ${DATABASE USERNAME}      ${DATABASE PASSWORD}     ${SWITCH PREFIX}

Verify Delete Created Switch
    [Arguments]     ${DATABASE SERVER}      ${DATABASE}      ${DATABASE USERNAME}      ${DATABASE PASSWORD}
    delete created switch        ${DATABASE SERVER}      ${DATABASE}      ${DATABASE USERNAME}      ${DATABASE PASSWORD}

Verify Get Created Switch
    ${CREATED SWITCH} =     get created switch
    return from keyword     ${CREATED SWITCH}

Verify Get Created Technical Trunk
    ${CREATED TECHNICAL TRUNK} =     get created technical trunk
    return from keyword     ${CREATED TECHNICAL TRUNK}

Verify Close Network Window
    ${STATUS} =     set variable    False
    ${STATUS} =     close network window
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Transmission Type For Create Technical Trunk
    [Arguments]     ${TRUNK TYPE FOR CREATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set transmission type for create technical trunk      ${TRUNK TYPE FOR CREATE}
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

Verify Set Technical Trunks Grid Settings
    [Arguments]     ${GRID SETTING}
    ${STATUS} =     set variable    False
    ${STATUS} =     set technical trunks grid settings        ${GRID SETTING}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get All Rows of Specific Column From Technical Trunks Grid
    [Arguments]     ${COLUMN NAME}
    @{ALL ROW DATA} =     get all rows of specific column from technical trunks grid       ${COLUMN NAME}
    return from keyword         @{ALL ROW DATA}

Verify Sort Technical Trunks Grid Column In Ascending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort technical trunks grid column    ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Sort Technical Trunks Grid Column In Descending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort technical trunks grid column    ${COLUMN NAME}      ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Technical Trunks Grid Column Names By Order
    @{COLUMN NAME LIST} =     get technical trunks grid column names by order
    return from keyword         @{COLUMN NAME LIST}

Verify Drag Technical Trunks Grid Column
    [Arguments]     ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     drag technical trunks grid column    ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Technical Trunks Grid Export To Excel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click technical trunks grid export to excel button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click RG Adjuster Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click rg adjuster button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Technical Route Guide Adjuster Is Loaded Properly
    ${STATUS} =     set variable    False
    ${STATUS} =     is technical route guide adjuster loaded properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Technical Trunk Attibutes Grid Column Is Present
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is technical trunk attributes grid column present       ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Technical Trunk Details Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select technical trunk details tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Technical Trunk Details Field Is Present
    [Arguments]     ${FIELD NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is technical trunk details field present       ${FIELD NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Technical Trunk Attributes Grid First Row Inline Action Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click technical trunk attributes grid first row inline action button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Technical Trunk Name From Trunk Detail Pop Up
    ${TECHNICAL TRUNK NAME} =     get technical trunk name
    should not be equal     '${TECHNICAL TRUNK NAME}'     ''
    return from keyword     ${TECHNICAL TRUNK NAME}
    [Teardown]      run keyword if    '${TECHNICAL TRUNK NAME}'==''    Log Screenshot

Verify Get Technical Trunk CDR Match
    ${TECHNICAL TRUNK CDR MATCH} =     get technical trunk cdr match
    should not be equal     '${TECHNICAL TRUNK CDR MATCH}'     ''
    return from keyword     ${TECHNICAL TRUNK CDR MATCH}
    [Teardown]      run keyword if    '${TECHNICAL TRUNK CDR MATCH}'==''    Log Screenshot

Verify Click Technical Trunk Detail Save Button With Validation
    ${STATUS} =     set variable    False
    ${STATUS} =     click create new technical trunk save button with validation
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Note
    [Arguments]     ${NOTE PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set note    ${NOTE PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Carrier Commercial Trunk For Create Technical Trunk
    [Arguments]     ${COMMERCIAL TRUNK}
    ${STATUS} =     set variable    False
    ${STATUS} =     set commercial trunk for create technical trunk      ${COMMERCIAL TRUNK}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Carrier For Create Technical Trunk With Parameter
    [Arguments]     ${CARRIER}
    ${STATUS} =     set variable    False
    ${STATUS} =     set carrier for create technical trunk      ${CARRIER}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot