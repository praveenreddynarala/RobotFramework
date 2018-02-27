*** Settings ***
Documentation     Bill And Audit Page Resource File With All Necessary Keywords.

Resource        ../common_resource.robot

Library           ../../../TestFramework/Libraries/RobotTests/Home.py
Library           ../../../TestFramework/Libraries/RobotTests/BillAndAudit.py
Library         Collections

*** Variables ***
${EXPECTED PAGE TITLE}                  Bill & Audit
${ACTUAL PAGE TITLE}                    ${EMPTY}
${STATUS}                               ${EMPTY}
${CREATED CHARGE NAME}                  ${EMPTY}
${ADJUSTMENT FOLDER CALENDER YEAR}      ${EMPTY}
${DISPUTES GRID ROW DETAILS}            ${EMPTY}
${ADD DISPUTES GRID ROW DETAILS}        ${EMPTY}
${STATUS COLUMN NAME}                   Status
${DISPUTE TYPE COLUMN NAME}             Dispute Type
${CHARGES GRID ROW DETAILS}             ${EMPTY}
${ACTUAL CHARGES GRID ROW DETAILS}      ${EMPTY}
${CREATED STATEMENT NUMBER}             ${EMPTY}
${CREATED STATEMENT BEGIN DATE}         ${EMPTY}
${CREATED STATEMENT END DATE}           ${EMPTY}
${CREATED STATEMENT DUE DATE}           ${EMPTY}
${INBOUND STATEMENT GRID ROW DATA}      ${EMPTY}
${NON RECURRING CHARGE BEGIN DATE}          ${EMPTY}
${NON RECURRING CHARGE END DATE}            ${EMPTY}
${CREATED NON RECURRING CHARGE}             ${EMPTY}
${NON TRAFFIC CHARGES GRID ROW DETAILS}     ${EMPTY}
${RECEIVED CHARGES GRID ROW DATA}       ${EMPTY}
${BULK ADDED BEGIN DATE}                  ${EMPTY}
${BULK ADDED END DATE}                    ${EMPTY}
${NEW DOCUMENT NAME}                    ${EMPTY}
${DOCUMENTS GRID ROW DETAILS}           ${EMPTY}
${CREATED TRANSACTION CODE}             ${EMPTY}
${TRANSACTIONS GRID ROW DETAILS}        ${EMPTY}
${TRANSACTION CODE COLUMN NAME}         Transaction Code
${NEW PRODUCT NAME}                     ${EMPTY}
${PRODUCT COLUMN NAME}                  Product
${TEMP RECEIVED CHARGES GRID ROW DATA}      ${EMPTY}
${CREATED NOTE}                         ${EMPTY}
${WIN DISPUTE DESCRIPTION}              ${EMPTY}
${RESOLUTIONS GRID ROW DETAILS}         ${EMPTY}
${FIRST ROW AUDIT ACCOUNT}              ${EMPTY}
${FIRST ROW STATEMENT NUMBER}           ${EMPTY}
${CREATED RESOLUTION DESCRIPTION}        ${EMPTY}
${OUTBOUND STATEMENT GRID ROW DATA}      ${EMPTY}
${ADJUSTMENT FOLDER NAME}               ${EMPTY}

*** Keywords ***
Click on Home Icon and Select 'Bill And Audit' From Main Menu
    ${STATUS} =     set variable    False
    select bill and audit submenu
    ${STATUS} =     switch to bill and audit
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Page Title
    ${ACTUAL PAGE TITLE} =  get bill and audit page title
    should contain     ${ACTUAL PAGE TITLE}     ${EXPECTED PAGE TITLE}
    [Teardown]      run keyword unless     '${ACTUAL PAGE TITLE}'=='${EXPECTED PAGE TITLE}'    Log Screenshot

Verify Select Outbound Statements Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select outbound statements tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Adjustment Folders Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click adjustment folders button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Adjustment Folder Status
    [Arguments]     @{FOLDER STATUS LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     set adjustment folder status         @{FOLDER STATUS LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Adjustment Folders Search Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click adjustment folders search button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Filter Adjustment Folders Grid
    [Arguments]     ${COLUMN NAME}      ${FILTER ITEM NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     filter adjustment folders grid         ${COLUMN NAME}      ${FILTER ITEM NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Adjustment Folders Grid Inline Action Button
    [Arguments]     ${ADJUSTMENT FOLDER}
    ${STATUS} =     set variable    False
    ${STATUS} =     click adjustment folders grid inline action button      ${ADJUSTMENT FOLDER}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Inline Action Item
    [Arguments]     ${INLINE ITEM}
    ${STATUS} =     set variable    False
    ${STATUS} =     BillAndAudit.select inline action item     ${INLINE ITEM}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Adjustment Folders Calender Year
    ${ADJUSTMENT FOLDER CALENDER YEAR} =     get adjustment folders calender year
    set suite variable      ${ADJUSTMENT FOLDER CALENDER YEAR}
    log     ${ADJUSTMENT FOLDER CALENDER YEAR}
    should not be equal     ${ADJUSTMENT FOLDER CALENDER YEAR}     'False'
    [Teardown]      run keyword if    '${ADJUSTMENT FOLDER CALENDER YEAR}'=='False'    Log Screenshot

Verify Click Add New Adjustment Charge Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click add new adjustment charge button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Charges Grid Adjustment Statement
    ${STATUS} =     set variable    False
    ${STATUS} =     set charges grid adjustment statement         ${ADJUSTMENT FOLDER CALENDER YEAR}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Charges Begin Date
    [Arguments]     ${BEGIN DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set charge begin date       ${BEGIN DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Charges End Date
    [Arguments]     ${END DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set charge end date        ${END DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Charges Grid Charge Name
    ${CREATED CHARGE NAME} =     set charges grid charge name
    set suite variable      ${CREATED CHARGE NAME}
    log     ${CREATED CHARGE NAME}
    should not be equal     ${CREATED CHARGE NAME}     'False'
    [Teardown]      run keyword if    '${CREATED CHARGE NAME}'=='False'    Log Screenshot

Verify Set Charges Grid Currency
    [Arguments]     ${CURRENCY}
    ${STATUS} =     set variable    False
    ${STATUS} =     set charges grid currency           ${CURRENCY}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Charges Grid Amount
    [Arguments]     ${AMOUNT}
    ${STATUS} =     set variable    False
    ${STATUS} =     set charges grid amount             ${AMOUNT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Charges Tab Save Changes Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click charges tab save changes button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Charges Grid Row Checkbox
    ${STATUS} =     set variable    False
    ${STATUS} =     select charges grid row checkbox            ${CREATED CHARGE NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Remove From This Adjustment Folder Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click remove from this adjustment folder button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Filter Charges Grid
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     filter charges grid        ${COLUMN NAME}      ${CREATED CHARGE NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Close Current Tab
    [Arguments]     ${TAB NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     BillAndAudit.close current tab          ${TAB NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Adjustment Folder Bill Account
    [Arguments]     @{ADJUSTMENT FOLDER BILL ACCOUNT}
    ${STATUS} =     set variable    False
    ${STATUS} =     set adjustment folder bill account         @{ADJUSTMENT FOLDER BILL ACCOUNT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Adjustment Folder Name
    [Arguments]     @{ADJUSTMENT FOLDER FOLDER NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set adjustment folder name         @{ADJUSTMENT FOLDER FOLDER NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Add Related Dispute Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click add related dispute button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Add Disputes Grid Row Checkbox
    [Arguments]     ${AUDIT ACCOUNT}
    ${STATUS} =     set variable    False
    ${STATUS} =     select add disputes grid row checkbox       ${AUDIT ACCOUNT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Add Dispute Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click add dispute save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Remove Dispute Button Without Selection
    ${STATUS} =     set variable    False
    ${STATUS} =     click remove dispute button without selection
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Charges Begin Date For Add Charge
    [Arguments]     ${BEGIN DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set charge begin date       ${BEGIN DATE}       ${True}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Charges End Date For Add Charge
    [Arguments]     ${END DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set charge end date        ${END DATE}      ${True}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Charges Grid Charge Name For Add Charge
    [Arguments]     ${CHARGE NAME PREFIX FOR ADD CHARGE}
    ${CREATED CHARGE NAME} =     set charges grid charge name       ${CHARGE NAME PREFIX FOR ADD CHARGE}
    set suite variable      ${CREATED CHARGE NAME}
    log     ${CREATED CHARGE NAME}
    should not be equal     ${CREATED CHARGE NAME}     'False'
    [Teardown]      run keyword if    '${CREATED CHARGE NAME}'=='False'    Log Screenshot

Verify Set Charges Grid Accounting Code
    [Arguments]     ${CHARGES GRID ACCOUNTING CODE ADD CHARGE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set charges grid accounting code           ${CHARGES GRID ACCOUNTING CODE ADD CHARGE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Remove From This Adjustment Folder Button Without Selecting Checkbox
    ${STATUS} =     set variable    False
    ${STATUS} =     click remove from this adjustment folder button     ${False}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Move To Another Adjustment Folder Button Without Selecting Checkbox
    ${STATUS} =     set variable    False
    ${STATUS} =     click move to another adjustment folder button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Disputes Grid Row Checkbox
    [Arguments]     ${STATEMENT NUMBER}
    ${STATUS} =     set variable    False
    ${STATUS} =     select disputes grid row checkbox       ${STATEMENT NUMBER}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Remove Dispute Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click remove dispute button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Add Dispute Statement Number
    [Arguments]     ${STATEMENT NUMBER}
    ${STATUS} =     set variable    False
    ${STATUS} =     set add dispute statement number        ${STATEMENT NUMBER}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Add Dispute Dispute Type
    [Arguments]     ${DISPUTE TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set add dispute dispute type            ${DISPUTE TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Add Dispute Status
    [Arguments]     ${DISPUTE STATUS}
    ${STATUS} =     set variable    False
    ${STATUS} =     set add dispute status                  ${DISPUTE STATUS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Add Dispute Line Item Group
    [Arguments]     ${LINE ITEM GROUP}
    ${STATUS} =     set variable    False
    ${STATUS} =     set add dispute line item group         ${LINE ITEM GROUP}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Add Dispute Date
    [Arguments]     ${DISPUTE DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set add dispute date                    ${DISPUTE DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Add Disputes Search Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click add disputes search button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Disputes Grid Row Details
    ${DISPUTES GRID ROW DETAILS} =     get disputes grid row details
    set suite variable      ${DISPUTES GRID ROW DETAILS}
    ${LENGTH} =     get length      ${DISPUTES GRID ROW DETAILS}
    [Teardown]      run keyword if    '${LENGTH}'=='0'    Log Screenshot

Verify Get Add Disputes Grid Row Details
    ${ADD DISPUTES GRID ROW DETAILS} =     get add disputes grid row details
    set suite variable      ${ADD DISPUTES GRID ROW DETAILS}
    ${LENGTH} =     get length      ${ADD DISPUTES GRID ROW DETAILS}
    [Teardown]      run keyword if    '${LENGTH}'=='0'    Log Screenshot

Verify Filter Disputes Grid Status
    ${STATUS} =     set variable    False
    ${ADD DISPUTES STATUS} =   Get From Dictionary     ${ADD DISPUTES GRID ROW DETAILS}      Status
    ${STATUS} =     filter disputes grid        ${STATUS COLUMN NAME}      ${ADD DISPUTES STATUS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Filter Disputes Grid Dispute Type
    ${STATUS} =     set variable    False
    ${ADD DISPUTES DISPUTE TYPE} =   Get From Dictionary     ${ADD DISPUTES GRID ROW DETAILS}      Dispute Type
    ${STATUS} =     filter disputes grid        ${DISPUTE TYPE COLUMN NAME}      ${ADD DISPUTES DISPUTE TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Disputes Grid Statement Begin Date
    ${ADD DISPUTES GRID STATEMENT BEGIN DATE} =   Get From Dictionary     ${ADD DISPUTES GRID ROW DETAILS}      Statement Begin Date
    ${DISPUTES GRID STATEMENT BEGIN DATE} =   Get From Dictionary     ${DISPUTES GRID ROW DETAILS}      Statement Begin Date
    should be equal     ${ADD DISPUTES GRID STATEMENT BEGIN DATE}      ${DISPUTES GRID STATEMENT BEGIN DATE}
    [Teardown]      run keyword unless     '${ADD DISPUTES GRID STATEMENT BEGIN DATE}'=='${DISPUTES GRID STATEMENT BEGIN DATE}'    Log Screenshot

Verify Disputes Grid Statement End Date
    ${ADD DISPUTES GRID STATEMENT END DATE} =   Get From Dictionary     ${ADD DISPUTES GRID ROW DETAILS}      Statement End Date
    ${DISPUTES GRID STATEMENT END DATE} =   Get From Dictionary     ${DISPUTES GRID ROW DETAILS}      Statement End Date
    should be equal     ${ADD DISPUTES GRID STATEMENT END DATE}      ${DISPUTES GRID STATEMENT END DATE}
    [Teardown]      run keyword unless     '${ADD DISPUTES GRID STATEMENT END DATE}'=='${DISPUTES GRID STATEMENT END DATE}'    Log Screenshot

Verify Disputes Grid Dispute Amount
    ${ADD DISPUTES GRID DISPUTE AMOUNT} =   Get From Dictionary     ${ADD DISPUTES GRID ROW DETAILS}      Dispute Amount
    ${DISPUTES GRID DISPUTE AMOUNT} =   Get From Dictionary     ${DISPUTES GRID ROW DETAILS}      Dispute Amount
    should be equal     ${ADD DISPUTES GRID DISPUTE AMOUNT}      ${DISPUTES GRID DISPUTE AMOUNT}
    [Teardown]      run keyword unless     '${ADD DISPUTES GRID DISPUTE AMOUNT}'=='${DISPUTES GRID DISPUTE AMOUNT}'    Log Screenshot

Verify Disputes Grid Statement Number
    ${ADD DISPUTES GRID STATEMENT NUMBER} =   Get From Dictionary     ${ADD DISPUTES GRID ROW DETAILS}      Statement Number
    ${DISPUTES GRID STATEMENT NUMBER} =   Get From Dictionary     ${DISPUTES GRID ROW DETAILS}      Statement Number
    should be equal     ${ADD DISPUTES GRID STATEMENT NUMBER}      ${DISPUTES GRID STATEMENT NUMBER}
    [Teardown]      run keyword unless     '${ADD DISPUTES GRID STATEMENT NUMBER}'=='${DISPUTES GRID STATEMENT NUMBER}'    Log Screenshot

Verify Filter Charges Grid Column
    [Arguments]     ${COLUMN NAME}      ${CHARGE NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     filter charges grid        ${COLUMN NAME}      ${CHARGE NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Charges Grid Row Checkbox With Unique Identifier
    [Arguments]     ${CHARGE NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     select charges grid row checkbox            ${CHARGE NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Move To Another Adjustment Folder Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click move to another adjustment folder button      ${True}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Move Charges Adjustment Folder Name
    [Arguments]     ${ADJUSTMENT FOLDER NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set move charges adjustment folder name        ${ADJUSTMENT FOLDER NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Move To Adjustment Folder Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click move to adjustment folder save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Charges Grid Row Details
    ${CHARGES GRID ROW DETAILS} =     get charges grid row details
    set suite variable      ${CHARGES GRID ROW DETAILS}
    ${LENGTH} =     get length      ${CHARGES GRID ROW DETAILS}
    [Teardown]      run keyword if    '${LENGTH}'=='0'    Log Screenshot

Verify Compare Charges Details After Moving
    ${STATUS} =     set variable    False
    ${ACTUAL CHARGES GRID ROW DETAILS} =        set variable      ${CHARGES GRID ROW DETAILS}
    ${CHARGES GRID ROW DETAILS} =     get charges grid row details
    dictionaries should be equal        ${ACTUAL CHARGES GRID ROW DETAILS}      ${CHARGES GRID ROW DETAILS}
    ${STATUS} =     set variable    True
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Clear Filter
    [Arguments]     ${COLUMN NAME TO CLEAR FILTER}
    ${STATUS} =     set variable    False
    ${STATUS} =     BillAndAudit.clear filter        ${COLUMN NAME TO CLEAR FILTER}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Inbound Statement Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select inbound statement tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Create New Statement Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click create new statement button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Input Field Is Mandatory
    [Arguments]     ${LABEL TEXT}
    ${STATUS} =     set variable    False
    ${STATUS} =     is field mandatory        ${LABEL TEXT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Audit Account
    [Arguments]     ${AUDIT ACCOUNT}
    ${STATUS} =     set variable    False
    ${STATUS} =     set audit account        ${AUDIT ACCOUNT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Statement Number
    ${CREATED STATEMENT NUMBER} =     set statement number
    set suite variable      ${CREATED STATEMENT NUMBER}
    [Teardown]      run keyword if    '${CREATED STATEMENT NUMBER}'==''    Log Screenshot

Verify Set Statement Currency
    [Arguments]     ${STAEMENT CURRENCY}
    ${STATUS} =     set variable    False
    ${STATUS} =     set statement currency        ${STAEMENT CURRENCY}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Vat Code
    [Arguments]     ${VAT CODE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set vat code        ${VAT CODE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Vat Amount
    [Arguments]     ${VAT AMOUNT}
    ${STATUS} =     set variable    False
    ${STATUS} =     set vat amount        ${VAT AMOUNT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Total Amount
    [Arguments]     ${TOTAL AMOUNT}
    ${STATUS} =     set variable    False
    ${STATUS} =     set total amount        ${TOTAL AMOUNT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Total Amount With Taxes
    [Arguments]     ${TOTAL AMOUNT WITH TAXES}
    ${STATUS} =     set variable    False
    ${STATUS} =     set total amount with taxes        ${TOTAL AMOUNT WITH TAXES}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Statement Begin Date
    [Arguments]     ${STATEMENT BEGIN DATE}
    ${CREATED STATEMENT BEGIN DATE} =     set statement begin date      ${STATEMENT BEGIN DATE}
    set suite variable      ${CREATED STATEMENT BEGIN DATE}
    [Teardown]      run keyword if    '${CREATED STATEMENT BEGIN DATE}'==''    Log Screenshot

Verify Set Statement End Date
    [Arguments]     ${STATEMENT END DATE}
    ${CREATED STATEMENT END DATE} =     set statement end date      ${STATEMENT END DATE}
    set suite variable      ${CREATED STATEMENT END DATE}
    [Teardown]      run keyword if    '${CREATED STATEMENT END DATE}'==''    Log Screenshot

Verify Set Statement Issued Date
    [Arguments]     ${STATEMENT ISSUED DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set statement issued date        ${STATEMENT ISSUED DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Statement Received Date
    [Arguments]     ${STATEMENT RECEIVED DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set statement received date       ${STATEMENT RECEIVED DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Statement Due Date
    [Arguments]     ${STATEMENT DUE DATE}
    ${CREATED STATEMENT DUE DATE} =     set statement due date      ${STATEMENT DUE DATE}
    set suite variable      ${CREATED STATEMENT DUE DATE}
    [Teardown]      run keyword if    '${CREATED STATEMENT DUE DATE}'==''    Log Screenshot

Verify Set Base Currency
    [Arguments]     ${BASE CURRENCY}
    ${STATUS} =     set variable    False
    ${STATUS} =     set base currency       ${BASE CURRENCY}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Exchange Rate
    [Arguments]     ${EXCHANGE RATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     BillAndAudit.set exchange rate       ${EXCHANGE RATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Exchange Rate Date
    [Arguments]     ${EXCHANGE RATE DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set exchange rate date       ${EXCHANGE RATE DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Statement Entry Cancel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click statement entry cancel button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Statement Entry Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click statement entry save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Audit Account For Search
    [Arguments]     @{AUDIT ACCOUNT LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     set audit account for search       @{AUDIT ACCOUNT LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Statement Status For Search
    [Arguments]     @{STATEMENT STATUS LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     set statement status for search       @{STATEMENT STATUS LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Begin Date For Search
    [Arguments]     ${BEGIN DATE}=${CREATED STATEMENT BEGIN DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set begin date for search      ${BEGIN DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set End Date For Search
    ${STATUS} =     set variable    False
    ${STATUS} =     set end date for search       ${CREATED STATEMENT END DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Inbound Statement Search Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click inbound statement search button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Statement Type
    [Arguments]     @{STATEMENT TYPE LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     set statement type      @{STATEMENT TYPE LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Bill Account
    [Arguments]     @{BILL ACCOUNT LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     BillAndAudit.set bill account        @{BILL ACCOUNT LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Outbound Statement Search button
    ${STATUS} =     set variable    False
    ${STATUS} =     click outbound statement search button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Add Non Recurring Charge Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click add non recurring charge button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Outbound Statements Grid Inline Action Button
    [Arguments]     ${ROW IDENTIFIER TEXT}
    ${STATUS} =     set variable    False
    ${STATUS} =     click outbound statements grid inline action button     ${ROW IDENTIFIER TEXT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Accounting Code
    [Arguments]     ${ACCOUNTING CODE}
    ${STATUS} =     set variable    False
    ${STATUS} =     BillAndAudit.set accounting code     ${ACCOUNTING CODE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Non Recurring Charge Begin Date
    [Arguments]     ${BEGIN DATE}=None
    ${NON RECURRING CHARGE BEGIN DATE} =     BillAndAudit.set non recurring charge begin date       ${BEGIN DATE}
    set suite variable      ${NON RECURRING CHARGE BEGIN DATE}
    log     ${NON RECURRING CHARGE BEGIN DATE}
    should not be equal     ${NON RECURRING CHARGE BEGIN DATE}     ''
    [Teardown]      run keyword if    '${NON RECURRING CHARGE BEGIN DATE}'==''    Log Screenshot

Verify Set Non Recurring Charge End Date
    [Arguments]     ${END DATE}=None
    ${NON RECURRING CHARGE END DATE} =     BillAndAudit.set non recurring charge end date       ${END DATE}
    set suite variable      ${NON RECURRING CHARGE END DATE}
    log     ${NON RECURRING CHARGE END DATE}
    should not be equal     ${NON RECURRING CHARGE END DATE}     ''
    [Teardown]      run keyword if    '${NON RECURRING CHARGE END DATE}'==''    Log Screenshot

Verify Set Non Recurring Charge
    [Arguments]     ${NON RECURRING CHARGE PREFIX}
    ${CREATED NON RECURRING CHARGE} =     set non recurring charge       ${NON RECURRING CHARGE PREFIX}
    set suite variable      ${CREATED NON RECURRING CHARGE}
    log     ${CREATED NON RECURRING CHARGE}
    should not be equal     ${CREATED NON RECURRING CHARGE}     ''
    [Teardown]      run keyword if    '${CREATED NON RECURRING CHARGE}'==''    Log Screenshot

Verify Set Charge Category
    [Arguments]     ${CHARGE CATEGORY}
    ${STATUS} =     set variable    False
    ${STATUS} =     set charge category     ${CHARGE CATEGORY}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Currency
    [Arguments]     ${CURRENCY}
    ${STATUS} =     set variable    False
    ${STATUS} =     BillAndAudit.set currency        ${CURRENCY}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Charge Amount
    [Arguments]     ${CHARGE AMOUNT}
    ${STATUS} =     set variable    False
    ${STATUS} =     set charge amount       ${CHARGE AMOUNT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Tax Template
    [Arguments]     ${TAX TEMPLATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     BillAndAudit.set tax template        ${TAX TEMPLATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Non Recurring Charge Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click non recurring charge save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Filter Non Traffic Charges Grid
    [Arguments]     ${COLUMN NAME TO FILTER}
    ${STATUS} =     set variable    False
    ${STATUS} =     filter non traffic charges grid     ${COLUMN NAME TO FILTER}    ${CREATED NON RECURRING CHARGE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Non Traffic Charges Grid Row Details
    ${NON TRAFFIC CHARGES GRID ROW DETAILS} =     get non traffic charges grid row details
    set suite variable      ${NON TRAFFIC CHARGES GRID ROW DETAILS}
    ${LENGTH} =     get length      ${NON TRAFFIC CHARGES GRID ROW DETAILS}
    [Teardown]      run keyword if    '${LENGTH}'=='0'    Log Screenshot

Verify Select Non Traffic Charges Grid Row Checkbox
    ${STATUS} =     set variable    False
    ${STATUS} =     select non traffic charges grid row checkbox    ${CREATED NON RECURRING CHARGE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Non Traffic Charges Delete Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click non traffic charges delete button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify New Non Recurring Charge Is Added In The Grid
    ${STATUS} =     set variable    False
    ${STATUS} =     compare non traffic charges grid row count
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Non Traffic Charges Grid Row Details
    [Arguments]     ${ACCOUNTING CODE}      ${CHARGE CATEGORY}      ${CURRENCY}     ${CHARGE AMOUNT}    ${TAX TEMPLATE}
    ${STATUS} =     set variable    False
    ${CREATED NON TRAFFIC CHARGES GRID ROW DETAILS} =   create dictionary     Accounting Code=${ACCOUNTING CODE}      Start Date=${NON RECURRING CHARGE BEGIN DATE}     End Date=${NON RECURRING CHARGE END DATE}     Charge Name=${CREATED NON RECURRING CHARGE}     Charge Category=${CHARGE CATEGORY}  Currency=${CURRENCY}     Amount=${CHARGE AMOUNT}    Tax Template=${TAX TEMPLATE}
    log     ${CREATED NON TRAFFIC CHARGES GRID ROW DETAILS}
    dictionaries should be equal        ${CREATED NON TRAFFIC CHARGES GRID ROW DETAILS}      ${NON TRAFFIC CHARGES GRID ROW DETAILS}
    ${STATUS} =     set variable    True
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify New Non Recurring Charge Is Deleted
    ${STATUS} =     set variable    False
    ${STATUS} =     is new non recurring charge deleted
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Inbound Statement Grid Row Details
    ${INBOUND STATEMENT GRID ROW DATA} =     get inbound statement grid row details     ${CREATED STATEMENT NUMBER}
    set suite variable      ${INBOUND STATEMENT GRID ROW DATA}
    ${LENGTH} =     get length      ${INBOUND STATEMENT GRID ROW DATA}
    [Teardown]      run keyword if    '${LENGTH}'=='0'    Log Screenshot

Verify Audit Account After Create
    [Arguments]     ${AUDIT ACCOUNT}
    ${ACTUAL AUDIT ACCOUNT} =   Get From Dictionary     ${INBOUND STATEMENT GRID ROW DATA}      Audit Account
    should be equal     ${ACTUAL AUDIT ACCOUNT}      ${AUDIT ACCOUNT}
    [Teardown]      run keyword unless     '${ACTUAL AUDIT ACCOUNT}'=='${AUDIT ACCOUNT}'    Log Screenshot

Verify Statement Number After Create
    ${ACTUAL STATEMENT NUMBER} =   Get From Dictionary     ${INBOUND STATEMENT GRID ROW DATA}      Statement Number
    should be equal     ${ACTUAL STATEMENT NUMBER}      ${CREATED STATEMENT NUMBER}
    [Teardown]      run keyword unless     '${ACTUAL STATEMENT NUMBER}'=='${CREATED STATEMENT NUMBER}'    Log Screenshot

Verify Statement Begin Date After Create
    ${ACTUAL BEGIN DATE} =   Get From Dictionary     ${INBOUND STATEMENT GRID ROW DATA}      Begin Date
    should be equal     ${ACTUAL BEGIN DATE}      ${CREATED STATEMENT BEGIN DATE}
    [Teardown]      run keyword unless     '${ACTUAL BEGIN DATE}'=='${CREATED STATEMENT BEGIN DATE}'    Log Screenshot

Verify Statement End Date After Create
    ${ACTUAL END DATE} =   Get From Dictionary     ${INBOUND STATEMENT GRID ROW DATA}      End Date
    should be equal     ${ACTUAL END DATE}      ${CREATED STATEMENT END DATE}
    [Teardown]      run keyword unless     '${ACTUAL END DATE}'=='${CREATED STATEMENT END DATE}'    Log Screenshot

Verify Total Amount After Create
    [Arguments]     ${TOTAL AMOUNT}
    ${ACTUAL TOTAL AMOUNT} =   Get From Dictionary     ${INBOUND STATEMENT GRID ROW DATA}      Amount
    should be equal     ${ACTUAL TOTAL AMOUNT}      ${TOTAL AMOUNT}
    [Teardown]      run keyword unless     '${ACTUAL TOTAL AMOUNT}'=='${TOTAL AMOUNT}'    Log Screenshot

Verify Statement Due Date After Create
    ${ACTUAL DUE DATE} =   Get From Dictionary     ${INBOUND STATEMENT GRID ROW DATA}      Final Payment Due Date
    should be equal     ${ACTUAL DUE DATE}      ${CREATED STATEMENT DUE DATE}
    [Teardown]      run keyword unless     '${ACTUAL DUE DATE}'=='${CREATED STATEMENT DUE DATE}'    Log Screenshot

Verify Select Created Inbound Statement Checkbox
    ${STATUS} =     set variable    False
    ${STATUS} =     select inbound statement grid checkbox      ${CREATED STATEMENT NUMBER}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Delete Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click delete button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify New Statement Is Deleted Successfully
    ${STATUS} =     set variable    False
    ${STATUS} =     is new statement deleted successfully
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Inbound Statement Grid Inline Action Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click inbound statement grid inline action button       ${CREATED STATEMENT NUMBER}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Bulk Add Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click bulk add button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Tariff Type
    [Arguments]     ${TARIFF TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set tariff type       ${TARIFF TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Line Item Type
    [Arguments]     ${LINE ITEM TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set line item type       ${LINE ITEM TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Service Group
    [Arguments]     ${SERVICE GROUP}
    ${STATUS} =     set variable    False
    ${STATUS} =     set service group       ${SERVICE GROUP}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Product
    [Arguments]     ${PRODUCT}
    ${STATUS} =     set variable    False
    ${STATUS} =     set product       ${PRODUCT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Time Band
    [Arguments]     ${TIME BAND}
    ${STATUS} =     set variable    False
    ${STATUS} =     set time band       ${TIME BAND}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Tier
    [Arguments]     ${TIER}
    ${STATUS} =     set variable    False
    ${STATUS} =     set tier       ${TIER}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Rating Unit
    [Arguments]     ${RATING UNIT}
    ${STATUS} =     set variable    False
    ${STATUS} =     set rating unit       ${RATING UNIT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Bulk Add Begin Date
    [Arguments]     ${BEGIN DATE}
    ${BULK ADDED BEGIN DATE} =     set bulk add begin date       ${BEGIN DATE}
    set suite variable      ${BULK ADDED BEGIN DATE}
    [Teardown]      run keyword if    '${BULK ADDED BEGIN DATE}'==''    Log Screenshot

Verify Set Bulk Add End Date
    [Arguments]     ${END DATE}
    ${BULK ADDED END DATE} =     set bulk add end date       ${END DATE}
    set suite variable      ${BULK ADDED END DATE}
    [Teardown]      run keyword if    '${BULK ADDED END DATE}'==''    Log Screenshot

Verify Click Bulk Edit Undo Reset Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click bulk edit undo reset button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Input Field Is Reset
    [Arguments]     ${FIELD LABEL}
    ${STATUS} =     set variable    False
    ${STATUS} =     is input field reset       ${FIELD LABEL}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Bulk Edit Cancel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click bulk edit cancel button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Bulk Add Pop Up Is Cancelled
    ${STATUS} =     set variable    False
    ${STATUS} =     is bulk add pop up cancelled
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Bulk Edit Submit Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click bulk edit submit button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Value In Received Charges Grid Column
    [Arguments]     ${COLUMN NAME}      ${VALUE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set value in received charges grid column       ${COLUMN NAME}      ${VALUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Received Charges Save Changes Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click received charges save changes button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Received Charges Grid Row Details
    ${RECEIVED CHARGES GRID ROW DATA} =     get received charges grid row details
    set suite variable      ${RECEIVED CHARGES GRID ROW DATA}
    ${TEMP RECEIVED CHARGES GRID ROW DATA} =     copy dictionary     ${RECEIVED CHARGES GRID ROW DATA}
    set suite variable      ${TEMP RECEIVED CHARGES GRID ROW DATA}
    ${LENGTH} =     get length      ${RECEIVED CHARGES GRID ROW DATA}
    [Teardown]      run keyword if    '${LENGTH}'=='0'    Log Screenshot

Verify Grid Filter Details
    [Arguments]     ${COLUMN NAME}      @{LIST OF ITEMS}
    ${STATUS} =     set variable    False
    ${STATUS} =     grid filter details       ${COLUMN NAME}      @{LIST OF ITEMS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Received Charges Grid Multiple Rows Checkbox
    ${STATUS} =     set variable    False
    ${STATUS} =     select received charges grid multiple rows checkbox
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Bulk Edit Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click bulk edit button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Statement Details Grid Delete Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click statement details grid delete button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Bulk Add Number Of Rows
    [Arguments]     ${NUMBER OF ROWS}
    ${STATUS} =     set variable    False
    ${STATUS} =     set number of rows       ${NUMBER OF ROWS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Tariff Type After Bulk Add
    [Arguments]     ${TARIFF TYPE}
    ${ACTUAL TARIFF TYPE} =   Get From Dictionary     ${RECEIVED CHARGES GRID ROW DATA}      Tariff Type
    should be equal     ${ACTUAL TARIFF TYPE}      ${TARIFF TYPE}
    [Teardown]      run keyword unless     '${ACTUAL TARIFF TYPE}'=='${TARIFF TYPE}'    Log Screenshot

Verify Line Item Type After Bulk Add
    [Arguments]     ${LINE ITEM TYPE}
    ${ACTUAL LINE ITEM TYPE} =   Get From Dictionary     ${RECEIVED CHARGES GRID ROW DATA}      Line Item Type
    should be equal     ${ACTUAL LINE ITEM TYPE}      ${LINE ITEM TYPE}
    [Teardown]      run keyword unless     '${ACTUAL LINE ITEM TYPE}'=='${LINE ITEM TYPE}'    Log Screenshot

Verify Service Group After Bulk Add
    [Arguments]     ${SERVICE GROUP}
    ${ACTUAL SERVICE GROUP} =   Get From Dictionary     ${RECEIVED CHARGES GRID ROW DATA}      Service Group
    should be equal     ${ACTUAL SERVICE GROUP}      ${SERVICE GROUP}
    [Teardown]      run keyword unless     '${ACTUAL SERVICE GROUP}'=='${SERVICE GROUP}'    Log Screenshot

Verify Product After Bulk Add
    [Arguments]     ${PRODUCT}
    ${ACTUAL PRODUCT} =   Get From Dictionary     ${RECEIVED CHARGES GRID ROW DATA}      Product
    should be equal     ${ACTUAL PRODUCT}      ${PRODUCT}
    [Teardown]      run keyword unless     '${ACTUAL PRODUCT}'=='${PRODUCT}'    Log Screenshot

Verify Time Band After Bulk Add
    [Arguments]     ${TIME BAND}
    ${ACTUAL TIME BAND} =   Get From Dictionary     ${RECEIVED CHARGES GRID ROW DATA}      Time Band
    should be equal     ${ACTUAL TIME BAND}      ${TIME BAND}
    [Teardown]      run keyword unless     '${ACTUAL TIME BAND}'=='${TIME BAND}'    Log Screenshot

Verify Begin Date After Bulk Add
    ${ACTUAL BEGIN DATE} =   Get From Dictionary     ${RECEIVED CHARGES GRID ROW DATA}      Begin Date
    should be equal     ${ACTUAL BEGIN DATE}      ${BULK ADDED BEGIN DATE}
    [Teardown]      run keyword unless     '${ACTUAL BEGIN DATE}'=='${BULK ADDED BEGIN DATE}'    Log Screenshot

Verify End Date After Bulk Add
    ${ACTUAL END DATE} =   Get From Dictionary     ${RECEIVED CHARGES GRID ROW DATA}      End Date
    should be equal     ${ACTUAL END DATE}      ${BULK ADDED END DATE}
    [Teardown]      run keyword unless     '${ACTUAL END DATE}'=='${BULK ADDED END DATE}'    Log Screenshot

Verify Rating Unit After Bulk Add
    [Arguments]     ${RATING UNIT}
    ${ACTUAL RATING UNIT} =   Get From Dictionary     ${RECEIVED CHARGES GRID ROW DATA}      Rating Unit
    should be equal     ${ACTUAL RATING UNIT}      ${RATING UNIT}
    [Teardown]      run keyword unless     '${ACTUAL RATING UNIT}'=='${RATING UNIT}'    Log Screenshot

Verify Minutes/Quantity After Bulk Add
    [Arguments]     ${MINUTES/QUANTITY}
    ${ACTUAL MINUTES/QUANTITY} =   Get From Dictionary     ${RECEIVED CHARGES GRID ROW DATA}      Minutes/Quantity
    should be equal     ${ACTUAL MINUTES/QUANTITY}      ${MINUTES/QUANTITY}
    [Teardown]      run keyword unless     '${ACTUAL MINUTES/QUANTITY}'=='${MINUTES/QUANTITY}'    Log Screenshot

Verify Rate After Bulk Add
    [Arguments]     ${RATE}
    ${ACTUAL RATE} =   Get From Dictionary     ${RECEIVED CHARGES GRID ROW DATA}      Rate
    should be equal     ${ACTUAL RATE}      ${RATE}
    [Teardown]      run keyword unless     '${ACTUAL RATE}'=='${RATE}'    Log Screenshot

Verify Is Tab Present
    [Arguments]     ${TAB NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is tab present      ${TAB NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set SMS Product
    [Arguments]     ${PRODUCT}
    ${STATUS} =     set variable    False
    ${STATUS} =     set sms product       ${PRODUCT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Update Received Charges Grid First Row Column
    [Arguments]     ${COLUMN NAME}      ${COLUMN VALUE}
    ${STATUS} =     set variable    False
    ${STATUS} =     update received charges grid first row column       ${COLUMN NAME}      ${COLUMN VALUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Received Charges Grid Row Checkbox
    ${STATUS} =     set variable    False
    ${STATUS} =     select received charges grid row checkbox       ${NEW PRODUCT NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Received Charges Save Changes Button Without Changes
    ${STATUS} =     set variable    False
    ${STATUS} =     click received charges save changes button without changes
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Received Charges Cancel Changes Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click received charges cancel changes button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Product In Received Charges Grid
    [Arguments]     ${PRODUCT NAME}
    ${NEW PRODUCT NAME} =     set product in received charges grid     ${PRODUCT NAME}
    set suite variable      ${NEW PRODUCT NAME}
    log     ${NEW PRODUCT NAME}
    should not be equal     ${NEW PRODUCT NAME}     ''
    [Teardown]      run keyword if    '${NEW PRODUCT NAME}'==''    Log Screenshot

Verify Filter Received Charges Grid
    ${STATUS} =     set variable    False
    ${STATUS} =     grid filter details     ${PRODUCT COLUMN NAME}      ${NEW PRODUCT NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Begin Date For Statement Search
    [Arguments]     ${BEGIN DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set begin date for search       ${BEGIN DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set End Date For Statement Search
    [Arguments]     ${END DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set end date for search       ${END DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Inbound Statement Grid First Row Inline Action Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click inbound statement grid first row inline action button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Documents Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     click documents tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Upload Document Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click upload document button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Document Name
    [Arguments]     ${DOCUMENT NAME PREFIX}
    ${NEW DOCUMENT NAME} =     set document name       ${DOCUMENT NAME PREFIX}
    set suite variable     ${NEW DOCUMENT NAME}
    [Teardown]      run keyword if    '${NEW DOCUMENT NAME}'==''    Log Screenshot

Verify Set Document Keyword
    [Arguments]     ${KEYWORD}
    ${STATUS} =     set variable    False
    ${STATUS} =     set document keyword       ${KEYWORD}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Document Reference Number
    [Arguments]     ${REFERENCE NUMBER}
    ${STATUS} =     set variable    False
    ${STATUS} =     set document reference number       ${REFERENCE NUMBER}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Document Date
    [Arguments]     ${DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set document date       ${DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Document Order
    [Arguments]     ${ORDER}
    ${STATUS} =     set variable    False
    ${STATUS} =     set document order       ${ORDER}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Browse Button
    ${STATUS} =     set variable    False
    ${STATUS} =     BillAndAudit.click browse button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select File To Be Uploaded
    [Arguments]     ${FILE PATH}
    ${STATUS} =     set variable    False
    ${STATUS} =     BillAndAudit.select file to be uploaded       ${FILE PATH}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Upload Button
    ${STATUS} =     set variable    False
    ${STATUS} =     BillAndAudit.click upload button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Document Name For Search
    ${STATUS} =     set variable    False
    ${STATUS} =     set document name for search       ${NEW DOCUMENT NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Documents Search Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click document search button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Documents Grid Row Details
    ${DOCUMENTS GRID ROW DETAILS} =     get documents grid row details
    set suite variable      ${DOCUMENTS GRID ROW DETAILS}
    ${LENGTH} =     get length      ${DOCUMENTS GRID ROW DETAILS}
    [Teardown]      run keyword if    '${LENGTH}'=='0'    Log Screenshot

Verify Set Value In Documents Grid
    [Arguments]     ${COLUMN NAME}      ${VALUE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set value in documents grid       ${COLUMN NAME}      ${VALUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Documents Grid Save Changes Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click documents grid save changes button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Documents Grid Cancel Changes Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click documents grid cancel changes button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Documents Grid Row Checkbox
    ${STATUS} =     set variable    False
    ${STATUS} =     select documents grid row checkbox       ${NEW DOCUMENT NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Documents Delete Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click documents delete button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Documents Grid Inline Action Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click documents grid inline action button       ${NEW DOCUMENT NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Documents Grid Delete Inline Action
    ${STATUS} =     set variable    False
    ${STATUS} =     select documents grid delete inline action
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify New Document Is Deleted Successfully
    ${STATUS} =     set variable    False
    ${STATUS} =     is document deleted successfully
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Document Name After Create
    ${ACTUAL DOCUMENT NAME} =   Get From Dictionary     ${DOCUMENTS GRID ROW DETAILS}      Document Name
    should be equal     ${ACTUAL DOCUMENT NAME}      ${NEW DOCUMENT NAME}
    [Teardown]      run keyword unless     '${ACTUAL DOCUMENT NAME}'=='${NEW DOCUMENT NAME}'    Log Screenshot

Verify Keywords After Create
    [Arguments]     ${NEW DOCUMENT KEYWORD}
    ${ACTUAL KEYWORDS} =   Get From Dictionary     ${DOCUMENTS GRID ROW DETAILS}      Keywords
    should be equal     ${ACTUAL KEYWORDS}      ${NEW DOCUMENT KEYWORD}
    [Teardown]      run keyword unless     '${ACTUAL KEYWORDS}'=='${NEW DOCUMENT KEYWORD}'    Log Screenshot

Verify Order After Create
    [Arguments]     ${ORDER}
    ${ACTUAL ORDER} =   Get From Dictionary     ${DOCUMENTS GRID ROW DETAILS}      Order
    should be equal     ${ACTUAL ORDER}      ${ORDER}
    [Teardown]      run keyword unless     '${ACTUAL ORDER}'=='${ORDER}'    Log Screenshot

Verify Reference Number After Create
    [Arguments]     ${REFERENCE NUMBER}
    ${ACTUAL REFERENCE NUMBER} =   Get From Dictionary     ${DOCUMENTS GRID ROW DETAILS}      Reference Number
    should be equal     ${ACTUAL REFERENCE NUMBER}      ${REFERENCE NUMBER}
    [Teardown]      run keyword unless     '${ACTUAL REFERENCE NUMBER}'=='${REFERENCE NUMBER}'    Log Screenshot

Verify Get Total Mapped Line Items Count
    ${STATUS} =     set variable    False
    ${STATUS} =     get total mapped line items count
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Map Unmapped Received Line Items
    ${STATUS} =     set variable    False
    ${STATUS} =     map unmapped received line items
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Map Unmapped Internal Line Items
    ${STATUS} =     set variable    False
    ${STATUS} =     map unmapped internal line items
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Is All Line Items Mapped
    ${STATUS} =     set variable    False
    ${STATUS} =     is all line items mapped
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Line Item Mapping Grid Save Changes Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click line item mapping grid save changes button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Show Summary Link
    ${STATUS} =     set variable    False
    ${STATUS} =     click show summary link
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Statement Summary Status
    [Arguments]     ${STATEMENT SUMMARY STATUS}
    ${STATUS} =     set variable    False
    ${STATUS} =     set statement summary status    ${STATEMENT SUMMARY STATUS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Statement Summary Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click statement summary save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Line Item Mapping Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select line item mapping tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Remove All Mappings Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click remove all mappings button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Is Mapped Statements Validated
    ${STATUS} =     set variable    False
    ${STATUS} =     is mapped statements validated
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Is All Line Items Unmapped
    ${STATUS} =     set variable    False
    ${STATUS} =     is all line items unmapped
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Inbound Statement Begin Date
    [Arguments]     ${BEGIN DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set begin date for search       ${BEGIN DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Inbound Statement Grid Inline Action Button With Identifier
    [Arguments]     ${ROW IDENTIFIER}
    ${STATUS} =     set variable    False
    ${STATUS} =     click inbound statement grid inline action button       ${ROW IDENTIFIER}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Filter Inbound Statements Grid
    [Arguments]     ${COLUMN NAME}       ${FILTER ITEM TEXT}
    ${STATUS} =     set variable    False
    ${STATUS} =     filter inbound statements grid      ${COLUMN NAME}     ${FILTER ITEM TEXT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Value In Received Charges Grid Product Column
    [Arguments]     ${COLUMN NAME}      ${VALUE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set value in received charges grid column       ${COLUMN NAME}      ${VALUE}        ${True}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Transactions Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select transactions tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Add New Record Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click add new record button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Transactions Grid First Row Transaction Code
    [Arguments]     ${TRANSACTION CODE PREFIX}
    ${CREATED TRANSACTION CODE} =     set transactions grid first row transaction code      ${TRANSACTION CODE PREFIX}
    set suite variable      ${CREATED TRANSACTION CODE}
    [Teardown]      run keyword if    '${CREATED TRANSACTION CODE}'==''    Log Screenshot

Verify Set Value In Transactions Grid First Row Column
    [Arguments]     ${COLUMN NAME}      ${COLUMN VALUE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set value in transactions grid first row column     ${COLUMN NAME}      ${COLUMN VALUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Transactions Grid Row Checkbox
    ${STATUS} =     set variable    False
    ${STATUS} =     select transactions grid row checkbox       ${CREATED TRANSACTION CODE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Hide Summary Link
    ${STATUS} =     set variable    False
    ${STATUS} =     click hide summary link
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Transactions Grid Dropdown Value
    [Arguments]     ${COLUMN NAME}      ${COLUMN VALUE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set transactions grid dropdown value     ${COLUMN NAME}      ${COLUMN VALUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Transactions Grid Save Changes Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click transactions grid save changes button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Transactions Grid Delete Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click transactions grid delete button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Transactions Grid Row Details
    ${TRANSACTIONS GRID ROW DETAILS} =     get transactions grid row details
    set suite variable      ${TRANSACTIONS GRID ROW DETAILS}
    ${LENGTH} =     get length      ${TRANSACTIONS GRID ROW DETAILS}
    [Teardown]      run keyword if    '${LENGTH}'=='0'    Log Screenshot

Verify Transactions Grid Row Data
    [Arguments]     ${CREDIT DEBIT}     ${TRANSACTION DETAILS}      ${CURRENCY}     ${AMOUNT}
    ${STATUS} =     set variable    False
    ${CREATED TRANSACTION DETAILS} =   create dictionary     Credit/Debit=${CREDIT DEBIT}      Transaction Details=${TRANSACTION DETAILS}     Currency=${CURRENCY}     Amount=${AMOUNT}     Transaction Code=${CREATED TRANSACTION CODE}
    log     ${CREATED TRANSACTION DETAILS}
    dictionaries should be equal        ${CREATED TRANSACTION DETAILS}      ${TRANSACTIONS GRID ROW DETAILS}
    ${STATUS} =     set variable    True
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Filter Transactions Grid
    @{FILTER ITEM LIST} =       create list     ${CREATED TRANSACTION CODE}
    ${STATUS} =     set variable    False
    ${STATUS} =     filter transactions grid        ${TRANSACTION CODE COLUMN NAME}      @{FILTER ITEM LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Map Unmapped Line Items Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click map unmapped line items button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Map Line Items Delete Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click map line items delete button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Disputes Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select disputes tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Line Item Disputes Grid First Row Inline Action Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click line item disputes grid first row inline action button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Internal Statement Grid Save Changes Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click internal statement grid save changes button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Value In Internal Statement Grid
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set value in internal statement grid    ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Statement Validation Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select statement validation tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Disputes Grid First Row Inline Action Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click disputes grid first row inline action button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Add New Note Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click add new note button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Dispute Note
    [Arguments]     ${NOTE PREFIX}
    ${CREATED NOTE} =     set dispute note        ${NOTE PREFIX}
    set suite variable      ${CREATED NOTE}
    [Teardown]      run keyword if    '${CREATED NOTE}'==''    Log Screenshot

Verify Click Add New Note Cancel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click add new note cancel button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Add New Note Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click add new note save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Filter Disputes Notes Grid
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     filter disputes notes grid     ${COLUMN NAME}       ${CREATED NOTE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Search Results Displayed In The Grid
    ${STATUS} =     set variable    False
    ${STATUS} =     search results displayed in the grid
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Statement Details Disputes Grid First Row Checkbox
    ${STATUS} =     set variable    False
    ${STATUS} =     select statement details disputes grid first row checkbox
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Win Dispute Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click win dispute button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Discrepancy Source
    [Arguments]     ${DISCREPANCY SOURCE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set discrepancy source     ${DISCREPANCY SOURCE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Win Dispute Description
    [Arguments]     ${DESCRIPTION PREFIX}
    ${WIN DISPUTE DESCRIPTION} =     set win dispute description     ${DESCRIPTION PREFIX}
    set suite variable      ${WIN DISPUTE DESCRIPTION}
    log     ${WIN DISPUTE DESCRIPTION}
    [Teardown]      run keyword if    '${WIN DISPUTE DESCRIPTION}'==''    Log Screenshot

Verify Click Win Dispute Cancel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click win dispute cancel button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Win Dispute Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click win dispute save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Filter Dispute Resolutions Grid
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     filter disputes resolutions grid     ${COLUMN NAME}       ${WIN DISPUTE DESCRIPTION}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Resolutions Grid Row Details
    ${RESOLUTIONS GRID ROW DETAILS} =     get resolutions grid row details
    set suite variable      ${RESOLUTIONS GRID ROW DETAILS}
    ${LENGTH} =     get length      ${RESOLUTIONS GRID ROW DETAILS}
    [Teardown]      run keyword if    '${LENGTH}'=='0'    Log Screenshot

Verify Resolutions Grid Row Data
    [Arguments]     ${DISCREPANCY SOURCE}     ${RESOLUTION TYPE}
    ${STATUS} =     set variable    False
    ${CREATED RESOLUTION DETAILS} =   create dictionary     Discrepancy Source=${DISCREPANCY SOURCE}      Resolution Type=${RESOLUTION TYPE}     Description=${WIN DISPUTE DESCRIPTION}
    dictionaries should be equal        ${CREATED RESOLUTION DETAILS}      ${RESOLUTIONS GRID ROW DETAILS}
    ${STATUS} =     set variable    True
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Lose Dispute Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click lose dispute button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Export To Excel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click export to excel button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Upload Statement Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click upload statement button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Upload Statement Browse Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click upload statement browse button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Upload Statement Upload Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click upload statement upload button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Received Charges Grid Changes Are Reverted
    ${RECEIVED CHARGES GRID ROW DATA} =     get received charges grid row details
    ${STATUS} =     set variable    False
    dictionaries should be equal    ${TEMP RECEIVED CHARGES GRID ROW DATA}      ${RECEIVED CHARGES GRID ROW DATA}
    ${STATUS} =     set variable    True
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Inbound Statement Grid First Row Audit Account
    [Arguments]     ${COLUMN NAME}
    ${FIRST ROW AUDIT ACCOUNT} =     get inbound statement grid first row data      ${COLUMN NAME}
    set suite variable      ${FIRST ROW AUDIT ACCOUNT}
    [Teardown]      run keyword if    '${FIRST ROW AUDIT ACCOUNT}'==''    Log Screenshot

Verify Get Inbound Statement Grid First Row Statement Number
    [Arguments]     ${COLUMN NAME}
    ${FIRST ROW STATEMENT NUMBER} =     get inbound statement grid first row data      ${COLUMN NAME}
    set suite variable      ${FIRST ROW STATEMENT NUMBER}
    [Teardown]      run keyword if    '${FIRST ROW STATEMENT NUMBER}'==''    Log Screenshot

Verify Set Status Edited Audit Account For Search
    ${STATUS} =     set variable    False
    @{AUDIT ACCOUNT LIST} =     create list     ${FIRST ROW AUDIT ACCOUNT}
    ${STATUS} =     set audit account for search       @{AUDIT ACCOUNT LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Filter Inbound Statements Grid With Status Edited Statement Number
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     filter inbound statements grid      ${COLUMN NAME}     ${FIRST ROW STATEMENT NUMBER}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Changed Statement Status
    [Arguments]     ${CHANGED STATUS}
    ${ACTUAL STATUS} =      get statement summary status
    should be equal     ${ACTUAL STATUS}      ${CHANGED STATUS}
    [Teardown]      run keyword unless     '${ACTUAL STATUS}'=='${CHANGED STATUS}'    Log Screenshot

Verify Clear Inbound Statement Multi Select Kendo Dropdown
    [Arguments]     ${LABEL TEXT}
    ${STATUS} =     set variable    False
    ${STATUS} =     clear inbound statement multi select kendo dropdown      ${LABEL TEXT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Filter Inbound Statements Grid With Created Statement
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     filter inbound statements grid      ${COLUMN NAME}     ${CREATED STATEMENT NUMBER}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Entry Complete Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click entry complete button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Statement Validation Grid First Row Checkbox
    ${STATUS} =     set variable    False
    ${STATUS} =     select statement validation grid first row checkbox
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Statement Validation Grid First Row Inline Action Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click statement validation grid first row inline action button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Statement Validation Grid Inline Action Item
    [Arguments]     ${INLINE ITEM}
    ${STATUS} =     set variable    False
    ${STATUS} =     select statement validation grid inline action item     ${INLINE ITEM}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Value In Disputes Grid Row
    [Arguments]     ${COLUMN NAME}      ${COLUMN VALUE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set value in disputes grid row      ${COLUMN NAME}     ${COLUMN VALUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Disputes Grid Save Changes Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click disputes grid save changes button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Add Resolution Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click add resolution button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set New Resolution Action Type
    [Arguments]     ${ACTION TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set action type     ${ACTION TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set New Resolution Credit Amount
    [Arguments]     ${CREDIT AMOUNT}
    ${STATUS} =     set variable    False
    ${STATUS} =     set credit amount     ${CREDIT AMOUNT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set New Resolution Discrepancy Source
    [Arguments]     ${DISCREPANCY SOURCE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set discrepancy source     ${DISCREPANCY SOURCE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set New Resolution Description
    [Arguments]     ${DESCRIPTION PREFIX}
    ${CREATED RESOLUTION DESCRIPTION} =     set description     ${DESCRIPTION PREFIX}
    set suite variable      ${CREATED RESOLUTION DESCRIPTION}
    should not be equal     ${CREATED RESOLUTION DESCRIPTION}       ${EMPTY}
    [Teardown]      run keyword if    '${CREATED RESOLUTION DESCRIPTION}'==''    Log Screenshot

Verify Click Add Resolution Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click add resolution save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Value In Resolution Grid Dropdown
    [Arguments]     ${COLUMN NAME}      ${COLUMN VALUE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set value in resolution grid dropdown      ${COLUMN NAME}     ${COLUMN VALUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Value In Resolution Grid
    [Arguments]     ${COLUMN NAME}      ${COLUMN VALUE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set value in resolution grid      ${COLUMN NAME}     ${COLUMN VALUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Resolutions Grid Save Changes Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click resolution grid save changes button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Resolutions Grid Cancel Changes Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click resolution grid cancel changes button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Resolutions Grid First Row Inline Action Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click resolution grid first row inline action button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Delete Inline Action Item
    ${STATUS} =     set variable    False
    ${STATUS} =     select delete inline item
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Finalize Resolution Inline Item
    ${STATUS} =     set variable    False
    ${STATUS} =     select finalize resolution inline item
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Resolutions Grid Row Details
    [Arguments]     ${RESOLUTION TYPE}      ${DISCREPANCY SOURCE}      ${RESOLUTION AMOUNT}
    ${STATUS} =     set variable    False
    ${CREATED RESOLUTION GRID ROW DETAILS} =   create dictionary     Resolution Type=${RESOLUTION TYPE}      Discrepancy Source=${DISCREPANCY SOURCE}     Resolution Amount=${RESOLUTION AMOUNT}     Description=${CREATED RESOLUTION DESCRIPTION}
    ${ACTUAL RESOLUTIONS GRID ROW DATA} =      get resolutions grid row data
    log     ${ACTUAL RESOLUTIONS GRID ROW DATA}
    dictionaries should be equal        ${CREATED RESOLUTION GRID ROW DETAILS}      ${ACTUAL RESOLUTIONS GRID ROW DATA}
    ${STATUS} =     set variable    True
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Expand Current Cycles Section
    ${STATUS} =     set variable    False
    ${STATUS} =     expand current cycles section
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Expand Dispute Contact Section
    ${STATUS} =     set variable    False
    ${STATUS} =     expand dispute contact section
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Billing Cycle Template
    [Arguments]     ${BILLING CYCLE TEMPLATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set billing cycle template      ${BILLING CYCLE TEMPLATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Billing Cycle Begin Date
    [Arguments]     ${BILLING CYCLE BEGIN DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set billing cycle begin date    ${BILLING CYCLE BEGIN DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Residual Traffic Window
    [Arguments]     ${RESIDUAL TRAFFIC WINDOW}
    ${STATUS} =     set variable    False
    ${STATUS} =     set residual traffic window     ${RESIDUAL TRAFFIC WINDOW}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Audit Account Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click audit account save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Audit Account Save Button Without Firstname Lastname
    ${STATUS} =     set variable    False
    ${STATUS} =     click audit account save button without firstname lastname
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Dispute Contact First Name
    [Arguments]     ${FIRST NAME}       ${CLEAR FIELD}
    ${STATUS} =     set variable    False
    ${STATUS} =     set dispute contact first name      ${FIRST NAME}       ${CLEAR FIELD}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Dispute Contact Last Name
    [Arguments]     ${LAST NAME}       ${CLEAR FIELD}
    ${STATUS} =     set variable    False
    ${STATUS} =     set dispute contact last name      ${LAST NAME}       ${CLEAR FIELD}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Dispute Contact State
    [Arguments]     ${STATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set dispute contact state       ${STATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Dispute Contact Email
    [Arguments]     ${EMAIL}
    ${STATUS} =     set variable    False
    ${STATUS} =     set dispute contact email       ${EMAIL}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Close Current Pop Up
    [Arguments]     ${POP UP NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     close current pop up        ${POP UP NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Outbound Statements Grid First Row Inline Action Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click outbound statement grid first row inline action button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Create Non Recurring Charges Button Is Not Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is create non recurring charges button not present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Statement Fields Grid First Row Checkbox
    ${STATUS} =     set variable    False
    ${STATUS} =     click statement fields grid first row checkbox
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Statement Fields Bulk Edit Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click statement fields bulk edit button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Statement Default Value
    [Arguments]     ${STATEMENT DEFAULT VALUE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set statement default value        ${STATEMENT DEFAULT VALUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Statement Fields Save Changes Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click statement fields save changes button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Usage Charges Grid Has No Records Status
    ${STATUS} =     set variable    False
    ${STATUS} =     does usage charges grid have no records
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click View Test Statement File Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click view test statement file button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Test Statements Error Message Given Status
    ${STATUS} =     set variable    False
    ${STATUS} =     is test statements error message given
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Adjustments Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select adjustments tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Add New Adjustment Statement Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click add new adjustment statement button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Adjustments Grid First Row Inline Action Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click adjustments grid first row inline action button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Adjustments Delete Inline Action Item
    ${STATUS} =     set variable    False
    ${STATUS} =     select adjustments delete inline action item
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Account For Search
    [Arguments]     @{ACCOUNT LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     set account for search       @{ACCOUNT LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Value In Outbound Transactions Grid Amount Column
    [Arguments]     ${COLUMN NAME}      ${COLUMN VALUE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set value in outbound transactions grid amount column     ${COLUMN NAME}      ${COLUMN VALUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Outbound Transaction Code After Create
    ${ACTUAL TRANSACTION CODE} =   Get From Dictionary     ${TRANSACTIONS GRID ROW DETAILS}      Transaction Code
    should be equal     ${ACTUAL TRANSACTION CODE}      ${CREATED TRANSACTION CODE}
    [Teardown]      run keyword unless     '${ACTUAL TRANSACTION CODE}'=='${CREATED TRANSACTION CODE}'    Log Screenshot

Verify Outbound Transaction Details After Create
    [Arguments]     ${TRANSACTION DETAILS}
    ${ACTUAL TRANSACTION DETAILS} =   Get From Dictionary     ${TRANSACTIONS GRID ROW DETAILS}      Transaction Details
    should be equal     ${ACTUAL TRANSACTION DETAILS}      ${TRANSACTION DETAILS}
    [Teardown]      run keyword unless     '${ACTUAL TRANSACTION DETAILS}'=='${TRANSACTION DETAILS}'    Log Screenshot

Verify Outbound Transaction Amount After Create
    [Arguments]     ${TRANSACTION AMOUNT}
    ${ACTUAL TRANSACTION AMOUNT} =   Get From Dictionary     ${TRANSACTIONS GRID ROW DETAILS}      Amount
    should be equal     ${ACTUAL TRANSACTION AMOUNT}      ${TRANSACTION AMOUNT}
    [Teardown]      run keyword unless     '${ACTUAL TRANSACTION AMOUNT}'=='${TRANSACTION AMOUNT}'    Log Screenshot

Verify Set Value In Non Traffic Charges Grid Column
    [Arguments]     ${COLUMN NAME}      ${COLUMN VALUE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set value in non traffic charges grid column        ${COLUMN NAME}      ${COLUMN VALUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Non Traffic Charges Save Changes Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click non traffic charges save changes button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Non Recurring Charge Save Button Without Statement Dates
    ${STATUS} =     set variable    False
    ${STATUS} =     click non recurring charge save button without statement dates
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Begin Date For Non Recurring Charge
    [Arguments]     ${BEGIN DATE}
    ${NON RECURRING CHARGE BEGIN DATE} =     set non recurring charge begin date    ${BEGIN DATE}
    set suite variable      ${NON RECURRING CHARGE BEGIN DATE}
    log     ${NON RECURRING CHARGE BEGIN DATE}
    should not be equal     ${NON RECURRING CHARGE BEGIN DATE}     ''
    [Teardown]      run keyword if    '${NON RECURRING CHARGE BEGIN DATE}'==''    Log Screenshot

Verify Set End Date For Non Recurring Charge
    [Arguments]     ${END DATE}
    ${NON RECURRING CHARGE END DATE} =     set non recurring charge end date        ${END DATE}
    set suite variable      ${NON RECURRING CHARGE END DATE}
    log     ${NON RECURRING CHARGE END DATE}
    should not be equal     ${NON RECURRING CHARGE END DATE}     ''
    [Teardown]      run keyword if    '${NON RECURRING CHARGE END DATE}'==''    Log Screenshot

Verify Set Account
    [Arguments]     @{ACCOUNT LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     set account     @{ACCOUNT LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Shortfall Grid Actions
    [Arguments]     ${ACTION ITEM}
    ${STATUS} =     set variable    False
    ${STATUS} =     set shortfall grid actions     ${ACTION ITEM}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Shortfall Grid Save Changes Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click shortfall grid save changes button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Compare Shortfall Grid Status Column Value
    [Arguments]     ${EXPECTED STATUS}
    ${ACTUAL STATUS} =     get shortfall grid status column value
    should be equal     ${EXPECTED STATUS}      ${ACTUAL STATUS}
    [Teardown]      run keyword if    '${EXPECTED STATUS}'=='${ACTUAL STATUS}'    Log Screenshot

Verify Get Outbound Statement Grid Row Data
    ${OUTBOUND STATEMENT GRID ROW DATA} =     get outbound statement grid row data
    set suite variable      ${OUTBOUND STATEMENT GRID ROW DATA}
    ${LENGTH} =     get length      ${OUTBOUND STATEMENT GRID ROW DATA}
    [Teardown]      run keyword if    '${LENGTH}'=='0'    Log Screenshot

Verify New Adjustment Charge Is Created
    ${STATUS} =     set variable    False
    ${STATUS} =     is new adjustment charge created
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Bill Account For Issuing Adjustment Statement
    ${STATUS} =     set variable    False
    ${BILL ACCOUNT TO SET} =    Get From Dictionary     ${OUTBOUND STATEMENT GRID ROW DATA}     Bill Account
    ${STATUS} =     set bill account    ${BILL ACCOUNT TO SET}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Begin Date For Issuing Adjustment Statement
    ${STATUS} =     set variable    False
    ${BEGIN DATE TO SET} =    Get From Dictionary     ${OUTBOUND STATEMENT GRID ROW DATA}     Begin Date
    ${STATUS} =     set begin date for search    ${BEGIN DATE TO SET}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set End Date For Issuing Adjustment Statement
    ${STATUS} =     set variable    False
    ${END DATE TO SET} =    Get From Dictionary     ${OUTBOUND STATEMENT GRID ROW DATA}     End Date
    ${STATUS} =     set end date for search    ${END DATE TO SET}       ${True}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Add Financial Charges Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click add financial charges button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Adjustment Charge Product
    [Arguments]     ${PRODUCT NAME PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set adjustment charge product       ${PRODUCT NAME PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Adjustment Charge Begin Date
    [Arguments]     ${BEGIN DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set adjustment charge begin date       ${BEGIN DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Adjustment Charge End Date
    [Arguments]     ${END DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set adjustment charge end date       ${END DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Adjustment Charge Currency
    [Arguments]     ${CURRENCY}
    ${STATUS} =     set variable    False
    ${STATUS} =     set adjustment charge currency       ${CURRENCY}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Adjustment Charge Amount
    [Arguments]     ${AMOUNT}
    ${STATUS} =     set variable    False
    ${STATUS} =     set adjustment charge amount       ${AMOUNT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Create Adjustment Charge Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click create adjustment charge save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify New Financial Charge Is Created
    ${STATUS} =     set variable    False
    ${STATUS} =     is new financial charge created
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Adjustment Charge Grid First Row Checkbox
    ${STATUS} =     set variable    False
    ${STATUS} =     select adjustment charge grid first row checkbox
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Assign To New Folder Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click assign to new folder button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Assign Adjustment Charge Folder Name
    [Arguments]     ${FOLDER NAME PREFIX}
    ${ADJUSTMENT FOLDER NAME} =     set assign adjustment charge folder name       ${FOLDER NAME PREFIX}
    set suite variable      ${ADJUSTMENT FOLDER NAME}
    log     ${ADJUSTMENT FOLDER NAME}
    should not be equal     ${ADJUSTMENT FOLDER NAME}     ''
    [Teardown]      run keyword if    '${ADJUSTMENT FOLDER NAME}'==''    Log Screenshot

Verify Set Adjustment Type
    [Arguments]     ${ADJUSTMENT TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set adjustment type       ${ADJUSTMENT TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Assign Adjustment Charge Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click assign adjustment charge save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Adjustment Folder Name For Search
    ${STATUS} =     set variable    False
    @{ADJUSTMENT FOLDER NAME LIST} =    create list     ${ADJUSTMENT FOLDER NAME}
    ${STATUS} =     set adjustment folder name         @{ADJUSTMENT FOLDER NAME LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Adjustment Folders Grid Inline Action Button For Created Folder
    ${STATUS} =     set variable    False
    ${STATUS} =     click adjustment folders grid inline action button      ${ADJUSTMENT FOLDER NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Adjustment Folder Summary Status
    [Arguments]     ${FOLDER STATUS}
    ${STATUS} =     set variable    False
    ${STATUS} =     set adjustment folder summary status       ${FOLDER STATUS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Adjustment Folder Summary Save Button
    [Arguments]     ${STATUS TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     click adjustment folder summary save button       ${STATUS TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Adjustment Charges Grid First Row Inline Action Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click adjustment charges grid first row inline action button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Adjustment Charges Reject Inline Action Item
    [Arguments]     ${INLINE ITEM}
    ${STATUS} =     set variable    False
    ${STATUS} =     select adjustment charges reject inline item       ${INLINE ITEM}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Suspect Status
    [Arguments]     @{STATUS LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     set suspect status       @{STATUS LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Deselect Suspect Flag Ignored Checkbox
    ${STATUS} =     set variable    False
    ${STATUS} =     select deselect suspect flag ignored checkbox
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Suspect Flags Grid Save Changes Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click suspect flags grid save changes button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Line Item Mapping Tab Is Loaded Properly
    ${STATUS} =     set variable    False
    ${STATUS} =     is line item mapping tab loaded properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Audit Account Info Pop Up Is Loaded Properly
    ${STATUS} =     set variable    False
    ${STATUS} =     is audit account info pop up loaded properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Bill Account Info Pop Up Is Loaded Properly
    ${STATUS} =     set variable    False
    ${STATUS} =     is bill account info pop up loaded properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Adjustments Tab Is Loaded Properly
    ${STATUS} =     set variable    False
    ${STATUS} =     is adjustments tab loaded properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Statement Details Page Is Loaded Properly
    ${STATUS} =     set variable    False
    ${STATUS} =     is statement details page loaded properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Usage Charges Tab Is Loaded Properly
    ${STATUS} =     set variable    False
    ${STATUS} =     is usage charges tab loaded properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Non Traffic Charges Tab Is Loaded Properly
    ${STATUS} =     set variable    False
    ${STATUS} =     is non traffic charges tab loaded properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Win Dispute Button Is Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is win dispute button present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Lose Dispute Button Is Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is lose dispute button present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Statement Validation Tab Is Loaded Properly
    ${STATUS} =     set variable    False
    ${STATUS} =     is statement validation tab loaded properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Received Charges Product Name
    [Arguments]     ${PRODUCT NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set received charges grid product name       ${PRODUCT NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Outbound Statements Begin Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${OUTBOUND STATEMENTS BEGIN DATE} =     get outbound statements begin date
    log     ${OUTBOUND STATEMENTS BEGIN DATE}
    ${STATUS} =     validate date format        ${OUTBOUND STATEMENTS BEGIN DATE}      ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Outbound Statements End Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${OUTBOUND STATEMENTS END DATE} =     get outbound statements end date
    log     ${OUTBOUND STATEMENTS END DATE}
    ${STATUS} =     validate date format        ${OUTBOUND STATEMENTS END DATE}       ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Outbound Statements Grid Begin Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${OUTBOUND STATEMENTS GRID BEGIN DATE} =     get outbound statements grid begin date
    log     ${OUTBOUND STATEMENTS GRID BEGIN DATE}
    ${STATUS} =     validate date format        ${OUTBOUND STATEMENTS GRID BEGIN DATE}       ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Outbound Statements Grid End Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${OUTBOUND STATEMENTS GRID END DATE} =     get outbound statements grid end date
    log     ${OUTBOUND STATEMENTS GRID END DATE}
    ${STATUS} =     validate date format        ${OUTBOUND STATEMENTS GRID END DATE}       ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Outbound Statements Grid Total Volume Currency Format
    [Arguments]     ${EXPECTED CURRENCY FORMAT}
    ${OUTBOUND STATEMENTS GRID TOTAL VOLUME} =     get outbound statements grid total volume
    log     ${OUTBOUND STATEMENTS GRID TOTAL VOLUME}
    ${STATUS} =     validate currency format        ${OUTBOUND STATEMENTS GRID TOTAL VOLUME}       ${EXPECTED CURRENCY FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Outbound Statements Grid Amount Idr Currency Format
    [Arguments]     ${EXPECTED CURRENCY FORMAT}
    ${OUTBOUND STATEMENTS GRID AMOUNT IDR} =     get outbound statements grid amount idr
    log     ${OUTBOUND STATEMENTS GRID AMOUNT IDR}
    ${STATUS} =     validate currency format        ${OUTBOUND STATEMENTS GRID AMOUNT IDR}       ${EXPECTED CURRENCY FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Outbound Statements Grid Amount Bulling Currency Format
    [Arguments]     ${EXPECTED CURRENCY FORMAT}
    ${OUTBOUND STATEMENTS GRID AMOUNT BILLING CURRENCY} =     get outbound statements grid amount billing currency
    log     ${OUTBOUND STATEMENTS GRID AMOUNT BILLING CURRENCY}
    ${STATUS} =     validate currency format        ${OUTBOUND STATEMENTS GRID AMOUNT BILLING CURRENCY}       ${EXPECTED CURRENCY FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Outbound Statement Summary Begin Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${OUTBOUND STATEMENT SUMMARY BEGIN DATE} =     get outbound statement summary begin date
    log     ${OUTBOUND STATEMENT SUMMARY BEGIN DATE}
    ${STATUS} =     validate date format        ${OUTBOUND STATEMENT SUMMARY BEGIN DATE}      ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Outbound Statement Summary End Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${OUTBOUND STATEMENT SUMMARY END DATE} =     get outbound statement summary end date
    log     ${OUTBOUND STATEMENT SUMMARY END DATE}
    ${STATUS} =     validate date format        ${OUTBOUND STATEMENT SUMMARY END DATE}       ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Outbound Statement Summary Last Modified Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${OUTBOUND STATEMENT SUMMARY LAST MODIFIED DATE} =     get outbound statement summary last modified date
    log     ${OUTBOUND STATEMENT SUMMARY LAST MODIFIED DATE}
    ${STATUS} =     validate date format        ${OUTBOUND STATEMENT SUMMARY LAST MODIFIED DATE}      ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Inbound Statements Begin Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${INBOUND STATEMENTS BEGIN DATE} =     get inbound statements begin date
    log     ${INBOUND STATEMENTS BEGIN DATE}
    ${STATUS} =     validate date format        ${INBOUND STATEMENTS BEGIN DATE}      ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Inbound Statements End Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${INBOUND STATEMENTS END DATE} =     get inbound statements end date
    log         ${INBOUND STATEMENTS END DATE}
    ${STATUS} =     validate date format        ${INBOUND STATEMENTS END DATE}      ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Inbound Statements Grid Won Amount Currency Format
    [Arguments]     ${EXPECTED CURRENCY FORMAT}
    ${INBOUND STATEMENTS GRID WON AMOUNT} =     get inbound statements grid won amount
    log     ${INBOUND STATEMENTS GRID WON AMOUNT}
    ${STATUS} =     validate currency format        ${INBOUND STATEMENTS GRID WON AMOUNT}       ${EXPECTED CURRENCY FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Inbound Statements Grid Lost Amount Currency Format
    [Arguments]     ${EXPECTED CURRENCY FORMAT}
    ${INBOUND STATEMENTS GRID LOST AMOUNT} =     get inbound statements grid lost amount
    log     ${INBOUND STATEMENTS GRID LOST AMOUNT}
    ${STATUS} =     validate currency format        ${INBOUND STATEMENTS GRID LOST AMOUNT}       ${EXPECTED CURRENCY FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Inbound Statements Grid Pending Amount Currency Format
    [Arguments]     ${EXPECTED CURRENCY FORMAT}
    ${INBOUND STATEMENTS GRID PENDING AMOUNT} =     get inbound statements grid pending amount
    log     ${INBOUND STATEMENTS GRID PENDING AMOUNT}
    ${STATUS} =     validate currency format        ${INBOUND STATEMENTS GRID PENDING AMOUNT}      ${EXPECTED CURRENCY FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Inbound Statements Grid Begin Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${INBOUND STATEMENTS GRID BEGIN DATE} =     get inbound statements grid begin date
    log     ${INBOUND STATEMENTS GRID BEGIN DATE}
    ${STATUS} =     validate date format        ${INBOUND STATEMENTS GRID BEGIN DATE}      ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Inbound Statements Grid End Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${INBOUND STATEMENTS GRID END DATE} =     get inbound statements grid end date
    log     ${INBOUND STATEMENTS GRID END DATE}
    ${STATUS} =     validate date format        ${INBOUND STATEMENTS GRID END DATE}      ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Inbound Statements Grid Total Calls Received Currency Format
    [Arguments]     ${EXPECTED CURRENCY FORMAT}
    ${INBOUND STATEMENTS GRID TOTAL CALLS RECEIVED} =     get inbound statements grid total calls received
    log     ${INBOUND STATEMENTS GRID TOTAL CALLS RECEIVED}
    ${STATUS} =     validate currency format        ${INBOUND STATEMENTS GRID TOTAL CALLS RECEIVED}      ${EXPECTED CURRENCY FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Inbound Statements Grid Total Volume Received Currency Format
    [Arguments]     ${EXPECTED CURRENCY FORMAT}
    ${INBOUND STATEMENTS GRID TOTAL VOLUME RECEIVED} =     get inbound statements grid total volume received
    log     ${INBOUND STATEMENTS GRID TOTAL VOLUME RECEIVED}
    ${STATUS} =     validate currency format        ${INBOUND STATEMENTS GRID TOTAL VOLUME RECEIVED}      ${EXPECTED CURRENCY FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Inbound Statements Grid Total Calls Internal Currency Format
    [Arguments]     ${EXPECTED CURRENCY FORMAT}
    ${INBOUND STATEMENTS GRID TOTAL CALLS INTERNAL} =     get inbound statements grid total calls internal
    log     ${INBOUND STATEMENTS GRID TOTAL CALLS INTERNAL}
    ${STATUS} =     validate currency format        ${INBOUND STATEMENTS GRID TOTAL CALLS INTERNAL}      ${EXPECTED CURRENCY FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Inbound Statements Grid Total Volume Internal Currency Format
    [Arguments]     ${EXPECTED CURRENCY FORMAT}
    ${INBOUND STATEMENTS GRID TOTAL VOLUME INTERNAL} =     get inbound statements grid total volume internal
    log     ${INBOUND STATEMENTS GRID TOTAL VOLUME INTERNAL}
    ${STATUS} =     validate currency format        ${INBOUND STATEMENTS GRID TOTAL VOLUME INTERNAL}     ${EXPECTED CURRENCY FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Inbound Statements Grid Amount Currency Format
    [Arguments]     ${EXPECTED CURRENCY FORMAT}
    ${INBOUND STATEMENTS GRID AMOUNT} =     get inbound statements grid amount
    log     ${INBOUND STATEMENTS GRID AMOUNT}
    ${STATUS} =     validate currency format        ${INBOUND STATEMENTS GRID AMOUNT}     ${EXPECTED CURRENCY FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Inbound Statements Grid Total Amount Internal Currency Format
    [Arguments]     ${EXPECTED CURRENCY FORMAT}
    ${INBOUND STATEMENTS GRID TOTAL AMOUNT INTERNAL} =     get inbound statements grid total amount internal
    log     ${INBOUND STATEMENTS GRID TOTAL AMOUNT INTERNAL}
    ${STATUS} =     validate currency format        ${INBOUND STATEMENTS GRID TOTAL AMOUNT INTERNAL}     ${EXPECTED CURRENCY FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Inbound Statements Grid Discrepancy Currency Format
    [Arguments]     ${EXPECTED CURRENCY FORMAT}
    ${INBOUND STATEMENTS GRID DISCREPANCY} =     get inbound statements grid discrepancy
    log     ${INBOUND STATEMENTS GRID DISCREPANCY}
    ${STATUS} =     validate currency format        ${INBOUND STATEMENTS GRID DISCREPANCY}     ${EXPECTED CURRENCY FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Inbound Statements Grid Raised Dispute Amount Currency Format
    [Arguments]     ${EXPECTED CURRENCY FORMAT}
    ${INBOUND STATEMENTS GRID RAISED DISPUTE AMOUNT} =     get inbound statements grid raised dispute amount
    log     ${INBOUND STATEMENTS GRID RAISED DISPUTE AMOUNT}
    ${STATUS} =     validate currency format        ${INBOUND STATEMENTS GRID RAISED DISPUTE AMOUNT}     ${EXPECTED CURRENCY FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Inbound Statements Grid Dispute By Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${INBOUND STATEMENTS GRID DISPUTE BY DATE} =     get inbound statements grid dispute by date
    log     ${INBOUND STATEMENTS GRID DISPUTE BY DATE}
    ${STATUS} =     validate date format        ${INBOUND STATEMENTS GRID DISPUTE BY DATE}      ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Inbound Statements Grid Final Payment Due Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${INBOUND STATEMENTS GRID FINAL PAYMENT DUE DATE} =     get inbound statements grid final payment due date
    log     ${INBOUND STATEMENTS GRID FINAL PAYMENT DUE DATE}
    ${STATUS} =     validate date format        ${INBOUND STATEMENTS GRID FINAL PAYMENT DUE DATE}      ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Inbound Statement Details Begin Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${INBOUND STATEMENT DETAILS BEGIN DATE} =     get inbound statement details begin date
    log     ${INBOUND STATEMENT DETAILS BEGIN DATE}
    ${STATUS} =     validate date format        ${INBOUND STATEMENT DETAILS BEGIN DATE}     ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Inbound Statement Details End Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${INBOUND STATEMENT DETAILS END DATE} =     get inbound statement details end date
    log     ${INBOUND STATEMENT DETAILS END DATE}
    ${STATUS} =     validate date format        ${INBOUND STATEMENT DETAILS END DATE}      ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Inbound Statement Details Final Payment Due Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${INBOUND STATEMENT DETAILS FINAL PAYMENT DUE DATE} =     get inbound statement details final payment due date
    log     ${INBOUND STATEMENT DETAILS FINAL PAYMENT DUE DATE}
    ${STATUS} =     validate date format        ${INBOUND STATEMENT DETAILS FINAL PAYMENT DUE DATE}      ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Inbound Statement Details Vat Amount Currency Format
    [Arguments]     ${EXPECTED CURRENCY FORMAT}
    ${INBOUND STATEMENT DETAILS VAT AMOUNT} =     get inbound statement details vat amount
    log     ${INBOUND STATEMENT DETAILS VAT AMOUNT}
    ${STATUS} =     validate currency format        ${INBOUND STATEMENT DETAILS VAT AMOUNT}     ${EXPECTED CURRENCY FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Inbound Statement Details Total Amount Currency Format
    [Arguments]     ${EXPECTED CURRENCY FORMAT}
    ${INBOUND STATEMENT DETAILS TOTAL AMOUNT} =     get inbound statement details total amount
    log     ${INBOUND STATEMENT DETAILS TOTAL AMOUNT}
    ${STATUS} =     validate currency format        ${INBOUND STATEMENT DETAILS TOTAL AMOUNT}     ${EXPECTED CURRENCY FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Inbound Statement Details Total Amount With Taxes Currency Format
    [Arguments]     ${EXPECTED CURRENCY FORMAT}
    ${INBOUND STATEMENT DETAILS TOTAL AMOUNT WITH TAXES} =     get inbound statement details total amount with taxes
    log     ${INBOUND STATEMENT DETAILS TOTAL AMOUNT WITH TAXES}
    ${STATUS} =     validate currency format        ${INBOUND STATEMENT DETAILS TOTAL AMOUNT WITH TAXES}     ${EXPECTED CURRENCY FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Inbound Statement Details Summarization Discrepancy Currency Format
    [Arguments]     ${EXPECTED CURRENCY FORMAT}
    ${INBOUND STATEMENT DETAILS SUMMARIZATION DISCREPANCY} =     get inbound statement details summarization discrepancy
    log     ${INBOUND STATEMENT DETAILS SUMMARIZATION DISCREPANCY}
    ${STATUS} =     validate currency format        ${INBOUND STATEMENT DETAILS SUMMARIZATION DISCREPANCY}     ${EXPECTED CURRENCY FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Inbound Statement Details Issued Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${INBOUND STATEMENT DETAILS ISSUED DATE} =     get inbound statement details issued date
    log     ${INBOUND STATEMENT DETAILS ISSUED DATE}
    ${STATUS} =     validate date format        ${INBOUND STATEMENT DETAILS ISSUED DATE}      ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Inbound Statement Details Statement Received Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${INBOUND STATEMENT DETAILS STATEMENT RECEIVED DATE} =     get inbound statement details statement received date
    log     ${INBOUND STATEMENT DETAILS STATEMENT RECEIVED DATE}
    ${STATUS} =     validate date format        ${INBOUND STATEMENT DETAILS STATEMENT RECEIVED DATE}      ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Inbound Statement Details Received Due Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${INBOUND STATEMENT DETAILS STATEMENT RECEIVED DUE DATE} =     get inbound statement details received due date
    log     ${INBOUND STATEMENT DETAILS STATEMENT RECEIVED DUE DATE}
    ${STATUS} =     validate date format        ${INBOUND STATEMENT DETAILS STATEMENT RECEIVED DUE DATE}      ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Inbound Statement Details Payment Terms Due Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${INBOUND STATEMENT DETAILS PAYMENT TERMS DUE DATE} =     get inbound statement details payment terms due date
    log     ${INBOUND STATEMENT DETAILS PAYMENT TERMS DUE DATE}
    ${STATUS} =     validate date format        ${INBOUND STATEMENT DETAILS PAYMENT TERMS DUE DATE}      ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Inbound Statement Details Exchange Rate Currency Format
    [Arguments]     ${EXPECTED CURRENCY FORMAT}
    ${INBOUND STATEMENT DETAILS EXCHANGE RATE} =     get inbound statement details exchange rate
    log     ${INBOUND STATEMENT DETAILS EXCHANGE RATE}
    ${STATUS} =     validate currency format        ${INBOUND STATEMENT DETAILS EXCHANGE RATE}      ${EXPECTED CURRENCY FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Inbound Statement Details Created Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${INBOUND STATEMENT DETAILS CREATED DATE} =     get inbound statement details created date
    log     ${INBOUND STATEMENT DETAILS CREATED DATE}
    ${STATUS} =     validate date format        ${INBOUND STATEMENT DETAILS CREATED DATE}      ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Inbound Statement Details Last Modified Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${INBOUND STATEMENT DETAILS LAST MODIFIED DATE} =     get inbound statement details last modified date
    log     ${INBOUND STATEMENT DETAILS LAST MODIFIED DATE}
    ${STATUS} =     validate date format        ${INBOUND STATEMENT DETAILS LAST MODIFIED DATE}      ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Create New Adjustment Folder Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click create new adjustment folder button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Adjustment Folder Name To Create New One
    [Arguments]     ${FOLDER NAME PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set adjustment folder name to create new one     ${FOLDER NAME PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Created Adjustment Folder Name
    ${ADJUSTMENT FOLDER NAME} =     get created adjustment folder name
    log       ${ADJUSTMENT FOLDER NAME}
    return from keyword         ${ADJUSTMENT FOLDER NAME}

Verify Set Bill Account From Single Selection Kendo Dropdown
    [Arguments]     ${BILL ACCOUNT}
    ${STATUS} =     set variable    False
    ${STATUS} =     set bill account from single selection kendo dropdown        ${BILL ACCOUNT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Calender Year
    [Arguments]     ${YEAR}
    ${STATUS} =     set variable    False
    ${STATUS} =     set calender year        ${YEAR}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Created Charge Name
    ${CREATED NEW CHARGE NAME} =     get created charge name
    log       ${CREATED NEW CHARGE NAME}
    return from keyword         ${CREATED NEW CHARGE NAME}

Verify Set Outbound Statements Grid Dropdown Value
    [Arguments]     ${COLUMN NAME}      ${COLUMN VALUE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set outbound statements grid dropdown value     ${COLUMN NAME}      ${COLUMN VALUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Outbound Statements Grid Save Changes Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click outbound statements grid save changes button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Close Bill And Audit Window
    ${STATUS} =     set variable    False
    ${STATUS} =     close bill and audit window
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Adjustment Grid Inline Action Item
    [Arguments]     ${INLINE ITEM}
    ${STATUS} =     set variable    False
    ${STATUS} =     select adjustment grid inline action item    ${INLINE ITEM}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Is Delete Checkbox Enabled In Transactions Grid
    ${STATUS} =     set variable    False
    ${STATUS} =     is delete checkbox enabled in transactions grid
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Assigned Non Recurring Charges is Populated in Grid
    [Arguments]     ${CHARGE NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is non reccuring charge populated in the grid       ${CHARGE NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Specific Column Is Available In The Workflow Tab
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is specific column present in workflow tab          ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Outbound Statement Grid First Row Amount Column Value
    ${AMOUNT} =     get outbound statement grid amount column value
    return from keyword     ${AMOUNT}

Verify The Statement Status Is Changed Successfully
    ${STATUS} =     set variable    False
    ${STATUS} =     is statement status changed successfully
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Statement Status Error Message Pop Up Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is statement status error message pop up present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Non Traffic Change Specific Column Kendo Dropdown First Item Name
    [Arguments]     ${COLUMN NAME}
    ${FIRST DROPDOWN ITEM NAME} =     get non traffic charge specific column kendo dropdown first item name       ${COLUMN NAME}
    log     ${FIRST DROPDOWN ITEM NAME}
    return from keyword         ${FIRST DROPDOWN ITEM NAME}
    should not be equal     ${FIRST DROPDOWN ITEM NAME}     ''
    [Teardown]      run keyword if    '${FIRST DROPDOWN ITEM NAME}'==''    Log Screenshot

Verify Set First Value In Move To Column In Non Traffic Charge Grid
    ${STATUS} =     set variable    False
    ${STATUS} =     set first value in move to column in non traffic charge grid
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Specific Workflow Status Is In Proper Order Based On Transition
    [Arguments]     ${STATUS NAME}      ${ORDER NUMBER}
    ${STATUS} =     set variable    False
    ${STATUS} =     is specific workflow status in proper order based on transition     ${STATUS NAME}      ${ORDER NUMBER}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Specific Workflow Status Is Belonging To Right User Based On Transition
    [Arguments]     ${STATUS NAME}      ${ORDER NUMBER}
    ${STATUS} =     set variable    False
    ${STATUS} =     is specific workflow status belonging to right user based on transition    ${STATUS NAME}      ${ORDER NUMBER}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Inbound Statement Details Vat Code
    [Arguments]     ${VAT CODE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set inbound statement details vat code      ${VAT CODE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot