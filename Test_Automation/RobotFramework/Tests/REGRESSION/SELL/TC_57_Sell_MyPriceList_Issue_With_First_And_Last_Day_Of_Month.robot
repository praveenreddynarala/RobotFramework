*** Settings ***
Documentation     [TAENOSIS-790] A Test Suite With Set Of Tests To Validate Mypricelist Issue With First And Last Day Of Month

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${MY PRICE LIST}        ${EMPTY}

*** Test Cases ***
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

Validate Set Select date For Mypricelist Grid
    [Tags]    REGRESSION
    Verify Set Select date For Mypricelist Grid     Last Day of Month

Validate Click Save Changes Button
    [Tags]    REGRESSION
    sell_page_resource.Verify Click Save Changes Button

Validate Close My Price List Management Pop Up After Creating My Price List
    [Tags]     REGRESSION
    sell_page_resource.Verify Close Current Tab    myPriceList Management

Validate Set MypriceList From Kendo Dropdown
    [Tags]    REGRESSION
    Verify Set MypriceList From Kendo Dropdown          ${MY PRICE LIST}

Validate Compare Select Date In Mypricelist
    [Tags]    REGRESSION
    Verify Compare Select Date In Mypricelist       Last Day of Month

Validate Click My Price List Button To Set Select Date As First Day Of Month
    [Tags]     REGRESSION
    Verify Click My Price List Button

Validate Set My Price List To Perform Search Operation To Set Select Date As First Day Of Month
    [Tags]     REGRESSION
    Verify Set My Price List Into Search Input Field        ${MY PRICE LIST}

Validate Search My Price List To Set Select Date As First Day Of Month
    [Tags]     REGRESSION
    sell_page_resource.Verify Click Search Button

Validate Set Select date For Mypricelist Grid To Set Select Date As First Day Of Month
    [Tags]    REGRESSION
    Verify Set Select date For Mypricelist Grid     First Day of Month

Validate Click Save Changes Button To Set Select Date As First Day Of Month
    [Tags]    REGRESSION
    sell_page_resource.Verify Click Save Changes Button

Validate Close My Price List Management Pop Up After Setting Select Date As First Day Of Month
    [Tags]     REGRESSION
    sell_page_resource.Verify Close Current Tab    myPriceList Management

Validate Set MypriceList From Kendo Dropdown After Setting Select Date As First Day Of Month
    [Tags]    REGRESSION
    Verify Set MypriceList From Kendo Dropdown          ${MY PRICE LIST}

Validate Compare Select Date In Mypricelist After Setting Select Date As First Day Of Month
    [Tags]    REGRESSION
    Verify Compare Select Date In Mypricelist       First Day of Month

Validate Click My Price List Button To Set Offer Date As Last Day Of Month
    [Tags]     REGRESSION
    Verify Click My Price List Button

Validate Set My Price List To Perform Search Operation To Set Offer Date As Last Day Of Month
    [Tags]     REGRESSION
    Verify Set My Price List Into Search Input Field        ${MY PRICE LIST}

Validate Search My Price List To Set Offer Date As Last Day Of Month
    [Tags]     REGRESSION
    sell_page_resource.Verify Click Search Button

Validate Set Offer Date To Mypricelist Grid To Set Offer Date As Last Day Of Month
    [Tags]    REGRESSION
    Verify Set Offer Date To Mypricelist Grid     Last Day of Month

Validate Click Save Changes Button To Set Offer Date As Last Day Of Month
    [Tags]    REGRESSION
    sell_page_resource.Verify Click Save Changes Button

Validate Close My Price List Management Pop Up After Setting Offer Date As Last Day Of Month
    [Tags]     REGRESSION
    sell_page_resource.Verify Close Current Tab    myPriceList Management

Validate Set MypriceList From Kendo Dropdown After Setting Offer Date As Last Day Of Month
    [Tags]    REGRESSION
    Verify Set MypriceList From Kendo Dropdown          ${MY PRICE LIST}

Validate Compare Select Date In Mypricelist After Setting Offer Date As Last Day Of Month
    [Tags]    REGRESSION
    Verify Compare Offer Date In Mypricelist       Last Day of Month

Validate Click My Price List Button To Set Offer Date As First Day Of Month
    [Tags]     REGRESSION
    Verify Click My Price List Button

Validate Set My Price List To Perform Search Operation To Set Offer Date As First Day Of Month
    [Tags]     REGRESSION
    Verify Set My Price List Into Search Input Field        ${MY PRICE LIST}

Validate Search My Price List To Set Offer Date As First Day Of Month
    [Tags]     REGRESSION
    sell_page_resource.Verify Click Search Button

Validate Set Offer Date To Mypricelist Grid To Set Offer Date As First Day Of Month
    [Tags]    REGRESSION
    Verify Set Offer Date To Mypricelist Grid     First Day of Month

Validate Click Save Changes Button To Set Offer Date As First Day Of Month
    [Tags]    REGRESSION
    sell_page_resource.Verify Click Save Changes Button

Validate Close My Price List Management Pop Up After Setting Offer Date As First Day Of Month
    [Tags]     REGRESSION
    sell_page_resource.Verify Close Current Tab    myPriceList Management

Validate Set MypriceList From Kendo Dropdown After Setting Offer Date As First Day Of Month
    [Tags]    REGRESSION
    Verify Set MypriceList From Kendo Dropdown          ${MY PRICE LIST}

Validate Compare Select Date In Mypricelist After Setting Offer Date As First Day Of Month
    [Tags]    REGRESSION
    Verify Compare Offer Date In Mypricelist       First Day of Month

Validate Get Created Customer Name
    [Tags]    REGRESSION
    Verify Get Created Customer Name

Validate Select Customers For Price Lists
    [Tags]     REGRESSION
    Verify Select Customers For Price Lists

Validate Select Countries For Price Lists
    [Tags]     REGRESSION
    Verify Select All Countries For Price Lists

Validate Click On Generate Customer Price Lists Button
    [Tags]     REGRESSION
    Verify Click On Generate Customer Price Lists Button

Validate Customer Price Lists Generation Is Successful
    [Tags]     REGRESSION
    Verify Customer Price Lists Generation Is Successful

Validate Close Create Customer Price Lists Tab
    [Tags]     REGRESSION
    Verify Close Current Tab        Create Customer Price Lists