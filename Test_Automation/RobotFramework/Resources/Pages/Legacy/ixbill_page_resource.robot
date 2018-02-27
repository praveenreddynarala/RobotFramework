*** Settings ***
Documentation   IXBill Page Resource File With All Necessary Keywords

Resource        ../../common_resource.robot

Library         ../../../../TestFramework/Libraries/RobotTests/Legacy/IXBill.py

*** Variables ***
${CREATED CYCLE TEMPLATE NAME}              ${EMPTY}
${CREATED STATEMENT NUMBERING TEMPLATE}     ${EMPTY}

*** Keywords ***
Go To IXBill Screen With Specific Url
    ${STATUS} =     set variable    False
    ${STATUS} =     go to specific url      ${iXBILL PAGE URL}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Switch To IXBill
    ${STATUS} =     set variable    False
    ${STATUS} =     switch to ixbill
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Switch To Dot Net Page Frame
    ${STATUS} =     set variable    False
    ${STATUS} =     switch to dot net page frame
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click New Cycle Template Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click new cycle template button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Cycle Template Name
    [Arguments]     ${CYCLE TEMPLATE NAME PREFIX}
    ${CREATED CYCLE TEMPLATE NAME} =     set cycle template name      ${CYCLE TEMPLATE NAME PREFIX}
    set suite variable      ${CREATED CYCLE TEMPLATE NAME}
    should not be equal     '${CREATED CYCLE TEMPLATE NAME}'    ''
    [Teardown]      run keyword if    '${CREATED CYCLE TEMPLATE NAME}'==''    Log Screenshot

Verify Set Cycle Template Type
    [Arguments]     ${CYCLE TEMPLATE TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set cycle template type     ${CYCLE TEMPLATE TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Recurrence Pattern Period Length
    [Arguments]     ${PERIOD LENGTH}
    ${STATUS} =     set variable    False
    ${STATUS} =     set recurrence pattern period length        ${PERIOD LENGTH}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Recurrence Pattern Period Type
    [Arguments]     ${PERIOD TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set recurrence pattern period type          ${PERIOD TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Recurrence Pattern Starting Date
    [Arguments]     ${STARTING DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set recurrence pattern starting date        ${STARTING DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click New Cycle Template Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click new cycle template save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Template Added Successfully
    ${STATUS} =     set variable    False
    ${STATUS} =     is template added successfully
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Cycle Templates Grid First Page Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click cycle templates grid first page button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Created Cycle Loaded In Grid
    ${STATUS} =     set variable    False
    ${STATUS} =     is created cycle loaded in grid
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Template letters
    ${STATUS} =     set variable    False
    ${STATUS} =     set template letters        ${CREATED CYCLE TEMPLATE NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Cycle Template Search Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click cycle template search button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Close Ixbill Window
    ${STATUS} =     set variable    False
    ${STATUS} =     close ixbill window
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Created Cycle Template Name
    ${CYCLE TEMPLATE NAME} =    get created cycle template name
    log     ${CYCLE TEMPLATE NAME}
    return from keyword     ${CYCLE TEMPLATE NAME}

Verify Switch To List Frame
    ${STATUS} =     set variable    False
    ${STATUS} =     switch to list frame
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Switch To Detail Frame
    ${STATUS} =     set variable    False
    ${STATUS} =     switch to detail frame
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Switch To Default Content
    ${STATUS} =     set variable    False
    ${STATUS} =     switch to default content
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click New Button
    ${STATUS} =     set variable    False
    ${STATUS} =     IXBill.click new button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Statement Numbering Template
    [Arguments]     ${STATEMENT NUMBERING TEMPLATE PREFIX}
    ${CREATED STATEMENT NUMBERING TEMPLATE} =     set statement numbering template      ${STATEMENT NUMBERING TEMPLATE PREFIX}
    set suite variable      ${CREATED STATEMENT NUMBERING TEMPLATE}
    should not be equal     '${CREATED STATEMENT NUMBERING TEMPLATE}'    ''
    [Teardown]      run keyword if    '${CREATED STATEMENT NUMBERING TEMPLATE}'==''    Log Screenshot

Verify Set Begin Number
    [Arguments]     ${BEGIN NUMBER}
    ${STATUS} =     set variable    False
    ${STATUS} =     set begin number        ${BEGIN NUMBER}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set End Number
    [Arguments]     ${END NUMBER}
    ${STATUS} =     set variable    False
    ${STATUS} =     set end number      ${END NUMBER}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Increment
    [Arguments]     ${INCREMENT}
    ${STATUS} =     set variable    False
    ${STATUS} =     set increment       ${INCREMENT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Numbering Length
    [Arguments]     ${NUMBERING LENGTH}
    ${STATUS} =     set variable    False
    ${STATUS} =     set numbering length        ${NUMBERING LENGTH}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Prefix
    [Arguments]     ${PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set prefix          ${PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     IXBill.click save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Created Statement Numbering Template
    return from keyword     ${CREATED STATEMENT NUMBERING TEMPLATE}

Verify Click Cycle And Settlement Management Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click cycle and settlement management submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Exit Button
    ${STATUS} =     set variable    False
    ${STATUS} =     IXBill.click exit button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Cover Letter Templates Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     IXBill.click cover letter templates submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Cover Letter Template Name
    [Arguments]     ${TEMPLATE NAME PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set cover letter template name      ${TEMPLATE NAME PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Created Cover Letter Template Name
    ${COVER LETTER TEMPLATE NAME} =    get created cover letter template name
    log     ${COVER LETTER TEMPLATE NAME}
    return from keyword     ${COVER LETTER TEMPLATE NAME}

Verify Click Accounting Codes Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click accounting codes submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Tax Templates Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click tax templates submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Accounting Code
    ${STATUS} =     set variable    False
    ${STATUS} =     set accounting code
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Created Accounting Code
    ${ACCOUNTING CODE} =     get created accounting code
    log       ${ACCOUNTING CODE}
    return from keyword         ${ACCOUNTING CODE}

Verify Click Detail Frame Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click detail frame save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Tax Template Name
    [Arguments]     ${TAX TEMPLATE PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set tax template name       ${TAX TEMPLATE PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Created Tax Templates Name
    ${TAX TEMPLATE NAME} =     get created tax templates name
    log       ${TAX TEMPLATE NAME}
    return from keyword         ${TAX TEMPLATE NAME}

Verify Set Tax Percentage
    [Arguments]     ${TAX PERCENTAGE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set tax percentage       ${TAX PERCENTAGE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Accounting Code Browse Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click accounting code browse button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set First Letter
    [Arguments]     ${FIRST LETTER}
    ${STATUS} =     set variable    False
    ${STATUS} =     IXBill.set first letter     ${FIRST LETTER}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Go Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click go button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Row From Look Up Table
    [Arguments]     ${ROW TEXT}
    ${STATUS} =     set variable    False
    ${STATUS} =     IXBill.select row from look up table       ${ROW TEXT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select First Row From Look Up Table
    ${STATUS} =     set variable    False
    ${STATUS} =     IXBill.select row from look up table       ${EMPTY}    ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Second Row From Look Up Table
    ${STATUS} =     set variable    False
    ${STATUS} =     IXBill.select row from look up table       ${EMPTY}    ${FALSE}    ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Tax Template Begin Date
    [Arguments]     ${BEGIN DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set tax template begin date         ${BEGIN DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Tax Template Begin Date With Current Date
    ${STATUS} =     set variable    False
    ${STATUS} =     set tax template begin date         ${EMPTY}        ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Tax Template Begin Date With Future Date
    ${STATUS} =     set variable    False
    ${STATUS} =     set tax template begin date         ${EMPTY}        ${FALSE}        ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Tax Template End Date
    [Arguments]     ${END DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set tax template end date         ${END DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Tax Template End Date With Futute Date
    ${STATUS} =     set variable    False
    ${STATUS} =     set tax template end date         ${EMPTY}        ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Charge Categories Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click charge categories submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Charge Categories Name
    [Arguments]     ${PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set charge categories name      ${PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Charge Categories Abbreviation
    [Arguments]     ${PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set charge categories abbreviation      ${PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Charge Categories Name
    ${CHARGE CATEGORY} =     get charge categories name
    return from keyword     ${CHARGE CATEGORY}

Verify Set Charge Product Name
    [Arguments]     ${PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set charge product name     ${PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Charge Product Name
    ${CHARGE CATEGORY} =     get charge product name
    return from keyword     ${CHARGE CATEGORY}

Verify Click Recurring Charge Products Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click recurring charge products submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Charge Product Abbreviation
    [Arguments]     ${PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set charge product abbreviation      ${PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Charge Product Category Dropdown Item
    [Arguments]     ${CATEGORY}
    ${STATUS} =     set variable    False
    ${STATUS} =     select charge product category dropdown item       ${CATEGORY}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Recurrent Charge Pattern
    [Arguments]     ${RECURRENCE VALUE}=1    ${PERIOD}=Month(s)       ${STARTING DATE}=1/1/2017
    ${STATUS} =     set variable    False
    ${STATUS} =     set recurrence pattern      ${RECURRENCE VALUE}    ${PERIOD}       ${STARTING DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Bulk User Assignments Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click bulk user assignments submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The User With Selected Profile Is Available
    [Arguments]     ${USERS FIRST NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is user with selected profile present       ${USERS FIRST NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Statements Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click statements submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Ixtools Account Letter
    [Arguments]     ${IXTOOLS ACCOUNT NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set ixtools account letter        ${IXTOOLS ACCOUNT NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Billing Account Letter
    [Arguments]     ${BILL ACCOUNT NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set billing account letter        ${BILL ACCOUNT NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Ixbill Statements Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click ixbill statements go button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click First Company Plus Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click first company plus button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click First Inner Carrier Plus Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click first inner carrier plus button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Specific Bill Account Is Available
    [Arguments]     ${BILL ACCOUNT NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is specific bill account present       ${BILL ACCOUNT NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Inner Bill Account Plus Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click inner bill account plus button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The First Statement Number Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is first statement number present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Second Statement Number Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is second statement number present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Outbound Statements Submenu
    ${STATUS} =     set variable    False
    ${STATUS} =     click outbound statements submenu
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Outbound Statements Worklist Begin Date
    [Arguments]     ${BEGIN DATE}=None
    ${STATUS} =     set variable    False
    ${STATUS} =     set outbound statements worklist begin date     ${BEGIN DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Outbound Statements Worklist End Date
    [Arguments]     ${END DATE}=None
    ${STATUS} =     set variable    False
    ${STATUS} =     set outbound statements worklist end date     ${END DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Billing Account in Outbound Statements Worklist Screen
    [Arguments]     ${BILLING ACCOUNT}
    ${STATUS} =     set variable    False
    ${STATUS} =     select billing account     ${BILLING ACCOUNT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Outbound Statements Worklist Go Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click outbound statements worklist go button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Outbound Statements Worklist Grid First Row Amount Value
    ${AMOUNT} =     get outbound statements worklist grid first row amount value
    return from keyword         ${AMOUNT}

Verify Expected And Actual Result
    [Arguments]     ${EXPECTED VALUE}       ${ACTUAL VALUE}
    ${STATUS} =     set variable        False
    should be equal         ${EXPECTED VALUE}           ${ACTUAL VALUE}
    ${STATUS} =     set variable       True
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click On Specific Statement Date
    [Arguments]     ${STATEMENT DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     click on specific statement date        ${STATEMENT DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Compare Moved Non Traffic Charge
    [Arguments]     ${EXPECTED VALUE}
    ${STATUS} =     set variable    False
    ${STATUS} =     compare moved non traffic charge        ${EXPECTED VALUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click On View Test Statement Link
    ${STATUS} =     set variable    False
    ${STATUS} =     click on view test statement link
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click On Specific Cover Template Name
    [Arguments]     ${COVER TEMPLATE NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     click on specific cover template        ${COVER TEMPLATE NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Cover Letter Body
    [Arguments]     ${COVER LETTER BODY TEXT}
    ${STATUS} =     set variable    False
    ${STATUS} =     set cover letter body     ${COVER LETTER BODY TEXT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Save Button With Passing Two Confiramition Message
    ${STATUS} =     set variable    False
    ${STATUS} =     click save button with passing two confirmation
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot
