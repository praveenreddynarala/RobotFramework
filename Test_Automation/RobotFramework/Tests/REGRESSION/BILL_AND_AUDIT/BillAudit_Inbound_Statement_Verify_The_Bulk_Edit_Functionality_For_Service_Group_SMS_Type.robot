*** Settings ***
Documentation     A Test Suite With Set Of Tests For Inbound Statement To Verify The Bulk Edit Functionality For Service Group SMS Type

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/bill_and_audit_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/bill_and_audit_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Bill And Audit module
    [Tags]    REGRESSION
    click on home icon and select 'bill and audit' from main menu

Validate Select Inbound Statements Tab
    [Tags]    REGRESSION
    Verify Select Inbound Statement Tab

Validate Click Create New Statement Button
    [Tags]    REGRESSION
    Verify Click Create New Statement Button

Validate Set Audit Account
    [Tags]    REGRESSION
    Verify Set Audit Account        ${SMS BULK EDIT AUDIT ACCOUNT}

Validate Set Statement Number
    [Tags]    REGRESSION
    Verify Set Statement Number

Validate Set Statement Currency
    [Tags]    REGRESSION
    Verify Set Statement Currency       ${SMS BULK EDIT CURRENCY}

Validate Set Vat Code
    [Tags]    REGRESSION
    Verify Set Vat Code     ${SMS BULK EDIT VAT CODE}

Validate Set Vat Amount
    [Tags]    REGRESSION
    Verify Set Vat Amount       ${SMS BULK EDIT VAT AMOUNT}

Validate Set Total Amount
    [Tags]    REGRESSION
    Verify Set Total Amount     ${SMS BULK EDIT TOTAL AMOUNT}

Validate Set Total Amount With Taxes
    [Tags]    REGRESSION
    Verify Set Total Amount With Taxes      ${SMS BULK EDIT TOTAL AMOUNT WITH TAXES}

Validate Set Statement Begin Date
    [Tags]    REGRESSION
    Verify Set Statement Begin Date     ${SMS BULK EDIT BEGIN DATE}

Validate Set Statement End Date
    [Tags]    REGRESSION
    Verify Set Statement End Date       ${SMS BULK EDIT END DATE}

Validate Set Statement Issued Date
    [Tags]    REGRESSION
    Verify Set Statement Issued Date        ${SMS BULK EDIT ISSUED DATE}

Validate Set Statement Received Date
    [Tags]    REGRESSION
    Verify Set Statement Received Date      ${SMS BULK EDIT RECEIVED DATE}

Validate Set Statement Due Date
    [Tags]    REGRESSION
    Verify Set Statement Due Date       ${SMS BULK EDIT DUE DATE}

Validate Set Base Currency
    [Tags]    REGRESSION
    Verify Set Base Currency        ${SMS BULK EDIT BASE CURRENCY}

Validate Set Exchange Rate
    [Tags]    REGRESSION
    Verify Set Exchange Rate        ${SMS BULK EDIT EXCHANGE RATE}

Validate Set Exchange Rate Date
    [Tags]    REGRESSION
    Verify Set Exchange Rate Date       ${SMS BULK EDIT EXCHANGE RATE DATE}

Validate Click Statement Entry Save Button
    [Tags]    REGRESSION
    Verify Click Statement Entry Save Button

Validate Set Audit Account For Search
    [Tags]    REGRESSION
    Verify Set Audit Account For Search     @{SMS BULK EDIT AUDIT ACCOUNT LIST}

Validate Set Statement Status For Search
    [Tags]    REGRESSION
    Verify Set Statement Status For Search      @{SMS BULK EDIT STATUS LIST}

Validate Set Begin Date For Search
    [Tags]    REGRESSION
    Verify Set Begin Date For Search

Validate Set End Date For Search
    [Tags]    REGRESSION
    Verify Set End Date For Search

Validate Click Inbound Statement Search Button
    [Tags]    REGRESSION
    Verify Click Inbound Statement Search Button

Validate Click Inbound Statement Grid Inline Action Button
    [Tags]    REGRESSION
    Verify Click Inbound Statement Grid Inline Action Button

Validate Select Statement Details Inline Action Item
    [Tags]    REGRESSION
    Verify Select Inline Action Item        ${STATEMENT DETAILS INLINE ITEM}

Validate Click Bulk Add Button
    [Tags]    REGRESSION
    Verify Click Bulk Add Button

Validate Set Service Group
    [Tags]    REGRESSION
    Verify Set Service Group        ${SMS BULK ADD SERVICE GROUP}

Validate Set Tariff Type
    [Tags]    REGRESSION
    Verify Set Tariff Type      ${SMS BULK ADD TARIFF TYPE}

Validate Set Line Item Type
    [Tags]    REGRESSION
    Verify Set Line Item Type       ${SMS BULK ADD LINE ITEM TYPE}

Validate Set Product
    [Tags]    REGRESSION
    Verify Set SMS Product      ${SMS BULK ADD PRODUCT NAME}

Validate Set Time Band
    [Tags]    REGRESSION
    Verify Set Time Band        ${SMS BULK ADD TIME BAND}

Validate Set Bulk Add Begin Date
    [Tags]    REGRESSION
    Verify Set Bulk Add Begin Date      ${SMS BULK ADD BEGIN DATE}

Validate Set Bulk Add End Date
    [Tags]    REGRESSION
    Verify Set Bulk Add End Date      ${SMS BULK ADD END DATE}

Validate Set Rating Unit
    [Tags]    REGRESSION
    Verify Set Rating Unit      ${SMS BULK ADD RATING UNIT}

Validate Click Bulk Edit Undo Reset Button
    [Tags]    REGRESSION
    Verify Click Bulk Edit Undo Reset Button

Validate Tariff Type Input Field Is Reset
    [Tags]    REGRESSION
    Verify Input Field Is Reset     ${TARIFF TYPE LABEL TEXT}

Validate Product Input Field Is Reset
    [Tags]    REGRESSION
    Verify Input Field Is Reset     ${SMS PRODUCT LABEL TEXT}

Validate Line Item Type Input Field Is Reset
    [Tags]    REGRESSION
    Verify Input Field Is Reset     ${LINE ITEM TYPE LABEL TEXT}

Validate Service Group Input Field Is Reset
    [Tags]    REGRESSION
    Verify Input Field Is Reset     ${SERVICE GROUP LABEL TEXT}

Validate Time Band Input Field Is Reset
    [Tags]    REGRESSION
    Verify Input Field Is Reset     ${TIME BAND LABEL TEXT}

Validate Rating Unit Input Field Is Reset
    [Tags]    REGRESSION
    Verify Input Field Is Reset     ${RATING UNIT LABEL TEXT}

Validate Set Service Group After Reset
    [Tags]    REGRESSION
    Verify Set Service Group        ${SMS BULK ADD SERVICE GROUP}

Validate Set Tariff Type After Reset
    [Tags]    REGRESSION
    Verify Set Tariff Type      ${SMS BULK ADD TARIFF TYPE}

Validate Set Line Item Type After Reset
    [Tags]    REGRESSION
    Verify Set Line Item Type       ${SMS BULK ADD LINE ITEM TYPE}

Validate Set Product After Reset
    [Tags]    REGRESSION
    Verify Set SMS Product      ${SMS BULK ADD PRODUCT NAME}

Validate Set Time Band After Reset
    [Tags]    REGRESSION
    Verify Set Time Band        ${SMS BULK ADD TIME BAND}

Validate Set Bulk Add Begin Date After Reset
    [Tags]    REGRESSION
    Verify Set Bulk Add Begin Date      ${SMS BULK ADD BEGIN DATE}

Validate Set Bulk Add End Date After Reset
    [Tags]    REGRESSION
    Verify Set Bulk Add End Date      ${SMS BULK ADD END DATE}

Validate Set Rating Unit After Reset
    [Tags]    REGRESSION
    Verify Set Rating Unit      ${SMS BULK ADD RATING UNIT}

Validate Click Bulk Edit Cancel Button
    [Tags]    REGRESSION
    Verify Click Bulk Edit Cancel Button

Validate Bulk Add Pop Up Is Cancelled
    [Tags]    REGRESSION
    Verify Bulk Add Pop Up Is Cancelled

Validate Click Bulk Add Button After Cancel
    [Tags]    REGRESSION
    Verify Click Bulk Add Button

Validate Set Bulk Add Number Of Rows
    [Tags]    REGRESSION
    Verify Set Bulk Add Number Of Rows      ${SMS BULK ADD NUMBER OF ROWS}

Validate Set Service Group After Cancel
    [Tags]    REGRESSION
    Verify Set Service Group        ${SMS BULK ADD SERVICE GROUP}

Validate Set Tariff Type After Cancel
    [Tags]    REGRESSION
    Verify Set Tariff Type      ${SMS BULK ADD TARIFF TYPE}

Validate Set Line Item Type After Cancel
    [Tags]    REGRESSION
    Verify Set Line Item Type       ${SMS BULK ADD LINE ITEM TYPE}

Validate Set Product After Cancel
    [Tags]    REGRESSION
    Verify Set SMS Product      ${SMS BULK ADD PRODUCT NAME}

Validate Set Time Band After Cancel
    [Tags]    REGRESSION
    Verify Set Time Band        ${SMS BULK ADD TIME BAND}

Validate Set Bulk Add Begin Date After Cancel
    [Tags]    REGRESSION
    Verify Set Bulk Add Begin Date      ${SMS BULK ADD BEGIN DATE}

Validate Set Bulk Add End Date After Cancel
    [Tags]    REGRESSION
    Verify Set Bulk Add End Date      ${SMS BULK ADD END DATE}

Validate Set Rating Unit After Cancel
    [Tags]    REGRESSION
    Verify Set Rating Unit      ${SMS BULK ADD RATING UNIT}

Validate Click Bulk Add Submit Button
    [Tags]    REGRESSION
    Verify Click Bulk Edit Submit Button

Validate Set Value In Minutes/Quantity Column
    [Tags]    REGRESSION
    Verify Set Value In Received Charges Grid Column        ${MINUTES/QUANTITY COLUMN NAME}     ${SMS MINUTES/QUANTITY VALUE}

Validate Set Value In Rate Column
    [Tags]    REGRESSION
    Verify Set Value In Received Charges Grid Column        ${RATE COLUMN NAME}     ${SMS RATE VALUE}

Validate Click Received Charges Save Changes Button
    [Tags]    REGRESSION
    Verify Click Received Charges Save Changes Button

Validate Get Received Charges Grid Row Details
    [Tags]    REGRESSION
    Verify Get Received Charges Grid Row Details

Validate Tariff Type After Bulk Add
    [Tags]    REGRESSION
    Verify Tariff Type After Bulk Add       ${SMS BULK ADD TARIFF TYPE}

Validate Line Item Type After Bulk Add
    [Tags]    REGRESSION
    Verify Line Item Type After Bulk Add        ${SMS BULK ADD LINE ITEM TYPE}

Validate Service Group After Bulk Add
    [Tags]    REGRESSION
    Verify Service Group After Bulk Add     ${SMS BULK ADD SERVICE GROUP}

Validate Product After Bulk Add
    [Tags]    REGRESSION
    Verify Product After Bulk Add       ${SMS BULK ADD PRODUCT NAME}

Validate Time Band After Bulk Add
    [Tags]    REGRESSION
    Verify Time Band After Bulk Add     ${SMS BULK ADD TIME BAND}

Validate Begin Date After Bulk Add
    [Tags]    REGRESSION
    Verify Begin Date After Bulk Add

Validate End Date After Bulk Add
    [Tags]    REGRESSION
    Verify End Date After Bulk Add

Validate Rating Unit After Bulk Add
    [Tags]    REGRESSION
    Verify Rating Unit After Bulk Add       ${SMS BULK ADD RATING UNIT}

Validate Minutes/Quantity After Bulk Add
    [Tags]    REGRESSION
    Verify Minutes/Quantity After Bulk Add      ${SMS MINUTES/QUANTITY VALUE}

Validate Rate After Bulk Add
    [Tags]    REGRESSION
    Verify Rate After Bulk Add      ${SMS RATE VALUE}

Validate Select Received Charges Grid Multiple Rows Checkbox
    [Tags]    REGRESSION
    Verify Select Received Charges Grid Multiple Rows Checkbox

Validate Click Bulk Edit Button
    [Tags]    REGRESSION
    Verify Click Bulk Edit Button

Validate Set Tariff Type For Bulk Edit
    [Tags]    REGRESSION
    Verify Set Tariff Type      ${SMS TARIFF TYPE FOR BULK EDIT}

Validate Set Line Item Type For Bulk Edit
    [Tags]    REGRESSION
    Verify Set Line Item Type       ${SMS LINE ITEM TYPE FOR BULK EDIT}

Validate Set Service Group For Bulk Edit
    [Tags]    REGRESSION
    Verify Set Service Group        ${SMS SERVICE GROUP FOR BULK EDIT}

Validate Set Product For Bulk Edit
    [Tags]    REGRESSION
    Verify Set SMS Product      ${SMS PRODUCT NAME FOR BULK EDIT}

Validate Set Time Band For Bulk Edit
    [Tags]    REGRESSION
    Verify Set Time Band        ${SMS TIME BAND FOR BULK EDIT}

Validate Set Rating Unit For Bulk Edit
    [Tags]    REGRESSION
    Verify Set Rating Unit      ${SMS RATING UNIT FOR BULK EDIT}

Validate Click Bulk Edit Submit Button
    [Tags]    REGRESSION
    Verify Click Bulk Edit Submit Button

Validate Click Received Charges Save Changes Button After Bulk Edit
    [Tags]    REGRESSION
    Verify Click Received Charges Save Changes Button

Validate Select Received Charges Grid Multiple Rows Checkbox After Bulk Edit
    [Tags]    REGRESSION
    Verify Select Received Charges Grid Multiple Rows Checkbox

Validate Click Statement Details Grid Delete Button
    [Tags]    REGRESSION
    Verify Click Statement Details Grid Delete Button

Validate Close Statement Details Tab
    [Tags]    REGRESSION
    Verify Close Current Tab        ${INBOUND STATEMENTS TAB NAME}

Validate Select Created Inbound Statement Checkbox
    [Tags]    REGRESSION
    Verify Select Created Inbound Statement Checkbox

Validate Click Delete Button
    [Tags]    REGRESSION
    Verify Click Delete Button