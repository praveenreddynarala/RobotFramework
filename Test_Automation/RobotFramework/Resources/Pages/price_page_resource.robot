*** Settings ***
Documentation   Price Page Resource File With All Necessary Keywords.

Resource        ../common_resource.robot

Library         ../../../TestFramework/Libraries/RobotTests/Home.py
Library         ../../../TestFramework/Libraries/RobotTests/Price.py
Library         Collections

*** Variables ***
${EXPECTED PAGE TITLE}          Price
${ACTUAL PAGE TITLE}                        ${EMPTY}
${STATUS}                                   ${EMPTY}
${CREATED COST POLICY NAME}                 ${EMPTY}
${COST POLICY DETAILS}                      ${EMPTY}
${ROW DETAILS}                              ${EMPTY}
${USER DEFINED PARAMETER DESCRIPTION}       ${EMPTY}
${CREATED NEW COST POLICY NAME}             ${EMPTY}
${CREATED NEW PRICE POLICY NAME}            ${EMPTY}
${PREVIOUSLY CREATED COST POLICY}           ${EMPTY}
${REFERENCE PRICES COUNT}                   ${EMPTY}
${ROUTING DESTINATION}                      ${EMPTY}
${COST ELEMENTS GRID VALUE COLUMN VALUES}               ${EMPTY}
${COST FORECAST ELEMENT REPORTS GRID ROW DETAILS}       ${EMPTY}

*** Keywords ***
Click on Home Icon and Select 'Price' From Main Menu
    ${STATUS} =     set variable    False
    select price submenu
    ${STATUS} =     switch to price
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Page Title
    ${ACTUAL PAGE TITLE} =  get price page title
    should contain     ${ACTUAL PAGE TITLE}     ${EXPECTED PAGE TITLE}
    [Teardown]      run keyword unless     '${ACTUAL PAGE TITLE}'=='${EXPECTED PAGE TITLE}'    Log Screenshot

Verify The Price Dashboard Tab Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is price dashboard tab present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Cost Policies Tab Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is cost policies tab present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Price Policies Tab Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is price policies tab present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Country Groups link is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is country groups link present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Create Customer Price List link is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is create customer price list link present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Generate Reference Prices link is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is generate reference prices link present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Review Customer Price Exception Requests link is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is generate reference prices link present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Click on Cost Policies Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select cost policies tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The 'Create New Cost Policy' Button Is Present Under Customer Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     is create new cost policy present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The 'Fomulas' Button Is Present Under Customer Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     is formulas present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The 'User defined Parameters' Button Is Present Under Customer Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     is user defined parameters present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The 'Costs' Button Is Present Under Customer Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     is costs present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Filter Cost Policy Grid
    [Arguments]     ${COLUMN NAME TO FILTER}        ${CREATED NEW COST POLICY NAME}=None
    run keyword if      '${CREATED NEW COST POLICY NAME}'=='None'         Verify Get Created Cost Policy Name
    @{FILTER ITEM LIST} =       create list        ${CREATED NEW COST POLICY NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     grid filter details         ${COLUMN NAME TO FILTER}        @{FILTER ITEM LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Price Page Inline Action Button
    [Arguments]     ${CREATED NEW COST POLICY NAME}=None
    run keyword if      '${CREATED NEW COST POLICY NAME}'=='None'         Verify Get Created Cost Policy Name
    ${STATUS} =     set variable    False
    ${STATUS} =     click price page inline action button       ${CREATED NEW COST POLICY NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Price Page Inline Action Item
    [Arguments]     ${VIEW COST POLICY INLINE ITEM}
    ${STATUS} =     set variable    False
    ${STATUS} =     select price page inline action item       ${VIEW COST POLICY INLINE ITEM}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Selected Cost Policy Details
    [Arguments]     ${CREATED NEW COST POLICY NAME}=None
    run keyword if      '${CREATED NEW COST POLICY NAME}'=='None'         Verify Get Created Cost Policy Name
    ${STATUS} =     set variable    False
    ${STATUS} =     verify cost policy details       ${CREATED NEW COST POLICY NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Formulas Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click formulas button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Cost Forecast Elements Reports Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click cost forecast elements reports button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Cost Forecast Report Submit Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click cost forecast report submit button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Page Header of Cost Forecast Report Page
    ${STATUS} =     set variable    False
    ${STATUS} =     verify cost forecast report page header
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Formulas Page Inline Action Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click formulas page inline action button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Formulas Page Inline Action Item
    [Arguments]     ${EDIT FORMULA INLINE ITEM}
    ${STATUS} =     set variable    False
    ${STATUS} =     select price page inline action item       ${EDIT FORMULA INLINE ITEM}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Cost Formula
    [Arguments]     ${EDIT FORMULA VALUE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set cost formula       ${EDIT FORMULA VALUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Formula Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click formula save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Edited Formula After Saving
    [Arguments]     ${EDIT FORMULA VALUE}
    ${STATUS} =     set variable    False
    ${STATUS} =     verify edited formula       ${EDIT FORMULA VALUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Cost Policies Formulas Grid Row Checkbox
    [Arguments]     ${CREATED NEW COST POLICY NAME}=None
    run keyword if      '${CREATED NEW COST POLICY NAME}'=='None'         Verify Get Created Cost Policy Name
    @{COST POLICY LIST FOR FORMULA} =       create list        ${CREATED NEW COST POLICY NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     select cost policies formulas grid row checkbox     @{COST POLICY LIST FOR FORMULA}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Delete Formulas Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click delete formulas button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Note For Edit Formula
    ${STATUS} =     set variable    False
    ${STATUS} =     set note for edit formula
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Multiple Rows From Cost Policies Costs Grid
    ${STATUS} =     set variable    False
    ${STATUS} =     select multiple rows from cost policies costs grid
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Create New Cost Policy
    ${STATUS} =     set variable    False
    ${STATUS} =     click create new cost policy button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Cost Policy Name
    [Arguments]     ${COST POLICY NAME PREFIX}
    ${CREATED COST POLICY NAME} =        set cost policy name       ${COST POLICY NAME PREFIX}
    log         ${CREATED COST POLICY NAME}
    set suite variable      ${CREATED COST POLICY NAME}

Verify Set Cost Policy Abbreviation
    ${STATUS} =     set variable    False
    ${STATUS} =     set cost policy abbreviation
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Cost Policy Status
    [Arguments]     ${COST POLICY ACTIVE STATUS}
    ${STATUS} =     set variable    False
    ${STATUS} =     set cost policy status      ${COST POLICY ACTIVE STATUS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Cost Policy Type
    [Arguments]     ${COST POLICY TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set cost policy type      ${COST POLICY TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Cost Policy Call Type
    [Arguments]     ${CALL TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set cost policy call type      ${CALL TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Cost Policy Route Class
    [Arguments]     ${ROUTE CLASS}
    ${STATUS} =     set variable    False
    ${STATUS} =     set cost policy route class      ${ROUTE CLASS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Create Cost Policy Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click create cost policy save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Filter Cost Policy Grid With Created Cost Policy
    [Arguments]     ${COST POLICY COLUMN NAME}=None
    run keyword if      '${CREATED NEW COST POLICY NAME}'=='None'         Verify Get Created Cost Policy Name
    @{FILTER ITEM LIST} =       create list        ${CREATED NEW COST POLICY NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     grid filter details     ${COST POLICY COLUMN NAME}      @{FILTER ITEM LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Cost Policy Grid Inline Action Button
    [Arguments]     ${COST POLICY COLUMN NAME}=None
    run keyword if      '${CREATED NEW COST POLICY NAME}'=='None'         Verify Get Created Cost Policy Name
    ${STATUS} =     set variable    False
    ${STATUS} =     click cost policy grid inline action button     ${CREATED NEW COST POLICY NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Cost Policy Grid Inline Item
    [Arguments]     ${VIEW COST POLICY INLINE ITEM}
    ${STATUS} =     set variable    False
    ${STATUS} =     Price.select inline action item     ${VIEW COST POLICY INLINE ITEM}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Edit Cost Policy Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click edit cost policy button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Change Cost Policy Status To Inactive
    [Arguments]     ${COST POLICY INACTIVE STATUS}
    ${STATUS} =     set variable    False
    ${STATUS} =     edit cost policy status      ${COST POLICY INACTIVE STATUS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Save Cost Policy Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click save cost policy button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Close Cost Policy Tab
    [Arguments]     ${COST POLICY TAB NAME TEXT}
    ${STATUS} =     set variable    False
    ${STATUS} =     Price.close current tab      ${COST POLICY TAB NAME TEXT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Clear Cost Policy Column Filter
    [Arguments]     ${COST POLICY COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     clear filter      ${COST POLICY COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Clear Status Column Filter
    [Arguments]     ${STATUS COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     clear filter      ${STATUS COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Clear All Table Filter
    [Arguments]     ${COST POLICY COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     clear all table filter      ${COST POLICY COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Cost Policy Status Is Inactive
    [Arguments]     ${CREATED NEW COST POLICY NAME}=None
    run keyword if      '${CREATED NEW COST POLICY NAME}'=='None'         Verify Get Created Cost Policy Name
    ${STATUS} =     set variable    False
    ${STATUS} =     is cost policy status inactive      ${CREATED NEW COST POLICY NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Cost Policy Details From Database
    [Arguments]     ${DATABASE SERVER}      ${DATABASE}      ${DATABASE USERNAME}      ${DATABASE PASSWORD}
    ${COST POLICY DETAILS} =     get cost policy details from database     ${CREATED COST POLICY NAME}     ${DATABASE SERVER}      ${DATABASE}      ${DATABASE USERNAME}      ${DATABASE PASSWORD}
    set suite variable      ${COST POLICY DETAILS}
    ${LENGTH} =     get length      ${COST POLICY DETAILS}
    [Teardown]      run keyword if    '${LENGTH}'=='0'    Log Screenshot

Verify Cost Policy Name In Database
    ${ACTUAL COST POLICY NAME} =   Get From Dictionary     ${COST POLICY DETAILS}      Source
    should be equal     ${ACTUAL COST POLICY NAME}      ${CREATED COST POLICY NAME}
    [Teardown]      run keyword unless     '${ACTUAL COST POLICY NAME}'=='${CREATED COST POLICY NAME}'    Log Screenshot

Verify Call Type In Database
    [Arguments]     ${CALL TYPE}
    ${ACTUAL CALL TYPE} =   Get From Dictionary     ${COST POLICY DETAILS}      CallType
    should be equal     ${ACTUAL CALL TYPE}      ${CALL TYPE}
    [Teardown]      run keyword unless     '${ACTUAL CALL TYPE}'=='${CALL TYPE}'    Log Screenshot

Verify Route Class In Database
    [Arguments]     ${ROUTE CLASS}
    ${ACTUAL ROUTE CLASS} =   Get From Dictionary     ${COST POLICY DETAILS}      RouteClass
    should be equal     ${ACTUAL ROUTE CLASS}      ${ROUTE CLASS}
    [Teardown]      run keyword unless     '${ACTUAL ROUTE CLASS}'=='${ROUTE CLASS}'    Log Screenshot

Verify Status Inactive In Database
    [Arguments]         ${DATABASE SERVER}      ${DATABASE}      ${DATABASE USERNAME}      ${DATABASE PASSWORD}
    ${ACTUAL STATUS} =      get cost policy status from database        ${CREATED COST POLICY NAME}     ${DATABASE SERVER}      ${DATABASE}      ${DATABASE USERNAME}      ${DATABASE PASSWORD}
    should be equal     ${ACTUAL STATUS}      Inactive
    [Teardown]      run keyword unless     '${ACTUAL STATUS}'=='Inactive'    Log Screenshot

Verify Set Cost Policy
    [Arguments]     ${CREATED NEW COST POLICY NAME}=None
    run keyword if      '${CREATED NEW COST POLICY NAME}'=='None'         Verify Get Created Cost Policy Name
    @{COST POLICY LIST FOR COSTS} =       create list        ${CREATED NEW COST POLICY NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set cost policy     @{COST POLICY LIST FOR COSTS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Search Button
    ${STATUS} =     set variable    False
    ${STATUS} =     Price.click search button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Create New Cost Policy Formula Dropdown
    ${STATUS} =     set variable    False
    ${STATUS} =     click create new cost policy formula dropdown
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Is Create Destination Formula Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is create destination formula present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Is Create Global Formula Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is create global formula present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Is Create Category Formula Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is create category formula present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Create Destination Formula
    ${STATUS} =     set variable    False
    ${STATUS} =     click create destination formula
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Create Global Formula
    ${STATUS} =     set variable    False
    ${STATUS} =     click create global formula
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Create Category Formula
    ${STATUS} =     set variable    False
    ${STATUS} =     click create category formula
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Destination of Formula Pop Up
    [Arguments]     ${DESTINATION FOR FORMULA POP UP}
    ${STATUS} =     set variable    False
    ${STATUS} =     set destination of formula pop up       ${DESTINATION FOR FORMULA POP UP}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Rate Type
    [Arguments]     ${RATE TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     Price.set rate type       ${RATE TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Begin Date
    [Arguments]     ${BEGIN DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     Price.set begin date      ${BEGIN DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Select Date
    [Arguments]     ${SELECT DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     Price.set select date     ${SELECT DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Category of Formula Pop Up
    [Arguments]     ${CATEGORY FOR FORMULA POP UP}
    ${STATUS} =     set variable    False
    ${STATUS} =     set category of formula pop up          ${CATEGORY FOR FORMULA POP UP}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Calculate Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click calculate button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Create Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click create button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Filter Cost Policies Formulas Grid Notes Column
    ${STATUS} =     set variable    False
    ${STATUS} =     filter cost policies formulas grid notes column
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Clear Filter of Cost Policies Grid
    [Arguments]     ${COLUMN NAME TO CLEAR FILTER}
    ${STATUS} =     set variable    False
    ${STATUS} =     clear filter of cost policies grid      ${COLUMN NAME TO CLEAR FILTER}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Cost Policies Formulas Grid Row Details
    ${ROW DETAILS} =     get cost policies formulas grid row details
    set suite variable      ${ROW DETAILS}
    ${LENGTH} =     get length      ${ROW DETAILS}
    [Teardown]      run keyword if    '${LENGTH}'=='0'    Log Screenshot

Verify Formula Type
    [Arguments]     ${FORMULA TYPE}
    ${ACTUAL FORMULA TYPE} =   Get From Dictionary     ${ROW DETAILS}      Formula Type
    should be equal     ${ACTUAL FORMULA TYPE}      ${FORMULA TYPE}
    [Teardown]      run keyword unless     '${ACTUAL FORMULA TYPE}'=='${FORMULA TYPE}'    Log Screenshot

Verify Formula
    [Arguments]     ${FORMULA}
    ${ACTUAL FORMULA} =   Get From Dictionary     ${ROW DETAILS}      Formula
    should be equal     ${ACTUAL FORMULA}     ${FORMULA}
    [Teardown]      run keyword unless     '${ACTUAL FORMULA}'=='${FORMULA}'    Log Screenshot

Verify Click Costs Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click costs button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Bulk Edit Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click bulk edit button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Bulk Edit Submit Button
    ${STATUS} =     set variable    False
    ${STATUS} =     Price.click bulk edit submit button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Future Date At End Date
    ${STATUS} =     set variable    False
    ${STATUS} =     set future date at end date
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Save Changes Button
    ${STATUS} =     set variable    False
    ${STATUS} =     Price.click save changes button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click User Defined Parameters Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click user defined parameters button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Value In User Defined Parameters Grid Column
    [Arguments]     ${COLUMN NAME}      ${COLUMN VALUE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set value in user defined parameters grid column        ${COLUMN NAME}       ${COLUMN VALUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Value In Value Column
    [Arguments]     ${VALUE FOR UPDATING VALUE COLUMN}
    ${STATUS} =     set variable    False
    ${STATUS} =     set value in value column      ${VALUE FOR UPDATING VALUE COLUMN}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Value In Description Column
    [Arguments]     ${DESCRIPTION PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set value in description column     ${DESCRIPTION PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Value In End Date Column
    [Arguments]     ${VALUE FOR UPDATING END DATE COLUMN}
    ${STATUS} =     set variable    False
    ${STATUS} =     set value in end date column      ${VALUE FOR UPDATING END DATE COLUMN}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Filter User Defined Parameters Grid With Unique Description
    ${STATUS} =     set variable    False
    ${STATUS} =     filter user defined parameters grid with unique description
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Updated Description In The Grid
    ${STATUS} =     set variable    False
    ${STATUS} =     verify updated description
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Updated Value
    [Arguments]     ${VALUE FOR UPDATING VALUE COLUMN}
    ${UPDATED VALUE} =     get updated value
    should be equal     ${UPDATED VALUE}        ${VALUE FOR UPDATING VALUE COLUMN}
    [Teardown]      run keyword unless      '${UPDATED VALUE}'=='${VALUE FOR UPDATING VALUE COLUMN}'    Log Screenshot

Verify Updated End Date
    [Arguments]     ${VALUE FOR UPDATING END DATE COLUMN}
    ${UPDATED END DATE} =     get updated end date
    should be equal     ${UPDATED END DATE}        ${VALUE FOR UPDATING END DATE COLUMN}
    [Teardown]      run keyword unless      '${UPDATED END DATE}'=='${VALUE FOR UPDATING END DATE COLUMN}'    Log Screenshot

Verify Select Cost Policy For Copy Formulas
    [Arguments]     ${CREATED NEW COST POLICY NAME}=None
    run keyword if      '${CREATED NEW COST POLICY NAME}'=='None'         Verify Get Created Cost Policy Name
    @{COST POLICY LIST FOR COPY FORMULAS} =       create list        ${CREATED NEW COST POLICY NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     select cost policy for copy formulas        @{COST POLICY LIST FOR COPY FORMULAS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Formulas Page Search Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click formulas page search button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Copy Formulas Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click copy formulas button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Check New Start And End Date Radio Button
    ${STATUS} =     set variable    False
    ${STATUS} =     check new start and end date radio button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set New Start Date
    [Arguments]     ${NEW START DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set new start date      ${NEW START DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set New End Date
    ${STATUS} =     set variable    False
    ${STATUS} =     set new end date
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Cost Policies From Available Policies
    @{AVAILABLE POLICIES TO COPY FORMULAS} =    create list         ${PREVIOUSLY CREATED COST POLICY}
    ${STATUS} =     set variable    False
    ${STATUS} =     select cost policies from available policies        @{AVAILABLE POLICIES TO COPY FORMULAS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Next Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click next button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Copy Cost Formulas Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click copy cost formulas save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Grid Filter With Notes
    ${STATUS} =     set variable   False
    ${STATUS} =     grid filter formulas with notes
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Price Policies Formulas Grid Row Details
    ${ROW DETAILS} =     get price policies formulas grid row details
    set suite variable      ${ROW DETAILS}
    ${LENGTH} =     get length      ${ROW DETAILS}
    [Teardown]      run keyword if    '${LENGTH}'=='0'    Log Screenshot

Verify Select Price Policies Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select price policies tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Price Policy
    [Arguments]     ${CREATED NEW COST POLICY NAME}=None
    run keyword if      '${CREATED NEW COST POLICY NAME}'=='None'         Verify Get Created Cost Policy Name
    @{PRICE POLICY} =       create list     ${CREATED NEW COST POLICY NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set price policy        @{PRICE POLICY}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Formula Target
    [Arguments]     ${TARGET}
    ${STATUS} =     set variable    False
    ${STATUS} =     set formula target      ${TARGET}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Formula Minimum
    [Arguments]     ${MINIMUM}
    ${STATUS} =     set variable    False
    ${STATUS} =     set formula minimum     ${MINIMUM}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Formula Cost
    [Arguments]     ${COST}
    ${STATUS} =     set variable    False
    ${STATUS} =     set formula cost        ${COST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Policies Formulas Grid Inline Action Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click policies formulas grid inline action button       ${CREATED NEW COST POLICY NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Inline Action Item
    [Arguments]     ${ITEM NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     Price.select inline action item       ${ITEM NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Save Button For Edit
    ${STATUS} =     set variable    False
    ${STATUS} =     click save button for edit
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Formula Target
    [Arguments]     ${TARGET}
    ${ACTUAL TARGET} =   Get From Dictionary     ${ROW DETAILS}      Target
    should be equal     ${ACTUAL TARGET}     ${TARGET}
    [Teardown]      run keyword unless     '${ACTUAL TARGET}'=='${TARGET}'    Log Screenshot

Verify Formula Minimum
    [Arguments]     ${MINIMUM}
    ${ACTUAL MINIMUM} =   Get From Dictionary     ${ROW DETAILS}      Minimum
    should be equal     ${ACTUAL MINIMUM}     ${MINIMUM}
    [Teardown]      run keyword unless     '${ACTUAL MINIMUM}'=='${MINIMUM}'    Log Screenshot

Verify Formula Cost
    [Arguments]     ${COST}
    ${ACTUAL COST} =   Get From Dictionary     ${ROW DETAILS}      Cost
    should be equal     ${ACTUAL COST}     ${COST}
    [Teardown]      run keyword unless     '${ACTUAL COST}'=='${COST}'    Log Screenshot

Verify Get Price Policy Details From Database
    [Arguments]     ${DATABASE SERVER}      ${DATABASE}      ${DATABASE USERNAME}      ${DATABASE PASSWORD}
    ${COST POLICY DETAILS} =     get price policy details from database     ${CREATED COST POLICY NAME}     ${DATABASE SERVER}      ${DATABASE}      ${DATABASE USERNAME}      ${DATABASE PASSWORD}
    set suite variable      ${COST POLICY DETAILS}
    ${LENGTH} =     get length      ${COST POLICY DETAILS}
    [Teardown]      run keyword if    '${LENGTH}'=='0'    Log Screenshot

Verify Price Policy Status Inactive In Database
    [Arguments]         ${DATABASE SERVER}      ${DATABASE}      ${DATABASE USERNAME}      ${DATABASE PASSWORD}
    ${ACTUAL STATUS} =      get price policy status from database        ${CREATED COST POLICY NAME}     ${DATABASE SERVER}      ${DATABASE}      ${DATABASE USERNAME}      ${DATABASE PASSWORD}
    should be equal     ${ACTUAL STATUS}      Inactive
    [Teardown]      run keyword unless     '${ACTUAL STATUS}'=='Inactive'    Log Screenshot

Verify Click Price Overrides Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click price overrides button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Multiple Items From Price Overrides Grid
    ${STATUS} =     set variable    False
    ${STATUS} =     select price overrides grid row checkbox
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Price Policy Grid First Row Inline Action Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click price policy grid first row inline action button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify View Price Policy Page Is Loaded Properly
    ${STATUS} =     set variable    False
    ${STATUS} =     is view price policy page loaded properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Review Customer Price Exception Requests Link
    ${STATUS} =     set variable    False
    ${STATUS} =     click review customer price exception requests
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Review Customer Price Exception Requests Page Is Loaded Properly
    ${STATUS} =     set variable    False
    ${STATUS} =     is review customer price exception requests page loaded properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Price Overrides Bulk Edit Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click price overrides bulk edit button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Price Overrides Bulk Edit End Date
    [Arguments]     ${PRICE OVERRIDES END DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set price overrides bulk edit end date        ${PRICE OVERRIDES END DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Move Available Policies To Destination
    @{POLICIES TO MOVE} =       create list         ${PREVIOUSLY CREATED COST POLICY}
    Log     @{POLICIES TO MOVE}
    ${STATUS} =     set variable    False
    ${STATUS} =     move available policies to destination      @{POLICIES TO MOVE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Second Page Next Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click second page next button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Create New User Defined Parameter Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click create new user defined parameter button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Price Policy For Create User Defined Parameter
    [Arguments]     ${CREATED NEW COST POLICY NAME}=None
    run keyword if      '${CREATED NEW COST POLICY NAME}'=='None'         Verify Get Created Cost Policy Name
    ${STATUS} =     set variable    False
    ${STATUS} =     set price policy for create user defined parameter      ${CREATED NEW COST POLICY NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Parameter For Create User Defined Parameter
    [Arguments]     ${PARAMETER COLUMN NAME}        ${PARAMETER PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set parameter for new user defined parameters        ${PARAMETER COLUMN NAME}        ${PARAMETER PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Description For Create User Defined Parameter
    [Arguments]     ${DESCRIPTION COLUMN NAME}      ${DESCRIPTION PREFIX}
    ${USER DEFINED PARAMETER DESCRIPTION} =     set description for new user defined parameters        ${DESCRIPTION COLUMN NAME}      ${DESCRIPTION PREFIX}
    set suite variable      ${USER DEFINED PARAMETER DESCRIPTION}
    log     ${USER DEFINED PARAMETER DESCRIPTION}

Verify Set Value For Create User Defined Parameter
    [Arguments]     ${VALUE COLUMN NAME}        ${VALUE FOR CREATE USER DEFINED PARAMETER}
    ${STATUS} =     set variable    False
    ${STATUS} =     set value for create new user defined parameters        ${VALUE COLUMN NAME}        ${VALUE FOR CREATE USER DEFINED PARAMETER}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Start Date For Create User Defined Parameter
    [Arguments]     ${START DATE COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set value in grid for new user defined parameter        ${START DATE COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Filter User Defined Parameters Grid
    [Arguments]     ${DESCRIPTION COLUMN NAME}
    ${STATUS} =     set variable    False
    @{FILTER ITEM LIST} =       create list        ${USER DEFINED PARAMETER DESCRIPTION}
    ${STATUS} =     grid filter details        ${DESCRIPTION COLUMN NAME}      @{FILTER ITEM LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Edit Description For User Defined Parameter
    [Arguments]     ${DESCRIPTION COLUMN NAME}      ${EDIT DESCRIPTION VALUE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set value for create new user defined parameters        ${DESCRIPTION COLUMN NAME}      ${EDIT DESCRIPTION VALUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Edit End Date For New User Defined Parameter
    [Arguments]     ${END DATE COLUMN NAME}      ${END DATE VALUE}
    ${STATUS} =     set variable    False
    ${STATUS} =     edit grid column for new user defined parameter        ${END DATE COLUMN NAME}      ${END DATE VALUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Generate Reference Prices Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click generate reference prices button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Reference Price Policies
    [Arguments]     ${CREATED NEW COST POLICY NAME}=None
    run keyword if      '${CREATED NEW COST POLICY NAME}'=='None'         Verify Get Created Cost Policy Name
    @{REFERENCE PRICE POLICY LIST} =       create list     ${CREATED NEW COST POLICY NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     select reference price policies      @{REFERENCE PRICE POLICY LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Available Destinations
    [Arguments]     @{AVAILABLE DESTINATIONS LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     select available destinations      @{AVAILABLE DESTINATIONS LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Generate Reference Prices Submit Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click generate reference prices submit button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select User Defined Parameters Grid Row Checkbox
    [Arguments]     ${CREATED NEW COST POLICY NAME}=None
    run keyword if      '${CREATED NEW COST POLICY NAME}'=='None'         Verify Get Created Cost Policy Name
    @{POLICIES TO SELECT} =       create list       ${CREATED NEW COST POLICY NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     select user defined parameters grid row checkbox        @{POLICIES TO SELECT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Copy Parameter Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click copy parameter button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Reference Prices Button
    ${STATUS} =     set variable    False
    ${STATUS} =     Price.click reference prices button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Status For Reference Prices Search
    [Arguments]     @{REFERENCE PRICE STATUS LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     Price.select status for reference prices search      @{REFERENCE PRICE STATUS LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Reference Prices Search Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click reference prices search button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Status For Reference Prices
    [Arguments]     ${STATUS TO SET}
    ${STATUS} =     set variable    False
    ${STATUS} =     set status for reference prices      ${STATUS TO SET}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Reference Prices Save Changes Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click reference prices save changes button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Reference Prices Bulk Edit Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click reference prices bulk edit button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Reference Prices Grid Multiple Rows
    ${STATUS} =     set variable    False
    ${STATUS} =     select reference prices grid multiple rows
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Note For Bulk Edit
    ${STATUS} =     set variable    False
    ${STATUS} =     set note for bulk edit
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Close Current Tab
    [Arguments]     ${TAB NAME TO CLOSE}
    ${STATUS} =     set variable    False
    ${STATUS} =     Price.close current tab     ${TAB NAME TO CLOSE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Costs Page Search Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click costs page search button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Upload Costs Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click upload costs button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Cost Policy For Upload
    ${STATUS} =     set variable    False
    ${CREATED NEW COST POLICY NAME} =       get created new cost policy name
    ${STATUS} =     set cost policy for upload      ${CREATED NEW COST POLICY NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Costs Browse Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click costs browse button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Completed Status Green Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click completed status green button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Completed Jobs Count
    ${JOBS COUNT} =     get completed jobs count
    set suite variable      ${JOBS COUNT}
    log     ${JOBS COUNT}
    [Teardown]      run keyword if    '${JOBS COUNT}'==''    Log Screenshot

Verify Select The File To Be Uploaded
    [Arguments]     ${FILE PATH}
    ${STATUS} =     set variable    False
    ${STATUS} =     Price.select the file to be uploaded      ${FILE PATH}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Upload Button
    ${STATUS} =     set variable    False
    ${STATUS} =     Price.click upload button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Compare Completed Jobs Count After Upload
    ${STATUS} =     set variable    False
    ${STATUS} =     compare completed jobs count after upload
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Price Overrides Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select price overrides tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Upload Price Overrides Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click upload price overrides button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Price Overrides Completed Status Green Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click price overrides completed status green button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Status
    [Arguments]     @{STATUS LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     Price.set status      @{STATUS LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Price Exceptions Search Button
    ${STATUS} =     set variable    False
    ${STATUS} =     Price.click price exceptions search button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot
Verify Reference Prices Page Loaded Properly
    ${STATUS} =     set variable    False
    ${STATUS} =     is reference prices page loaded properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Reference Prices Total Number Of Records Returned
    ${STATUS} =     set variable    False
    ${STATUS} =     is reference prices total number of records returned
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Costs Number plan
    [Arguments]     ${NUMBER PLAN}
    ${STATUS} =     set variable    False
    ${STATUS} =     set costs number plan      ${NUMBER PLAN}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify select cost policy
    ${STATUS} =     set variable    False
    ${STATUS} =     select cost policies tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Cost Policy Grid First Row Inline Action Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click cost policy grid first row inline action button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Cost Policy Last Modified Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${LAST MODIFIED DATE VALUE} =    get cost policy last modified date
    log     ${LAST MODIFIED DATE VALUE}
    ${STATUS} =     validate date format         ${LAST MODIFIED DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Formulas Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select formulas tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Cost Policy Formulas Select Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${SELECT DATE VALUE} =    get cost policy formula select date
    log     ${SELECT DATE VALUE}
    ${STATUS} =     validate date format         ${SELECT DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Create Destination Formulas Begin Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${BEGIN DATE} =    get formula begin date
    log     ${BEGIN DATE}
    ${STATUS} =     validate date format         ${BEGIN DATE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Close Create Cost Policy Destination Screen
    ${STATUS} =     set variable    False
    ${STATUS} =     close create cost policy destination formula screen
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Formulas Grid Begin Date Column Value Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${BEGIN DATE} =    get formulas grid begin date column value
    log     ${BEGIN DATE}
    ${STATUS} =     validate date format         ${BEGIN DATE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Create Global Formulas Begin Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${BEGIN DATE} =    get formula begin date
    log     ${BEGIN DATE}
    ${STATUS} =     validate date format         ${BEGIN DATE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Close Create Global Formula Screen
    ${STATUS} =     set variable    False
    ${STATUS} =     close create cost policy destination formula screen
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Create Category Formulas Begin Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${BEGIN DATE} =    get formula begin date
    log     ${BEGIN DATE}
    ${STATUS} =     validate date format         ${BEGIN DATE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Close Create Category Formula Screen
    ${STATUS} =     set variable    False
    ${STATUS} =     close create cost policy destination formula screen
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select User Defined Parameters Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select user defined parameters tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify User Defined Parameters Select Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${SELECT DATE VALUE} =    get user defined parameter select date
    log     ${SELECT DATE VALUE}
    ${STATUS} =     validate date format         ${SELECT DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify User Defined Parameters Grid Value Column Value
    [Arguments]     ${LOCALE FOR CURRENCY FORMAT}
    ${ACTUAL VALUE} =    get user defined parameter grid value column value
    log     ${ACTUAL VALUE}
    ${STATUS} =     validate currency format         ${ACTUAL VALUE}          ${LOCALE FOR CURRENCY FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify User Defined Parameters Start Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE VALUE} =    get user defined parameter grid start date column value
    log     ${ACTUAL DATE VALUE}
    ${STATUS} =     validate date format         ${ACTUAL DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Costs Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select costs tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Costs Tab Select Date Value Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${SELECT DATE VALUE} =    get costs tab select date value
    log     ${SELECT DATE VALUE}
    ${STATUS} =     validate date format         ${SELECT DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Costs Tab Active On Date Value Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE VALUE} =    get active on date value
    log     ${ACTUAL DATE VALUE}
    ${STATUS} =     validate date format         ${ACTUAL DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Cost Upload Link
    ${STATUS} =     set variable    False
    ${STATUS} =     click cost upload link
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Registry From Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE VALUE} =    get registry from date value
    log     ${ACTUAL DATE VALUE}
    ${STATUS} =     validate date format         ${ACTUAL DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Registry To Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE VALUE} =    get registry to date value
    log     ${ACTUAL DATE VALUE}
    ${STATUS} =     validate date format         ${ACTUAL DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Reg Date Time Column Value Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE VALUE} =    get reg date time column value
    log     ${ACTUAL DATE VALUE}
    ${STATUS} =     validate date format         ${ACTUAL DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Process Begin Date Column Value Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE VALUE} =    get process begin date time column value
    log     ${ACTUAL DATE VALUE}
    ${STATUS} =     validate date format         ${ACTUAL DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Process End Date Column Value Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE VALUE} =    get process end date time column value
    log     ${ACTUAL DATE VALUE}
    ${STATUS} =     validate date format         ${ACTUAL DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Price Policy Formulas Select Date
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE VALUE} =    get cost policy formula select date
    log     ${ACTUAL DATE VALUE}
    ${STATUS} =     validate date format         ${ACTUAL DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Price Policy Formula Begin Date Column Value Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE VALUE} =    get price policy formulas grid begin date column value
    log     ${ACTUAL DATE VALUE}
    ${STATUS} =     validate date format         ${ACTUAL DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Price Policy Formula End Date Column Value Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE VALUE} =    get price policy formulas grid end date column value
    log     ${ACTUAL DATE VALUE}
    ${STATUS} =     validate date format         ${ACTUAL DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify User Defined Parameter Select Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE VALUE} =    get user defined parameter select date
    log     ${ACTUAL DATE VALUE}
    ${STATUS} =     validate date format         ${ACTUAL DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify User Defined Parameter Value Column Value Format
    [Arguments]     ${LOCALE FOR CURRENCY FORMAT}
    ${ACTUAL VALUE} =    get value column value from user defined parameters grid
    log     ${ACTUAL VALUE}
    ${STATUS} =     validate currency format         ${ACTUAL VALUE}          ${LOCALE FOR CURRENCY FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify User Defined Parameter Start Date Column Value Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE VALUE} =    get start date column value from user defined parameters grid
    log     ${ACTUAL DATE VALUE}
    ${STATUS} =     validate date format         ${ACTUAL DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Price Overrides Grid Target Price Value Format
    [Arguments]     ${LOCALE FOR CURRENCY FORMAT}
    ${ACTUAL VALUE} =    get price overrides grid target price column value
    log     ${ACTUAL VALUE}
    ${STATUS} =     validate currency format         ${ACTUAL VALUE}          ${LOCALE FOR CURRENCY FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Price Overrides Grid Begin Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE VALUE} =    get price overrides grid begin date column value
    log     ${ACTUAL DATE VALUE}
    ${STATUS} =     validate date format         ${ACTUAL DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Price Overrides Grid End Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE VALUE} =    get price overrides grid end date column value
    log     ${ACTUAL DATE VALUE}
    ${STATUS} =     validate date format         ${ACTUAL DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Price Dashboard
    ${STATUS} =     set variable    False
    ${STATUS} =     select price dashboard
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Compound Reference Price List Link
    ${STATUS} =     set variable    False
    ${STATUS} =     click compound reference price list link
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Compound Reference Price Select Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE VALUE} =    get costs tab select date value
    log     ${ACTUAL DATE VALUE}
    ${STATUS} =     validate date format         ${ACTUAL DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Compound Reference Price Grid Begin Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE VALUE} =    get compound reference price list grid begin date column value
    log     ${ACTUAL DATE VALUE}
    ${STATUS} =     validate date format         ${ACTUAL DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Compound Reference Price Grid Modified Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE VALUE} =    get compound reference price list grid modified date column value
    log     ${ACTUAL DATE VALUE}
    ${STATUS} =     validate date format         ${ACTUAL DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Create Customer Price list Offer Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE VALUE} =    get customer price list offer date
    log     ${ACTUAL DATE VALUE}
    ${STATUS} =     validate date format         ${ACTUAL DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Create Customer Price list Select Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${ACTUAL DATE VALUE} =    get costs tab select date value
    log     ${ACTUAL DATE VALUE}
    ${STATUS} =     validate date format         ${ACTUAL DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Create Customer Price List Link
    ${STATUS} =     set variable    False
    ${STATUS} =     click create customer price list link
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Close Price Window
    ${STATUS} =     set variable    False
    ${STATUS} =     close price window
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Pricing Exceptions First Row Inline Action Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click price exceptions grid first row inline action button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Pricing Exceptions Approve Inline Action Item
    ${STATUS} =     set variable    False
    ${STATUS} =     select pricing exception approve inline action button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Created Cost Policy Name
    ${CREATED NEW COST POLICY NAME} =     get created new cost policy name
    set suite variable      ${CREATED NEW COST POLICY NAME}
    should not be equal      ${CREATED NEW COST POLICY NAME}        ''
    return from keyword     ${CREATED NEW COST POLICY NAME}
    [Teardown]      run keyword if    '${CREATED NEW COST POLICY NAME}'==''    Log Screenshot

Verify Set Cost Policy For Create User Defined Parameters
    ${STATUS} =     set variable    False
    ${STATUS} =     set value in cost policy column       ${CREATED NEW COST POLICY NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Start Date For Create User Defined Parameter For Cost Policy
    [Arguments]     ${START DATE COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set value in column for user defined parameters      ${START DATE COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set End Date For Create User Defined Parameter For Cost Policy
    [Arguments]     ${END DATE COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set value in column for user defined parameters        ${END DATE COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Value In Parameter Column
    [Arguments]     ${PARAMETER COLUMN NAME}        ${PARAMETER PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set value in parameter column       ${PARAMETER COLUMN NAME}        ${PARAMETER PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Price Policies Grid Row Checkbox
    [Arguments]     ${CREATED NEW COST POLICY NAME}=None
    run keyword if      '${CREATED NEW COST POLICY NAME}'=='None'         Verify Get Created Cost Policy Name
    @{PRICE POLICY LIST FOR FORMULA} =       create list        ${CREATED NEW COST POLICY NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     select price policies grid row checkbox     @{PRICE POLICY LIST FOR FORMULA}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Price Policy Formulas Grid Row Checkbox
    [Arguments]     ${CREATED NEW COST POLICY NAME}=None
    run keyword if      '${CREATED NEW COST POLICY NAME}'=='None'         Verify Get Created Cost Policy Name
    @{PRICE POLICY LIST FOR FORMULA} =       create list        ${CREATED NEW COST POLICY NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     select price policy formulas grid row checkbox     @{PRICE POLICY LIST FOR FORMULA}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Previously Created Cost Policy Name
    ${PREVIOUSLY CREATED COST POLICY} =     get created new cost policy name
    set suite variable      ${PREVIOUSLY CREATED COST POLICY}
    should not be equal      ${PREVIOUSLY CREATED COST POLICY}        ''
    [Teardown]      run keyword if    '${PREVIOUSLY CREATED COST POLICY}'==''    Log Screenshot

Verify Filter Price Policy Grid With Created New Price Policy
    [Arguments]     ${PRICE POLICY COLUMN NAME}=None
    run keyword if      '${CREATED NEW COST POLICY NAME}'=='None'         Verify Get Created Cost Policy Name
    @{FILTER ITEM LIST} =       create list     ${CREATED NEW COST POLICY NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     grid filter details     ${PRICE POLICY COLUMN NAME}      @{FILTER ITEM LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify View Cost Policy Page Is Loaded Properly
    ${STATUS} =     set variable    False
    ${STATUS} =     is view cost policy page loaded properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Available Reference Prices Count
    ${REFERENCE PRICES COUNT} =     get available reference prices count
    set suite variable      ${REFERENCE PRICES COUNT}
    log     ${REFERENCE PRICES COUNT}
    [Teardown]      run keyword if    '${REFERENCE PRICES COUNT}'==''    Log Screenshot

Verify Compare Price Reference Prices Count After Create
    [Arguments]     ${NUMBER OF ROW TO ADD IN REFERENCE}
    ${STATUS} =     set variable    False
    ${STATUS} =     compare price reference prices count after create       ${NUMBER OF ROW TO ADD IN REFERENCE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Price Policy Name
    ${PRICE POLICY NAME} =     get created new cost policy name
    log       ${PRICE POLICY NAME}
    return from keyword         ${PRICE POLICY NAME}

Verify Compare Jobs Count After Job Completed
    ${STATUS} =     set variable    False
    ${STATUS} =     compare jobs count after job completed
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Compare Jobs Count After Price Overrides Completed
    ${STATUS} =     set variable    False
    ${STATUS} =     compare jobs count after price overrides completed
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Cost Policies Grid Settings
    [Arguments]     ${GRID SETTING}
    ${STATUS} =     set variable    False
    ${STATUS} =     set cost policies grid settings        ${GRID SETTING}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get All Rows of Specific Column From Cost Policies Grid
    [Arguments]     ${COLUMN NAME}
    @{ALL ROW DATA} =     get all rows of specific column from cost policies grid       ${COLUMN NAME}
    return from keyword         @{ALL ROW DATA}

Verify Sort Cost Policies Grid Column In Ascending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort cost policies grid column    ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Ascending Sorted Data
    [Arguments]     @{LIST OF DATA}
    ${STATUS} =     set variable    False
    ${STATUS} =     Price.compare sorted data     ${FALSE}        @{LIST OF DATA}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Descending Sorted Data
    [Arguments]     @{LIST OF DATA}
    ${STATUS} =     set variable    False
    ${STATUS} =     Price.compare sorted data    ${TRUE}         @{LIST OF DATA}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Sort Cost Policies Grid Column In Descending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort cost policies grid column    ${COLUMN NAME}      ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Cost Policies Grid Column Names By Order
    @{COLUMN NAME LIST} =     get cost policies grid column names by order
    return from keyword         @{COLUMN NAME LIST}

Verify Drag Cost policies Grid Column
    [Arguments]     ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     drag cost policies grid column    ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Cost Policies Grid Export To Excel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click cost policies grid export to excel button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Cost Policy Formulas Grid Settings
    [Arguments]     ${GRID SETTING}
    ${STATUS} =     set variable    False
    ${STATUS} =     set cost policy formulas grid settings        ${GRID SETTING}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get All Rows of Specific Column From Cost Policy Formulas Grid
    [Arguments]     ${COLUMN NAME}
    @{ALL ROW DATA} =     get all rows of specific column from cost policy formulas grid       ${COLUMN NAME}
    return from keyword         @{ALL ROW DATA}

Verify Sort Cost Policy Formulas Grid Column In Descending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort cost policy formulas grid column    ${COLUMN NAME}      ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Sort Cost Policy Formulas Grid Column In Ascending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort cost policy formulas grid column    ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Cost Policy Formulas Grid Column Names By Order
    @{COLUMN NAME LIST} =     get cost policy formulas grid column names by order
    return from keyword         @{COLUMN NAME LIST}

Verify Drag Cost policy Formulas Grid Column
    [Arguments]     ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     drag cost policy formulas grid column    ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Cost Policy Formulas Grid Export To Excel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click cost policy formulas grid export to excel button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Cost Policies User Defined Parameters Grid Settings
    [Arguments]     ${GRID SETTING}
    ${STATUS} =     set variable    False
    ${STATUS} =     set cost policies user defined parameters grid settings      ${GRID SETTING}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get All Rows of Specific Column From Cost Policies User Defined Parameters Grid
    [Arguments]     ${COLUMN NAME}
    @{ALL ROW DATA} =     get all rows of specific column from cost policies user defined parameters grid       ${COLUMN NAME}
    return from keyword         @{ALL ROW DATA}

Verify Sort Cost Policies User Defined Parameters Grid Column In Descending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort cost policies user defined parameters grid column    ${COLUMN NAME}      ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Sort Cost Policies User Defined Parameters Grid Column In Ascending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort cost policies user defined parameters grid column    ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Cost Policies User Defined Parameters Grid Column Names By Order
    @{COLUMN NAME LIST} =     get cost policies user defined parameters grid column names by order
    return from keyword         @{COLUMN NAME LIST}

Verify Drag Cost policies User Defined Parameters Grid Column
    [Arguments]     ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     drag cost policies user defined parameters grid column    ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Cost policies User Defined Parameters Grid Export To Excel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click cost policies user defined parameters grid export to excel button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Cost Policies Costs Grid Settings
    [Arguments]     ${GRID SETTING}
    ${STATUS} =     set variable    False
    ${STATUS} =     set cost policies costs grid settings      ${GRID SETTING}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get All Rows of Specific Column From Cost Policies Costs Grid
    [Arguments]     ${COLUMN NAME}
    @{ALL ROW DATA} =     get all rows of specific column from cost policies costs grid       ${COLUMN NAME}
    return from keyword         @{ALL ROW DATA}

Verify Sort Cost Policies Costs Grid Column In Descending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort cost policies costs grid column    ${COLUMN NAME}      ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Sort Cost Policies Costs Grid Column In Ascending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort cost policies costs grid column      ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Cost Policies Costs Grid Column Names By Order
    @{COLUMN NAME LIST} =     get cost policies costs grid column names by order
    return from keyword         @{COLUMN NAME LIST}

Verify Drag Cost policies Costs Grid Column
    [Arguments]     ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     drag cost policies costs grid column    ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Cost policies Costs Grid Export To Excel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click cost policies costs grid export to excel button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Price Policy Formulas Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select price policy formulas tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Price Overrides Grid Settings
    [Arguments]     ${GRID SETTING}
    ${STATUS} =     set variable    False
    ${STATUS} =     set price overrides grid settings      ${GRID SETTING}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get All Rows of Specific Column From Price Overrides Grid
    [Arguments]     ${COLUMN NAME}
    @{ALL ROW DATA} =     get all rows of specific column from price overrides grid       ${COLUMN NAME}
    return from keyword         @{ALL ROW DATA}

Verify Sort Price Overrides Grid Column In Descending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort price overrides grid column        ${COLUMN NAME}      ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Sort Price Overrides Grid Column In Ascending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort price overrides grid column    ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Price Overrides Grid Column Names By Order
    @{COLUMN NAME LIST} =     get price overrides grid column names by order
    return from keyword         @{COLUMN NAME LIST}

Verify Drag Price Overrides Grid Column
    [Arguments]     ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     drag price overrides grid column    ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Price Overides Grid Export To Excel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click price overrides grid export to excel button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Reference Prices Grid Settings
    [Arguments]     ${GRID SETTING}
    ${STATUS} =     set variable    False
    ${STATUS} =     set reference prices grid settings      ${GRID SETTING}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get All Rows of Specific Column From Reference Prices Grid
    [Arguments]     ${COLUMN NAME}
    @{ALL ROW DATA} =     get all rows of specific column from reference prices grid       ${COLUMN NAME}
    return from keyword         @{ALL ROW DATA}

Verify Sort Reference Prices Grid Column In Descending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort reference prices grid column        ${COLUMN NAME}      ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Sort Reference Prices Grid Column In Ascending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort reference prices grid column        ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Reference Prices Grid Column Names By Order
    @{COLUMN NAME LIST} =     get reference prices grid column names by order
    return from keyword         @{COLUMN NAME LIST}

Verify Drag Reference Prices Grid Column
    [Arguments]     ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     drag reference prices grid column    ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Reference Prices Grid Export To Excel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click reference prices grid export to excel button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Grid Column Position After Altering For Reference Prices
    [Arguments]     ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}      @{COLUMN NAME LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     compare grid column position after altering for reference prices    ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}      @{COLUMN NAME LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Price Policies Udp Grid Settings
    [Arguments]     ${GRID SETTING}
    ${STATUS} =     set variable    False
    ${STATUS} =     set price policies udp grid settings      ${GRID SETTING}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get All Rows of Specific Column From Price Policies Udp Grid
    [Arguments]     ${COLUMN NAME}
    @{ALL ROW DATA} =     get all rows of specific column from price policies udp grid      ${COLUMN NAME}
    return from keyword         @{ALL ROW DATA}

Verify Sort Price Policies Udp Grid Column In Descending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort price policies udp grid column        ${COLUMN NAME}      ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Sort Price Policies Udp Grid Column In Ascending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort price policies udp grid column        ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Price Policies Udp Grid Column Names By Order
    @{COLUMN NAME LIST} =     get price policies udp grid column names by order
    return from keyword         @{COLUMN NAME LIST}

Verify Drag Price Policies Udp Grid Column
    [Arguments]     ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     drag price policies udp grid column    ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Price Policies Udp Grid Export To Excel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click price policies udp grid export to excel button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Compound Reference Price List
    [Arguments]     ${SOURCE NAME}
    @{COMPOUND RPL LIST} =      create list     ${SOURCE NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set compound reference price list       @{COMPOUND RPL LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Compound Reference Price List Grid First Row
    [Arguments]     ${SOURCE NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     compare compound reference price list grid first row data      ${SOURCE NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Compound Reference Price List Grid Settings
    [Arguments]     ${GRID SETTING}
    ${STATUS} =     set variable    False
    ${STATUS} =     set compound reference price list grid settings        ${GRID SETTING}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get All Rows of Specific Column From Compound Reference Price List Grid
    [Arguments]     ${COLUMN NAME}
    @{ALL ROW DATA} =     get all rows of specific column from compound reference price list grid       ${COLUMN NAME}
    return from keyword         @{ALL ROW DATA}

Verify Sort Compound Reference Price List Grid Column In Ascending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort compound reference price list grid column   ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Sort Compound Reference Price List Grid Column In Descending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort compound reference price list grid column   ${COLUMN NAME}     ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Compound Reference Price List Grid Column Names By Order
    @{COLUMN NAME LIST} =     get compound reference price list grid column names by order
    return from keyword         @{COLUMN NAME LIST}

Verify Drag Compound Reference Price List Grid Column
    [Arguments]     ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     drag compound reference price list grid column    ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Grid Column Position After Altering
    [Arguments]     ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}      @{COLUMN NAME LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     compare grid column position after altering     ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}      @{COLUMN NAME LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Compound Reference Price List Grid Export To Excel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click compound reference price list grid export to excel button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Multiple Rows From Compound Reference Price List Grid
    ${STATUS} =     set variable    False
    ${STATUS} =     select multiple rows from compound reference price List grid
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Compound Reference Price List Bulk Edit Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click compound reference price list bulk edit button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Origin Reference Price List Link
    ${STATUS} =     set variable    False
    ${STATUS} =     click origin reference price list link
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get All Rows of Specific Column From Origin Reference Price List Grid
    [Arguments]     ${COLUMN NAME}
    @{ALL ROW DATA} =     get all rows of specific column from origin reference price list grid       ${COLUMN NAME}
    return from keyword         @{ALL ROW DATA}

Verify Sort Origin Reference Price List Grid Column In Descending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort origin reference price list grid column   ${COLUMN NAME}       ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Sort Origin Reference Price List Grid Column In Ascending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort origin reference price list grid column   ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Origin Reference Price List Grid Column Names By Order
    @{COLUMN NAME LIST} =     get origin reference price list grid column names by order
    return from keyword         @{COLUMN NAME LIST}

Verify Drag Origin Reference Price List Grid Column
    [Arguments]     ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     drag origin reference price list grid column    ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Origin Reference Price List Grid Settings
    [Arguments]     ${GRID SETTING}
    ${STATUS} =     set variable    False
    ${STATUS} =     set origin reference price list grid settings        ${GRID SETTING}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Origin Reference Price List Grid Export To Excel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click origin reference price list grid export to excel button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Customer Price Exception Request Link
    ${STATUS} =     set variable    False
    ${STATUS} =     click customer price exception request link
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Customer Price Exception Request Grid Settings
    [Arguments]     ${GRID SETTING}
    ${STATUS} =     set variable    False
    ${STATUS} =     set customer price exception request grid settings        ${GRID SETTING}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get All Rows of Specific Column From Customer Price Exception Request Grid
    [Arguments]     ${COLUMN NAME}
    @{ALL ROW DATA} =     get all rows of specific column from customer price exception request grid       ${COLUMN NAME}
    return from keyword         @{ALL ROW DATA}

Verify Sort Customer Price Exception Request Grid Column In Descending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort customer price exception request grid column   ${COLUMN NAME}      ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Sort Customer Price Exception Request Grid Column In Ascending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort customer price exception request grid column   ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Customer Price Exception Request Grid Column Names By Order
    @{COLUMN NAME LIST} =     get customer price exception request grid column names by order
    return from keyword         @{COLUMN NAME LIST}

Verify Drag Customer Price Exception Request Grid Column
    [Arguments]     ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     drag customer price exception request grid column    ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Customer Price Exception Request Grid Export To Excel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click customer price exception request grid export to excel button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Multiple Rows From Customer Price Exception Request Grid
    ${STATUS} =     set variable    False
    ${STATUS} =     select multiple rows from customer price exception request grid
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Customer Price Exception Request Grid Bulk Edit Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click customer price exception request grid bulk edit button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Multiple Rows From Origin Reference Price List Grid
    ${STATUS} =     set variable    False
    ${STATUS} =     select multiple rows from origin reference price list grid
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Origin Reference Price List Grid Bulk Edit Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click origin reference price list grid bulk edit button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Reference Price List
    [Arguments]     ${REFERENCE PRICE LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     Price.set reference price list         ${REFERENCE PRICE LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Compound Rpl Begin Date
    ${STATUS} =     set variable    False
    ${STATUS} =     set compound rpl begin date
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Origin Reference Price List
    [Arguments]     ${ORIGIN REFERENCE PRICE LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     set origin reference price list     ${ORIGIN REFERENCE PRICE LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Add New Origin Rpl Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click add new origin rpl button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Cost Policies Grid First Row Checkbox
    ${STATUS} =     set variable    False
    ${STATUS} =     select cost policies grid first row checkbox
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Cost Policy Is Preselected
    ${STATUS} =     set variable    False
    ${STATUS} =     is cost policy preselected
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Cost Policy Is Preselected In Upload Costs
    ${STATUS} =     set variable    False
    ${STATUS} =     is cost policy preselected in upload costs
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Add New Origin Rpl Destination
    [Arguments]     ${DESTINATION}
    ${STATUS} =     set variable    False
    ${STATUS} =     set add new origin rpl destination     ${DESTINATION}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Add New Origin Rpl Origin Set
    [Arguments]     ${ORIGIN SET}
    ${STATUS} =     set variable    False
    ${STATUS} =     set add new origin rpl origin set     ${ORIGIN SET}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Add New Origin Rpl Rating Method
    [Arguments]     ${RATING METHOD}
    ${STATUS} =     set variable    False
    ${STATUS} =     set add new origin rpl rating method     ${RATING METHOD}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Add New Origin Rpl Search Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click add new origin rpl page search button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Add New Origin Rpl Rate Values
    ${STATUS} =     set variable    False
    ${STATUS} =     set add new origin rpl rate values
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Origin Reference Price List Grid Row Checkbox
    ${STATUS} =     set variable    False
    ${STATUS} =     select origin reference price list grid row checkbox
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Origin Rpl Delete Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click origin rpl delete button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Origin Rpl Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click origin rpl save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Apply Custom Rules Is Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is apply custom rules present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Reference Prices Save Changes Button Without Custom Rule
    ${STATUS} =     set variable    False
    ${STATUS} =     click reference prices save changes button without custom rule
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Custom Rule Yes Radio Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click custom rule yes radio button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Apply Custom Rules Is Not Present
    ${STATUS} =     set variable    True
    ${STATUS} =     is apply custom rules present
    should not be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='True'    Log Screenshot

Verify Set Begin Date With Future Date
    ${STATUS} =     set variable    False
    ${STATUS} =     set begin date with future date
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Cost Forecast Report Route Class
    [Arguments]     ${ROUTE CLASS}
    @{ROUTE CLASS LIST} =    create list     ${ROUTE CLASS}
    ${STATUS} =     set variable    False
    ${STATUS} =     set cost forecast report route class      @{ROUTE CLASS LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Cost Forecast Report Call Type
    [Arguments]     ${CALL TYPE}
    @{CALL TYPE LIST} =    create list     ${CALL TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set cost forecast report call type      @{CALL TYPE LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Cost Forecast Report Routing Destination
    [Arguments]     ${ROUTING DESTINATION PREFIX}
    ${ROUTING DESTINATION} =     set cost forecast report routing destination      ${ROUTING DESTINATION PREFIX}
    log         ${ROUTING DESTINATION}
    set suite variable      ${ROUTING DESTINATION}

Verify Get Cost Forecast Report Parameters Text
    [Arguments]     ${EXPECTED VALUE}     ${PARAMETER NAME}
    ${ACTUAL VALUE} =    get cost forecast report parameters text        ${PARAMETER NAME}
    log     ${ACTUAL VALUE}
    should be equal     ${EXPECTED VALUE}      ${ACTUAL VALUE}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Routing Destination Text For Cost Forecast Report
    [Arguments]     ${PARAMETER NAME}
    ${ACTUAL VALUE} =    get cost forecast report parameters text        ${PARAMETER NAME}
    log     ${ACTUAL VALUE}
    should be equal     ${ROUTING DESTINATION}      ${ACTUAL VALUE}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click On Country Groups Link
    ${STATUS} =     set variable    False
    ${STATUS} =     click country groups link
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Create Country Group Button
    ${STATUS} =     set variable    False
    ${STATUS} =     Price.click create country group button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Country Group Scope
    [Arguments]     ${COUNTRY GROUP SCOPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     Price.set country group scope     ${COUNTRY GROUP SCOPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Wholesale Solution Type
    [Arguments]     ${WHOLESALE SOLUTION TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set wholesale solution type     ${WHOLESALE SOLUTION TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Country Group
    [Arguments]     ${COUNTRY GROUP PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     Price.set country group     ${COUNTRY GROUP PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Available Countries
    [Arguments]     @{AVAILABLE COUNTRIES LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     Price.move available countries to destination      @{AVAILABLE COUNTRIES LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Create Country Group Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     Price.click create country group save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Created Country Group Name
    ${CREATED NEW COUNTRY GROUP NAME} =     Price.get created country group name
    set suite variable      ${CREATED NEW COUNTRY GROUP NAME}
    should not be equal      ${CREATED NEW COUNTRY GROUP NAME}        ''
    return from keyword     ${CREATED NEW COUNTRY GROUP NAME}
    [Teardown]      run keyword if    '${CREATED NEW COUNTRY GROUP NAME}'==''    Log Screenshot

Verify Filter Country Group Management Grid Column
    [Arguments]     ${COLUMN NAME}      ${ITEM NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     filter country group management grid column     ${COLUMN NAME}      ${ITEM NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Country Group Management Grid First Row Checkbox
    ${STATUS} =     set variable    False
    ${STATUS} =     Price.select country group management grid first row checkbox
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Country Group Management Delete Button
    ${STATUS} =     set variable    False
    ${STATUS} =     Price.click country group management delete button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Created Country Group Is Deleted
    ${STATUS} =     set variable    False
    ${STATUS} =     is the created country group deleted
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Generation Type
    [Arguments]     ${TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set generation type         ${TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Reference Prices Grid First Row Status
    ${STATUS} =     set variable    False
    ${STATUS} =     is reference prices grid first row status approved
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Completed Status Green Button Jobs Count
    ${JOBS COUNT} =     get completed status green button jobs count
    set suite variable      ${JOBS COUNT}
    log     ${JOBS COUNT}
    [Teardown]      run keyword if    '${JOBS COUNT}'==''    Log Screenshot

Verify Compare Completed Status Green Buttons Jobs Count After Upload
    ${STATUS} =     set variable    False
    ${STATUS} =     compare completed status green buttons jobs count after upload
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Failed Status Red Button Jobs Count
    ${JOBS COUNT} =     get failed status red button jobs count
    set suite variable      ${JOBS COUNT}
    log     ${JOBS COUNT}
    [Teardown]      run keyword if    '${JOBS COUNT}'==''    Log Screenshot

Verify Compare Failed Status Red Buttons Jobs Count After Upload
    ${STATUS} =     set variable    False
    ${STATUS} =     compare failed status red buttons jobs count after upload
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Price Override Browse Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click price override browse button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Price Override Upload Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click price override upload button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Price Policy Grid First Row Checkbox
    ${STATUS} =     set variable    False
    ${STATUS} =     click price policy grid first row checkbox
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Completed Status Green Button Jobs Count For Reference Price
    ${JOBS COUNT} =     get completed status green button jobs count for reference price
    set suite variable      ${JOBS COUNT}
    log     ${JOBS COUNT}
    [Teardown]      run keyword if    '${JOBS COUNT}'==''    Log Screenshot

Verify Compare Completed Status Green Buttons Jobs Count For Reference Price
    ${STATUS} =     set variable    False
    ${STATUS} =     compare completed status green buttons jobs count for reference price
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Failed Status Red Button Jobs Count For Reference Price
    ${JOBS COUNT} =     get failed status red button jobs count for reference price
    set suite variable      ${JOBS COUNT}
    log     ${JOBS COUNT}
    [Teardown]      run keyword if    '${JOBS COUNT}'==''    Log Screenshot

Verify Compare Failed Status Red Buttons Jobs Count For Reference Price
    ${STATUS} =     set variable    False
    ${STATUS} =     compare failed status red buttons jobs count for reference price
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Specific System Parameter For Create Destination Formula Is Available
    [Arguments]         ${PARAMETER NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is specific system parameter for create destination formula present        ${PARAMETER NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Close Current Pop Up
    [Arguments]     ${POP UP NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     Price.close current pop up        ${POP UP NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Generate Reference Prices Link
    ${STATUS} =     set variable    False
    ${STATUS} =     click generate reference prices link
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Specific Reference Price Policy Is Available In The Source
    [Arguments]         ${CREATED PRICE POLICY}
    ${STATUS} =     set variable    False
    ${STATUS} =     is specific reference price policy present in the source        ${CREATED PRICE POLICY}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Specific Destination Is Available In The Source
    [Arguments]         ${DESTINATION}
    ${STATUS} =     set variable    False
    ${STATUS} =     is specific destination present in the source        ${DESTINATION}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Specific Reference Price Policy Is Not Available In The Source
    [Arguments]         ${CREATED PRICE POLICY}
    ${STATUS} =     set variable    False
    ${STATUS} =     is specific reference price policy not present in the source        ${CREATED PRICE POLICY}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Specific Destination Is Not Available In The Source
    [Arguments]         ${DESTINATION}
    ${STATUS} =     set variable    False
    ${STATUS} =     is specific destination not present in the source        ${DESTINATION}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Assigned Country is Loaded in Country Column
    [Arguments]         ${COUNTRY}
    ${STATUS} =     set variable    False
    ${STATUS} =     is expected country loaded in country column    ${COUNTRY}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify is Country Group Scope Dropdown Control Disabled
    ${STATUS} =     set variable    False
    ${STATUS} =     is country group scope dropdown control disabled
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify is Wholesale Solution Type Dropdown Control Disabled
    ${STATUS} =     set variable    False
    ${STATUS} =     is wholesale solution type kendo dropdown control disabled
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify is Selected Country Present in Assigned Countrie(s) Panel
    [Arguments]         ${COUNTRY}
    ${STATUS} =     set variable    False
    ${STATUS} =     is assigned country present     ${COUNTRY}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Unassign all Country(s) from Assigned Countrie(s) Panel
    ${STATUS} =     set variable    False
    ${STATUS} =     unassign all country
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Country Group Management Grid Settings
    [Arguments]     ${GRID SETTING}
    ${STATUS} =     set variable    False
    ${STATUS} =     set country group management grid settings   ${GRID SETTING}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get All Rows of Specific Column From Country Group Management Grid
    [Arguments]     ${COLUMN NAME}
    @{ALL ROW DATA} =     get all rows of specific column from country group management grid    ${COLUMN NAME}
    return from keyword         @{ALL ROW DATA}

Verify Sort Country Group Management Grid Column In Descending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort country group management grid column      ${COLUMN NAME}      ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Sort Country Group Management Grid Column In Ascending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort country group management grid column       ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Country Group Management Grid Export To Excel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click country group management grid export to excel button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Country Group Management Grid Inline Action Button
    [Arguments]     ${COUNTRY GROUP}
    ${STATUS} =     set variable    False
    ${STATUS} =     Price.click country group management grid inline action button    ${COUNTRY GROUP}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Available Country
    ${COUNTRY} =    get available country
    return from keyword     ${COUNTRY}

Verify Select Country Group Grid Inline Action Item
    [Arguments]     ${COUNTRY GROUP}
    ${STATUS} =     set variable    False
    ${STATUS} =     select country group grid inline action item     ${COUNTRY GROUP}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Clear Country Group Grid Column Filter
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     clear country group grid column filter      ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Price Policy For Formulas
    [Arguments]     ${PRICE POLICY NAME}
    @{PRICE POLICY} =       create list     ${PRICE POLICY NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set price policy        @{PRICE POLICY}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Display Grid
    [Arguments]     ${DESTINATION FOR FORMULA POP UP}
    ${STATUS} =     set variable    False
    ${STATUS} =     set display grid       ${DESTINATION FOR FORMULA POP UP}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Cancel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click cancel button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Cost Elements Grid Cost Element Column Values
    ${STATUS} =     set variable    False
    ${STATUS} =     get cost elements grid cost element column values
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Cost Elements Grid Value Column Values
    ${COST ELEMENTS GRID VALUE COLUMN VALUES} =     get cost elements grid value column values
    log      ${COST ELEMENTS GRID VALUE COLUMN VALUES}
    set suite variable      ${COST ELEMENTS GRID VALUE COLUMN VALUES}

Verify Filter Cost Forecast Reports Grid Column
    [Arguments]     ${COLUMN NAME}      ${COLUMN VALUE}
    ${STATUS} =     set variable    False
    ${STATUS} =     filter cost forecast reports grid column        ${COLUMN NAME}      ${COLUMN VALUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Cost Forecast Elements Report Routing Destination
    [Arguments]     ${ROUTING DESTINATION}
    ${STATUS} =     set variable    False
    ${STATUS} =     set cost forecast elements report routing destination       ${ROUTING DESTINATION}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Cost Forecast Element Reports Grid Row Details
    ${COST FORECAST ELEMENT REPORTS GRID ROW DETAILS} =     get cost forecast element reports grid row details
    log      ${COST FORECAST ELEMENT REPORTS GRID ROW DETAILS}
    set suite variable      ${COST FORECAST ELEMENT REPORTS GRID ROW DETAILS}

Verify Cost Forecast Report Matches Properly
    ${STATUS} =     set variable    False
    dictionaries should be equal        ${COST FORECAST ELEMENT REPORTS GRID ROW DETAILS}      ${COST ELEMENTS GRID VALUE COLUMN VALUES}
    ${STATUS} =     set variable    True
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Price Exception Request Import Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click price exceptions import button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Completed Status Green Button Jobs Count For Price Exception Request
    ${JOBS COUNT} =     get completed status green button jobs count for price exception request
    set suite variable      ${JOBS COUNT}
    log     ${JOBS COUNT}
    [Teardown]      run keyword if    '${JOBS COUNT}'==''    Log Screenshot

Verify Compare Completed Status Green Buttons Jobs Count For Price Exception Request
    ${STATUS} =     set variable    False
    ${STATUS} =     compare completed status green buttons jobs count for price exception request
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Price Exception Request Upload Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click price exception request upload button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Price Exception Request Export Button Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is price exception request export button present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Compare Price Reference Prices Count After Generating RPL With '0' or 'Null'
    [Arguments]     ${NUMBER OF ROW TO ADD IN REFERENCE}
    ${STATUS} =     set variable    True
    ${STATUS} =     compare price reference prices count after create       ${NUMBER OF ROW TO ADD IN REFERENCE}
    should not be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='True'    Log Screenshot

Verify Click Failed Status Red Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click failed status red button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Failed Upload Info Icon
    ${STATUS} =     set variable    False
    ${STATUS} =     click failed upload info icon
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Failed Upload Info
    [Arguments]     ${MESSAGE}
    ${STATUS} =     set variable    False
    ${STATUS} =     compare failed upload info      ${MESSAGE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Close Job Tab
    [Arguments]     ${JOB TAB NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     Price.close current tab       ${JOB TAB NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Jobs Grid Settings
    [Arguments]     ${GRID SETTING}
    ${STATUS} =     set variable    False
    ${STATUS} =     set jobs grid settings        ${GRID SETTING}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Sort Registry Date Column In Descending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort jobs grid column    ${COLUMN NAME}      ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Cost Policy Formula Grid Multiple Rows
    ${STATUS} =     set variable    False
    ${STATUS} =     select cost policy formula grid multiple rows
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Country Selection Criteria Field Is Available In CRPL Page
    ${STATUS} =     set variable    False
    ${STATUS} =     is country selection criteria field present in crpl page
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Country Column Is Available In CRPL Page
    ${STATUS} =     set variable    False
    ${STATUS} =     is country column present in crpl page
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Country Selection Criteria Field Is Available In ORPL Page
    ${STATUS} =     set variable    False
    ${STATUS} =     is country selection criteria field present in orpl page
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Country Column Is Available In ORPL Page
    ${STATUS} =     set variable    False
    ${STATUS} =     is country column present in orpl page
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Country Selection Criteria Field Is Available In RCPER Page
    ${STATUS} =     set variable    False
    ${STATUS} =     is country selection criteria field present in rcper page
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Country Column Is Available In RCPER Page
    ${STATUS} =     set variable    False
    ${STATUS} =     is country column present in rcper page
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Country Selection Criteria Field Is Available In Costs Page
    ${STATUS} =     set variable    False
    ${STATUS} =     is country selection criteria field present in costs page
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Country Column Is Available In Costs Page
    ${STATUS} =     set variable    False
    ${STATUS} =     is country column present in costs page
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Country Selection Criteria Field Is Available In Price Override Page
    ${STATUS} =     set variable    False
    ${STATUS} =     is country selection criteria field present in price override page
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Country Column Is Available In Price Override Page
    ${STATUS} =     set variable    False
    ${STATUS} =     is country column present in price override page
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Country Selection Criteria Field Is Available In Reference Prices Page
    ${STATUS} =     set variable    False
    ${STATUS} =     is country selection criteria field present in reference prices page
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Country Column Is Available In Reference Prices Page
    ${STATUS} =     set variable    False
    ${STATUS} =     is country column present in reference prices page
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The CCPMR Each Call Text Is Available In Info Column
    ${STATUS} =     set variable    False
    ${STATUS} =     is ccpmr each call text present in info column
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Comparsion of Formula Column Value
    [Arguments]     ${TARGET}   ${MINIMUM}   ${COST}
    ${STATUS} =     set variable    False
    ${STATUS} =     compare price policy formulas grid formula column value       ${TARGET}   ${MINIMUM}   ${COST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Reference Prices Cost And Routing Section Is Loaded
    ${STATUS} =     set variable    False
    ${STATUS} =     is reference prices cost and routing section loaded
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Pricing Policies Reference Prices Grid Header
    [Arguments]    @{COLUMNS HEADER}
    ${STATUS} =     set variable    False
    ${STATUS} =     verify pricing policies reference prices grid columns header       @{COLUMNS HEADER}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Route Class Kendo Dropdown Is Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is route class kendo dropdown present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Cost Elements Grid Header
    [Arguments]    @{COLUMNS HEADER}
    ${STATUS} =     set variable    False
    ${STATUS} =     verify cost elements grid columns header       @{COLUMNS HEADER}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Routing Guide Links Grid Header
    [Arguments]    @{COLUMNS HEADER}
    ${STATUS} =     set variable    False
    ${STATUS} =     verify routing guide links grid columns header       @{COLUMNS HEADER}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Message Text Is Available In Info Column
    ${STATUS} =     set variable    False
    ${STATUS} =     is ccpmr cost per message text present in info column
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Job Notifires are Displayed at Generate Reference Pirces Screen
    ${STATUS} =     set variable    False
    ${STATUS} =     are job notifiers displayed at generate reference prices screen
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Reference Prices Grid First Row Inline Action Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click reference prices grid first row inline action button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Route Guide With Sell Rates Report Inline Item Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is route guide with sell rates report inline item present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Route Guide With Sell Rates Report Pop Up Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is route guide with sell rates report pop up present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Costs Upload All Job Notificaiton Status
    @{ALL STATUS} =     get cost upload all job notification status
    return from keyword     @{ALL STATUS}

Verify Clear Multiselection Kendo Dropdown
    [Arguments]     ${KENDO DROPDOWN LABEL}
    ${STATUS} =     set variable    False
    ${STATUS} =     Price.clear multiselect kendo dropdown     ${KENDO DROPDOWN LABEL}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Origin Reference Price List Bulk Edit End Date
    [Arguments]     ${END DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set origin reference price list bulk edit end date     ${END DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The End Date Field of Origin Reference Price List Grid
    [Arguments]     ${EXPECTED VALUE}
    ${STATUS} =     set variable    False
    ${STATUS} =     compare end date column value in origin reference price list grid     ${EXPECTED VALUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify By Default Specific Generation Type Is Available
    [Arguments]     ${GENERATION TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     is by default specific generation type present          ${GENERATION TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Create Destination Formula PopUp System Parameters Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select create destination formula system parameters tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select User Defined Parameters Grid First Row Checkbox
    ${STATUS} =     set variable    False
    ${STATUS} =     select user defined parameters grid first row checkbox
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Specific Tab Is Present In View Pricing Exception Details Pop Up
    [Arguments]     ${TAB NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is specific tab present in view pricing exception details pop up        ${TAB NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Cost Policies Grid First Row Cost Policy Name
    ${COST POLICY NAME} =     get cost policies grid first row cost policy name
    log     ${COST POLICY NAME}
    should not be equal     '${COST POLICY NAME}'       ''
    return from keyword     ${COST POLICY NAME}
    [Teardown]      run keyword if    '${COST POLICY NAME}'==''    Log Screenshot

Verify Upload Costs Cost Policy Field Value
    [Arguments]     ${EXPECTED OFFER CONTENT}
    ${ACTUAL OFFER CONTENT} =     get upload costs cost policy field value
    should be equal     ${EXPECTED OFFER CONTENT}       ${ACTUAL OFFER CONTENT}
    [Teardown]      run keyword unless    '${EXPECTED OFFER CONTENT}'=='${ACTUAL OFFER CONTENT}'    Log Screenshot

Verify Click Upload Costs Cancel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click upload costs cancel button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Cost Policies Grid Multiple Row Checkbox
    ${STATUS} =     set variable    False
    ${STATUS} =     select cost policies grid multiple row checkbox
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Cost Forecast Elements Grid Description
    [Arguments]     ${EXPECTED TEXT}
    ${STATUS} =     set variable    False
    ${STATUS} =     is cost forecast elements grid description correct      ${EXPECTED TEXT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Review Customer Price Exception Requests Search Grid Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is review customer price exception requests search grid present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Specific Filter Option Is Available In Price Reference Prices Page
    [Arguments]     ${FILTER OPTION LABEL NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is specific filter option present in price reference prices page        ${FILTER OPTION LABEL NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Price Policy For Reference Prices Search
    [Arguments]     ${REFERENCE PRICE PRICE POLICY}
    @{REFERENCE PRICE PRICE POLICY LIST}      create list         ${REFERENCE PRICE PRICE POLICY}
    ${STATUS} =     set variable    False
    ${STATUS} =     select price policy for reference prices search      @{REFERENCE PRICE PRICE POLICY LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Reference Prices Destination For Search
    [Arguments]     ${DESTINATION}
    ${STATUS} =     set variable    False
    ${STATUS} =     set reference prices destination       ${DESTINATION}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Country For Reference Prices Search
    [Arguments]     @{ITEM LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     select country for reference prices search      @{ITEM LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Trade Destination Category For Reference Prices Search
    ${STATUS} =     set variable    False
    ${STATUS} =     select trade destination category for reference prices search
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Region For Reference Prices Search
    [Arguments]     ${REFERENCE PRICE ITEM}
    @{ITEM LIST}      create list         ${REFERENCE PRICE ITEM}
    ${STATUS} =     set variable    False
    ${STATUS} =     select region for reference prices search      @{ITEM LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Compare Only Failed Status Red Buttons Jobs Count After Upload
    ${STATUS} =     set variable    False
    ${STATUS} =     compare only failed status red buttons jobs count
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Filter Origin Rererence Price List Grid Column
    [Arguments]     ${COLUMN NAME}      ${ITEM NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     filter origin reference price list grid column     ${COLUMN NAME}      ${ITEM NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Origin Reference Price List Grid First Row Inline Action Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click origin reference price list grid first row inline action button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Specific Dropdown Is Disabled
    [Arguments]     ${DROPDOWN LABEL TEXT}
    ${STATUS} =     set variable    False
    ${STATUS} =     is specific dropdown disabled       ${DROPDOWN LABEL TEXT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Orpl Grid Inline Action Item
    [Arguments]     ${INLINE ACTION ITEM NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     select orpl grid inline action item     ${INLINE ACTION ITEM NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Cost Formula Grid First Row Checkbox Is Checked
    ${STATUS} =     set variable    False
    ${STATUS} =     is cost formula grid first row checkbox checked
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Price Policy UDP Grid First Row Checkbox Is Checked
    ${STATUS} =     set variable    False
    ${STATUS} =     is price policy udp grid first row checkbox checked
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Price Policy From Reference Prices Grid
    ${PRICE POLICY} =     Price.get price policy from reference prices grid
    return from keyword     ${PRICE POLICY}

Verify Filter Price Policy Grid
    [Arguments]     ${COLUMN NAME TO FILTER}        ${CREATED NEW COST POLICY NAME}=None
    run keyword if      '${CREATED NEW COST POLICY NAME}'=='None'         Verify Get Created Cost Policy Name
    @{FILTER ITEM LIST} =       create list        ${CREATED NEW COST POLICY NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     grid filter details         ${COLUMN NAME TO FILTER}        @{FILTER ITEM LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Price Policy Grid Inline Item
    [Arguments]     ${VIEW COST POLICY INLINE ITEM}
    ${STATUS} =     set variable    False
    ${STATUS} =     Price.select inline action item     ${VIEW COST POLICY INLINE ITEM}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Formula Cost For Price Policy
    [Arguments]     ${COST}
    ${STATUS} =     set variable    False
    ${STATUS} =     set formula cost        ${COST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Price Policy Grid Inline Action Button
    [Arguments]     ${COST POLICY COLUMN NAME}=None
    run keyword if      '${CREATED NEW COST POLICY NAME}'=='None'         Verify Get Created Cost Policy Name
    ${STATUS} =     set variable    False
    ${STATUS} =     click cost policy grid inline action button     ${CREATED NEW COST POLICY NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Clear Price Policy Column Filter
    [Arguments]     ${COST POLICY COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     clear filter      ${COST POLICY COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Create New Price Policy Formula Dropdown
    ${STATUS} =     set variable    False
    ${STATUS} =     click create new cost policy formula dropdown
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Filter Price Policies Formulas Grid Notes Column
    ${STATUS} =     set variable    False
    ${STATUS} =     filter cost policies formulas grid notes column
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Create New Price Policy
    ${STATUS} =     set variable    False
    ${STATUS} =     click create new cost policy button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Price Policy Name
    [Arguments]     ${COST POLICY NAME PREFIX}
    ${CREATED COST POLICY NAME} =        set cost policy name       ${COST POLICY NAME PREFIX}
    log         ${CREATED COST POLICY NAME}
    set suite variable      ${CREATED COST POLICY NAME}

Verify Set Price Policy Abbreviation
    ${STATUS} =     set variable    False
    ${STATUS} =     set cost policy abbreviation
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Price Policy Status
    [Arguments]     ${COST POLICY ACTIVE STATUS}
    ${STATUS} =     set variable    False
    ${STATUS} =     set cost policy status      ${COST POLICY ACTIVE STATUS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Price Policy Call Type
    [Arguments]     ${CALL TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set cost policy call type      ${CALL TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Price Policy Route Class
    [Arguments]     ${ROUTE CLASS}
    ${STATUS} =     set variable    False
    ${STATUS} =     set cost policy route class      ${ROUTE CLASS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Create Price Policy Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click create cost policy save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Created Price Policy Name
    ${CREATED NEW COST POLICY NAME} =     get created new cost policy name
    set suite variable      ${CREATED NEW COST POLICY NAME}
    should not be equal      ${CREATED NEW COST POLICY NAME}        ''
    return from keyword     ${CREATED NEW COST POLICY NAME}
    [Teardown]      run keyword if    '${CREATED NEW COST POLICY NAME}'==''    Log Screenshot

Verify Click Copy Price Formulas Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click copy cost formulas save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Price Policy Costs Browse Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click costs browse button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Price Policy Formulas Grid Settings
    [Arguments]     ${GRID SETTING}
    ${STATUS} =     set variable    False
    ${STATUS} =     set cost policy formulas grid settings        ${GRID SETTING}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get All Rows of Specific Column From Price Policy Formulas Grid
    [Arguments]     ${COLUMN NAME}
    @{ALL ROW DATA} =     get all rows of specific column from cost policy formulas grid       ${COLUMN NAME}
    return from keyword         @{ALL ROW DATA}

Verify Sort Price Policy Formulas Grid Column In Descending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort cost policy formulas grid column    ${COLUMN NAME}      ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Sort Price Policy Formulas Grid Column In Ascending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort cost policy formulas grid column    ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Drag Price policy Formulas Grid Column
    [Arguments]     ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     drag cost policy formulas grid column    ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Price Policy Formulas Grid Export To Excel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click cost policy formulas grid export to excel button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Price Policy Formulas Grid Column Names By Order
    @{COLUMN NAME LIST} =     get cost policy formulas grid column names by order
    return from keyword         @{COLUMN NAME LIST}

Verify Set Price Policies User Defined Parameters Grid Settings
    [Arguments]     ${GRID SETTING}
    ${STATUS} =     set variable    False
    ${STATUS} =     set cost policies user defined parameters grid settings      ${GRID SETTING}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get All Rows of Specific Column From Price Policies User Defined Parameters Grid
    [Arguments]     ${COLUMN NAME}
    @{ALL ROW DATA} =     get all rows of specific column from cost policies user defined parameters grid       ${COLUMN NAME}
    return from keyword         @{ALL ROW DATA}

Verify Sort Price Policies User Defined Parameters Grid Column In Descending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort cost policies user defined parameters grid column    ${COLUMN NAME}      ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Sort Price Policies User Defined Parameters Grid Column In Ascending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort cost policies user defined parameters grid column    ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Price Policies User Defined Parameters Grid Column Names By Order
    @{COLUMN NAME LIST} =     get cost policies user defined parameters grid column names by order
    return from keyword         @{COLUMN NAME LIST}

Verify Drag Price policies User Defined Parameters Grid Column
    [Arguments]     ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     drag cost policies user defined parameters grid column    ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Price Policies User Defined Parameters Grid Export To Excel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click cost policies user defined parameters grid export to excel button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Document Tab On Pricing Exception Page
    ${STATUS} =     set variable    False
    ${STATUS} =     click document tab on pricing exception page
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Delete Button Present Is Available In View Pricing Exception Details Page
    ${STATUS} =     set variable    False
    ${STATUS} =     is delete button present in view pricing exception details page
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Upload Document Button Present Is Available In View Pricing Exception Details Page
    ${STATUS} =     set variable    False
    ${STATUS} =     is upload document button present in view pricing exception details page
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Specific Column Is Available In Review Pricing Exception Documents Tab
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is specific column present in review pricing exception documents tab        ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click RGWSRR Tab On Pricing Exception Page
    ${STATUS} =     set variable    False
    ${STATUS} =     click rgwsrr tab on pricing exception page
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Specific Column Is Available In Review Pricing Exception RGWSRR Tab
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is specific column present in review pricing exception rgwsrr tab        ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Price Exception Request Import File Browse Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click price exception request browse button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Price Exception Request Export Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click price exception request export button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The View Reference Price Details Inline Item Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is view reference price details inline item present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The View Reference Price Details Pop Up Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is view reference price details pop up present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Reference Price List History Section Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is reference price list history section present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot
