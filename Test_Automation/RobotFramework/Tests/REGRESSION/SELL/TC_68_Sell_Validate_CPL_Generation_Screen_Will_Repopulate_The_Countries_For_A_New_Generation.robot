*** Settings ***
Documentation     [TAENOSIS-870] A Test Suite With Set Of Tests To Validate CPL Generation Screen Will Repopulate The Countries For A New Generation

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${PREVIOUS NUMBER OF COUNTRIES}     ${EMPTY}

*** Test Cases ***
Validate Navigate to Sell module
    [Tags]    REGRESSION
    Click On Home Icon And Select 'Sell' From Main Menu

Validate Navigate to Customer Tab For CPL Generation
    [Tags]    REGRESSION
    Click On Customer Tab

Validate Click Customer Price Lists Button
    [Tags]     REGRESSION
    Verify Click Create Customer Price Lists Button

Validate Get Available Number Of Countries for Price Lists
    [Tags]     REGRESSION
    ${PREVIOUS NUMBER OF COUNTRIES} =   Verify Get Available Number Of Countries for Price Lists
    set suite variable      ${PREVIOUS NUMBER OF COUNTRIES}

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
    ${CUSTOMER NAME} =      Verify Get Created Customer Name
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

Validate Get Available Number Of Countries for Price Lists After Generation
    [Tags]     REGRESSION
    ${CURRENT NUMBER OF COUNTRIES} =   Verify Get Available Number Of Countries for Price Lists
    Verify Available Countries Are Repopulated for Price Lists      ${PREVIOUS NUMBER OF COUNTRIES}     ${CURRENT NUMBER OF COUNTRIES}

Validate Close Create Customer Price Lists Tab
    [Tags]     REGRESSION
    sell_page_resource.Verify Close Current Tab        Create Customer Price Lists