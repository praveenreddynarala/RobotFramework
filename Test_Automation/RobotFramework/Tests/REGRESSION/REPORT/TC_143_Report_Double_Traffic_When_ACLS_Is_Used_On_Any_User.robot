*** Settings ***
Documentation     [TAENOSIS-1008] A Test Suite With Set Of Tests To Verify Double Traffic When ACLS Is Used On Any User

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixreport_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/ixreport_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${EXTRACT NAME}     ${EMPTY}

*** Test Cases ***
Valdiate Navigate To System Admin Module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Valdiate Click on System Tab
    [Tags]    REGRESSION
    Click on System Tab

Valdiate Click Configuration Variables Button
    [Tags]    REGRESSION
    Verify Click Configuration Variables Button

Validate Set Variable Name For ixReportACLS
    [Tags]    REGRESSION
    Verify Set Variable Name    ixReportACLS

Validate Click Configuration Variables Grid Search Button For ixReportACLS
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Store Preset Config Variable Current Value For ixReportACLS
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column    OFF

Validate Close System Admin Window
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to Report Module
    [Tags]    REGRESSION
    Verify Switch To IXReport

Validate Select Extracts Submenu
    [Tags]    REGRESSION
    Verify Select Extracts Submenu

Validate Click Extract List New Button
    [Tags]    REGRESSION
    Verify Click Extract List New Button

Validate Click Extract - Suspect Rate Report Submenu
    [Tags]    REGRESSION
    Verify Click Specific Extract name From List        Extract - ${MONTHLY CUSTOMER SPECIFIC MARGIN REPORT SUBMENU}

Validate Set Begin Month
    [Tags]    REGRESSION
    Verify Set Extract Begin Month

Validate Set First Level Summarize By
    [Tags]    REGRESSION
    Verify Set Extract First Level Summarize By     In Account

Validate Set Second Level Summarize By
    [Tags]    REGRESSION
    Verify Set Extract Second Level Summarize By     Out Account

Validate Click Extract Save Button
    [Tags]    REGRESSION
    Verify Click Extract Save Button

Validate Set Extract Relative Period
    [Tags]    REGRESSION
    Verify Set Extract Relative Period      Last 12 months

Validate Set Extract Title
    [Tags]    REGRESSION
    Verify Set Extract Title        ${TEST DATA PREFIX}

Validate Get Created Extract Name
    [Tags]    REGRESSION
    ${EXTRACT NAME} =   Verify Get Created Extract Name
    set suite variable      ${EXTRACT NAME}

Validate Click My Report Save Button
    [Tags]    REGRESSION
    Verify Click My Report Save Button

Validate Set Report
    [Tags]    REGRESSION
    Verify Set Report       ${MONTHLY CUSTOMER SPECIFIC MARGIN REPORT SUBMENU}

Validate Click Extract Go Button
    [Tags]    REGRESSION
    Verify Click Extract Go Button

Validate Click Specific Add Button
    [Tags]    REGRESSION
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

Validate The Extract Generation Is Present
    [Tags]    REGRESSION
    Verify The Extract Generation Is Present        ${EXTRACT NAME}

Validate The Extract Delivery Is Present
    [Tags]    REGRESSION
    Verify The Extract Delivery Is Present        ${EXTRACT NAME}

Validate The Completed Extract Status Is Present
    [Tags]    REGRESSION
    Verify The Completed Extract Status Is Present

Validate The Completed Extract Delivery Status Is Present
    [Tags]    REGRESSION
    Verify The Completed Extract Delivery Status Is Present

Validate Close Report Window
    [Tags]    REGRESSION
    Verify Close IxReport Window    ${TRUE}

Valdiate Navigate To System Admin Module For ACLS On
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Valdiate Click on System Tab For ACLS On
    [Tags]    REGRESSION
    Click on System Tab

Valdiate Click Configuration Variables Button For ACLS On
    [Tags]    REGRESSION
    Verify Click Configuration Variables Button

Validate Set Variable Name For ACLS On
    [Tags]    REGRESSION
    Verify Set Variable Name    ixReportACLS

Validate Click Configuration Variables Grid Search Button For ACLS On
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Store Preset Config Variable Current Value For ACLS On
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column    ON

Validate Close System Admin Window For ACLS On
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to Report Module For ACLS On
    [Tags]    REGRESSION
    Verify Switch To IXReport

Validate Select Extracts Submenu For ACLS On
    [Tags]    REGRESSION
    Verify Select Extracts Submenu

Validate Click Extract List New Button For ACLS On
    [Tags]    REGRESSION
    Verify Click Extract List New Button

Validate Click Extract - Suspect Rate Report Submenu For ACLS On
    [Tags]    REGRESSION
    Verify Click Specific Extract name From List        Extract - ${MONTHLY CUSTOMER SPECIFIC MARGIN REPORT SUBMENU}

Validate Set Begin Month For ACLS On
    [Tags]    REGRESSION
    Verify Set Extract Begin Month

Validate Set First Level Summarize By For ACLS On
    [Tags]    REGRESSION
    Verify Set Extract First Level Summarize By     In Account

Validate Set Second Level Summarize ByFor ACLS On
    [Tags]    REGRESSION
    Verify Set Extract Second Level Summarize By     Out Account

Validate Click Extract Save Button For ACLS On
    [Tags]    REGRESSION
    Verify Click Extract Save Button

Validate Set Extract Relative Period For ACLS On
    [Tags]    REGRESSION
    Verify Set Extract Relative Period      Last 12 months

Validate Set Extract Title For ACLS On
    [Tags]    REGRESSION
    Verify Set Extract Title        ${TEST DATA PREFIX}

Validate Get Created Extract Name For ACLS On
    [Tags]    REGRESSION
    ${EXTRACT NAME} =   Verify Get Created Extract Name
    set suite variable      ${EXTRACT NAME}

Validate Click My Report Save Button For ACLS On
    [Tags]    REGRESSION
    Verify Click My Report Save Button

Validate Set Report For ACLS On
    [Tags]    REGRESSION
    Verify Set Report       ${MONTHLY CUSTOMER SPECIFIC MARGIN REPORT SUBMENU}

Validate Click Extract Go Button For ACLS On
    [Tags]    REGRESSION
    Verify Click Extract Go Button

Validate Click Specific Add Button For ACLS On
    [Tags]    REGRESSION
    Verify Click Specific Add Button        ${EXTRACT NAME}

Validate Click Extract Next Button For ACLS On
    [Tags]    REGRESSION
    Verify Click Extract Next Button

Validate Set Extract Schedule Name For ACLS On
    [Tags]    REGRESSION
    Verify Set Extract Schedule Name        ${TEST DATA PREFIX}

Validate Set Extract Active Time For ACLS On
    [Tags]    REGRESSION
    Verify Set Extract Active Time

Validate Set Extract Active Date For ACLS On
    [Tags]    REGRESSION
    Verify Set Extract Active Date      Last 12 months

Validate Click Extract Schedule Save Button For ACLS On
    [Tags]    REGRESSION
    Verify Click Extract Schedule Save Button

Validate The Extract Generation Is Present For ACLS On
    [Tags]    REGRESSION
    Verify The Extract Generation Is Present        ${EXTRACT NAME}

Validate The Extract Delivery Is Present For ACLS On
    [Tags]    REGRESSION
    Verify The Extract Delivery Is Present        ${EXTRACT NAME}

Validate The Completed Extract Status Is Present For ACLS On
    [Tags]    REGRESSION
    Verify The Completed Extract Status Is Present

Validate The Completed Extract Delivery Status Is Present For ACLS On
    [Tags]    REGRESSION
    Verify The Completed Extract Delivery Status Is Present

Validate Close Report Window
    [Tags]    REGRESSION
    Verify Close IxReport Window    ${TRUE}