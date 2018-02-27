*** Settings ***
Documentation     [TAENOSIS-847] A Test Suite With Set Of Tests To Validate Review Documents And Route Guide With Sell Rating Report Sub Tabs

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/sell_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Price module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Click Review Customer Price Exception Requests Link
    [Tags]    REGRESSION
    Verify Click Review Customer Price Exception Requests Link

Validate Set Status For Requested
    [Tags]    REGRESSION
    sell_page_resource.Verify Set Status    @{ALL STATUS ITEM LIST}

Validate Verify Set Select Date For Search
    [Tags]    REGRESSION
    Verify Set Pricing Exceptions Select Date

Validate Click Price Exceptions Search Button
    [Tags]    REGRESSION
    sell_page_resource.Verify Click Price Exceptions Search Button

Validate Click Price Exceptions Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Pricing Exceptions First Row Inline Action Button

Validate Select Inline Action Item
    [Tags]    REGRESSION
    price_page_resource.Verify Select Inline Action Item        View Price Exceptions Details

Validate Documents Tab Is Present In View Pricing Exception Details Pop Up
    [Tags]    REGRESSION
    Verify Specific Tab Is Present In View Pricing Exception Details Pop Up     Documents

Validate Click Document Tab On Pricing Exception Page
    [Tags]    REGRESSION
    Verify Click Document Tab On Pricing Exception Page

Validate The Delete Button Present Is Available In View Pricing Exception Details Page
    [Tags]    REGRESSION
    Verify The Delete Button Present Is Available In View Pricing Exception Details Page

Validate The Upload Document Button Present Is Available In View Pricing Exception Details Page
    [Tags]    REGRESSION
    Verify The Upload Document Button Present Is Available In View Pricing Exception Details Page

Validate The Document Name Column Is Available In Review Pricing Exception Documents Tab
    [Tags]    REGRESSION
    Verify The Specific Column Is Available In Review Pricing Exception Documents Tab       Document Name

Validate The Document Version Column Is Available In Review Pricing Exception Documents Tab
    [Tags]    REGRESSION
    Verify The Specific Column Is Available In Review Pricing Exception Documents Tab       Document Version

Validate The External Reference Number Column Is Available In Review Pricing Exception Documents Tab
    [Tags]    REGRESSION
    Verify The Specific Column Is Available In Review Pricing Exception Documents Tab       External Reference Number

Validate The Note Column Is Available In Review Pricing Exception Documents Tab
    [Tags]    REGRESSION
    Verify The Specific Column Is Available In Review Pricing Exception Documents Tab       Note

Validate The Uploaded Date Column Is Available In Review Pricing Exception Documents Tab
    [Tags]    REGRESSION
    Verify The Specific Column Is Available In Review Pricing Exception Documents Tab       Uploaded Date

Validate The Uploaded By Column Is Available In Review Pricing Exception Documents Tab
    [Tags]    REGRESSION
    Verify The Specific Column Is Available In Review Pricing Exception Documents Tab       Uploaded By

Validate Click RGWSRR Tab On Pricing Exception Page
    [Tags]    REGRESSION
    Verify Click RGWSRR Tab On Pricing Exception Page

Validate The Country Column Is Available In Review Pricing Exception RGWSRR Tab
    [Tags]    REGRESSION
    Verify The Specific Column Is Available In Review Pricing Exception RGWSRR Tab      Country

Validate The Category Column Is Available In Review Pricing Exception RGWSRR Tab
    [Tags]    REGRESSION
    Verify The Specific Column Is Available In Review Pricing Exception RGWSRR Tab      Category

Validate The Routing Product Column Is Available In Review Pricing Exception RGWSRR Tab
    [Tags]    REGRESSION
    Verify The Specific Column Is Available In Review Pricing Exception RGWSRR Tab      Routing Product

Validate The RG Routing Product Column Is Available In Review Pricing Exception RGWSRR Tab
    [Tags]    REGRESSION
    Verify The Specific Column Is Available In Review Pricing Exception RGWSRR Tab      RG Routing Product

Validate The RG Status Column Is Available In Review Pricing Exception RGWSRR Tab
    [Tags]    REGRESSION
    Verify The Specific Column Is Available In Review Pricing Exception RGWSRR Tab      RG Status

Validate The Minimum ASR Benchmark Column Is Available In Review Pricing Exception RGWSRR Tab
    [Tags]    REGRESSION
    Verify The Specific Column Is Available In Review Pricing Exception RGWSRR Tab      Minimum ASR Benchmark

Validate The ASR Column Is Available In Review Pricing Exception RGWSRR Tab
    [Tags]    REGRESSION
    Verify The Specific Column Is Available In Review Pricing Exception RGWSRR Tab      ASR

Validate The Blended Cost Column Is Available In Review Pricing Exception RGWSRR Tab
    [Tags]    REGRESSION
    Verify The Specific Column Is Available In Review Pricing Exception RGWSRR Tab      Blended Cost

Validate The Sell Rate Column Is Available In Review Pricing Exception RGWSRR Tab
    [Tags]    REGRESSION
    Verify The Specific Column Is Available In Review Pricing Exception RGWSRR Tab      Sell Rate

Validate The Sell Rate Type Column Is Available In Review Pricing Exception RGWSRR Tab
    [Tags]    REGRESSION
    Verify The Specific Column Is Available In Review Pricing Exception RGWSRR Tab      Sell Rate Type

Validate The Margin Rate Column Is Available In Review Pricing Exception RGWSRR Tab
    [Tags]    REGRESSION
    Verify The Specific Column Is Available In Review Pricing Exception RGWSRR Tab      Margin Rate

Validate The Description Column Is Available In Review Pricing Exception RGWSRR Tab
    [Tags]    REGRESSION
    Verify The Specific Column Is Available In Review Pricing Exception RGWSRR Tab      Description

Validate The Route 1 Column Is Available In Review Pricing Exception RGWSRR Tab
    [Tags]    REGRESSION
    Verify The Specific Column Is Available In Review Pricing Exception RGWSRR Tab      Route 1

Validate The Route 2 Column Is Available In Review Pricing Exception RGWSRR Tab
    [Tags]    REGRESSION
    Verify The Specific Column Is Available In Review Pricing Exception RGWSRR Tab      Route 2

Validate The Route 3 Column Is Available In Review Pricing Exception RGWSRR Tab
    [Tags]    REGRESSION
    Verify The Specific Column Is Available In Review Pricing Exception RGWSRR Tab      Route 3

Validate The Route 4 Column Is Available In Review Pricing Exception RGWSRR Tab
    [Tags]    REGRESSION
    Verify The Specific Column Is Available In Review Pricing Exception RGWSRR Tab      Route 4

Validate The Route 5 Column Is Available In Review Pricing Exception RGWSRR Tab
    [Tags]    REGRESSION
    Verify The Specific Column Is Available In Review Pricing Exception RGWSRR Tab      Route 5

Validate The Route 6 Column Is Available In Review Pricing Exception RGWSRR Tab
    [Tags]    REGRESSION
    Verify The Specific Column Is Available In Review Pricing Exception RGWSRR Tab      Route 6

Validate The Route 7 Column Is Available In Review Pricing Exception RGWSRR Tab
    [Tags]    REGRESSION
    Verify The Specific Column Is Available In Review Pricing Exception RGWSRR Tab      Route 7

Validate The Route 8 Column Is Available In Review Pricing Exception RGWSRR Tab
    [Tags]    REGRESSION
    Verify The Specific Column Is Available In Review Pricing Exception RGWSRR Tab      Route 8

Validate The Route 9 Column Is Available In Review Pricing Exception RGWSRR Tab
    [Tags]    REGRESSION
    Verify The Specific Column Is Available In Review Pricing Exception RGWSRR Tab      Route 9

Validate The Route 10 Column Is Available In Review Pricing Exception RGWSRR Tab
    [Tags]    REGRESSION
    Verify The Specific Column Is Available In Review Pricing Exception RGWSRR Tab      Route 10

Validate Close View Pricing Exception Details Pop Up
    [Tags]    REGRESSION
    price_page_resource.Verify Close Current Pop Up        View Pricing Exception Details