*** Settings ***
Documentation     [TAENOSIS-728] A Test Suite With Set Of Tests For Verify iXTrdae Buy Sell Deal Destination Summary Report

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixreport_page_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/ixreport_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Report Module
    [Tags]    REGRESSION
    Verify Switch To IXReport

Validate Expand Network Reports Section
    [Tags]    REGRESSION
    Verify Expand Reports Section       ${IXTRADE REPORTS MENU}

Validate Click Sub Report Item
    [Tags]    REGRESSION
    Verify Click Sub Report Item        ${BUY SELL DEAL DESTINATION SUMMARY REPORT SUBMENU}

Validate Click In Deal Browse Button
    [Tags]    REGRESSION
    Verify Click Deal Browse Button

Validate Set First Letters
    [Tags]    REGRESSION
    ${CREATED BUY AND SELL DEAL NAME} =      Verify Get Buy And Sell Deal Name
    Verify Set First Letters    ${CREATED BUY AND SELL DEAL NAME}

Validate Click Lookup Go Button
    [Tags]    REGRESSION
    Verify Click Vendor Lookup Go Button

Validate Move Deal to Assigned
    [Tags]    REGRESSION
    Verify Move Vendor To Assigned

Validate Click deal Lookup Submit Button
    [Tags]    REGRESSION
    Verify Click Vendor Lookup Submit Button

Validate Click Submit Button
    [Tags]    REGRESSION
    Verify Click Submit Button

Validate Click Report Preview Button
    [Tags]    REGRESSION
    Verify Click Report Preview Button

Validate Click Report Export To Excel Button
    [Tags]    REGRESSION
    Verify Click Report Export To Excel Button

Validate Click Report Export To Csv Button
    [Tags]    REGRESSION
    Verify Click Report Export To Csv Button

Validate Click Report Export To Pdf Button
    [Tags]    REGRESSION
    Verify Click Report Export To Pdf Button

Validate Close Detail Report Window After Preview Done
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Close Detail Report Window After Generating Report For Outbound
    [Tags]    REGRESSION
    Verify Close IxReport Window