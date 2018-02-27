*** Settings ***
Documentation     Bill Page Resource File With All Necessary Keywords.

Library           ../../../TestFramework/Libraries/RobotTests/Home.py
Library           ../../../TestFramework/Libraries/RobotTests/Bill.py

*** Variables ***
${EXPECTED PAGE TITLE}      Bill
${ACTUAL PAGE TITLE}        ${EMPTY}
${STATUS}                   ${EMPTY}

*** Keywords ***
Click on Home Icon and Select 'Bill' From Main Menu
    select bill submenu
    switch to bill

Verify Page Title
    ${ACTUAL PAGE TITLE} =    get bill page title
    should contain    ${ACTUAL PAGE TITLE}    ${EXPECTED PAGE TITLE}

Close Bill Page Window
    close bill page
