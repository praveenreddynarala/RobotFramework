*** Settings ***
Documentation     [TAENOSIS-981] A Test Suite With Set Of Tests To Validate Options In The Benchmark Value Drop Down Should Be Consistent Across The Sub Tabs

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/route_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/route_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Route module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Route' From Main Menu

Validate Navigate to Commercial Routing Tab
    [Tags]    REGRESSION
    Verify Select Commercial Routing Tab

Validate Click Benchmarks Button
    [Tags]    REGRESSION
    Verify Click Benchmarks Button

Validate The Benchmark Management Margin Grid Is Empty
    [Tags]    REGRESSION
    Verify The Benchmark Management Margin Grid Is Empty

Validate Click First Row Of Benchmark Management Margin First Grid
    [Tags]    REGRESSION
    Verify Click First Row Of Benchmark Management Margin First Grid

Validate The Ajax Spinner Load Is Available
    [Tags]    REGRESSION
    Verify The Ajax Spinner Load Is Available

Validate Select Max Route Commercial Tab
    [Tags]    REGRESSION
    Verify Select Max Route Commercial Tab

Validate The Benchmark Management Max Route Commercial Grid Is Empty
    [Tags]    REGRESSION
    Verify The Benchmark Management Margin Grid Is Empty

Validate Click First Row Of Benchmark Management Max Route Commercial First Grid
    [Tags]    REGRESSION
    Verify Click First Row Of Benchmark Management Max Route Commercial First Grid

Validate The Ajax Spinner Load Is Available In Max Route Commercial Page
    [Tags]    REGRESSION
    Verify The Ajax Spinner Load Is Available

Validate Select Bulk Test Call Tab
    [Tags]    REGRESSION
    Verify Select Bulk Test Call Tab

Validate The Benchmark Management Bulk Test Tab Grid Is Empty
    [Tags]    REGRESSION
    Verify The Benchmark Management Margin Grid Is Empty

Validate Set Meggase Delivered In Grid
    [Tags]    REGRESSION
    Verify Set Meggase Delivered In Grid

Validate The Ajax Spinner Load Is Not Available
    [Tags]    REGRESSION
    Verify The Ajax Spinner Load Is Not Available

Validate Set Meggase Delivered In Grid With Opposite Of Selected Value
    [Tags]    REGRESSION
    Verify Set Meggase Delivered In Grid With Opposite Of Selected Value

Validate The Ajax Spinner Load Is Available In Bulk Test Call Tab
    [Tags]    REGRESSION
    Verify The Ajax Spinner Load Is Available
    
Validate Click Bulk Test Call Save Changes Button
    [Tags]    REGRESSION
    Verify Click Bulk Test Call Save Changes Button