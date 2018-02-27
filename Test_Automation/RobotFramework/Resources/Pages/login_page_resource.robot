*** Settings ***
Documentation   Login Page Resource File With Valid, Invalid Credentials And Necessary Keywords.

Library         ../../../TestFramework/Libraries/RobotTests/Login.py
Library         ../../../TestFramework/Libraries/RobotTests/Home.py

*** Variables ***
${USERNAME}       ${EMPTY}
${PASSWORD}       ${EMPTY}
${STATUS}         ${EMPTY}

*** Keywords ***
Submit Credentials
    [Arguments]    ${USERNAME}    ${PASSWORD}
    perform login    ${USERNAME}    ${PASSWORD}
    ${STATUS} =    is login successful
    should be true    ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Login Should Be Succesfull
    ${STATUS} =    is login successful
    should be true    ${STATUS}
    return from keyword    ${STATUS}

Login Should Be Failed
    ${STATUS}=    is login successful
    should not be true    ${STATUS}
