*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Sell Lock The Countries In Mypricelist When CPLLockAtoZ Is On

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
    Verify Set Variable Name    cplLockAtoZCountryList

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

Validate Set Offer Content For MypriceList
    [Tags]    REGRESSION
    Verify Set Offer Content For MypriceList        A-Z

Validate Move All Available Customers To Destination To Create My Price List
    [Tags]     REGRESSION
    Verify Move All Available Customers To Destination To Create My Price List

Validate Country Multiselection Field Is Disabled
    [Tags]     REGRESSION
    Verify Country Multiselection Field Is Disabled

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

Validate Click My Price List Management Grid First Row Inline Action Button
    [Tags]     REGRESSION
    Verify Click My Price List Management Grid First Row Inline Action Button

Validate Select My Price List Management Grid Inline Action Item
    [Tags]     REGRESSION
    Verify Select My Price List Management Grid Inline Action Item      Edit

Validate Country Multiselection Field Is Disabled In Edit Page
    [Tags]     REGRESSION
    Verify Country Multiselection Field Is Disabled

Validate Save Edited My Price List
    [Tags]     REGRESSION
    Verify Click Save My Price List Button

Validate Close My Price List Details Pop Up After Editing My Price List
    [Tags]     REGRESSION
    sell_page_resource.Verify Close Current Tab        myPriceList Details

Validate Close My Price List Management Pop Up After Editing My Price List
    [Tags]     REGRESSION
    sell_page_resource.Verify Close Current Tab        myPriceList Management

Validate Set MypriceList To Create CPL
    [Tags]    REGRESSION
    Verify Set MypriceList To Create CPL        ${MY PRICE LIST}

Validate Click Preview Button
    [Tags]    REGRESSION
    sell_page_resource.Verify Click Preview Button

Validate Preview Page Displayed
    [Tags]    REGRESSION
    sell_page_resource.Verify Preview Page Displayed

Validate Close Preview Page
    [Tags]    REGRESSION
    sell_page_resource.Verify Close Preview Page

Validate Click On Generate Customer Price Lists Button
    [Tags]     REGRESSION
    Verify Click On Generate Customer Price Lists Button

Validate Customer Price Lists Generation Is Successful
    [Tags]     REGRESSION
    Verify Customer Price Lists Generation Is Successful

Validate Close Create Customer Price Lists Tab
    [Tags]     REGRESSION
    sell_page_resource.Verify Close Current Tab        Create Customer Price Lists

Validate Click Customer Price Lists Button After Creating Mypricelist
    [Tags]    REGRESSION
    Verify Click Create Customer Price Lists Button

Validate Click My Price List Button After Creating Mypricelist
    [Tags]     REGRESSION
    Verify Click My Price List Button

Validate Set My Price List To Perform Search Operation After Creating Mypricelist
    [Tags]     REGRESSION
    Verify Set My Price List Into Search Input Field        ${MY PRICE LIST}

Validate Search My Price List After Creating Mypricelist
    [Tags]     REGRESSION
    sell_page_resource.Verify Click Search Button

Validate Click My Price List Management Grid First Row Inline Action Button After Creating Mypricelist
    [Tags]     REGRESSION
    Verify Click My Price List Management Grid First Row Inline Action Button

Validate Select My Price List Management Grid Inline Action Item After Creating Mypricelist
    [Tags]     REGRESSION
    Verify Select My Price List Management Grid Inline Action Item      Edit

Validate Set Offer Content For MypriceList After Creating Mypricelist
    [Tags]    REGRESSION
    Verify Set Offer Content For MypriceList        Full Country

Validate Country Multiselection Field Is Enabled After Creating Mypricelist
    [Tags]    REGRESSION
    Verify Country Multiselection Field Is Enabled

Validate Close Sell Window After Creating Mypricelist
    [Tags]    REGRESSION
    Verify Close Sell Window

Validate Navigate to System Admin module To Set cplLockAtoZCountryList As 0
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select System Tab To Set cplLockAtoZCountryList As 0
    [Tags]    REGRESSION
    Click on System Tab

Validate Click Configuration Variables Button To Set cplLockAtoZCountryList As 0
    [Tags]    REGRESSION
    Verify Click Configuration Variables Button

Validate Set Variable Name To Set cplLockAtoZCountryList As 0
    [Tags]    REGRESSION
    Verify Set Variable Name    cplLockAtoZCountryList

Validate Click Configuration Variables Grid Search Button To Set cplLockAtoZCountryList As 0
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column To Set cplLockAtoZCountryList As 0
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        0

Validate Close System Admin Window After Setting cplLockAtoZCountryList As 0
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to Sell module After Setting cplLockAtoZCountryList As 0
    [Tags]    REGRESSION
    Click On Home Icon And Select 'Sell' From Main Menu

Validate Navigate to Customer Tab After Setting cplLockAtoZCountryList As 0
    [Tags]    REGRESSION
    Click On Customer Tab

Validate Click Customer Price Lists Button After Setting cplLockAtoZCountryList As 0
    [Tags]     REGRESSION
    Verify Click Create Customer Price Lists Button

Validate Click My Price List Button After Setting cplLockAtoZCountryList As 0
    [Tags]     REGRESSION
    Verify Click My Price List Button

Validate Set My Price List To Perform Search Operation After Setting cplLockAtoZCountryList As 0
    [Tags]     REGRESSION
    Verify Set My Price List Into Search Input Field        ${MY PRICE LIST}

Validate Search My Price List After Setting cplLockAtoZCountryList As 0
    [Tags]     REGRESSION
    sell_page_resource.Verify Click Search Button

Validate Click My Price List Management Grid First Row Inline Action Button After Setting cplLockAtoZCountryList As 0
    [Tags]     REGRESSION
    Verify Click My Price List Management Grid First Row Inline Action Button

Validate Select My Price List Management Grid Inline Action Item After Setting cplLockAtoZCountryList As 0
    [Tags]     REGRESSION
    Verify Select My Price List Management Grid Inline Action Item      Edit

Validate Country Multiselection Field Is Enabled After Setting cplLockAtoZCountryList As 0
    [Tags]    REGRESSION
    Verify Country Multiselection Field Is Enabled