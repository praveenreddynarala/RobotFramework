*** Settings ***
Documentation     A Test Suite With Set Of Tests To Verify Newly Added Columns In CSR

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/route_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${WHOLESALE SOLUTION TYPE}      ${EMPTY}

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

Validate Get Current Value Column Value
    [Tags]    REGRESSION
    ${WHOLESALE SOLUTION TYPE} =    Verify Get Current Value Column Value
    set suite variable      ${WHOLESALE SOLUTION TYPE}

Validate Set Value In Current Value Column
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        1

Validate Close System Admin Window
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to Route module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Route' From Main Menu

Validate Select Commercial Routing Tab
    [Tags]    REGRESSION
    Verify Select Commercial Routing Tab

Validate Click Customer Specific Routing Button
    [Tags]    REGRESSION
    Verify Click Customer Specific Routing Button

Validate CSRM Grid Current Price Column Is Present
    [Tags]    REGRESSION
    Verify CSRM Grid Column Is Present      Current Price

Validate CSRM Grid Future Price Column Is Present
    [Tags]    REGRESSION
    Verify CSRM Grid Column Is Present      Future Price

Validate CSRM Grid Cost Column Is Present
    [Tags]    REGRESSION
    Verify CSRM Grid Column Is Present      Cost

Validate CSRM Grid Margin Column Is Present
    [Tags]    REGRESSION
    Verify CSRM Grid Column Is Present      Margin

Validate CSRM Grid Margin % Column Is Present
    [Tags]    REGRESSION
    Verify CSRM Grid Column Is Present      Margin %

Validate CSRM Grid Route 1 Column Is Present
    [Tags]    REGRESSION
    Verify CSRM Grid Column Is Present      Route1

Validate CSRM Grid Route 2 Column Is Present
    [Tags]    REGRESSION
    Verify CSRM Grid Column Is Present      Route2

Validate CSRM Grid ASR Column Is Present
    [Tags]    REGRESSION
    Verify CSRM Grid Column Is Present      ASR

Validate CSRM Grid ALOC Column Is Present
    [Tags]    REGRESSION
    Verify CSRM Grid Column Is Present      ALOC

Validate CSRM Grid NER Column Is Present
    [Tags]    REGRESSION
    Verify CSRM Grid Column Is Present      NER

Validate CSRM Grid MOS Column Is Present
    [Tags]    REGRESSION
    Verify CSRM Grid Column Is Present      MOS

Validate CSRM Grid Created By Column Is Present
    [Tags]    REGRESSION
    Verify CSRM Grid Column Is Present      Created By

Validate Click CSRM Grid First Row Routing Product Link
    [Tags]    REGRESSION
    Verify Click CSRM Grid First Row Routing Product Link

Validate Route Guide Grid Current Price Column Is Present
    [Tags]    REGRESSION
    Verify Route Guide Grid Column Is Present      Current Price

Validate Route Guide Grid Future Price Column Is Present
    [Tags]    REGRESSION
    Verify Route Guide Grid Column Is Present      Future Price

Validate Route Guide Grid Cost Column Is Present
    [Tags]    REGRESSION
    Verify Route Guide Grid Column Is Present      Cost

Validate Route Guide Grid Margin Column Is Present
    [Tags]    REGRESSION
    Verify Route Guide Grid Column Is Present      Margin

Validate Route Guide Grid Margin % Column Is Present
    [Tags]    REGRESSION
    Verify Route Guide Grid Column Is Present      Margin %

Validate Route Guide Grid Route 1 Column Is Present
    [Tags]    REGRESSION
    Verify Route Guide Grid Column Is Present      Route1

Validate Route Guide Grid Route 2 Column Is Present
    [Tags]    REGRESSION
    Verify Route Guide Grid Column Is Present      Route2

Validate Route Guide Grid ASR Column Is Present
    [Tags]    REGRESSION
    Verify Route Guide Grid Column Is Present      ASR

Validate Route Guide Grid ALOC Column Is Present
    [Tags]    REGRESSION
    Verify Route Guide Grid Column Is Present      ALOC

Validate Route Guide Grid NER Column Is Present
    [Tags]    REGRESSION
    Verify Route Guide Grid Column Is Present      NER

Validate Route Guide Grid MOS Column Is Present
    [Tags]    REGRESSION
    Verify Route Guide Grid Column Is Present      MOS

Validate Route Guide Grid Created By Column Is Present
    [Tags]    REGRESSION
    Verify Route Guide Grid Column Is Present      Created By

Validate Close Route Window
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to System Admin module For SMS
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select System Tab For SMS
    [Tags]    REGRESSION
    Click on System Tab

Validate Click Configuration Variables Button For SMS
    [Tags]    REGRESSION
    Verify Click Configuration Variables Button

Validate Set Variable Name To Set iXToolsWholesaleSolutionType For SMS
    [Tags]    REGRESSION
    Verify Set Variable Name    iXToolsWholesaleSolutionType

Validate Click Configuration Variables Grid Search Button For SMS
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Set Value In Current Value Column For SMS
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        2

Validate Close System Admin Window After Setting iXToolsWholesaleSolutionType For SMS
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to Route module For SMS
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Route' From Main Menu

Validate Select Commercial Routing Tab For SMS
    [Tags]    REGRESSION
    Verify Select Commercial Routing Tab

Validate Click Customer Specific Routing Button For SMS
    [Tags]    REGRESSION
    Verify Click Customer Specific Routing Button

Validate CSRM Grid Current Price Column Is Present For SMS
    [Tags]    REGRESSION
    Verify CSRM Grid Column Is Present      Current Price

Validate CSRM Grid Future Price Column Is Present For SMS
    [Tags]    REGRESSION
    Verify CSRM Grid Column Is Present      Future Price

Validate CSRM Grid Blended Cost Column Is Present For SMS
    [Tags]    REGRESSION
    Verify CSRM Grid Column Is Present      Blended Cost

Validate CSRM Grid MPM Column Is Present For SMS
    [Tags]    REGRESSION
    Verify CSRM Grid Column Is Present      MPM

Validate CSRM Grid Margin % Column Is Present For SMS
    [Tags]    REGRESSION
    Verify CSRM Grid Column Is Present      Margin %

Validate CSRM Grid Route 1 Column Is Present For SMS
    [Tags]    REGRESSION
    Verify CSRM Grid Column Is Present      Route1

Validate CSRM Grid Route 2 Column Is Present For SMS
    [Tags]    REGRESSION
    Verify CSRM Grid Column Is Present      Route2

Validate CSRM Grid Successful Submitted Column Is Present For SMS
    [Tags]    REGRESSION
    Verify CSRM Grid Column Is Present      Successful Submitted

Validate CSRM Grid Successful Delivered Column Is Present For SMS
    [Tags]    REGRESSION
    Verify CSRM Grid Column Is Present      Successful Delivered

Validate CSRM Grid NER Column Is Present For SMS
    [Tags]    REGRESSION
    Verify CSRM Grid Column Is Present      NER

Validate CSRM Grid SAR Column Is Present For SMS
    [Tags]    REGRESSION
    Verify CSRM Grid Column Is Present      SAR

Validate CSRM Grid MST Column Is Present For SMS
    [Tags]    REGRESSION
    Verify CSRM Grid Column Is Present      MST

Validate CSRM Grid MDR Column Is Present For SMS
    [Tags]    REGRESSION
    Verify CSRM Grid Column Is Present      MDR

Validate CSRM Grid MDT Column Is Present For SMS
    [Tags]    REGRESSION
    Verify CSRM Grid Column Is Present      MDT

Validate CSRM Grid Created By Column Is Present For SMS
    [Tags]    REGRESSION
    Verify CSRM Grid Column Is Present      Created By

Validate Click CSRM Grid First Row Routing Product Link For SMS
    [Tags]    REGRESSION
    Verify Click CSRM Grid First Row Routing Product Link

Validate Route Guide Grid Future Rate Column Is Present For SMS
    [Tags]    REGRESSION
    Verify Route Guide Grid Column Is Present      Future Rate

Validate Route Guide Grid Future Rate Date Column Is Present For SMS
    [Tags]    REGRESSION
    Verify Route Guide Grid Column Is Present      Future Rate Date

Validate Route Guide Grid Successful Submitted Column Is Present For SMS
    [Tags]    REGRESSION
    Verify Route Guide Grid Column Is Present      Successful Submitted

Validate Route Guide Grid Successful Delivered Column Is Present For SMS
    [Tags]    REGRESSION
    Verify Route Guide Grid Column Is Present      Successful Delivered

Validate Route Guide Grid MST Column Is Present For SMS
    [Tags]    REGRESSION
    Verify Route Guide Grid Column Is Present      MST

Validate Route Guide Grid SAR Column Is Present For SMS
    [Tags]    REGRESSION
    Verify Route Guide Grid Column Is Present      SAR

Validate Route Guide Grid MDR Column Is Present For SMS
    [Tags]    REGRESSION
    Verify Route Guide Grid Column Is Present      MDR

Validate Route Guide Grid NER Column Is Present For SMS
    [Tags]    REGRESSION
    Verify Route Guide Grid Column Is Present      NER

Validate Route Guide Grid MDT Column Is Present For SMS
    [Tags]    REGRESSION
    Verify Route Guide Grid Column Is Present      MDT

Validate Route Guide Grid Created By Column Is Present For SMS
    [Tags]    REGRESSION
    Verify Route Guide Grid Column Is Present      Created By

Validate Close Route Window For SMS
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to System Admin module For Reset
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select System Tab For Reset
    [Tags]    REGRESSION
    Click on System Tab

Validate Click Configuration Variables Button For Reset
    [Tags]    REGRESSION
    Verify Click Configuration Variables Button

Validate Set Variable Name To Set iXToolsWholesaleSolutionType For Reset
    [Tags]    REGRESSION
    Verify Set Variable Name    iXToolsWholesaleSolutionType

Validate Click Configuration Variables Grid Search Button For Reset
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Set Value In Current Value Column For Reset
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        ${WHOLESALE SOLUTION TYPE}

Validate Close System Admin Window After Setting iXToolsWholesaleSolutionType For Reset
    [Tags]    REGRESSION
    Verify Close System Admin Window