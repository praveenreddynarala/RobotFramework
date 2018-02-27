*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Reset All Config Variable Values

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

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

Validate Set Variable Name For EnableSaaSGranularRoles
    [Tags]    REGRESSION
    Verify Set Variable Name    EnableSaaSGranularRoles

Validate Click Configuration Variables Grid Search Button For EnableSaaSGranularRoles
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Reset Preset Config Variable Current Value For EnableSaaSGranularRoles
    [Tags]    REGRESSION
    ${PREVIOUS VALUE} =     Verify Get Preset Config Variable Current Value     EnableSaaSGranularRoles
    Verify Set Value In Current Value Column        ${PREVIOUS VALUE}

Validate Set Variable Name For ALSConfigFlag
    [Tags]    REGRESSION
    Verify Set Variable Name    ALSConfigFlag

Validate Click Configuration Variables Grid Search Button For ALSConfigFlag
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Reset Preset Config Variable Current Value For ALSConfigFlag
    [Tags]    REGRESSION
    ${PREVIOUS VALUE} =     Verify Get Preset Config Variable Current Value     ALSConfigFlag
    Verify Set Value In Current Value Column        ${PREVIOUS VALUE}

Validate Set Variable Name For EnableSettlementOriginRating
    [Tags]    REGRESSION
    Verify Set Variable Name    EnableSettlementOriginRating

Validate Click Configuration Variables Grid Search Button For EnableSettlementOriginRating
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Reset Preset Config Variable Current Value For EnableSettlementOriginRating
    [Tags]    REGRESSION
    ${PREVIOUS VALUE} =     Verify Get Preset Config Variable Current Value     EnableSettlementOriginRating
    Verify Set Value In Current Value Column        ${PREVIOUS VALUE}

Validate Set Variable Name For OverlappingGracePeriodFeature
    [Tags]    REGRESSION
    Verify Set Variable Name    OverlappingGracePeriodFeature

Validate Click Configuration Variables Grid Search Button For OverlappingGracePeriodFeature
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Reset Preset Config Variable Current Value For OverlappingGracePeriodFeature
    [Tags]    REGRESSION
    ${PREVIOUS VALUE} =     Verify Get Preset Config Variable Current Value     OverlappingGracePeriodFeature
    Verify Set Value In Current Value Column        ${PREVIOUS VALUE}

Validate Set Variable Name For EnableInterOpCoSettlements
    [Tags]    REGRESSION
    Verify Set Variable Name    EnableInterOpCoSettlements

Validate Click Configuration Variables Grid Search Button For EnableInterOpCoSettlements
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Reset Preset Config Variable Current Value For EnableInterOpCoSettlements
    [Tags]    REGRESSION
    ${PREVIOUS VALUE} =     Verify Get Preset Config Variable Current Value     EnableInterOpCoSettlements
    Verify Set Value In Current Value Column        ${PREVIOUS VALUE}

Validate Set Variable Name For UniqueInboundHubbingNPRating
    [Tags]    REGRESSION
    Verify Set Variable Name    UniqueInboundHubbingNPRating

Validate Click Configuration Variables Grid Search Button For UniqueInboundHubbingNPRating
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Reset Preset Config Variable Current Value For UniqueInboundHubbingNPRating
    [Tags]    REGRESSION
    ${PREVIOUS VALUE} =     Verify Get Preset Config Variable Current Value     UniqueInboundHubbingNPRating
    Verify Set Value In Current Value Column        ${PREVIOUS VALUE}

Validate Set Variable Name For RPLCustom
    [Tags]    REGRESSION
    Verify Set Variable Name    RPLCustom

Validate Click Configuration Variables Grid Search Button For RPLCustom
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Reset Preset Config Variable Current Value For RPLCustom
    [Tags]    REGRESSION
    ${PREVIOUS VALUE} =     Verify Get Preset Config Variable Current Value     RPLCustom
    Verify Set Value In Current Value Column        ${PREVIOUS VALUE}

Validate Set Variable Name For EnableNetworkDestinationRating
    [Tags]    REGRESSION
    Verify Set Variable Name    EnableNetworkDestinationRating

Validate Click Configuration Variables Grid Search Button For EnableNetworkDestinationRating
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Reset Preset Config Variable Current Value For EnableNetworkDestinationRating
    [Tags]    REGRESSION
    ${PREVIOUS VALUE} =     Verify Get Preset Config Variable Current Value     EnableNetworkDestinationRating
    Verify Set Value In Current Value Column        ${PREVIOUS VALUE}

Validate Set Variable Name For SubscriberEnabled
    [Tags]    REGRESSION
    Verify Set Variable Name    SubscriberEnabled

Validate Click Configuration Variables Grid Search Button For SubscriberEnabled
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Reset Preset Config Variable Current Value For SubscriberEnabled
    [Tags]    REGRESSION
    ${PREVIOUS VALUE} =     Verify Get Preset Config Variable Current Value     SubscriberEnabled
    Verify Set Value In Current Value Column        ${PREVIOUS VALUE}

Validate Set Variable Name For RGWorkSheetUIOption
    [Tags]    REGRESSION
    Verify Set Variable Name    RGWorkSheetUIOption

Validate Click Configuration Variables Grid Search Button For RGWorkSheetUIOption
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Reset Preset Config Variable Current Value For RGWorkSheetUIOption
    [Tags]    REGRESSION
    ${PREVIOUS VALUE} =     Verify Get Preset Config Variable Current Value     RGWorkSheetUIOption
    Verify Set Value In Current Value Column        ${PREVIOUS VALUE}

Validate Set Variable Name For KPI Next Gen
    [Tags]    REGRESSION
    Verify Set Variable Name    KPI Next Gen

Validate Click Configuration Variables Grid Search Button For KPI Next Gen
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Reset Preset Config Variable Current Value For KPI Next Gen
    [Tags]    REGRESSION
    ${PREVIOUS VALUE} =     Verify Get Preset Config Variable Current Value     KPI Next Gen
    Verify Set Value In Current Value Column        ${PREVIOUS VALUE}

# Variables for iXTools scope

Validate Set iXTools Scope
    [Tags]    REGRESSION
    Verify Set Scope    iXTools

Validate Set Variable Name For CostPlus
    [Tags]    REGRESSION
    Verify Set Variable Name    CostPlus

Validate Click Configuration Variables Grid Search Button For CostPlus
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Reset Preset Config Variable Current Value For CostPlus
    [Tags]    REGRESSION
    ${PREVIOUS VALUE} =     Verify Get Preset Config Variable Current Value     CostPlus
    Verify Set Value In Current Value Column        ${PREVIOUS VALUE}

Validate Reset Preset Config Variable Modified By For iXTools
    [Tags]    REGRESSION
    Verify Clear Multiple Kendo Dropdown Selection      Scope

# Variables for CDR scope

Validate Set CDR Scope
    [Tags]    REGRESSION
    Verify Set Scope    CDR

Validate Set Variable Name For CDRInboundReferenceNumberPlanID
    [Tags]    REGRESSION
    Verify Set Variable Name    InboundReferenceNumberPlanID

Validate Click Configuration Variables Grid Search Button For CDRInboundReferenceNumberPlanID
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Reset Preset Config Variable Current Value For CDRInboundReferenceNumberPlanID
    [Tags]    REGRESSION
    ${PREVIOUS VALUE} =     Verify Get Preset Config Variable Current Value     CDRInboundReferenceNumberPlanID
    Verify Set Value In Current Value Column        ${PREVIOUS VALUE}

Validate Reset Preset Config Variable Modified By For CDR
    [Tags]    REGRESSION
    Verify Clear Multiple Kendo Dropdown Selection      Scope

# Variables for General scope

Validate Set General Scope
    [Tags]    REGRESSION
    Verify Set Scope    General

Validate Set Variable Name For InboundReferenceNumberPlanID
    [Tags]    REGRESSION
    Verify Set Variable Name    InboundReferenceNumberPlanID

Validate Click Configuration Variables Grid Search Button For InboundReferenceNumberPlanID
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Reset Preset Config Variable Current Value For InboundReferenceNumberPlanID
    [Tags]    REGRESSION
    ${PREVIOUS VALUE} =     Verify Get Preset Config Variable Current Value     InboundReferenceNumberPlanID
    Verify Set Value In Current Value Column        ${PREVIOUS VALUE}

Validate Set Variable Name For OutboundReferenceNumberPlanID
    [Tags]    REGRESSION
    Verify Set Variable Name    OutboundReferenceNumberPlanID

Validate Click Configuration Variables Grid Search Button For OutboundReferenceNumberPlanID
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Reset Preset Config Variable Current Value For OutboundReferenceNumberPlanID
    [Tags]    REGRESSION
    ${PREVIOUS VALUE} =     Verify Get Preset Config Variable Current Value     OutboundReferenceNumberPlanID
    Verify Set Value In Current Value Column        ${PREVIOUS VALUE}

Validate Set Variable Name For iXToolsWholesaleSolutionType
    [Tags]    REGRESSION
    Verify Set Variable Name    iXToolsWholesaleSolutionType

Validate Click Configuration Variables Grid Search Button For iXToolsWholesaleSolutionType
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Reset Preset Config Variable Current Value For iXToolsWholesaleSolutionType
    [Tags]    REGRESSION
    ${PREVIOUS VALUE} =     Verify Get Preset Config Variable Current Value     iXToolsWholesaleSolutionType
    Verify Set Value In Current Value Column        ${PREVIOUS VALUE}

Validate Reset Preset Config Variable Modified By For General
    [Tags]    REGRESSION
    Verify Clear Multiple Kendo Dropdown Selection      Scope

# Variables for  iXBill  scope

Validate Set iXBill Scope
    [Tags]    REGRESSION
    Verify Set Scope    iXBill

Validate Set Variable Name For EnablePreClosedApprovedStatus
    [Tags]    REGRESSION
    Verify Set Variable Name    EnablePreClosedApprovedStatus

Validate Click Configuration Variables Grid Search Button For EnablePreClosedApprovedStatus
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Reset Preset Config Variable Current Value For EnablePreClosedApprovedStatus
    [Tags]    REGRESSION
    ${PREVIOUS VALUE} =     Verify Get Preset Config Variable Current Value     EnablePreClosedApprovedStatus
    Verify Set Value In Current Value Column        ${PREVIOUS VALUE}

Validate Set Variable Name For AutoTransitionPostedToApproved
    [Tags]    REGRESSION
    Verify Set Variable Name    AutoTransitionPostedToApproved

Validate Click Configuration Variables Grid Search Button For AutoTransitionPostedToApproved
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Reset Preset Config Variable Current Value For AutoTransitionPostedToApproved
    [Tags]    REGRESSION
    ${PREVIOUS VALUE} =     Verify Get Preset Config Variable Current Value     AutoTransitionPostedToApproved
    Verify Set Value In Current Value Column        ${PREVIOUS VALUE}