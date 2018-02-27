*** Settings ***
Documentation     [TAENOSIS-970] A Test Suite With Set Of Tests To Validate Target Buy Detail Columns To Source And Policies Screen

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/business_admin_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Business Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Business Admin' From Main Menu

Validate Expand Trading Menu
    [Tags]    REGRESSION
    Verify Expand Trading Menu

Validate Click Source And Policies Submenu
    [Tags]    REGRESSION
    Verify Click Source And Policies Submenu

Validate Set Source Type For Search
    [Tags]    REGRESSION
    Verify Set Source Type For Search       ${VENDOR SOURCE TYPE}

Validate Click Sources Search Button
    [Tags]    REGRESSION
    Verify Click Sources Search Button

Validate The Target Buy Distribution Link Code Column Is Available In Source And Policy Grid
    [Tags]    REGRESSION
    Verify The Specific Column Is Available In Source And Policy Grid       Target Buy Distribution Link Code

Validate The Target Buy Distribution Receiving Member Column Is Available In Source And Policy Grid
    [Tags]    REGRESSION
    Verify The Specific Column Is Available In Source And Policy Grid       Target Buy Distribution Receiving Member

Validate The Target Buy List Column Is Available In Source And Policy Grid
    [Tags]    REGRESSION
    Verify The Specific Column Is Available In Source And Policy Grid       Target Buy List

Validate The Target Buy List Number Plan Column Is Available In Source And Policy Grid
    [Tags]    REGRESSION
    Verify The Specific Column Is Available In Source And Policy Grid       Target Buy List Number Plan

Validate Set Target Buy Distribution Link Code Textbox Column In Source And Policy Grid
    [Tags]    REGRESSION
    Verify Set Specific Textbox Column In Source And Policy Grid        Target Buy Distribution Link Code

Validate Set Target Buy Distribution Receiving Member Textbox Column In Source And Policy Grid
    [Tags]    REGRESSION
    Verify Set Specific Textbox Column In Source And Policy Grid        Target Buy Distribution Receiving Member

Validate Set Target Buy List Dropdown Column In Source And Policy Grid
    [Tags]    REGRESSION
    Verify Set Specific Dropdown Column In Source And Policy Grid       Target Buy List     Select

Validate Set Target Buy List Number Plan Dropdown Column In Source And Policy Grid
    [Tags]    REGRESSION
    Verify Set Specific Dropdown Column In Source And Policy Grid       Target Buy List Number Plan     Outbound Ref.

Validate Click Save Changes Button
    [Tags]    REGRESSION
    Verify Click Save Changes Button