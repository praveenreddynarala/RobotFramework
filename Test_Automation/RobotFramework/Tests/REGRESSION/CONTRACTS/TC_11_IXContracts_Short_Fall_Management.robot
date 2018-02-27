*** Settings ***
Documentation     A Test Suite With Set Of Tests To Verify Short Fall Management

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/ixconnect_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

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
    ${CARRIER NAME} =       Verify Get Created Carrier Name
    Verify Set Contract Account         ${CARRIER NAME}

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
    ${TRUNK NAME} =       Verify Get Trunk Name
    Verify Set Configure Number Plan Commercial Trunk       ${TRUNK NAME}

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
    ${RATING METHOD} =      Verify Get Rating Method
    Verify Set Rating And Tariff Details Rating Method          ${RATING METHOD}

Validate Set Rating And Tariff Details Outbound Rate Plan
    [Tags]    REGRESSION
    Verify Set Rating And Tariff Details Outbound Rate Plan     ${RT DETAILS OUTBOUND RATE PLAN}

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
    Verify Set Rate Plan Type       ${RATE PLAN TYPE}

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

Validate Set Group Commitment
    [Tags]    REGRESSION
    Verify Set Group Commitment

Validate Set Subgroup Commitment
    [Tags]    REGRESSION
    Verify Set Subgroup Commitment

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
    Verify Click Submit Button

Validate Set Value In Rate Grid Rate1 Column
    [Tags]    REGRESSION
    Verify Set Value In Rate Grid Column    ${RATE1 COLUMN NAME}

Validate Set Value In Rate Grid Rate2 Column
    [Tags]    REGRESSION
    Verify Set Value In Rate Grid Column    ${RATE2 COLUMN NAME}

Validate Set Value In Shortfall Rates Grid Column
    [Tags]    REGRESSION
    Verify Set Value In Shortfall Rates Grid Column     ${TARIFFTYPE COLUMN NAME}

Validate Click Rate Grid Save Button
    [Tags]    REGRESSION
    Verify Click Rate Grid Save Button

Validate Click Contract Complete Button
    [Tags]    REGRESSION
    Verify Click Contract Complete Button

Validate Close Contracts Page
    [Tags]    REGRESSION
    Verify Close IxConnect Window
