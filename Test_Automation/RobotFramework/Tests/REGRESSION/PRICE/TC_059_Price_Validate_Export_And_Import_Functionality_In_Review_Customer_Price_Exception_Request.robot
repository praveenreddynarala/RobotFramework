*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Export And Import Functionality In Review Customer Price Exception Request

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/price_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Price module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Select Price Dashboard
    [Tags]    REGRESSION
    Verify Select Price Dashboard

Validate Click Review Customer Price Exception Requests Link
    [Tags]    REGRESSION
    Verify Click Review Customer Price Exception Requests Link

Validate The Price Exception Request Export Button Is Available
    [Tags]    REGRESSION
    Verify The Price Exception Request Export Button Is Available

Validate Get Completed Status Green Button Jobs Count For Pricing Exception
    [Tags]    REGRESSION
    Verify Get Completed Status Green Button Jobs Count For Price Exception Request

Validate Click Price Exception Request Import Button
    [Tags]    REGRESSION
    Verify Click Price Exception Request Import Button

Validate Click Browse Button
    [Tags]    REGRESSION
    Verify Click Costs Browse Button

Valdiate Select The File To Be Uploaded
    [Tags]    REGRESSION
    ${CALL TYPE} =   Verify Get Call Type
    Verify Select The File To Be Uploaded       ${TEMPLATE PATH}/${CALL TYPE}/${PRICE EXCEPTIONS TEMPLATE NAME}

Validate Click Upload Button
    [Tags]    REGRESSION
    Verify Click Price Exception Request Upload Button

Validate Compare Completed Status Green Buttons Jobs Count After Upload
    [Tags]    REGRESSION
    Verify Compare Completed Status Green Buttons Jobs Count For Price Exception Request