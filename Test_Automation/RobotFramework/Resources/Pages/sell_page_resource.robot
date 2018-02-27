*** Settings ***
Documentation   Sell Page Resource File With All Necessary Keywords

Resource        ../common_resource.robot

Library         ../../../TestFramework/Libraries/RobotTests/Home.py
Library         ../../../TestFramework/Libraries/RobotTests/Sell.py
Library         Collections

*** Variables ***
${EXPECTED PAGE TITLE}                  Sell
${ACTUAL PAGE TITLE}                    ${EMPTY}
${STATUS}                               ${EMPTY}
${ACTUAL PAGE TITLE}                    ${EMPTY}
@{CUSTOMER LIST}                        ${EMPTY}
${COLUMN NAME TO FILTER}                Customer
${CUSTOMER PROFILE STATUS}              ${EMPTY}
${CUSTOMER DETAILS}                     ${EMPTY}
${COLUMN NAME TO FILTER}                Customer
${APPLY INCREASE NOTICE PERIOD ITEM}    Yes
${APPLY DIGIT CHANGE PERIOD ITEM}       No
${APPLY DECREASE NOTICE PERIOD ITEM}    Yes
${POP UP NAME}                          ${EMPTY}
${REFERENCE PRICE LIST ITEM}            ${EMPTY}
${NUMBER PLAN ITEM}                     ${EMPTY}
${OFFER CONTENT ITEM}                   ${EMPTY}
${OFFER DATE}                           ${EMPTY}
${FROM DATE}                            ${EMPTY}
${ROW INDENTIFIER}                      ${EMPTY}
${SELECTED PRICE LIST}                  ${EMPTY}
@{FILTER ITEM LIST}                     ${EMPTY}
${FILTER ITEM NAME}                     ${EMPTY}
${FILTER NAME TO CLEAR}                 ${EMPTY}
${EXPECTED STATUS}                      ${EMPTY}
${CREATED CUSTOMER NAME}                ${EMPTY}
${ABBREVIATION NAME}                    ${EMPTY}
${SEARCH RESULT WHEN NO DATA FOUND}     No records found.
${CUSTOMER NAME IN CPE PERFORMANCE REPORT}      ${EMPTY}
${CREATED CARRIER NAME}                 ${EMPTY}
${CREATED RATE PLAN NAME}               ${EMPTY}
${CREATED SECOND CUSTOMER NAME}         ${EMPTY}
${ALL FIELD VALUE}                      ALL
${AUTO TEMPLATE GRID ROW DETAILS}       ${EMPTY}

*** Keywords ***
Click on Home Icon and Select 'Sell' From Main Menu
    ${STATUS} =     set variable    False
    select sell submenu
    ${STATUS} =     switch to sell
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Page Title
    ${ACTUAL PAGE TITLE} =  get sell page title
    should be equal     ${ACTUAL PAGE TITLE}     ${EXPECTED PAGE TITLE}
    [Teardown]      run keyword unless     '${ACTUAL PAGE TITLE}'=='${EXPECTED PAGE TITLE}'    Log Screenshot

Verify The Sell Dashboard Tab Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is sell dashboard tab present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Customer Tab Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is customer tab present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Country Groups link is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is country groups link present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Click On Customer Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select customer tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The 'Create Customer' Button Is Present Under Customer Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     is create customer present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The 'Customer Price Lists' Button Is Present Under Customer Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     is customer price lists present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The 'Create Customer Price Lists' Button Is Present Under Customer Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     is create customer price lists present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The 'Price Exceptions' Button Is Present Under Customer Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     is price exceptions present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Customer Grid Is Displayed
    ${STATUS} =     set variable    False
    ${STATUS} =     is customer grid displayed
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Grid Filter Details
    [Arguments]     ${COLUMN NAME TO FILTER}    @{CUSTOMER LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     Sell.grid filter details     ${COLUMN NAME TO FILTER}        @{CUSTOMER LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Customer Grid Inline Action Button
    ${STATUS} =     set variable    False
    ${STATUS} =     Sell.click customer grid inline action button        ${CREATED CUSTOMER NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Inline Action Item
    [Arguments]     ${INLINE ACTION ITEM NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     Sell.select inline action item       ${INLINE ACTION ITEM NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Customer Profile Status Active For Create Customer
    ${CUSTOMER PROFILE STATUS} =        set variable        Active
    ${STATUS} =     set variable    False
    ${STATUS} =     set customer profile status       ${CUSTOMER PROFILE STATUS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Customer Profile Status Inactive For Create Customer
    ${CUSTOMER PROFILE STATUS} =        set variable        InActive
    ${STATUS} =     set variable    False
    ${STATUS} =     set customer profile status       ${CUSTOMER PROFILE STATUS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Customer Profile Status Active
    ${CUSTOMER PROFILE STATUS} =        set variable        Active
    ${STATUS} =     set variable    False
    ${STATUS} =     set customer profile status       ${CUSTOMER PROFILE STATUS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Customer Profile Status Inactive
    ${CUSTOMER PROFILE STATUS} =        set variable        InActive
    ${STATUS} =     set variable    False
    ${STATUS} =     set customer profile status       ${CUSTOMER PROFILE STATUS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Customer Profile Status For Edit Customer
    [Arguments]     ${CUSTOMER PROFILE STATUS}
    ${STATUS} =     set variable    False
    ${STATUS} =     set customer profile status for edit customer       ${CUSTOMER PROFILE STATUS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Save Customer Profile Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click save customer profile button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Clear Filter
    [Arguments]     ${COLUMN NAME TO CLEAR FILTER}
    ${STATUS} =     set variable    False
    ${STATUS} =     clear filter     ${COLUMN NAME TO CLEAR FILTER}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Clear All Table Filters
    [Arguments]     ${COLUMN NAME TO CLEAR FILTER}
    ${STATUS} =     set variable    False
    ${STATUS} =     clear all table filters     ${COLUMN NAME TO CLEAR FILTER}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Customer Grid Details With Inactive Status
    ${CUSTOMER DETAILS} =     create dictionary       Customer=${CREATED CUSTOMER NAME}     Status=Inactive
    ${STATUS} =     set variable    False
    ${STATUS} =     verify customer details    ${CUSTOMER DETAILS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Customer Grid Details With Active Status
    ${CUSTOMER DETAILS} =     create dictionary       Customer=${CREATED CUSTOMER NAME}     Status=Active
    ${STATUS} =     set variable    False
    ${STATUS} =     verify customer details    ${CUSTOMER DETAILS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click On Customer Price Lists Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click customer price lists button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Customer Price Lists Screen Displayed
    ${STATUS} =     set variable    False
    ${STATUS} =     is customer price lists screen displayed
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Filter Customer Grid Column
    [Arguments]     ${CUSTOMER NAME}=${CREATED CUSTOMER NAME}
    ${COLUMN NAME TO FILTER}        set variable         Customer
    @{FILTER ITEM LIST} =       create list        ${CUSTOMER NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     Sell.grid filter details       ${COLUMN NAME TO FILTER}      @{FILTER ITEM LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click On Customer Grid Inline Action Button
    [Arguments]     ${CUSTOMER NAME}=${CREATED CUSTOMER NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     click sell page inline action button       ${CUSTOMER NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Customer Profile Is Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is customer profile present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Customer Rates Is Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is customer rates present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Customer Digits Is Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is customer digits present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Price Exceptions Performance Is Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is price exceptions performance present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Upload Price Exceptions Is Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is upload price exceptions present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Customer Destination Is Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is customer destination present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Create Customer Price Lists Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click create customer price lists button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Create Customer Price Lists Screen Loaded
    ${STATUS} =     set variable    False
    ${STATUS} =     is create customer price lists screen loaded
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Apply Increase Notice Period
    ${STATUS} =     set variable    False
    ${STATUS} =     set apply increase notice period        ${APPLY INCREASE NOTICE PERIOD ITEM}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Apply Digit Change Notice Period
    ${STATUS} =     set variable    False
    ${STATUS} =     set apply digit change notice period    ${APPLY DIGIT CHANGE PERIOD ITEM}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Apply Decrease Notice Period
    ${STATUS} =     set variable    False
    ${STATUS} =     set apply decrease notice period        ${APPLY DECREASE NOTICE PERIOD ITEM}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Customers For Price Lists
    [Arguments]     ${CUSTOMER NAME}=${CREATED CUSTOMER NAME}
    run keyword if      '${CREATED CUSTOMER NAME}'=='None'         Verify Get Created Customer Name
    ${STATUS} =     set variable    False
    @{CUSTOMER LIST} =    create list     ${CUSTOMER NAME}
    ${STATUS} =     select customers for price lists        @{CUSTOMER LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select All Countries For Price Lists
    ${STATUS} =     set variable    False
    ${STATUS} =     select all countries for price lists
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Preview Button
    ${STATUS} =     set variable    False
    ${STATUS} =     Sell.click preview button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Preview Page Displayed
    ${STATUS} =     set variable    False
    ${STATUS} =     Sell.is preview page displayed
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Close Preview Page
    ${STATUS} =     set variable    False
    ${STATUS} =     Sell.close preview page
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Close Current Tab
    [Arguments]         ${TAB NAME TO CLOSE}
    ${STATUS} =     set variable    False
    ${STATUS} =     Sell.close current tab       ${TAB NAME TO CLOSE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click On Generate Customer Price Lists Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click on generate customer price lists button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Customer Price Lists Generation Is Successful
    ${STATUS} =     set variable    False
    ${STATUS} =     is customer price lists generation successful
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set From Date
    [Arguments]         ${FROM DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     Sell.set from date       ${FROM DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Customer Price Lists Search Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click customer price lists search button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Customer Price Lists Inline Action Button
    [Arguments]         ${ROW INDENTIFIER}
    ${STATUS} =     set variable    False
    ${STATUS} =     click customer price lists inline action button         ${ROW INDENTIFIER}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Is Delete Inline Action Item Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is delete inline action item present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Is Issue Inline Action Item Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is issue inline action item present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Is Issue For Manual Distribution Inline Action Item Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is issue for manual distribution inline action item present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Is View Price List Detail Inline Action Item Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is view price list detail inline action item present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Inline Action Item With Argument
    [Arguments]         ${INLINE ACTION ITEM NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     select inline action item       ${INLINE ACTION ITEM NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Status Filter Customer Price Lists Grid
    [Arguments]         ${FILTER ITEM NAME}
    @{FILTER ITEM LIST} =       create list        ${FILTER ITEM NAME}
    ${COLUMN NAME TO FILTER} =      set variable        Status
    ${STATUS} =     set variable    False
    ${STATUS} =     filter customer price lists grid        ${COLUMN NAME TO FILTER}    @{FILTER ITEM LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Customer Grid Information Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click customer grid information button      ${CREATED CUSTOMER NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Customer Grid Row Details
    ${STATUS} =     set variable    False
    ${STATUS} =     get customer grid row details
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Close Current Pop Up
    [Arguments]     ${POP UP NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     Sell.close current pop up        ${POP UP NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Grid Filter Details For Customer Profile View
    ${STATUS} =     set variable    False
    @{CUSTOMER LIST} =    create list     ${CREATED CUSTOMER NAME}
    ${STATUS} =     grid filter details     ${COLUMN NAME TO FILTER}        @{CUSTOMER LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Reference Price List
    [Arguments]     ${PRICE LIST ITEM}=${REFERENCE PRICE LIST ITEM}
    ${STATUS} =     set variable    False
    ${STATUS} =     Sell.set reference price list        ${PRICE LIST ITEM}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Number Plan
    [Arguments]     ${NUMBER PLAN}
    ${STATUS} =     set variable    False
    ${STATUS} =     Sell.set number plan         ${NUMBER PLAN}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Offer Content
    ${STATUS} =     set variable    False
    ${STATUS} =     set offer content       ${OFFER CONTENT ITEM}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Offer Date
    ${STATUS} =     set variable    False
    ${STATUS} =     set offer date          ${OFFER DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Price List Filter Customer Price Lists Grid
    ${SELECTED PRICE LIST} =        get selected price list
    Set Suite Variable      ${SELECTED PRICE LIST}
    Log     ${SELECTED PRICE LIST}
    @{FILTER ITEM LIST} =       create list         ${SELECTED PRICE LIST}
    ${COLUMN NAME TO FILTER} =      set variable        Price List
    ${STATUS} =     set variable    False
    ${STATUS} =     filter customer price lists grid        ${COLUMN NAME TO FILTER}    @{FILTER ITEM LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Clear Filter Of Customer Price List
    [Arguments]         ${FILTER NAME TO CLEAR}
    ${STATUS} =     set variable    False
    ${STATUS} =     clear filter of customer price list         ${FILTER NAME TO CLEAR}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Clear All Table Filters of Customer Price List
    [Arguments]         ${FILTER NAME TO CLEAR}
    ${STATUS} =     set variable    False
    ${STATUS} =     clear all table filters of customer price list        ${FILTER NAME TO CLEAR}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Customer Details In Information Page
    ${STATUS} =     set variable    False
    ${STATUS} =     verify customer details in information pop up
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click On Create Customer Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click on create customer button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Customer Name
    [Arguments]     ${CUSTOMER NAME PREFIX}
    ${CREATED CUSTOMER NAME} =        set customer name       ${CUSTOMER NAME PREFIX}
    set suite variable      ${CREATED CUSTOMER NAME}
    log         ${CREATED CUSTOMER NAME}

Verify Set Customer Abbreviation
    [Arguments]     ${ABBREVIATION PREFIX}
    ${ABBREVIATION NAME} =     Sell.set abbreviation        ${ABBREVIATION PREFIX}
    LOG     ${ABBREVIATION NAME}

Verify Set Ixtools Account
    ${STATUS} =     set variable    False
    ${STATUS} =     set ixtools account     ${CREATED CARRIER NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Rate Plan
    ${STATUS} =     set variable    False
    ${STATUS} =     Sell.set rate plan       ${CREATED RATE PLAN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Number Plan For Create Customer
    [Arguments]     ${NUMBER PLAN DROPDOWN ITEM}
    ${STATUS} =     set variable    False
    ${STATUS} =     set number plan for create customer     ${NUMBER PLAN DROPDOWN ITEM}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Call Type
    [Arguments]     ${CALL TYPE DROPDOWN ITEM}
    ${STATUS} =     set variable    False
    ${STATUS} =     Sell.set call type       ${CALL TYPE DROPDOWN ITEM}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click On Save Customer Profile For Create
    ${STATUS} =     set variable    False
    ${STATUS} =     click on save customer profile for create
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Filter Customer Grid Column With Created Customer
    ${COLUMN NAME TO FILTER}        set variable         Customer
    @{FILTER ITEM LIST} =       create list        ${CREATED CUSTOMER NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     Sell.grid filter details       ${COLUMN NAME TO FILTER}      @{FILTER ITEM LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Inline Action Button For Created Customer
    ${STATUS} =     set variable    False
    ${STATUS} =     click customer grid inline action button        ${CREATED CUSTOMER NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Is Status Inactive
    ${STATUS} =     set variable    False
    ${STATUS} =     is status inactive        ${CREATED CUSTOMER NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Clear Status Filter
    [Arguments]     ${STATUS COLUMN NAME TO CLEAR FILTER}
    ${STATUS} =     set variable    False
    ${STATUS} =     clear filter     ${STATUS COLUMN NAME TO CLEAR FILTER}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Customer Status Is Inactive
    ${STATUS} =     set variable    False
    ${STATUS} =     is status inactive     ${CREATED CUSTOMER NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Close Create Customer Tab
    [Arguments]     ${CREATE CUSTOMER TAB NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     Sell.close current tab       ${CREATE CUSTOMER TAB NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Close Customer Profile Tab
    [Arguments]     ${CUSTOMER PROFILE TAB NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     Sell.close current tab       ${CUSTOMER PROFILE TAB NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Created Customer Details in Database
    [Arguments]     ${SERVER NAME}      ${DATABASE NAME}      ${DB USER NAME}      ${DB PASSWORD}
    ${STATUS} =     set variable    False
    ${STATUS} =     verify customer profile details in database       ${SERVER NAME}      ${DATABASE NAME}      ${DB USER NAME}      ${DB PASSWORD}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Customer Status From Database
    [Arguments]     ${SERVER NAME}      ${DATABASE NAME}      ${DB USER NAME}      ${DB PASSWORD}
    ${STATUS} =     set variable    False
    ${STATUS} =     verify customer status in database      ${SERVER NAME}      ${DATABASE NAME}      ${DB USER NAME}      ${DB PASSWORD}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Details of Customer Price List Grid Row
    [Arguments]         ${EXPECTED STATUS}
    ${CUSTOMER PRICE LIST DETAILS} =     create dictionary       Price List=${SELECTED PRICE LIST}     Status=${EXPECTED STATUS}
    ${STATUS} =     set variable    False
    ${STATUS} =     verify customer price list grid row details     ${CUSTOMER PRICE LIST DETAILS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Accept Price List Processed Pop Up
    ${STATUS} =     set variable    False
    ${STATUS} =     accept price list processed pop up
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Price Exceptions Button
    ${STATUS} =     set variable    False
    ${STATUS} =     Sell.click price exceptions button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Number Plan For Price Exceptions
    [Arguments]         ${NUMBER PLAN FOR PRICE EXCEPTIONS}         ${FIRST ITEM}=${False}
    ${STATUS} =     set variable    False
    ${STATUS} =     Sell.set number plan for price exceptions        ${NUMBER PLAN FOR PRICE EXCEPTIONS}         ${FIRST ITEM}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Status
    [Arguments]         @{STATUS ITEM LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     Sell.set status          @{STATUS ITEM LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Customers
    [Arguments]     ${CUSTOMER NAME}=${CREATED CUSTOMER NAME}
    ${STATUS} =     set variable    False
    @{CUSTOMERS ITEM LIST} =    create list     ${CUSTOMER NAME}
    ${STATUS} =     set customers       @{CUSTOMERS ITEM LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Select Date
    [Arguments]         ${SELECT DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     Sell.set select date     ${SELECT DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Destination
    [Arguments]         ${DESTINATION}
    ${STATUS} =     set variable    False
    ${STATUS} =     Sell.set destination     ${DESTINATION}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Price Exceptions Search Button
    ${STATUS} =     set variable    False
    ${STATUS} =     Sell.click price exceptions search button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Search Results Displayed In The Grid
    ${STATUS} =     set variable      False
    ${STATUS} =     Sell.search results displayed in the grid
    [Teardown]  run keyword if  '${STATUS}'=='False'    log     ${SEARCH RESULT WHEN NO DATA FOUND}

Verify Select Customer Price Lists Checkbox
    ${STATUS} =     set variable    False
    ${STATUS} =     select customer price lists checkbox
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Compare Price Lists Button
    ${STATUS} =     set variable    False
    ${STATUS} =     Sell.click compare price lists button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Selected Price Lists Details Info
    ${STATUS} =     set variable    False
    ${STATUS} =     verify selected price lists details
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Dial Digits Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select dial digits tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Close Compare Price Lists Pop Up
    ${STATUS} =     set variable    False
    ${STATUS} =     close compare price lists pop up
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Price Exceptions Performance Begin Date
    [Arguments]     ${PERFORMANCE REPORT BEGIN DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set price exceptions performance begin date     ${PERFORMANCE REPORT BEGIN DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Price Exceptions Performance Submit Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click price exceptions performance submit button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Price Exceptions Performance Begin Date In CPE Performance Report
    ${STATUS} =     set variable    False
    ${STATUS} =     verify price exceptions performance begin date
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Customers Field Editable Status
    ${STATUS} =     set variable    False
    ${STATUS} =     is customers field not editable
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Price Exception Grid First Row
    ${STATUS} =     set variable    False
    ${STATUS} =     select pricing exception grid first row
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set First Row Requested Price
    [Arguments]     ${REQUESTED PRICE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set first row requested price       ${REQUESTED PRICE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set First Row Begin Date
    [Arguments]     ${BEGIN DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     Sell.set first row begin date            ${BEGIN DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set First Row Approval Type
    [Arguments]     ${APPROVAL TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set first row approval type         ${APPROVAL TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Price Exceptions Grid First Row Data
    ${STATUS} =     set variable    False
    ${STATUS} =     get price exceptions grid first row data
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Price Exceptions Status Entered
    ${STATUS} =     set variable    False
    ${STATUS} =     is price exceptions status entered
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Save Changes Button
    ${STATUS} =     set variable    False
    ${STATUS} =     Sell.click save changes button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Clear Multiselection Kendo Dropdown
    [Arguments]     ${KENDO DROPDOWN LABEL}
    ${STATUS} =     set variable    False
    ${STATUS} =     Sell.clear multiselect kendo dropdown     ${KENDO DROPDOWN LABEL}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Price Exceptions Grid First Row Data
    ${STATUS} =     set variable    False
    ${STATUS} =     check price exceptions grid first row data
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Rates Grid Columns Header
    ${STATUS} =     set variable    False
    ${STATUS} =     verify rates grid columns
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Dialed Digits Columns Header
    ${STATUS} =     set variable    False
    ${STATUS} =     verify dialed digits columns
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Copy Price Lists Exceptions Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click copy price list exceptions button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Customers For Copy Price Exceptions
    ${STATUS} =     set variable    False
    @{CUSTOMER LIST FOR COPY PRICE EXCEPTIONS} =    create list     ${CREATED SECOND CUSTOMER NAME}
    ${STATUS} =     select customers for copy price exceptions     @{CUSTOMER LIST FOR COPY PRICE EXCEPTIONS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Price Exceptions Performance Customer In CPE Performance Report
    ${CUSTOMER NAME IN CPE PERFORMANCE REPORT} =        verify customer name in price exceptions performance report
    should be equal     ${CUSTOMER NAME IN CPE PERFORMANCE REPORT}      ${CREATED CUSTOMER NAME}
    [Teardown]      run keyword unless    '${CUSTOMER NAME IN CPE PERFORMANCE REPORT}'=='${CREATED CUSTOMER NAME}'        Log Screenshot

Verify Set Price Exceptions Grid First Row Status
    [Arguments]     ${PRICE EXCEPTION GRID STATUS}
    ${STATUS} =     set variable    False
    ${STATUS} =     set price exceptions grid first row status         ${PRICE EXCEPTION GRID STATUS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Price Exceptions Grid Has Data
    ${STATUS} =     set variable    False
    ${STATUS} =     price exceptions grid has data
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Begin Date For Status Updation
    ${STATUS} =     set variable    False
    ${STATUS} =     set begin date for status updation
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Select Date For Status Updation
    ${STATUS} =     set variable    False
    ${STATUS} =     set select date for status updation
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Copy Price Exceptions Submit Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click copy price exceptions submit button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Copy Price Exceptions Is Successfull
    ${STATUS} =     set variable    False
    ${STATUS} =     is copy price exceptions successful
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Save Changes Button For Copy Price Exceptions
    ${STATUS} =     set variable    False
    ${STATUS} =     click save changes button for copy price exceptions
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Pricing Exception Grid First Row Inline Action Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click pricing exception grid first row inline action button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Price Exceptions First Grid First Row Details
    ${STATUS} =     set variable    False
    ${STATUS} =     get price exceptions first grid first row details
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Details of Price Exceptions
    ${STATUS} =     set variable    False
    ${STATUS} =     verify price exceptions details
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Bulk Edit Button
    ${STATUS} =     set variable    False
    ${STATUS} =     Sell.click bulk edit button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set End Date
    [Arguments]     ${END DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     Sell.set end date      ${END DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Begin Date
    [Arguments]     ${BEGIN DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     Sell.set begin date      ${BEGIN DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Bulk Edit Submit Button
    ${STATUS} =     set variable    False
    ${STATUS} =     Sell.click bulk edit submit button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Bulk Edit Status
    [Arguments]     ${BULK EDIT STATUS}
    ${STATUS} =     set variable    False
    ${STATUS} =     Sell.set bulk edit status     ${BULK EDIT STATUS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Bulk Edit Approvaltype
    [Arguments]     ${BULK EDIT APPROVAL TYPE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set bulk edit approvaltype      ${BULK EDIT APPROVAL TYPE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Requested Price
    [Arguments]     ${REQUESTED PRICE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set requested price     ${REQUESTED PRICE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Estimated Value
    [Arguments]     ${ESTIMATED VALUE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set estimated value      ${ESTIMATED VALUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Price Exception Grid Multiple Row
    ${STATUS} =     set variable    False
    ${STATUS} =     select pricing exception grid multiple row
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Pricing Exception Upload Link
    ${STATUS} =     set variable    False
    ${STATUS} =     click pricing exception upload link
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Status For Pricing Exceptions Search
    [Arguments]     ${STATUS FOR PRICING EXCEPTIONS SEARCH}
    @{STATUS ITEM LIST} =       create list        ${STATUS FOR PRICING EXCEPTIONS SEARCH}
    ${STATUS} =     set variable    False
    ${STATUS} =     set status for pricing exception search     @{STATUS ITEM LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Pricing Exception Upload Search Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click pricing exceptions upload search button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Price Exceptions Number Of Rows Form Grid
    ${STATUS} =     set variable    False
    ${STATUS} =     get price exceptions number of rows from grid
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Upload Price Exceptions Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click upload price exceptions button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Upload Price Exceptions Browse Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click upload price exceptions browse button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Price Exception File To Be Uploaded
    [Arguments]     ${PRICE EXCEPTION FILE PATH}
    ${STATUS} =     set variable    False
    ${STATUS} =     Sell.select the file to be uploaded      ${PRICE EXCEPTION FILE PATH}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Customer For Upload Price Exceptions
    ${STATUS} =     set variable    False
    ${STATUS} =     set customer for upload price exceptions      ${CREATED CUSTOMER NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Price Exceptions Upload Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click price exceptions upload button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Compare Price Exceptions Number Of Rows From Grid
    ${STATUS} =     set variable    False
    ${STATUS} =     compare price exceptions number of rows from grid
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Price Exceptions Page Is Loaded Properly
    ${STATUS} =     set variable    False
    ${STATUS} =     is price exceptions page loaded properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Price Exceptions Total Number Of Records Is Displayed
    ${STATUS} =     set variable    False
    ${STATUS} =     is price exceptions total number of records displayed
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Filter Customer Price Lists Grid
    [Arguments]     ${COLUMN NAME TO FILTER}    ${FILTER ITEM}
    @{FILTER ITEM LIST} =       create list        ${FILTER ITEM}
    ${STATUS} =     set variable    False
    ${STATUS} =     filter customer price lists grid        ${COLUMN NAME TO FILTER}    @{FILTER ITEM LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Created Carrier Name
    ${CREATED CARRIER NAME} =     get created carrier name
    set suite variable      ${CREATED CARRIER NAME}
    log     ${CREATED CARRIER NAME}
    should not be equal      '${CREATED CARRIER NAME}'      ''
    [Teardown]      run keyword if    '${CREATED CARRIER NAME}'==''    Log Screenshot

Verify Get Created Rate Plan Name
    ${CREATED RATE PLAN NAME} =     Sell.get created rate plan name
    set suite variable      ${CREATED RATE PLAN NAME}
    log     ${CREATED RATE PLAN NAME}
    should not be equal      '${CREATED RATE PLAN NAME}'      ''
    [Teardown]      run keyword if    '${CREATED RATE PLAN NAME}'==''    Log Screenshot

Verify Get Created Customer Name
    ${CREATED CUSTOMER NAME} =     get created customer name
    set suite variable      ${CREATED CUSTOMER NAME}
    log     ${CREATED CUSTOMER NAME}
    should not be equal      '${CREATED CUSTOMER NAME}'      ''
    return from keyword         ${CREATED CUSTOMER NAME}
    [Teardown]      run keyword if    '${CREATED CUSTOMER NAME}'==''    Log Screenshot

Verify Customers Grid Revenue Currency Format
    [Arguments]     ${EXPECTED CURRENCY FORMAT}
    ${REVENUE VALUE} =    get revenue from customers grid
    log     ${REVENUE VALUE}
    ${STATUS} =     validate currency format       ${REVENUE VALUE}          ${EXPECTED CURRENCY FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Customers Grid Margin Currency Format
    [Arguments]     ${EXPECTED CURRENCY FORMAT}
    ${MARGIN VALUE} =    get margin from customers grid
    log     ${MARGIN VALUE}
    ${STATUS} =     validate currency format         ${MARGIN VALUE}          ${EXPECTED CURRENCY FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Last Modified Date Time Format From Customer Profile Information
    [Arguments]     ${EXPECTED TIME STAMP FORMAT}
    ${LAST MODIFIED DATETIME VALUE} =    get last modified time from customer profile information
    log     ${LAST MODIFIED DATETIME VALUE}
    ${STATUS} =     validate date format         ${LAST MODIFIED DATETIME VALUE}          ${EXPECTED TIME STAMP FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Customer Rates Begin Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${BEGIN DATE VALUE} =    get customer rates begin date
    log     ${BEGIN DATE VALUE}
    ${STATUS} =     validate date format         ${BEGIN DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Customer Rates Grid Rate1 Currency Format
    [Arguments]     ${EXPECTED CURRENCY FORMAT}
    ${RATE1 VALUE} =    get rate1 from customer rates grid
    log     ${RATE1 VALUE}
    ${STATUS} =     validate currency format         ${RATE1 VALUE}          ${EXPECTED CURRENCY FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Customer Rates Grid Rate2 Currency Format
    [Arguments]     ${EXPECTED CURRENCY FORMAT}
    ${RATE2 VALUE} =    get rate2 from customer rates grid
    log     ${RATE2 VALUE}
    ${STATUS} =     validate currency format         ${RATE2 VALUE}          ${EXPECTED CURRENCY FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Customer Rates Grid Rate3 Currency Format
    [Arguments]     ${EXPECTED CURRENCY FORMAT}
    ${RATE3 VALUE} =    get rate3 from customer rates grid
    log     ${RATE3 VALUE}
    ${STATUS} =     validate currency format         ${RATE3 VALUE}          ${EXPECTED CURRENCY FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Customer Rates Grid Begin Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${BEGIN DATE VALUE} =    get begin date from customer rates grid
    log     ${BEGIN DATE VALUE}
    ${STATUS} =     validate date format         ${BEGIN DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Customer Rates Grid Last Modified Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${LAST MODIFIED DATE VALUE} =    get last modified from customer rates grid
    log     ${LAST MODIFIED DATE VALUE}
    ${STATUS} =     validate date format         ${LAST MODIFIED DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Dialed Digit Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select dialed digit tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Rates Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select rates tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Destinations Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     Sell.select destinations tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Customer Dialed Digit Begin Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${BEGIN DATE VALUE} =    get customer dialed digit begin date
    log     ${BEGIN DATE VALUE}
    ${STATUS} =     validate date format         ${BEGIN DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Customer Dialed Digit Grid Begin Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${BEGIN DATE VALUE} =    get begin date from customer dialed digit grid
    log     ${BEGIN DATE VALUE}
    ${STATUS} =     validate date format         ${BEGIN DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Customer Dialed Digit Grid Modified Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${MODIFIED DATE VALUE} =    get modified date from customer dialed digit grid
    log     ${MODIFIED DATE VALUE}
    ${STATUS} =     validate date format         ${MODIFIED DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Customer Destinations Begin Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${BEGIN DATE VALUE} =    get customer destinations begin date
    log     ${BEGIN DATE VALUE}
    ${STATUS} =     validate date format         ${BEGIN DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Customer Destinations Grid Begin Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${BEGIN DATE VALUE} =    get begin date from customer destinations grid
    log     ${BEGIN DATE VALUE}
    ${STATUS} =     validate date format         ${BEGIN DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Customer Destinations Grid Last Modified Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${LAST MODIFIED DATE VALUE} =    get last modified from customer destinations grid
    log     ${LAST MODIFIED DATE VALUE}
    ${STATUS} =     validate date format         ${LAST MODIFIED DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Customer Price List From Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${FROM DATE VALUE} =    get customer price list from date
    log     ${FROM DATE VALUE}
    ${STATUS} =     validate date format         ${FROM DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Customer Price List To Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${TO DATE VALUE} =    get customer price list to date
    log     ${TO DATE VALUE}
    ${STATUS} =     validate date format         ${TO DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Customer Price List Grid Price List Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${PRICE LIST DATE VALUE} =    get price list date from customer price list grid
    log     ${PRICE LIST DATE VALUE}
    ${STATUS} =     validate date format         ${PRICE LIST DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Customer Price List Grid Modified Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${MODIFIED DATE VALUE} =    get modified date from customer price list grid
    log     ${MODIFIED DATE VALUE}
    ${STATUS} =     validate date format         ${MODIFIED DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Selected Price List Grid Price List Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${PRICE LIST DATE VALUE} =    get price list date from selected price list grid
    log     ${PRICE LIST DATE VALUE}
    ${STATUS} =     validate date format         ${PRICE LIST DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Offer Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${OFFER DATE VALUE} =    get offer date
    log     ${OFFER DATE VALUE}
    ${STATUS} =     validate date format         ${OFFER DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Date Format
    [Arguments]     ${EXPECTED DATE FORMAT}
    ${SELECT DATE VALUE} =    get select date
    log     ${SELECT DATE VALUE}
    ${STATUS} =     validate date format         ${SELECT DATE VALUE}          ${EXPECTED DATE FORMAT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Customer Grid First Row Inline Action Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click customer grid first row inline action button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Price Exceptions First Row Begin Date As Future Date
    [Arguments]     ${BEGIN DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set first row begin date            ${BEGIN DATE}       ${True}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Close Sell Window
    ${STATUS} =     set variable    False
    ${STATUS} =     close sell window
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Pricing Exceptions Select Date
    ${STATUS} =     set variable    False
    ${STATUS} =     set pricing exceptions select date
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Customer Name For Second Customer
    [Arguments]     ${CUSTOMER NAME PREFIX}
    ${CREATED SECOND CUSTOMER NAME} =        set customer name       ${CUSTOMER NAME PREFIX}
    set suite variable      ${CREATED SECOND CUSTOMER NAME}
    log         ${CREATED SECOND CUSTOMER NAME}

Verify Set Customer For Upload Price Exceptions For Second Customer
    ${STATUS} =     set variable    False
    ${STATUS} =     set customer for upload price exceptions      ${CREATED SECOND CUSTOMER NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Upload Customer Price Lists Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click upload customer price lists button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Upload Customer Price Lists Browse Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click upload customer price list browse button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select The File To Be Uploaded
    [Arguments]     ${FILE PATH}
    ${STATUS} =     set variable    False
    ${STATUS} =     Sell.select the file to be uploaded      ${FILE PATH}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Customer Name For Price List Upload
    ${STATUS} =     set variable    False
    ${STATUS} =     set customer name for upload customer price list      ${CREATED CUSTOMER NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Compare Customer Price List Number Of Rows After Upload
    ${STATUS} =     set variable    False
    ${STATUS} =     compare customer price lists number of rows after upload
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Ascending Sorted Data
    [Arguments]     @{LIST OF DATA}
    ${STATUS} =     set variable    False
    ${STATUS} =     compare sorted data     ${FALSE}        @{LIST OF DATA}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Descending Sorted Data
    [Arguments]     @{LIST OF DATA}
    ${STATUS} =     set variable    False
    ${STATUS} =     compare sorted data    ${TRUE}         @{LIST OF DATA}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Grid Column Position After Altering
    [Arguments]     ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}      @{COLUMN NAME LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     compare grid column position after altering     ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}      @{COLUMN NAME LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Customers Grid Settings
    [Arguments]     ${GRID SETTING}
    ${STATUS} =     set variable    False
    ${STATUS} =     set customers grid settings        ${GRID SETTING}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get All Rows of Specific Column From Customers Grid
    [Arguments]     ${COLUMN NAME}
    @{ALL ROW DATA} =     get all rows of specific column from customers grid     ${COLUMN NAME}
    return from keyword         @{ALL ROW DATA}

Verify Sort Customers Grid Customer Column In Ascending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort customers grid column  ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Sort Customers Grid Column In Descending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort customers grid column    ${COLUMN NAME}      ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Customers Grid Column Names By Order
    @{COLUMN NAME LIST} =     get customers grid column names by order
    return from keyword         @{COLUMN NAME LIST}

Verify Drag Customers Grid Column
    [Arguments]     ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     drag customers grid column    ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Customers Grid Export To Excel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click customers grid export to excel button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get All Rows of Specific Column From Customer Rates Grid
    [Arguments]     ${COLUMN NAME}
    @{ALL ROW DATA} =     get all rows of specific column from customer rates grid     ${COLUMN NAME}
    return from keyword         @{ALL ROW DATA}

Verify Sort Customer Rates Grid Column In Ascending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort customer rates grid column  ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Sort Customer Rates Grid Column In Descending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort customer rates grid column    ${COLUMN NAME}      ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Customer Rates Grid Column Names By Order
    @{COLUMN NAME LIST} =     get customer rates grid column names by order
    return from keyword         @{COLUMN NAME LIST}

Verify Drag Customer Rates Grid Column
    [Arguments]     ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     drag customer rates grid column    ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Grid Filter Details With First Row Value
    [Arguments]     ${COLUMN NAME TO FILTER}    @{ITEM LIST}
    ${ITEM NAME} =      get from list       ${ITEM LIST}     0
    @{FILTER ITEM LIST} =       create list         ${ITEM NAME}
    log     @{FILTER ITEM LIST}
    set suite variable      @{FILTER ITEM LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     grid filter details     ${COLUMN NAME TO FILTER}        @{FILTER ITEM LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Customer Rates Search Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click customer Rates search button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Customer Rates Grid Filtered Properly
    [Arguments]     ${COLUMN NAME TO FILTER}
    ${STATUS} =     set variable    False
    ${STATUS} =     is customer rates grid filtered properly     ${COLUMN NAME TO FILTER}        @{FILTER ITEM LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get All Rows of Specific Column From Customer Digits Grid
    [Arguments]     ${COLUMN NAME}
    @{ALL ROW DATA} =     get all rows of specific column from customer digits grid     ${COLUMN NAME}
    return from keyword         @{ALL ROW DATA}

Verify Sort Customer Digits Grid Column In Ascending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort customer digits grid column  ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Sort Customer Digits Grid Column In Descending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort customer digits grid column    ${COLUMN NAME}      ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Customer Digits Grid Column Names By Order
    @{COLUMN NAME LIST} =     get customer digits grid column names by order
    return from keyword         @{COLUMN NAME LIST}

Verify Drag Customer Digits Grid Column
    [Arguments]     ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     drag customer digits grid column    ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Search Button
    ${STATUS} =     set variable    False
    ${STATUS} =     Sell.click search button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Customer Digits Grid Filtered Properly
    [Arguments]     ${COLUMN NAME TO FILTER}
    log     @{FILTER ITEM LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     is customer digits grid filtered properly     ${COLUMN NAME TO FILTER}        @{FILTER ITEM LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get All Rows of Specific Column From Customer Destinations Grid
    [Arguments]     ${COLUMN NAME}
    @{ALL ROW DATA} =     get all rows of specific column from customer destinations grid     ${COLUMN NAME}
    return from keyword         @{ALL ROW DATA}

Verify Sort Customer Destinations Grid Column In Ascending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort customer destinations grid column  ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Sort Customer Destinations Grid Column In Descending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort customer destinations grid column    ${COLUMN NAME}      ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Customer Destinations Grid Column Names By Order
    @{COLUMN NAME LIST} =     get customer destinations grid column names by order
    return from keyword         @{COLUMN NAME LIST}

Verify Drag Customer Destinations Grid Column
    [Arguments]     ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     drag customer destinations grid column    ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Customer Destinations Grid Filtered Properly
    [Arguments]     ${COLUMN NAME TO FILTER}
    log     @{FILTER ITEM LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     is customer destinations grid filtered properly     ${COLUMN NAME TO FILTER}        @{FILTER ITEM LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Filter Customer Destinations Grid With First Row Value
    [Arguments]     ${COLUMN NAME TO FILTER}    @{ITEM LIST}
    ${ITEM NAME} =      get from list       ${ITEM LIST}     0
    @{FILTER ITEM LIST} =       create list         ${ITEM NAME}
    log     @{FILTER ITEM LIST}
    set suite variable      @{FILTER ITEM LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     filter customer destinations grid     ${COLUMN NAME TO FILTER}        @{FILTER ITEM LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Customer Price Lists Grid Settings
    [Arguments]     ${GRID SETTING}
    ${STATUS} =     set variable    False
    ${STATUS} =     set customer price lists grid settings        ${GRID SETTING}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get All Rows of Specific Column From Customer Price Lists Grid
    [Arguments]     ${COLUMN NAME}
    @{ALL ROW DATA} =     get all rows of specific column from customer price lists grid     ${COLUMN NAME}
    return from keyword         @{ALL ROW DATA}

Verify Sort Customer Price Lists Grid Column In Ascending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort customer price lists grid column  ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Sort Customer Price Lists Grid Column In Descending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort customer price lists grid column    ${COLUMN NAME}      ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Customer Price Lists Grid Column Names By Order
    @{COLUMN NAME LIST} =     get customer price lists grid column names by order
    return from keyword         @{COLUMN NAME LIST}

Verify Drag Customer Price Lists Grid Column
    [Arguments]     ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     drag customer price lists grid column    ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Filter Customer Price Lists Grid With First Row Value
    [Arguments]     ${COLUMN NAME TO FILTER}    @{ITEM LIST}
    ${ITEM NAME} =      get from list       ${ITEM LIST}     0
    @{FILTER ITEM LIST} =       create list         ${ITEM NAME}
    log     @{FILTER ITEM LIST}
    set suite variable      @{FILTER ITEM LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     filter customer price lists grid     ${COLUMN NAME TO FILTER}        @{FILTER ITEM LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Customer Price Lists Grid Filtered Properly
    [Arguments]     ${COLUMN NAME TO FILTER}
    log     @{FILTER ITEM LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     is customer price lists grid filtered properly     ${COLUMN NAME TO FILTER}        @{FILTER ITEM LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Customer Price Lists Grid Export To Excel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click customer price lists grid export to excel button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Customer Price Lists Grid First Row Inline Action Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click customer price lists grid first row inline action button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Customer Price List Detail Grid Settings
    [Arguments]     ${GRID SETTING}
    ${STATUS} =     set variable    False
    ${STATUS} =     set customer price list detail grid settings        ${GRID SETTING}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get All Rows of Specific Column From Customer Price List Detail Grid
    [Arguments]     ${COLUMN NAME}
    @{ALL ROW DATA} =     get all rows of specific column from customer price list detail grid     ${COLUMN NAME}
    return from keyword         @{ALL ROW DATA}

Verify Sort Customer Price List Detail Grid Column In Ascending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort customer price list detail grid column  ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Sort Customer Price List Detail Grid Column In Descending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort customer price list detail grid column    ${COLUMN NAME}      ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Customer Price List Detail Grid Column Names By Order
    @{COLUMN NAME LIST} =     get customer price list detail grid column names by order
    return from keyword         @{COLUMN NAME LIST}

Verify Drag Customer Price List Detail Grid Column
    [Arguments]     ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     drag customer price list detail grid column    ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Filter Customer Price List Detail Grid With First Row Value
    [Arguments]     ${COLUMN NAME TO FILTER}    @{ITEM LIST}
    ${ITEM NAME} =      get from list       ${ITEM LIST}     0
    @{FILTER ITEM LIST} =       create list         ${ITEM NAME}
    log     @{FILTER ITEM LIST}
    set suite variable      @{FILTER ITEM LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     filter customer price list detail grid     ${COLUMN NAME TO FILTER}        ${ITEM NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Customer Price List Detail Grid Filtered Properly
    [Arguments]     ${COLUMN NAME TO FILTER}
    log     @{FILTER ITEM LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     is customer price list detail grid filtered properly     ${COLUMN NAME TO FILTER}        @{FILTER ITEM LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Customer Price List Detail Grid Export To Excel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click customer price list detail grid export to excel button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Price Exceptions Grid Settings
    [Arguments]     ${GRID SETTING}
    ${STATUS} =     set variable    False
    ${STATUS} =     set price exceptions grid settings        ${GRID SETTING}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get All Rows of Specific Column From Price Exceptions Grid
    [Arguments]     ${COLUMN NAME}
    @{ALL ROW DATA} =     get all rows of specific column from price exceptions grid     ${COLUMN NAME}
    return from keyword         @{ALL ROW DATA}

Verify Sort Price Exceptions Grid Column In Ascending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort price exceptions grid column  ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Sort Price Exceptions Grid Column In Descending Order
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     sort price exceptions grid column    ${COLUMN NAME}      ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Price Exceptions Grid Column Names By Order
    @{COLUMN NAME LIST} =     get price exceptions grid column names by order
    return from keyword         @{COLUMN NAME LIST}

Verify Drag Price Exceptions Grid Column
    [Arguments]     ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     drag price exceptions grid column    ${SOURCE COLUMN NAME}       ${DESTINATION COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Filter Price Exceptions Grid With First Row Value
    [Arguments]     ${COLUMN NAME TO FILTER}    @{ITEM LIST}
    ${ITEM NAME} =      get from list       ${ITEM LIST}     0
    @{FILTER ITEM LIST} =       create list         ${ITEM NAME}
    log     @{FILTER ITEM LIST}
    set suite variable      @{FILTER ITEM LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     filter price exceptions grid     ${COLUMN NAME TO FILTER}        @{FILTER ITEM LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Price Exceptions Grid Filtered Properly
    [Arguments]     ${COLUMN NAME TO FILTER}
    log     @{FILTER ITEM LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     is price exceptions grid filtered properly     ${COLUMN NAME TO FILTER}        @{FILTER ITEM LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Price Exceptions Grid Export To Excel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click price exceptions grid export to excel button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Price Exceptions Performance Customer In CPE Performance Report For All Customers
    ${CUSTOMER NAME IN CPE PERFORMANCE REPORT} =        verify customer name in price exceptions performance report
    should be equal     ${CUSTOMER NAME IN CPE PERFORMANCE REPORT}      ${ALL FIELD VALUE}
    [Teardown]      run keyword unless    '${CUSTOMER NAME IN CPE PERFORMANCE REPORT}'=='${ALL FIELD VALUE}'        Log Screenshot

Verify Click Price Exceptions Performance Report Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click price exceptions performance report button
    should be true      ${STATUS}
    [Teardown]      run keyword if      '${STATUS}'=='False'    Log Screenshot

Verify Select Upload To Requested Radio Button
    ${STATUS} =     set variable    False
    ${STATUS} =     select upload to requested radio button
    should be true      ${STATUS}
    [Teardown]      run keyword if      '${STATUS}'=='False'    Log Screenshot

Verify Click Create CPE Bundle Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click create cpe bundle button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Create CPE Bundle Save Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click create cpe bundle save button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click CPE Bundle Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click cpe bundle button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click CPE Bundle Create CPE Bundle Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click cpe bundle create cpe bundle button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Customer Source
    [Arguments]     ${CUSTOMER NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set customer source     ${CUSTOMER NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select All Customers Of Pricing Exceptions
    ${STATUS} =     set variable    False
    ${STATUS} =     select all customers of pricing exceptions
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Price Exception Request Grid Multiple Row
    ${STATUS} =     set variable    False
    ${STATUS} =     select price exception request grid multiple row
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Bulk Edit Error Pop Up Displayed
    ${STATUS} =     set variable    False
    ${STATUS} =     is bulk edit error pop up displayed
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click On Sell Dashboard Tab
    ${STATUS} =     set variable    False
    ${STATUS} =     select sell dashboard tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Save Customer Profile Button Is Not Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is save customer profile button not present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Specific Tab On Customer Profile Page Is Available
    [Arguments]     ${TAB NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is specific tab on customer profile page present        ${TAB NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Specific Column On Customer Profile Grid Is Available
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is specific column on customer profile grid present        ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Upload Customer Price List Button Is Not Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is upload customer price list button not present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Show Summary Form Button To Expand
    ${STATUS} =     set variable    False
    ${STATUS} =     click show summary form button to expand
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Error Log Message Tab Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is error log message tab present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Cpl Prev Date Override
    ${CPL PREV DATE OVERRIDE} =     get cpl prev date override
    log     ${CPL PREV DATE OVERRIDE}
    should not be equal      '${CPL PREV DATE OVERRIDE}'      ''
    return from keyword         ${CPL PREV DATE OVERRIDE}
    [Teardown]      run keyword if    '${CPL PREV DATE OVERRIDE}'==''    Log Screenshot

Verify Set Cpl Prev Date Override
    [Arguments]     ${CPL PREV DATE OVERRIDE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set cpl prev date override      ${CPL PREV DATE OVERRIDE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Customers Grid First Row Customer Name
    ${CUSTOMER NAME} =     get customers grid first row customer name
    log     ${CUSTOMER NAME}
    should not be equal      '${CUSTOMER NAME}'      ''
    return from keyword         ${CUSTOMER NAME}
    [Teardown]      run keyword if    '${CUSTOMER NAME}'==''    Log Screenshot

Verify Compare Cpl Prev Date Override
    [Arguments]     ${EXPECTED CPL PREV DATE OVERRIDE}
    ${ACTUAL CPL PREV DATE OVERRIDE} =     get cpl prev date override
    should be equal     ${EXPECTED CPL PREV DATE OVERRIDE}      ${ACTUAL CPL PREV DATE OVERRIDE}
    [Teardown]      run keyword if    '${EXPECTED CPL PREV DATE OVERRIDE}'=='${ACTUAL CPL PREV DATE OVERRIDE}'    Log Screenshot

Verify Click My Price List Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click my price list button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify My Price List Screen Loaded
    ${STATUS} =     set variable    False
    ${STATUS} =     is my price list screen loaded
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click New My Price List Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click new my price list button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Create My Price List Screen Loaded
    ${STATUS} =     set variable    False
    ${STATUS} =     is create my price list screen loaded
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set My Price List
    [Arguments]     ${MY PRICE LIST PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set my price list          ${MY PRICE LIST PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get My Price List
    ${MY PRICE LIST} =      get my price list
    return from keyword     ${MY PRICE LIST}

Verify Move All Available Customers To Destination To Create My Price List
    ${STATUS} =     set variable    False
    ${STATUS} =     move all available customers to destination to create my price list
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Move All Available Countries To Destination To Create My Price List
    ${STATUS} =     set variable    False
    ${STATUS} =     move all available countries to destination to create my price list
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Save My Price List Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click save my price list button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set My Price List Into Search Input Field
    [Arguments]     ${MY PRICE LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     set my price list into search input field          ${MY PRICE LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click My Price List Management Grid First Row Inline Action Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click my price list management grid first row inline action button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select My Price List Management Grid Inline Action Item
    [Arguments]     ${INLINE ACTION ITEM}
    ${STATUS} =     set variable    False
    ${STATUS} =     select my price list management grid inline action item         ${INLINE ACTION ITEM}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select My Price List Management Grid First Row Checkbox
    ${STATUS} =     set variable    False
    ${STATUS} =     select my price list management grid first row checkbox
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Delete Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click delete button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set My Price List Without Random Data
    [Arguments]     ${MYPRICE LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     set my price list          ${MYPRICE LIST}      ${FALSE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Error Message Is Displayed For Duplicate My Price List
    ${STATUS} =     set variable    False
    ${STATUS} =     is error message displayed for duplicate my price list
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Item From My Price List Dropdown
    [Arguments]     ${MY PRICE LIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     select item from my price list drop down        ${MY PRICE LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Customer Price List Preview Export To Excel Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click customer price list preview export to excel button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Country Group Link
    ${STATUS} =     set variable    False
    ${STATUS} =     click country group link
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Choose Template Type To Download Customer Price List Link
    ${STATUS} =     set variable    False
    ${STATUS} =     click choose template type to download customer price list link
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Reference Price List First Item
    ${STATUS} =     set variable    False
    ${STATUS} =     set reference price list first item
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Number Plan First Item
    ${STATUS} =     set variable    False
    ${STATUS} =     set number plan first item
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Offer Date With Value
    [Arguments]     ${OFFER DATE}
    ${STATUS} =     set variable    False
    ${STATUS} =     set offer date          ${OFFER DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Countries Are Selected
    ${STATUS} =     set variable    False
    ${STATUS} =     are countries selected
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select First Customer For Price Lists
    ${STATUS} =     set variable    False
    ${STATUS} =     select first customer for price lists
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Countries From tbcountry Having No Mobile Country Code
    [Arguments]     ${SERVER NAME}      ${DATABASE NAME}      ${DB USER NAME}      ${DB PASSWORD}
    @{COUNTRIES} =     get countries from tbcountry having no mobile country code       ${SERVER NAME}      ${DATABASE NAME}      ${DB USER NAME}      ${DB PASSWORD}
    return from keyword     @{COUNTRIES}

Verify Country Dropdown Does Not Show Country Having No Country Code
    [Arguments]     @{COUNTRIES}
    ${INVALID COUNTRY} =     set variable    ${EMPTY}
    ${INVALID COUNTRY} =     validate country dropdown does not show country having no country code      @{COUNTRIES}
    log     ${INVALID COUNTRY}
    should be empty     ${INVALID COUNTRY}
    [Teardown]      run keyword unless    '${INVALID COUNTRY}'==''    Log Screenshot

Verify Warning Tab Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is warning tab present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Warning Tab
    [Tags]    REGRESSION
    ${STATUS} =     set variable    False
    ${STATUS} =     select warning tab
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Warning Tab is Loaded Properly
    [Tags]    REGRESSION
    ${STATUS} =     set variable    False
    ${STATUS} =     is warning tab loaded
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Warnings Message Tab Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is warnings message tab present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Errors Message Tab Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is errors message tab present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Tab
    [Arguments]         ${TAB NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     Sell.select tab     ${TAB NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Grid is Empty
    ${STATUS} =     set variable    False
    ${STATUS} =     is grid empty
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Deleted MyPriceList is not Shown in MyPriceList Dropdown
    [Arguments]         ${MY PRICELIST}
    ${STATUS} =     set variable    False
    ${STATUS} =     is deleted mypricelist removed from mypricelist dropdown    ${MY PRICELIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get All Items from MyPriceList Dropdown
    @{ITEMS} =     get all items from my pricelist dropdown
    return from keyword     @{ITEMS}

Verify Pricing Exception Error Message Is Displayed For Approved Or Request Status
    ${STATUS} =     set variable    False
    ${STATUS} =     is pricing exception error message displayed for approved or request status
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Descending Sorting Option Is Displayed In Customer Price List Preview Screen
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is sorting options are displayed in customer price list preview screen    ${COLUMN NAME}      ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Ascending Sorting Option Is Displayed In Customer Price List Preview Screen
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is sorting options are displayed in customer price list preview screen          ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Search Rate Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is search rate present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Offer Content For MypriceList
    [Arguments]     ${OFFER CONTENT}
    ${STATUS} =     set variable    False
    ${STATUS} =     set offer content for mypricelist       ${OFFER CONTENT}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Country Multiselection Field Is Disabled
    ${STATUS} =     set variable    False
    ${STATUS} =     is country multiselect field disabled
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set MypriceList To Create CPL
    [Arguments]     ${CREATED MYPRICELIST NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set mypricelist to create cpl      ${CREATED MYPRICELIST NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Country Multiselection Field Is Enabled
    ${STATUS} =     set variable    False
    ${STATUS} =     is country multiselect field enabled
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Future Price List Action Column Name Is Not Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is future price list action column name not present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Future Price List Action Column Name Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is future price list action column name present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Pricing Exception Bulk Edit Is Not Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is pricing exception bulk edit pop up not present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set First Row Note
    [Arguments]     ${NOTE PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set first row note            ${NOTE PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Auto Generate Management Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click auto generate management button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Auto Generate Management Screen Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is auto generate management screen present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Specific Column Is Available In Auto Generate Management Screen
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is specific column present in auto generate management screen       ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click New Template Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click new template button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set New Template Name
    [Arguments]     ${TEMPLATE NAME PREFIX}
    ${STATUS} =     set variable    False
    ${STATUS} =     set new template name     ${TEMPLATE NAME PREFIX}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Created Template Name
    ${CREATED TEMPLATE NAME} =     get created template name
    set suite variable      ${CREATED TEMPLATE NAME}
    log     ${CREATED TEMPLATE NAME}
    return from keyword         ${CREATED TEMPLATE NAME}
    [Teardown]      run keyword if    '${CREATED TEMPLATE NAME}'==''    Log Screenshot

Verify Set Begin Of Range Period Date To Add
    [Arguments]     ${DAY TO ADD}
    ${STATUS} =     set variable    False
    ${STATUS} =     set begin of range period date to add     ${DAY TO ADD}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Begin Of Range Period Time
    [Arguments]     ${TIME TO SET}
    ${STATUS} =     set variable    False
    ${STATUS} =     set begin of range period Time     ${TIME TO SET}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set End Of Range Period Date To Add
    [Arguments]     ${DAY TO ADD}
    ${STATUS} =     set variable    False
    ${STATUS} =     set end of range period date to add     ${DAY TO ADD}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set End Of Range Period Time
    [Arguments]     ${TIME TO SET}
    ${STATUS} =     set variable    False
    ${STATUS} =     set end of range period Time     ${TIME TO SET}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Filter Auto Template Management Grid
    [Arguments]     ${COLUMN NAME}     ${CREATED TEMPLATE NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     filter auto template management grid       ${COLUMN NAME}     ${CREATED TEMPLATE NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Auto Template Management Grid Row Details
    ${AUTO TEMPLATE GRID ROW DETAILS} =     get auto template management grid row details
    set suite variable      ${AUTO TEMPLATE GRID ROW DETAILS}
    ${LENGTH} =     get length      ${AUTO TEMPLATE GRID ROW DETAILS}
    [Teardown]      run keyword if    '${LENGTH}'=='0'    Log Screenshot

Verify Auto Template Management Grid New Template Name
    [Arguments]      ${CREATED TEMPLATE NAME}
    ${ACTUAL TEMPLATE NAME} =   Get From Dictionary     ${AUTO TEMPLATE GRID ROW DETAILS}      Template Name
    should be equal     ${ACTUAL TEMPLATE NAME}      ${CREATED TEMPLATE NAME}
    [Teardown]      run keyword unless     '${ACTUAL TEMPLATE NAME}'=='${CREATED TEMPLATE NAME}'    Log Screenshot

Verify Value Of Number Plan Field
    ${STATUS} =     set variable    False
    ${STATUS} =     verify number plan field value
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Offer Content Field Value
    [Arguments]     ${EXPECTED OFFER CONTENT}
    ${ACTUAL OFFER CONTENT} =     get offer content field value
    should be equal     ${EXPECTED OFFER CONTENT}       ${ACTUAL OFFER CONTENT}
    [Teardown]      run keyword unless    '${EXPECTED OFFER CONTENT}'=='${ACTUAL OFFER CONTENT}'    Log Screenshot

Verify Compare MyPriceList Value
    [Arguments]     ${EXPECTED VALUE}
    ${ACTUAL VALUE} =     get my price list name from mpl management grid
    log         ${ACTUAL VALUE}
    should be equal     ${EXPECTED VALUE}       ${ACTUAL VALUE}
    [Teardown]      run keyword unless    '${EXPECTED VALUE}'=='${ACTUAL VALUE}'    Log Screenshot

Verify Set Scope For MypriceList
    [Arguments]     ${ITEM NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set scope for mypricelist       ${ITEM NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Select date For Mypricelist Grid
    [Arguments]     ${SELECT DATE ITEM}
    ${STATUS} =     set variable    False
    ${STATUS} =     set select date for mypricelist grid     ${SELECT DATE ITEM}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set MypriceList From Kendo Dropdown
    [Arguments]     ${ITEM NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     set mypricelist from kendo dropdown       ${ITEM NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Compare Select Date In Mypricelist
    [Arguments]     ${SELECT DATE ITEM}
    ${STATUS} =     set variable    False
    ${STATUS} =     compare select date in mypricelist      ${SELECT DATE ITEM}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Offer Date To Mypricelist Grid
    [Arguments]     ${OFFER DATE ITEM}
    ${STATUS} =     set variable    False
    ${STATUS} =     set offer date to mypricelist grid     ${OFFER DATE ITEM}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Compare Offer Date In Mypricelist
    [Arguments]     ${OFFER DATE ITEM}
    ${STATUS} =     set variable    False
    ${STATUS} =     compare offer date in mypricelist      ${OFFER DATE ITEM}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Preview Summary Grid Column Is Displayed
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is preview summary grid column displayed        ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Customer Price List Job Notifier Title
    ${STATUS} =     set variable    False
    ${STATUS} =     click customer price list job notifier title
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click First Row Job Msg Info Icon
    ${STATUS} =     set variable    False
    ${STATUS} =     click first row job msg info icon
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Jobs Grid Has Data
    ${STATUS} =     set variable    False
    ${STATUS} =     does jobs grid have data
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Generate Offers For Filter Option Is Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is generate offers for filter option present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Generate Offers For Filter Option Is Not Present
    ${STATUS} =     set variable    False
    ${STATUS} =     is generate offers for filter option not present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Show Search Form Link
    ${STATUS} =     set variable    False
    ${STATUS} =     click show search form link
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify is No Record Found Message Displayed in Customer Offer Preview Grid
    ${STATUS} =     set variable    False
    ${STATUS} =     is no record found message displayed in customer offer preview grid
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Rates Tab Is Loaded Properly
    ${STATUS} =     set variable    False
    ${STATUS} =     is rates tab loaded properly
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Value into Destination Input Box
    [Arguments]         ${DESTINATION}
    ${STATUS} =     set variable    False
    ${STATUS} =     set value into destination input box    ${DESTINATION}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Value into Pricing Exception Destination Input Box
    [Arguments]         ${DESTINATION}
    ${STATUS} =     set variable    False
    ${STATUS} =     set value into pricing exception destination input box      ${DESTINATION}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Price Exception Grid Begin Date Field is Auto Populated
    [Arguments]         ${BACKDATE_-1}=${False}
    ${STATUS} =     set variable    False
    ${STATUS} =     is price exception grid begin date field auto populated         ${BACKDATE_-1}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Compare Customer Price List Number Of Rows After Upload For One Upload
    ${STATUS} =     set variable    False
    ${STATUS} =     compare customer price lists number of rows after upload for one upload
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Quality Of Service Link
    ${STATUS} =     set variable    False
    ${STATUS} =     click quality of service link
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Quality of Service
    [Arguments]     ${QOS}
    ${STATUS} =     set variable    False
    ${STATUS} =     Sell.set quality of service       ${QOS}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify QOS Grid Column Is Present
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is qos grid column present      ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Check IXLink Customer Checkbox
    ${STATUS} =     set variable    False
    ${STATUS} =     check ixlink customer checkbox
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Available Number Of Countries for Price Lists
    ${NUMBER OF COUNTRIES} =     get available number of countries for price lists
    log     ${NUMBER OF COUNTRIES}
    return from keyword     ${NUMBER OF COUNTRIES}
    [Teardown]      run keyword if    '${NUMBER OF COUNTRIES}'==''    Log Screenshot

Verify Available Countries Are Repopulated for Price Lists
    [Arguments]     ${PREVIOUS NUMBER OF COUNTRIES}     ${CURRENT NUMBER OF COUNTRIES}
    should be equal     ${PREVIOUS NUMBER OF COUNTRIES}     ${CURRENT NUMBER OF COUNTRIES}
    [Teardown]      run keyword unless    '${PREVIOUS NUMBER OF COUNTRIES}'=='${CURRENT NUMBER OF COUNTRIES}'    Log Screenshot

Verify Click Buy And Sell Deal Management Link
    ${STATUS} =     set variable    False
    ${STATUS} =     click buy and sell deal management link
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Buy And Sell Deal Management Grid Column Diplays Thousand Separators
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     Sell.verify deal management grid column display thousand separators      ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Pricing Exception Grid Error Message is Appeared
    ${STATUS} =     set variable    False
    ${STATUS} =    is pricing exception grid error message appeared
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify QOS Screen Filter Option Is Present
    [Arguments]     ${FILTER OPTION NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is qos screen filter option present      ${FILTER OPTION NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Clear Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click clear button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Qos Filter Option Selection Is Cleared
    ${STATUS} =     set variable    False
    ${STATUS} =     is qos filter option selection cleared
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Source Name From Source Customer Table
    [Arguments]     ${DATABASE SERVER}      ${DATABASE}      ${DATABASE USERNAME}      ${DATABASE PASSWORD}
    ${SOURCE NAME} =     get source name from source customer table       ${DATABASE SERVER}      ${DATABASE}      ${DATABASE USERNAME}      ${DATABASE PASSWORD}
    return from keyword     ${SOURCE NAME}

Verify Check Exclude Own Home Country Checkbox
    ${STATUS} =     set variable    False
    ${STATUS} =     check exclude own home country checkbox
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Assign Available Country To Source
    [Arguments]     ${COUNTRY NAME}
    ${STATUS} =     set variable    False
    @{COUNTRY LIST} =    create list     ${COUNTRY NAME}
    ${STATUS} =     assign available country to source        @{COUNTRY LIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Country Name From Database
    [Arguments]         ${CONFIG VARIABLE VALUE}     ${DATABASE SERVER}      ${DATABASE}      ${DATABASE USERNAME}      ${DATABASE PASSWORD}
    ${COUNTRY NAME} =      get country name from database        ${CONFIG VARIABLE VALUE}     ${DATABASE SERVER}      ${DATABASE}      ${DATABASE USERNAME}      ${DATABASE PASSWORD}
    return from keyword     ${COUNTRY NAME}

Verify The Homecountry Is Not Available In The Preview Grid
    [Arguments]     ${HOME COUNTRY}
    ${STATUS} =     set variable    False
    ${STATUS} =     is homecountry not displayed in preview grid        ${HOME COUNTRY}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Uncheck Exclude Own Home Country Checkbox
    ${STATUS} =     set variable    False
    ${STATUS} =     uncheck exclude own home country checkbox
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Homecountry Is Available In The Preview Grid
    [Arguments]     ${HOME COUNTRY}
    ${STATUS} =     set variable    False
    ${STATUS} =     is homecountry displayed in preview grid        ${HOME COUNTRY}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Source Name From Source Customer Table Where CountryId Is Not Null
    [Arguments]     ${DATABASE SERVER}      ${DATABASE}      ${DATABASE USERNAME}      ${DATABASE PASSWORD}
    ${SOURCE NAME} =     get source name from source customer table where countryid is not null      ${DATABASE SERVER}      ${DATABASE}      ${DATABASE USERNAME}      ${DATABASE PASSWORD}
    return from keyword     ${SOURCE NAME}

Verify Click Import Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click import button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click QoS Browse Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click qos browse button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Upload Files Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click upload files button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Get Customer Price List Grid Number Of Rows
    ${GRID ROW COUNT} =     get customer price list grid number of rows
    log     ${GRID ROW COUNT}
    return from keyword         ${GRID ROW COUNT}
    [Teardown]      run keyword if    '${GRID ROW COUNT}'==''    Log Screenshot

Verify Compare CPL Count After Creating A New One
    ${STATUS} =     set variable    False
    ${STATUS} =     compare cpl count after creating a new one
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Dialed Digit MCC-MNC Tab Is Available
    ${STATUS} =     set variable    False
    ${STATUS} =     is dialed digits mcc mnc tab present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify First Row Future Offer Actions Is Disabled
    ${STATUS} =     set variable    False
    ${STATUS} =     is first row future offer actions disabled
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Second Row Future Offer Actions Is Enabled
    ${STATUS} =     set variable    False
    ${STATUS} =     is second row future offer actions enabled
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Second Row Future Offer Actions Dropdown
    ${STATUS} =     set variable    False
    ${STATUS} =     click second row future offer actions dropdown
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Future Offer Actions Dropdown Has Proper Options
    [Arguments]     ${OPTION NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     does future offer actions dropdown have proper options      ${OPTION NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Future Date As To Date
    ${STATUS} =     set variable    False
    ${STATUS} =     set to date     ${EMPTY}    ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Future Date As Offer Date
    ${STATUS} =     set variable    False
    ${STATUS} =     set offer date      ${EMPTY}    ${TRUE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Price Exception Excel Template Download Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click price exception excel template download button button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Specific Column Present In MyPriceList Grid
    [Arguments]     ${COLUMN NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is specific column present in mypricelist grid        ${COLUMN NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify The Specific Field Present In MyPriceList Page
    [Arguments]     ${FIELD NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is specific field present in mypricelist page        ${FIELD NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Field Is Present
    [Arguments]     ${FIELD NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is field present        ${FIELD NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Button Is Displayed
    [Arguments]     ${BUTTON NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is button displayed     ${BUTTON NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Auto Generate Template Grid First Row Inline Action Button
    ${STATUS} =     set variable    False
    ${STATUS} =     click auto generate template grid first row inline action button
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Inline Action Item Is Present
    [Arguments]     ${ITEM NAME}
    ${STATUS} =     set variable    False
    ${STATUS} =     is inline action item present       ${ITEM NAME}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Check Require CPL Approval Checkbox
    ${STATUS} =     set variable    False
    ${STATUS} =     check require cpl approval checkbox
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Customer Price List Grid First Row
    ${STATUS} =     set variable    False
    ${STATUS} =     select customer price list grid first row
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Issue Price Lists Button With CPL Approval
    ${STATUS} =     set variable    False
    ${STATUS} =     click issue price lists button with cpl approval
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Destination Checkbox
    ${STATUS} =     set variable    False
    ${STATUS} =     select destinations checkbox
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Price Exception Grid Begin Date
    [Arguments]     ${PREVIOUS DATE}=${False}        ${FUTURE DATE}=${False}        ${CURRENT DATE}=${False}
    ${STATUS} =     set variable    False
    ${STATUS} =     set price exception grid begin date       ${PREVIOUS DATE}       ${FUTURE DATE}     ${CURRENT DATE}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Set Reference Price List For Create Customer
    [Arguments]     ${DROPDOWN ITEM}
    ${STATUS} =     set variable    False
    ${STATUS} =     set reference price list for create customer     ${DROPDOWN ITEM}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Click Price Exception Grid First Row Info Icon
    ${STATUS} =     set variable    False
    ${STATUS} =     click price exception grid first row info icon
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Date Range Error Message
    ${STATUS} =     set variable    False
    ${STATUS} =     is date range error message present
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Customers For Mypricelist
    [Arguments]     ${CREATED CUSTOMER NAME TO MOVE}
    ${STATUS} =     set variable    False
    @{CUSTOMER LIST FOR MYPRICELIST} =    create list     ${CREATED CUSTOMER NAME TO MOVE}
    ${STATUS} =     select customers for mypricelist     @{CUSTOMER LIST FOR MYPRICELIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot

Verify Select Countries For Mypricelist
    [Arguments]     ${COUNTRY NAME TO MOVE}
    ${STATUS} =     set variable    False
    @{COUNTRY LIST FOR MYPRICELIST} =    create list     ${COUNTRY NAME TO MOVE}
    ${STATUS} =     select countries for mypricelist     @{COUNTRY LIST FOR MYPRICELIST}
    should be true      ${STATUS}
    [Teardown]      run keyword if    '${STATUS}'=='False'    Log Screenshot