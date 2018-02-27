*** Settings ***
Documentation   IXTrade Page Resource File With All Necessary Keywords

Resource        ../../common_resource.robot

Library         ../../../../TestFramework/Libraries/RobotTests/Legacy/IXTrade.py
Library         Collections

*** Variables ***
${PRICING EXCEPTION GRID ROW DETAILS}               ${EMPTY}
${PRICING EXCEPTION GRID RIGHT TABLE DETAILS}       ${EMPTY}
${CREATED FILE NAME}                                ${EMPTY}
${END DATE}                                         ${EMPTY}

*** Keywords ***
Go To IXTrade Screen With Specific Url
    ${STATUS} =     set variable    False
    ${STATUS} =     go to specific url      ${iXTRADE PAGE URL}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Vendor Offers Link
    ${STATUS} =     set variable    False
    ${STATUS} =     click vendor offers link
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Vendor Offer Upload Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click vendor offer upload submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Vendor Offer Source Type
    [Arguments]     ${SOURCE TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set vendor offer source type    ${SOURCE TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Vendor Offer Browse Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click vendor offer browse button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select The File To Be Uploaded
    [Arguments]     ${UPLOAD FILE PATH}
    ${STATUS} =     set variable    False
    ${STATUS} =     IXTrade.select the file to be uploaded      ${UPLOAD FILE PATH}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Upload Now Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click upload now button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Upload Failure Message
    [Arguments]     ${UPLOAD FAILURE MESSAGE}
    ${STATUS} =     set variable    False
    ${STATUS} =     compare upload failure message      ${UPLOAD FAILURE MESSAGE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Customer Pricing Exception Management Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click customer pricing exception management submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Customer Pricing Exception Management Search Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click customer pricing exception management search button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Exit Button
    ${STATUS} =     set variable    False
    ${STATUS} =     IXTrade.click exit button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Legacy Ui Link
    ${STATUS} =     set variable    False
    ${STATUS} =     click legacy ui link
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Pricing Exception Grid First Row Inline Action Button
    ${STATUS} =     set variable    False
    ${STATUS} =     IXTrade.click pricing exception grid first row inline action button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Inline Action Item
    [Arguments]     ${INLINE ACTION ITEM NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     IXTrade.select inline action item       ${INLINE ACTION ITEM NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Pricing Exception Grid Left Table Details
    ${PRICING EXCEPTION GRID ROW DETAILS} =     get pricing exception grid left table details
    set suite variable      ${PRICING EXCEPTION GRID ROW DETAILS}
    log         ${PRICING EXCEPTION GRID ROW DETAILS}
    ${LENGTH} =     get length      ${PRICING EXCEPTION GRID ROW DETAILS}
    [Teardown]      run keyword if    '${LENGTH}'=='0'    Log Screenshot

Verify Pricing Exception Grid Customer
    [Arguments]         ${LABEL NAME}
    ${ACTUAL VALUE} =       get label wise text         ${LABEL NAME}
    ${EXPECTED VALUE} =   Get From Dictionary     ${PRICING EXCEPTION GRID ROW DETAILS}      Customer
    should be equal     ${ACTUAL VALUE}      ${EXPECTED VALUE}
    [Teardown]      run keyword unless     '${ACTUAL VALUE}'=='${EXPECTED VALUE}'    Log Screenshot

Verify Pricing Exception Grid Status
    [Arguments]         ${LABEL NAME}
    ${ACTUAL VALUE} =       get label wise text         ${LABEL NAME}
    ${EXPECTED VALUE} =   Get From Dictionary     ${PRICING EXCEPTION GRID ROW DETAILS}      Status
    should be equal     ${ACTUAL VALUE}      ${EXPECTED VALUE}
    [Teardown]      run keyword unless     '${ACTUAL VALUE}'=='${EXPECTED VALUE}'    Log Screenshot

Verify Pricing Exception Grid Selling Destination
    [Arguments]         ${LABEL NAME}
    ${ACTUAL VALUE} =       get label wise text         ${LABEL NAME}
    ${EXPECTED VALUE} =   Get From Dictionary     ${PRICING EXCEPTION GRID ROW DETAILS}      Selling Destination
    should be equal     ${ACTUAL VALUE}      ${EXPECTED VALUE}
    [Teardown]      run keyword unless     '${ACTUAL VALUE}'=='${EXPECTED VALUE}'    Log Screenshot

Verify Get Pricing Exception Grid Right Table Details
    ${PRICING EXCEPTION GRID RIGHT TABLE DETAILS} =     get pricing exception grid right table details
    set suite variable      ${PRICING EXCEPTION GRID RIGHT TABLE DETAILS}
    log         ${PRICING EXCEPTION GRID RIGHT TABLE DETAILS}
    ${LENGTH} =     get length      ${PRICING EXCEPTION GRID RIGHT TABLE DETAILS}
    [Teardown]      run keyword if    '${LENGTH}'=='0'    Log Screenshot

Verify Pricing Exception Grid Trade Destination Category
    [Arguments]         ${LABEL NAME}
    ${ACTUAL VALUE} =       get label wise text         ${LABEL NAME}
    ${EXPECTED VALUE} =   Get From Dictionary     ${PRICING EXCEPTION GRID RIGHT TABLE DETAILS}      Trade Destination Category
    should be equal     ${ACTUAL VALUE}      ${EXPECTED VALUE}
    [Teardown]      run keyword unless     '${ACTUAL VALUE}'=='${EXPECTED VALUE}'    Log Screenshot

Verify Pricing Exception Grid Reference Price List
    [Arguments]         ${LABEL NAME}
    ${ACTUAL VALUE} =       get label wise text         ${LABEL NAME}
    ${EXPECTED VALUE} =   Get From Dictionary     ${PRICING EXCEPTION GRID RIGHT TABLE DETAILS}      Reference Price List
    should be equal     ${ACTUAL VALUE}      ${EXPECTED VALUE}
    [Teardown]      run keyword unless     '${ACTUAL VALUE}'=='${EXPECTED VALUE}'    Log Screenshot

Verify Pricing Exception Grid Currency
    [Arguments]         ${LABEL NAME}
    ${ACTUAL VALUE} =       get label wise text         ${LABEL NAME}
    ${EXPECTED VALUE} =   Get From Dictionary     ${PRICING EXCEPTION GRID RIGHT TABLE DETAILS}      Currency
    should be equal     ${ACTUAL VALUE}      ${EXPECTED VALUE}
    [Teardown]      run keyword unless     '${ACTUAL VALUE}'=='${EXPECTED VALUE}'    Log Screenshot

Verify Pricing Exception Grid Rate Type
    [Arguments]         ${LABEL NAME}
    ${ACTUAL VALUE} =       get label wise text         ${LABEL NAME}
    ${EXPECTED VALUE} =   Get From Dictionary     ${PRICING EXCEPTION GRID RIGHT TABLE DETAILS}      Rate Type
    should be equal     ${ACTUAL VALUE}      ${EXPECTED VALUE}
    [Teardown]      run keyword unless     '${ACTUAL VALUE}'=='${EXPECTED VALUE}'    Log Screenshot

Verify Pricing Exception Grid Approval Type
    [Arguments]         ${LABEL NAME}
    ${ACTUAL VALUE} =       get label wise text         ${LABEL NAME}
    ${EXPECTED VALUE} =   Get From Dictionary     ${PRICING EXCEPTION GRID RIGHT TABLE DETAILS}      Approval Type
    should be equal     ${ACTUAL VALUE}      ${EXPECTED VALUE}
    [Teardown]      run keyword unless     '${ACTUAL VALUE}'=='${EXPECTED VALUE}'    Log Screenshot

Verify Pricing Exception Grid Begin Date Test
    [Arguments]         ${LABEL NAME}
    ${ACTUAL VALUE} =       get label wise text         ${LABEL NAME}
    ${EXPECTED VALUE} =   Get From Dictionary     ${PRICING EXCEPTION GRID RIGHT TABLE DETAILS}      Begin Date Test
    should be equal     ${ACTUAL VALUE}      ${EXPECTED VALUE}
    [Teardown]      run keyword unless     '${ACTUAL VALUE}'=='${EXPECTED VALUE}'    Log Screenshot

Verify Pricing Exception Grid Requested Price
    [Arguments]         ${LABEL NAME}
    ${ACTUAL VALUE} =       get label wise text         ${LABEL NAME}
    ${EXPECTED VALUE} =   Get From Dictionary     ${PRICING EXCEPTION GRID RIGHT TABLE DETAILS}      Requested Price
    should be equal     ${ACTUAL VALUE}      ${EXPECTED VALUE}
    [Teardown]      run keyword unless     '${ACTUAL VALUE}'=='${EXPECTED VALUE}'    Log Screenshot

Verify Close Current Pop Up
    [Arguments]     ${POP UP NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     IXTrade.close current pop up        ${POP UP NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Exception History Pop Up Page Is Loaded Properly
    ${STATUS} =     set variable    False
    ${STATUS} =     is exception history pop up page loaded properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify switch To New Window
    ${STATUS} =     set variable    False
    ${STATUS} =     switch to ixtrade
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Route Guide With Sell Rates Page Is Loaded Properly
    ${STATUS} =     set variable    False
    ${STATUS} =     is route guide with sell rates page loaded properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Close Current Window
    ${STATUS} =     set variable    False
    ${STATUS} =     IXTrade.close current window
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Upload New Document Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click upload new document button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click On File Browse Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click on file browse button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set File Name
    [Arguments]     ${FILE NAME PREFIX}
    ${CREATED FILE NAME} =     set file name          ${FILE NAME PREFIX}
    set suite variable      ${CREATED FILE NAME}
    log     ${CREATED FILE NAME}
    should not be equal     ${CREATED FILE NAME}     'False'
    [Teardown]      run keyword if    '${CREATED FILE NAME}'=='False'    Log Screenshot

Verify Compare File Name
    ${STATUS} =     set variable    False
    ${STATUS} =     compare file name     ${CREATED FILE NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click On File Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click on file save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Status
    [Arguments]         @{STATUS ITEM LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     IXTrade.set status          @{STATUS ITEM LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Pricing Exception Grid First Row Checkbox
    ${STATUS} =     set variable    False
    ${STATUS} =     IXTrade.click pricing exception grid first row checkbox
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click On Copy Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click on copy button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Customers For Copy Price Exceptions
    [Arguments]     ${CREATED CUSTOMER NAME}
    ${STATUS} =     set variable    False
    @{CUSTOMER LIST FOR COPY PRICE EXCEPTIONS} =    create list     ${CREATED CUSTOMER NAME}
    ${STATUS} =     IXTrade.select customers for copy price exceptions     @{CUSTOMER LIST FOR COPY PRICE EXCEPTIONS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click On Copy Cpe Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click on copy cpe save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Buy Sell Deal Management Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click buy sell deal management submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Buy And Sell Deal Dropdown Is Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is buy and sell deal dropdown present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Status Dropdown Is Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is status dropdown present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Start Date Datepicker Is Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is start date datepicker present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify End Date Datepicker Is Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is end date datepicker present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Save Changes Button Is Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is save changes button present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Cancel Changes Button Is Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is cancel changes button present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Request New Buy And Sell Deal Button Is Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is request new buy and sell deal button present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Deal Bulk Edit Button Is Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is deal bulk edit button present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Update The XML File
    [Arguments]     ${UPLOAD FILE PATH}     ${VENDOR NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     update the xml file      ${UPLOAD FILE PATH}        ${VENDOR NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Upload Now Button Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is upload now button present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Update Offer Name Of The XML File
    [Arguments]     ${UPLOAD FILE PATH}     ${OFFER NAME PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     update offer name of the xml file      ${UPLOAD FILE PATH}        ${OFFER NAME PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Update Origingroup Name Of The XML File
    [Arguments]     ${UPLOAD FILE PATH}     ${ORIGINGROUP NAME PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     update origingroup name of the xml file      ${UPLOAD FILE PATH}        ${ORIGINGROUP NAME PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Update Origin Name Of The XML File
    [Arguments]     ${UPLOAD FILE PATH}     ${ORIGIN NAME PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     update origin name of the xml file      ${UPLOAD FILE PATH}        ${ORIGIN NAME PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Destinations From The XML File
    [Arguments]     ${UPLOAD FILE PATH}
    @{DESTINATIONS LIST} =     get destinations from the xml file       ${UPLOAD FILE PATH}
    return from keyword         @{DESTINATIONS LIST}

Verify Get Rates Value From The XML File
    [Arguments]     ${UPLOAD FILE PATH}
    @{RATES VALUE LIST} =     get rates value from the xml file     ${UPLOAD FILE PATH}
    return from keyword         @{RATES VALUE LIST}

Verify Click Vendor Offers Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click vendor offers submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Vendor Name For Search
    [Arguments]     ${VENDOR NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set vendor name for search          ${VENDOR NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Vendor Offers Go Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click vendor offers go button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Vendor Offer First Plus Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click vendor offer first plus button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Vendor Offer From Date For Search
    [Arguments]     ${FROM DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set vendor offer from date for search          ${FROM DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Vendor Offer First Dicon Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click vendor offer first dicon button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Vendor Offers Destination Go Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click vendor offers destination go button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Compare Destinations
    [Arguments]     @{DESTINATION LIST FROM XML}
    ${STATUS} =     set variable    False
    ${STATUS} =     compare destinations        @{DESTINATION LIST FROM XML}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Vendor Offer First Ricon Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click vendor offer first ricon button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Compare Rates
    [Arguments]     @{RATE LIST FROM XML}
    ${STATUS} =     set variable    False
    ${STATUS} =     compare rates        @{RATE LIST FROM XML}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Price Exception Management Screen Import Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click price exception management screen import button
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Price Exception Management Screen Export Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click price exception management screen export button
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click First Vendor Offer Link
    ${STATUS} =     set variable    False
    ${STATUS} =     click first vendor offer link
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Edit Analyzed Rates Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click edit analyzed rates button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Switch To Rate Analysis Frame
    ${STATUS} =     set variable    False
    ${STATUS} =     switch to rate analysis frame
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Rate Analysis View Filter Is Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is rate analysis view filter present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Rate Analysis Status Filter Is Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is rate analysis status filter present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Rate Analysis Discrepancy Filter Is Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is rate analysis discrepancy filter present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Rate Analysis In Routing Flag Filter Is Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is rate analysis in routing flag filter present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Rate Analysis Rate Filter Is Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is rate analysis rate filter present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Rate Analysis Destination Filter Is Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is rate analysis destination filter present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Close iXTrade Window
    ${STATUS} =     set variable    False
    ${STATUS} =     close ixtrade window
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Reference Price List management Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click reference price list management submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Approval Reject Wizard Button Is Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is approval reject wizard button present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Approval Reject Wizard Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click approval reject wizard button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The RPLM Approval Reject Wizard Page Is Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is rplm approval reject wizard page present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Start Date
    [Arguments]     ${START DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set start date      ${START DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Buy And Sell Deal Management Grid First Row Inline Action Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click buy and sell deal management grid first row inline action button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Total Deal Customer Volume Column Is Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is total deal customer volume column present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Buy And Sell Deal Management Inline Action Item
    [Arguments]     ${INLINE ACTION ITEM NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     select buy and sell deal management grid inline action item       ${INLINE ACTION ITEM NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Close IXTrade Window And Switch To Default Window
    ${STATUS} =     set variable    False
    ${STATUS} =     close ixtrade window      ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Move Available RPL To Destination
    ${STATUS} =     set variable    False
    ${STATUS} =     move available rpl to destination
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Move Available RPLM Country To Destination
    ${STATUS} =     set variable    False
    ${STATUS} =     move available rplm country to destination
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Total RPL Report Column Is Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is total rpl report column present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Approval Wizard Next Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click approval wizard next button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get All RPL List
    @{ALL RPL LIST} =     get all rpl list
    return from keyword         @{ALL RPL LIST}

Verify Ascending Sorted Data For RPL
    [Arguments]     @{LIST OF DATA}
    ${STATUS} =     set variable    False
    ${STATUS} =     compare sorted data for rpl        @{LIST OF DATA}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Start Date For RPL Approve Reject
    ${STATUS} =     set variable    False
    ${STATUS} =     set start date for rpl approve reject
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Prorer Date Columns Are Present
    ${STATUS} =     set variable    False
    ${STATUS} =     are proper date columns present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Filter Reference Price List Management Grid Column
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     filter reference price list management grid column        ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Specific Filter Option Is Present
    [Arguments]     ${LABEL NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is specific filter option present       ${LABEL NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Total RPL To Be Approved Is Matched
    ${STATUS} =     set variable    False
    ${STATUS} =     is total rpl to be approved matched
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Reference Price List Generation Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click reference price list generation submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Generate Record
    [Arguments]     ${RECORD NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set generate record         ${RECORD NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set IXTrade Generation Type
    [Arguments]     ${GENERATION TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set ixtrade generation type         ${GENERATION TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Move Available Reference Price List To Destination
    [Arguments]     @{LIST OF REFERENCE PRICE LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     move available reference price list to destination          @{LIST OF REFERENCE PRICE LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Move Available RPL Destination To Destination
    [Arguments]     @{DESTINATION LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     move available rpl destination to destination          @{DESTINATION LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click IXTrade Generate Reference Price Lists Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click ixtrade generate reference price lists button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Destination Resolved Correctly
    ${STATUS} =     set variable    False
    ${STATUS} =     is destination resolved correctly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Action
    [Arguments]     ${ACTION}
    ${STATUS} =     set variable    False
    ${STATUS} =     set action      ${ACTION}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Action Dropdown Is Displayed
    ${STATUS} =     set variable    False
    ${STATUS} =     is action dropdown displayed
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Future Action Dropdown Is Displayed
    ${STATUS} =     set variable    False
    ${STATUS} =     is future action dropdown displayed
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Action Dropdown Has Proper Options
    ${STATUS} =     set variable    False
    ${STATUS} =     does action dropdown has proper option
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Future Action Dropdown Is Enable
    ${STATUS} =     set variable    False
    ${STATUS} =     is future action dropdown enable
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Future Action Dropdown Is Disable
    ${STATUS} =     set variable    True
    ${STATUS} =     is future action dropdown enable
    should not be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='True'    Log Screenshot

Verify Apply Custom Rules Is Enable
    ${STATUS} =     set variable    False
    ${STATUS} =     is apply custom rules enable
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Apply Custom Rules Is Disable
    ${STATUS} =     set variable    True
    ${STATUS} =     is apply custom rules enable
    should not be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='True'    Log Screenshot

Verify Record Date Range Start Date Is Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is record date range start date present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Record Date Range End Date Is Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is record date range end date present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Start Date And End Date Range Does Not Exceed 31 Days
    ${STATUS} =     set variable    False
    ${STATUS} =     verify start and end date range does not exceed 31 days
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Customer Offers Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click customer offers submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Customer Offer First DDicon Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click customer offer first ddicon button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Uploaded Dialed Digit Information Is Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is uploaded dialed digit information displayed
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Reference Price List For Search
    [Arguments]         ${REFERENCE PRICE LIST}
    @{LIST OF REFERENCE PRICE LIST} =       create list         ${REFERENCE PRICE LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     IXTrade.set reference price list for search          @{LIST OF REFERENCE PRICE LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Compare Specifie Column First Row Value Of RPLM Left Grid
    [Arguments]         ${COLUMN NAME}      ${EXPECTED VALUE}
    ${ACTUAL VALUE FROM GRID} =      get specific column first row value from rplm left grid      ${COLUMN NAME}
    log         ${ACTUAL VALUE FROM GRID}
    should be equal     ${ACTUAL VALUE FROM GRID}      ${EXPECTED VALUE}
    [Teardown]      run keyword unless     '${ACTUAL VALUE FROM GRID}}'=='${EXPECTED VALUE}'    Log Screenshot

Verify Click RPLM Grid First Row Checkbox
    ${STATUS} =     set variable    False
    ${STATUS} =     IXTrade.click rplm grid first row checkbox
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Bulk Edit Button
    ${STATUS} =     set variable    False
    ${STATUS} =     IXTrade.click bulk edit button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Status For Bulk Edit
    [Arguments]         ${BULK EDIT STATUS}
    ${STATUS} =     set variable    False
    ${STATUS} =     set status for bulk edit        ${BULK EDIT STATUS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set End Date For Bulk Edit
    ${END DATE} =     set end date for bulk edit
    set suite variable         ${END DATE}
    log         ${END DATE}
    should not be equal         ${END DATE}         ''
    [Teardown]      run keyword if    '${STATUS}'==''    Log Screenshot

Compare Specifie Column First Row Value Of RPLM Right Grid
    [Arguments]         ${COLUMN NAME}
    ${ACTUAL VALUE FROM GRID} =      get specific column first row value from rplm right grid     ${COLUMN NAME}
    should be equal     ${ACTUAL VALUE FROM GRID}      ${END DATE}
    [Teardown]      run keyword unless     '${ACTUAL VALUE FROM GRID}'=='${END DATE}'    Log Screenshot

Verify Click Bulk Edit Submit Button
    ${STATUS} =     set variable    False
    ${STATUS} =     IXTrade.click bulk edit submit button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Target Buy List Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click target buy list submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Target Buy List Calculate Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click target buy list calculate button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Cost Forecast Job Initialization Message is Shown
    ${STATUS} =     set variable    False
    ${STATUS} =     is cost forecast job initialization message shown
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Target Buy List Generation Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click target buy list generation submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Expected Button is Present in Target Buy List Generation Screen
    [Arguments]     ${BUTTON}
    ${STATUS} =     set variable    False
    ${STATUS} =     is target buy list generation screen button present         ${BUTTON}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Expected Dropdown List Control is Present in Target Buy List Generation Screen
    [Arguments]     ${LIST CONTROL}
    ${STATUS} =     set variable    False
    ${STATUS} =     is target buy list generation screen list control present         ${LIST CONTROL}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Published Date Datepicker is Visible
    ${STATUS} =     set variable    False
    ${STATUS} =     is published date datepicker visible
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Vendors Selector List Box is Visible
    ${STATUS} =     set variable    False
    ${STATUS} =     is vendors selector list box visible
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Selected Vendors List Box is Visible
    ${STATUS} =     set variable    False
    ${STATUS} =     is selected vendors list box visible
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Country Selector List Box is Visible
    ${STATUS} =     set variable    False
    ${STATUS} =     is country selector list box visible
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Selected Country List Box is Visible
    ${STATUS} =     set variable    False
    ${STATUS} =     is selected country list box visible
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Buy And Sell Deal Management Grid Column Diplays Thousand Separators
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     IXTrade.verify deal management grid column display thousand separators      ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify RPLM Screen Filter Option Is Present
    [Arguments]     ${FILTER OPTION NAME}       ${IS DROPDOWN}=${TRUE}
    ${STATUS} =     set variable    False
    ${STATUS} =     is rplm screen filter option present        ${FILTER OPTION NAME}       ${IS DROPDOWN}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify RPLM Screen Button Is Present
    [Arguments]     ${BUTTON NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is rplm screen button present       ${BUTTON NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Apply Custom Rules Radio Button Is Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is apply custom rules radio button present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click RPL Report Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click rpl Report button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify RPL Report Price List Tab Is Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is rpl report price list tab present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify RPL Report Impact Tab Is Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is rpl report impact tab present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Rpl Report Impact Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select rpl report impact tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify RPL Report Price List Grid Column Is Present
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is rpl report price list grid column present    ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify RPL Report Impact Grid Column Is Present
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is rpl report impact grid column present    ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Save Changes Button
    ${STATUS} =     set variable    False
    ${STATUS} =     IXTrade.click save changes button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Note
    [Arguments]     ${NOTE PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     IXTrade.set note        ${NOTE PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Apply Custom Rules Radio Button
    [Arguments]     ${RADIO BUTTON VALUE}
    ${STATUS} =     set variable    False
    ${STATUS} =     select apply custom rules radio button      ${RADIO BUTTON VALUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Service Level Base CPL Customer Definition Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click service level based cpl customer definition submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Service Level Customer Definition Grid Column Is Present
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is service level customer definition grid column present        ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Service-Level Based CPLs Drop Down Displays Correct Options
    ${STATUS} =     set variable    False
    ${STATUS} =     does service level based cpls dropdown display correct options
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Refresh iXTrade Window
    ${STATUS} =     set variable    False
    ${STATUS} =     refresh window
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Customer Pricing Exception Management Go Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click customer pricing exception management go button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Customer Pricing Exception Management Export Import Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click customer pricing exception management export import button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Is Export Import Requested Exception For Customer Pricing Exceptions Window Opened
    ${STATUS} =     set variable    False
    ${STATUS} =     is export import requested exception for customer pricing exceptions window opened
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Close Export Import Requested Exception For Customer Pricing Exceptions Window
    ${STATUS} =     set variable    False
    ${STATUS} =     close export import requested exception for customer pricing exceptions window
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click To Expand Specific Bar In Customer Routing Role Definition Screen
    [Arguments]     ${BAR NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     click to expand specific bar in customer routing role definition screen     ${BAR NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Check First Rounding Rule Checkbox
    ${STATUS} =     set variable    False
    ${STATUS} =     check first rounding rule checkbox
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Rounding Rules Definition Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click rounding rules definition save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Filter Country Definition
    [Arguments]     ${COUNTRY NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     filter country definition       ${COUNTRY NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Check First Country Definition Checkbox
    ${STATUS} =     set variable    False
    ${STATUS} =     check first country definition checkbox
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Country Definition Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click country definition save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Rate Dimension Template
    ${STATUS} =     set variable    False
    ${STATUS} =     set rate dimension template
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Rate Dimension Template Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click rate dimension template save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Filter Customer Source
    [Arguments]     ${CUSTOMER SOURCE NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     filter customer source       ${CUSTOMER SOURCE NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Rounding Rule To Customer Source
    ${STATUS} =     set variable    False
    ${STATUS} =     set rounding rule to customer source
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Customer Source Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click customer source save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click CPEM Grid Bulk Edit Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click cpem grid bulk edit button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Requested Price For Bulk Edit
    [Arguments]     ${REQUESTED PRICE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set requested price for bulk edit       ${REQUESTED PRICE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click CPEM Grid CPE Report Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click cpem grid cpe report button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify CPE Report Page Is Loaded Properly
    ${STATUS} =     set variable    False
    ${STATUS} =     is cpe report page loaded properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Data Is Displayed In CPE Grid
    ${STATUS} =     set variable    False
    ${STATUS} =     is data displayed in cpe grid
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Left Side Specific Column Is Present In CPE Grid
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is left side specific column present in cpe grid       ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Current Status
    [Arguments]     ${CURRENT STATUS}
    ${STATUS} =     set variable    False
    ${STATUS} =     set current status      ${CURRENT STATUS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Generate Offer File Link Is Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is generate offer file link present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Customer Offer Generation Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click customer offer generation submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Mypricelist In IXTrade
    [Arguments]     ${MYPRICELIST NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set mypricelist in ixtrade      ${MYPRICELIST NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Mypricelist Generate Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click mypricelist generate button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Specific Column First Row Value From CPEM Right Grid
    [Arguments]     ${COLUMN NAME}
    ${COLUMN VALUE} =     get specific column first row value from cpem right grid    ${COLUMN NAME}
    log  ${COLUMN VALUE}
    return from keyword     ${COLUMN VALUE}

Verify Percentage Margin Column Is Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is percentage margin column present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Sort Percentage Margin Column In Descending Order
    ${STATUS} =     set variable    False
    ${STATUS} =     sort percentage margin column in descending order
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Percentage Margin Column Value Is Displayed Correctly
    [Arguments]     ${MARGIN MINIMUM TEST}      ${APPROVED PRICE}       ${PERCENTAGE MARGIN}
    ${STATUS} =     set variable    False
    ${STATUS} =     is percentage margin column value displayed correctly       ${MARGIN MINIMUM TEST}      ${APPROVED PRICE}       ${PERCENTAGE MARGIN}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Offer Template Management Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click offer template management submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Offer Template Management Page Is Loaded Properly
    ${STATUS} =     set variable    False
    ${STATUS} =     is offer template management page loaded properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Offer Template Management Filter Option Is Worked Properly
    ${STATUS} =     set variable    False
    ${STATUS} =     is offer template management filter option worked properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click First Offer Template
    ${STATUS} =     set variable    False
    ${STATUS} =     click first offer template
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Company Field Is Available In Detail Frame
    ${STATUS} =     set variable    False
    ${STATUS} =     is company field present in detail frame
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Offer Template Management Edit Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click offer template management edit button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Company Field Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is company field present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Offer Template Definition Cancel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click offer template definition cancel
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click New Offer Template Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click new offer template button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Vendor Offer Upload Fail Message Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is vendor offer upload fail message present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Select Order Column Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click select order column button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Check Margin Percentage Checkbox
    ${STATUS} =     set variable    False
    ${STATUS} =     check margin percentage checkbox
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Is Margin Percentage Checkbox Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is margin percentage checkbox present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Is Margin Percentage Column Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is margin percentage column present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Customer Pricing Exception Entry Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click customer pricing exception entry submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set CPEE Status
    [Arguments]     ${CPEE STATUS}
    ${STATUS} =     set variable    False
    ${STATUS} =     set cpee status     ${CPEE STATUS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Customer Pricing Exception Management Go Button With Validatation
    ${STATUS} =     set variable    False
    ${STATUS} =     click customer pricing exception management go button with validation
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot
