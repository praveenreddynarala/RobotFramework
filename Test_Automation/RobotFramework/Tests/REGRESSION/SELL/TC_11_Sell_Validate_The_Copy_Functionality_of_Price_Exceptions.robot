*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate the copy functionality of Price Exceptions

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/sell_page_test_data_source.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${NUMBER PLAN}        ${EMPTY}

*** Test Cases ***
Validate Navigate to Sell module
    [Tags]    REGRESSION
    Click On Home Icon And Select 'Sell' From Main Menu

Validate Navigate to Customer Tab Before Copy
    [Tags]    REGRESSION
    Click On Customer Tab

Validate Get CSNP Number Plan
    [Tags]    REGRESSION
    ${NUMBER PLAN} =     Verify Get CSNP Number Plan
    log  ${NUMBER PLAN}
    set suite variable      ${NUMBER PLAN}

Validate Get Created Customer Name
    [Tags]    REGRESSION
    Verify Get Created Customer Name

Validate Click On Create Customer Button For Creating Second Customer
    [Tags]    REGRESSION
    Verify Click On Create Customer Button

Validate Set Customer Name For Creating Second Customer
    [Tags]    REGRESSION
    Verify Set Customer Name For Second Customer    ${TEST DATA PREFIX}

Validate Set Customer Abbreviation For Creating Second Customer
    [Tags]    REGRESSION
    sell_page_resource.Verify Set Customer Abbreviation    ${TEST DATA PREFIX}

Validate Set Customer Profile Status Active For Creating Second Customer
    [Tags]    REGRESSION
    Verify Set Customer Profile Status Active For Create Customer

Validate Get Created Carrier Name For Creating Second Customer
    [Tags]    REGRESSION
    Verify Get Created Carrier Name

Validate Get Created Rate Plan Name For Creating Second Customer
    [Tags]    REGRESSION
    Verify Get Created Rate Plan Name

Validate Set Ixtools Account As Created Carrier For Creating Second Customer
    [Tags]    REGRESSION
    Verify Set Ixtools Account

Validate Set Rate Plan Ad Created Rate Plan For Creating Second Customer
    [Tags]    REGRESSION
    sell_page_resource.Verify Set Rate Plan

Validate Set Number Plan For Creating Second Customer
    [Tags]    REGRESSION
    Verify Set Number Plan For Create Customer    ${NUMBER PLAN}

Validate Set Call Type For Creating Second Customer
    [Tags]    REGRESSION
    sell_page_resource.Verify Set Call Type    ${CALL TYPE FOR SECOND CUSTOMER}

Validate Click On Save Customer Profile For Create For Creating Second Customer
    [Tags]    REGRESSION
    Verify Click On Save Customer Profile For Create

Validate Close Create Customer Tab For Creating Second Customer
    [Tags]    REGRESSION
    Verify Close Create Customer Tab    ${CREATE CUSTOMER TAB NAME}

Validate Click Price Exceptions Button For Second Customer
    [Tags]    REGRESSION
    Verify Click Price Exceptions Button

Validate Click Pricing Exception Upload Link For Second Customer
    [Tags]    REGRESSION
    Verify Click Pricing Exception Upload Link

Validate Set Status For Pricing Exceptions Search For Second Customer
    [Tags]    REGRESSION
    Verify Set Status For Pricing Exceptions Search    ${COMPLETED STATUS}

Validate Click Pricing Exception Upload Search Button For Second Customer
    [Tags]    REGRESSION
    Verify Click Pricing Exception Upload Search Button

Validate Get Price Exceptions Number Of Rows Form Grid For Second Customer
    [Tags]    REGRESSION
    Verify Get Price Exceptions Number Of Rows Form Grid

Validate Close Jobs Tab Before Upload For Second Customer
    [Tags]    REGRESSION
    sell_page_resource.Verify Close Current Tab    ${JOBS TAB NAME PREFIX}

Validate Click Upload Price Exceptions Button For Second Customer
    [Tags]    REGRESSION
    Verify Click Upload Price Exceptions Button

Validate Click Upload Price Exceptions Browse Button For Second Customer
    [Tags]    REGRESSION
    Verify Click Upload Price Exceptions Browse Button

Validate Select Price Exception File To Be Uploaded For Second Customer
    [Tags]    REGRESSION
    ${CALL TYPE} =      Verify Get Call Type
    Verify Select Price Exception File To Be Uploaded    ${TEMPLATE PATH}/${CALL TYPE}/${PRICE EXCEPTION TEMPLATE NAME}

Validate Set Customer For Upload Price Exceptions For Second Customer
    [Tags]    REGRESSION
    Verify Set Customer For Upload Price Exceptions For Second Customer

Validate Click Price Exceptions Uplaod Button For Second Customer
    [Tags]    REGRESSION
    Verify Click Price Exceptions Upload Button

Validate Click Pricing Exception Upload Link After Upload For Second Customer
    [Tags]    REGRESSION
    Verify Click Pricing Exception Upload Link

Validate Set Status For Pricing Exceptions Search After Upload For Second Customer
    [Tags]    REGRESSION
    Verify Set Status For Pricing Exceptions Search    ${COMPLETED STATUS}

Validate Click Pricing Exception Upload Search Button After Search For Second Customer
    [Tags]    REGRESSION
    Verify Click Pricing Exception Upload Search Button

Validate Compare Price Exceptions Number Of Rows From Grid For Second Customer
    [Tags]    REGRESSION
    Verify Compare Price Exceptions Number Of Rows From Grid

Validate Close Jobs Tab After Upload For Second Customer
    [Tags]    REGRESSION
    sell_page_resource.Verify Close Current Tab    ${JOBS TAB NAME PREFIX}

Validate Set Number Plan For Price Exceptions For Search
    [Tags]    REGRESSION
    Verify Set Number Plan For Price Exceptions    ${NUMBER PLAN}

Validate Set Status For Entered
    [Tags]    REGRESSION
    sell_page_resource.Verify Set Status    @{ENTERED STATUS ITEM LIST}

Validate Set Customers After Upload
    [Tags]    REGRESSION
    Verify Set Customers

Validate Click Price Exceptions Search Button For Entered
    [Tags]    REGRESSION
    sell_page_resource.Verify Click Price Exceptions Search Button

Validate Set Pricing Exceptions Grid Status Requested
    [Tags]    REGRESSION
    Verify Set Price Exceptions Grid First Row Status    @{REQUESTED STATUS ITEM LIST}

Validate Price Exceptions Set First Row Begin Date
    [Tags]    REGRESSION
    Verify Set Price Exceptions First Row Begin Date As Future Date    ${BEGIN DATE FOR CHANGE ENTERED STATUS}

Validate Click Save Changes Button For Requested
    [Tags]    REGRESSION
    sell_page_resource.Verify Click Save Changes Button

Validate Close Sell Window
    [Tags]    REGRESSION
    Verify Close Sell Window

Validate Navigate To Price Module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Click Review Customer Price Exception Requests Link
    [Tags]    REGRESSION
    Verify Click Review Customer Price Exception Requests Link

Validate Set Number Plan For Price Exceptions
    [Tags]    REGRESSION
    Verify Set Number Plan For Price Exceptions    ${NUMBER PLAN}

Validate Set Status For Requested
    [Tags]    REGRESSION
    sell_page_resource.Verify Set Status    @{REQUESTED STATUS ITEM LIST}

Validate Set Customers After Change Status
    [Tags]    REGRESSION
    Verify Set Customers

Validate Verify Set Select Date For Search
    [Tags]    REGRESSION
    Verify Set Pricing Exceptions Select Date

Validate Click Price Exceptions Search Button For Requested
    [Tags]    REGRESSION
    sell_page_resource.Verify Click Price Exceptions Search Button

Validate Click Price Exceptions Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Pricing Exceptions First Row Inline Action Button

Validate Verify Select Pricing Exceptions Approve Inline Action Item
    [Tags]    REGRESSION
    Verify Select Pricing Exceptions Approve Inline Action Item

Validate Close Price Window
    [Tags]    REGRESSION
    Verify Close Price Window

Validate Navigate to Sell module After Closing Price
    [Tags]    REGRESSION
    Click On Home Icon And Select 'Sell' From Main Menu

Validate Navigate to Customer Tab
    [Tags]    REGRESSION
    Click On Customer Tab

Validate Click Price Exceptions Button
    [Tags]    REGRESSION
    Verify Click Price Exceptions Button

Validate Set Number Plan For Price Exceptions Before Search
    [Tags]    REGRESSION
    Verify Set Number Plan For Price Exceptions    ${NUMBER PLAN}

Validate Set Status Approved
    [Tags]    REGRESSION
    sell_page_resource.Verify Set Status    @{STATUS ITEM LIST FOR COPY PRICE EXCEPTIONS}

Validate Set Customers For Copy
    [Tags]    REGRESSION
    Verify Set Customers

Validate Verify Set Select Date For Search For Copy
    [Tags]    REGRESSION
    Verify Set Pricing Exceptions Select Date

Validate Click Price Exceptions Search Button
    [Tags]    REGRESSION
    sell_page_resource.Verify Click Price Exceptions Search Button

Validate Select Price Exception Grid First Row
    [Tags]    REGRESSION
    Verify Select Price Exception Grid First Row

Validate Click Copy Price Lists Exceptions Button
    [Tags]    REGRESSION
    Verify Click Copy Price Lists Exceptions Button

Validate Select Customers For Copy Price Exceptions
    [Tags]    REGRESSION
    Verify Select Customers For Copy Price Exceptions

Validate Click Copy Price Exceptions Submit Button
    [Tags]    REGRESSION
    Verify Click Copy Price Exceptions Submit Button

Validate Copy Price Exceptions Is Successfull
    [Tags]    REGRESSION
    Verify Copy Price Exceptions Is Successfull

Validate Click Save Changes Button For Copy
    [Tags]    REGRESSION
    Verify Click Save Changes Button For Copy Price Exceptions
