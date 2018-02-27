*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Country Filter And Column In The Following Screen Sell

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/buy_page_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/sell_page_test_data_source.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/buy_page_test_data_source.robot

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

Validate Navigate to Sell module After Setting iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    Click On Home Icon And Select 'Sell' From Main Menu

Validate Navigate to Customer Tab After Setting iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    Click On Customer Tab

Validate Filter Customer Grid Column After Setting iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    Verify Filter Customer Grid Column

Validate Click Customer Grid Inline Action Button
    [Tags]    REGRESSION
    Verify Click Customer Grid First Row Inline Action Button

Validate Select Customer Profile Inline Action Item
    [Tags]    REGRESSION
    sell_page_resource.Verify Select Inline Action Item        ${CUSTOMER RATES INLINE ITEM}

Validate The Country Selection Criteria Field Is Available In Customer Profile Page After Setting iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    Verify The Country Selection Criteria Field Is Available In Vendor Profile Page

Validate Verify The Country Column Is Available In Customer Profile Page After Setting iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    Verify The Country Column Is Available In Vendor Profile Page

Validate Select Dialed Digits Tab After Setting iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    Verify Select Dialed Digits Tab

Validate The Country Selection Criteria Field Is Available In Customer Profile Dialed Digits Page After Setting iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    Verify The Country Selection Criteria Field Is Available In Vendor Profile Dialed Digits Page

Validate The Country Column Is Available In Customer Profile Dialed Digits Page After Setting iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    Verify The Country Column Is Available In Vendor Profile Dialed Digits Page

Validate Select Destinations Tab After Setting iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    buy_page_resource.Verify Select Destinations Tab

Validate The Country Selection Criteria Field Is Available In Customer Profile Destinations Page After Setting iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    Verify The Country Selection Criteria Field Is Available In Vendor Profile Destinations Page

Validate The Country Column Is Available In Customer Profile Destinations Page After Setting iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    Verify The Country Column Is Available In Vendor Profile Destinations Page

Validate Close Customer Profile Tab After Setting iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    sell_page_resource.Verify Close Current Tab        ${CUSTOMER PROFILE TAB NAME}

Validate Click On Customer Price Lists After Setting iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    Verify Click On Customer Price Lists Button

Validate Set 'From Date' After Setting iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    buy_page_resource.Verify Set From Date        ${FROM DATE FOR VIEW VENDOR PRICE LIST}

Validate Click On Customer Price Lists Search Button After Setting iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    Verify Click On Vendor Price Lists Search Button

Validate Click Customer Price Lists Grid First Row Inline Action Button After Setting iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    Verify Click Customer Price Lists Grid First Row Inline Action Button

Validate Select View Price List Detail Inline Action Item After Setting iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    Verify Select Buy Page Inline Action Item       ${VIEW PRICE LIST DETAIL INLINE ITEM}

Validate Click Search Rate Arrow Button After Setting iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    Verify Click Search Rate Arrow Button

Validate The Country Selection Criteria Field Is Available In View Price List Details Rate Page After Setting iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    Verify The Country Selection Criteria Field Is Available In View Price List Details Rate Page

Validate The Country Column Is Available In View Price List Details Rate Page After Setting iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    Verify The Country Column Is Available In View Price List Details Rate Page

Validate Select View Price List Dialed Digits Tab After Setting iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    Verify Select Dialed Digits Tab

Validate Click Search Dialed Digits Arrow Button After Setting iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    Verify Click Search Dialed Digits Arrow Button

Validate The Country Selection Criteria Field Is Available In View Price List Details Dialed Digits Page After Setting iXTools To 1
    [Tags]    REGRESSION
    Verify The Country Selection Criteria Field Is Available In View Price List Details Dialed Digits Page

Validate The Country Column Is Available In View Price List Details Dialed Digits Page After Setting iXTools To 1
    [Tags]    REGRESSION
    Verify The Country Column Is Available In View Price List Details Dialed Digits Page

Validate Close View Price List Details Tab After Setting iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    buy_page_resource.Verify Close Current Tab        ${VIEW PRICE LIST DETAILS TAB NAME}

Validate Select Customer Price List Grid Row Checkbox After Setting iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    Verify Select Vendor Price List Grid Row Checkbox

Validate Click Compare Price Lists Button After Setting iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    buy_page_resource.Verify Click Compare Price Lists Button

Validate The Country Selection Criteria Field Is Available In Compare Price List Pop Up After Setting iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    Verify The Country Selection Criteria Field Is Available In Compare Price List Pop Up

Validate The Country Column Is Available In Compare Price List Pop Up After Setting iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    Verify The Country Column Is Available In Compare Price List Pop Up

Validate Close Current Pop Up After Setting iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    buy_page_resource.Verify Close Current Pop Up     ${COMPARE PRICE LISTS POP UP NAME}

Validate Close Sell Window After Setting iXToolsWholesaleSolutionType To 1
    [Tags]    REGRESSION
    Verify Close Sell Window

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

Validate Navigate to Sell module After Setting iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    Click On Home Icon And Select 'Sell' From Main Menu

Validate Navigate to Customer Tab After Setting iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    Click On Customer Tab

Validate Filter Customer Grid Column After Setting iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    Verify Filter Customer Grid Column

Validate Click Customer Grid Inline Action Button After Setting iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    Verify Click Customer Grid First Row Inline Action Button

Validate Select Customer Profile Inline Action Item After Setting iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    sell_page_resource.Verify Select Inline Action Item        ${CUSTOMER RATES INLINE ITEM}

Validate The Country Selection Criteria Field Is Available In Customer Profile Page After Setting iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    Verify The Country Selection Criteria Field Is Available In Vendor Profile Page

Validate Verify The Country Column Is Available In Customer Profile Page After Setting iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    Verify The Country Column Is Available In Vendor Profile Page

Validate Select Mcc Mnc Tab After Setting iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    Verify Select Mcc Mnc Tab

Validate The Country Selection Criteria Field Is Available In Customer Profile Dialed Digits Page After Setting iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    Verify The Country Selection Criteria Field Is Available In Vendor Profile Dialed Digits Page

Validate The Country Column Is Available In Customer Profile Dialed Digits Page After Setting iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    Verify The Country Column Is Available In Vendor Profile Dialed Digits Page

Validate Select Destinations Tab After Setting iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    buy_page_resource.Verify Select Destinations Tab

Validate The Country Selection Criteria Field Is Available In Customer Profile Destinations Page After Setting iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    Verify The Country Selection Criteria Field Is Available In Vendor Profile Destinations Page

Validate The Country Column Is Available In Customer Profile Destinations Page After Setting iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    Verify The Country Column Is Available In Vendor Profile Destinations Page

Validate Close Customer Profile Tab After Setting iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    sell_page_resource.Verify Close Current Tab        ${CUSTOMER PROFILE TAB NAME}

Validate Click On Customer Price Lists After Setting iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    Verify Click On Customer Price Lists Button

Validate Set 'From Date' After Setting iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    buy_page_resource.Verify Set From Date        ${FROM DATE FOR VIEW VENDOR PRICE LIST}

Validate Click On Customer Price Lists Search Button After Setting iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    Verify Click On Vendor Price Lists Search Button

Validate Click Customer Price Lists Grid First Row Inline Action Button After Setting iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    Verify Click Customer Price Lists Grid First Row Inline Action Button

Validate Select View Price List Detail Inline Action Item After Setting iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    Verify Select Buy Page Inline Action Item       ${VIEW PRICE LIST DETAIL INLINE ITEM}

Validate Click Search Rate Arrow Button After Setting iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    Verify Click Search Rate Arrow Button

Validate The Country Selection Criteria Field Is Available In View Price List Details Rate Page After Setting iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    Verify The Country Selection Criteria Field Is Available In View Price List Details Rate Page

Validate The Country Column Is Available In View Price List Details Rate Page After Setting iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    Verify The Country Column Is Available In View Price List Details Rate Page

Validate Select View Price List Mcc Mnc Tab After Setting iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    Verify Select Mcc Mnc Tab

Validate Click Search Mcc Mnc Arrow Button After Setting iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    Verify Click Search Mcc Mnc Arrow Button

Validate The Country Selection Criteria Field Is Available In View Price List Details Dialed Digits Page After Setting iXTools To 2
    [Tags]    REGRESSION
    Verify The Country Selection Criteria Field Is Available In View Price List Details Dialed Digits Page

Validate The Country Column Is Available In View Price List Details Dialed Digits Page After Setting iXTools To 2
    [Tags]    REGRESSION
    Verify The Country Column Is Available In View Price List Details Dialed Digits Page

Validate Close View Price List Details Tab After Setting iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    buy_page_resource.Verify Close Current Tab        ${VIEW PRICE LIST DETAILS TAB NAME}

Validate Select Customer Price List Grid Row Checkbox After Setting iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    Verify Select Vendor Price List Grid Row Checkbox

Validate Click Compare Price Lists Button After Setting iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    buy_page_resource.Verify Click Compare Price Lists Button

Validate The Country Selection Criteria Field Is Available In Compare Price List Pop Up After Setting iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    Verify The Country Selection Criteria Field Is Available In Compare Price List Pop Up

Validate The Country Column Is Available In Compare Price List Pop Up After Setting iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    Verify The Country Column Is Available In Compare Price List Pop Up

Validate Close Current Pop Up After Setting iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    buy_page_resource.Verify Close Current Pop Up     ${COMPARE PRICE LISTS POP UP NAME}

Validate Close Sell Window After Setting iXToolsWholesaleSolutionType To 2
    [Tags]    REGRESSION
    Verify Close Sell Window

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

Validate Navigate to Sell module After Setting iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    Click On Home Icon And Select 'Sell' From Main Menu

Validate Navigate to Customer Tab After Setting iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    Click On Customer Tab

Validate Filter Customer Grid Column After Setting iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    Verify Filter Customer Grid Column

Validate Click Customer Grid Inline Action Button After Setting iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    Verify Click Customer Grid First Row Inline Action Button

Validate Select Customer Profile Inline Action Item After Setting iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    sell_page_resource.Verify Select Inline Action Item        ${CUSTOMER RATES INLINE ITEM}

Validate The Country Selection Criteria Field Is Available In Customer Profile Page After Setting iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    Verify The Country Selection Criteria Field Is Available In Vendor Profile Page

Validate Verify The Country Column Is Available In Customer Profile Page After Setting iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    Verify The Country Column Is Available In Vendor Profile Page

Validate Select Dialed Digits Tab After Setting iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    Verify Select Dialed Digits Tab

Validate The Country Selection Criteria Field Is Available In Customer Profile Dialed Digits Page After Setting iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    Verify The Country Selection Criteria Field Is Available In Vendor Profile Dialed Digits Page

Validate The Country Column Is Available In Customer Profile Dialed Digits Page After Setting iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    Verify The Country Column Is Available In Vendor Profile Dialed Digits Page

Validate Select Destinations Tab After Setting iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    buy_page_resource.Verify Select Destinations Tab

Validate The Country Selection Criteria Field Is Available In Customer Profile Destinations Page After Setting iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    Verify The Country Selection Criteria Field Is Available In Vendor Profile Destinations Page

Validate The Country Column Is Available In Customer Profile Destinations Page After Setting iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    Verify The Country Column Is Available In Vendor Profile Destinations Page

Validate Close Customer Profile Tab After Setting iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    sell_page_resource.Verify Close Current Tab        ${CUSTOMER PROFILE TAB NAME}

Validate Click On Customer Price Lists After Setting iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    Verify Click On Customer Price Lists Button

Validate Set 'From Date' After Setting iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    buy_page_resource.Verify Set From Date        ${FROM DATE FOR VIEW VENDOR PRICE LIST}

Validate Click On Customer Price Lists Search Button After Setting iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    Verify Click On Vendor Price Lists Search Button

Validate Click Customer Price Lists Grid First Row Inline Action Button After Setting iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    Verify Click Customer Price Lists Grid First Row Inline Action Button

Validate Select View Price List Detail Inline Action Item After Setting iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    Verify Select Buy Page Inline Action Item       ${VIEW PRICE LIST DETAIL INLINE ITEM}

Validate Click Search Rate Arrow Button After Setting iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    Verify Click Search Rate Arrow Button

Validate The Country Selection Criteria Field Is Available In View Price List Details Rate Page After Setting iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    Verify The Country Selection Criteria Field Is Available In View Price List Details Rate Page

Validate The Country Column Is Available In View Price List Details Rate Page After Setting iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    Verify The Country Column Is Available In View Price List Details Rate Page

Validate Select View Price List Dialed Digits Tab After Setting iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    Verify Select Dialed Digits Tab

Validate Click Search Dialed Digits Arrow Button After Setting iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    Verify Click Search Dialed Digits Arrow Button

Validate The Country Selection Criteria Field Is Available In View Price List Details Dialed Digits Page After Setting iXTools To 3
    [Tags]    REGRESSION
    Verify The Country Selection Criteria Field Is Available In View Price List Details Dialed Digits Page

Validate The Country Column Is Available In View Price List Details Dialed Digits Page After Setting iXTools To 3
    [Tags]    REGRESSION
    Verify The Country Column Is Available In View Price List Details Dialed Digits Page

Validate Close View Price List Details Tab After Setting iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    buy_page_resource.Verify Close Current Tab        ${VIEW PRICE LIST DETAILS TAB NAME}

Validate Select Customer Price List Grid Row Checkbox After Setting iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    Verify Select Vendor Price List Grid Row Checkbox

Validate Click Compare Price Lists Button After Setting iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    buy_page_resource.Verify Click Compare Price Lists Button

Validate The Country Selection Criteria Field Is Available In Compare Price List Pop Up After Setting iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    Verify The Country Selection Criteria Field Is Available In Compare Price List Pop Up

Validate The Country Column Is Available In Compare Price List Pop Up After Setting iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    Verify The Country Column Is Available In Compare Price List Pop Up

Validate Close Current Pop Up After Setting iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    buy_page_resource.Verify Close Current Pop Up     ${COMPARE PRICE LISTS POP UP NAME}

Validate Close Sell Window After Setting iXToolsWholesaleSolutionType To 3
    [Tags]    REGRESSION
    Verify Close Sell Window