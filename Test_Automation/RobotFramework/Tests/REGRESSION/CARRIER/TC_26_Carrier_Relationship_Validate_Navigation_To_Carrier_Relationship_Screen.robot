*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Navigation to Carrier Relationships Screen

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/carrier_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CARRIER NAME}             ${EMPTY}

*** Test Cases ***
Validate Navigate to Carrier module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Carrier' From Main Menu

Validate Get Created Carrier Name
    [Tags]    REGRESSION
    ${CARRIER NAME} =       Verify Get Created Carrier Name
    set suite variable      ${CARRIER NAME}

Validate Filter Carrier Grid
    [Tags]    REGRESSION
    carrier_page_resource.Verify Grid Filter Details           ${CARRIER NAME COLUMN NAME}        ${CARRIER NAME}

Validate Click Carriers Page Inline Action Button
    [Tags]    REGRESSION
    Verify Click Carriers Page Inline Action Button         ${CARRIER NAME}

Validate Select Item From Inline Action
    [Tags]    REGRESSION
    Verify Select Item From Inline Action           ${CARRIER RELATIONSHIPS INLINE ITEM}

Validate Commercial Trunks Section Available
    [Tags]    REGRESSION
    Verify Commercial Trunks Section Available

Validate Service Level Assignments Section Available
    [Tags]    REGRESSION
    Verify Service Level Assignments Section Available

Validate Rate Plans Section Available
    [Tags]    REGRESSION
    Verify Rate Plans Section Available

Validate Scenarios Section Available
    [Tags]    REGRESSION
    Verify Scenarios Section Available

Validate Number Plans Section Available
    [Tags]    REGRESSION
    Verify Number Plans Section Available

Validate Customers And Vendors Section Available
    [Tags]    REGRESSION
    Verify Customers And Vendors Section Available

Validate Bill Audit Accounts Section Available
    [Tags]    REGRESSION
    Verify Bill Audit Accounts Section Available