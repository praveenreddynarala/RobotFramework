*** Settings ***
Documentation     A Test Suite With Set Of Tests For Inbound Statement To Verify The Statement Upload Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/bill_and_audit_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/bill_and_audit_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Bill And Audit module
    [Tags]    REGRESSION
    click on home icon and select 'bill and audit' from main menu

Validate Select Inbound Statements Tab
    [Tags]    REGRESSION
    Verify Select Inbound Statement Tab

Validate Click Upload Statement Button
    [Tags]    REGRESSION
    Verify Click Upload Statement Button

Validate Click Upload Statement Browse Button
    [Tags]    REGRESSION
    Verify Click Upload Statement Browse Button

Validate Select File To Upload
    [Tags]    REGRESSION
    Verify Select File To Be Uploaded       ${FILE PATH FOR UPLOAD STATEMENT}

Validate Click Upload Statement Upload Button
    [Tags]    REGRESSION
    Verify Click Upload Statement Upload Button