*** Settings ***
Documentation   IXConnect Page Resource File With All Necessary Keywords

Resource        ../../common_resource.robot

Library         ../../../../TestFramework/Libraries/RobotTests/Legacy/IXConnect.py
Library         Collections

*** Variables ***
${CREATED DAYLIGHT SAVING ZONE}     ${EMPTY}
${CREATED RATING METHOD}       ${EMPTY}

*** Keywords ***
Verify Switch To IXConnect
    ${STATUS} =     set variable    False
    ${STATUS} =     switch to ixconnect
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Switch To List Frame
    ${STATUS} =     set variable    False
    ${STATUS} =     IXConnect.switch to list frame
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click New Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click new button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Switch To Default Content
    ${STATUS} =     set variable    False
    ${STATUS} =     IXConnect.switch to default content
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Switch To Detail Frame
    ${STATUS} =     set variable    False
    ${STATUS} =     switch to detail frame
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set New Daylight Saving Zone
    [Arguments]     ${DAYLIGHT SAVING ZONE PREFIX}
    ${CREATED DAYLIGHT SAVING ZONE} =     set new daylight saving zone        ${DAYLIGHT SAVING ZONE PREFIX}
    set suite variable      ${CREATED DAYLIGHT SAVING ZONE}
    should not be equal     ${CREATED DAYLIGHT SAVING ZONE}     ""
    [Teardown]      run keyword if    '${CREATED DAYLIGHT SAVING ZONE}'==''    Log Screenshot

Verify Set New Daylight Saving Zone Region
    [Arguments]     ${DAYLIGHT SAVING ZONE REGION}
    ${STATUS} =     set variable    False
    ${STATUS} =     set new daylight saving zone region     ${DAYLIGHT SAVING ZONE REGION}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click New Daylight Saving Zone Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click new daylight saving zone save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Add A New Row Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click add a new row button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Daylight Saving Zone Period Begin Date
    [Arguments]     ${BEGIN DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set daylight saving zone period begin date     ${BEGIN DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Daylight Saving Zone Period End Date
    [Arguments]     ${END DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set daylight saving zone period end date     ${END DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Begin Hour Value
    [Arguments]     ${BEGIN HOUR}
    ${STATUS} =     set variable    False
    ${STATUS} =     set begin hour value     ${BEGIN HOUR}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Begin Hour Minute Value
    [Arguments]     ${BEGIN HOUR MINUTE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set begin hour minute value     ${BEGIN HOUR MINUTE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set End Hour Value
    [Arguments]     ${END HOUR}
    ${STATUS} =     set variable    False
    ${STATUS} =     set end hour value     ${END HOUR}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set End Hour Minute Value
    [Arguments]     ${END HOUR MINUTE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set end hour minute value     ${END HOUR MINUTE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Daylight Saving Zone Period Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click daylight saving zone period save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Letters For Created Daylight Saving Zone Search
    ${STATUS} =     set variable    False
    ${STATUS} =     set letters for search      ${CREATED DAYLIGHT SAVING ZONE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Go Button
    ${STATUS} =     set variable    False
    ${STATUS} =     IXConnect.click go button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Expand Testhome Region
    ${STATUS} =     set variable    False
    ${STATUS} =     expand testhome region
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Created Daylight Saving Zone Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is created daylight saving zone available       ${CREATED DAYLIGHT SAVING ZONE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Created Daylight Saving Zone
    ${STATUS} =     set variable    False
    ${STATUS} =     select daylight saving zone       ${CREATED DAYLIGHT SAVING ZONE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Daylight Saving Zone Delete Button
    ${STATUS} =     set variable    False
    ${STATUS} =     IXConnect.click delete button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Close IxConnect Window
    [Arguments]     ${SWITCH TO DEFAULT WINDOW}=${False}
    ${STATUS} =     set variable    False
    ${STATUS} =     IXConnect.close ixconnect window        ${SWITCH TO DEFAULT WINDOW}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Switch To Previous Window
    ${STATUS} =     set variable    False
    ${STATUS} =     switch to previous window
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click New Rating Method Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click new rating method button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set New Rating Method Name
    [Arguments]     ${RATING METHOD NAME PREFIX}
    ${CREATED RATING METHOD} =     set new rating method name      ${RATING METHOD NAME PREFIX}
    set suite variable      ${CREATED RATING METHOD}
    should not be equal     ${CREATED RATING METHOD}       ''
    [Teardown]      run keyword if    '${CREATED RATING METHOD}'==''    Log Screenshot

Verify Set New Rating Method Abbreviation
    [Arguments]     ${RATING METHOD NAME PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set new rating method abbreviation      ${RATING METHOD NAME PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Minimum Value
    [Arguments]     ${MINIMUM VALUE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set minimum value      ${MINIMUM VALUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Initial Rounding Value
    [Arguments]     ${INITIAL ROUNDING VALUE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set initial rounding value      ${INITIAL ROUNDING VALUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Additional Rounding Value
    [Arguments]     ${ADDITIONAL ROUNDING VALUE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set additional rounding value      ${ADDITIONAL ROUNDING VALUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Maximum Value
    [Arguments]     ${MAXIMUM VALUE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set maximum value      ${MAXIMUM VALUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Measure Adjustment Value
    [Arguments]     ${MEASURE ADJUSTMENT VALUE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set measure adjustment value      ${MEASURE ADJUSTMENT VALUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Rating Dimensions Subtab
    ${STATUS} =     set variable    False
    ${STATUS} =     select rating dimensions subtab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Date And Time Value Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click date and time value button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Rate Dimension Template
    [Arguments]     ${RATE DIMENSION TEMPLATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     select rate dimension template      ${RATE DIMENSION TEMPLATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Band Rates Subtab
    ${STATUS} =     set variable    False
    ${STATUS} =     select band rates subtab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Automatically Assign Band Checkbox
    ${STATUS} =     set variable    False
    ${STATUS} =     select automatically assign bands checkbox
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click New Rating Method Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click new rating method save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Letters For Created Rating Method Search
    ${STATUS} =     set variable    False
    ${STATUS} =     set letters for search      ${CREATED RATING METHOD}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Expand New Rating Method Structure
    ${STATUS} =     set variable    False
    ${STATUS} =     expand new rating method structure
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Created Rating Method Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is rating method available      ${CREATED RATING METHOD}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Created Rating Method
    ${STATUS} =     set variable    False
    ${STATUS} =     select rating method      ${CREATED RATING METHOD}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Rating Method Delete Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click rating method delete button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Destination Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    [Documentation]     There are multiple keywords with the same name in another page resource. To avoid conflicts, class name has been mentioned to specify the targetted method.
    ${ACTUAL DATE VALUE} =    get destination date
    log     ${ACTUAL DATE VALUE}
    ${STATUS} =     IXConnect.validate date format         ${ACTUAL DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Daylight Savings Zone Screen Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    [Documentation]     There are multiple keywords with the same name in another page resource. To avoid conflicts, class name has been mentioned to specify the targetted method.
    ${ACTUAL DATE VALUE} =    get date from daylight savings zone
    log     ${ACTUAL DATE VALUE}
    ${STATUS} =     IXConnect.validate date format         ${ACTUAL DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Route Class Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     select route class submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click New Route Class Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click new route class button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Route Class
    [Arguments]         ${ROUTE CLASS PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set route class         ${ROUTE CLASS PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Route Class
    ${ROUTE CLASS} =     get route class
    log       ${ROUTE CLASS}
    return from keyword         ${ROUTE CLASS}
    [Teardown]      run keyword if    '${ROUTE CLASS}'==''    Log Screenshot

Verify Select Company Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     select company submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Company Name
    [Arguments]     ${COMPANY NAME PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set company name    ${COMPANY NAME PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Company
    ${COMPANY NAME} =     get company
    log       ${COMPANY NAME}
    return from keyword         ${COMPANY NAME}
    [Teardown]      run keyword if    '${COMPANY NAME}'==''    Log Screenshot

Verify Click Company Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     IXConnect.click company save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Route Class Abbreviation
    ${STATUS} =     set variable    False
    ${STATUS} =     set route class abbreviation
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Target Fulfillment Order
    ${STATUS} =     set variable    False
    ${STATUS} =     set target fulfillment order
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Capacity Saturation Order
    ${STATUS} =     set variable    False
    ${STATUS} =     set capacity saturation order
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Route Class Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click route class save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Service Level Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     select service level submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Service Level New Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click service level new button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Service Level
    [Arguments]         ${SERVICE LEVEL PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set service level          ${SERVICE LEVEL PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Created Service Level
    ${SERVICE LEVEL} =     get created service level
    log       ${SERVICE LEVEL}
    return from keyword         ${SERVICE LEVEL}

Verify Set Service Level Abbreviation
    ${STATUS} =     set variable    False
    ${STATUS} =     set service level abbreviation
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Route Class Dropdown Item
    [Arguments]         ${ROUTE CLASS}
    ${STATUS} =     set variable    False
    ${STATUS} =     select route class dropdown item        ${ROUTE CLASS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Service Level Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click service level save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Destination Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     select destination submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Destination New Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click destination new button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Destination
    [Arguments]     ${DESTINATION PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set destination         ${DESTINATION PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Created Destination
    ${SERVICE LEVEL} =     get created destination
    log       ${SERVICE LEVEL}
    return from keyword         ${SERVICE LEVEL}

Verify Set Destination Abbreviation
    ${STATUS} =     set variable    False
    ${STATUS} =     IXConnect.set destination abbreviation
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Destination Type
    [Arguments]     ${DESTINATION TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set destination type        ${DESTINATION TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Call Char
    [Arguments]     ${CALL CHAR}
    ${STATUS} =     set variable    False
    ${STATUS} =     IXConnect.set call char       ${CALL CHAR}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Country
    [Arguments]     ${COUNTRY}
    ${STATUS} =     set variable    False
    ${STATUS} =     IXConnect.set country         ${COUNTRY}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Number Plan
    [Arguments]     ${NUMBER PLAN}
    ${STATUS} =     set variable    False
    ${STATUS} =     IXConnect.set number plan     ${NUMBER PLAN}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Destination Begin Date
    ${STATUS} =     set variable    False
    ${STATUS} =     set destination begin date
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Destination End Date
    ${STATUS} =     set variable    False
    ${STATUS} =     set destination end date
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Destination Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click destination save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Route Class Service
    [Arguments]     ${ROUTE CLASS SERVICE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set route class service     ${ROUTE CLASS SERVICE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Rating Method
    ${RATING METHOD} =     get rating method
    log       ${RATING METHOD}
    return from keyword         ${RATING METHOD}
    [Teardown]      run keyword if    '${RATING METHOD}'==''    Log Screenshot

Verify Click Selected For Routing Check Box
    ${STATUS} =     set variable    False
    ${STATUS} =     click selected for routing check box
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Route Class Initialize Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click route class initialize button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Product Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     select product submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Expand Routing Structure
    ${STATUS} =     set variable    False
    ${STATUS} =     expand routing structure
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Routing
    ${STATUS} =     set variable    False
    ${STATUS} =     select routing
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Add New Product Link
    ${STATUS} =     set variable    False
    ${STATUS} =     click add new product link
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Product Name
    [Arguments]     ${PRODUCT PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set product name        ${PRODUCT PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Product Abbreviation
    ${STATUS} =     set variable    False
    ${STATUS} =     set product abbreviation
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Routing Destination
    ${STATUS} =     set variable    False
    ${STATUS} =     set routing destination
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set First Letter
    ${STATUS} =     set variable    False
    ${STATUS} =     set first letter
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Company Code For Company
    ${STATUS} =     set variable    False
    ${STATUS} =     set company code
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Maintain Routing Product Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click maintain routing products button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click New Destination Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click new destination button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Dialed Digits
    ${STATUS} =     set variable    False
    ${STATUS} =     set dialed digits
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Dialed Digits Begin Date
    ${STATUS} =     set variable    False
    ${STATUS} =     set dialed digits begin date
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Dialed Digits End Date
    ${STATUS} =     set variable    False
    ${STATUS} =     set dialed digits end date
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Dialed Digits Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click dialed digits save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Origin Set Subtab
    ${STATUS} =     set variable    False
    ${STATUS} =     select origin set subtab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Origin Set Value Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click origin set value button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Origin Set Letters
    [Arguments]     ${ORIGIN SET}
    ${STATUS} =     set variable    False
    ${STATUS} =     set origin set letters      ${ORIGIN SET}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Destination Begin Date With Future Date
    ${STATUS} =     set variable    False
    ${STATUS} =     set destination begin date      ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Job Maintenance Link Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is job maintenance link present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Exit Header Link
    ${STATUS} =     set variable    False
    ${STATUS} =     click exit header link
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Create New Complex Contract Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click create new complex contract button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Contract Account
    [Arguments]     ${ACCOUNT NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set contract account        ${ACCOUNT NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Contract Direction
    [Arguments]     ${DIRECTION}
    ${STATUS} =     set variable    False
    ${STATUS} =     set contract direction      ${DIRECTION}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Contract Name
    [Arguments]     ${CONTRACT PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set contract name       ${CONTRACT PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Contract Begin Date
    [Arguments]     ${BEGIN DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set contract begin date     ${BEGIN DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Contract End Date
    [Arguments]     ${END DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set contract end date       ${END DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Contract Details Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click contract details save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Configure Number Plan Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select configure number plan tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Configure Number Plan Commercial Trunk
    [Arguments]     ${COMMERCIAL TRUNK}
    ${STATUS} =     set variable    False
    ${STATUS} =     set configure number plan commercial trunk      ${COMMERCIAL TRUNK}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Configure Number Plan Call Type
    [Arguments]     ${CALL TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set configure number plan call type     ${CALL TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Configure Number Plan Create Plus Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click configure number plan create plus button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Create A New Number Plan
    [Arguments]     ${NEW NUMBER PLAN}
    ${STATUS} =     set variable    False
    ${STATUS} =     set create a new number plan        ${NEW NUMBER PLAN}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Number Plan To Copy From
    [Arguments]     ${NUMBER PLAN TO COPY}
    ${STATUS} =     set variable    False
    ${STATUS} =     set number plan to copy from        ${NUMBER PLAN TO COPY}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Move Available Countries To Destination
    [Arguments]     ${COUNTRY NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     move available countries to destination     ${COUNTRY NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Move Available Countries To Destination Deselecting First Item
    [Arguments]     ${COUNTRY NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     move available countries to destination     ${COUNTRY NAME}     ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Configure Number Plan Go Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click configure number plan go button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Configure Number Plan Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click configure number plan save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Rating And Tariff Details Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select rating and tariff details tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Rating And Tariff Details Rating Method
    [Arguments]     ${RATING METHOD}
    ${STATUS} =     set variable    False
    ${STATUS} =     set rating and tariff details rating method     ${RATING METHOD}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Rating And Tariff Details Outbound Rate Plan
    [Arguments]     ${OUTBOUND RATE PLAN}
    ${STATUS} =     set variable    False
    ${STATUS} =     set rating and tariff details outbound rate plan        ${OUTBOUND RATE PLAN}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Rating And Tariff Details Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click rating and tariff details save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Complex Contract Wizard Next Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click complex contract wizard next button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Aggregation Group Name
    [Arguments]     ${AGGREGATION PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set aggregation group name      ${AGGREGATION PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Aggregation Group Abbreviation
    [Arguments]     ${AGGREGATION PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set aggregation group abbreviation      ${AGGREGATION PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Aggregation Template
    [Arguments]     ${AGGREGATION TEMPLATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set aggregation template        ${AGGREGATION TEMPLATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Create Aggregation Group Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click create aggregation group save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Aggregate Product Name
    [Arguments]     ${AGGREGATE PRODUCT PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set aggregate product name      ${AGGREGATE PRODUCT PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Aggregate Product Abbreviation
    [Arguments]     ${AGGREGATE PRODUCT PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set aggregate product abbreviation      ${AGGREGATE PRODUCT PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Traffic Direction
    [Arguments]     ${TRAFFIC DIRECTION}
    ${STATUS} =     set variable    False
    ${STATUS} =     IXConnect.set traffic direction       ${TRAFFIC DIRECTION}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Check Traffic Type
    [Arguments]     @{TRAFFIC TYPE LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     check traffic type      ${FALSE}    @{TRAFFIC TYPE LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Check Rate Type
    [Arguments]     @{RATE TYPE LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     check rate type      ${FALSE}   @{RATE TYPE LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Aggregation Rules Tab
    [Arguments]     ${TAB NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     select aggregation rules tab        ${TAB NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Move Available Service To Destination
    ${STATUS} =     set variable    False
    ${STATUS} =     move available service to destination
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Move Available Commercial Trunk To Destination
    ${STATUS} =     set variable    False
    ${STATUS} =     move available commercial trunk to destination
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Aggregation Rules Grid First Row Checkbox
    ${STATUS} =     set variable    False
    ${STATUS} =     select aggregation rules grid first row checkbox
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Aggregate Rate Plan Name
    [Arguments]     ${RATE PLAN PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set aggregate rate plan name        ${RATE PLAN PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Aggregate Rate Plan Abbreviation
    [Arguments]     ${RATE PLAN PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set aggregate rate plan abbreviation        ${RATE PLAN PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Rate Plan Type
    [Arguments]     ${RATE PLAN TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set rate plan type      ${RATE PLAN TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Tariff Type
    [Arguments]     ${TARIFF TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     IXConnect.set tariff type     ${TARIFF TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Currency
    [Arguments]     ${CURRENCY}
    ${STATUS} =     set variable    False
    ${STATUS} =     IXConnect.set currency        ${CURRENCY}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Aggregate Rate Plan Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click aggregate rate plan save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Aggregate Scenario Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click aggregate scenario save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Rating Structure 3 Arrow
    ${STATUS} =     set variable    False
    ${STATUS} =     click rating structure 3 arrow
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Add New Tier Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click add new tier button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Submit Button
    ${STATUS} =     set variable    False
    ${STATUS} =     IXConnect.click submit button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Value In Tier Grid Column
    [Arguments]     ${COLUMN NAME}      ${COLUMN VALUE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set value in tier grid column       ${COLUMN NAME}      ${COLUMN VALUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Value In Rate Grid Column
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set value in rate grid column       ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Rate Grid Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click rate grid save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Contract Complete Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click contract complete button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Auto Extend Operational And Accounting Radio Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click auto extend operational and accounting radio button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Auto Extend Operational Only Radio Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click auto extend operational only radio button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Rating Structure 22 Arrow
    ${STATUS} =     set variable    False
    ${STATUS} =     click rating structure 22 arrow
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Rate Structure
    [Arguments]     ${RATE STRUCTURE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set rate structure      ${RATE STRUCTURE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Splitting Type
    [Arguments]     ${SPLITTING TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set splitting type      ${SPLITTING TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Threshold
    ${STATUS} =     set variable    False
    ${STATUS} =     set threshold
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Penalty Rate
    ${STATUS} =     set variable    False
    ${STATUS} =     set penalty rate
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Rating Structure Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click rating structure save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Manage Complex Contracts Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click manage complex contracts button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Manage Complex Contracts Go Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click manage complex contracts go button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Signature Date
    ${STATUS} =     set variable    False
    ${STATUS} =     set signature date
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Manage Complex Contracts Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click manage complex contracts save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Manage Complex Contracts Delete Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click manage complex contracts delete button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Manage Complex Contracts Unlocked Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click manage complex contracts unlocked button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Lock Unlock Popup Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is lock unlock popup present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Contract Status
    [Arguments]     ${CONTRACT STATUS}
    ${STATUS} =     set variable    False
    ${STATUS} =     set contract status        ${CONTRACT STATUS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Manage Complex Contract Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click manage complex contract button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Complex Contract Account
    [Arguments]     ${CONTRACT ACCOUNT}
    ${STATUS} =     set variable    False
    ${STATUS} =     set complex contract account     ${CONTRACT ACCOUNT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Complex Contract Status
    [Arguments]     ${CONTRACT STATUS}
    ${STATUS} =     set variable    False
    ${STATUS} =     set complex contract status     ${CONTRACT STATUS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Complex Contract Locked Status
    [Arguments]     ${CONTRACT LOCKED STATUS}
    ${STATUS} =     set variable    False
    ${STATUS} =     set complex contract locked status      ${CONTRACT LOCKED STATUS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Contracts Grid First Row Contract Status Change Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click contracts grid first row contract status change button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Change Contract Status Radio Button
    [Arguments]     ${CONTRACT STATUS}
    ${STATUS} =     set variable    False
    ${STATUS} =     click change contract status radio button       ${CONTRACT STATUS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Change Contract Status Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click change contract status save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Contracts Grid Signature Date
    ${STATUS} =     set variable    False
    ${STATUS} =     set contracts grid signature date
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Unlock Contracts Grid First Row
    ${STATUS} =     set variable    False
    ${STATUS} =     unlock contracts grid first row
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Contracts Grid First Row Contract Name
    ${STATUS} =     set variable    False
    ${STATUS} =     click contracts grid first row contract name
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Edit Contract Name Is Disabled
    ${STATUS} =     set variable    False
    ${STATUS} =     is edit contract name disabled
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Edit Contract Name Is Enable
    ${STATUS} =     set variable    True
    ${STATUS} =     is edit contract name disabled
    should not be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='True'    Log Screenshot

Verify Click Contract Workflow Link
    ${STATUS} =     set variable    False
    ${STATUS} =     click contract workflow link
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Change Contract Locked Status Radio Button
    [Arguments]     ${CONTRACT LOCKED STATUS}
    ${STATUS} =     set variable    False
    ${STATUS} =     click change contract locked status radio button    ${CONTRACT LOCKED STATUS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Group Commitment
    ${STATUS} =     set variable    False
    ${STATUS} =     set group commitment
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Subgroup Commitment
    ${STATUS} =     set variable    False
    ${STATUS} =     set subgroup commitment
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Value In Shortfall Rates Grid Column
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set value in shortfall rates grid column       ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Move Available Virtual Countries To Destination
    [Arguments]     ${COUNTRY NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     move available virtual countries to destination     ${COUNTRY NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Created Contract Name
    ${CONTRACT NAME} =     get created contract name
    log       ${CONTRACT NAME}
    return from keyword         ${CONTRACT NAME}

Verify Click Complex Contract Dashboard Link
    ${STATUS} =     set variable    False
    ${STATUS} =     click complex contract dashboard link
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Contract Name For Search
    [Arguments]     ${CONTRACT NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set contract name for search       ${CONTRACT NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Detail Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     click detail tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click First Row Add Product Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click first row add product button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Rate Type Checkboxes Are Disabled By Switching Iframe
    ${STATUS} =     set variable    False
    ${STATUS} =     are rate type checkboxes disabled       ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Aggregate Product Name By Switching Iframe
    [Arguments]     ${AGGREGATE PRODUCT PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set aggregate product name      ${AGGREGATE PRODUCT PREFIX}     ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Aggregate Product Abbreviation By Switching Iframe
    [Arguments]     ${AGGREGATE PRODUCT PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set aggregate product abbreviation      ${AGGREGATE PRODUCT PREFIX}     ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Create Aggregation Group Save Button By Switching Iframe
    ${STATUS} =     set variable    False
    ${STATUS} =     click create aggregation group save button      ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Complex Contract Wizard Next Button By Switching Iframe
    ${STATUS} =     set variable    False
    ${STATUS} =     click complex contract wizard next button       ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Traffic Direction By Switching Iframe
    [Arguments]     ${TRAFFIC DIRECTION}
    ${STATUS} =     set variable    False
    ${STATUS} =     IXConnect.set traffic direction       ${TRAFFIC DIRECTION}      ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Check Traffic Type By Switching Iframe
    [Arguments]     @{TRAFFIC TYPE LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     check traffic type      ${TRUE}     @{TRAFFIC TYPE LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Check Rate Type By Switching Iframe
    [Arguments]     @{RATE TYPE LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     check rate type      ${TRUE}        @{RATE TYPE LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Aggregation Rules Tab By Switching Iframe
    [Arguments]     ${TAB NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     select aggregation rules tab        ${TAB NAME}     ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Move Available Service To Destination By Switching Iframe
    ${STATUS} =     set variable    False
    ${STATUS} =     move available service to destination       ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Move Available Countries To Destination Deselecting First Item By Switching Iframe
    [Arguments]     ${COUNTRY NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     IXConnect.move available countries to destination     ${COUNTRY NAME}     ${TRUE}     ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Move Available Commercial Trunk To Destination By Switching Iframe
    ${STATUS} =     set variable    False
    ${STATUS} =     move available commercial trunk to destination      ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Origin Set By Switching Iframe
    [Arguments]     ${ORIGIN SET}
    ${STATUS} =     set variable    False
    ${STATUS} =     IXConnect.set origin set     ${ORIGIN SET}      ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Move Available Settlement Origin To Destination By Switching Iframe
    ${STATUS} =     set variable    False
    ${STATUS} =     move available settlement origin to destination       ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Aggregation Rules Grid First Row Checkbox By Switching Iframe
    ${STATUS} =     set variable    False
    ${STATUS} =     select aggregation rules grid first row checkbox        ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Aggregate Rules Exit Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click aggregate rules exit button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Complex Contract Worklist Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click complex contract worklist button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Filters Collapsible Arrow Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click filters collapsible arrow button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Specific Field On Complex Contract Worklist Is Available
    [Arguments]    ${FILED NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is specific field on complex contract worklist present      ${FILED NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Complex Contract Worklist Contract Status
    [Arguments]     ${CONTRACT STATUS}
    ${STATUS} =     set variable    False
    ${STATUS} =     set complex contract worklist contract status      ${CONTRACT STATUS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Complex Contract Worklist Go Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click complex contract worklist go button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Complex Contract Worklist Grid First Row Contract
    ${STATUS} =     set variable    False
    ${STATUS} =     click complex contract worklist grid first row contract
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Complex Contract Management First Row Workflow Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click complex contract management first row workflow button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Specific Column On Complex Contract Management Grid Is Available
    [Arguments]    ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is specific column on complex contract management grid present      ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Complex Management Grid Signature Date
    ${STATUS} =     set variable    False
    ${STATUS} =     set complex contract management grid signature date
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Complex Contract Management Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click complex contract management save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Complex Contract Worklist Clear Sections Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click complex contract worklist clear sections button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Specific Column On Complex Contract Worklist Grid Is Available
    [Arguments]    ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is specific column on complex contract worklist grid present      ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Contract Report Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click contract report button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Contract Version Submit Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click contract version submit button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Preview Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click preview button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Export To Excel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click export to excel button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Close Window And Switch To Previous Window
    ${STATUS} =     set variable    False
    ${STATUS} =     close window and switch to previous window
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Contract Simulator Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click contract simulator button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Specific Search Field On Contract Simulator Page Is Available
    [Arguments]    ${FIELD NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is contract simulator specific search field present      ${FIELD NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Contract Simulator Status For Search
    [Arguments]     @{STATUS LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     set contract simulator status for search     @{STATUS LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Contract Simulator Search Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click contract simulator search button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Contract Simulator Download Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click contract simulator download button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Specific Field On Download New Simulator Pop Up Is Available
    [Arguments]    ${FIELD NAME}        ${LABEL}
    ${STATUS} =     set variable    False
    ${STATUS} =     is specific field present on download new simulator pop up      ${FIELD NAME}       ${LABEL}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Contract Simulator Cancel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click contract simulator cancel button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Download New Simulator Carrier
    [Arguments]     ${CARRIER NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set download new simulator carrier     ${CARRIER NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Download New Simulator Revenue Country
    [Arguments]     @{COUNTRY NAME LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     set download new simulator revenue country     @{COUNTRY NAME LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Download New Simulator Download Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click download new simulator download button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Grace Period From Dropdown
    [Arguments]     ${GRACE PERIOD DROPDOWN ITEM}
    ${STATUS} =     set variable    False
    ${STATUS} =     set grace period from dropdown       ${GRACE PERIOD DROPDOWN ITEM}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Aggregation Group Grace Period
    [Arguments]     ${GRACE PERIOD VALUE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set aggregate group grace period      ${GRACE PERIOD VALUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Switch To UpperList Frame
    ${STATUS} =     set variable    False
    ${STATUS} =     switch to upperlist frame
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Network Trunk Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     select network trunk submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Trunk Letters
    [Arguments]     ${TRUNK LETTERS}
    ${STATUS} =     set variable    False
    ${STATUS} =     set trunk letters       ${TRUNK LETTERS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Expand Switch Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click expand switch button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Trunk Name for Details
    [Arguments]     ${TRUNK NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     click trunk name for details        ${TRUNK NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Trunk Transmission Type
    [Arguments]     ${TRANSMISSION TYPE}
    ${ACTUAL TRANSMISSION TYPE} =     get transmission type
    log       ${ACTUAL TRANSMISSION TYPE}
    should be equal     ${ACTUAL TRANSMISSION TYPE}     ${TRANSMISSION TYPE}
    [Teardown]      run keyword unless      '${TRANSMISSION TYPE}'=='${ACTUAL TRANSMISSION TYPE}'    Log Screenshot

Verify Set Contract Begin Date For Search
    [Arguments]     ${BEGIN DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set contract begin date for search     ${BEGIN DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Contract End Date For Search
    [Arguments]     ${END DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set contract end date for search     ${END DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Number Plan Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select number plan tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Add Number Plan Grid First Row Export Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click add number plan grid first row export button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Copy From Existing Complex Contract
    ${STATUS} =     set variable    False
    ${STATUS} =     click copy from existing complex contract
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Complex Contract Source Account
    [Arguments]     ${CONTRACT ACCOUNT}
    ${STATUS} =     set variable    False
    ${STATUS} =     set copy complex contract source_account     ${CONTRACT ACCOUNT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Complex Contract Target Account
    [Arguments]     ${CONTRACT ACCOUNT}
    ${STATUS} =     set variable    False
    ${STATUS} =     set copy complex contract target account     ${CONTRACT ACCOUNT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Complex Contract Source Contract
    [Arguments]     ${SOURCE CONTRACT}
    ${STATUS} =     set variable    False
    ${STATUS} =     set copy complex contract source contract    ${SOURCE CONTRACT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Complex Contract Copy Direction
    [Arguments]     ${DIRECTION}
    ${STATUS} =     set variable    False
    ${STATUS} =     set copy contract copy direction    ${DIRECTION}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Copy Contract Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click copy contract save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Aggregation Groups Mapping Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select aggregation groups mapping tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Aggregation Groups Mapping Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click aggregation groups mapping save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Commercial Trunk Mapping Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select commercial trunk mapping tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Commercial Trunk Mapping Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click commercial trunk mapping save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Number Plan Mapping Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select number plan mapping tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Target Number Plan
    [Arguments]     ${NUMBER PLAN PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set target number plan       ${NUMBER PLAN PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Number Plan Mapping Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click number plan mapping save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Rate Plan Mapping Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select rate plan mapping tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Rate Plan Mapping Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click rate plan mapping save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Carrier Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     IXConnect.select carrier submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Letters For Created Carrier Search
    [Arguments]         ${CREATED CARRIER NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set letters for search      ${CREATED CARRIER NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Carrier Account First Plus Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click carrier account first plus button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Other Rate Plan First Plus Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click other rate plan first plus button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Other Rate Plan First Book Icon Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click other rate plan first book icon button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Product Mapping Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     select product mapping submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Product Mapping Go Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click product mapping go button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Product Mapping Grid First Row Selling Product
    ${SELLING PRODUCT} =     get product mapping grid first row selling product
    log     ${SELLING PRODUCT}
    should not be equal     ${SELLING PRODUCT}      ''
    return from keyword     ${SELLING PRODUCT}
    [Teardown]      run keyword if    '${SELLING PRODUCT}'==''    Log Screenshot

Verify Click Selling Product Browse Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click selling product browse button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set First Letter With Value
    [Arguments]     ${FIRST LETTER}
    ${STATUS} =     set variable    False
    ${STATUS} =     set first letter        ${FIRST LETTER}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Selling Product
    [Arguments]     ${SELLING PRODUCT}
    ${STATUS} =     set variable    False
    ${STATUS} =     select selling product      ${SELLING PRODUCT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Make Routing to Selling Percentage to 100
    ${STATUS} =     set variable    False
    ${STATUS} =     make routing to selling percentage to 100
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click First Account Name
    ${STATUS} =     set variable    False
    ${STATUS} =     click first account name
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Buyer Browse Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click buyer browse button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Seller Browse Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click seller browse button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Account Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click account save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Buyer Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select buyer tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Seller Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select seller tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify User First Name
    [Arguments]     ${FIRST NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     verify first name       ${FIRST NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify User Last Name
    [Arguments]     ${LAST NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     verify last name        ${LAST NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Contract Simulator Search Button Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is contract simulator search button present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Contract Simulator Download Button Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is contract simulator download button present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Contract Simulator Upload Button Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is contract simulator upload button present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Contract Simulator Download Button Is Not Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is contract simulator download button not present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Contract Simulator Upload Button Is Not Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is contract simulator upload button not present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Contract Submenu Is Not Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is contract submenu not present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Switch To Default Window
    ${STATUS} =     set variable    False
    ${STATUS} =     switch to default window
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Read Data From Upload Excel File
    [Arguments]     ${UPLOAD FILE PATH}
    [Documentation]     There are multiple keywords with the same name in another page resource. To avoid conflicts, class name has been mentioned to specify the targetted method.
    ${STATUS} =     set variable    False
    ${STATUS} =     IXConnect.read data from upload excel file        ${UPLOAD FILE PATH}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Compare Rates Grid Product With Excel Data
    ${STATUS} =     set variable    False
    ${STATUS} =     compare rates grid product with excel data
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click On First Route Class
    ${STATUS} =     set variable    False
    ${STATUS} =     click on first route class
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Specific Mandatory Field On Route Class Page Is Available
    [Arguments]     ${FILED NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is specific mandatory field on route class page present      ${FILED NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Service Level Is Created For Route Class
    [Arguments]     ${ROUTE CLASS NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is service level created for route class    ${ROUTE CLASS NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select First Inner Customer
    ${STATUS} =     set variable    False
    ${STATUS} =     select first inner customer
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Service Level Column Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is service level column present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click On Specific Tab In Agreement Page
    [Arguments]     ${TAB NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     click on specific tab in agreement page         ${TAB NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Specific Tab Is Remained Intact
    [Arguments]     ${TAB NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is specific tab remained intact         ${TAB NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot