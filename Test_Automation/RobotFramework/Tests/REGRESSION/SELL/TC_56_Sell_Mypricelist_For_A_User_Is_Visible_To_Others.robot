*** Settings ***
Documentation     [TAENOSIS-792] A Test Suite With Set Of Tests To Validate Mypricelist For A USer Is Visible To Others

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/system_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${NEW USER NAME}       ${EMPTY}
${MY PRICE LIST}    ${EMPTY}
${ALL USERS MY PRICE LIST}      ${EMPTY}

*** Test Cases ***
Validate Navigate to System Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select Users Tab
    [Tags]    REGRESSION
    Click on Users Tab

Validate Click New User Button
    [Tags]    REGRESSION
    Verify Click New User Button

Validate Set User Name
    [Tags]    REGRESSION
    Verify Set User Name        ${TEST DATA PREFIX}

Validate Set First Name
    [Tags]    REGRESSION
    Verify Set First Name       ${TEST DATA PREFIX}

Validate Set Last Name
    [Tags]    REGRESSION
    Verify Set Last Name       ${TEST DATA PREFIX}

Validate Set Security Profile
    [Tags]    REGRESSION
    Verify Set Security Profile     ${NEW USER SECURITY PROFILE}

Validate Set User Status
    [Tags]    REGRESSION
    Verify Set User Status      ${NEW USER ACTIVE STATUS}

Validate Set Reports To
    [Tags]    REGRESSION
    Verify Set Reports To       ${NEW USER REPORTS TO}

Validate Set Password
    [Tags]    REGRESSION
    Verify Set Password     ${NEW USER PASSWORD}

Validate Set Confirm Password
    [Tags]    REGRESSION
    Verify Set Confirm Password     ${NEW USER PASSWORD}

Validate Set Primary Email
    [Tags]    REGRESSION
    Verify Set Primary Email        ${NEW USER PRIMARY EMAIL}

Validate Click Save And Create New Button
    [Tags]    REGRESSION
    Verify Click Save And Create New Button

Validate Get User Name
   [Tags]    REGRESSION
    ${NEW USER NAME} =    Verify Get User Name
    log   ${NEW USER NAME}
    set suite variable      ${NEW USER NAME}

Validate Close Create New User Pop Up
    [Tags]    REGRESSION
    Verify Close Create New User Pop Up

Validate Close System Admin Window
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to Sell module
    [Tags]    REGRESSION
    Click On Home Icon And Select 'Sell' From Main Menu

Validate Navigate to Customer Tab
    [Tags]    REGRESSION
    Click On Customer Tab

Validate Click Customer Price Lists Button
    [Tags]     REGRESSION
    Verify Click Create Customer Price Lists Button

Validate Create Customer Price Lists Screen Displayed
    [Tags]     REGRESSION
    Verify Create Customer Price Lists Screen Loaded

Validate Click My Price List Button
    [Tags]     REGRESSION
    Verify Click My Price List Button

Validate My Price List Screen Loaded Properly
    [Tags]     REGRESSION
    Verify My Price List Screen Loaded

Validate Click New My Price List Button
    [Tags]     REGRESSION
    Verify Click New My Price List Button

Validate Create My Price List Screen Loaded
    [Tags]     REGRESSION
    Verify Create My Price List Screen Loaded

Validate Set My Price List
    [Tags]     REGRESSION
    Verify Set My Price List        ${TEST DATA PREFIX}

Validate Get My Price List
    [Tags]     REGRESSION
    ${MY PRICE LIST} =      Verify Get My Price List
    set suite variable      ${MY PRICE LIST}

Validate Move All Available Customers To Destination To Create My Price List
    [Tags]     REGRESSION
    Verify Move All Available Customers To Destination To Create My Price List

Validate Move All Available Countries To Destination To Create My Price List
    [Tags]     REGRESSION
    Verify Move All Available Countries To Destination To Create My Price List

Validate Click Save My Price List Button
    [Tags]     REGRESSION
    Verify Click Save My Price List Button

Validate Close My Price List Detials Pop Up After Creating My Price List
    [Tags]     REGRESSION
    sell_page_resource.Verify Close Current Tab    myPriceList Details

Validate Set My Price List To Perform Search Operation
    [Tags]     REGRESSION
    Verify Set My Price List Into Search Input Field        ${MY PRICE LIST}

Validate Search My Price List
    [Tags]     REGRESSION
    sell_page_resource.Verify Click Search Button

Validate Compare MyPriceList Value
    [Tags]    REGRESSION
    Verify Compare MyPriceList Value        ${MY PRICE LIST}

Validate Sign Out From System Admin Module
    [Tags]    REGRESSION
    Verify Log Out

Validate Login With Valid Credential To Reset Password
    [Tags]    REGRESSION
    Verify Submit Credentials      ${NEW USER NAME}       ${NEW USER PASSWORD}

Validate Reset Password
    [Tags]    REGRESSION
    Verify Reset Password       ${NEW USER PASSWORD}     ${NEW USER PASSWORD FOR RESET}

Validate Login With Valid Credential
    [Tags]    REGRESSION
    Submit Credentials      ${NEW USER NAME}       ${NEW USER PASSWORD FOR RESET}

Validate Navigate to Sell module To Verify Current User MyPriceList
    [Tags]    REGRESSION
    Click On Home Icon And Select 'Sell' From Main Menu

Validate Navigate to Customer Tab To Verify Current User MyPriceList
    [Tags]    REGRESSION
    Click On Customer Tab

Validate Click Customer Price Lists Button To Verify Current User MyPriceList
    [Tags]     REGRESSION
    Verify Click Create Customer Price Lists Button

Validate Click My Price List Button To Verify Current User MyPriceList
    [Tags]     REGRESSION
    Verify Click My Price List Button

Validate Set My Price List To Verify Current User MyPriceList
    [Tags]     REGRESSION
    Verify Set My Price List Into Search Input Field        ${MY PRICE LIST}

Validate Search My Price List To Verify Current User MyPriceList
    [Tags]     REGRESSION
    sell_page_resource.Verify Click Search Button

Validate No Search Results Displayed In The Grid
    [Tags]    REGRESSION
    sell_page_resource.Verify The Grid is Empty

Validate Sign Out After Verifying Current User MyPriceList
    [Tags]    REGRESSION
    Verify Log Out

Validate Login With Valid Previous Credential
    [Tags]    REGRESSION
    Validate Login Functionality With Valid Credential

Validate Navigate to Sell module To Create All Users MyPriceList
    [Tags]    REGRESSION
    Click On Home Icon And Select 'Sell' From Main Menu

Validate Navigate to Customer Tab To Create All Users MyPriceList
    [Tags]    REGRESSION
    Click On Customer Tab

Validate Click Customer Price Lists Button To Create All Users MyPriceList
    [Tags]     REGRESSION
    Verify Click Create Customer Price Lists Button

Validate Create Customer Price Lists Screen Displayed To Create All Users MyPriceList
    [Tags]     REGRESSION
    Verify Create Customer Price Lists Screen Loaded

Validate Click My Price List Button To Create All Users MyPriceList
    [Tags]     REGRESSION
    Verify Click My Price List Button

Validate My Price List Screen Loaded Properly To Create All Users MyPriceList
    [Tags]     REGRESSION
    Verify My Price List Screen Loaded

Validate Click New My Price List Button To Create All Users MyPriceList
    [Tags]     REGRESSION
    Verify Click New My Price List Button

Validate Create My Price List Screen Loaded To Create All Users MyPriceList
    [Tags]     REGRESSION
    Verify Create My Price List Screen Loaded

Validate Set My Price List To Create All Users MyPriceList
    [Tags]     REGRESSION
    Verify Set My Price List        ${TEST DATA PREFIX}

Validate Set Scope For MypriceList
    [Tags]    REGRESSION
    Verify Set Scope For MypriceList        All Users

Validate Get My Price List To Create All Users MyPriceList
    [Tags]     REGRESSION
    ${ALL USERS MY PRICE LIST} =      Verify Get My Price List
    set suite variable      ${ALL USERS MY PRICE LIST}

Validate Move All Available Customers To Destination To Create My Price List To Create All Users MyPriceList
    [Tags]     REGRESSION
    Verify Move All Available Customers To Destination To Create My Price List

Validate Move All Available Countries To Destination To Create My Price List To Create All Users MyPriceList
    [Tags]     REGRESSION
    Verify Move All Available Countries To Destination To Create My Price List

Validate Click Save My Price List Button To Create All Users MyPriceList
    [Tags]     REGRESSION
    Verify Click Save My Price List Button

Validate Sign Out To Verify All Users MyPriceList
    [Tags]    REGRESSION
    Verify Log Out

Validate Login With Valid Credential To Verify All Users MyPriceList
    [Tags]    REGRESSION
    Submit Credentials      ${NEW USER NAME}       ${NEW USER PASSWORD FOR RESET}

Validate Navigate to Sell module To Verify All Users MyPriceList
    [Tags]    REGRESSION
    Click On Home Icon And Select 'Sell' From Main Menu

Validate Navigate to Customer Tab To Verify All Users MyPriceList
    [Tags]    REGRESSION
    Click On Customer Tab

Validate Click Customer Price Lists Button To Verify All Users MyPriceList
    [Tags]     REGRESSION
    Verify Click Create Customer Price Lists Button

Validate Click My Price List Button To Verify All Users MyPriceList
    [Tags]     REGRESSION
    Verify Click My Price List Button

Validate Set My Price List To Verify All Users MyPriceList
    [Tags]     REGRESSION
    Verify Set My Price List Into Search Input Field        ${ALL USERS MY PRICE LIST}

Validate Search My Price List To Verify All Users MyPriceList
    [Tags]     REGRESSION
    sell_page_resource.Verify Click Search Button

Validate Compare All Users MyPriceList Value
    [Tags]    REGRESSION
    Verify Compare MyPriceList Value        ${ALL USERS MY PRICE LIST}