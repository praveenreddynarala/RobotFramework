*** Settings ***
Documentation   Translate Page Resource File With All Necessary Keywords.

Library     ../../../TestFramework/Libraries/RobotTests/Home.py
Library     ../../../TestFramework/Libraries/RobotTests/Translate.py

*** Variables ***
${EXPECTED PAGE TITLE}      Translate
${ACTUAL PAGE TITLE}        ${EMPTY}
${STATUS}                   ${EMPTY}

*** Keywords ***
Click on Home Icon and Select 'Translate' From Main Menu
    select translate submenu
    switch to translate

Verify Page Title
    ${ACTUAL PAGE TITLE} =      get translate page title
    should contain     ${ACTUAL PAGE TITLE}     ${EXPECTED PAGE TITLE}

Verify 'Translate' Page Is Loaded Without Any Errors
    ${STATUS} =     is translate page loaded
    should be true      ${STATUS}

Close Translate
    close translate page



