*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Create New myPriceList Screen and Integrate it with Create Customer Price List Screen.

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

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

Validate Move Available Customers To Destination To Create My Price List
    [Tags]     REGRESSION
    ${SOURCE NAME} =        Verify Get Source Name
    Verify Select Customers For Mypricelist         ${SOURCE NAME}

Validate Move Available Countries To Destination To Create My Price List
    [Tags]     REGRESSION
    Verify Select Countries For Mypricelist     India

Validate Click Save My Price List Button
    [Tags]     REGRESSION
    Verify Click Save My Price List Button

Validate Close My Price List Detials Pop Up After Creating My Price List
    [Tags]     REGRESSION
    sell_page_resource.Verify Close Current Tab    myPriceList Details