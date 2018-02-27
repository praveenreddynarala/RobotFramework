*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Country Filter And Column In The Following Screen

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/price_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to System Admin module To Set iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select System Tab To Set iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    Click on System Tab

Validate Click Configuration Variables Button To Set iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    Verify Click Configuration Variables Button

Validate Set Variable Name To Set iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    Verify Set Variable Name    iXToolsWholesaleSolutionType

Validate Click Search Button To Set iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column To Set iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        1

Validate Close System Admin Window After Setting iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to Price module After Setting iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Click Compund Reference Price List Link After Setting iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    Verify Click Compound Reference Price List Link

Validate The Country Selection Criteria Field Is Available In CRPL Page After Setting iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    Verify The Country Selection Criteria Field Is Available In CRPL Page

Validate The Country Column Is Available In CRPL Page After Setting iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    Verify The Country Column Is Available In CRPL Page

Validate Close Compound Reference Price List Tab After Setting iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    price_page_resource.Verify Close Current Tab        ${COMPOUND REFERENCE PRICE LIST TAB NAME}

Validate Click Origin Reference Price List Link After Setting iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    Verify Click Origin Reference Price List Link

Validate The Country Selection Criteria Field Is Available In ORPL Page After Setting iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    Verify The Country Selection Criteria Field Is Available In ORPL Page

Validate The Country Column Is Available In ORPL Page After Setting iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    Verify The Country Column Is Available In ORPL Page

Validate Close Origin Reference Price List Tab After Setting iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    price_page_resource.Verify Close Current Tab        ${ORIGIN REFERENCE PRICE LIST TAB NAME}

Validate Click Review Customer Price Exception Requests Link After Setting iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    Verify Click Review Customer Price Exception Requests Link

Validate The Country Selection Criteria Field Is Available In RCPER Page After Setting iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    Verify The Country Selection Criteria Field Is Available In RCPER Page

Validate The Country Column Is Available In RCPER Page After Setting iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    Verify The Country Column Is Available In RCPER Page

Validate Close Review Customer Price Exception Requests Tab After Setting iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    price_page_resource.Verify Close Current Tab        ${REVIEW PRICE EXCEPTION REQUESTS TAB NAME}

Validate Navigate to Cost Policies Tab After Setting iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    Click on Cost Policies Tab

Validate Click Costs Button After Setting iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    Verify Click Costs Button

Validate The Country Selection Criteria Field Is Available In Costs Page After Setting iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    Verify The Country Selection Criteria Field Is Available In Costs Page

Validate The Country Column Is Available In Costs Page After Setting iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    Verify The Country Column Is Available In Costs Page

Validate Close Costs Tab After Setting iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    price_page_resource.Verify Close Current Tab        ${COST POLICIES COSTS TAB NAME}

Validate Click Cost Policy Grid First Row Inline Action Button After Setting iXToolsWholesaleSolutionType To 1 For Costs
    [Tags]    REGRESSION
    Verify Click Cost Policy Grid First Row Inline Action Button

Validate Select View Price Policy Inline Action Item After Setting iXToolsWholesaleSolutionType To 1 For Costs
    [Tags]    REGRESSION
    price_page_resource.Verify Select Inline Action Item        ${COSTS INLINE ITEM}

Validate The Country Selection Criteria Field Is Available In Costs Page After Setting iXToolsWholesaleSolutionType To 1 For Inline
    [Tags]    REGRESSION
    Verify The Country Selection Criteria Field Is Available In Costs Page

Validate The Country Column Is Available In Costs Page After Setting iXToolsWholesaleSolutionType To 1 For Inline
    [Tags]    REGRESSION
    Verify The Country Column Is Available In Costs Page

Validate Close Costs Tab After Setting iXToolsWholesaleSolutionType To 1 For Inline
    [Tags]    REGRESSION
    price_page_resource.Verify Close Current Tab        ${VIEW COST POLICY TAB NAME}

Validate Navigate to Price Policies Tab After Setting iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    Verify Select Price Policies Tab

Validate Click Price Overrides Button After Setting iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    Verify Click Price Overrides Button

Validate The Country Column Is Available In Price Override Page After Setting iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    Verify The Country Column Is Available In Price Override Page

Validate Close Price Override Tab After Setting iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    price_page_resource.Verify Close Current Tab        ${PRICE OVERRIDE TAB NAME}

Validate Click Reference Prices Button Again After Setting iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    Verify Click Reference Prices Button

Validate The Country Selection Criteria Field Is Available In Reference Prices Page After Setting iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    Verify The Country Selection Criteria Field Is Available In Reference Prices Page

Validate The Country Column Is Available In Reference Prices Page After Setting iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    Verify The Country Column Is Available In Reference Prices Page

Validate Close Reference Prices Tab After Setting iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    price_page_resource.Verify Close Current Tab        ${REFERANCE PRICES TAB NAME}

Validate Click Price Policy Grid First Row Inline Action Button After Setting iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    Verify Click Price Policy Grid First Row Inline Action Button

Validate Select View Price Policy Inline Action Item After Setting iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    price_page_resource.Verify Select Inline Action Item        ${PRICE OVERRIDES INLINE ITEM}

Validate The Country Column Is Available In Price Override Page After Setting iXToolsWholesaleSolutionType To 1 For Inline
    [Tags]    REGRESSION
    Verify The Country Column Is Available In Price Override Page

Validate Close Price Override Tab After Setting iXToolsWholesaleSolutionType To 1 For Inline
    [Tags]    REGRESSION
    price_page_resource.Verify Close Current Tab        ${PRICE POLICY TAB NAME TEXT}

Validate Click Price Policy Grid First Row Inline Action Button After Setting iXToolsWholesaleSolutionType To 1 For RP
    [Tags]    REGRESSION
    Verify Click Price Policy Grid First Row Inline Action Button

Validate Select View Price Policy Inline Action Item After Setting iXToolsWholesaleSolutionType To 1 For RP
    [Tags]    REGRESSION
    price_page_resource.Verify Select Inline Action Item        ${REFERANCE PRICES INLINE ITEM}

Validate The Country Selection Criteria Field Is Available In Reference Prices Page After Setting iXToolsWholesaleSolutionType To 1 For Inline
    [Tags]    REGRESSION
    Verify The Country Selection Criteria Field Is Available In Reference Prices Page

Validate The Country Column Is Available In Reference Prices Page After Setting iXToolsWholesaleSolutionType To 1 For Inline
    [Tags]    REGRESSION
    Verify The Country Column Is Available In Reference Prices Page

Validate Close Reference Prices Tab After Setting iXToolsWholesaleSolutionType To 1 For Inline
    [Tags]    REGRESSION
    price_page_resource.Verify Close Current Tab        ${PRICE POLICY TAB NAME TEXT}

Validate Close Price Window After Setting iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to System Admin module To Set iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select System Tab To Set iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    Click on System Tab

Validate Click Configuration Variables Button To Set iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    Verify Click Configuration Variables Button

Validate Set Variable Name To Set iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    Verify Set Variable Name    iXToolsWholesaleSolutionType

Validate Click Search Button To Set iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column To Set iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        2

Validate Close System Admin Window After Setting iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to Price module After Setting iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Click Compund Reference Price List Link After Setting iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    Verify Click Compound Reference Price List Link

Validate The Country Selection Criteria Field Is Available In CRPL Page After Setting iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    Verify The Country Selection Criteria Field Is Available In CRPL Page

Validate The Country Column Is Available In CRPL Page After Setting iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    Verify The Country Column Is Available In CRPL Page

Validate Close Compound Reference Price List Tab After Setting iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    price_page_resource.Verify Close Current Tab        ${COMPOUND REFERENCE PRICE LIST TAB NAME}

Validate Click Origin Reference Price List Link After Setting iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    Verify Click Origin Reference Price List Link

Validate The Country Selection Criteria Field Is Available In ORPL Page After Setting iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    Verify The Country Selection Criteria Field Is Available In ORPL Page

Validate The Country Column Is Available In ORPL Page After Setting iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    Verify The Country Column Is Available In ORPL Page

Validate Close Origin Reference Price List Tab After Setting iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    price_page_resource.Verify Close Current Tab        ${ORIGIN REFERENCE PRICE LIST TAB NAME}

Validate Click Review Customer Price Exception Requests Link After Setting iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    Verify Click Review Customer Price Exception Requests Link

Validate The Country Selection Criteria Field Is Available In RCPER Page After Setting iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    Verify The Country Selection Criteria Field Is Available In RCPER Page

Validate The Country Column Is Available In RCPER Page After Setting iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    Verify The Country Column Is Available In RCPER Page

Validate Close Review Customer Price Exception Requests Tab After Setting iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    price_page_resource.Verify Close Current Tab        ${REVIEW PRICE EXCEPTION REQUESTS TAB NAME}

Validate Navigate to Cost Policies Tab After Setting iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    Click on Cost Policies Tab

Validate Click Costs Button After Setting iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    Verify Click Costs Button

Validate The Country Selection Criteria Field Is Available In Costs Page After Setting iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    Verify The Country Selection Criteria Field Is Available In Costs Page

Validate The Country Column Is Available In Costs Page After Setting iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    Verify The Country Column Is Available In Costs Page

Validate Close Costs Tab After Setting iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    price_page_resource.Verify Close Current Tab        ${COST POLICIES COSTS TAB NAME}

Validate Click Cost Policy Grid First Row Inline Action Button After Setting iXToolsWholesaleSolutionType To 2 For Costs
    [Tags]    REGRESSION
    Verify Click Cost Policy Grid First Row Inline Action Button

Validate Select View Price Policy Inline Action Item After Setting iXToolsWholesaleSolutionType To 2 For Costs
    [Tags]    REGRESSION
    price_page_resource.Verify Select Inline Action Item        ${COSTS INLINE ITEM}

Validate The Country Selection Criteria Field Is Available In Costs Page After Setting iXToolsWholesaleSolutionType To 2 For Inline
    [Tags]    REGRESSION
    Verify The Country Selection Criteria Field Is Available In Costs Page

Validate The Country Column Is Available In Costs Page After Setting iXToolsWholesaleSolutionType To 2 For Inline
    [Tags]    REGRESSION
    Verify The Country Column Is Available In Costs Page

Validate Close Costs Tab After Setting iXToolsWholesaleSolutionType To 2 For Inline
    [Tags]    REGRESSION
    price_page_resource.Verify Close Current Tab        ${VIEW COST POLICY TAB NAME}

Validate Navigate to Price Policies Tab After Setting iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    Verify Select Price Policies Tab

Validate Click Price Overrides Button After Setting iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    Verify Click Price Overrides Button

Validate The Country Column Is Available In Price Override Page After Setting iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    Verify The Country Column Is Available In Price Override Page

Validate Close Price Override Tab After Setting iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    price_page_resource.Verify Close Current Tab        ${PRICE OVERRIDE TAB NAME}

Validate Click Reference Prices Button Again After Setting iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    Verify Click Reference Prices Button

Validate The Country Selection Criteria Field Is Available In Reference Prices Page After Setting iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    Verify The Country Selection Criteria Field Is Available In Reference Prices Page

Validate The Country Column Is Available In Reference Prices Page After Setting iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    Verify The Country Column Is Available In Reference Prices Page

Validate Close Reference Prices Tab After Setting iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    price_page_resource.Verify Close Current Tab        ${REFERANCE PRICES TAB NAME}

Validate Click Price Policy Grid First Row Inline Action Button After Setting iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    Verify Click Price Policy Grid First Row Inline Action Button

Validate Select View Price Policy Inline Action Item After Setting iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    price_page_resource.Verify Select Inline Action Item        ${PRICE OVERRIDES INLINE ITEM}

Validate The Country Column Is Available In Price Override Page After Setting iXToolsWholesaleSolutionType To 2 For Inline
    [Tags]    REGRESSION
    Verify The Country Column Is Available In Price Override Page

Validate Close Price Override Tab After Setting iXToolsWholesaleSolutionType To 2 For Inline
    [Tags]    REGRESSION
    price_page_resource.Verify Close Current Tab        ${PRICE POLICY TAB NAME TEXT}

Validate Click Price Policy Grid First Row Inline Action Button After Setting iXToolsWholesaleSolutionType To 2 For RP
    [Tags]    REGRESSION
    Verify Click Price Policy Grid First Row Inline Action Button

Validate Select View Price Policy Inline Action Item After Setting iXToolsWholesaleSolutionType To 2 For RP
    [Tags]    REGRESSION
    price_page_resource.Verify Select Inline Action Item        ${REFERANCE PRICES INLINE ITEM}

Validate The Country Selection Criteria Field Is Available In Reference Prices Page After Setting iXToolsWholesaleSolutionType To 2 For Inline
    [Tags]    REGRESSION
    Verify The Country Selection Criteria Field Is Available In Reference Prices Page

Validate The Country Column Is Available In Reference Prices Page After Setting iXToolsWholesaleSolutionType To 2 For Inline
    [Tags]    REGRESSION
    Verify The Country Column Is Available In Reference Prices Page

Validate Close Reference Prices Tab After Setting iXToolsWholesaleSolutionType To 2 For Inline
    [Tags]    REGRESSION
    price_page_resource.Verify Close Current Tab        ${PRICE POLICY TAB NAME TEXT}

Validate Close Price Window After Setting iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to System Admin module To Set iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select System Tab To Set iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    Click on System Tab

Validate Click Configuration Variables Button To Set iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    Verify Click Configuration Variables Button

Validate Set Variable Name To Set iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    Verify Set Variable Name    iXToolsWholesaleSolutionType

Validate Click Search Button To Set iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column To Set iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        3

Validate Close System Admin Window After Setting iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to Price module After Setting iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Click Compund Reference Price List Link After Setting iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    Verify Click Compound Reference Price List Link

Validate The Country Selection Criteria Field Is Available In CRPL Page After Setting iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    Verify The Country Selection Criteria Field Is Available In CRPL Page

Validate The Country Column Is Available In CRPL Page After Setting iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    Verify The Country Column Is Available In CRPL Page

Validate Close Compound Reference Price List Tab After Setting iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    price_page_resource.Verify Close Current Tab        ${COMPOUND REFERENCE PRICE LIST TAB NAME}

Validate Click Origin Reference Price List Link After Setting iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    Verify Click Origin Reference Price List Link

Validate The Country Selection Criteria Field Is Available In ORPL Page After Setting iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    Verify The Country Selection Criteria Field Is Available In ORPL Page

Validate The Country Column Is Available In ORPL Page After Setting iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    Verify The Country Column Is Available In ORPL Page

Validate Close Origin Reference Price List Tab After Setting iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    price_page_resource.Verify Close Current Tab        ${ORIGIN REFERENCE PRICE LIST TAB NAME}

Validate Click Review Customer Price Exception Requests Link After Setting iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    Verify Click Review Customer Price Exception Requests Link

Validate The Country Selection Criteria Field Is Available In RCPER Page After Setting iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    Verify The Country Selection Criteria Field Is Available In RCPER Page

Validate The Country Column Is Available In RCPER Page After Setting iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    Verify The Country Column Is Available In RCPER Page

Validate Close Review Customer Price Exception Requests Tab After Setting iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    price_page_resource.Verify Close Current Tab        ${REVIEW PRICE EXCEPTION REQUESTS TAB NAME}

Validate Navigate to Cost Policies Tab After Setting iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    Click on Cost Policies Tab

Validate Click Costs Button After Setting iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    Verify Click Costs Button

Validate The Country Selection Criteria Field Is Available In Costs Page After Setting iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    Verify The Country Selection Criteria Field Is Available In Costs Page

Validate The Country Column Is Available In Costs Page After Setting iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    Verify The Country Column Is Available In Costs Page

Validate Close Costs Tab After Setting iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    price_page_resource.Verify Close Current Tab        ${COST POLICIES COSTS TAB NAME}

Validate Click Cost Policy Grid First Row Inline Action Button After Setting iXToolsWholesaleSolutionType To 3 For Costs
    [Tags]    REGRESSION
    Verify Click Cost Policy Grid First Row Inline Action Button

Validate Select View Price Policy Inline Action Item After Setting iXToolsWholesaleSolutionType To 3 For Costs
    [Tags]    REGRESSION
    price_page_resource.Verify Select Inline Action Item        ${COSTS INLINE ITEM}

Validate The Country Selection Criteria Field Is Available In Costs Page After Setting iXToolsWholesaleSolutionType To 3 For Inline
    [Tags]    REGRESSION
    Verify The Country Selection Criteria Field Is Available In Costs Page

Validate The Country Column Is Available In Costs Page After Setting iXToolsWholesaleSolutionType To 3 For Inline
    [Tags]    REGRESSION
    Verify The Country Column Is Available In Costs Page

Validate Close Costs Tab After Setting iXToolsWholesaleSolutionType To 3 For Inline
    [Tags]    REGRESSION
    price_page_resource.Verify Close Current Tab        ${VIEW COST POLICY TAB NAME}

Validate Navigate to Price Policies Tab After Setting iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    Verify Select Price Policies Tab

Validate Click Price Overrides Button After Setting iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    Verify Click Price Overrides Button

Validate The Country Column Is Available In Price Override Page After Setting iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    Verify The Country Column Is Available In Price Override Page

Validate Close Price Override Tab After Setting iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    price_page_resource.Verify Close Current Tab        ${PRICE OVERRIDE TAB NAME}

Validate Click Reference Prices Button Again After Setting iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    Verify Click Reference Prices Button

Validate The Country Selection Criteria Field Is Available In Reference Prices Page After Setting iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    Verify The Country Selection Criteria Field Is Available In Reference Prices Page

Validate The Country Column Is Available In Reference Prices Page After Setting iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    Verify The Country Column Is Available In Reference Prices Page

Validate Close Reference Prices Tab After Setting iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    price_page_resource.Verify Close Current Tab        ${REFERANCE PRICES TAB NAME}

Validate Click Price Policy Grid First Row Inline Action Button After Setting iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    Verify Click Price Policy Grid First Row Inline Action Button

Validate Select View Price Policy Inline Action Item After Setting iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    price_page_resource.Verify Select Inline Action Item        ${PRICE OVERRIDES INLINE ITEM}

Validate The Country Column Is Available In Price Override Page After Setting iXToolsWholesaleSolutionType To 3 For Inline
    [Tags]    REGRESSION
    Verify The Country Column Is Available In Price Override Page

Validate Close Price Override Tab After Setting iXToolsWholesaleSolutionType To 3 For Inline
    [Tags]    REGRESSION
    price_page_resource.Verify Close Current Tab        ${PRICE POLICY TAB NAME TEXT}

Validate Click Price Policy Grid First Row Inline Action Button After Setting iXToolsWholesaleSolutionType To 3 For RP
    [Tags]    REGRESSION
    Verify Click Price Policy Grid First Row Inline Action Button

Validate Select View Price Policy Inline Action Item After Setting iXToolsWholesaleSolutionType To 3 For RP
    [Tags]    REGRESSION
    price_page_resource.Verify Select Inline Action Item        ${REFERANCE PRICES INLINE ITEM}

Validate The Country Selection Criteria Field Is Available In Reference Prices Page After Setting iXToolsWholesaleSolutionType To 3 For Inline
    [Tags]    REGRESSION
    Verify The Country Selection Criteria Field Is Available In Reference Prices Page

Validate The Country Column Is Available In Reference Prices Page After Setting iXToolsWholesaleSolutionType To 3 For Inline
    [Tags]    REGRESSION
    Verify The Country Column Is Available In Reference Prices Page

Validate Close Reference Prices Tab After Setting iXToolsWholesaleSolutionType To 3 For Inline
    [Tags]    REGRESSION
    price_page_resource.Verify Close Current Tab        ${PRICE POLICY TAB NAME TEXT}

Validate Close Price Window After Setting iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to System Admin module To Set Default Value
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select System Tab To Set Default Value
    [Tags]    REGRESSION
    Click on System Tab

Validate Click Configuration Variables Button To Set Default Value
    [Tags]    REGRESSION
    Verify Click Configuration Variables Button

Validate Set Variable Name To Set Default Value
    [Tags]    REGRESSION
    Verify Set Variable Name    iXToolsWholesaleSolutionType

Validate Click Search Button To Set Default Value
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column To Set Default Value
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        1