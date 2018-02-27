*** Settings ***
Documentation   IXControl Page Resource File With All Necessary Keywords

Resource        ../../common_resource.robot

Library         ../../../../TestFramework/Libraries/RobotTests/Legacy/IXControl.py

*** Keywords ***
Go To IXControl Screen With Specific Url
    ${STATUS} =     set variable    False
    ${STATUS} =     go to specific url      ${iXCONTROL PAGE URL}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Performance Matrics Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click performance metrics submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Registry Item
    [Arguments]     ${REGISTRY ITEM NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set registry item        ${REGISTRY ITEM NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Go Button
    ${STATUS} =     set variable    False
    ${STATUS} =     IXControl.click go button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Exit Button
    ${STATUS} =     set variable    False
    ${STATUS} =     IXControl.click exit button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Connect Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click connect submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click First Unp Job Link
    ${STATUS} =     set variable    False
    ${STATUS} =     click first unp job link
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Request Recalculate Unp Link
    ${STATUS} =     set variable    False
    ${STATUS} =     click request recalculate unp link
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Execute Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click execute button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click First Unp Job Process Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click first unp job process button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click First Unp Job Recalculate Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click first unp job recalculate button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Compare Unp Status
    ${STATUS} =     set variable    False
    ${STATUS} =     compare unp status
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Objects And Processes Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click objects and processes submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Object Type
    [Arguments]     ${OBJECT TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set object type     ${OBJECT TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Object
    [Arguments]     ${OBJECT NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set object      ${OBJECT NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Object Name
    [Arguments]     ${OBJECT NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     click object name      ${OBJECT NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Cdr Destination Path
    ${DESTINATION PATH} =     get cdr destination path
    log  ${DESTINATION PATH}
    should not be equal     ${DESTINATION PATH}     ''
    return from keyword     ${DESTINATION PATH}

Verify Get Cdr File Name
    ${CDR FILE NAME} =     get cdr file name
    log  ${CDR FILE NAME}
    should not be equal     ${CDR FILE NAME}     ''
    return from keyword     ${CDR FILE NAME}

Verify Click CDR Files Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click cdr files submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Copy File
    [Arguments]     ${SOURCE}       ${DESTINATION}
    ${STATUS} =     set variable    False
    ${STATUS} =     copy file       ${SOURCE}       ${DESTINATION}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Cdr File Name
    [Arguments]     ${CDR FILE NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     click cdr file name     ${CDR FILE NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Current Status
    [Arguments]     ${CURRENT STATUS}
    ${STATUS} =     set variable    False
    ${STATUS} =     set current status      ${CURRENT STATUS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify CDR Load Is Completed
    ${STATUS} =     set variable    False
    ${STATUS} =     is cdr load completed
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Job Registry Status
    [Arguments]     ${STATUS TEXT}
    ${STATUS} =     set variable    False
    ${STATUS} =     verify registry status        ${STATUS TEXT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Trade Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click trade submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click First Registry Item Info Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click first registry item info button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click First Registry Process
    ${STATUS} =     set variable    False
    ${STATUS} =     click first registry process
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get SQL Command
    ${STATUS} =     set variable    False
    ${STATUS} =     get sql command
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Execute SQL To Run RPL Job
    [Arguments]     ${SERVER}   ${DATABASE}     ${USER}     ${PASSWORD}
    ${STATUS} =     set variable    False
    ${STATUS} =     execute sql to run rpl job      ${SERVER}   ${DATABASE}     ${USER}     ${PASSWORD}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click All Items Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click all items submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Event Reprocessing Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click event reprocessing button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Single Event Processing Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click single event processing button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Requested Process
    [Arguments]     ${REQUESTED PROCESS}
    ${STATUS} =     set variable    False
    ${STATUS} =     set requested process     ${REQUESTED PROCESS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Event Processing Object
    [Arguments]     ${OBJECT NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set event processing object     ${OBJECT NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Event Processing Begin Date
    ${STATUS} =     set variable    False
    ${STATUS} =     set event processing begin date
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Event Processing End Date
    ${STATUS} =     set variable    False
    ${STATUS} =     set event processing end date
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Schedule Process Checkbox
    ${STATUS} =     set variable    False
    ${STATUS} =     click schedule process checkbox
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Event Processing Schedule Date And Time
    ${STATUS} =     set variable    False
    ${STATUS} =     set schedule date and time
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Event Processing Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click event processing save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Registration Procedure
    [Arguments]     ${PROCEDURE TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set registration procedure     ${PROCEDURE TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Modify Reference Price List Generate Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click modify rplg save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Server Monitoring Link
    ${STATUS} =     set variable    False
    ${STATUS} =     click server monitoring link
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify is Disk Space Usage Chart Loaded
    ${STATUS} =     set variable    False
    ${STATUS} =     is disk space usage chart loaded
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify is Total Space Chart Loaded
    ${STATUS} =     set variable    False
    ${STATUS} =     is total space chart loaded
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify is Free Space Chart Loaded
    ${STATUS} =     set variable    False
    ${STATUS} =     is free space chart loaded
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify is Server Job Monitoring and Management Table Loaded
    ${STATUS} =     set variable    False
    ${STATUS} =     is server job monitoring and management table loaded
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Server Usage Audit Link
    ${STATUS} =     set variable    False
    ${STATUS} =     click server usage audit link
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Server Usage Audit Submit Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click server usage audit submit button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click And Expand C Drive
    ${STATUS} =     set variable    False
    ${STATUS} =     click and expand c drive
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Server Details Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is server details available
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Close Ixcontrol Window
    [Arguments]     ${DEFAULT WINDOW}=${FALSE}
    ${STATUS} =     set variable    False
    ${STATUS} =     close ixcontrol window      ${DEFAULT WINDOW}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Request Data Refresh Process
    ${STATUS} =     set variable    False
    ${STATUS} =     click request data refresh process
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Trade Data Refresh Job Completed
    ${STATUS} =     set variable    False
    ${STATUS} =     is trade data refresh job completed
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Bill Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click bill submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Statement Generate Job Completed
    ${STATUS} =     set variable    False
    ${STATUS} =     is statement generate job completed
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Request Statement Process Link
    ${STATUS} =     set variable    False
    ${STATUS} =     click request statement generate process link
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Item Type
    [Arguments]     ${ITEM NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set item type       ${ITEM NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Successfully Executed Job Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is successfully executed job present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Jobs Are Completed Without Any Error
    ${STATUS} =     set variable    False
    ${STATUS} =     are the jobs completed without any error
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Job Execution Duration Is Not So Long
    ${STATUS} =     set variable    False
    ${STATUS} =     is job execution duration not so long
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Read Settings File Max Records Value
    [Arguments]     ${DESTINATION}
    ${MAX RECORDS} =     read settings file max records value       ${DESTINATION}
    log     ${MAX RECORDS}
    should not be equal     '${MAX RECORDS}'      ''
    return from keyword     ${MAX RECORDS}
    [Teardown]      run keyword if    '${MAX RECORDS}'==''    Log Screenshot

Verify Write Settings File Max Records Value
    [Arguments]     ${DESTINATION}      ${VALUE}
    ${STATUS} =     set variable    False
    ${STATUS} =     write settings file max records value       ${DESTINATION}      ${VALUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Web Server Name
    ${WEB SERVER NAME} =     get web server name
    log  ${WEB SERVER NAME}
    should not be equal     ${WEB SERVER NAME}     ''
    return from keyword     ${WEB SERVER NAME}
    [Teardown]      run keyword if    '${WEB SERVER NAME}'==''    Log Screenshot