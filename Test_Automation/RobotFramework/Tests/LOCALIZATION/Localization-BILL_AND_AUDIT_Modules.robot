*** Settings ***
Documentation     A Test Suite With Set Of Tests For Localization-Bill_And_Audit Modules

Resource          ../../Resources/common_resource.robot
Resource          ../../Resources/Pages/bill_and_audit_page_resource.robot
Resource          ../../Resources/Localization/${LOCALE}/localization_settings.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Bill And Audit module
    [Tags]    REGRESSION
    click on home icon and select 'bill and audit' from main menu

Validate Select Outbound Statements Tab
    [Tags]    LOCALIZATION
    Verify Select Outbound Statements Tab

Validate Outbound Statements Begin Date Format
    [Tags]    LOCALIZATION
    Verify Outbound Statements Begin Date Format     ${DATE FORMAT}

Validate Outbound Statements End Date Format
    [Tags]    LOCALIZATION
    Verify Outbound Statements End Date Format     ${DATE FORMAT}

Validate Outbound Statements Grid Begin Date Format
    [Tags]    LOCALIZATION
    Verify Outbound Statements Grid Begin Date Format     ${DATE FORMAT}

Validate Outbound Statements Grid End Date Format
    [Tags]    LOCALIZATION
    Verify Outbound Statements Grid End Date Format     ${DATE FORMAT}

Validate Outbound Statements Grid Total Volume Currency Format
    [Tags]    LOCALIZATION
    Verify Outbound Statements Grid Total Volume Currency Format     ${LOCALE FOR CURRENCY FORMAT}

Validate Outbound Statements Grid Amount Idr Currency Format
    [Tags]    LOCALIZATION
    Verify Outbound Statements Grid Amount Idr Currency Format    ${LOCALE FOR CURRENCY FORMAT}

Validate Outbound Statements Grid Amount Bulling Currency Format
    [Tags]    LOCALIZATION
    Verify Outbound Statements Grid Amount Bulling Currency Format    ${LOCALE FOR CURRENCY FORMAT}

Validate Click Outbound Statements Grid First Row Inline Action Button
    [Tags]    LOCALIZATION
    Verify Click Outbound Statements Grid First Row Inline Action Button

Validate Select Outbound Statements Details Inline Action Item
    [Tags]    LOCALIZATION
    Verify Select Inline Action Item        Statement Details

Validate Outbound Statement Summary Begin Date Format
    [Tags]    LOCAIZATION
    Verify Outbound Statement Summary Begin Date Format     ${DATE FORMAT}

Validate Outbound Statement Summary End Date Format
    [Tags]    LOCAIZATION
    Verify Outbound Statement Summary End Date Format      ${DATE FORMAT}

Validate Outbound Statement Summary Last Modified Date Format
    [Tags]    LOCAIZATION
    Verify Outbound Statement Summary Last Modified Date Format      ${DATE FORMAT}

Validate Close Outbound Statement Tab
    [Tags]  LOCALIZATION
    Verify Close Current Tab     Outbound Statement

Validate Select Inbound Statements Tab
    [Tags]    LOCALIZATION
    Verify Select Inbound Statement Tab

Validate Inbound Statements Begin Date Format
    [Tags]    LOCAIZATION
    Verify Inbound Statements Begin Date Format      ${DATE FORMAT}

Validate Inbound Statements End Date Format
    [Tags]    LOCAIZATION
    Verify Inbound Statements End Date Format     ${DATE FORMAT}

Validate Inbound Statements Grid Won Amount Currency Format
    [Tags]    LOCAIZATION
    Verify Inbound Statements Grid Won Amount Currency Format      ${LOCALE FOR CURRENCY FORMAT}

Validate Inbound Statements Grid Lost Amount Currency Format
    [Tags]    LOCALIZATION
    Verify Inbound Statements Grid Lost Amount Currency Format       ${LOCALE FOR CURRENCY FORMAT}

Validate Inbound Statements Grid Pending Amount Currency Format
    [Tags]    LOCALIZATION
    Verify Inbound Statements Grid Pending Amount Currency Format       ${LOCALE FOR CURRENCY FORMAT}

Validate Inbound Statements Grid Begin Date Format
    [Tags]    LOCAIZATION
    Verify Inbound Statements Grid Begin Date Format      ${DATE FORMAT}

Validate Inbound Statements Grid End Date Format
    [Tags]    LOCAIZATION
    Verify Inbound Statements Grid End Date Format      ${DATE FORMAT}

Validate Inbound Statements Grid Total Calls Received Currency Format
    [Tags]    LOCALIZATION
    Verify Inbound Statements Grid Total Calls Received Currency Format      ${LOCALE FOR CURRENCY FORMAT}

Validate Inbound Statements Grid Total Volume Received Currency Format
    [Tags]    LOCALIZATION
    Verify Inbound Statements Grid Total Volume Received Currency Format      ${LOCALE FOR CURRENCY FORMAT}

Validate Inbound Statements Grid Total Calls Internal Currency Format
    [Tags]    LOCALIZATION
    Verify Inbound Statements Grid Total Calls Internal Currency Format      ${LOCALE FOR CURRENCY FORMAT}

Validate Inbound Statements Grid Total Volume Internal Currency Format
    [Tags]    LOCALIZATION
    Verify Inbound Statements Grid Total Volume Internal Currency Format      ${LOCALE FOR CURRENCY FORMAT}

Validate Inbound Statements Grid Amount Currency Format
    [Tags]    LOCALIZATION
    Verify Inbound Statements Grid Amount Currency Format     ${LOCALE FOR CURRENCY FORMAT}

Validate Inbound Statements Grid Total Amount Internal Currency Format
    [Tags]    LOCALIZATION
    Verify Inbound Statements Grid Total Amount Internal Currency Format     ${LOCALE FOR CURRENCY FORMAT}

Validate Inbound Statements Grid Discrepancy Currency Format
    [Tags]    LOCALIZATION
    Verify Inbound Statements Grid Discrepancy Currency Format     ${LOCALE FOR CURRENCY FORMAT}

Validate Inbound Statements Grid Raised Dispute Amount Currency Format
    [Tags]    LOCALIZATION
    Verify Inbound Statements Grid Raised Dispute Amount Currency Format     ${LOCALE FOR CURRENCY FORMAT}

Validate Inbound Statements Grid Dispute By Date Format
    [Tags]    LOCAIZATION
    Verify Inbound Statements Grid Dispute By Date Format      ${DATE FORMAT}

Validate Inbound Statements Grid Final Payment Due Date Format
    [Tags]    LOCAIZATION
    Verify Inbound Statements Grid Final Payment Due Date Format      ${DATE FORMAT}

Validate Click Inbound Statements Grid First Row Inline Action Button
    [Tags]    LOCALIZATION
    Verify Click Inbound Statement Grid First Row Inline Action Button

Validate Select Inbound Statement Details Inline Action Item
    [Tags]    LOCALIZATION
    Verify Select Inline Action Item        Statement Details

Validate Inbound Statement Details Begin Date Format
    [Tags]    LOCAIZATION
    Verify Inbound Statement Details Begin Date Format      ${DATE FORMAT}

Validate Inbound Statement Details End Date Format
    [Tags]    LOCAIZATION
    Verify Inbound Statement Details End Date Format     ${DATE FORMAT}

Validate Inbound Statement Details Final Payment Due Date Format
    [Tags]    LOCAIZATION
    Verify Inbound Statement Details Final Payment Due Date Format     ${DATE FORMAT}

Validate Inbound Statement Details Vat Amount Currency Format
    [Tags]    LOCALIZATION
    Verify Inbound Statement Details Vat Amount Currency Format     ${LOCALE FOR CURRENCY FORMAT}

Validate Inbound Statement Details Total Amount Currency Format
    [Tags]    LOCALIZATION
    Verify Inbound Statement Details Total Amount Currency Format     ${LOCALE FOR CURRENCY FORMAT}

Validate Inbound Statement Details Total Amount With Taxes Currency Format
    [Tags]    LOCALIZATION
    Verify Inbound Statement Details Total Amount With Taxes Currency Format     ${LOCALE FOR CURRENCY FORMAT}

Validate Inbound Statement Details Summarization Discrepancy Currency Format
    [Tags]    LOCALIZATION
    Verify Inbound Statement Details Summarization Discrepancy Currency Format     ${LOCALE FOR CURRENCY FORMAT}

Validate Inbound Statement Details Issued Date Format
    [Tags]    LOCALIZATION
    Verify Inbound Statement Details Issued Date Format     ${DATE FORMAT}

Validate Inbound Statement Details Statement Received Date Format
    [Tags]    LOCALIZATION
    Verify Inbound Statement Details Statement Received Date Format     ${DATE FORMAT}

Validate Inbound Statement Details Received Due Date Format
    [Tags]    LOCALIZATION
    Verify Inbound Statement Details Received Due Date Format     ${DATE FORMAT}

Validate Inbound Statement Details Payment Terms Due Date Format
    [Tags]    LOCALIZATION
    Verify Inbound Statement Details Payment Terms Due Date Format     ${DATE FORMAT}

Validate Inbound Statement Details Exchange Rate Currency Format
    [Tags]    LOCALIZATION
    Verify Inbound Statement Details Exchange Rate Currency Format     ${LOCALE FOR CURRENCY FORMAT}

Validate Inbound Statement Details Created Date Format
    [Tags]    LOCALIZATION
    Verify Inbound Statement Details Created Date Format     ${DATE FORMAT}

Validate Inbound Statement Details Last Modified Date Format
    [Tags]    LOCALIZATION
    Verify Inbound Statement Details Last Modified Date Format     ${DATE FORMAT}

Validate Close Inbound Statement Tab
    [Tags]  LOCALIZATION
    Verify Close Current Tab     Inbound Statement