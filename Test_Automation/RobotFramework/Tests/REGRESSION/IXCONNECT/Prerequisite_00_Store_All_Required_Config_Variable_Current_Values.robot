*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Store All Requiered Config Variable Current Values

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

Validate Create Config Variable Presen Dictionary
    [Tags]    REGRESSION
    Verify Create Config Variable Presen Dictionary

Validate Set Variable Name For EnableSaaSGranularRoles
    [Tags]    REGRESSION
    Verify Set Variable Name    EnableSaaSGranularRoles

Validate Click Configuration Variables Grid Search Button For EnableSaaSGranularRoles
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Store Preset Config Variable Current Value For EnableSaaSGranularRoles
    [Tags]    REGRESSION
    Verify Store Preset Config Variable Current Value       EnableSaaSGranularRoles

Validate Store Preset Config Variable Modified By For EnableSaaSGranularRoles
    [Tags]    REGRESSION
    Verify Store Preset Config Variable Modified By       EnableSaaSGranularRoles

Validate Set Variable Name For ALSConfigFlag
    [Tags]    REGRESSION
    Verify Set Variable Name    ALSConfigFlag

Validate Click Configuration Variables Grid Search Button For ALSConfigFlag
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Store Preset Config Variable Current Value For ALSConfigFlag
    [Tags]    REGRESSION
    Verify Store Preset Config Variable Current Value       ALSConfigFlag

Validate Store Preset Config Variable Modified By For ALSConfigFlag
    [Tags]    REGRESSION
    Verify Store Preset Config Variable Modified By       ALSConfigFlag

Validate Set Variable Name For EnableSettlementOriginRating
    [Tags]    REGRESSION
    Verify Set Variable Name    EnableSettlementOriginRating

Validate Click Configuration Variables Grid Search Button For EnableSettlementOriginRating
    [Tags]    REGRESSION
    Verify Click Search Button

Validate Store Preset Config Variable Current Value For EnableSettlementOriginRating
    [Tags]    REGRESSION
    Verify Store Preset Config Variable Current Value       EnableSettlementOriginRating

Validate Store Preset Config Variable Modified By For EnableSettlementOriginRating
    [Tags]    REGRESSION
    Verify Store Preset Config Variable Modified By       EnableSettlementOriginRating

#Validate Set Variable Name For OverlappingGracePeriodFeature
#    [Tags]    REGRESSION
#    Verify Set Variable Name    OverlappingGracePeriodFeature
#
#Validate Click Configuration Variables Grid Search Button For OverlappingGracePeriodFeature
#    [Tags]    REGRESSION
#    Verify Click Search Button
#
#Validate Store Preset Config Variable Current Value For OverlappingGracePeriodFeature
#    [Tags]    REGRESSION
#    Verify Store Preset Config Variable Current Value       OverlappingGracePeriodFeature
#
#Validate Store Preset Config Variable Modified By For OverlappingGracePeriodFeature
#    [Tags]    REGRESSION
#    Verify Store Preset Config Variable Modified By       OverlappingGracePeriodFeature
#
#Validate Set Variable Name For EnableInterOpCoSettlements
#    [Tags]    REGRESSION
#    Verify Set Variable Name    EnableInterOpCoSettlements
#
#Validate Click Configuration Variables Grid Search Button For EnableInterOpCoSettlements
#    [Tags]    REGRESSION
#    Verify Click Search Button
#
#Validate Store Preset Config Variable Current Value For EnableInterOpCoSettlements
#    [Tags]    REGRESSION
#    Verify Store Preset Config Variable Current Value       EnableInterOpCoSettlements
#
#Validate Store Preset Config Variable Modified By For EnableInterOpCoSettlements
#    [Tags]    REGRESSION
#    Verify Store Preset Config Variable Modified By       EnableInterOpCoSettlements
#
#Validate Set Variable Name For UniqueInboundHubbingNPRating
#    [Tags]    REGRESSION
#    Verify Set Variable Name    UniqueInboundHubbingNPRating
#
#Validate Click Configuration Variables Grid Search Button For UniqueInboundHubbingNPRating
#    [Tags]    REGRESSION
#    Verify Click Search Button
#
#Validate Store Preset Config Variable Current Value For UniqueInboundHubbingNPRating
#    [Tags]    REGRESSION
#    Verify Store Preset Config Variable Current Value       UniqueInboundHubbingNPRating
#
#Validate Store Preset Config Variable Modified By For UniqueInboundHubbingNPRating
#    [Tags]    REGRESSION
#    Verify Store Preset Config Variable Modified By       UniqueInboundHubbingNPRating
#
#Validate Set Variable Name For RPLCustom
#    [Tags]    REGRESSION
#    Verify Set Variable Name    RPLCustom
#
#Validate Click Configuration Variables Grid Search Button For RPLCustom
#    [Tags]    REGRESSION
#    Verify Click Search Button
#
#Validate Store Preset Config Variable Current Value For RPLCustom
#    [Tags]    REGRESSION
#    Verify Store Preset Config Variable Current Value       RPLCustom
#
#Validate Store Preset Config Variable Modified By For RPLCustom
#    [Tags]    REGRESSION
#    Verify Store Preset Config Variable Modified By       RPLCustom
#
#Validate Set Variable Name For EnableNetworkDestinationRating
#    [Tags]    REGRESSION
#    Verify Set Variable Name    EnableNetworkDestinationRating
#
#Validate Click Configuration Variables Grid Search Button For EnableNetworkDestinationRating
#    [Tags]    REGRESSION
#    Verify Click Search Button
#
#Validate Store Preset Config Variable Current Value For EnableNetworkDestinationRating
#    [Tags]    REGRESSION
#    Verify Store Preset Config Variable Current Value       EnableNetworkDestinationRating
#
#Validate Store Preset Config Variable Modified By For EnableNetworkDestinationRating
#    [Tags]    REGRESSION
#    Verify Store Preset Config Variable Modified By       EnableNetworkDestinationRating
#
#Validate Set Variable Name For SubscriberEnabled
#    [Tags]    REGRESSION
#    Verify Set Variable Name    SubscriberEnabled
#
#Validate Click Configuration Variables Grid Search Button For SubscriberEnabled
#    [Tags]    REGRESSION
#    Verify Click Search Button
#
#Validate Store Preset Config Variable Current Value For SubscriberEnabled
#    [Tags]    REGRESSION
#    Verify Store Preset Config Variable Current Value       SubscriberEnabled
#
#Validate Store Preset Config Variable Modified By For SubscriberEnabled
#    [Tags]    REGRESSION
#    Verify Store Preset Config Variable Modified By       SubscriberEnabled
#
#Validate Set Variable Name For RGWorkSheetUIOption
#    [Tags]    REGRESSION
#    Verify Set Variable Name    RGWorkSheetUIOption
#
#Validate Click Configuration Variables Grid Search Button For RGWorkSheetUIOption
#    [Tags]    REGRESSION
#    Verify Click Search Button
#
#Validate Store Preset Config Variable Current Value For RGWorkSheetUIOption
#    [Tags]    REGRESSION
#    Verify Store Preset Config Variable Current Value       RGWorkSheetUIOption
#
#Validate Store Preset Config Variable Modified By For RGWorkSheetUIOption
#    [Tags]    REGRESSION
#    Verify Store Preset Config Variable Modified By       RGWorkSheetUIOption
#
#Validate Set Variable Name For KPI Next Gen
#    [Tags]    REGRESSION
#    Verify Set Variable Name    KPI Next Gen
#
#Validate Click Configuration Variables Grid Search Button For KPI Next Gen
#    [Tags]    REGRESSION
#    Verify Click Search Button
#
#Validate Store Preset Config Variable Current Value For KPI Next Gen
#    [Tags]    REGRESSION
#    Verify Store Preset Config Variable Current Value       KPI Next Gen
#
#Validate Store Preset Config Variable Modified By For KPI Next Gen
#    [Tags]    REGRESSION
#    Verify Store Preset Config Variable Modified By       KPI Next Gen
#
## Variables for iXTools scope
#
#Validate Set iXTools Scope
#    [Tags]    REGRESSION
#    Verify Set Scope    iXTools
#
#Validate Set Variable Name For CostPlus
#    [Tags]    REGRESSION
#    Verify Set Variable Name    CostPlus
#
#Validate Click Configuration Variables Grid Search Button For CostPlus
#    [Tags]    REGRESSION
#    Verify Click Search Button
#
#Validate Store Preset Config Variable Current Value For CostPlus
#    [Tags]    REGRESSION
#    Verify Store Preset Config Variable Current Value       CostPlus
#
#Validate Store Preset Config Variable Modified By For CostPlus
#    [Tags]    REGRESSION
#    Verify Store Preset Config Variable Modified By       CostPlus
#
#Validate Store Preset Config Variable Modified By For iXTools
#    [Tags]    REGRESSION
#    Verify Clear Multiple Kendo Dropdown Selection      Scope
#
## Variables for CDR scope
#
#Validate Set CDR Scope
#    [Tags]    REGRESSION
#    Verify Set Scope    CDR
#
#Validate Set Variable Name For CDRInboundReferenceNumberPlanID
#    [Tags]    REGRESSION
#    Verify Set Variable Name    InboundReferenceNumberPlanID
#
#Validate Click Configuration Variables Grid Search Button For CDRInboundReferenceNumberPlanID
#    [Tags]    REGRESSION
#    Verify Click Search Button
#
#Validate Store Preset Config Variable Current Value For CDRInboundReferenceNumberPlanID
#    [Tags]    REGRESSION
#    Verify Store Preset Config Variable Current Value       CDRInboundReferenceNumberPlanID
#
#Validate Store Preset Config Variable Modified By For CDRInboundReferenceNumberPlanID
#    [Tags]    REGRESSION
#    Verify Store Preset Config Variable Modified By       CDRInboundReferenceNumberPlanID
#
#Validate Store Preset Config Variable Modified By For CDR
#    [Tags]    REGRESSION
#    Verify Clear Multiple Kendo Dropdown Selection      Scope
#
## Variables for General scope
#
#Validate Set General Scope
#    [Tags]    REGRESSION
#    Verify Set Scope    General
#
#Validate Set Variable Name For InboundReferenceNumberPlanID
#    [Tags]    REGRESSION
#    Verify Set Variable Name    InboundReferenceNumberPlanID
#
#Validate Click Configuration Variables Grid Search Button For InboundReferenceNumberPlanID
#    [Tags]    REGRESSION
#    Verify Click Search Button
#
#Validate Store Preset Config Variable Current Value For InboundReferenceNumberPlanID
#    [Tags]    REGRESSION
#    Verify Store Preset Config Variable Current Value       InboundReferenceNumberPlanID
#
#Validate Store Preset Config Variable Modified By For InboundReferenceNumberPlanID
#    [Tags]    REGRESSION
#    Verify Store Preset Config Variable Modified By       InboundReferenceNumberPlanID
#
#Validate Set Variable Name For OutboundReferenceNumberPlanID
#    [Tags]    REGRESSION
#    Verify Set Variable Name    OutboundReferenceNumberPlanID
#
#Validate Click Configuration Variables Grid Search Button For OutboundReferenceNumberPlanID
#    [Tags]    REGRESSION
#    Verify Click Search Button
#
#Validate Store Preset Config Variable Current Value For OutboundReferenceNumberPlanID
#    [Tags]    REGRESSION
#    Verify Store Preset Config Variable Current Value       OutboundReferenceNumberPlanID
#
#Validate Store Preset Config Variable Modified By For OutboundReferenceNumberPlanID
#    [Tags]    REGRESSION
#    Verify Store Preset Config Variable Modified By       OutboundReferenceNumberPlanID
#
#Validate Set Variable Name For iXToolsWholesaleSolutionType
#    [Tags]    REGRESSION
#    Verify Set Variable Name    iXToolsWholesaleSolutionType
#
#Validate Click Configuration Variables Grid Search Button For iXToolsWholesaleSolutionType
#    [Tags]    REGRESSION
#    Verify Click Search Button
#
#Validate Store Preset Config Variable Current Value For iXToolsWholesaleSolutionType
#    [Tags]    REGRESSION
#    Verify Store Preset Config Variable Current Value       iXToolsWholesaleSolutionType
#
#Validate Store Preset Config Variable Modified By For iXToolsWholesaleSolutionType
#    [Tags]    REGRESSION
#    Verify Store Preset Config Variable Modified By       iXToolsWholesaleSolutionType
