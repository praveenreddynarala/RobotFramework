*** Settings ***
Documentation     [TAENOSIS-799] A Test Suite With Set Of Tests For Verify Traffic Quality Of Service Report Standard

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixreport_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/ixreport_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${MY REPORT NAME}           ${EMPTY}

*** Test Cases ***
Validate Navigate to Report Module
    [Tags]    REGRESSION
    Verify Switch To IXReport

Validate Expand Customer Profile Reports Section
    [Tags]    REGRESSION
    Verify Expand Reports Section       ${TRAFFIC REPORTS MENU}

Validate Click Sub Report Item
    [Tags]    REGRESSION
    Verify Click Sub Report Item        ${QUALITY OF SERVICE REPORT SUBMENU}

Validate Set Begin Date
    [Tags]    REGRESSION
    Verify Set Begin Date With Lower Case d         1/1/2015

Validate Click Submit Button
    [Tags]    REGRESSION
    Verify Click Submit Button With ID

Validate Click Report Preview Button
    [Tags]    REGRESSION
    Verify Click Report Preview Button

Validate Click Report Export To Excel Button
    [Tags]    REGRESSION
    Verify Click Report Export To Excel Button

Validate Click Report Export To Csv Button
    [Tags]    REGRESSION
    Verify Click Report Export To Csv Button

Validate Close Detail Report Window After Preview Done
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Click Save My Report Button
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
    Verify Expand Reports Section       ${TRAFFIC REPORTS MENU}

Validate Expand Sub Report Item
    [Tags]    REGRESSION
    Verify Expand Sub Report Item       ${QUALITY OF SERVICE REPORT SUBMENU}

Validate Click My Report Name
    [Tags]    REGRESSION
    ${MY REPORT NAME} =     Verify Get My Report Title
    set suite variable          ${MY REPORT NAME}
    Verify Click My Report Name     ${MY REPORT NAME}

Validate Click My Report Submit Button
    [Tags]    REGRESSION
    Verify Click My Report Submit Button

Validate Close My Report Window
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Click Specific Edit Icon
    [Tags]    REGRESSION
    Verify Click Specific Edit Icon         ${MY REPORT NAME}

Validate Click Myreport Edit Save Button
    [Tags]    REGRESSION
    Verify Click Myreport Edit Save Button

Validate Click My Report Save Button After Editing My Report
    [Tags]    REGRESSION
    Verify Click My Report Save Button

Validate Expand Reports Section For My Report To Delete Record
    [Tags]    REGRESSION
    Verify Expand Reports Section       ${TRAFFIC REPORTS MENU}

Validate Expand Sub Report Item To Delete Record
    [Tags]    REGRESSION
    Verify Expand Sub Report Item       ${QUALITY OF SERVICE REPORT SUBMENU}

Validate Click Specific Edit Icon To Delete Record
    [Tags]    REGRESSION
    Verify Click Specific Edit Icon         ${MY REPORT NAME}

Validate Click Myreport Delete Button
    [Tags]    REGRESSION
    Verify Click Myreport Delete Button

Validate Expand Reports Section To Verify Deleted Record
    [Tags]    REGRESSION
    Verify Expand Reports Section       ${TRAFFIC REPORTS MENU}

Validate The Specific Myreport Is Not Present
    [Tags]    REGRESSION
    Verify The Specific Myreport Is Not Present     ${MY REPORT NAME}

Validate Close Report Page Exit Button
    [Tags]    REGRESSION
    Verify Click Report Page Exit Button