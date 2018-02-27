*** Settings ***
Documentation     A Test Suite With Set Of Tests To Verify Admin Account List

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixreport_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/ixreport_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Report Module
    [Tags]    REGRESSION
    Verify Switch To IXReport

Validate Expand Reports Section
    [Tags]    REGRESSION
    Verify Expand Reports Section       ${ADMINISTRATIVE REPORTS MENU}

Validate Click Sub Report Item
    [Tags]    REGRESSION
    Verify Click Sub Report Item        ${ACCOUNT LIST REPORT SUBMENU}

Validate Click Submit Button
    [Tags]    REGRESSION
    Verify Click Submit Button

Validate Click Report Preview Button
    [Tags]    REGRESSION
    Verify Click Report Preview Button

Validate Click Report Export To Excel Button
    [Tags]    REGRESSION
    Verify Click Report Export To Excel Button

Validate Click Report Export To CSV Button
    [Tags]    REGRESSION
    Verify Click Report Export To CSV Button

Validate Click Report Export To PDF Button
    [Tags]    REGRESSION
    Verify Click Report Export To PDF Button

Validate Close Detail Report Window
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Set Account Type As Carrier
    [Tags]    REGRESSION
    Verify Set Account Type         Carrier

Validate Click Submit Button After Setting Account Type As Carrier
    [Tags]    REGRESSION
    Verify Click Submit Button

Validate Carrier Report Page Is Available For Selected Account Type
    [Tags]    REGRESSION
    Verify Report Page Is Available For Selected Account Type       Carrier

Validate Close Detail Report Window After Setting Account Type As Carrier
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Set Account Type As InterCompany
    [Tags]    REGRESSION
    Verify Set Account Type         InterCompany

Validate Click Submit Button After Setting Account Type As InterCompany
    [Tags]    REGRESSION
    Verify Click Submit Button

Validate InterCompany Report Page Is Available For Selected Account Type
    [Tags]    REGRESSION
    Verify Report Page Is Available For Selected Account Type       InterCompany

Validate Close Detail Report Window After Setting Account Type As InterCompany
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Set Account Type As InterMachine
    [Tags]    REGRESSION
    Verify Set Account Type         InterMachine

Validate Click Submit Button After Setting Account Type As InterMachine
    [Tags]    REGRESSION
    Verify Click Submit Button

Validate InterMachine Report Page Is Available For Selected Account Type
    [Tags]    REGRESSION
    Verify Report Page Is Available For Selected Account Type       InterMachine

Validate Close Detail Report Window After Setting Account Type As InterMachine
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Close IXReport Window
    [Tags]    REGRESSION
    Verify Close IxReport Window