*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate MOR Monthly Customer Specific Margin Report Tabular

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixreport_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/ixreport_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Report Module
    [Tags]    REGRESSION
    Verify Switch To IXReport

Validate Expand Reports Section
    [Tags]    REGRESSION
    Verify Expand Reports Section       ${MONTHLY OPERATIONAL REPORTS MENU}

Validate Click Sub Report Item
    [Tags]    REGRESSION
    Verify Click Sub Report Item        ${MONTHLY CUSTOMER SPECIFIC MARGIN REPORT SUBMENU}

Validate Select Tabular Tab
    [Tags]    REGRESSION
    Verify Select Tabular Tab

Validate Set Begin Month
    [Tags]    REGRESSION
    Verify Set Begin Month

Validate Set First Level Summarize By
    [Tags]    REGRESSION
    Verify Set First Level Summarize By         ${CALL MONTH SUMMARIZE BY}

Validate Set Second Level Summarize By
    [Tags]    REGRESSION
    Verify Set Second Level Summarize By        ${DESTINATION CATEGORY SUMMARIZE BY}

Validate Set Third Level Summarize By
    [Tags]    REGRESSION
    Verify Set Third Level Summarize By         ${IN ACCOUNT SUMMARIZE BY}

Validate Set Fourth Level Summarize By
    [Tags]    REGRESSION
    Verify Set Fourth Level Summarize By        ${OUT ACCOUNT SUMMARIZE BY}

Validate Set Fifth Level Summarize By
    [Tags]    REGRESSION
    Verify Set Fifth Level Summarize By         ${REFERENCE DESTINATION SUMMARIZE BY}

Validate Click Submit Button With ID
    [Tags]    REGRESSION
    Verify Click Submit Button With ID

Validate PPM Is Calculated Correctly
    [Tags]    REGRESSION
    Verify PPM Is Calculated Correctly

Validate Click Report Preview Button
    [Tags]    REGRESSION
    Verify Click Report Preview Button

Validate Click Report Export To Excel Button
    [Tags]    REGRESSION
    Verify Click Report Export To Excel Button

Validate Click Report Export To CSV Button
    [Tags]    REGRESSION
    Verify Click Report Export To CSV Button

Validate Click Report Export To Pdf Button
    [Tags]    REGRESSION
    Verify Click Report Export To Pdf Button

Validate Close Report Window
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Click New Save My Report Button
    [Tags]    REGRESSION
    Verify Click New Save My Report Button

Validate Set My Report Title
    [Tags]    REGRESSION
    Verify Set My Report Title      ${TEST DATA PREFIX}

Validate Click My Report Save Button
    [Tags]    REGRESSION
    Verify Click My Report Save Button

Validate Expand Reports Section For My Report
    [Tags]    REGRESSION
    Verify Expand Reports Section       ${MONTHLY OPERATIONAL REPORTS MENU}

Validate Expand Sub Report Item
    [Tags]    REGRESSION
    Verify Expand Sub Report Item       ${MONTHLY CUSTOMER SPECIFIC MARGIN REPORT SUBMENU}

Validate Click My Report Name
    [Tags]    REGRESSION
    ${MY REPORT NAME} =     Verify Get My Report Title
    Verify Click My Report Name     ${MY REPORT NAME}

Validate Click My Report Submit Button
    [Tags]    REGRESSION
    Verify Click My Report Submit Button

Validate PPM Is Calculated Correctly For My Report
    [Tags]    REGRESSION
    Verify PPM Is Calculated Correctly

Validate Close My Report Window
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Click On Demand Extract Button
    [Tags]    REGRESSION
    Verify Click On Demand Extract Button

Validate Set My Report Title For On Demand Extract
    [Tags]    REGRESSION
    Verify Set My Report Title      ${TEST DATA PREFIX}

Validate Click My Report Save Button For On Demand Extract
    [Tags]    REGRESSION
    Verify Click My Report Save Button

Validate Select Extracts Submenu
    [Tags]    REGRESSION
    Verify Select Extracts Submenu

Validate Set Report Group
    [Tags]    REGRESSION
    Verify Set Report Group     ${MONTHLY OPERATIONAL REPORTS MENU}

Validate Set Report
    [Tags]    REGRESSION
    Verify Set Report           ${MONTHLY CUSTOMER SPECIFIC MARGIN REPORT SUBMENU}

Validate Click Extract Go Button
    [Tags]    REGRESSION
    Verify Click Extract Go Button

Validate Click Specific Add Button
    [Tags]    REGRESSION
    ${EXTRACT NAME} =       Verify Get My Report Title
    Verify Click Specific Add Button        ${EXTRACT NAME}

Validate Click Extract Next Button
    [Tags]    REGRESSION
    Verify Click Extract Next Button

Validate Set Extract Schedule Name
    [Tags]    REGRESSION
    Verify Set Extract Schedule Name        ${TEST DATA PREFIX}

Validate Set Extract Active Time
    [Tags]    REGRESSION
    Verify Set Extract Active Time

Validate Set Extract Active Date
    [Tags]    REGRESSION
    Verify Set Extract Active Date      Last 12 months

Validate Click Extract Schedule Save Button
    [Tags]    REGRESSION
    Verify Click Extract Schedule Save Button

Validate Close Report Page Exit Button
    [Tags]    REGRESSION
    Verify Click Report Page Exit Button
