*** Settings ***
Documentation   IXAdmin Page Resource File With All Necessary Keywords

Resource        ../../common_resource.robot

Library         ../../../../TestFramework/Libraries/RobotTests/Legacy/IXAdmin.py

*** Keywords ***
Go To IXAdmin Screen With Specific Url
    ${STATUS} =     set variable    False
    ${STATUS} =     go to specific url      ${iXADMIN PAGE URL}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Config Management Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click config management submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Scope
    [Arguments]     ${SCOPE ITEM}
    ${STATUS} =     set variable    False
    ${STATUS} =     IXAdmin.set scope     ${SCOPE ITEM}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Manualaccrualenbld Configuration Variable Is Not Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is manualaccrualenbld configuration variable not available
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Exit Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click exit button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Go Button
    ${STATUS} =     set variable    False
    ${STATUS} =     IXAdmin.click go button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Close IXAdmin Window
    ${STATUS} =     set variable    False
    ${STATUS} =     close ixadmin window
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click List Frame Go Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click list frame go button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Profile Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click profile submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Profile Item
    [Arguments]     ${PROFILE ITEM NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     select profile item     ${PROFILE ITEM NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Roles Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select roles tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Application
    [Arguments]     ${APPLICATION}
    ${STATUS} =     set variable    False
    ${STATUS} =     IXAdmin.set application     ${APPLICATION}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Role Is Present
    [Arguments]     ${ROLE NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is role present     ${ROLE NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Role Delete Checkbox
    [Arguments]     ${ROLE NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     select role delete checkbox     ${ROLE NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Delete Button
    ${STATUS} =     set variable    False
    ${STATUS} =     IXAdmin.click delete button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Add New Roles Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click add new roles button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Role Add Checkbox
    [Arguments]     ${ROLE NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     select role add checkbox     ${ROLE NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Add Role Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click add role save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Checktablelock Configuration Variable Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is checktablelock configuration variable available
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Checktablelock Configuration Variable Is Available With The Default Value 1
    ${STATUS} =     set variable    False
    ${STATUS} =     is checktablelock configuration variable available with the default value 1
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Field Alias Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click field alias submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Field Alias Go Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click field alias go button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Field Alias Save Button Displayed
    ${STATUS} =     set variable    False
    ${STATUS} =     is field alias save button displayed
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Field Alias Cancel Button Displayed
    ${STATUS} =     set variable    False
    ${STATUS} =     is field alias cancel button displayed
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Field Alias Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click field alias save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Field Alias Cancel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click field alias cancel button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Field Alias Grid First Row Field Alias Value
    ${FIELD ALIAS VALUE} =     get field alias grid first row field alias value
    should not be equal     '${FIELD ALIAS VALUE}'     ''
    return from keyword     ${FIELD ALIAS VALUE}
    [Teardown]      run keyword if    '${FIELD ALIAS VALUE}'==''    Log Screenshot

Verify Set Field Alias Grid First Row Field Alias Value
    [Arguments]     ${FIELD ALIAS VALUE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set field alias grid first row field alias value     ${FIELD ALIAS VALUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Field Alias Grid First Row Value
    [Arguments]     ${EXPECTED VALUE}
    ${FIELD ALIAS VALUE} =     get field alias grid first row field alias value
    should be equal     ${FIELD ALIAS VALUE}    ${EXPECTED VALUE}
    [Teardown]      run keyword if    '${FIELD ALIAS VALUE}'=='${EXPECTED VALUE}'    Log Screenshot

Verify Select Multiple Role Chechboxes To Delete
    [Arguments]     @{LIST OF ROLE ID}
    ${STATUS} =     set variable    False
    ${STATUS} =     select multiple role checkboxes to delete     @{LIST OF ROLE ID}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Multiple Role Chechboxes To Add
    [Arguments]     @{LIST OF ROLE ID}
    ${STATUS} =     set variable    False
    ${STATUS} =     select multiple role checkboxes to add     @{LIST OF ROLE ID}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot