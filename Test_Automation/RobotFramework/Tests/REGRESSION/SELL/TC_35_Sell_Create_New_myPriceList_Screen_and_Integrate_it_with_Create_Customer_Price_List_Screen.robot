*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Create New myPriceList Screen and Integrate it with Create Customer Price List Screen.

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

Validate Move All Available Countries To Destination To Create My Price List
    [Tags]     REGRESSION
    Verify Move All Available Countries To Destination To Create My Price List

Validate Click Save My Price List Button
    [Tags]     REGRESSION
    Verify Click Save My Price List Button

Validate Close My Price List Detials Pop Up After Creating My Price List
    [Tags]     REGRESSION
    Verify Close Current Tab    myPriceList Details

Validate Set My Price List To Perform Search Operation
    [Tags]     REGRESSION
    Verify Set My Price List Into Search Input Field        ${MY PRICE LIST}

Validate Search My Price List
    [Tags]     REGRESSION
    Verify Click Search Button

Validate Click My Price List Management Grid First Row Inline Action Button
    [Tags]     REGRESSION
    Verify Click My Price List Management Grid First Row Inline Action Button

Validate Select My Price List Management Grid Inline Action Item
    [Tags]     REGRESSION
    Verify Select My Price List Management Grid Inline Action Item      Edit

Validate Edit My Price List
    [Tags]     REGRESSION
    Verify Set My Price List    ${TEST DATA PREFIX}

Validate Save Edited My Price List
    [Tags]     REGRESSION
    Verify Click Save My Price List Button

Validate Close My Price List Details Pop Up After Editing My Price List
    [Tags]     REGRESSION
    Verify Close Current Tab        myPriceList Details

Validate Set My Price List To Find Edited My Price List
    [Tags]     REGRESSION
    ${MY PRICE LIST} =      Verify Get My Price List
    set suite variable      ${MY PRICE LIST}
    Verify Set My Price List Into Search Input Field        ${MY PRICE LIST}

Validate Search Edited My Price List
    [Tags]     REGRESSION
    Verify Click Search Button

Validate Select My Price List Management Grid First Row Checkbox
    [Tags]     REGRESSION
    Verify Select My Price List Management Grid First Row Checkbox

Validate Delete My Price List
    [Tags]     REGRESSION
    Verify Click Delete Button

Validate Click New My Price List Button To Create a New My Price List
    [Tags]     REGRESSION
    Verify Click New My Price List Button

Validate Set My Price List To Create Another New My Price List
    [Tags]     REGRESSION
    Verify Set My Price List        ${TEST DATA PREFIX}

Validate Move All Available Customers To Destination To Create Another New My Price List
    [Tags]     REGRESSION
    Verify Move All Available Customers To Destination To Create My Price List

Validate Move All Available Countries To Destination To Create Another New My Price List
    [Tags]     REGRESSION
    Verify Move All Available Countries To Destination To Create My Price List

Validate Click Save My Price List Button To Create Another New My Price List
    [Tags]     REGRESSION
    Verify Click Save My Price List Button

Validate Close My Price List Details Pop Up After Careting Another New My Price List
    [Tags]     REGRESSION
    Verify Close Current Tab        myPriceList Details

Validate Click New My Price List Button To Create Another New My Price List And Verify Error Message
    [Tags]     REGRESSION
    Verify Click New My Price List Button

Validate Set My Price List Which Already Exists in The System
    [Tags]     REGRESSION
    ${MYPRICE LIST} =      get my price list
    Verify Set My Price List Without Random Data        ${MYPRICE LIST}

Validate Move All Available Customers To Destination To Create New My Price List And Verify Error Message
    [Tags]     REGRESSION
    Verify Move All Available Customers To Destination To Create My Price List

Validate Move All Available Countries To Destination To Create New My Price List And Verify Error Message
    [Tags]     REGRESSION
    Verify Move All Available Countries To Destination To Create My Price List

Validate Click Save My Price List Button to Create New My Price List After Verifying Error Message
    [Tags]     REGRESSION
    Verify Click Save My Price List Button

Validate Error Message Shown For Duplicate My Price List
    [Tags]     REGRESSION
    Verify Error Message Is Displayed For Duplicate My Price List

Validate Set My Price List After Error Message is Shown For Duplicate My Price List
    [Tags]     REGRESSION
    Verify Set My Price List        ${TEST DATA PREFIX}

Validate Click Save My Price List Button to Save The Changes
    [Tags]     REGRESSION
    Verify Click Save My Price List Button

Validate Close My Price List Detials Pop Up After Creating New My Price List
    [Tags]     REGRESSION
    Verify Close Current Tab    myPriceList Details

Validate Close My Price List Management Screen
    [Tags]     REGRESSION
    Verify Close Current Tab    myPriceList Management

Validate Select My Price List From Dropdown
    [Tags]     REGRESSION
    ${MYPRICE LIST} =      Verify Get My Price List
    Verify Select Item From My Price List Dropdown       ${MYPRICE LIST}

Validate Click My Price List Preview Button
    [Tags]     REGRESSION
    Verify Click Preview Button

Validate Click Customer Price List Export to Excel Button
    [Tags]     REGRESSION
    Verify Click Customer Price List Preview Export To Excel Button

Validate Close Customer Price List Preview Page
    [Tags]     REGRESSION
    Verify Close Preview Page

Validate Click On Generate Customer Price Lists Button
    [Tags]     REGRESSION
    Verify Click On Generate Customer Price Lists Button

Validate Customer Price Lists Generation Is Successful
    [Tags]     REGRESSION
    Verify Customer Price Lists Generation Is Successful

Validate Close Create Customer Price Lists Tab
    [Tags]     REGRESSION
    Verify Close Current Tab        Create Customer Price Lists