*** Settings ***
Documentation     [TAENOSIS-723] A Test Suite With Set Of Tests For Verify Network Trunk Utilization Report

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixreport_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/ixreport_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Report Module
    [Tags]    REGRESSION
    Verify Switch To IXReport

Validate Expand Network Reports Section
    [Tags]    REGRESSION
    Verify Expand Reports Section       ${NETWORKS REPORTS MENU}

Validate Click Sub Report Item
    [Tags]    REGRESSION
    Verify Click Sub Report Item        ${TRUNK UTILIZATION REPORT SUBMENU}

Validate Set Future Begin Date
    [Tags]    REGRESSION
    Verify Set Future Date as Begin Date With Lower Case d    32

Validate Click Submit Button To Validate Error
    [Tags]    REGRESSION
    Verify Click Submit Button

Validate Begin Date Greater Than End Date Warning Message Is Shown
    [Tags]    REGRESSION
    Verify Begin Date Greater Than End Date Warning Message Is Shown

Validate Close Detail Report Window After Validating Error
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Set Begin Date
    [Tags]    REGRESSION
    Verify Set Begin Date With Lower Case d       1/1/2015

Validate Click Direction Browse Button
    [Tags]    REGRESSION
    Verify Click Direction Browse Button

Validate Set First Letters For Direction
    [Tags]    REGRESSION
    Verify Set First Letters    Inbound

Validate Click Go Button For Direction
    [Tags]    REGRESSION
    Verify Click Go Button

Validate Select Row From Look Up Table
    [Tags]    REGRESSION
    Verify Select Row From Look Up Table        Inbound

Validate Click Submit Button
    [Tags]    REGRESSION
    Verify Click Submit Button

Validate Close Detail Report Window
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Click Direction Browse Button For Outbound
    [Tags]    REGRESSION
    Verify Click Direction Browse Button

Validate Set First Letters For Direction For Outbound
    [Tags]    REGRESSION
    Verify Set First Letters    Outbound

Validate Click Go Button For Direction For Outbound
    [Tags]    REGRESSION
    Verify Click Go Button

Validate Select Row From Look Up Table For Outbound
    [Tags]    REGRESSION
    Verify Select Row From Look Up Table        Outbound

Validate Click Submit Button For Outbound
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