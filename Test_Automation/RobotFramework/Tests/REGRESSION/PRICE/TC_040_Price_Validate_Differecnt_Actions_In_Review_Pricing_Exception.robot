*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Navigation to Review Customer Price Exception Request Screen.

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/price_page_test_data_source.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/sell_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Price module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Click Review Customer Price Exception Requests Link
    [Tags]    REGRESSION
    Verify Click Review Customer Price Exception Requests Link

Validate Review Customer Price Exception Requests Page Is Loaded Properly
    [Tags]    REGRESSION
    Verify Review Customer Price Exception Requests Page Is Loaded Properly

Validate Get Created Carrier Name
    [Tags]    REGRESSION
    Verify Get Created Customer Name

Validate Set Number Plan
    [Tags]    REGRESSION
    Verify Set Number Plan For Price Exceptions       ${NUMBER PLAN FOR COPY PRICE EXCEPTIONS}

Validate Set Status Before Status Updation
    [Tags]    REGRESSION
    sell_page_resource.Verify Set Status     @{STATUS ITEM LIST AFTER STATUS UPDATION}

Validate Set Customers
    [Tags]    REGRESSION
    Verify Set Customers

Validate Click Price Exceptions Search Button
    [Tags]    REGRESSION
    sell_page_resource.Verify Click Price Exceptions Search Button

Validate Select Pricing Exception Grid First Row
    [Tags]    REGRESSION
    Verify Select Price Exception Grid First Row

Validate Set Price Exceptions Grid First Row Status
    [Tags]    REGRESSION
    Verify Set Price Exceptions Grid First Row Status        ${APPROVED STATUS}

Validate Click Save Changes Button
    [Tags]    REGRESSION
    sell_page_resource.Verify Click Save Changes Button

Validate Set Status After Status Updation For Approved
    [Tags]    REGRESSION
    sell_page_resource.Verify Set Status     @{STATUS ITEM LIST FOR COPY PRICE EXCEPTIONS}

Validate Click Price Exceptions Search Button For Approved
    [Tags]    REGRESSION
    sell_page_resource.Verify Click Price Exceptions Search Button

Validate Select Pricing Exception Grid First Row For Approved
    [Tags]    REGRESSION
    Verify Select Price Exception Grid First Row

Validate Click Create CPE Bundle Button
    [Tags]    REGRESSION
    Verify Click Create CPE Bundle Button

Validate Click Create CPE Bundle Save Button
    [Tags]    REGRESSION
    Verify Click Create CPE Bundle Save Button