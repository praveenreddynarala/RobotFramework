*** Settings ***
Documentation   IXReport Page Resource File With All Necessary Keywords

Resource        ../../common_resource.robot

Library         ../../../../TestFramework/Libraries/RobotTests/Home.py
Library         ../../../../TestFramework/Libraries/RobotTests/Legacy/IXReport.py

*** Variables ***
${DEFAUL DAYS TO ADD}       7

*** Keywords ***
Verify Switch To IXReport
    ${STATUS} =     set variable    False
    select report submenu
    ${STATUS} =     switch to ixreport
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Expand Reports Section
    [Arguments]     ${REPORTS SECTION NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     expand reports section      ${REPORTS SECTION NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Sub Report Item
    [Arguments]     ${SUB REPORT ITEM NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     click sub report item       ${SUB REPORT ITEM NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Selected Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE} =     get selected date
    log     ${ACTUAL DATE}
    ${STATUS} =     validate date format       ${ACTUAL DATE}       ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Begin Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE} =     get begin date
    log     ${ACTUAL DATE}
    ${STATUS} =     validate date format       ${ACTUAL DATE}       ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify End Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE} =     get end date
    log     ${ACTUAL DATE}
    ${STATUS} =     validate date format       ${ACTUAL DATE}       ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Begin Date Format With Lower Case d
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE} =     get begin date     ${True}
    log     ${ACTUAL DATE}
    ${STATUS} =     validate date format       ${ACTUAL DATE}       ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify End Date Format With Lower Case d
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE} =     get end date       ${True}
    log     ${ACTUAL DATE}
    ${STATUS} =     validate date format       ${ACTUAL DATE}       ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Effective Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE} =     get effective date
    log     ${ACTUAL DATE}
    ${STATUS} =     validate date format       ${ACTUAL DATE}       ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify From Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE} =     get from date
    log     ${ACTUAL DATE}
    ${STATUS} =     validate date format       ${ACTUAL DATE}       ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify To Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE} =     get to date
    log     ${ACTUAL DATE}
    ${STATUS} =     validate date format       ${ACTUAL DATE}       ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Date Value Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE} =     get date value
    log     ${ACTUAL DATE}
    ${STATUS} =     validate date format       ${ACTUAL DATE}       ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify From Processing Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE} =     get from processing date
    log     ${ACTUAL DATE}
    ${STATUS} =     validate date format       ${ACTUAL DATE}       ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify To Processing Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE} =     get to processing date
    log     ${ACTUAL DATE}
    ${STATUS} =     validate date format       ${ACTUAL DATE}       ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Close IxReport Window
    [Arguments]     ${DEFAULT WINDOW}=${FALSE}
    ${STATUS} =     set variable    False
    ${STATUS} =     close ixreport window       ${DEFAULT WINDOW}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE} =     get select date
    log     ${ACTUAL DATE}
    ${STATUS} =     validate date format       ${ACTUAL DATE}       ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Usage From Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE} =     get usage from date
    log     ${ACTUAL DATE}
    ${STATUS} =     validate date format       ${ACTUAL DATE}       ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Usage To Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE} =     get usage to date
    log     ${ACTUAL DATE}
    ${STATUS} =     validate date format       ${ACTUAL DATE}       ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Created Date From Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE} =     get created date from
    log     ${ACTUAL DATE}
    ${STATUS} =     validate date format       ${ACTUAL DATE}       ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Created Date To Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE} =     get created date to
    log     ${ACTUAL DATE}
    ${STATUS} =     validate date format       ${ACTUAL DATE}       ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify From Call Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE} =     get from call date
    log     ${ACTUAL DATE}
    ${STATUS} =     validate date format       ${ACTUAL DATE}       ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify To Call Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE} =     get to call date
    log     ${ACTUAL DATE}
    ${STATUS} =     validate date format       ${ACTUAL DATE}       ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Submit Button
    ${STATUS} =     set variable    False
    ${STATUS} =     IXReport.click submit button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Specific Column Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}     ${COLUMN NAME}
    ${ACTUAL DATE} =     get specific column value from reports         ${COLUMN NAME}
    log     ${ACTUAL DATE}
    ${STATUS} =     validate date format       ${ACTUAL DATE}       ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Specific Column Currency Format
    [Arguments]     ${EXPECTED CURRRENCY FORMAT}     ${COLUMN NAME}
    ${ACTUAL CURRENCY} =     get specific column value from reports         ${COLUMN NAME}
    log     ${ACTUAL CURRENCY}
    ${STATUS} =     validate currency format        ${ACTUAL CURRENCY}       ${EXPECTED CURRRENCY FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Report's Begin Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE} =     get begin date text
    log     ${ACTUAL DATE}
    ${STATUS} =     validate date format       ${ACTUAL DATE}       ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Report's End Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE} =     get end date text
    log     ${ACTUAL DATE}
    ${STATUS} =     validate date format       ${ACTUAL DATE}       ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Report's Effective Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE} =     get effective date text
    log     ${ACTUAL DATE}
    ${STATUS} =     validate date format       ${ACTUAL DATE}       ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Report's From Processing Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE} =     get from processing date text
    log     ${ACTUAL DATE}
    ${STATUS} =     validate date format       ${ACTUAL DATE}       ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Report's To Processing Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE} =     get to processing date text
    log     ${ACTUAL DATE}
    ${STATUS} =     validate date format       ${ACTUAL DATE}       ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Begin Date
    [Arguments]     ${BEGIN DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     IXReport.set begin date      ${BEGIN DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Current Date as Begin Date
    ${STATUS} =     set variable    False
    ${STATUS} =     set begin date      ${EMPTY}    ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Future Date as Begin Date
    [Arguments]     ${NUMBER OF DAYS TO ADD}=${DEFAUL DAYS TO ADD}
    ${STATUS} =     set variable    False
    ${STATUS} =     IXReport.set begin date      ${EMPTY}    ${FALSE}    ${TRUE}    ${FALSE}    ${FALSE}    ${NUMBER OF DAYS TO ADD}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Past Date as Begin Date
    ${STATUS} =     set variable    False
    ${STATUS} =     IXReport.set begin date      ${EMPTY}    ${FALSE}    ${FALSE}    ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Report Preview Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click report preview button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Report Export To Excel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click report export to excel button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Report Export To Csv Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click report export to csv button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Report Export To Pdf Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click report export to pdf button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify End Date Column Is Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is end date column present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Begin Date Greater Than End Date Warning Message Is Shown
    ${STATUS} =     set variable    False
    ${STATUS} =     is begin date greater than end date warning message shown
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Empty Orig Point Code Records Are Shown
    ${STATUS} =     set variable    False
    ${STATUS} =     is empty orig point code records are shown
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Account Rate Plan Selection Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click account rate plan selection button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Move One Available Rate Plan to Assigned
    ${STATUS} =     set variable    False
    ${STATUS} =     move available rate plan to assigned
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Move Multiple Available Rate Plan to Assigned
    ${STATUS} =     set variable    False
    ${STATUS} =     move available rate plan to assigned        ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Account Rate Plan Selection Submit Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click account rate plan selection submit button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Currency Selection Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click currency selection button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select First Currency
    ${STATUS} =     set variable    False
    ${STATUS} =     select first currency
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click First Row Error Type
    ${STATUS} =     set variable    False
    ${STATUS} =     click first row error type
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Expand Layer First Row
    ${STATUS} =     set variable    False
    ${STATUS} =     expand layer first row
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Switch To Level2 Detail Frame
    ${STATUS} =     set variable    False
    ${STATUS} =     switch to level2 detail frame
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Switch To Level3 Detail Frame
    ${STATUS} =     set variable    False
    ${STATUS} =     switch to level3 detail frame
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Switch To Level4 Detail Frame
    ${STATUS} =     set variable    False
    ${STATUS} =     switch to level4 detail frame
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify CDR Error Report Table Column Names
    [Arguments]     @{COLUMN NAME LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     verify column names of cdr error report table       @{COLUMN NAME LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify CDR Error Report Layer 2 Table Column Names
    [Arguments]     @{COLUMN NAME LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     verify column names of cdr error report layer 2 table       @{COLUMN NAME LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify CDR Error Report Layer 3 Table Column Names
    [Arguments]     @{COLUMN NAME LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     verify column names of cdr error report layer 3 table       @{COLUMN NAME LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Title Of Layer 5 Report
    [Arguments]     ${EXPECTED TITLE}
    ${STATUS} =     set variable    False
    ${STATUS} =     verify layer 5 report title     ${EXPECTED TITLE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Report Preview Button If Expand Successful
    ${STATUS} =     set variable    False
    ${STATUS} =     click report preview button if expand successful
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Report Export To Excel Button If Expand Successful
    ${STATUS} =     set variable    False
    ${STATUS} =     click report export to excel button if expand successful
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Report Export To Csv Button If Expand Successful
    ${STATUS} =     set variable    False
    ${STATUS} =     click report export to csv button if expand successful
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Report Export To Pdf Button If Expand Successful
    ${STATUS} =     set variable    False
    ${STATUS} =     click report export to pdf button if expand successful
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Charts Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select charts tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Tabular Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select tabular tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Report Preview Button Without Print Pop Up
    ${STATUS} =     set variable    False
    ${STATUS} =     click report preview button         ${FALSE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Past Date As Begin Date With Lower Case d
    ${STATUS} =     set variable    False
    ${STATUS} =     set begin date      ${EMPTY}    ${FALSE}    ${FALSE}    ${TRUE}     ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Save My Report Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click save my report button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set My Report Title
    [Arguments]     ${TITLE PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set my report title     ${TITLE PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click My Report Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click my report save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click On Demand Extract Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click on demand extract button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Begin Date With Lower Case d
    [Arguments]     ${BEGIN DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set begin date      ${BEGIN DATE}    ${FALSE}    ${FALSE}    ${FALSE}     ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set First Level Summarize By
    [Arguments]     ${SUMMARIZE OPTION}
    ${STATUS} =     set variable    False
    ${STATUS} =     set first level summarize by        ${SUMMARIZE OPTION}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Second Level Summarize By
    [Arguments]     ${SUMMARIZE OPTION}
    ${STATUS} =     set variable    False
    ${STATUS} =     set second level summarize by        ${SUMMARIZE OPTION}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Third Level Summarize By
    [Arguments]     ${SUMMARIZE OPTION}
    ${STATUS} =     set variable    False
    ${STATUS} =     set third level summarize by        ${SUMMARIZE OPTION}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Expand First Layer First Row
    ${STATUS} =     set variable    False
    ${STATUS} =     expand first layer first row
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Expand Second Layer First Row
    ${STATUS} =     set variable    False
    ${STATUS} =     expand second layer first row
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Reference Set Browse Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click reference set browse button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Comparis Set 1 Browse Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click comparison set 1 browse button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Number Plan Type
    [Arguments]     ${NUMBER PLAN TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set number plan type    ${NUMBER PLAN TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Go Button
    ${STATUS} =     set variable    False
    ${STATUS} =     IXReport.click go button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Row From Look Up Table
    [Arguments]     ${ROW TEXT}
    ${STATUS} =     set variable    False
    ${STATUS} =     select row from look up table       ${ROW TEXT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Country Country Code Browse Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click country country code browse button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get First Row Account Name
    ${ACCOUNT NAME} =     get first row account name
    log       ${ACCOUNT NAME}
    return from keyword         ${ACCOUNT NAME}
    [Teardown]      run keyword if    '${ACCOUNT NAME}'==''    Log Screenshot

Verify Get First Row Rate Plan
    ${RATE PLAN} =     get first row rate plan
    log       ${RATE PLAN}
    return from keyword         ${RATE PLAN}
    [Teardown]      run keyword if    '${RATE PLAN}'==''    Log Screenshot

Verify Set Report Trunk Name
    [Arguments]     ${TRUNK NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set report trunk name      ${TRUNK NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify First Row Transmission Type
    [Arguments]     ${TRANSMISSION TYPE}
    ${ACTUAL TRANSMISSION TYPE} =     get first row transmission type
    log       ${ACTUAL TRANSMISSION TYPE}
    should be equal     '${ACTUAL TRANSMISSION TYPE}'     '${TRANSMISSION TYPE}'
    [Teardown]      run keyword unless      '${TRANSMISSION TYPE}'=='${ACTUAL TRANSMISSION TYPE}'       Log Screenshot

Verify Click Account Browse Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click account browse button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set First Letters
    [Arguments]     ${FIRST LETTERS}
    ${STATUS} =     set variable    False
    ${STATUS} =     set first letters       ${FIRST LETTERS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Extracts Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     select extracts submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Extract List New Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click extract list new button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Specific Extract name From List
    [Arguments]     ${EXTRACT NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     click specific extract name from list       ${EXTRACT NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Extract Country
    [Arguments]     ${COUNTRY NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set extract country       ${COUNTRY NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Extract Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click extract save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Extract Title
    [Arguments]     ${TITLE PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set extract title       ${TITLE PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Extract Relative Period
    [Arguments]     ${RELATIVE PERIOD}
    ${STATUS} =     set variable    False
    ${STATUS} =     set extract relative period     ${RELATIVE PERIOD}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Created Extract Name
    ${EXTRACT NAME} =     get created extract name
    log       ${EXTRACT NAME}
    return from keyword         ${EXTRACT NAME}

Verify Click Specific Add Button
    [Arguments]     ${CREATED EXTRACT NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     click specific add button       ${CREATED EXTRACT NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Extract Next Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click extract next button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Extract Schedule Name
    [Arguments]     ${NAME PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set extract schedule name       ${NAME PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Extract Active Time
    ${STATUS} =     set variable    False
    ${STATUS} =     set extract active time
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Extract Active Date
    [Arguments]     ${RELATIVE PERIOD}
    ${STATUS} =     set variable    False
    ${STATUS} =     set extract active date     ${RELATIVE PERIOD}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Extract Schedule Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click extract schedule save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Extract Generation Is Present
    [Arguments]     ${CREATED EXTRACT NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is extract generation present       ${CREATED EXTRACT NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Completed Extract Status Is Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is completed extract status present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Report Page Exit Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click report page exit button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Current Date as Offers From Date
    ${STATUS} =     set variable    False
    ${STATUS} =     set offers from date        ${EMPTY}    ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Future Date as Offers From Date
    ${STATUS} =     set variable    False
    ${STATUS} =     set offers from date        ${EMPTY}    ${FALSE}    ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Submit Button And Verify Error Message
    [Arguments]     ${ERROR MESSAGE}
    ${STATUS} =     set variable    False
    ${STATUS} =     click submit button and verify error message    ${ERROR MESSAGE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Vendor Massive Lookup Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click vendors massive lookup button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Move More Than Ten Vendors To Assign
    ${STATUS} =     set variable    False
    ${STATUS} =     move more than ten vendors to assign
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Vendor Lookup Submit Button And Verify Error Message
    ${STATUS} =     set variable    False
    ${STATUS} =     click vendor lookup submit button and verify error message
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Move Selected Vendors To Available
    ${STATUS} =     set variable    False
    ${STATUS} =     move selected vendors to available
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Vendor Lookup First Letter
    [Arguments]     ${VENDOR NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set vendor lookup first letter    ${VENDOR NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Vendor Lookup Go Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click vendor lookup go button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Move Vendor To Assigned
    ${STATUS} =     set variable    False
    ${STATUS} =     move vendor to assigned
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Vendor Lookup Submit Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click vendor lookup submit button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click First Row Vendor Name
    ${STATUS} =     set variable    False
    ${STATUS} =     click first row vendor name
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Reference Rates Analysis Report Table Column Names
    [Arguments]     @{COLUMN NAME LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     verify column names of reference rates analysis report table      @{COLUMN NAME LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Reference Rates Analysis Report Layer 2 Table Column Names
    [Arguments]     @{COLUMN NAME LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     verify column names of reference rates analysis report layer 2 table       @{COLUMN NAME LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Completed Extract Delivery Status Is Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is completed extract delivery status present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Extract Delivery Is Present
    [Arguments]     ${CREATED EXTRACT NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is extract delivery present       ${CREATED EXTRACT NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Process Status
    [Arguments]     ${STATUS NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set process status     ${STATUS NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Compare Process Status
    [Arguments]     ${STATUS NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     compare process status      ${STATUS NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set User Defined Date As Begin Date With Lower Case d
    [Arguments]     ${BEGIN DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set begin date      ${BEGIN DATE}    ${FALSE}    ${FALSE}    ${TRUE}     ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Compare Process Status On Table
    [Arguments]     ${STATUS NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     compare process status on table      ${STATUS NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Account Type
    [Arguments]     ${ACCOUNT TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     IXReport.set account type    ${ACCOUNT TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Report Page Is Available For Selected Account Type
    [Arguments]     ${ACCOUNT TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     is report page present for selected account type        ${ACCOUNT TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Fourth Level Summarize By
    [Arguments]     ${SUMMARIZE OPTION}
    ${STATUS} =     set variable    False
    ${STATUS} =     set fourth level summarize by        ${SUMMARIZE OPTION}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Fifth Level Summarize By
    [Arguments]     ${SUMMARIZE OPTION}
    ${STATUS} =     set variable    False
    ${STATUS} =     set fifth level summarize by        ${SUMMARIZE OPTION}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Begin Month
    ${STATUS} =     set variable    False
    ${STATUS} =     set begin month
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Submit Button With ID
    ${STATUS} =     set variable    False
    ${STATUS} =     click submit button with id
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click New Save My Report Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click new save my report button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Standard Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select standard tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify PPM Is Calculated Correctly
    ${STATUS} =     set variable    False
    ${STATUS} =     is ppm calculated correctly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Extract Go Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click extract go button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Report Group
    [Arguments]     ${REPORT GROUP}
    ${STATUS} =     set variable    False
    ${STATUS} =     set report group    ${REPORT GROUP}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Report
    [Arguments]     ${REPORT}
    ${STATUS} =     set variable    False
    ${STATUS} =     set report    ${REPORT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get My Report Title
    ${REPORT TITLE} =     get my report title
    log       ${REPORT TITLE}
    return from keyword         ${REPORT TITLE}
    [Teardown]      run keyword if    '${REPORT TITLE}'==''    Log Screenshot

Verify Expand Sub Report Item
    [Arguments]     ${SUB REPORT NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     expand sub report item      ${SUB REPORT NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click My Report Name
    [Arguments]     ${REPORT NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     click my report name    ${REPORT NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click My Report Submit Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click my report submit button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Expand MOR Later First Row
    ${STATUS} =     set variable    False
    ${STATUS} =     expand mor layer first row
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Switch To Level N Detail Frame
    ${STATUS} =     set variable    False
    ${STATUS} =     switch to level n detail frame
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Sub Report Item Is Present
    [Arguments]     ${SUBREPORT ITEM NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is sub report item present       ${SUBREPORT ITEM NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Sub Report Item Is Not Present
    [Arguments]     ${SUBREPORT ITEM NAME}
    ${STATUS} =     set variable    True
    ${STATUS} =     is sub report item present       ${SUBREPORT ITEM NAME}
    should not be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='True'    Log Screenshot

Verify Set Select Date
    [Arguments]     ${SELECT DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     IXReport.set select date      ${SELECT DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Service
    [Arguments]     ${SERVICE}
    ${STATUS} =     set variable    False
    ${STATUS} =     IXReport.set service    ${SERVICE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get First Row Rate Dimension Template
    ${RATE DIMENSION TEMPLATE} =     get first row rate dimension template
    log       ${RATE DIMENSION TEMPLATE}
    return from keyword         ${RATE DIMENSION TEMPLATE}
    [Teardown]      run keyword if    '${RATE DIMENSION TEMPLATE}'==''    Log Screenshot

Verify Click Rate Dimension Template Browse Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click rate dimension template browse button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Second Row Account Name
    ${ACCOUNT NAME} =     get second row account name
    log       ${ACCOUNT NAME}
    return from keyword         ${ACCOUNT NAME}
    [Teardown]      run keyword if    '${ACCOUNT NAME}'==''    Log Screenshot

Verify Get Second Row Parent Account Name
    ${ACCOUNT NAME} =     get second row parent account name
    log       ${ACCOUNT NAME}
    return from keyword         ${ACCOUNT NAME}
    [Teardown]      run keyword if    '${ACCOUNT NAME}'==''    Log Screenshot

Verify Click Parent Account Browse Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click parent account browse button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Switch To Detail Frame
    ${STATUS} =     set variable    False
    ${STATUS} =     switch to detail frame
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Switch To Default Content
    ${STATUS} =     set variable    False
    ${STATUS} =     switch to default content
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify First Row Product Catalog
    [Arguments]     ${EXPECTED PRODUCT CATALOG}
    ${ACTUAL PRODUCT CATALOG} =     get first row product catalog
    should be equal     ${EXPECTED PRODUCT CATALOG}     ${ACTUAL PRODUCT CATALOG}
    [Teardown]      run keyword unless    '${EXPECTED PRODUCT CATALOG}'=='${ACTUAL PRODUCT CATALOG}'    Log Screenshot

Verify Click Number Plan Browse Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click number plan browse button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Product Catalog
    [Arguments]     ${PRODUCT CATALOG}
    ${STATUS} =     set variable    False
    ${STATUS} =     set product catalog    ${PRODUCT CATALOG}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select First Row From Look Up Table
    ${STATUS} =     set variable    False
    ${STATUS} =     select row from look up table       ${EMPTY}    ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get First Row Tariff Type
    ${TARIFF TYPE} =     get first row tariff type
    log       ${TARIFF TYPE}
    return from keyword         ${TARIFF TYPE}
    [Teardown]      run keyword if    '${TARIFF TYPE}'==''    Log Screenshot

Verify Set Tariff Type
    [Arguments]     ${TARIFF TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set tariff type     ${TARIFF TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get First Row Routing Product
    ${ROUTING PRODUCT} =     get first row routing product
    log       ${ROUTING PRODUCT}
    return from keyword         ${ROUTING PRODUCT}
    [Teardown]      run keyword if    '${ROUTING PRODUCT}'==''    Log Screenshot

Verify Click Routing Product Browse Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click routing product browse button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set From Processing Date
    [Arguments]     ${FROM PROCESSING DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set from processing date    ${FROM PROCESSING DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Future Date As From Processing Date
    ${STATUS} =     set variable    False
    ${STATUS} =     set from processing date    ${EMPTY}    ${FALSE}    ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Switch
    [Arguments]     ${SWITCH}
    ${STATUS} =     set variable    False
    ${STATUS} =     set switch    ${SWITCH}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Status
    [Arguments]     ${STATUS OPTION}
    ${STATUS} =     set variable    False
    ${STATUS} =     set status      ${STATUS OPTION}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Profile
    [Arguments]     ${PROFILE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set profile     ${PROFILE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Report First Row Status
    [Arguments]     ${EXPECTED STATUS}
    ${ACTUAL STATUS} =     get first row status
    should be equal     ${EXPECTED STATUS}     ${ACTUAL STATUS}
    [Teardown]      run keyword unless    '${EXPECTED STATUS}'=='${ACTUAL STATUS}'    Log Screenshot

Verify Get Second Row Contract Name
    ${CONTRACT NAME} =     get second row contract name
    log       ${CONTRACT NAME}
    return from keyword         ${CONTRACT NAME}
    [Teardown]      run keyword if    '${CONTRACT NAME}'==''    Log Screenshot

Verify Click Contract Browse Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click contract browse button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Contract Version Browse Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click contract version browse button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Saved Contract Name
    ${CONTRACT NAME} =     get saved contract name
    log       ${CONTRACT NAME}
    return from keyword         ${CONTRACT NAME}
    [Teardown]      run keyword if    '${CONTRACT NAME}'==''    Log Screenshot

Verify Get Saved Account Name
    ${ACCOUNT NAME} =     get saved account name
    log       ${ACCOUNT NAME}
    return from keyword         ${ACCOUNT NAME}
    [Teardown]      run keyword if    '${ACCOUNT NAME}'==''    Log Screenshot

Verify Click Country Browse Button
    [Arguments]     ${IS DETAILS EXTRACT FRAME}=${False}
    ${STATUS} =     set variable    False
    ${STATUS} =     click country browse button     ${IS DETAILS EXTRACT FRAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Rate Type
    [Arguments]     ${RATE TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set rate type     ${RATE TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Report Product Catalog
    [Arguments]     ${EXPECTED PRODUCT CATALOG}
    ${ACTUAL PRODUCT CATALOG} =     get first row product catalog
    should contain     ${ACTUAL PRODUCT CATALOG}    ${EXPECTED PRODUCT CATALOG}
    [Teardown]      run keyword unless    '${EXPECTED PRODUCT CATALOG}'=='${ACTUAL PRODUCT CATALOG}'    Log Screenshot

Verify Get Second Row Credit Limit Status
    ${CREDIT LIMIT STATUS} =     get second row credit limit status
    log       ${CREDIT LIMIT STATUS}
    return from keyword         ${CREDIT LIMIT STATUS}
    [Teardown]      run keyword if    '${CREDIT LIMIT STATUS}'==''    Log Screenshot

Verify Click Credit Limit Status Browse Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click credit limit status browse button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Second Row In Account Name
    ${ACCOUNT NAME} =     get second row in account name
    log       ${ACCOUNT NAME}
    return from keyword         ${ACCOUNT NAME}
    [Teardown]      run keyword if    '${ACCOUNT NAME}'==''    Log Screenshot

Verify Get Second Row Out Account Name
    ${ACCOUNT NAME} =     get second row out account name
    log       ${ACCOUNT NAME}
    return from keyword         ${ACCOUNT NAME}
    [Teardown]      run keyword if    '${ACCOUNT NAME}'==''    Log Screenshot

Verify Get Second Row Routing Destination
    ${ROUTING DESTINATION} =     get second row routing destination
    log       ${ROUTING DESTINATION}
    return from keyword         ${ROUTING DESTINATION}
    [Teardown]      run keyword if    '${ROUTING DESTINATION}'==''    Log Screenshot

Verify Click Out Account Browse Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click out account browse button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Routing Destination Browse Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click routing destination browse button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Future Date as Created Date From
    [Arguments]     ${NUMBER OF DAYS TO ADD}=${DEFAUL DAYS TO ADD}
    ${STATUS} =     set variable    False
    ${STATUS} =     set created date from      ${EMPTY}    ${FALSE}    ${TRUE}    ${FALSE}    ${NUMBER OF DAYS TO ADD}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Created Date From
    [Arguments]     ${CREATED DATE FROM}
    ${STATUS} =     set variable    False
    ${STATUS} =     set created date from      ${CREATED DATE FROM}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Direction Browse Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click direction browse button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Future Date as Begin Date With Lower Case d
    [Arguments]     ${NUMBER OF DAYS TO ADD}=${DEFAUL DAYS TO ADD}
    ${STATUS} =     set variable    False
    ${STATUS} =     IXReport.set begin date      ${EMPTY}    ${FALSE}    ${TRUE}    ${FALSE}    ${TRUE}    ${NUMBER OF DAYS TO ADD}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Route Class
    [Arguments]     ${ROUTE CLASS}
    ${STATUS} =     set variable    False
    ${STATUS} =     IXReport.set route class    ${ROUTE CLASS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Submit Button To Verify Warning Message
    ${STATUS} =     set variable    False
    ${STATUS} =     click submit button to verify warning
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Technical Trunk Browse Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click technical trunk browse button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get First Row Technical Trunk
    ${TECHNICAL TRUNK} =     get first row technical trunk
    log       ${TECHNICAL TRUNK}
    return from keyword         ${TECHNICAL TRUNK}
    [Teardown]      run keyword if    '${TECHNICAL TRUNK}'==''    Log Screenshot

Verify Get First Row Switch
    ${SWITCH} =     get first row switch
    log       ${SWITCH}
    return from keyword         ${SWITCH}
    [Teardown]      run keyword if    '${SWITCH}'==''    Log Screenshot

Verify Click First Row Technical Trunk
    ${STATUS} =     set variable    False
    ${STATUS} =     click first row technical trunk
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Deal Name
    [Arguments]     ${CREATED DEAL NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set deal name    ${CREATED DEAL NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Deal Browse Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click deal browse button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Future Date Into Specific Date Field
    [Arguments]     ${TEXT FIELD NAME}          ${NUMBER OF DAYS TO ADD}=${DEFAUL DAYS TO ADD}
    ${STATUS} =     set variable    False
    ${STATUS} =     set date value into specific date field      ${TEXT FIELD NAME}     ${EMPTY}    ${FALSE}    ${TRUE}    ${FALSE}    ${NUMBER OF DAYS TO ADD}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Date Value Into Specific Date Field
    [Arguments]     ${TEXT FIELD NAME}      ${CREATED DATE FROM}
    ${STATUS} =     set variable    False
    ${STATUS} =     set date value into specific date field      ${TEXT FIELD NAME}     ${CREATED DATE FROM}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Customer Source Browse Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click customer source browse button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Move Customer Source To Assigned
    ${STATUS} =     set variable    False
    ${STATUS} =     move customer source to assigned
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Reference Price List
    [Arguments]     ${CREATED PRICE POLICY}
    ${STATUS} =     set variable    False
    ${STATUS} =     IXReport.set reference price list    ${CREATED PRICE POLICY}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Currency
    [Arguments]     ${CURRENCY}
    ${STATUS} =     set variable    False
    ${STATUS} =     IXReport.set currency   ${CURRENCY}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Second Row Customer Source
    ${CUSTOMER NAME} =     get second row customer source
    log       ${CUSTOMER NAME}
    return from keyword         ${CUSTOMER NAME}
    [Teardown]      run keyword if    '${CUSTOMER NAME}'==''    Log Screenshot

Verify Get CPE Traffic Report Second Row Customer Source
    ${ACCOUNT NAME} =     get cpe traffic report second row account name
    log       ${ACCOUNT NAME}
    return from keyword         ${ACCOUNT NAME}
    [Teardown]      run keyword if    '${ACCOUNT NAME}'==''    Log Screenshot

Verify Click Account Browse Button With ID
    ${STATUS} =     set variable    False
    ${STATUS} =     click account browse button with id
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click First Row Routing Product
    ${STATUS} =     set variable    False
    ${STATUS} =     click first row routing product
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Switch To Route Guide Detail Frame
    ${STATUS} =     set variable    False
    ${STATUS} =     switch to route guide detail frame
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot
Verify Click Report Table First Row
    ${STATUS} =     set variable    False
    ${STATUS} =     click report table first row
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get First Row Route Class
    ${ROUTING PRODUCT} =     get first row route class
    log       ${ROUTING PRODUCT}
    return from keyword         ${ROUTING PRODUCT}
    [Teardown]      run keyword if    '${ROUTING PRODUCT}'==''    Log Screenshot

Verify Click Route Class Browse Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click route class browse button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set First Currency
    ${STATUS} =     set variable    False
    ${STATUS} =     IXReport.set currency    ${EMPTY}    ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Delta Report Item
    [Arguments]     ${ITEM NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set delta report item   ${ITEM NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Move Available Rate Plan to Assigned
    ${STATUS} =     set variable    False
    ${STATUS} =     move available rate plan to assigned
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Currency Browse Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click currency browse button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click First Row Routing Product For CRG
    ${STATUS} =     set variable    False
    ${STATUS} =     click first row routing product for crg
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Source Browse Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click source browse button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Report Source Name
    [Arguments]     ${SOURCE NAME}
    ${ACTUAL SOURCE NAME} =     get first row source name
    should be equal     ${SOURCE NAME}      ${ACTUAL SOURCE NAME}
    [Teardown]      run keyword if    '${SOURCE NAME}'=='${ACTUAL SOURCE NAME}'    Log Screenshot

Verify Set Source Type
    [Arguments]     ${SOURCE TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set source type     ${SOURCE TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Look Up Table Second Row Value
    ${LOOKUP TABLE VALUE} =     get second row look up table value
    log       ${LOOKUP TABLE VALUE}
    return from keyword         ${LOOKUP TABLE VALUE}
    [Teardown]      run keyword if    '${LOOKUP TABLE VALUE}'==''    Log Screenshot

Verify Select Second Row From Look Up Table
    ${STATUS} =     set variable    False
    ${STATUS} =     select row from look up table       ${EMPTY}    ${FALSE}    ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Report First Row Account Name
    [Arguments]     ${ACCOUNT NAME}
    ${ACTUAL ACCOUNT NAME} =     get first row account name
    should be equal     ${ACCOUNT NAME}      ${ACTUAL ACCOUNT NAME}
    [Teardown]      run keyword if    '${ACCOUNT NAME}'=='${ACTUAL ACCOUNT NAME}'    Log Screenshot

Verify Click First Row More Info Icon
    ${STATUS} =     set variable    False
    ${STATUS} =     click first row more info icon
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Second Layer Is Displayed
    ${STATUS} =     set variable    False
    ${STATUS} =     is second layer displayed
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Offer Browse Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click offer browse button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Offer Type
    [Arguments]     ${SWITCH}
    ${STATUS} =     set variable    False
    ${STATUS} =     set offer type    ${SWITCH}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Report Offer Details
    ${STATUS} =     set variable    False
    ${STATUS} =     get report offer details
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Offer Details From Database
    [Arguments]     ${SERVER NAME}      ${DATABASE NAME}      ${DB USER NAME}      ${DB PASSWORD}       ${CUSTOMER OFFER}=${FALSE}
    ${STATUS} =     set variable    False
    ${STATUS} =     get offer details from database       ${SERVER NAME}      ${DATABASE NAME}      ${DB USER NAME}      ${DB PASSWORD}     ${CUSTOMER OFFER}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Compare Report And Database Offer Details
    ${STATUS} =     set variable    False
    ${STATUS} =     compare report and database offer details
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Specific Report Is Displayed
    [Arguments]     ${REPORT NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is specific report displayed       ${REPORT NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Specific Report Page Is Displayed
    [Arguments]     ${REPORT PAGE NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is specific report page displayed       ${REPORT PAGE NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Unified Number Plan Browse Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click unified number plan browse button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set First Unified Number Plan Type
    ${STATUS} =     set variable    False
    ${STATUS} =     set first unified number plan type
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Service Level Browse Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click service level browse button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Destination From ProductiXRoute Table
    [Arguments]     ${DATABASE SERVER}      ${DATABASE}      ${DATABASE USERNAME}      ${DATABASE PASSWORD}
    ${DESTINATION} =     get destination from productiXRoute table       ${DATABASE SERVER}      ${DATABASE}      ${DATABASE USERNAME}      ${DATABASE PASSWORD}
    return from keyword     ${DESTINATION}

Verify Click Destination Browse Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click destination browse button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Selected Dates Are Out Of Range Warning Message Is Shown
    ${STATUS} =     set variable    False
    ${STATUS} =     is selected dates are out of range warning message shown
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Specific View Button
    [Arguments]     ${CREATED EXTRACT NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     click specific view button       ${CREATED EXTRACT NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Extract Delete Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click extract delete button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Extract Begin Date
    [Arguments]     ${BEGIN DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set extract begin date      ${BEGIN DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Future Date as Extract Begin Date
    [Arguments]     ${NUMBER OF DAYS TO ADD}=${DEFAUL DAYS TO ADD}
    ${STATUS} =     set variable    False
    ${STATUS} =     set extract begin date      ${EMPTY}    ${TRUE}    ${NUMBER OF DAYS TO ADD}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Extract Submit Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click extract submit button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Accrual Check Extract Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click accrual check extract save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Save Button To Verify Warning Message
    ${STATUS} =     set variable    False
    ${STATUS} =     click save button to verify warning
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Specific Extract Name Button
    [Arguments]     ${CREATED EXTRACT NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     click specific extract name button       ${CREATED EXTRACT NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Specific Report Page Is Loaded Poperly
    [Arguments]     ${REPORT TITLE}
    ${STATUS} =     set variable    False
    ${STATUS} =     is report page loaded properly          ${REPORT TITLE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Specific Column Is Present In Report Page
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is specific column present in report page          ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Specific Column Is Not Present In Report Page
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is specific column not present in report page          ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Specific Edit Icon
    [Arguments]     ${CREATED MYREPORT NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     click specific edit icon       ${CREATED MYREPORT NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Myreport Edit Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click myreport edit save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Myreport Delete Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click myreport delete button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Specific Myreport Is Not Present
    [Arguments]     ${MYREPORT NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is specific myreport not present          ${MYREPORT NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Myreport Cancel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click myreport cancel button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Extract Begin Date With Upper Case D
    [Arguments]     ${BEGIN DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set extract begin date      ${BEGIN DATE}       ${FALSE}        ${EMPTY}        ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set CDR Extract Title
    [Arguments]     ${TITLE PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set cdr extract title       ${TITLE PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Extract Customer Price Vs Current Cost Submit Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click extract customer price vs current cost submit button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Extract Begin Month
    ${STATUS} =     set variable    False
    ${STATUS} =     set extract begin month
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Product Browse Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click product browse button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Routing Product From productiXRoute Table
    [Arguments]     ${DATABASE SERVER}      ${DATABASE}      ${DATABASE USERNAME}      ${DATABASE PASSWORD}     ${DESTINATION}
    ${STATUS} =     set variable    False
    ${STATUS} =     get routing product from productixroute table     ${DATABASE SERVER}      ${DATABASE}      ${DATABASE USERNAME}      ${DATABASE PASSWORD}      ${DESTINATION}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Compare Lookup Table Routing Product With Database
    ${STATUS} =     set variable    False
    ${STATUS} =     compare lookup table routing product with database
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Extract Is Present
    [Arguments]     ${EXTRACT NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is extract present       ${EXTRACT NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Profit Symbol
    [Arguments]     ${SYMBOL}
    ${STATUS} =     set variable    False
    ${STATUS} =     set profit symbol       ${SYMBOL}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Profit Value
    [Arguments]     ${PROFIT VALUE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set profit value    ${PROFIT VALUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Specific Tab On Report Page
    [Arguments]     ${TAB NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     click specific tab on report page       ${TAB NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Future Date as Extract Begin Date With Upper Case D
    [Arguments]     ${NUMBER OF DAYS TO ADD}=${DEFAUL DAYS TO ADD}
    ${STATUS} =     set variable    False
    ${STATUS} =     set extract begin date      ${EMPTY}    ${TRUE}    ${NUMBER OF DAYS TO ADD}     ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Specific Download Button
    [Arguments]     ${CREATED EXTRACT NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     click specific download button       ${CREATED EXTRACT NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Extract File Name
    ${EXTRACT PATH} =     get extract file name
    log  ${EXTRACT PATH}
    should not be equal     ${EXTRACT PATH}     ''
    return from keyword     ${EXTRACT PATH}

Verify Extract File Exists In Network Path
    [Arguments]     ${EXTRACT PATH}     ${EXTRACT FILE NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     does extract file exist in network path     ${EXTRACT PATH}     ${EXTRACT FILE NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Delete Extract File From Network Path
    [Arguments]     ${EXTRACT PATH}     ${EXTRACT FILE NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     delete extract file from network path     ${EXTRACT PATH}     ${EXTRACT FILE NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Extract Reference Set Browse Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click extract reference set browse button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Extract Comparis Set 1 Browse Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click extract comparison set 1 browse button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get First Row Effective Date
    ${EFFECTIVE DATE} =     get first row effective date
    log       ${EFFECTIVE DATE}
    return from keyword         ${EFFECTIVE DATE}
    [Teardown]      run keyword if    '${EFFECTIVE DATE}'==''    Log Screenshot

Verify Get First Row Analyzed Rate
    ${ANALYZED RATE} =     get first row analyzed rate
    log       ${ANALYZED RATE}
    return from keyword         ${ANALYZED RATE}
    [Teardown]      run keyword if    '${ANALYZED RATE}'==''    Log Screenshot

Verify Compare Two Values
    [Arguments]     ${FIRST VALUE}      ${SECOND VALUE}
    should be equal     ${FIRST VALUE}      ${SECOND VALUE}
    [Teardown]      run keyword if    '${FIRST VALUE}'=='${SECOND VALUE}'    Log Screenshot

Verify Analyzed Rate Is Shown Up to Six Decimal Points
    ${STATUS} =     set variable    False
    ${STATUS} =     is analyzed rate shown up to six decimal points
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Account Name Without Credit Limit
    ${ACCOUNT NAME} =     get account name without credit limit
    log       ${ACCOUNT NAME}
    return from keyword         ${ACCOUNT NAME}
    should not be equal         '${ACCOUNT NAME}'     ''
    [Teardown]      run keyword if    '${ACCOUNT NAME}'==''    Log Screenshot

Verify Get Account Name With Credit Limit From Database
    [Arguments]     ${DATABASE SERVER}      ${DATABASE}      ${DATABASE USERNAME}      ${DATABASE PASSWORD}
    ${ACCOUNT NAME} =     Get Account Name With Credit Limit From Database       ${DATABASE SERVER}      ${DATABASE}      ${DATABASE USERNAME}      ${DATABASE PASSWORD}
    return from keyword         ${ACCOUNT NAME}
    should not be equal         '${ACCOUNT NAME}'     ''
    [Teardown]      run keyword if    '${ACCOUNT NAME}'==''    Log Screenshot

Verify Row Exceeds Warning Message
    ${STATUS} =     set variable    False
    ${STATUS} =     verify row exceed warning message
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Submit Button With Wait
    ${STATUS} =     set variable    False
    ${STATUS} =     click submit button with wait
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Country Filter Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is country filter available
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Country Filter Is Not Available
    ${STATUS} =     set variable    True
    ${STATUS} =     is country filter available
    should not be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='True'    Log Screenshot

Verify Country Filter Has Countries
    ${STATUS} =     set variable    False
    ${STATUS} =     does country filter have countries
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Extract First Level Summarize By
    [Arguments]     ${SUMMARIZE OPTION}
    ${STATUS} =     set variable    False
    ${STATUS} =     set extract first level summarize by        ${SUMMARIZE OPTION}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Extract Second Level Summarize By
    [Arguments]     ${SUMMARIZE OPTION}
    ${STATUS} =     set variable    False
    ${STATUS} =     set extract second level summarize by        ${SUMMARIZE OPTION}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Minutes
    [Arguments]     ${MINUTES}
    ${STATUS} =     set variable    False
    ${STATUS} =     set minutes     ${MINUTES}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify First Row Column Value of Actual Rate Change In Rp Currency Column
    ${STATUS} =     set variable    False
    ${STATUS} =     verify first row actual rate change in rp currency column value
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify First Row Column Value of Exchange Rate Impact Column
    ${STATUS} =     set variable    False
    ${STATUS} =     verify first row exchange rate impact column value
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify First Row Column Value of Rate Calculation Method Column
    ${STATUS} =     set variable    False
    ${STATUS} =     verify first row rate calculation method column value
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot