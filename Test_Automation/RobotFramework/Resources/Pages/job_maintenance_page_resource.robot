*** Settings ***
Documentation   Job Maintenance Page Resource File With All Necessary Keywords.

Library     ../../../TestFramework/Libraries/RobotTests/Home.py
Library     ../../../TestFramework/Libraries/RobotTests/JobMaintenance.py

*** Variables ***
${EXPECTED PAGE TITLE}      Control
${ACTUAL PAGE TITLE}        ${EMPTY}
${STATUS}                   ${EMPTY}

*** Keywords ***
Click on Home Icon and Select 'Job Maintenance' From Main Menu
    ${STATUS} =     set variable    False
    select job maintenance submenu
    ${STATUS} =     switch to job maintenance
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Page Title
    ${ACTUAL PAGE TITLE} =  get job maintenance page title
     should contain     ${ACTUAL PAGE TITLE}     ${EXPECTED PAGE TITLE}
    [Teardown]      run keyword unless     '${ACTUAL PAGE TITLE}'=='${EXPECTED PAGE TITLE}'    Log Screenshot

Close iXControl Page
    ${STATUS} =     set variable    False
    ${STATUS} =     close job maintenance page
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot