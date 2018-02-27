*** Settings ***
Documentation     A Test Suite With Set Of Tests To Vefiy Number Plan Search Results Are Displayed Based On The Search Criteria

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/business_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${INBOUND REF NUMBER PLAN ID}           ${EMPTY}
${OUTBOUND REF NUMBER PLAN ID}          ${EMPTY}
${ENABLE SETTLEMENT ORIGIN RATING}      ${EMPTY}
${UNIQUE INBOUND HUBBING NP RATING}     ${EMPTY}

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

Validate Set EnableSettlementOriginRating Variable Name
    [Tags]    REGRESSION
    Verify Set Variable Name    EnableSettlementOriginRating

Validate Click Configuration Variables Grid Search Button For EnableSettlementOriginRating
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Get Current Column Value For EnableSettlementOriginRating
    [Tags]    REGRESSION
    ${ENABLE SETTLEMENT ORIGIN RATING} =     Verify Get Current Value Column Value
    set suite variable      ${ENABLE SETTLEMENT ORIGIN RATING}

Validate Set Value In Current Value Column For EnableSettlementOriginRating
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        1

Validate Set UniqueInboundHubbingNPRating Variable Name
    [Tags]    REGRESSION
    Verify Set Variable Name    UniqueInboundHubbingNPRating

Validate Click Configuration Variables Grid Search Button For UniqueInboundHubbingNPRating
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Get Current Column Value For UniqueInboundHubbingNPRating
    [Tags]    REGRESSION
    ${UNIQUE INBOUND HUBBING NP RATING} =     Verify Get Current Value Column Value
    set suite variable      ${UNIQUE INBOUND HUBBING NP RATING}

Validate Set Value In Current Value Column For UniqueInboundHubbingNPRating
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        1

Validate Set Scope
    [Tags]    REGRESSION
    Verify Set Scope        General

Validate Set Variable Name
    [Tags]    REGRESSION
    Verify Set Variable Name    InboundReferenceNumberPlanID

Validate Click Configuration Variables Grid Search Button
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Get Current Column Value
    [Tags]    REGRESSION
    ${INBOUND REF NUMBER PLAN ID} =     Verify Get Current Value Column Value
    set suite variable      ${INBOUND REF NUMBER PLAN ID}

Validate Set Value In Current Value Column
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        -1

Validate Set OutboundReferenceNumberPlanID Variable Name
    [Tags]    REGRESSION
    Verify Set Variable Name    OutboundReferenceNumberPlanID

Validate Click Configuration Variables Grid Search Button For OutboundReferenceNumberPlanID
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Get Current Column Value For OutboundReferenceNumberPlanID
    [Tags]    REGRESSION
    ${OUTBOUND REF NUMBER PLAN ID} =     Verify Get Current Value Column Value
    set suite variable      ${OUTBOUND REF NUMBER PLAN ID}

Validate Set Value In Current Value Column For OutboundReferenceNumberPlanID
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        -1

Validate Close System Admin Window
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to Business Admin module
    [Tags]    REGRESSION
    click on home icon and select 'business admin' from main menu

Validate Expand Number Plan Menu
    [Tags]    REGRESSION
    Verify Expand Number Plan Menu

Validate Click Number Plan Submenu
    [Tags]    REGRESSION
    Verify Click Number Plan Submenu

Validate Set Number Plan Type
    [Tags]    REGRESSION
    Verify Set Number Plan Type     ${CONTRACT COMPLEX NUMBER PLAN TYPE}

Validate Click Search Button
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Click Search Button

Validate Number Plan Search Result Is Matched
    [Tags]    REGRESSION
    Verify Number Plan Search Result Is Matched     ${CONTRACT COMPLEX NUMBER PLAN TYPE}

Validate Set Number Plan Type For Unique CSNP for Rating
    [Tags]    REGRESSION
    Verify Set Number Plan Type     ${UNIQUE CSNP FOR RATING NUMBER PLAN TYPE}

Validate Click Search Button For Unique CSNP for Rating
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Click Search Button

Validate Number Plan Search Result Is Matched For Unique CSNP for Rating
    [Tags]    REGRESSION
    Verify Number Plan Search Result Is Matched     ${UNIQUE CSNP FOR RATING NUMBER PLAN TYPE}

Validate Set Number Plan Type For Reference Number Plan
    [Tags]    REGRESSION
    Verify Set Number Plan Type     ${REFERENCE NUMBER PLAN TYPE}

Validate Click Search Button For Reference Number Plan
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Click Search Button

Validate Number Plan Search Result Is Matched For Reference Number Plan
    [Tags]    REGRESSION
    Verify Number Plan Search Result Is Matched     ${REFERENCE NUMBER PLAN TYPE}

Validate Set Number Plan Type For Origin Set
    [Tags]    REGRESSION
    Verify Set Number Plan Type     ${ORIGIN SET NUMBER PLAN TYPE}

Validate Click Search Button For Origin Set
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Click Search Button

Validate Number Plan Search Result Is Matched For Origin Set
    [Tags]    REGRESSION
    Verify Number Plan Search Result Is Matched     ${ORIGIN SET NUMBER PLAN TYPE}

Validate Close Business Admin Window
    [Tags]    REGRESSION
    Verify Close Business Admin Window

Validate Navigate to System Admin module For Reset
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select System Tab For Reset
    [Tags]    REGRESSION
    Click on System Tab

Validate Click Configuration Variables Button For Reset
    [Tags]    REGRESSION
    Verify Click Configuration Variables Button

Validate Set EnableSettlementOriginRating Variable Name For Reset
    [Tags]    REGRESSION
    Verify Set Variable Name    EnableSettlementOriginRating

Validate Click Configuration Variables Grid Search Button For EnableSettlementOriginRating For Reset
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column For EnableSettlementOriginRating For Reset
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        ${ENABLE SETTLEMENT ORIGIN RATING}

Validate Set UniqueInboundHubbingNPRating Variable Name For Reset
    [Tags]    REGRESSION
    Verify Set Variable Name    UniqueInboundHubbingNPRating

Validate Click Configuration Variables Grid Search Button For UniqueInboundHubbingNPRating For Reset
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column For UniqueInboundHubbingNPRating For Reset
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        ${UNIQUE INBOUND HUBBING NP RATING}

Validate Set Scope For Reset
    [Tags]    REGRESSION
    Verify Set Scope        General

Validate Set Variable Name For Reset
    [Tags]    REGRESSION
    Verify Set Variable Name    InboundReferenceNumberPlanID

Validate Click Configuration Variables Grid Search Button For Reset
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column For Reset
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        ${INBOUND REF NUMBER PLAN ID}

Validate Set OutboundReferenceNumberPlanID Variable Name For Reset
    [Tags]    REGRESSION
    Verify Set Variable Name    OutboundReferenceNumberPlanID

Validate Click Configuration Variables Grid Search Button For OutboundReferenceNumberPlanID For Reset
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column For OutboundReferenceNumberPlanID For Reset
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        ${OUTBOUND REF NUMBER PLAN ID}
