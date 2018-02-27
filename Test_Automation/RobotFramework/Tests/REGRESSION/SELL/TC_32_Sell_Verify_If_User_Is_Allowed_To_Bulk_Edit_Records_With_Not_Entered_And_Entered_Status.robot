*** Settings ***
Documentation     A Test Suite With Set Of Tests To Verify If User Is Allowed To Bulk Edit Records With Not Entered And Entered Status

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/sell_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Sell module
    [Tags]    REGRESSION
    Click On Home Icon And Select 'Sell' From Main Menu

Validate Navigate to Customer Tab
    [Tags]    REGRESSION
    Click On Customer Tab

Validate Click Price Exceptions Button
    [Tags]    REGRESSION
    Verify Click Price Exceptions Button

Validate Get Created Customer Name
    [Tags]    REGRESSION
    Verify Get Created Customer Name

Validate Set Number Plan For Price Exceptions
    [Tags]    REGRESSION
    ${NUMBER PLAN} =     Verify Get CSNP Number Plan
    Verify Set Number Plan For Price Exceptions         ${NUMBER PLAN}

Validate Set Status
    [Tags]    REGRESSION
    sell_page_resource.Verify Set Status           @{STATUS LIST FOR BULK EDIT}

Validate Click Price Exceptions Search Button
    [Tags]    REGRESSION
    Verify Click Price Exceptions Search Button

Validate Select Price Exception Grid Multiple Row Checkbox
    [Tags]    REGRESSION
    Verify Select Price Exception Grid Multiple Row

Validate Click Bulk Edit Button
    [Tags]    REGRESSION
    sell_page_resource.Verify Click Bulk Edit Button

Validate Set Bulk Edit Status
    [Tags]    REGRESSION
    Verify Set Bulk Edit Status     ${BULK EDIT STATUS}

Validate Set Requested Price
    [Tags]    REGRESSION
    Verify Set Requested Price      ${BULK EDIT REQUESTED PRICE}

Validate Set Estimated Value
    [Tags]    REGRESSION
    Verify Set Estimated Value      ${BULK EDIT ESTIMATED VALUE}

Validate Set Begin Date
    [Tags]    REGRESSION
    sell_page_resource.Verify Set Begin Date       ${BULK EDIT BEGIN DATE}

Validate Set Bulk Edit Approvaltype
    [Tags]    REGRESSION
    Verify Set Bulk Edit Approvaltype       ${BULK EDIT APPROVAL TYPE}

Validate Set End Date
    [Tags]    REGRESSION
    sell_page_resource.Verify Set End Date         ${BULK EDIT END DATE}

Validate Click Bulk Edit Submit Button
    [Tags]    REGRESSION
    sell_page_resource.Verify Click Bulk Edit Submit Button

Validate Click Save Changes Button
    [Tags]    REGRESSION
    sell_page_resource.Verify Click Save Changes Button