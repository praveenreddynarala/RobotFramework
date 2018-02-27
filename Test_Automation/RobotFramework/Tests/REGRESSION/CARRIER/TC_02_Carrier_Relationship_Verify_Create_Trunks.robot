*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Create Trunks Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/carrier_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Carrier module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Carrier' From Main Menu

Validate Get Created Carrier Name
    [Tags]    REGRESSION
    Verify Get Created Carrier Name

Validate Filter Carrier Grid
    [Tags]    REGRESSION
    Verify Filter Carriers Grid After Create        ${CARRIER NAME COLUMN NAME}

Validate Click Carriers Page Inline Action Button
    [Tags]    REGRESSION
    Verify Click Carriers Page Inline Action Button After Create

Validate Select Item From Inline Action
    [Tags]    REGRESSION
    Verify Select Item From Inline Action           ${CARRIER RELATIONSHIPS INLINE ITEM}

Validate Expand Commercial Trunks Section
    [Tags]    REGRESSION
    Verify Expand Commercial Trunks Section

Validate Click Create Trunk Button
    [Tags]    REGRESSION
    Verify Click Create Trunk Button

Validate Set Trunk Name
    [Tags]    REGRESSION
    Verify Set Trunk Name           ${TEST DATA PREFIX}

Validate Set Clli
    [Tags]    REGRESSION
    Verify Set Clli                 ${CLLI FOR CREATE}

Validate Set Effective Date
    [Tags]    REGRESSION
    Verify Set Effective Date       ${EFFECTIVE DATE FOR CREATE}

Validate Set Status
    [Tags]    REGRESSION
    Verify Set Status               ${ACTIVE STATUS}

Validate Set Direction
    [Tags]    REGRESSION
    Verify Set Direction            ${DIRECTION FOR CREATE}

Validate Set Description
    [Tags]    REGRESSION
    Verify Set Description          ${DESCRIPTION FOR CREATE}

Validate Click Save Button
    [Tags]    REGRESSION
    Verify Click Save Button

Validate Filter Trunks Grid For Create
    [Tags]    REGRESSION
    Verify Filter Trunks Grid For Create            ${NAME COLUMN NAME}

Validate Get Trunks Grid Row Details
    [Tags]    REGRESSION
    Verify Get Trunks Grid Row Details

Validate Trunks Grid Trunk Name
    [Tags]    REGRESSION
    Verify Trunks Grid Trunk Name

