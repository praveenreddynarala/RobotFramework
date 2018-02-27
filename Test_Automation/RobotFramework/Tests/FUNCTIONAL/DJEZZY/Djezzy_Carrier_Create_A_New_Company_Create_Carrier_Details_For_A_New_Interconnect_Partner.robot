*** Settings ***
Documentation     A Test Suite With Set Of Tests For Djezzy Carrier To Create A New Company Create Carrier Details For A New Interconnect Partner

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/carrier_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Carrier module
    [Tags]    FUNCTIONAL
    Click on Home Icon and Select 'Carrier' From Main Menu

Validate Click Create InterCompany Button
    [Tags]    FUNCTIONAL
    Verify Click Create InterCompany Button

Validate Set Carrier Name
    [Tags]    FUNCTIONAL
    Verify Set Carrier Name             ${TEST DATA PREFIX}

Validate Set Carrier Abbreviation
    [Tags]    FUNCTIONAL
    Verify Set Carrier Abbreviation     ${TEST DATA PREFIX}

Validate Set Company
    [Tags]    FUNCTIONAL
    Verify Set Company                  ${DJEZZY COMPANY NAME FOR CREATE}

Validate Set Carrier Number
    [Tags]    FUNCTIONAL
    Verify Set Carrier Number

Validate Click Create Carrier Save Button
    [Tags]    FUNCTIONAL
    Verify Click Create Carrier Save Button

Validate Close Carrier Profile Tab
    [Tags]    FUNCTIONAL
    Verify Close Current Tab            ${CARRIER PROFILE TAB NAME}

Validate Filter Carriers Grid After Create
    [Tags]    FUNCTIONAL
    Verify Filter Carriers Grid After Create        ${CARRIER NAME COLUMN NAME}

Validate Get Carriers Grid Row Details
    [Tags]    FUNCTIONAL
    Verify Get Carriers Grid Row Details

Validate Carriers Grid Carrier Name
    [Tags]    FUNCTIONAL
    Verify Carriers Grid Carrier Name

Validate Carriers Grid Company
    [Tags]    FUNCTIONAL
    Verify Carriers Grid Company        ${DJEZZY COMPANY NAME FOR CREATE}

Validate Carriers Grid Carrier Type
    [Tags]    FUNCTIONAL
    Verify Carriers Grid Carrier Type       ${INTERCOMPANY CARRIER TYPE}