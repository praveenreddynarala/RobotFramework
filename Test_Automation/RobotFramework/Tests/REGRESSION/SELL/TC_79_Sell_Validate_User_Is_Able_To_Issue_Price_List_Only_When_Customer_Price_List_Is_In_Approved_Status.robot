*** Settings ***
Documentation     [TAENOSIS-839] A Test Suite With Set Of Tests To Validate User Is Able To Issue Price List Only When Customer Price List Is In Approved Status

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/sell_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CUSTOMER NAME}      ${EMPTY}
${CUSTOMER PRICE LIST ROW COUNT}        ${EMPTY}

*** Test Cases ***
Validate Navigate to Sell module
    [Tags]    REGRESSION
    Click On Home Icon And Select 'Sell' From Main Menu

Validate Navigate to Customer Tab
    [Tags]    REGRESSION
    Click On Customer Tab

Validate Get Created Customer Name
    [Tags]    REGRESSION
    ${CUSTOMER NAME} =      Verify Get Created Customer Name
    set suite variable      ${CUSTOMER NAME}

Validate Click Customer Price Lists Button
    [Tags]     REGRESSION
    Verify Click On Customer Price Lists Button

Validate Set Customers For Search
    [Tags]    REGRESSION
    Verify Set Customers        ${CUSTOMER NAME}

Validate Click Customer Price Lists Search Button
    [Tags]     REGRESSION
    Verify Click Customer Price Lists Search Button

Validate Get Customer Price List Grid Number Of Rows
    [Tags]    REGRESSION
    ${CUSTOMER PRICE LIST ROW COUNT} =       Verify Get Customer Price List Grid Number Of Rows
    set suite variable          ${CUSTOMER PRICE LIST ROW COUNT}

Validate Close Customer Price Lists Tab
    [Tags]    REGRESSION
    sell_page_resource.Verify Close Current Tab        Customer Price Lists

Validate Click Create Customer Price Lists Button
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

Validate Set Number Plan For Price Exceptions
    [Tags]     REGRESSION
    Verify Set Number Plan For Price Exceptions     Outbound Ref.

Validate Select Customers For Price Lists
    [Tags]     REGRESSION
    Verify Select Customers For Price Lists         ${CUSTOMER NAME}

Validate Select Destination Checkbox
    [Tags]    REGRESSION
    Verify Select Destination Checkbox

Validate Assign Available Country To Source
    [Tags]    REGRESSION
    Verify Assign Available Country To Source       India

Validate Click On Generate Customer Price Lists Button
    [Tags]     REGRESSION
    Verify Click On Generate Customer Price Lists Button

Validate Customer Price Lists Generation Is Successful
    [Tags]     REGRESSION
    Verify Customer Price Lists Generation Is Successful

Validate Close Create Customer Price Lists Tab
    [Tags]    REGRESSION
    sell_page_resource.Verify Close Current Tab        Create Customer Price Lists

Validate Click Customer Price Lists Button After Creating CPL
    [Tags]     REGRESSION
    Verify Click On Customer Price Lists Button

Validate Set Customers For Search After Creating CPL
    [Tags]    REGRESSION
    Verify Set Customers        ${CUSTOMER NAME}

Validate Click Customer Price Lists Search Button After Creating CPL
    [Tags]     REGRESSION
    Verify Click Customer Price Lists Search Button

Validate Compare CPL Count After Creating A New One
    [Tags]    REGRESSION
    Verify Compare CPL Count After Creating A New One

Validate Select Customer Price List Grid First Row
    [Tags]    REGRESSION
    Verify Select Customer Price List Grid First Row

Validate Click Issue Price Lists Button With CPL Approval
    [Tags]    REGRESSION
    Verify Click Issue Price Lists Button With CPL Approval
