*** Settings ***
Documentation     [TAENOSIS-677] A Test Suite With Set Of Tests To Validate Qos Elements Are Sent to IXLink

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/business_admin_page_test_data_source.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/sell_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${SOURCE NAME}      ${EMPTY}
${NUMBER PLAN}      ${EMPTY}

*** Test Cases ***
Validate Navigate to Business Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Business Admin' From Main Menu

Validate Expand Trading Menu
    [Tags]    REGRESSION
    Verify Expand Trading Menu

Validate Get Number Plan
    [Tags]    REGRESSION
    ${NUMBER PLAN} =     Verify Get CSNP Number Plan
    set suite variable      ${NUMBER PLAN}

Validate Click Source And Policies Submenu
    [Tags]    REGRESSION
    Verify Click Source And Policies Submenu

Validate Set Source Type For Search
    [Tags]    REGRESSION
    Verify Set Source Type For Search       ${QUALITY OF SERVICE SOURCE TYPE}

Validate Click Sources Search Button
    [Tags]    REGRESSION
    Verify Click Sources Search Button

Validate Click Add New Source Button
    [Tags]    REGRESSION
    Verify Click Add New Source Button

Validate Set Source
    [Tags]    REGRESSION
    Verify Set Source       ${TEST DATA PREFIX}

Validate Set Abbreviation
    [Tags]    REGRESSION
    Verify Set Abbreviation     ${TEST DATA PREFIX}

Validate Set Status
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Set Status       ${ACTIVE STATUS}

Validate Set Number Plan
    [Tags]    REGRESSION
    Verify Set QOS Number Plan      ${NUMBER PLAN}

Validate Set Call Type
    [Tags]    REGRESSION
    Verify Set QOS Call Type        SMS

Validate Set Note
    [Tags]    REGRESSION
    Verify Set Note     ${NOTE FOR ADD QUALITY OF SERVICE}

Validate Click Create New Customer Save Button
    [Tags]    REGRESSION
    Verify Click Create New Customer Save Button

Validate Get Source Name
    [Tags]    REGRESSION
    ${SOURCE NAME} =        Verify Get Source Name
    set suite variable      ${SOURCE NAME}

Validate Close Business Admin Window
    [Tags]    REGRESSION
    Verify Close Business Admin Window

Validate Navigate to Sell module
    [Tags]    REGRESSION
    Click On Home Icon And Select 'Sell' From Main Menu

Validate Navigate to Customer Tab
    [Tags]    REGRESSION
    Click On Customer Tab

Validate Click On Create Customer Button
    [Tags]    REGRESSION
    Verify Click On Create Customer Button

Validate Set Customer Name
    [Tags]    REGRESSION
    Verify Set Customer Name        ${TEST DATA PREFIX}

Validate Set Customer Abbreviation
    [Tags]    REGRESSION
    sell_page_resource.Verify Set Customer Abbreviation        ${TEST DATA PREFIX}

Validate Set Customer Profile Status Active
    [Tags]    REGRESSION
    Verify Set Customer Profile Status Active For Create Customer

Validate Get Created Carrier Name
    [Tags]    REGRESSION
    Verify Get Created Carrier Name

Validate Get Created Rate Plan Name
    [Tags]    REGRESSION
    Verify Get Created Rate Plan Name

Validate Set Ixtools Account As Created Carrier
    [Tags]    REGRESSION
    Verify Set Ixtools Account

Validate Set Rate Plan Ad Created Rate Plan
    [Tags]    REGRESSION
    sell_page_resource.Verify Set Rate Plan

Validate Set Number Plan For Customer Creation
    [Tags]    REGRESSION
    Verify Set Number Plan For Create Customer      ${NUMBER PLAN}

Validate Set Call Type For Customer Creation
    [Tags]    REGRESSION
    sell_page_resource.Verify Set Call Type        SMS

Validate Set Quality of Service For Create
    [Tags]    REGRESSION
    sell_page_resource.Verify Set Quality of Service       ${SOURCE NAME}

Validate Check IXLink Customer Checkbox
    [Tags]    REGRESSION
    Verify Check IXLink Customer Checkbox

Validate Click On Save Customer Profile For Create
    [Tags]    REGRESSION
    Verify Click On Save Customer Profile For Create

Validate Close Create Customer Tab
    [Tags]    REGRESSION
    Verify Close Create Customer Tab        ${CREATE CUSTOMER TAB NAME}

Validate Click On Sell Dashboard Tab
    [Tags]    REGRESSION
    Verify Click On Sell Dashboard Tab

Validate Click Quality Of Service Link
    [Tags]    REGRESSION
    Verify Click Quality Of Service Link

Validate Set Quality of Service
    [Tags]    REGRESSION
    sell_page_resource.Verify Set Quality of Service       ${SOURCE NAME}

Validate Click Quality Of Service Search Button
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Click Search Button

Validate QOS Grid MNP Column Is Present
    [Tags]    REGRESSION
    Verify QOS Grid Column Is Present       MNP

Validate QOS Grid Comments Column Is Present
    [Tags]    REGRESSION
    Verify QOS Grid Column Is Present       Comments

Validate Close Quality of Service Tab
    [Tags]    REGRESSION
    sell_page_resource.Verify Close Current Tab        ${QUALITY OF SERVICE SOURCE TYPE}

Validate Navigate to Customer Tab For CPL Generation
    [Tags]    REGRESSION
    Click On Customer Tab

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
    sell_page_resource.Verify Close Current Tab        Create Customer Price Lists