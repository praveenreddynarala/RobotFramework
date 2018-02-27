*** Settings ***
Documentation     A Test Suite With Set Of Tests To Verify Copy Contract

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${SOURCE ACCOUNT NAME}         ${EMPTY}
${TARGET ACCOUNT NAME}         ${EMPTY}
${SOURCE CONTRACT NAME}         ${EMPTY}
*** Test Cases ***
Validate Navigate to Contracts module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate Click Copy From Existing Complex Contract
    [Tags]    REGRESSION
    Verify Click Copy From Existing Complex Contract

Validate Set Complex Contract Source Account
    [Tags]    REGRESSION
    ${SOURCE ACCOUNT NAME} =       Verify Get Created Carrier Name
    Verify Set Complex Contract Source Account       ${SOURCE ACCOUNT NAME}

Validate Set Complex Contract Target Account
    [Tags]    REGRESSION
    ${TARGET ACCOUNT NAME} =       Verify Get Created Carrier Name
    Verify Set Complex Contract Target Account      ${TARGET ACCOUNT NAME}

Validate Set Complex Contract Source Contract
    [Tags]    REGRESSION
    ${SOURCE CONTRACT NAME} =       Verify Get Created Contract Name
    Verify Set Complex Contract Source Contract     ${SOURCE CONTRACT NAME}

Validate Set Complex Contract Copy Direction
    [Tags]    REGRESSION
    Verify Set Complex Contract Copy Direction      ${EMPTY}

Validate Set Contract Name
    [Tags]    REGRESSION
    Verify Set Contract Name        ${TEST DATA PREFIX}

Validate Set Begin Date
    [Tags]    REGRESSION
    Verify Set Contract Begin Date          ${EMPTY}

Validate Set End Date
    [Tags]    REGRESSION
    Verify Set Contract End Date         ${EMPTY}

Validate Click Copy Contract Save Button
    [Tags]    REGRESSION
    Verify Click Copy Contract Save Button

Validate Select Aggregation Groups Mapping Tab
    [Tags]    REGRESSION
    Verify Select Aggregation Groups Mapping Tab

Validate Click Aggregation Groups Mapping Save Button
    [Tags]    REGRESSION
    Verify Click Aggregation Groups Mapping Save Button

Validate Select Commercial Trunk Mapping Tab
    [Tags]    REGRESSION
    Verify Select Commercial Trunk Mapping Tab

Validate Click Commercial Trunk Mapping Save Button
    [Tags]    REGRESSION
    Verify Click Commercial Trunk Mapping Save Button

Validate Select Number Plan Mapping Tab
    [Tags]    REGRESSION
    Verify Select Number Plan Mapping Tab

Validate Set Target Number Plan
    [Tags]    REGRESSION
    Verify Set Target Number Plan       ${TEST DATA PREFIX}

Validate Click Number Plan Mapping Save Button
    [Tags]    REGRESSION
    Verify Click Number Plan Mapping Save Button

Validate Select Rate Plan Mapping Tab
    [Tags]    REGRESSION
    Verify Select Rate Plan Mapping Tab

Validate Click Rate Plan Mapping Save Button
    [Tags]    REGRESSION
    Verify Click Rate Plan Mapping Save Button

Validate Close Contracts Page
    [Tags]    REGRESSION
    Verify Close IxConnect Window
