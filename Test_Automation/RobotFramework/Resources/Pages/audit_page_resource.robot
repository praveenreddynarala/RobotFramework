*** Settings ***
Documentation     Audit Page Resource File With All Necessary Keywords.

Library           ../../../TestFramework/Libraries/RobotTests/Home.py
Library           ../../../TestFramework/Libraries/RobotTests/Audit.py

*** Variables ***
${EXPECTED PAGE TITLE}      Audit
${ACTUAL PAGE TITLE}        ${EMPTY}
${STATUS}                   ${EMPTY}

*** Keywords ***
Click on Home Icon and Select 'Audit' From Main Menu
    select audit submenu
    switch to audit

Verify Page Title
    ${ACTUAL PAGE TITLE} =    get audit page title
    should contain    ${ACTUAL PAGE TITLE}    ${EXPECTED PAGE TITLE}

Close Audit Page Window
    close audit page

Verify Select Dispute Grades Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     select dispute grades submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Dispute Grades New Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click dispute grades new button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Dispute Grade
    [Arguments]         ${DISPUTE GRADE PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set dispute grade         ${DISPUTE GRADE PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Dispute Grade
    ${DISPUTE GRADE} =     get dispute grade
    log       ${DISPUTE GRADE}
    return from keyword         ${DISPUTE GRADE}
    [Teardown]      run keyword if    '${DISPUTE GRADE}'==''    Log Screenshot

Verify Click Dispute Grade Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click dispute grade save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot
