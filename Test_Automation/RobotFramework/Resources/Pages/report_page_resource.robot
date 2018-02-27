*** Settings ***
Documentation   Report Page Resource File With All Necessary Keywords.

Resource        ../common_resource.robot

Library     ../../../TestFramework/Libraries/RobotTests/Home.py
Library     ../../../TestFramework/Libraries/RobotTests/Report.py

*** Variables ***
${EXPECTED PAGE TITLE}      Report
${ACTUAL PAGE TITLE}        ${EMPTY}
${STATUS}                   ${EMPTY}

*** Keywords ***
Click on Home Icon and Select 'Report' From Main Menu
    select report submenu
    switch to report

Verify Page Title
    ${ACTUAL PAGE TITLE} =      get report page title
     should contain     ${ACTUAL PAGE TITLE}     ${EXPECTED PAGE TITLE}

Close Report Window
    close report page

Verify Click Administrative Reports Plus Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click administrative reports plus button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Account List Link
    ${STATUS} =     set variable    False
    ${STATUS} =     click account list link
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Submit Button
    ${STATUS} =     set variable    False
    ${STATUS} =     Report.click submit button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Compound Account Label
    [Arguments]     ${CARRIER NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     compare account label data      ${CARRIER NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Account Value
    [Arguments]     ${ACCOUNT NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     Report.set account value        ${ACCOUNT NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Exit Button
    ${STATUS} =     set variable    False
    ${STATUS} =     Report.click exit button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Go To IXReport Screen With Specific Url
    ${STATUS} =     set variable    False
    ${STATUS} =     go to specific url      ${iXREPORT PAGE URL}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Unp Report Link
    ${STATUS} =     set variable    False
    ${STATUS} =     click unp report link
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Unified Number Plan
    [Arguments]     ${ACCOUNT NAME}     ${TRUNK NAME}       ${CALL TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set unified number plan       ${ACCOUNT NAME}       ${TRUNK NAME}       ${CALL TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Unified Number Plan Type
    [Arguments]     ${NUMBER PLAN TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set unified number plan type      ${NUMBER PLAN TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Unp Submit Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click unp submit button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Compound Number Plan On Report
    [Arguments]     ${CONTRACT NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     compare number plan on report      ${CONTRACT NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot