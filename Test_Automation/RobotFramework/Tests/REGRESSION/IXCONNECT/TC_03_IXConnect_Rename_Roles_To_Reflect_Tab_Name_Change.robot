*** Settings ***
Documentation    [TAENOSIS-1017] A Test Suite With Set Of Tests To Verify Rename Roles to reflect tab name change

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to IXConnect Module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate Verify Select Carrier Submenu
    [Tags]    REGRESSION
    ixconnect_page_resource.Verify Select Carrier Submenu

Validate Switch To List Frame
    [Tags]    REGRESSION
    ixconnect_page_resource.Verify Switch To List Frame

Validate Verify Set Letters For Created Carrier Search
    [Tags]    REGRESSION
    ${CARRIER NAME} =        Verify Get Created Carrier Name
    Verify Set Letters For Created Carrier Search       ${CARRIER NAME}

Validate Click Go Button
    [Tags]    REGRESSION
    ixconnect_page_resource.Verify Click Go Button

Validate Switch To Default Content
    [Tags]    REGRESSION
    ixconnect_page_resource.Verify Switch To Default Content

Validate Click Carrier Account First Plus Button
    [Tags]    REGRESSION
    Verify Click Carrier Account First Plus Button

Validate Select First Inner Customer
    [Tags]    REGRESSION
    Verify Select First Inner Customer

Validate The Time Zone Tab Is Remained Intact
    [Tags]    REGRESSION
    Verify The Specific Tab Is Remained Intact      Time Zone

Validate The D Scenario Tab Is Remained Intact
    [Tags]    REGRESSION
    Verify The Specific Tab Is Remained Intact      D Scenario

Validate The S Scenario Tab Is Remained Intact
    [Tags]    REGRESSION
    Verify The Specific Tab Is Remained Intact      S Scenario

Validate The C Scenario Tab Is Remained Intact
    [Tags]    REGRESSION
    Verify The Specific Tab Is Remained Intact      C Scenario

Validate The Service Level Tab Is Remained Intact
    [Tags]    REGRESSION
    Verify The Specific Tab Is Remained Intact      Service Level

Validate The Agreement Tab Is Remained Intact
    [Tags]    REGRESSION
    Verify The Specific Tab Is Remained Intact      Agreement

Validate Click On Time Zone Tab In Agreement Page
    [Tags]    REGRESSION
    Verify Click On Specific Tab In Agreement Page      Time Zone

Validate Click On D Scenario Tab In Agreement Page
    [Tags]    REGRESSION
    Verify Click On Specific Tab In Agreement Page      D Scenario

Validate The Time Zone Tab Is Remained Intact After Clicking On D Scenario
    [Tags]    REGRESSION
    Verify The Specific Tab Is Remained Intact      Time Zone

Validate The S Scenario Tab Is Remained Intact After Clicking On D Scenario
    [Tags]    REGRESSION
    Verify The Specific Tab Is Remained Intact      S Scenario

Validate The C Scenario Tab Is Remained Intact After Clicking On D Scenario
    [Tags]    REGRESSION
    Verify The Specific Tab Is Remained Intact      C Scenario

Validate The Service Level Tab Is Remained Intact After Clicking On D Scenario
    [Tags]    REGRESSION
    Verify The Specific Tab Is Remained Intact      Service Level

Validate The Agreement Tab Is Remained Intact After Clicking On D Scenario
    [Tags]    REGRESSION
    Verify The Specific Tab Is Remained Intact      Agreement

Validate Click On S Scenario Tab In Agreement Page
    [Tags]    REGRESSION
    Verify Click On Specific Tab In Agreement Page      S Scenario

Validate The Time Zone Tab Is Remained Intact After Clicking On S Scenario
    [Tags]    REGRESSION
    Verify The Specific Tab Is Remained Intact      Time Zone

Validate The D Scenario Tab Is Remained Intact After Clicking On S Scenario
    [Tags]    REGRESSION
    Verify The Specific Tab Is Remained Intact      D Scenario

Validate The C Scenario Tab Is Remained Intact After Clicking On S Scenario
    [Tags]    REGRESSION
    Verify The Specific Tab Is Remained Intact      C Scenario

Validate The Service Level Tab Is Remained Intact After Clicking On S Scenario
    [Tags]    REGRESSION
    Verify The Specific Tab Is Remained Intact      Service Level

Validate The Agreement Tab Is Remained Intact After Clicking On S Scenario
    [Tags]    REGRESSION
    Verify The Specific Tab Is Remained Intact      Agreement

Validate Click On C Scenario Tab In Agreement Page
    [Tags]    REGRESSION
    Verify Click On Specific Tab In Agreement Page      C Scenario

Validate The Time Zone Tab Is Remained Intact After Clicking On C Scenario
    [Tags]    REGRESSION
    Verify The Specific Tab Is Remained Intact      Time Zone

Validate The D Scenario Tab Is Remained Intact After Clicking On C Scenario
    [Tags]    REGRESSION
    Verify The Specific Tab Is Remained Intact      D Scenario

Validate The S Scenario Tab Is Remained Intact After Clicking On C Scenario
    [Tags]    REGRESSION
    Verify The Specific Tab Is Remained Intact      S Scenario

Validate The Service Level Tab Is Remained Intact After Clicking On C Scenario
    [Tags]    REGRESSION
    Verify The Specific Tab Is Remained Intact      Service Level

Validate The Agreement Tab Is Remained Intact After Clicking On C Scenario
    [Tags]    REGRESSION
    Verify The Specific Tab Is Remained Intact      Agreement

Validate Click On Service Level Tab In Agreement Page
    [Tags]    REGRESSION
    Verify Click On Specific Tab In Agreement Page      Service Level

Validate The Time Zone Tab Is Remained Intact After Clicking On Service Level
    [Tags]    REGRESSION
    Verify The Specific Tab Is Remained Intact      Time Zone

Validate The D Scenario Tab Is Remained Intact After Clicking On Service Level
    [Tags]    REGRESSION
    Verify The Specific Tab Is Remained Intact      D Scenario

Validate The S Scenario Tab Is Remained Intact After Clicking On Service Level
    [Tags]    REGRESSION
    Verify The Specific Tab Is Remained Intact      S Scenario

Validate The C Scenario Tab Is Remained Intact After Clicking On Service Level
    [Tags]    REGRESSION
    Verify The Specific Tab Is Remained Intact      C Scenario

Validate The Agreement Tab Is Remained Intact After Clicking On C Service Level
    [Tags]    REGRESSION
    Verify The Specific Tab Is Remained Intact      Agreement

Validate Click Exit Header Link
    [Tags]    REGRESSION
    Verify Click Exit Header Link