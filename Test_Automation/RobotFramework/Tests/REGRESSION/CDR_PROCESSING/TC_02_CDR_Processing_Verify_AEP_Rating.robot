*** Settings ***
Documentation     A Test Suite With Set Of Tests To Verify AEP Rating

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixcontrol_page_resource.robot
Resource          ../../../Resources/Pages/report_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/ixconnect_page_test_data_source.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/ixcontrol_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CDR FILE NAME}        ${EMPTY}
${CONTRACT NAME}        ${EMPTY}

*** Test Cases ***
Validate Navigate to System Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select System Tab
    [Tags]    REGRESSION
    Click on System Tab

Validate Click Configuration Variables Button
    [Tags]    REGRESSION
    Verify Click Configuration Variables Button

Validate Set Variable Name
    [Tags]    REGRESSION
    Verify Set Variable Name    iXToolsWholesaleSolutionType

Validate Click Configuration Variables Grid Search Button
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Set Value In Current Value Column
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        3

Validate Close System Admin Window
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to Contracts module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate Click Create New Complex Contract Button
    [Tags]    REGRESSION
    Verify Click Create New Complex Contract Button

Validate Set Contract Account
    [Tags]    REGRESSION
    Verify Set Contract Account         ${CDR PROCESSING CARRIER NAME}

Validate Set Contract Direction
    [Tags]    REGRESSION
    Verify Set Contract Direction       ${OUTBOUND DIRECTION}

Validate Set Contract Name
    [Tags]    REGRESSION
    Verify Set Contract Name        ${TEST DATA PREFIX}

Validate Set Contract Begin Date
    [Tags]    REGRESSION
    Verify Set Contract Begin Date      ${EMPTY}

Validate Set Contract End Date
    [Tags]    REGRESSION
    Verify Set Contract End Date        ${EMPTY}

Validate Click Contract Details Save Button
    [Tags]    REGRESSION
    Verify Click Contract Details Save Button

Validate Select Configure Number Plan Tab
    [Tags]    REGRESSION
    Verify Select Configure Number Plan Tab

Validate Set Configure Number Plan Commercial Trunk
    [Tags]    REGRESSION
    Verify Set Configure Number Plan Commercial Trunk       ${CDR PROCESSING TRUNK NAME}

Validate Set Configure Number Plan Call Type
    [Tags]    REGRESSION
    Verify Set Configure Number Plan Call Type      ${ANALOG CALL TYPE}

Validate Click Configure Number Plan Create Plus Button
    [Tags]    REGRESSION
    Verify Click Configure Number Plan Create Plus Button

Validate Set Create A New Number Plan
    [Tags]    REGRESSION
    Verify Set Create A New Number Plan         ${NEW NUMBER PLAN}

Validate Set Number Plan To Copy From
    [Tags]    REGRESSION
    Verify Set Number Plan To Copy From         ${DESTINATION NUMBER PLAN}

Validate Move Available countries To Destination
    [Tags]    REGRESSION
    Verify Move Available Countries To Destination      ${CONFIGURE NUMBER PLAN COUNTRY}

Validate Click Configure Number Plan Go Button
    [Tags]    REGRESSION
    Verify Click Configure Number Plan Go Button

Validate Click Configure Number Plan Save Button
    [Tags]    REGRESSION
    Verify Click Configure Number Plan Save Button

Validate Select Rating And Tariff Details Tab
    [Tags]    REGRESSION
    Verify Select Rating And Tariff Details Tab

Validate Set Rating And Tariff Details Rating Method
    [Tags]    REGRESSION
    Verify Set Rating And Tariff Details Rating Method          ${CDR PROCESSING RATING METHOD}

Validate Set Rating And Tariff Details Outbound Rate Plan
    [Tags]    REGRESSION
    Verify Set Rating And Tariff Details Outbound Rate Plan     ${CDR PROCESSING RT DETAILS}

Validate Click Rating And Tariff Details Save Button
    [Tags]    REGRESSION
    Verify Click Rating And Tariff Details Save Button

Validate Click Complex Contract Wizard Next Button
    [Tags]    REGRESSION
    Verify Click Complex Contract Wizard Next Button

Validate Click Complex Contract Wizard Next Button To Go To Aggregation Group Screen
    [Tags]    REGRESSION
    Verify Click Complex Contract Wizard Next Button

Validate Set Aggregation Group Name
    [Tags]    REGRESSION
    Verify Set Aggregation Group Name       ${TEST DATA PREFIX}

Validate Set Aggregation Group Abbreviation
    [Tags]    REGRESSION
    Verify Set Aggregation Group Abbreviation       ${TEST DATA PREFIX}

Validate Set Aggregation Template
    [Tags]    REGRESSION
    Verify Set Aggregation Template     ${AGGREGATION TEMPLATE}

Validate Click Create Aggregation Group Save Button
    [Tags]    REGRESSION
    Verify Click Create Aggregation Group Save Button

Validate Click Complex Contract Wizard Next Button For Aggregation Group Screen
    [Tags]    REGRESSION
    Verify Click Complex Contract Wizard Next Button

Validate Click Complex Contract Wizard Next Button To Go To Aggregate Product Screen
    [Tags]    REGRESSION
    Verify Click Complex Contract Wizard Next Button

Validate Set Aggregate Product Name
    [Tags]    REGRESSION
    Verify Set Aggregate Product Name       ${TEST DATA PREFIX}

Validate Set Aggregate Product Abbreviation
    [Tags]    REGRESSION
    Verify Set Aggregate Product Abbreviation       ${TEST DATA PREFIX}

Validate Click Create Aggregate Product Save Button
    [Tags]    REGRESSION
    Verify Click Create Aggregation Group Save Button

Validate Click Complex Contract Wizard Next Button For Aggregate Product Screen
    [Tags]    REGRESSION
    Verify Click Complex Contract Wizard Next Button

Validate Click Complex Contract Wizard Next Button To Go To Aggregation Rules Screen
    [Tags]    REGRESSION
    Verify Click Complex Contract Wizard Next Button

Validate Set Traffic Direction
    [Tags]    REGRESSION
    ixconnect_page_resource.Verify Set Traffic Direction        ${OUTBOUND DIRECTION}

Validate Check Traffic Type
    [Tags]    REGRESSION
    Verify Check Traffic Type           @{TRAFFIC TYPE LIST}

Validate Check Rate Type
    [Tags]    REGRESSION
    Verify Check Rate Type              @{RATE TYPE LIST}

Validate Select Aggregation Rules Service Tab
    [Tags]    REGRESSION
    Verify Select Aggregation Rules Tab     ${SERVICE TAB NAME}

Validate Move Available Service To Destination
    [Tags]    REGRESSION
    Verify Move Available Service To Destination

Validate Select Aggregation Rules Countries Tab
    [Tags]    REGRESSION
    Verify Select Aggregation Rules Tab     ${COUNTRIES TAB NAME}

Validate Move Available Countries To Destination For Aggregation Rules
    [Tags]    REGRESSION
    Verify Move Available Countries To Destination Deselecting First Item      ${CONFIGURE NUMBER PLAN COUNTRY}

Validate Select Aggregation Rules Commercial Trunk Tab
    [Tags]    REGRESSION
    Verify Select Aggregation Rules Tab     ${COMMERCIAL TRUNK TAB NAME}

Validate Move Available Commercial Trunk To Destination
    [Tags]    REGRESSION
    Verify Move Available Commercial Trunk To Destination

Validate Select Aggregation Rules Confirm Aggregation Rules Tab
    [Tags]    REGRESSION
    Verify Select Aggregation Rules Tab     ${CONFIRM AGGREGATION RULES TAB NAME}

Validate Select Aggregation Rules Grid First Row Checkbox
    [Tags]    REGRESSION
    Verify Select Aggregation Rules Grid First Row Checkbox

Validate Click Create Aggregation Rules Save Button
    [Tags]    REGRESSION
    Verify Click Create Aggregation Group Save Button

Validate Click Complex Contract Wizard Next Button For Aggregation Rules Screen
    [Tags]    REGRESSION
    Verify Click Complex Contract Wizard Next Button

Validate Click Complex Contract Wizard Next Button To Go To Aggregate Rate Plan Screen
    [Tags]    REGRESSION
    Verify Click Complex Contract Wizard Next Button

Validate Set Aggregate Rate Plan Name
    [Tags]    REGRESSION
    Verify Set Aggregate Rate Plan Name         ${TEST DATA PREFIX}

Validate Set Aggregate Rate Plan Abbreviation
    [Tags]    REGRESSION
    Verify Set Aggregate Rate Plan Abbreviation     ${TEST DATA PREFIX}

Validate Set Currency
    [Tags]    REGRESSION
    ixconnect_page_resource.Verify Set Currency             ${USD CURRENCY}

Validate Set Tariff Type
    [Tags]    REGRESSION
    ixconnect_page_resource.Verify Set Tariff Type          ${TARIFF TYPE}

Validate Set Rate Plan Type
    [Tags]    REGRESSION
    Verify Set Rate Plan Type       ${CDR PROCESSING RATE PLAN TYPE}

Validate Click Aggregate Rate Plan Save Button
    [Tags]    REGRESSION
    Verify Click Aggregate Rate Plan Save Button

Validate Click Aggregate Scenario Save Button
    [Tags]    REGRESSION
    Verify Click Aggregate Scenario Save Button

Validate Click Complex Contract Wizard Next Button For Aggregate Rate Plan Screen
    [Tags]    REGRESSION
    Verify Click Complex Contract Wizard Next Button

Validate Click Complex Contract Wizard Next Button To Go To Rating Structure Screen
    [Tags]    REGRESSION
    Verify Click Complex Contract Wizard Next Button

Validate Click Rating Structure 3 Arrow
    [Tags]    REGRESSION
    Verify Click Rating Structure 3 Arrow

Validate Click Add New Tier Button
    [Tags]    REGRESSION
    Verify Click Add New Tier Button

Validate Set Value In Tier Grid From Column
    [Tags]    REGRESSION
    Verify Set Value In Tier Grid Column    ${FROM COLUMN NAME}     ${FROM COLUMN VALUE}

Validate Set Value In Tier Grid To Column
    [Tags]    REGRESSION
    Verify Set Value In Tier Grid Column    ${TO COLUMN NAME}     ${TO COLUMN VALUE}

Validate Click Add New Tier Button For Second Row
    [Tags]    REGRESSION
    Verify Click Add New Tier Button

Validate Click Submit Button
    [Tags]    REGRESSION
    ixconnect_page_resource.Verify Click Submit Button

Validate Set Value In Rate Grid Rate1 Column
    [Tags]    REGRESSION
    Verify Set Value In Rate Grid Column    ${RATE1 COLUMN NAME}

Validate Set Value In Rate Grid Rate2 Column
    [Tags]    REGRESSION
    Verify Set Value In Rate Grid Column    ${RATE2 COLUMN NAME}

Validate Click Rate Grid Save Button
    [Tags]    REGRESSION
    Verify Click Rate Grid Save Button

Validate Click Contract Complete Button
    [Tags]    REGRESSION
    Verify Click Contract Complete Button

Validate Click Complex Contract Dashboard Link
    [Tags]    REGRESSION
    Verify Click Complex Contract Dashboard Link

Validate Click Manage Complex Contracts Button
    [Tags]    REGRESSION
    Verify Click Manage Complex Contracts Button

Validate Get Created Contract Name
    [Tags]    REGRESSION
    ${CONTRACT NAME} =       Verify Get Created Contract Name
    log  ${CONTRACT NAME}
    set suite variable      ${CONTRACT NAME}

Validate Set Contract Name For Search
    [Tags]    REGRESSION
    Verify Set Contract Name For Search      ${CONTRACT NAME}

Validate Click Manage Complex Contracts Go Button
    [Tags]    REGRESSION
    Verify Click Manage Complex Contracts Go Button

Validate Click Contracts Grid First Row Contract Status Change Button For Draft
    [Tags]    REGRESSION
    Verify Click Contracts Grid First Row Contract Status Change Button

Validate Click Change Contract Status Radio Button For Submitted
    [Tags]    REGRESSION
    Verify Click Change Contract Status Radio Button    ${SUBMITTED STATUS}

Validate Click Change Contract Status Save Button For Submitted
    [Tags]    REGRESSION
    Verify Click Change Contract Status Save Button

Validate Set Complex Contract Submitted Status
    [Tags]    REGRESSION
    Verify Set Complex Contract Status      ${SUBMITTED STATUS}

Validate Click Complex Contract Management Go Button For Submitted
    [Tags]    REGRESSION
    Verify Click Manage Complex Contracts Go Button

Validate Click Contracts Grid First Row Contract Status Change Button For Submitted
    [Tags]    REGRESSION
    Verify Click Contracts Grid First Row Contract Status Change Button

Validate Click Change Contract Status Radio Button For Approved
    [Tags]    REGRESSION
    Verify Click Change Contract Status Radio Button    ${APPROVED STATUS}

Validate Click Change Contract Status Save Button For Approved
    [Tags]    REGRESSION
    Verify Click Change Contract Status Save Button

Validate Set Complex Contract Approved Status
    [Tags]    REGRESSION
    Verify Set Complex Contract Status      ${APPROVED STATUS}

Validate Click Complex Contract Management Go Button For Approved
    [Tags]    REGRESSION
    Verify Click Manage Complex Contracts Go Button

Validate Navigate to IXControl module
    [Tags]    REGRESSION
    Go To IXControl Screen With Specific Url

Validate Click Connect Submenu
    [Tags]    REGRESSION
    Verify Click Connect Submenu

Validate Set Registry Item
    [Tags]    REGRESSION
    Verify Set Registry Item            ${UNP ITEM NAME}

Validate Click Go Button
    [Tags]    REGRESSION
    ixcontrol_page_resource.Verify Click Go Button

Validate Click First Unp Job Link
    [Tags]    REGRESSION
    Verify Click First Unp Job Link

Validate Click Request Recalculate Unp Link
    [Tags]    REGRESSION
    Verify Click Request Recalculate Unp Link

Validate Click Execute Button
    [Tags]    REGRESSION
    Verify Click Execute Button

Validate Click Go Button After Execution
    [Tags]    REGRESSION
    ixcontrol_page_resource.Verify Click Go Button

Validate Click First Unp Job Process Button
    [Tags]    REGRESSION
    Verify Click First Unp Job Process Button

Validate Click First Unp Job Recalculate Button
    [Tags]    REGRESSION
    Verify Click First Unp Job Recalculate Button

Valivate Compare Unp Status
    [Tags]    REGRESSION
    Verify Compare Unp Status

Validate Close Current Control Window
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Close System Admin Window

Validate Login With Valid Credential After comparison
    [Tags]    REGRESSION
    Validate Login Functionality With Valid Credential

Validate Navigate to Contracts module After comparison
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate Navigate to IXReport module
    [Tags]    REGRESSION
    Go To IXReport Screen With Specific Url

Validate Click Administrative Reports Plus Button
    [Tags]    REGRESSION
    Verify Click Administrative Reports Plus Button

Valivate Click Unp Report Link
    [Tags]    REGRESSION
    Verify Click Unp Report Link

Validate Set Unified Number Plan
    [Tags]    REGRESSION
    Verify Set Unified Number Plan      ${CDR PROCESSING CARRIER NAME}     ${CDR PROCESSING TRUNK NAME}         Analog

Validate Set Unified Number Plan Type
    [Tags]    REGRESSION
    Verify Set Unified Number Plan Type     IsAccounting

Validate Click Unp Submit Button
    [Tags]    REGRESSION
    Verify Click Unp Submit Button

Validate Compound Number Plan On Report
    [Tags]    REGRESSION
    Verify Compound Number Plan On Report       ${CONTRACT NAME}

Validate Close Current Reoprt Window
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Close System Admin Window

Validate Navigate to IXControl module For CDR
    [Tags]    REGRESSION
    Go To IXControl Screen With Specific Url

Validate Click Objects And Processes Submenu
    [Tags]    REGRESSION
    Verify Click Objects And Processes Submenu

Validate Set Object Type
    [Tags]    REGRESSION
    Verify Set Object Type      ${CDR FILE OBJECT TYPE}

Validate Set Object
    [Tags]    REGRESSION
    Verify Set Object       ${OBJECT NAME}

Validate Click Go Button For CDR
    [Tags]    REGRESSION
    ixcontrol_page_resource.Verify Click Go Button

Validate Click Object Name
    [Tags]    REGRESSION
    Verify Click Object Name        ${OBJECT NAME}

Validate Copy CDR File
    [Tags]    REGRESSION
    ${CDR FILE NAME} =       Verify Get Cdr File Name
    ${DESTINATION PATH} =       Verify Get Cdr Destination Path
    set suite variable      ${CDR FILE NAME}
    Verify Copy File        ${TEMPLATE PATH}/${CDR FILE PATH}       ${DESTINATION PATH}

Validate Click CDR Files Submenu
    [Tags]    REGRESSION
    Verify Click CDR Files Submenu

Validate Set Current Status
    [Tags]    REGRESSION
    Verify Set Current Status       ${COMPLETED STATUS}

Validate Set Registry Item For CDR
    [Tags]    REGRESSION
    Verify Set Registry Item        ${OBJECT NAME}

Validate Click Go Button For Registry
    [Tags]    REGRESSION
    ixcontrol_page_resource.Verify Click Go Button

Validate Click Cdr File Name
    [Tags]    REGRESSION
    Verify Click Cdr File Name        ${CDR FILE NAME}

Validate CDR Load Is Completed
    [Tags]    REGRESSION
    Verify CDR Load Is Completed

Validate Click Performance Matrics Submenu
    [Tags]    REGRESSION
    Verify Click Performance Matrics Submenu

Validate Set Daily Data Mart Preparation Registry Item
    [Tags]    REGRESSION
    Verify Set Registry Item        ${DAILY DATA MART REG ITEM}

Validate Click Go Button For Daily Data Mart Preparation
    [Tags]    REGRESSION
    ixcontrol_page_resource.Verify Click Go Button

Validate Click First KPI Job
    [Tags]    REGRESSION
    Verify Click First Unp Job Link

Validate KPI Job Is Completed
    [Tags]    REGRESSION
    Verify Job Registry Status      ${KPI FLAGS JOB COMPLETED STATUS}

Validate Click Performance Matrics Submenu For ABER-Gen
    [Tags]    REGRESSION
    Verify Click Performance Matrics Submenu

Validate Set ABER-Gen Registry Item
    [Tags]    REGRESSION
    Verify Set Registry Item        ${ABER GEN REG ITEM}

Validate Click Go Button For ABER-Gen
    [Tags]    REGRESSION
    ixcontrol_page_resource.Verify Click Go Button

Validate Click First ABER-Gen Job
    [Tags]    REGRESSION
    Verify Click First Unp Job Link

Validate ABER-Gen Job Is Completed
    [Tags]    REGRESSION
    Verify Job Registry Status       ${ABER GEN JOB COMPLETE STATUS}

Validate Click CDR Files Submenu For Agg BER
    [Tags]    REGRESSION
    Verify Click CDR Files Submenu

Validate Set Agg BER Registry Item
    [Tags]    REGRESSION
    Verify Set Registry Item        ${AGG BER REG ITEM}

Validate Click Go Button For Agg BER
    [Tags]    REGRESSION
    ixcontrol_page_resource.Verify Click Go Button

Validate Click First Agg BER Job
    [Tags]    REGRESSION
    Verify Click First Unp Job Link

Validate Agg BER Job Is Completed
    [Tags]    REGRESSION
    Verify Job Registry Status      ${AGG BER JOB COMPLETE STATUS}
