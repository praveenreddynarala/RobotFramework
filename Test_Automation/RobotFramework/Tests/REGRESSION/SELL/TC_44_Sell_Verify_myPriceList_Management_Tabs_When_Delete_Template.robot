*** Settings ***
Documentation       A Test Suite With Set Of Tests To Verify myPriceList Management Tabs when Delete Template, TAENOSIS-663

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Sell module
    [Tags]    REGRESSION
    Click On Home Icon And Select 'Sell' From Main Menu

Validate Navigate to Customer Tab
    [Tags]    REGRESSION
    Click On Customer Tab

Validate Click Create Customer Price Lists Button
    [Tags]    REGRESSION
    Verify Click Create Customer Price Lists Button

Validate Create Customer Price Lists Screen Displayed
    [Tags]    REGRESSION
    Verify Create Customer Price Lists Screen Loaded

Validate Get All Items from MyPriceList Dropdown
    [Tags]  REGRESSION
    @{ALL ITEMS} =  Verify Get All Items from MyPriceList Dropdown

Validate Click My Price List Button
    [Tags]  REGRESSION
    Verify Click My Price List Button

Validate Select Create Customer Price Lists Tab
    [Tags]  REGRESSION
    Verify Select Tab       Create Customer Price Lists - 1

Validate Click MyPriceList Button to Open Another Tab
    [Tags]  REGRESSION
    Verify Click My Price List Button

Validate Set MyPriceList Into Search Input Field
    [Tags]  REGRESSION
    ${MY PRICELIST} =       Verify Get My Price List
    Verify Set My Price List Into Search Input Field    ${MY PRICELIST}

Validate Click Search Button
    [Tags]  REGRESSION
    Verify Click Search Button

Validate Select MyPriceList Grid Row Checkbox
    [Tags]  REGRESSION
    Verify Select My Price List Management Grid First Row Checkbox

Validate Delete Selected MyPriceList
    [Tags]  REGRESSION
    Verify Click Delete Button

Validate Set MyPriceList Into Search Input Field after Deleting The Record
    [Tags]  REGRESSION
    ${MY PRICELIST} =       Verify Get My Price List
    Verify Set My Price List Into Search Input Field    ${MY PRICELIST}

Validate Click Search Button after Deleting The Record
    [Tags]  REGRESSION
    Verify Click Search Button

Validate The Deleted MyPriceList is not Shown in The Grid
    [Tags]  REGRESSION
    Verify The Grid is Empty

Validate Close MyPriceList Management Second Tab
    [Tags]  REGRESSION
    Verify Close Current Tab    myPriceList Management - 2

Validate Select MyPriceList Management First Tab
    [Tags]  REGRESSION
    Verify Select Tab       myPriceList Management - 1

Validate Set My Price List Into Search Input Field in First Tab
    [Tags]  REGRESSION
    ${MY PRICELIST} =       Verify Get My Price List
    Verify Set My Price List Into Search Input Field    ${MY PRICELIST}

Validate Click Search Button in First Tab
    [Tags]  REGRESSION
    Verify Click Search Button

Validate The Deleted MyPriceList is not Shown in The Grid in First Tab
    [Tags]  REGRESSION
    Verify The Grid is Empty

Validate Select Create Customer Price Lists Tab to Verify The MyPirceList Dropdown
    [Tags]  REGRESSION
    Verify Select Tab       Create Customer Price Lists - 1

Validate Deleted MyPriceList is not Shown in MyPriceList Dropdown
    [Tags]  REGRESSION
    ${MY PRICELIST} =       Verify Get My Price List
    @{ALL ITEMS} =  Verify Get All Items from MyPriceList Dropdown
    Verify Deleted MyPriceList is not Shown in MyPriceList Dropdown    ${MY PRICELIST}
