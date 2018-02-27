*** Settings ***
Documentation     [TAENOSIS-783] A Test Suite With Set Of Tests For Verify Extract Traffic Usage Report

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixreport_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/ixreport_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${EXTRACT NAME}         ${EMPTY}
${EXTRACT PATH}         ${EMPTY}
${EXTRACT FILE NAME}    ${EMPTY}

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

Validate Set Variable Name To AllExtractDeliveryLinkPath
    [Tags]    REGRESSION
    Verify Set Variable Name    AllExtractDeliveryLinkPath

Validate Click Configuration Variables Grid Search Button
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Get Extract Delivery Link Path
    [Tags]    REGRESSION
    ${EXTRACT PATH} =   Verify Get Extract Delivery Link Path
    set suite variable      ${EXTRACT PATH}

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

Validate Click Destination Breakout with Traffic Extract name From List
    [Tags]    REGRESSION
    Verify Click Specific Extract name From List        Extract - ${TRAFFIC USAGE REPORT SUBMENU}

Validate Set Future Begin Date
    [Tags]    REGRESSION
    Verify Set Future Date as Extract Begin Date      32

Validate Click Submit Button To Validate Error
    [Tags]    REGRESSION
    Verify Click Extract Submit Button

Validate Begin Date Greater Than End Date Warning Message Is Shown
    [Tags]    REGRESSION
    Verify Begin Date Greater Than End Date Warning Message Is Shown

Validate Close Detail Report Window After Validating Error
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Set Begin Date
    [Tags]    REGRESSION
    Verify Set Extract Begin Date         1/1/2017

Validate Click Extract Submit Button
    [Tags]    REGRESSION
    Verify Click Extract Submit Button

Validate Click Report Preview Button
    [Tags]    REGRESSION
    Verify Click Report Preview Button

Validate Click Report Export To Excel Button
    [Tags]    REGRESSION
    Verify Click Report Export To Excel Button

Validate Click Report Export To CSV Button
    [Tags]    REGRESSION
    Verify Click Report Export To Csv Button

Validate Click Report Export To Pdf Button
    [Tags]    REGRESSION
    Verify Click Report Export To Pdf Button

Validate Close Detail Report Window
    [Tags]    REGRESSION
    Verify Close IxReport Window

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

Validate Set Report Group
    [Tags]    REGRESSION
    Verify Set Report Group     ${NETWORKS REPORTS MENU}

Validate Set Report
    [Tags]    REGRESSION
    Verify Set Report       ${TRAFFIC USAGE REPORT SUBMENU}

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

Validate Click Specific Download Button
    [Tags]    REGRESSION
    Verify Click Specific Download Button       ${EXTRACT NAME}

Validate Get Extract File Name
    [Tags]    REGRESSION
    ${EXTRACT FILE NAME} =      Verify Get Extract File Name
    set suite variable      ${EXTRACT FILE NAME}

Validate Extract File Exists In Network Path
    [Tags]    REGRESSION
    Verify Extract File Exists In Network Path      ${EXTRACT PATH}     ${EXTRACT FILE NAME}

Validate Delete Extract File From Network Path
    [Tags]    REGRESSION
    Verify Delete Extract File From Network Path    ${EXTRACT PATH}     ${EXTRACT FILE NAME}

Validate Click Specific Extract Name Button
    [Tags]    REGRESSION
    Verify Click Specific Extract Name Button        ${EXTRACT NAME}

Validate Click Extract Delete Button
    [Tags]    REGRESSION
    Verify Click Extract Delete Button

Validate Close Report Page Exit Button
    [Tags]    REGRESSION
    Verify Click Report Page Exit Button