*** Settings ***
Documentation     A Test Suite With Set Of Tests For Localization-Report Module Administrative Reports

Resource          ../../Resources/common_resource.robot
Resource          ../../Resources/Pages/Legacy/ixreport_page_resource.robot
Resource          ../../Resources/Localization/${LOCALE}/localization_settings.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Report Module
    [Tags]    LOCALIZATION
    Verify Switch To IXReport

Validate Expand Administrative Reports Section
    [Tags]    LOCALIZATION
    Verify Expand Reports Section       Administrative Reports

Validate Click Account List Sub Report Item
    [Tags]    LOCALIZATION
    Verify Click Sub Report Item        Account List

Validate Account List Selected Date Format
    [Tags]    LOCALIZATION
    Verify Selected Date Format     ${DATE FORMAT}

Validate Click Account List Submit Button
    [Tags]    LOCALIZATION
    Verify Click Submit Button

Validate Last Modified Column Date Format
    [Tags]    LOCALIZATION
    Verify Specific Column Date Format      ${TIME STAMP}       Last Modified

Validate Close Account List Window
    [Tags]    LOCALIZATION
    Verify Close IxReport Window

Validate Click Calendar Detail Report Sub Report Item
    [Tags]    LOCALIZATION
    Verify Click Sub Report Item        Calendar Detail Report

Validate Calendar Detail Report Effective Date Format
    [Tags]    LOCALIZATION
    Verify Effective Date Format    ${DATE FORMAT}

Validate Click Calendar Detail Report Submit Button
    [Tags]    LOCALIZATION
    Verify Click Submit Button

Validate Calendar Detail Report Last Modified Column Date Format
    [Tags]    LOCALIZATION
    Verify Specific Column Date Format      ${DATE FORMAT}       Last Modified

Validate Close Calendar Detail Report Window
    [Tags]    LOCALIZATION
    Verify Close IxReport Window

Validate Click Contract Workflow Report Sub Report Item
    [Tags]    LOCALIZATION
    Verify Click Sub Report Item        Contract Workflow Report

Validate Contract Workflow Report Begin Date Format
    [Tags]    LOCALIZATION
    Verify Begin Date Format    ${DATE FORMAT}

Validate Contract Workflow Report End Date Format
    [Tags]    LOCALIZATION
    Verify End Date Format      ${DATE FORMAT}

Validate Click Contract Workflow Report Submit Button
    [Tags]    LOCALIZATION
    Verify Click Submit Button

Validate Contract Workflow Report's Begin Date Format
    [Tags]    LOCALIZATION
    Verify Report's Begin Date Format       ${DATE FORMAT}

Validate Contract Workflow Report's End Date Format
    [Tags]    LOCALIZATION
    Verify Report's End Date Format         ${DATE FORMAT}

Validate Close Contract Workflow Report Window
    [Tags]    LOCALIZATION
    Verify Close IxReport Window

Validate Click Credit Limit Blocking Status Report Sub Report Item
    [Tags]    LOCALIZATION
    Verify Click Sub Report Item        Credit Limit Blocking Status Report

Validate Credit Limit Blocking Status Report Begin Date Format
    [Tags]    LOCALIZATION
    Verify Begin Date Format With Lower Case d      ${DATE FORMAT}

Validate Credit Limit Blocking Status Report End Date Format
    [Tags]    LOCALIZATION
    Verify End Date Format With Lower Case d        ${DATE FORMAT}

Validate Click Credit Limit Blocking Status Report Submit Button
    [Tags]    LOCALIZATION
    Verify Click Submit Button

Validate Credit Limit Blocking Status Report's Begin Date Format
    [Tags]    LOCALIZATION
    Verify Report's Begin Date Format       ${DATE FORMAT}

Validate Credit Limit Blocking Status Report's End Date Format
    [Tags]    LOCALIZATION
    Verify Report's End Date Format         ${DATE FORMAT}

Validate Close Credit Limit Blocking Status Report Window
    [Tags]    LOCALIZATION
    Verify Close IxReport Window

Validate Click Credit Limit Transaction Report Sub Report Item
    [Tags]    LOCALIZATION
    Verify Click Sub Report Item        Credit Limit Transaction Report

Validate Credit Limit Transaction Report From Date Format
    [Tags]    LOCALIZATION
    Verify From Date Format     ${DATE FORMAT}

Validate Credit Limit Transaction Report To Date Format
    [Tags]    LOCALIZATION
    Verify To Date Format       ${DATE FORMAT}

Validate Click Credit Limit Transaction Report Submit Button
    [Tags]    LOCALIZATION
    Verify Click Submit Button

Validate Credit Limit Transaction Report Transaction Amount Currency Format
    [Tags]    LOCALIZATION
    Verify Specific Column Currency Format      ${LOCALE FOR CURRENCY FORMAT}      Transaction Amount

Validate Credit Limit Transaction Report Invoiced Balance Currency Format
    [Tags]    LOCALIZATION
    Verify Specific Column Currency Format      ${LOCALE FOR CURRENCY FORMAT}      Invoiced Balance

Validate Close Credit Limit Transaction Report Window
    [Tags]    LOCALIZATION
    Verify Close IxReport Window

Validate Click Destination List Sub Report Item
    [Tags]    LOCALIZATION
    Verify Click Sub Report Item        Destination List

Validate Destination List Selected Date Format
    [Tags]    LOCALIZATION
    Verify Selected Date Format     ${DATE FORMAT}

Validate Click Destination List Submit Button
    [Tags]    LOCALIZATION
    Verify Click Submit Button

Validate Destination List Report's Effective Date Format
    [Tags]    LOCALIZATION
    Verify Report's Effective Date Format       ${DATE FORMAT}

Validate Close Destination List Window
    [Tags]    LOCALIZATION
    Verify Close IxReport Window

Validate Click Dialed Digits Upload Report Sub Report Item
    [Tags]    LOCALIZATION
    Verify Click Sub Report Item        Dialed Digits Upload Report

Validate Dialed Digits Upload Report Effective Date Format
    [Tags]    LOCALIZATION
    Verify Effective Date Format     ${DATE FORMAT}

Validate Click Dialed Digits Upload Report Submit Button
    [Tags]    LOCALIZATION
    Verify Click Submit Button

Validate Dialed Digits Upload Report's Effective Date Format
    [Tags]    LOCALIZATION
    Verify Report's Effective Date Format       ${DATE FORMAT}

Validate Close Dialed Digits Upload Report Window
    [Tags]    LOCALIZATION
    Verify Close IxReport Window

Validate Click Process List Report Sub Report Item
    [Tags]    LOCALIZATION
    Verify Click Sub Report Item        Process List Report

Validate Process List Report Begin Date Format
    [Tags]    LOCALIZATION
    Verify Begin Date Format    ${DATE FORMAT}

Validate Process List Report End Date Format
    [Tags]    LOCALIZATION
    Verify End Date Format      ${DATE FORMAT}

Validate Click Process List Report Submit Button
    [Tags]    LOCALIZATION
    Verify Click Submit Button

Validate Process List Report Begin Time Column Date Format
    [Tags]    LOCALIZATION
    Verify Specific Column Date Format      ${TIME STAMP}       Begin Time

Validate Process List Report End Time Column Date Format
    [Tags]    LOCALIZATION
    Verify Specific Column Date Format      ${TIME STAMP}       End Time

Validate Close Process List Report Window
    [Tags]    LOCALIZATION
    Verify Close IxReport Window

Validate Click Product List Sub Report Item
    [Tags]    LOCALIZATION
    Verify Click Sub Report Item        Product List

Validate Product List Begin Date Format
    [Tags]    LOCALIZATION
    Verify Begin Date Format    ${DATE FORMAT}

Validate Click Product List Submit Button
    [Tags]    LOCALIZATION
    Verify Click Submit Button

Validate Product List Begin Date Column Date Format
    [Tags]    LOCALIZATION
    Verify Specific Column Date Format      ${DATE FORMAT}       Begin Date

Validate Product List End Date Column Date Format
    [Tags]    LOCALIZATION
    Verify Specific Column Date Format      ${DATE FORMAT}       End Date

Validate Close Product List Window
    [Tags]    LOCALIZATION
    Verify Close IxReport Window

Validate Click Rate Plan List Sub Report Item
    [Tags]    LOCALIZATION
    Verify Click Sub Report Item        Rate Plan List

Validate Rate Plan List Selected Date Format
    [Tags]    LOCALIZATION
    Verify Selected Date Format    ${DATE FORMAT}

Validate Click Rate Plan List Submit Button
    [Tags]    LOCALIZATION
    Verify Click Submit Button

Validate Rate Plan List Begin Date Column Date Format
    [Tags]    LOCALIZATION
    Verify Specific Column Date Format      ${DATE FORMAT}       Begin Date

Validate Rate Plan List End Date Column Date Format
    [Tags]    LOCALIZATION
    Verify Specific Column Date Format      ${DATE FORMAT}       End Date

Validate Rate Plan List Last Modified Date Column Date Format
    [Tags]    LOCALIZATION
    Verify Specific Column Date Format      ${DATE FORMAT}       Last Modified Date

Validate Close Rate Plan List Window
    [Tags]    LOCALIZATION
    Verify Close IxReport Window

Validate Click Routing Product Calendar Mapping Report Sub Report Item
    [Tags]    LOCALIZATION
    Verify Click Sub Report Item        Routing Product Calendar Mapping Report

Validate Routing Product Calendar Mapping Report Effective Date Format
    [Tags]    LOCALIZATION
    Verify Effective Date Format    ${DATE FORMAT}

Validate Click Routing Product Calendar Mapping Report Submit Button
    [Tags]    LOCALIZATION
    Verify Click Submit Button

Validate Routing Product Calendar Mapping Report's Effective Date Format
    [Tags]    LOCALIZATION
    Verify Report's Effective Date Format       ${DATE FORMAT}

Validate Close Routing Product Calendar Mapping Report Window
    [Tags]    LOCALIZATION
    Verify Close IxReport Window

Validate Click System Utilization Report Report Sub Report Item
    [Tags]    LOCALIZATION
    Verify Click Sub Report Item        System Utilization Report

Validate System Utilization Report Begin Date Format
    [Tags]    LOCALIZATION
    Verify Begin Date Format With Lower Case d      ${DATE FORMAT}

Validate System Utilization Report End Date Format
    [Tags]    LOCALIZATION
    Verify End Date Format With Lower Case d        ${DATE FORMAT}

Validate Click System Utilization Report Submit Button
    [Tags]    LOCALIZATION
    Verify Click Submit Button

Validate Close System Utilization Report Window
    [Tags]    LOCALIZATION
    Verify Close IxReport Window

Validate Click Technical Trunk With History Report Sub Report Item
    [Tags]    LOCALIZATION
    Verify Click Sub Report Item        Technical Trunk With History Report

Validate Technical Trunk With History Report Begin Date Format
    [Tags]    LOCALIZATION
    Verify Begin Date Format    ${DATE FORMAT}

Validate Technical Trunk With History Report End Date Format
    [Tags]    LOCALIZATION
    Verify End Date Format      ${DATE FORMAT}

Validate Click Technical Trunk With History Report Submit Button
    [Tags]    LOCALIZATION
    Verify Click Submit Button

Validate Technical Trunk With History Report's Begin Date Format
    [Tags]    LOCALIZATION
    Verify Report's Begin Date Format       ${DATE FORMAT}

Validate Technical Trunk With History Report's End Date Format
    [Tags]    LOCALIZATION
    Verify Report's End Date Format         ${DATE FORMAT}

Validate Technical Trunk With History Report Effective Date Column Date Format
    [Tags]    LOCALIZATION
    Verify Specific Column Date Format      ${DATE FORMAT}       EffectiveDate

Validate Technical Trunk With History Report Modified Date Column Date Format
    [Tags]    LOCALIZATION
    Verify Specific Column Date Format      ${DATE FORMAT}       Modified Date

Validate Close Technical Trunk With History Report Window
    [Tags]    LOCALIZATION
    Verify Close IxReport Window

Validate Click Trunk API Report Sub Report Item
    [Tags]    LOCALIZATION
    Verify Click Sub Report Item        Trunk API Report

Validate From Processing Date Format
    [Tags]    LOCALIZATION
    Verify From Processing Date Format    ${DATE FORMAT}

Validate To Processing Date Format
    [Tags]    LOCALIZATION
    Verify To Processing Date Format      ${DATE FORMAT}

Validate Click Trunk API Report Submit Button
    [Tags]    LOCALIZATION
    Verify Click Submit Button

Validate Trunk API Report's From Processing Date Format
    [Tags]    LOCALIZATION
    Verify Report's From Processing Date Format     ${DATE FORMAT}

Validate Trunk API Report's To Processing Date Format
    [Tags]    LOCALIZATION
    Verify Report's To Processing Date Format       ${DATE FORMAT}

Validate Close Trunk API Report Window
    [Tags]    LOCALIZATION
    Verify Close IxReport Window

Validate Close IXReport Window
    [Tags]    LOCALIZATION
    Verify Close IxReport Window