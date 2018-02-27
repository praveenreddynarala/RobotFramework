*** Settings ***
Documentation     A Test Suite With Set Of Tests For Extract Destination Breakout With Traffic

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixreport_page_resource.robot

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
    Verify Click Specific Extract name From List        Destination Breakout with Traffic

Validate Set Extract Country
    [Tags]    REGRESSION
    Verify Set Extract Country      Afghanistan

Validate Click Extract Save Button
    [Tags]    REGRESSION
    Verify Click Extract Save Button

Validate Set Extract Relative Period
    [Tags]    REGRESSION
    Verify Set Extract Relative Period      Today

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
    Verify Set Extract Active Date      Today

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

Validate Click Extract List New Button For Yesterday
    [Tags]    REGRESSION
    Verify Click Extract List New Button

Validate Click Destination Breakout with Traffic Extract name From List For Yesterday
    [Tags]    REGRESSION
    Verify Click Specific Extract name From List        Destination Breakout with Traffic

Validate Set Extract Country For Yesterday
    [Tags]    REGRESSION
    Verify Set Extract Country      Afghanistan

Validate Click Extract Save Button For Yesterday
    [Tags]    REGRESSION
    Verify Click Extract Save Button

Validate Set Extract Relative Period For Yesterday
    [Tags]    REGRESSION
    Verify Set Extract Relative Period      Yesterday

Validate Set Extract Title For Yesterday
    [Tags]    REGRESSION
    Verify Set Extract Title        ${TEST DATA PREFIX}

Validate Get Created Extract Name For Yesterday
    [Tags]    REGRESSION
    ${EXTRACT NAME} =   Verify Get Created Extract Name
    set suite variable      ${EXTRACT NAME}

Validate Click My Report Save Button For Yesterday
    [Tags]    REGRESSION
    Verify Click My Report Save Button

Validate Click Specific Add Button For Yesterday
    [Tags]    REGRESSION
    Verify Click Specific Add Button        ${EXTRACT NAME}

Validate Click Extract Next Button For Yesterday
    [Tags]    REGRESSION
    Verify Click Extract Next Button

Validate Set Extract Schedule Name For Yesterday
    [Tags]    REGRESSION
    Verify Set Extract Schedule Name        ${TEST DATA PREFIX}

Validate Set Extract Active Time For Yesterday
    [Tags]    REGRESSION
    Verify Set Extract Active Time

Validate Set Extract Active Date For Yesterday
    [Tags]    REGRESSION
    Verify Set Extract Active Date      Yesterday

Validate Click Extract Schedule Save Button For Yesterday
    [Tags]    REGRESSION
    Verify Click Extract Schedule Save Button

Validate The Extract Generation Is Present For Yesterday
    [Tags]    REGRESSION
    Verify The Extract Generation Is Present        ${EXTRACT NAME}

Validate The Extract Delivery Is Present For Yesterday
    [Tags]    REGRESSION
    Verify The Extract Delivery Is Present        ${EXTRACT NAME}

Validate The Completed Extract Status Is Present For Yesterday
    [Tags]    REGRESSION
    Verify The Completed Extract Status Is Present

Validate The Completed Extract Delivery Status Is Present For Yesterday
    [Tags]    REGRESSION
    Verify The Completed Extract Delivery Status Is Present

Validate Click Extract List New Button For Day Before Yesterday
    [Tags]    REGRESSION
    Verify Click Extract List New Button

Validate Click Destination Breakout with Traffic Extract name From List For Day Before Yesterday
    [Tags]    REGRESSION
    Verify Click Specific Extract name From List        Destination Breakout with Traffic

Validate Set Extract Country For Day Before Yesterday
    [Tags]    REGRESSION
    Verify Set Extract Country      Afghanistan

Validate Click Extract Save Button For Day Before Yesterday
    [Tags]    REGRESSION
    Verify Click Extract Save Button

Validate Set Extract Relative Period For Day Before Yesterday
    [Tags]    REGRESSION
    Verify Set Extract Relative Period      Day before yesterday

Validate Set Extract Title For Day Before Yesterday
    [Tags]    REGRESSION
    Verify Set Extract Title        ${TEST DATA PREFIX}

Validate Get Created Extract Name For Day Before Yesterday
    [Tags]    REGRESSION
    ${EXTRACT NAME} =   Verify Get Created Extract Name
    set suite variable      ${EXTRACT NAME}

Validate Click My Report Save Button For Day Before Yesterday
    [Tags]    REGRESSION
    Verify Click My Report Save Button

Validate Click Specific Add Button For Day Before Yesterday
    [Tags]    REGRESSION
    Verify Click Specific Add Button        ${EXTRACT NAME}

Validate Click Extract Next Button For Day Before Yesterday
    [Tags]    REGRESSION
    Verify Click Extract Next Button

Validate Set Extract Schedule Name For Day Before Yesterday
    [Tags]    REGRESSION
    Verify Set Extract Schedule Name        ${TEST DATA PREFIX}

Validate Set Extract Active Time For Day Before Yesterday
    [Tags]    REGRESSION
    Verify Set Extract Active Time

Validate Set Extract Active Date For Day Before Yesterday
    [Tags]    REGRESSION
    Verify Set Extract Active Date      Day before yesterday

Validate Click Extract Schedule Save Button For Day Before Yesterday
    [Tags]    REGRESSION
    Verify Click Extract Schedule Save Button

Validate The Extract Generation Is Present For Day Before Yesterday
    [Tags]    REGRESSION
    Verify The Extract Generation Is Present        ${EXTRACT NAME}

Validate The Extract Delivery Is Present For Day Before Yesterday
    [Tags]    REGRESSION
    Verify The Extract Delivery Is Present        ${EXTRACT NAME}

Validate The Completed Extract Status Is Present For Day Before Yesterday
    [Tags]    REGRESSION
    Verify The Completed Extract Status Is Present

Validate The Completed Extract Delivery Status Is Present For Day Before Yesterday
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