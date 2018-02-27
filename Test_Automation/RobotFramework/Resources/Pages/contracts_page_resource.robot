*** Settings ***
Documentation   Contracts Page Resource File With All Necessary Keywords.

Library     ../../../TestFramework/Libraries/RobotTests/Home.py
Library     ../../../TestFramework/Libraries/RobotTests/Contracts.py

*** Variables ***
${EXPECTED PAGE TITLE}      Connect
${ACTUAL PAGE TITLE}        ${EMPTY}
${STATUS}                   ${EMPTY}

*** Keywords ***
Click on Home Icon and Select 'Contracts' From Main Menu
    ${STATUS} =     set variable    False
    select contracts submenu
    ${STATUS} =     switch to contracts
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Page Title
    ${ACTUAL PAGE TITLE} =  get contracts page title
     should contain     ${ACTUAL PAGE TITLE}     ${EXPECTED PAGE TITLE}

Is Contracts Page Loaded Properly
    ${STATUS} =  is contracts page loaded
    should be true      ${STATUS}

Close iXConnect Page
    close contracts page