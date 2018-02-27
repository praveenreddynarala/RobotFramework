*** Settings ***
Documentation     [TAENOSIS-758] A Test Suite With Set Of Tests To Validate Products Associated With Selected Destination Are Shown In Filters

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixreport_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/ixreport_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${DESTINATION}           ${EMPTY}

*** Test Cases ***
Validate Navigate to Report Module
    [Tags]    REGRESSION
    Verify Switch To IXReport

Validate Expand Customer Profile Reports Section
    [Tags]    REGRESSION
    Verify Expand Reports Section       ${IXROUTE REPORTS MENU}

Validate Click Sub Report Item For Future Rate Changes
    [Tags]    REGRESSION
    Verify Click Sub Report Item        ${FUTURE ROUTE RATE CHANGES AND IMPACT REPORT SUBMENU}

Validate Get Destination From ProductiXRoute Table For Future Rate Changes
    [Tags]    REGRESSION
    ${DESTINATION} =    Verify Get Destination From ProductiXRoute Table       ${DATABASE SERVER}      ${DATABASE}      ${DATABASE USERNAME}      ${DATABASE PASSWORD}
    log  ${DESTINATION}
    set suite variable      ${DESTINATION}

Validate Click Destination Browse Button For Future Rate Changes
    [Tags]    REGRESSION
    Verify Click Destination Browse Button

Validate Set First Letters For Destination For Future Rate Changes
    [Tags]    REGRESSION
    Verify Set First Letters    ${DESTINATION}

Validate Click Go Button For Future Rate Changes
    [Tags]    REGRESSION
    Verify Click Go Button

Validate Select First Row From Look Up Table For Future Rate Changes
    [Tags]    REGRESSION
    Verify Select First Row From Look Up Table

Validate Click Routing Product Browse Button For Future Rate Changes
    [Tags]    REGRESSION
    Verify Click Routing Product Browse Button

Validate Get Routing Product From productiXRoute Table For Future Rate Changes
    [Tags]    REGRESSION
    Verify Get Routing Product From productiXRoute Table        ${DATABASE SERVER}      ${DATABASE}      ${DATABASE USERNAME}      ${DATABASE PASSWORD}     ${DESTINATION}

Validate Compare Lookup Table Routing Product With Database For Future Rate Changes
    [Tags]    REGRESSION
    Verify Compare Lookup Table Routing Product With Database

Validate Close Routing Product Pop Up For Future Rate Changes
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Click Sub Report Item For Impact Route Guide Report
    [Tags]    REGRESSION
    Verify Click Sub Report Item        ${IMPACT ROUTE GUIDE REPORT SUBMENU}

Validate Click Destination Browse Button For Impact Route Guide Report
    [Tags]    REGRESSION
    Verify Click Destination Browse Button

Validate Set First Letters For Destination For Impact Route Guide Report
    [Tags]    REGRESSION
    Verify Set First Letters    ${DESTINATION}

Validate Click Go Button For Impact Route Guide Report
    [Tags]    REGRESSION
    Verify Click Go Button

Validate Select First Row From Look Up Table For Impact Route Guide Report
    [Tags]    REGRESSION
    Verify Select First Row From Look Up Table

Validate Click Routing Product Browse Button For Impact Route Guide Report
    [Tags]    REGRESSION
    Verify Click Product Browse Button

Validate Get Routing Product From productiXRoute Table For Impact Route Guide Report
    [Tags]    REGRESSION
    Verify Get Routing Product From productiXRoute Table        ${DATABASE SERVER}      ${DATABASE}      ${DATABASE USERNAME}      ${DATABASE PASSWORD}     ${DESTINATION}

Validate Compare Lookup Table Routing Product With Database For Impact Route Guide Report
    [Tags]    REGRESSION
    Verify Compare Lookup Table Routing Product With Database

Validate Close Routing Product Pop Up For Impact Route Guide Report
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Click Sub Report Item For Rate Change Impact Report
    [Tags]    REGRESSION
    Verify Click Sub Report Item        ${RATE CHANGE IMPACT REPORT SUBMENU}

Validate Click Submit Button For Rate Change Impact Report
    [Tags]    REGRESSION
    Verify Click Submit Button

Validate Close Detail Report Window For Rate Change Impact Report
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Click Sub Report Item For Route Guide Cost Change Report
    [Tags]    REGRESSION
    Verify Click Sub Report Item        ${ROUTE GUIDE COST CHANGE REPORT SUBMENU}

Validate Click Submit Button For Route Guide Cost Change Report
    [Tags]    REGRESSION
    Verify Click Submit Button

Validate Close Detail Report Window For Route Guide Cost Change Report
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Close Report Page Exit Button
    [Tags]    REGRESSION
    Verify Click Report Page Exit Button