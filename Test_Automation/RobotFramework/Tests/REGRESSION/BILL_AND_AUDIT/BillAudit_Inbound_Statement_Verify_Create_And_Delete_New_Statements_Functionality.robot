*** Settings ***
Documentation     A Test Suite With Set Of Tests For Inbound Statement To Verify Create And Delete New Statement Functionality

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

Validate Audit Account Input Field Is Mandatory
    [Tags]    REGRESSION
    Verify Input Field Is Mandatory    ${AUDIT ACCOUNT LABEL TEXT}

Validate Statement Number Input Field Is Mandatory
    [Tags]    REGRESSION
    Verify Input Field Is Mandatory    ${STATEMENT NUMBER LABEL TEXT}

Validate Statement Currency Input Field Is Mandatory
    [Tags]    REGRESSION
    Verify Input Field Is Mandatory    ${STATEMENT CURRENCY LABEL TEXT}

Validate Total Amount Input Field Is Mandatory
    [Tags]    REGRESSION
    Verify Input Field Is Mandatory    ${TOTAL AMOUNT LABEL TEXT}

Validate Statement Begin Date Input Field Is Mandatory
    [Tags]    REGRESSION
    Verify Input Field Is Mandatory    ${STATEMENT BEGIN DATE LABEL TEXT}

Validate Statement End Date Input Field Is Mandatory
    [Tags]    REGRESSION
    Verify Input Field Is Mandatory    ${STATEMENT END DATE LABEL TEXT}

Validate Issued Date Input Field Is Mandatory
    [Tags]    REGRESSION
    Verify Input Field Is Mandatory    ${ISSUED DATE LABEL TEXT}

Validate Received Date Input Field Is Mandatory
    [Tags]    REGRESSION
    Verify Input Field Is Mandatory    ${RECEIVED DATE LABEL TEXT}

Validate Due Date Input Field Is Mandatory
    [Tags]    REGRESSION
    Verify Input Field Is Mandatory    ${DUE DATE LABEL TEXT}

Validate Set Audit Account
    [Tags]    REGRESSION
    Verify Set Audit Account    ${AUDIT ACCOUNT FOR CREATE}

Validate Set Statement Number
    [Tags]    REGRESSION
    Verify Set Statement Number

Validate Set Statement Currency
    [Tags]    REGRESSION
    Verify Set Statement Currency    ${STATEMENT CURRENCY}

Validate Set Total Amount
    [Tags]    REGRESSION
    Verify Set Total Amount    ${STATEMENT TOTAL AMOUNT}

Validate Set Total Amount With Taxes
    [Tags]    REGRESSION
    Verify Set Total Amount With Taxes    ${STATEMENT TOTAL AMOUNT WITH TAXES}

Validate Set Statement Begin Date
    [Tags]    REGRESSION
    Verify Set Statement Begin Date    ${STATEMENT BEGIN DATE}

Validate Set Statement End Date
    [Tags]    REGRESSION
    Verify Set Statement End Date    ${STATEMENT END DATE}

Validate Set Statement Issued Date
    [Tags]    REGRESSION
    Verify Set Statement Issued Date    ${STATEMENT ISSUED DATE}

Validate Set Statement Received Date
    [Tags]    REGRESSION
    Verify Set Statement Received Date    ${STATEMENT RECEIVED DATE}

Validate Set Statement Due Date
    [Tags]    REGRESSION
    Verify Set Statement Due Date    ${STATEMENT DUE DATE}

Validate Set Base Currency
    [Tags]    REGRESSION
    Verify Set Base Currency    ${STATEMENT BASE CURRENCY}

Validate Click Statement Entry Cancel Button
    [Tags]    REGRESSION
    Verify Click Statement Entry Cancel Button

Validate Set Vat Code
    [Tags]    REGRESSION
    Verify Set Vat Code    ${STATEMENT VAT CODE}

Validate Set Vat Amount
    [Tags]    REGRESSION
    Verify Set Vat Amount    ${STATEMENT VAT AMOUNT}

Validate Set Exchange Rate
    [Tags]    REGRESSION
    Verify Set Exchange Rate    ${STATEMENT EXCHANGE RATE}

Validate Set Exchange Rate Date
    [Tags]    REGRESSION
    Verify Set Exchange Rate Date    ${STATEMENT EXCHANGE RATE DATE}

Validate Click Statement Entry Save Button
    [Tags]    REGRESSION
    Verify Click Statement Entry Save Button

Validate Set Audit Account For Search
    [Tags]    REGRESSION
    Verify Set Audit Account For Search    @{AUDIT ACCOUNT LIST FOR SEARCH}

Validate Set Statement Status For Search
    [Tags]    REGRESSION
    Verify Set Statement Status For Search    @{STATUS LIST FOR SEARCH}

Validate Set Begin Date For Search
    [Tags]    REGRESSION
    Verify Set Begin Date For Search

Validate Set End Date For Search
    [Tags]    REGRESSION
    Verify Set End Date For Search

Validate Click Inbound Statement Search Button
    [Tags]    REGRESSION
    Verify Click Inbound Statement Search Button

Validate Get Inbound Statement Grid Row Details
    [Tags]    REGRESSION
    Verify Get Inbound Statement Grid Row Details

Validate Audit Account After Create
    [Tags]    REGRESSION
    Verify Audit Account After Create    ${AUDIT ACCOUNT FOR CREATE}

Validate Statement Number After Create
    [Tags]    REGRESSION
    Verify Statement Number After Create

Validate Statement Begin Date After Create
    [Tags]    REGRESSION
    Verify Statement Begin Date After Create

Validate Statement End Date After Create
    [Tags]    REGRESSION
    Verify Statement End Date After Create

Validate Total Amount After Create
    [Tags]    REGRESSION
    Verify Total Amount After Create    ${STATEMENT TOTAL AMOUNT}

Validate Statement Due Date After Create
    [Tags]    REGRESSION
    Verify Statement Due Date After Create

Validate Select Created Inbound Statement Checkbox
    [Tags]    REGRESSION
    Verify Select Created Inbound Statement Checkbox

Validate Click Delete Button
    [Tags]    REGRESSION
    Verify Click Delete Button

Validate New Statement Is Deleted Successfully
    [Tags]    REGRESSION
    Verify New Statement Is Deleted Successfully
