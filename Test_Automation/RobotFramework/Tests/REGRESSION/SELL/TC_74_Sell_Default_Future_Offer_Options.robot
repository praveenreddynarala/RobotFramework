*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Default Future Offer Options

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CUSTOMER NAME}        ${EMPTY}

*** Test Cases ***
Validate Navigate to System Admin module To Set ShowFutureOfferAction As 1
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select System Tab To Set ShowFutureOfferAction As 1
    [Tags]    REGRESSION
    Click on System Tab

Validate Click Configuration Variables Button To Set ShowFutureOfferAction As 1
    [Tags]    REGRESSION
    Verify Click Configuration Variables Button

Validate Set Variable Name To Set ShowFutureOfferAction As 1
    [Tags]    REGRESSION
    Verify Set Variable Name    ShowFutureOfferAction

Validate Click Configuration Variables Grid Search Button To Set ShowFutureOfferAction As 1
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Set Value In Current Value Column To Set ShowFutureOfferAction As 1
    [Tags]    REGRESSION
    Verify Set Value In Current Value Column        1

Validate Close System Admin Window After Setting ShowFutureOfferAction As 1
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to Sell module
    [Tags]    REGRESSION
    Click On Home Icon And Select 'Sell' From Main Menu

Validate Get Created Customer Name
    [Tags]    REGRESSION
    ${CUSTOMER NAME} =      Verify Get Created Customer Name
    set suite variable      ${CUSTOMER NAME}

Validate Navigate to Customer Tab
    [Tags]    REGRESSION
    Click On Customer Tab

Validate Click On Customer Price Lists Button
    [Tags]     REGRESSION
    Verify Click On Customer Price Lists Button

Validate Set Customer
    [Tags]     REGRESSION
    Verify Set Customers    ${CUSTOMER NAME}

Validate Click Customer Price Lists Search Button
    [Tags]     REGRESSION
    Verify Click Customer Price Lists Search Button

Validate Get Customer Price List Grid Number Of Rows
    [Tags]     REGRESSION
    Verify Get Customer Price List Grid Number Of Rows

Validate Close Customer Price Lists Tab
    [Tags]     REGRESSION
    sell_page_resource.Verify Close Current Tab        Customer Price Lists

Validate Click Customer Price Lists Button
    [Tags]     REGRESSION
    Verify Click Create Customer Price Lists Button

Validate Create Customer Price Lists Screen Displayed
    [Tags]     REGRESSION
    Verify Create Customer Price Lists Screen Loaded

Validate Set Apply Increase Notice Period
    [Tags]     REGRESSION
    Verify Set Apply Increase Notice Period

Validate Set Apply Digit Change Notice Period
    [Tags]     REGRESSION
    Verify Set Apply Digit Change Notice Period

Validate Set Apply Decrease Notice Period
    [Tags]     REGRESSION
    Verify Set Apply Decrease Notice Period

Validate Select Customers For Price Lists
    [Tags]     REGRESSION
    Verify Select Customers For Price Lists     ${CUSTOMER NAME}

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
    sell_page_resource.Verify Close Current Tab        Create Customer Price Lists

Validate Click On Customer Price Lists Button For Future Date
    [Tags]     REGRESSION
    Verify Click On Customer Price Lists Button

Validate Set Customer For Future Date
    [Tags]     REGRESSION
    Verify Set Customers    ${CUSTOMER NAME}

Validate Click Customer Price Lists Search Button For Future Date
    [Tags]     REGRESSION
    Verify Click Customer Price Lists Search Button

Validate Compare CPL Count After Creating A New One
    [Tags]     REGRESSION
    Verify Compare CPL Count After Creating A New One

Validate First Row Future Offer Actions Is Disabled
    [Tags]     REGRESSION
    Verify First Row Future Offer Actions Is Disabled

Validate Get Customer Price List Grid Number Of Rows For Future Date
    [Tags]     REGRESSION
    Verify Get Customer Price List Grid Number Of Rows

Validate Close Customer Price Lists Tab For Future Date
    [Tags]     REGRESSION
    sell_page_resource.Verify Close Current Tab        Customer Price Lists

Validate Click Customer Price Lists Button For Future Date
    [Tags]     REGRESSION
    Verify Click Create Customer Price Lists Button

Validate Create Customer Price Lists Screen Displayed For Future Date
    [Tags]     REGRESSION
    Verify Create Customer Price Lists Screen Loaded

Validate Set Apply Increase Notice Period For Future Date
    [Tags]     REGRESSION
    Verify Set Apply Increase Notice Period

Validate Set Apply Digit Change Notice Period For Future Date
    [Tags]     REGRESSION
    Verify Set Apply Digit Change Notice Period

Validate Set Apply Decrease Notice Period For Future Date
    [Tags]     REGRESSION
    Verify Set Apply Decrease Notice Period

Validate Set Future Date As Offer Date
    [Tags]     REGRESSION
    Verify Set Future Date As Offer Date

Validate Select Customers For Price Lists For Future Date
    [Tags]     REGRESSION
    Verify Select Customers For Price Lists     ${CUSTOMER NAME}

Validate Select Countries For Price Lists For Future Date
    [Tags]     REGRESSION
    Verify Select All Countries For Price Lists

Validate Click On Generate Customer Price Lists Button For Future Date
    [Tags]     REGRESSION
    Verify Click On Generate Customer Price Lists Button

Validate Customer Price Lists Generation Is Successful For Future Date
    [Tags]     REGRESSION
    Verify Customer Price Lists Generation Is Successful

Validate Close Create Customer Price Lists Tab For Future Date
    [Tags]     REGRESSION
    sell_page_resource.Verify Close Current Tab        Create Customer Price Lists

Validate Click On Customer Price Lists Button To Compare
    [Tags]     REGRESSION
    Verify Click On Customer Price Lists Button

Validate Set Customer To Compare
    [Tags]     REGRESSION
    Verify Set Customers    ${CUSTOMER NAME}

Validate Set Future Date As To Date
    [Tags]     REGRESSION
    Verify Set Future Date As To Date

Validate Click Customer Price Lists Search Button To Compare
    [Tags]     REGRESSION
    Verify Click Customer Price Lists Search Button

Validate Compare CPL Count After Creating A New One For Future Date
    [Tags]     REGRESSION
    Verify Compare CPL Count After Creating A New One

Validate Second Row Future Offer Actions Is Enabled
    [Tags]     REGRESSION
    Verify Second Row Future Offer Actions Is Enabled

Validate Click Second Row Future Offer Actions Dropdown
    [Tags]     REGRESSION
    Verify Click Second Row Future Offer Actions Dropdown

Validate Future Offer Actions Dropdown Has Re-Export Options
    [Tags]     REGRESSION
    Verify Future Offer Actions Dropdown Has Proper Options     Re-Export

Validate Future Offer Actions Dropdown Has Delete Offer Options
    [Tags]     REGRESSION
    Verify Future Offer Actions Dropdown Has Proper Options     Delete Offer

Validate Future Offer Actions Dropdown Has Send Via iXLink Options
    [Tags]     REGRESSION
    Verify Future Offer Actions Dropdown Has Proper Options     Send via iXLink