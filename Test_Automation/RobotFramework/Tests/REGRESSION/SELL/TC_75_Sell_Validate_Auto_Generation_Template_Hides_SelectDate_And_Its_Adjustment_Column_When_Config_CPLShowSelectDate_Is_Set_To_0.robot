*** Settings ***
Documentation     [TAENOSIS-978] A Test Suite With Set Of Tests To Validate Auto Generation Template Hides SelectDate And Its Adjustment Column When Config CPLShowSelectDate Is Set TO 0

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${MY PRICE LIST}        ${EMPTY}

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

Validate Set Variable Name
    [Tags]    REGRESSION
    Verify Set Variable Name    CPLShowSelectDate

Validate Click Configuration Variables Grid Search Button
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        1

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

Validate Click My Price List Button
    [Tags]     REGRESSION
    Verify Click My Price List Button

Validate The Specific Column Present In MyPriceList Grid
    [Tags]    REGRESSION
    Verify The Specific Column Present In MyPriceList Grid      Select Date

Validate Click New My Price List Button
    [Tags]     REGRESSION
    Verify Click New My Price List Button

Validate The Specific Field Present In MyPriceList Page
    [Tags]    REGRESSION
    Verify The Specific Field Present In MyPriceList Page       Select Date

Validate Close Sell Module
    [Tags]    REGRESSION
    Verify Close Sell Window

Validate Navigate to System Admin module To Set CPLShowSelectDate As 0
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select System Tab To Set CPLShowSelectDate As 0
    [Tags]    REGRESSION
    Click on System Tab

Validate Click Configuration Variables Button To Set CPLShowSelectDate As 0
    [Tags]    REGRESSION
    Verify Click Configuration Variables Button

Validate Set Variable Name To Set CPLShowSelectDate As 0
    [Tags]    REGRESSION
    Verify Set Variable Name    CPLShowSelectDate

Validate Click Configuration Variables Grid Search Button To Set CPLShowSelectDate As 0
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column To Set CPLShowSelectDate As 0
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        0

Validate Close System Admin Window After Setting CPLShowSelectDate As 0
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to Sell module After Setting CPLShowSelectDate As 0
    [Tags]    REGRESSION
    Click On Home Icon And Select 'Sell' From Main Menu

Validate Navigate to Customer Tab After Setting CPLShowSelectDate As 0
    [Tags]    REGRESSION
    Click On Customer Tab

Validate Click Customer Price Lists Button After Setting CPLShowSelectDate As 0
    [Tags]     REGRESSION
    Verify Click Create Customer Price Lists Button

Validate Create Customer Price Lists Screen Displayed After Setting CPLShowSelectDate As 0
    [Tags]     REGRESSION
    Verify Create Customer Price Lists Screen Loaded

Validate Click My Price List Button After Setting CPLShowSelectDate As 0
    [Tags]     REGRESSION
    Verify Click My Price List Button

Validate My Price List Screen Loaded Properly After Setting CPLShowSelectDate As 0
    [Tags]     REGRESSION
    Verify My Price List Screen Loaded

Validate Click New My Price List Button After Setting CPLShowSelectDate As 0
    [Tags]     REGRESSION
    Verify Click New My Price List Button

Validate Create My Price List Screen Loaded After Setting CPLShowSelectDate As 0
    [Tags]     REGRESSION
    Verify Create My Price List Screen Loaded

Validate Set My Price List After Setting CPLShowSelectDate As 0
    [Tags]     REGRESSION
    Verify Set My Price List        ${TEST DATA PREFIX}

Validate Get My Price List After Setting CPLShowSelectDate As 0
    [Tags]     REGRESSION
    ${MY PRICE LIST} =      Verify Get My Price List
    set suite variable      ${MY PRICE LIST}

Validate Move All Available Customers To Destination To Create My Price List After Setting CPLShowSelectDate As 0
    [Tags]     REGRESSION
    Verify Move All Available Customers To Destination To Create My Price List

Validate Move All Available Countries To Destination To Create My Price List After Setting CPLShowSelectDate As 0
    [Tags]     REGRESSION
    Verify Move All Available Countries To Destination To Create My Price List

Validate Click Save My Price List Button After Setting CPLShowSelectDate As 0
    [Tags]     REGRESSION
    Verify Click Save My Price List Button

Validate Close My Price List Detials Pop Up After Creating My Price List After Setting CPLShowSelectDate As 0
    [Tags]     REGRESSION
    sell_page_resource.Verify Close Current Tab    myPriceList Details

Validate Set My Price List To Perform Search Operation After Setting CPLShowSelectDate As 0
    [Tags]     REGRESSION
    Verify Set My Price List Into Search Input Field        ${MY PRICE LIST}

Validate Search My Price List
    [Tags]     REGRESSION
    sell_page_resource.Verify Click Search Button

Validate Compare MyPriceList Value
    [Tags]    REGRESSION
    Verify Compare MyPriceList Value        ${MY PRICE LIST}

Validate Close Sell Module After Setting CPLShowSelectDate As 0
    [Tags]    REGRESSION
    Verify Close Sell Window

Validate Navigate to System Admin module To Reset CPLShowSelectDate
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select System Tab To Reset CPLShowSelectDate
    [Tags]    REGRESSION
    Click on System Tab

Validate Click Configuration Variables Button To Reset CPLShowSelectDate
    [Tags]    REGRESSION
    Verify Click Configuration Variables Button

Validate Set Variable Name To Reset CPLShowSelectDate
    [Tags]    REGRESSION
    Verify Set Variable Name    CPLShowSelectDate

Validate Click Configuration Variables Grid Search Button To Reset CPLShowSelectDate
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column To Reset CPLShowSelectDate
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        1