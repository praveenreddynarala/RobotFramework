*** Settings ***
Documentation     Alert Page Resource File With All Necessary Keywords.

Library           ../../../TestFramework/Libraries/RobotTests/Home.py
Library           ../../../TestFramework/Libraries/RobotTests/Alert.py

*** Variables ***
${EXPECTED PAGE TITLE}      Alert
${ACTUAL PAGE TITLE}        ${EMPTY}
${STATUS}                   ${EMPTY}

*** Keywords ***
Click on Home Icon and Select 'Alert' From Main Menu
    ${STATUS} =     set variable    False
    select alert submenu
    ${STATUS} =     switch to alert
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Page Title
    ${ACTUAL PAGE TITLE} =    get alert page title
    should contain    ${ACTUAL PAGE TITLE}    ${EXPECTED PAGE TITLE}

Close Alert Page Window
    ${STATUS} =     set variable    False
    ${STATUS} =     close alert page
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Exit Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click exit button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot