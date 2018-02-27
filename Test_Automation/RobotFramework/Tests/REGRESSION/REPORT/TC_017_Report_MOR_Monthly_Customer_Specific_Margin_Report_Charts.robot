*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate MOR Monthly Customer Specific Margin Report Drilldown

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

Validate Select Charts Tab
    [Tags]    REGRESSION
    Verify Select Charts Tab

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

Validate Click Report Preview Button
    [Tags]    REGRESSION
    Verify Click Report Preview Button

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

Validate Close My Report Window
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Close IxReport Window
    [Tags]    REGRESSION
    Verify Close IxReport Window