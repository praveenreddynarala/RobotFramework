*** Settings ***
Documentation     A Test Suite With Set Of Tests To Verify Traffic Fault Code Report Does Not Appear In IXAdmin UI

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixreport_page_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixadmin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/ixreport_page_test_data_source.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/ixadmin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Contract Module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate Navigate to IXAdmin module
    [Tags]    REGRESSION
    Go To IXAdmin Screen With Specific Url

Validate Click Profile Submenu
    [Tags]    REGRESSION
    Verify Click Profile Submenu

Validate Click List Frame Go Button
    [Tags]    REGRESSION
    Verify Click List Frame Go Button

Validate Select Profile Item
    [Tags]    REGRESSION
    Verify Select Profile Item      ${DEVELOPERS ONLY PROFILE ITEM}

Validate Select Roles Tab
    [Tags]    REGRESSION
    Verify Select Roles Tab

Validate Set Application
    [Tags]    REGRESSION
    Verify Set Application      ${IXREPORT APPLICATION NAME}

Validate Click Go Button
    [Tags]    REGRESSION
    ixadmin_page_resource.Verify Click Go Button

Validate Role Is Present
    [Tags]    REGRESSION
    Verify Role Is Present      ${TRAFFIC FAULT CODE REPORT ROLE NAME}

Validate Close IXAdmin Window
    [Tags]    REGRESSION
    Verify Close IXAdmin Window

Validate Navigate to Report Module
    [Tags]    REGRESSION
    Verify Switch To IXReport

Validate Expand Reports Section
    [Tags]    REGRESSION
    Verify Expand Reports Section       ${TRAFFIC REPORTS MENU}

Validate Sub Report Item Is Present
    [Tags]    REGRESSION
    Verify Sub Report Item Is Present   ${TRAFFIC FAULT CODE REPORT SUBMENU}

Validate Close IXReport Window
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Navigate to Contract Module For Deleting
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate Navigate to IXAdmin module For Deleting
    [Tags]    REGRESSION
    Go To IXAdmin Screen With Specific Url

Validate Click Profile Submenu For Deleting
    [Tags]    REGRESSION
    Verify Click Profile Submenu

Validate Click List Frame Go Button For Deleting
    [Tags]    REGRESSION
    Verify Click List Frame Go Button

Validate Select Profile Item For Deleting
    [Tags]    REGRESSION
    Verify Select Profile Item      ${DEVELOPERS ONLY PROFILE ITEM}

Validate Select Roles Tab For Deleting
    [Tags]    REGRESSION
    Verify Select Roles Tab

Validate Set Application For Deleting
    [Tags]    REGRESSION
    Verify Set Application      ${IXREPORT APPLICATION NAME}

Validate Click Go Button For Deleting
    [Tags]    REGRESSION
    ixadmin_page_resource.Verify Click Go Button

Validate Role Is Present For Deleting
    [Tags]    REGRESSION
    Verify Role Is Present      ${TRAFFIC FAULT CODE REPORT ROLE NAME}

Validate Select Role Delete Checkbox
    [Tags]    REGRESSION
    Verify Select Role Delete Checkbox      ${TRAFFIC FAULT CODE REPORT ROLE NAME}

Validate Click Delete Button
    [Tags]    REGRESSION
    Verify Click Delete Button

Validate Close IXAdmin Window For Deleting
    [Tags]    REGRESSION
    Verify Close IXAdmin Window

Validate Navigate to Report Module After Deleting
    [Tags]    REGRESSION
    Verify Switch To IXReport

Validate Expand Reports Section After Deleting
    [Tags]    REGRESSION
    Verify Expand Reports Section       ${TRAFFIC REPORTS MENU}

Validate Sub Report Item Is Present After Deleting
    [Tags]    REGRESSION
    Verify Sub Report Item Is Not Present   ${TRAFFIC FAULT CODE REPORT SUBMENU}

Validate Close IXReport Window After Deleting
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Navigate to Contract Module For Adding
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate Navigate to IXAdmin module For Adding
    [Tags]    REGRESSION
    Go To IXAdmin Screen With Specific Url

Validate Click Profile Submenu For Adding
    [Tags]    REGRESSION
    Verify Click Profile Submenu

Validate Click List Frame Go Button For Adding
    [Tags]    REGRESSION
    Verify Click List Frame Go Button

Validate Select Profile Item For Adding
    [Tags]    REGRESSION
    Verify Select Profile Item      ${DEVELOPERS ONLY PROFILE ITEM}

Validate Select Roles Tab For Adding
    [Tags]    REGRESSION
    Verify Select Roles Tab

Validate Set Application For Adding
    [Tags]    REGRESSION
    Verify Set Application      ${IXREPORT APPLICATION NAME}

Validate Click Go Button For Adding
    [Tags]    REGRESSION
    ixadmin_page_resource.Verify Click Go Button

Validate Click Add New Roles Button
    [Tags]    REGRESSION
    Verify Click Add New Roles Button

Validate Select Role Add Checkbox
    [Tags]    REGRESSION
    Verify Select Role Add Checkbox      ${TRAFFIC FAULT CODE REPORT ROLE NAME}

Validate Click Add Role Save Button
    [Tags]    REGRESSION
    Verify Click Add Role Save Button

Validate Role Is Present After Adding
    [Tags]    REGRESSION
    Verify Role Is Present      ${TRAFFIC FAULT CODE REPORT ROLE NAME}

Validate Close IXAdmin Window After Adding
    [Tags]    REGRESSION
    Verify Close IXAdmin Window