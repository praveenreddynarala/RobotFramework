*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate MOR Monthly Customer Specific Margin Report Drilldown

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixreport_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/ixreport_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Report Module
    [Tags]    REGRESSION
    Verify Switch To IXReport

Validate Expand Reports Section
    [Tags]    REGRESSION
    Verify Expand Reports Section       ${MONTHLY OPERATIONAL REPORTS MENU}

Validate Click Sub Report Item
    [Tags]    REGRESSION
    Verify Click Sub Report Item        ${MONTHLY CUSTOMER SPECIFIC MARGIN REPORT SUBMENU}

Validate Set Begin Month
    [Tags]    REGRESSION
    Verify Set Begin Month

Validate Set First Level Summarize By
    [Tags]    REGRESSION
    Verify Set First Level Summarize By         ${CALL MONTH SUMMARIZE BY}

Validate Set Second Level Summarize By
    [Tags]    REGRESSION
    Verify Set Second Level Summarize By        ${DESTINATION CATEGORY SUMMARIZE BY}

Validate Set Third Level Summarize By
    [Tags]    REGRESSION
    Verify Set Third Level Summarize By         ${IN ACCOUNT SUMMARIZE BY}

Validate Set Fourth Level Summarize By
    [Tags]    REGRESSION
    Verify Set Fourth Level Summarize By        ${OUT ACCOUNT SUMMARIZE BY}

Validate Set Fifth Level Summarize By
    [Tags]    REGRESSION
    Verify Set Fifth Level Summarize By         ${REFERENCE DESTINATION SUMMARIZE BY}

Validate Click Submit Button With ID
    [Tags]    REGRESSION
    Verify Click Submit Button With ID

Validate PPM Is Calculated Correctly
    [Tags]    REGRESSION
    Verify PPM Is Calculated Correctly

Validate PPM Is Calculated Correctly TEST
    [Tags]    REGRESSION
    Verify PPM Is Calculated Correctly

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

Validate Expand First Layer First Row
    [Tags]    REGRESSION
    Verify Expand MOR Later First Row

Validate Switch To Level N Detail Frame
    [Tags]    REGRESSION
    Verify Switch To Level N Detail Frame

Validate PPM Is Calculated Correctly For Layer 2
    [Tags]    REGRESSION
    Verify PPM Is Calculated Correctly

Validate Click Report Preview Button For Layer 2
    [Tags]    REGRESSION
    Verify Click Report Preview Button If Expand Successful

Validate Switch To Level N Detail Frame After Preview
    [Tags]    REGRESSION
    Verify Switch To Level N Detail Frame

Validate Click Report Export To Excel Button For Layer 2
    [Tags]    REGRESSION
    Verify Click Report Export To Excel Button If Expand Successful

Validate Click Report Export To CSV Button For Layer 2
    [Tags]    REGRESSION
    Verify Click Report Export To CSV Button If Expand Successful

Validate Switch To Level N Detail Frame After CSV
    [Tags]    REGRESSION
    Verify Switch To Level N Detail Frame

Validate Click Report Export To PDF Button For Layer 2
    [Tags]    REGRESSION
    Verify Click Report Export To PDF Button If Expand Successful

Validate Expand Layer First Row For Layer 2
    [Tags]    REGRESSION
    Verify Expand MOR Later First Row

Validate Switch To Level N Detail Frame For Layer 3
    [Tags]    REGRESSION
    Verify Switch To Level N Detail Frame

Validate Switch To Level N Detail Frame For Layer 3 Preview
    [Tags]    REGRESSION
    Verify Switch To Level N Detail Frame

Validate PPM Is Calculated Correctly For Layer 3
    [Tags]    REGRESSION
    Verify PPM Is Calculated Correctly

Validate Click Report Preview Button For Layer 3
    [Tags]    REGRESSION
    Verify Click Report Preview Button If Expand Successful

Validate Switch To Level N Detail Frame For Layer 3 After Preview
    [Tags]    REGRESSION
    Verify Switch To Level N Detail Frame

Validate Switch To Level N Detail Frame For Layer 3 After Preview Done
    [Tags]    REGRESSION
    Verify Switch To Level N Detail Frame

Validate Click Report Export To Excel Button For Layer 3
    [Tags]    REGRESSION
    Verify Click Report Export To Excel Button If Expand Successful

Validate Click Report Export To CSV Button For Layer 3
    [Tags]    REGRESSION
    Verify Click Report Export To CSV Button If Expand Successful

Validate Switch To Level N Detail Frame For Layer 3 After CSV
    [Tags]    REGRESSION
    Verify Switch To Level N Detail Frame

Validate Switch To Level N Detail Frame For Layer 3 After CSV Done
    [Tags]    REGRESSION
    Verify Switch To Level N Detail Frame

Validate Click Report Export To PDF Button For Layer 3
    [Tags]    REGRESSION
    Verify Click Report Export To PDF Button If Expand Successful

Validate Expand Layer First Row For Layer 3
    [Tags]    REGRESSION
    Verify Expand MOR Later First Row

Validate Switch To Level N Detail Frame For Layer 4
    [Tags]    REGRESSION
    Verify Switch To Level N Detail Frame

Validate Second Switch To Level N Detail Frame For Layer 4
    [Tags]    REGRESSION
    Verify Switch To Level N Detail Frame

Validate Third Switch To Level N Detail Frame For Layer 4
    [Tags]    REGRESSION
    Verify Switch To Level N Detail Frame

Validate PPM Is Calculated Correctly For Layer 4
    [Tags]    REGRESSION
    Verify PPM Is Calculated Correctly

Validate Click Report Preview Button For Layer 4
    [Tags]    REGRESSION
    Verify Click Report Preview Button If Expand Successful

Validate Switch To Level N Detail Frame For Layer 4 After Preview
    [Tags]    REGRESSION
    Verify Switch To Level N Detail Frame

Validate Second Switch To Level N Detail Frame For Layer 4 After Preview
    [Tags]    REGRESSION
    Verify Switch To Level N Detail Frame

Validate Third Switch To Level N Detail Frame For Layer 4 After Preview
    [Tags]    REGRESSION
    Verify Switch To Level N Detail Frame

Validate Click Report Export To Excel Button For Layer 4
    [Tags]    REGRESSION
    Verify Click Report Export To Excel Button If Expand Successful

Validate Click Report Export To CSV Button For Layer 4
    [Tags]    REGRESSION
    Verify Click Report Export To CSV Button If Expand Successful

Validate Switch To Level N Detail Frame For Layer 4 After CSV
    [Tags]    REGRESSION
    Verify Switch To Level N Detail Frame

Validate Second Switch To Level N Detail Frame For Layer 4 After CSV
    [Tags]    REGRESSION
    Verify Switch To Level N Detail Frame

Validate Third Switch To Level N Detail Frame For Layer 4 After CSV
    [Tags]    REGRESSION
    Verify Switch To Level N Detail Frame

Validate Click Report Export To PDF Button For Layer 4
    [Tags]    REGRESSION
    Verify Click Report Export To PDF Button If Expand Successful

Validate Expand Layer First Row For Layer 4
    [Tags]    REGRESSION
    Verify Expand MOR Later First Row

Validate Switch To Level N Detail Frame For Layer 5
    [Tags]    REGRESSION
    Verify Switch To Level N Detail Frame

Validate Second Switch To Level N Detail Frame For Layer 5
    [Tags]    REGRESSION
    Verify Switch To Level N Detail Frame

Validate Third Switch To Level N Detail Frame For Layer 5
    [Tags]    REGRESSION
    Verify Switch To Level N Detail Frame

Validate Fourth Switch To Level N Detail Frame For Layer 5
    [Tags]    REGRESSION
    Verify Switch To Level N Detail Frame

Validate PPM Is Calculated Correctly For Layer 5
    [Tags]    REGRESSION
    Verify PPM Is Calculated Correctly

Validate Click Report Preview Button For Layer 5
    [Tags]    REGRESSION
    Verify Click Report Preview Button If Expand Successful

Validate Switch To Level N Detail Frame For Layer 5 After Preview
    [Tags]    REGRESSION
    Verify Switch To Level N Detail Frame

Validate Second Switch To Level N Detail Frame For Layer 5 After Preview
    [Tags]    REGRESSION
    Verify Switch To Level N Detail Frame

Validate Third Switch To Level N Detail Frame For Layer 5 After Preview
    [Tags]    REGRESSION
    Verify Switch To Level N Detail Frame

Validate Fourth Switch To Level N Detail Frame For Layer 5 After Preview
    [Tags]    REGRESSION
    Verify Switch To Level N Detail Frame

Validate Click Report Export To Excel Button For Layer 5
    [Tags]    REGRESSION
    Verify Click Report Export To Excel Button If Expand Successful

Validate Click Report Export To CSV Button For Layer 5
    [Tags]    REGRESSION
    Verify Click Report Export To CSV Button If Expand Successful

Validate Switch To Level N Detail Frame For Layer 5 After CSV
    [Tags]    REGRESSION
    Verify Switch To Level N Detail Frame

Validate Second Switch To Level N Detail Frame For Layer 5 After CSV
    [Tags]    REGRESSION
    Verify Switch To Level N Detail Frame

Validate Third Switch To Level N Detail Frame For Layer 5 After CSV
    [Tags]    REGRESSION
    Verify Switch To Level N Detail Frame

Validate Fourth Switch To Level N Detail Frame For Layer 5 After CSV
    [Tags]    REGRESSION
    Verify Switch To Level N Detail Frame

Validate Click Report Export To PDF Button For Layer 5
    [Tags]    REGRESSION
    Verify Click Report Export To PDF Button If Expand Successful

Validate Close Detail Report Window
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Click Save My Report Button
    [Tags]    REGRESSION
    Verify Click New Save My Report Button

Validate Set My Report Title
    [Tags]    REGRESSION
    Verify Set My Report Title      ${TEST DATA PREFIX}

Validate Click My Report Save Button
    [Tags]    REGRESSION
    Verify Click My Report Save Button

Validate Expand Reports Section For My Report
    [Tags]    REGRESSION
    Verify Expand Reports Section       ${MONTHLY OPERATIONAL REPORTS MENU}

Validate Expand Sub Report Item
    [Tags]    REGRESSION
    Verify Expand Sub Report Item       ${MONTHLY CUSTOMER SPECIFIC MARGIN REPORT SUBMENU}

Validate Click My Report Name
    [Tags]    REGRESSION
    ${MY REPORT NAME} =     Verify Get My Report Title
    Verify Click My Report Name     ${MY REPORT NAME}

Validate Click My Report Submit Button
    [Tags]    REGRESSION
    Verify Click My Report Submit Button

Validate PPM Is Calculated Correctly For My Report
    [Tags]    REGRESSION
    Verify PPM Is Calculated Correctly

Validate Close My Report Window
    [Tags]    REGRESSION
    Verify Close IxReport Window

Validate Close IXReport Window
    [Tags]    REGRESSION
    Verify Close IxReport Window
