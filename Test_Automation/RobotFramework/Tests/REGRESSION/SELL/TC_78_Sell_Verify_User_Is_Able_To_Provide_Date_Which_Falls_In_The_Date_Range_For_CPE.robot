*** Settings ***
Documentation     [TAENOSIS-833] Verify user is able to provide date which falls in the date range for CPE

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/system_admin_page_test_data_source.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/price_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${NEW USER NAME}        ${EMPTY}
${CREATED CUSTOMER NAME}        ${EMPTY}

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
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        1

Validate Set Variable Name For BackDatePricingExceptiondays
    [Tags]    REGRESSION
    Verify Set Variable Name    backDatePricingExceptiondays

Validate Click Configuration Variables Grid Search Button For backDatePricingExceptiondays
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Update Value In Current Value Column
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        1

Validate Sign Out From System Admin
    [Tags]    REGRESSION
    Validate Log Out Functionality

Validate Login With Valid Credential
    [Tags]    REGRESSION
    Validate Login Functionality With Valid Credential

Validate Navigate to System Admin module After Change Configuration
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select Users Tab
    [Tags]    REGRESSION
    Click on Users Tab

Validate Click Security Profile Button
    [Tags]    REGRESSION
    Verify Click Security Profile Button

Validate Filter Profiles Grid With Profile Name
    [Tags]    REGRESSION
    Verify Filter Profiles Grid With Profile Name       ${PROFILE COLUMN NAME}     ${NEW USER SECURITY PROFILE}

Validate Click Profile Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Profile Grid First Row Inline Action Button

Validate Select View/Edit Profile Inline Action Item
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Select Inline Action Item        ${VIEW EDIT PROFILE INLINE ITEM}

Validate Assign All Level2 Roles To Profile
    [Tags]    REGRESSION
    Verify Assign All Level2 Roles To Profile

Validate UnAssign All Level2 Roles To Profile
    [Tags]    REGRESSION
    Verify Unassign Level2 Roles To Profile         @{USER SELL OVERRIDE LEVEL2 ROLE LIST}

Validate Click View Edit Profile Save Button
    [Tags]    REGRESSION
    Verify Click View Edit Profile Save Button

Validate Close Profile Management Tab
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Close Current Tab     ${PROFILE MANAGEMENT TAB NAME}

Validate Sign Out From System Admin After UnAssinging Completed
    [Tags]    REGRESSION
    Validate Log Out Functionality

Validate Login With Valid Credential After UnAssinging Completed
    [Tags]    REGRESSION
    Validate Login Functionality With Valid Credential

Validate Navigate to Sell module
    [Tags]    REGRESSION
    Click On Home Icon And Select 'Sell' From Main Menu

Validate Navigate to Customer Tab
    [Tags]    REGRESSION
    Click On Customer Tab

Validate Click Price Exceptions Button
    [Tags]    REGRESSION
    Verify Click Price Exceptions Button

Validate Verify Get Created Customer Name
    [Tags]    REGRESSION
    ${CREATED CUSTOMER NAME} =       Verify Get Created Customer Name
    set suite variable      ${CREATED CUSTOMER NAME}

Validate Set Number Plan For Price Exceptions
    [Tags]    REGRESSION
    Verify Set Number Plan For Price Exceptions     Outbound Ref.        ${True}

Validate Set Customers
    [Tags]    REGRESSION
    Verify Set Customers        ${CREATED CUSTOMER NAME}

Validate Set Status For Not Entered
    [Tags]    REGRESSION
    sell_page_resource.Verify Set Status    Not Entered

Validate Click Price Exceptions Search Button
    [Tags]    REGRESSION
    sell_page_resource.Verify Click Price Exceptions Search Button

Validate Set Requested Price
    [Tags]    REGRESSION
    Verify Set First Row Requested Price        50

Validate Price Exception Grid Begin Date Field is Auto Populated
    [Tags]    REGRESSION
    Verify Price Exception Grid Begin Date Field is Auto Populated

Validate Click Save Changes Button
    [Tags]    REGRESSION
    sell_page_resource.Verify Click Save Changes Button

Validate Close Sell Window
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to System Admin module To Set ForwarddatePricingexceptiondays
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select System Tab To Set ForwarddatePricingexceptiondays
    [Tags]    REGRESSION
    Click on System Tab

Validate Click Configuration Variables Button To Set ForwarddatePricingexceptiondays
    [Tags]    REGRESSION
    Verify Click Configuration Variables Button

Validate Set Variable Name For EnableSaaSGranularRoles To Set ForwarddatePricingexceptiondays
    [Tags]    REGRESSION
    Verify Set Variable Name    ForwarddatePricingexceptiondays

Validate Click Configuration Variables Grid Search Button For ForwarddatePricingexceptiondays
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column For ForwarddatePricingexceptiondays
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        10

Validate Sign Out From System Admin After Updating ForwarddatePricingexceptiondays
    [Tags]    REGRESSION
    Validate Log Out Functionality

Validate Login With Valid Credential After Updating ForwarddatePricingexceptiondays
    [Tags]    REGRESSION
    Validate Login Functionality With Valid Credential

Validate Navigate to Sell module After Updating ForwarddatePricingexceptiondays
    [Tags]    REGRESSION
    Click On Home Icon And Select 'Sell' From Main Menu

Validate Navigate to Customer Tab After Updating ForwarddatePricingexceptiondays
    [Tags]    REGRESSION
    Click On Customer Tab

Validate Click Price Exceptions Button After Updating ForwarddatePricingexceptiondays
    [Tags]    REGRESSION
    Verify Click Price Exceptions Button

Validate Set Number Plan For Price Exceptions After Updating ForwarddatePricingexceptiondays
    [Tags]    REGRESSION
    Verify Set Number Plan For Price Exceptions     Outbound Ref.        ${True}

Validate Set Customers After Updating ForwarddatePricingexceptiondays
    [Tags]    REGRESSION
    Verify Set Customers        ${CREATED CUSTOMER NAME}

Validate Set Status For Not Entered After Updating ForwarddatePricingexceptiondays
    [Tags]    REGRESSION
    sell_page_resource.Verify Set Status    Not Entered

Validate Click Price Exceptions Search Button After Updating ForwarddatePricingexceptiondays
    [Tags]    REGRESSION
    sell_page_resource.Verify Click Price Exceptions Search Button

Validate Set Requested Price After Updating ForwarddatePricingexceptiondays
    [Tags]    REGRESSION
    Verify Set First Row Requested Price        50

Validate Price Exception Grid Begin Date Field is Auto Populated After Updating ForwarddatePricingexceptiondays
    [Tags]    REGRESSION
    Verify Price Exception Grid Begin Date Field is Auto Populated

Validate Set Price Exception Grid Begin Date
    [Tags]    REGRESSION
    Verify Set Price Exception Grid Begin Date      ${True}

Validate Click Save Changes Button To Validate Error Message
    [Tags]    REGRESSION
    Verify Click Save Changes Button For Copy Price Exceptions

Validate The Error Message is Appeared
    [Tags]    REGRESSION
    Verify Pricing Exception Grid Error Message is Appeared

Validate Click Price Exception Grid First Row Info Icon
    [Tags]    REGRESSION
    Verify Click Price Exception Grid First Row Info Icon

Validate Date Range Error Message
    [Tags]    REGRESSION
    Verify Date Range Error Message

Validate Navigate to System Admin module To Set CPEBeginDateRPLValidation
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select System Tab To Set CPEBeginDateRPLValidation
    [Tags]    REGRESSION
    Click on System Tab

Validate Click Configuration Variables Button To Set CPEBeginDateRPLValidation
    [Tags]    REGRESSION
    Verify Click Configuration Variables Button

Validate Set Variable Name For EnableSaaSGranularRoles To Set CPEBeginDateRPLValidation
    [Tags]    REGRESSION
    Verify Set Variable Name    CPEBeginDateRPLValidation

Validate Click Configuration Variables Grid Search Button For CPEBeginDateRPLValidation
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column For CPEBeginDateRPLValidation
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        1

Validate Sign Out From System Admin After Updating CPEBeginDateRPLValidation
    [Tags]    REGRESSION
    Validate Log Out Functionality

Validate Login With Valid Credential After Updating CPEBeginDateRPLValidation
    [Tags]    REGRESSION
    Validate Login Functionality With Valid Credential

Validate Navigate to Price module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Navigate to Price Policies Tab
    [Tags]    REGRESSION
    Verify Select Price Policies Tab

Validate Get Created Price Policy Name
    [Tags]    REGRESSION
    Verify Get Created Cost Policy Name

Validate Filter Price Policy Grid With Created New Cost Policy
    [Tags]    REGRESSION
    Verify Filter Cost Policy Grid     ${PRICE POLICY COLUMN NAME}

Validate Select Price Policies Grid Row Checkbox
    [Tags]  REGRESSION
    Verify Select Price Policies Grid Row Checkbox

Validate Click Reference Prices Button
    [Tags]    REGRESSION
    Verify Click Reference Prices Button

Validate Select Status For Reference Prices Search
    [Tags]    REGRESSION
    Verify Select Status For Reference Prices Search        @{REFERENCE PRICE STATUS LIST FOR REJECT}

Validate Click Reference Prices Search Button
    [Tags]    REGRESSION
    Verify Click Reference Prices Search Button

Validate Set Status For Reference Prices
    [Tags]    REGRESSION
    Verify Set Status For Reference Prices      ${APPROVED STATUS}

Validate Click Custom Rule Yes Radio Button
    [Tags]    REGRESSION
    Verify Click Custom Rule Yes Radio Button

Validate Click Reference Prices Save Changes Button
    [Tags]    REGRESSION
    Verify Click Reference Prices Save Changes Button

Validate Close Price Window
    [Tags]    REGRESSION
    Verify Close Price Window

Validate Navigate to Sell module After Setting RPL Status To Approved
    [Tags]    REGRESSION
    Click On Home Icon And Select 'Sell' From Main Menu

Validate Navigate to Customer Tab After Setting RPL Status To Approved
    [Tags]    REGRESSION
    Click On Customer Tab

Validate Click Price Exceptions Button After Setting RPL Status To Approved
    [Tags]    REGRESSION
    Verify Click Price Exceptions Button

Validate Set Number Plan For Price Exceptions After Setting RPL Status To Approved
    [Tags]    REGRESSION
    Verify Set Number Plan For Price Exceptions     Outbound Ref.        ${True}

Validate Set Customers After Setting RPL Status To Approved
    [Tags]    REGRESSION
    Verify Set Customers        ${CREATED CUSTOMER NAME}

Validate Set Status For Not Entered After Setting RPL Status To Approved
    [Tags]    REGRESSION
    sell_page_resource.Verify Set Status    Not Entered

Validate Click Price Exceptions Search Button After Setting RPL Status To Approved
    [Tags]    REGRESSION
    sell_page_resource.Verify Click Price Exceptions Search Button

Validate Set Requested Price After Setting RPL Status To Approved
    [Tags]    REGRESSION
    Verify Set First Row Requested Price        50

Validate Price Exception Grid Begin Date Field is Auto Populated After Setting RPL Status To Approved
    [Tags]    REGRESSION
    Verify Price Exception Grid Begin Date Field is Auto Populated

Validate Set Price Exception Grid Begin Date As Current Date
    [Tags]    REGRESSION
    Verify Set Price Exception Grid Begin Date      ${False}        ${False}        ${True}

Validate Click Save Changes Button After Setting RPL Status To Approved
    [Tags]    REGRESSION
    sell_page_resource.Verify Click Save Changes Button

Validate Close Sell Window After Checking All
    [Tags]    REGRESSION
    Verify Close Sell Window

Validate Navigate to System Admin module To Reset All Level2 Role
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select Users Tab To Reset All Level2 Role
    [Tags]    REGRESSION
    Click on Users Tab

Validate Click Security Profile Button To Reset All Level2 Role
    [Tags]    REGRESSION
    Verify Click Security Profile Button

Validate Filter Profiles Grid With Profile Name To Reset All Level2 Role
    [Tags]    REGRESSION
    Verify Filter Profiles Grid With Profile Name       ${PROFILE COLUMN NAME}     ${NEW USER SECURITY PROFILE}

Validate Click Profile Grid First Row Inline Action Button To Reset All Level2 Role
    [Tags]    REGRESSION
    Verify Click Profile Grid First Row Inline Action Button

Validate Select View/Edit Profile Inline Action Item To Reset All Level2 Role
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Select Inline Action Item        ${VIEW EDIT PROFILE INLINE ITEM}

Validate Assign All Level2 Roles To Profile To Reset All Level2 Role
    [Tags]    REGRESSION
    Verify Assign All Level2 Roles To Profile

Validate Assign All Level2 Roles To Profile To Reset All Level2 Role
    [Tags]    REGRESSION
    Verify Unassign Level2 Roles To Profile         @{USER SELL OVERRIDE LEVEL2 ROLE LIST}

Validate Click View Edit Profile Save Button To Reset All Level2 Role
    [Tags]    REGRESSION
    Verify Click View Edit Profile Save Button

Validate Close Profile Management Tab After Resetting All Level2 Role
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Close Current Tab     ${PROFILE MANAGEMENT TAB NAME}