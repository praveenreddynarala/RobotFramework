*** Settings ***
Documentation     [TAENOSIS-950] A Test Suite With Set Of Tests To Validate Credit Limit Basic Functionality

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/carrier_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/carrier_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CARRIER NAME}          ${EMPTY}

*** Test Cases ***
Validate Navigate to Carrier module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Carrier' From Main Menu

Validate Get Created Carrier Name
    [Tags]    REGRESSION
    ${CARRIER NAME} =       Verify Get Created Carrier Name
    set suite variable      ${CARRIER NAME}

Validate Select Credit Management Tab
    [Tags]    REGRESSION
    Click On Credit Management Tab

Validate Filter Credit Management Grid
    [Tags]    REGRESSION
    Verify Filter Credit Management Grid        ${CARRIER NAME COLUMN NAME}     ${CARRIER NAME}

Validate Click Credit Management Page Inline Action Button
    [Tags]    REGRESSION
    Verify Click Credit Management Page Inline Action Button        ${CARRIER NAME}

Validate Select Credit Profile inline Item
    [Tags]    REGRESSION
    Verify Select Inline Action Item        ${CREDIT PROFILE INLINE ITEM}

Validate The Credit Profile Tab Is Focused Properly In Credit Profile Page
    [Tags]    REGRESSION
    Verify The Specific Tab Is Focused Properly In Credit Profile Page      Credit Profile

Validate Reset Level 1 Threshold Value
    [Tags]    REGRESSION
    Verify Set Threshold Values     ${THRESHOLD LEVEL 1 TEXT}       40

Validate Reset Level 2 Threshold Value
    [Tags]    REGRESSION
    Verify Set Threshold Values     ${THRESHOLD LEVEL 2 TEXT}       35

Validate Reset Level 3 Threshold Value
    [Tags]    REGRESSION
    Verify Set Threshold Values    ${THRESHOLD LEVEL 3 TEXT}       30

Validate Reset Shut-off Threshold Value
    [Tags]    REGRESSION
    Verify Set Threshold Values     ${THRESHOLD SHUTOFF TEXT}       25

Validate Set Level 1 Remaining Credit Amount Threshold Value For Define All Thresholds As Percentages Message
    [Tags]    REGRESSION
    Verify Set Remaining Credit Amount Threshold Values     ${THRESHOLD LEVEL 1 TEXT}       ${THRESHOLD LEVEL 1 VALUE}

Validate Set Level 2 Remaining Credit Amount Threshold Value For Define All Thresholds As Percentages Message
    [Tags]    REGRESSION
    Verify Set Remaining Credit Amount Threshold Values     ${THRESHOLD LEVEL 2 TEXT}       ${THRESHOLD LEVEL 2 VALUE}

Validate Set Level 3 Remaining Credit Amount Threshold Value For Define All Thresholds As Percentages Message
    [Tags]    REGRESSION
    Verify Set Remaining Credit Amount Threshold Values    ${THRESHOLD LEVEL 3 TEXT}       ${THRESHOLD LEVEL 3 VALUE}

Validate Set Shut-off Remaining Credit Amount Threshold Value For Define All Thresholds As Percentages Message
    [Tags]    REGRESSION
    Verify Set Remaining Credit Amount Threshold Values     ${THRESHOLD SHUTOFF TEXT}       ${THRESHOLD SHUTOFF VALUE}

Validate The Define All Thresholds As Percentages Message Error Message Is Displayed In Credit Profile Page
    [Tags]    REGRESSION
    Verify The Specific Error Message Is Displayed In Credit Profile Page        Define all Thresholds as Percentages or Amounts but not both

Validate Reset Level 1 Remaining Credit Amount Threshold Value
    [Tags]    REGRESSION
    Verify Set Remaining Credit Amount Threshold Values     ${THRESHOLD LEVEL 1 TEXT}       ${EMPTY}

Validate Reset Level 2 Remaining Credit Amount Threshold Value
    [Tags]    REGRESSION
    Verify Set Remaining Credit Amount Threshold Values     ${THRESHOLD LEVEL 2 TEXT}       ${EMPTY}

Validate Reset Level 3 Remaining Credit Amount Threshold Value
    [Tags]    REGRESSION
    Verify Set Remaining Credit Amount Threshold Values    ${THRESHOLD LEVEL 3 TEXT}       ${EMPTY}

Validate Reset Shut-off Remaining Credit Amount Threshold Value
    [Tags]    REGRESSION
    Verify Set Remaining Credit Amount Threshold Values     ${THRESHOLD SHUTOFF TEXT}       ${EMPTY}

Validate Reset Credit Limit For Credit Limit Amount Error Message
    [Tags]    REGRESSION
    Verify Set Credit Limit     100

Validate Set Level 1 Threshold Value For Level 1 Warning Thresholds Error Message
    [Tags]    REGRESSION
    Verify Set Threshold Values     ${THRESHOLD LEVEL 1 TEXT}       ${EMPTY}

Validate The Level 1 Warning Thresholds Error Message Is Displayed In Credit Profile Page
    [Tags]    REGRESSION
    Verify The Specific Error Message Is Displayed In Credit Profile Page        Level 1 Warning Thresholds are not defined

Validate Reset Level 1 Threshold Value For Level 1 Warning Thresholds Error Message
    [Tags]    REGRESSION
    Verify Set Threshold Values     ${THRESHOLD LEVEL 1 TEXT}       ${THRESHOLD LEVEL 1 VALUE}

Validate Set Level 2 Threshold Value For Level 2 Warning Thresholds Error Message
    [Tags]    REGRESSION
    Verify Set Threshold Values     ${THRESHOLD LEVEL 2 TEXT}       ${EMPTY}

Validate The Level 2 Warning Thresholds Error Message Is Displayed In Credit Profile Page
    [Tags]    REGRESSION
    Verify The Specific Error Message Is Displayed In Credit Profile Page        Level 2 Warning Thresholds are not defined

Validate Reset Level 2 Threshold Value For Level 2 Warning Thresholds Error Message
    [Tags]    REGRESSION
    Verify Set Threshold Values     ${THRESHOLD LEVEL 2 TEXT}       ${THRESHOLD LEVEL 2 VALUE}

Validate Set Level 3 Threshold Value For Level 3 Warning Thresholds Error Message
    [Tags]    REGRESSION
    Verify Set Threshold Values     ${THRESHOLD LEVEL 3 TEXT}       ${EMPTY}

Validate The Level 3 Warning Thresholds Error Message Is Displayed In Credit Profile Page
    [Tags]    REGRESSION
    Verify The Specific Error Message Is Displayed In Credit Profile Page        Level 3 Warning Thresholds are not defined

Validate Reset Level 3 Threshold Value For Level 3 Warning Thresholds Error Message
    [Tags]    REGRESSION
    Verify Set Threshold Values     ${THRESHOLD LEVEL 3 TEXT}       ${THRESHOLD LEVEL 3 VALUE}

Validate Set Shut-off Threshold Value For Shut-off Warning Thresholds Error Message
    [Tags]    REGRESSION
    Verify Set Threshold Values     ${THRESHOLD SHUTOFF TEXT}       ${EMPTY}

Validate The Shut-off Warning Thresholds Error Message Is Displayed In Credit Profile Page
    [Tags]    REGRESSION
    Verify The Specific Error Message Is Displayed In Credit Profile Page        Shutoff Recommended Thresholds are not defined

Validate Reset Shut-off Threshold Value For Shut-off Warning Thresholds Error Message
    [Tags]    REGRESSION
    Verify Set Threshold Values     ${THRESHOLD SHUTOFF TEXT}       ${THRESHOLD SHUTOFF VALUE}

Validate Set Level 1 Threshold Value For Level 1 Warning Percentage Error Message
    [Tags]    REGRESSION
    Verify Set Threshold Values     ${THRESHOLD LEVEL 1 TEXT}       111

Validate The Level 1 Warning Percentage Error Message Is Displayed In Credit Profile Page
    [Tags]    REGRESSION
    Verify The Specific Error Message Is Displayed In Credit Profile Page        Level 1 Warning Percentage should not be greater than 100

Validate Reset Level 1 Threshold Value For Level 1 Warning Percentage Error Message
    [Tags]    REGRESSION
    Verify Set Threshold Values     ${THRESHOLD LEVEL 1 TEXT}       ${THRESHOLD LEVEL 1 VALUE}

Validate Set Level 2 Threshold Value For Level 2 Warning Percentage Error Message
    [Tags]    REGRESSION
    Verify Set Threshold Values     ${THRESHOLD LEVEL 2 TEXT}       111

Validate The Level 2 Warning Percentage Error Message Is Displayed In Credit Profile Page
    [Tags]    REGRESSION
    Verify The Specific Error Message Is Displayed In Credit Profile Page        Level 2 Warning Percentage should not be greater than 100

Validate Reset Level 2 Threshold Value For Level 2 Warning Percentage Error Message
    [Tags]    REGRESSION
    Verify Set Threshold Values     ${THRESHOLD LEVEL 2 TEXT}       ${THRESHOLD LEVEL 2 VALUE}

Validate Set Level 3 Threshold Value For Level 3 Warning Percentage Error Message
    [Tags]    REGRESSION
    Verify Set Threshold Values     ${THRESHOLD LEVEL 3 TEXT}       111

Validate The Level 3 Warning Percentage Error Message Is Displayed In Credit Profile Page
    [Tags]    REGRESSION
    Verify The Specific Error Message Is Displayed In Credit Profile Page        Level 3 Warning Percentage should not be greater than 100

Validate Reset Level 3 Threshold Value For Level 3 Warning Percentage Error Message
    [Tags]    REGRESSION
    Verify Set Threshold Values     ${THRESHOLD LEVEL 3 TEXT}       ${THRESHOLD LEVEL 3 VALUE}

Validate Set Shut-off Threshold Value For Shut-off Warning Percentage Error Message
    [Tags]    REGRESSION
    Verify Set Threshold Values     ${THRESHOLD SHUTOFF TEXT}       111

Validate The Shut-off Warning Percentage Error Message Is Displayed In Credit Profile Page
    [Tags]    REGRESSION
    Verify The Specific Error Message Is Displayed In Credit Profile Page        Shutoff Recommended Percentage should not be greater than 100

Validate Reset Shut-off Threshold Value For Shut-off Warning Percentage Error Message
    [Tags]    REGRESSION
    Verify Set Threshold Values     ${THRESHOLD SHUTOFF TEXT}       ${THRESHOLD SHUTOFF VALUE}

Validate Reset Level 1 Threshold Value For Level XX Warning Amount should not be greater Error Message
    [Tags]    REGRESSION
    Verify Set Threshold Values     ${THRESHOLD LEVEL 1 TEXT}       ${EMPTY}

Validate Reset Level 2 Threshold Value For Level XX Warning Amount should not be greater Error Message
    [Tags]    REGRESSION
    Verify Set Threshold Values     ${THRESHOLD LEVEL 2 TEXT}       ${EMPTY}

Validate Reset Level 3 Threshold Value For Level XX Warning Amount should not be greater Error Message
    [Tags]    REGRESSION
    Verify Set Threshold Values    ${THRESHOLD LEVEL 3 TEXT}       ${EMPTY}

Validate Reset Shut-off Threshold Value For Level XX Warning Amount should not be greater Error Message
    [Tags]    REGRESSION
    Verify Set Threshold Values     ${THRESHOLD SHUTOFF TEXT}       ${EMPTY}

Validate Set Level 1 Remaining Credit Amount Threshold Value For Level XX Warning Amount should not be greater Error Message
    [Tags]    REGRESSION
    Verify Set Remaining Credit Amount Threshold Values     ${THRESHOLD LEVEL 1 TEXT}       ${THRESHOLD LEVEL 1 VALUE}

Validate Set Level 2 Remaining Credit Amount Threshold Value For Level XX Warning Amount should not be greater Error Message
    [Tags]    REGRESSION
    Verify Set Remaining Credit Amount Threshold Values     ${THRESHOLD LEVEL 2 TEXT}       ${THRESHOLD LEVEL 2 VALUE}

Validate Set Level 3 Remaining Credit Amount Threshold Value For Level XX Warning Amount should not be greater Error Message
    [Tags]    REGRESSION
    Verify Set Remaining Credit Amount Threshold Values    ${THRESHOLD LEVEL 3 TEXT}       ${THRESHOLD LEVEL 3 VALUE}

Validate Set Shut-off Remaining Credit Amount Threshold Value For Level XX Warning Amount should not be greater Error Message
    [Tags]    REGRESSION
    Verify Set Remaining Credit Amount Threshold Values     ${THRESHOLD SHUTOFF TEXT}       ${THRESHOLD SHUTOFF VALUE}

Validate Set Level 1 Remaining Credit Amount Threshold Value For Level 1 Warning Amount Error Message
    [Tags]    REGRESSION
    Verify Set Remaining Credit Amount Threshold Values     ${THRESHOLD LEVEL 1 TEXT}       11111111

Validate The Level 1 Warning Amount Error Message Is Displayed In Credit Profile Page
    [Tags]    REGRESSION
    Verify The Specific Error Message Is Displayed In Credit Profile Page        Level 1 Warning Amount should not be greater than the credit limit amount

Validate Reset Level 1 Remaining Credit Amount Threshold Value For Level 1 Warning Amount Error Message
    [Tags]    REGRESSION
    Verify Set Remaining Credit Amount Threshold Values     ${THRESHOLD LEVEL 1 TEXT}       ${THRESHOLD LEVEL 1 VALUE}

Validate Set Level 2 Remaining Credit Amount Threshold Value For Level 2 Warning Amount Error Message
    [Tags]    REGRESSION
    Verify Set Remaining Credit Amount Threshold Values     ${THRESHOLD LEVEL 2 TEXT}       11111111

Validate The Level 2 Warning Amount Error Message Is Displayed In Credit Profile Page
    [Tags]    REGRESSION
    Verify The Specific Error Message Is Displayed In Credit Profile Page        Level 2 Warning Amount should not be greater than the credit limit amount

Validate Reset Level 2 Remaining Credit Amount Threshold Value For Level 2 Warning Amount Error Message
    [Tags]    REGRESSION
    Verify Set Remaining Credit Amount Threshold Values     ${THRESHOLD LEVEL 2 TEXT}       ${THRESHOLD LEVEL 2 VALUE}

Validate Set Level 3 Remaining Credit Amount Threshold Value For Level 3 Warning Amount Error Message
    [Tags]    REGRESSION
    Verify Set Remaining Credit Amount Threshold Values     ${THRESHOLD LEVEL 3 TEXT}       11111111

Validate The Level 3 Warning Amount Error Message Is Displayed In Credit Profile Page
    [Tags]    REGRESSION
    Verify The Specific Error Message Is Displayed In Credit Profile Page        Level 3 Warning Amount should not be greater than the credit limit amount

Validate Reset Level 3 Remaining Credit Amount Threshold Value For Level 3 Warning Amount Error Message
    [Tags]    REGRESSION
    Verify Set Remaining Credit Amount Threshold Values     ${THRESHOLD LEVEL 3 TEXT}       ${THRESHOLD LEVEL 3 VALUE}

Validate Set Shut-off Threshold Value For Shut-off Warning Amount Error Message
    [Tags]    REGRESSION
    Verify Set Remaining Credit Amount Threshold Values     ${THRESHOLD SHUTOFF TEXT}       11111111

Validate The Shut-off Warning Amount Error Message Is Displayed In Credit Profile Page
    [Tags]    REGRESSION
    Verify The Specific Error Message Is Displayed In Credit Profile Page        Shutoff Recommended Amount should not be greater than the credit limit amount

Validate Reset Shut-off Threshold Value For Shut-off Warning Amount Error Message
    [Tags]    REGRESSION
    Verify Set Remaining Credit Amount Threshold Values     ${THRESHOLD SHUTOFF TEXT}       ${THRESHOLD SHUTOFF VALUE}

Validate Reset Level 1 Remaining Credit Amount Threshold Value After Verifying Invalid Thresholds Error Message
    [Tags]    REGRESSION
    Verify Set Remaining Credit Amount Threshold Values     ${THRESHOLD LEVEL 1 TEXT}       ${EMPTY}

Validate Reset Level 2 Remaining Credit Amount Threshold Value After Verifying Invalid Thresholds Error Message
    [Tags]    REGRESSION
    Verify Set Remaining Credit Amount Threshold Values     ${THRESHOLD LEVEL 2 TEXT}       ${EMPTY}

Validate Reset Level 3 Remaining Credit Amount Threshold Value After Verifying Invalid Thresholds Error Message
    [Tags]    REGRESSION
    Verify Set Remaining Credit Amount Threshold Values    ${THRESHOLD LEVEL 3 TEXT}       ${EMPTY}

Validate Reset Shut-off Remaining Credit Amount Threshold Value After Verifying Invalid Thresholds Error Message
    [Tags]    REGRESSION
    Verify Set Remaining Credit Amount Threshold Values     ${THRESHOLD SHUTOFF TEXT}       ${EMPTY}

Validate Reset Level 1 Threshold Value For Invalid Thresholds Error Message
    [Tags]    REGRESSION
    Verify Set Threshold Values     ${THRESHOLD LEVEL 1 TEXT}       40

Validate Reset Level 2 Threshold Value For Invalid Thresholds Error Message
    [Tags]    REGRESSION
    Verify Set Threshold Values     ${THRESHOLD LEVEL 2 TEXT}       35

Validate Reset Level 3 Threshold Value For Invalid Thresholds Error Message
    [Tags]    REGRESSION
    Verify Set Threshold Values    ${THRESHOLD LEVEL 3 TEXT}       30

Validate Reset Shut-off Threshold Value For Invalid Thresholds Error Message
    [Tags]    REGRESSION
    Verify Set Threshold Values     ${THRESHOLD SHUTOFF TEXT}       25

Validate Set Level 2 Remaining Credit Amount Threshold Value For Invalid Thresholds Error Message
    [Tags]    REGRESSION
    Verify Set Threshold Values     ${THRESHOLD LEVEL 2 TEXT}       40

Validate The Level 2 Invalid Thresholds Error Message Is Displayed In Credit Profile Page
    [Tags]    REGRESSION
    Verify The Specific Error Message Is Displayed In Credit Profile Page        Invalid Thresholds (Status Workflow: Level 1 warning -> Level 2 Warning -> Level 3 Warning -> Shut off recommended)

Validate Reset Level 2 Remaining Credit Amount Threshold Value For Invalid Thresholds Error Message
    [Tags]    REGRESSION
    Verify Set Threshold Values     ${THRESHOLD LEVEL 2 TEXT}       35

Validate Set Level 3 Remaining Credit Amount Threshold Value For Invalid Thresholds Error Message
    [Tags]    REGRESSION
    Verify Set Threshold Values     ${THRESHOLD LEVEL 3 TEXT}       35

Validate The Level 3 Invalid Thresholds Error Message Is Displayed In Credit Profile Page
    [Tags]    REGRESSION
    Verify The Specific Error Message Is Displayed In Credit Profile Page        Invalid Thresholds (Status Workflow: Level 1 warning -> Level 2 Warning -> Level 3 Warning -> Shut off recommended)

Validate Reset Level 3 Remaining Credit Amount Threshold Value For Invalid Thresholds Error Message
    [Tags]    REGRESSION
    Verify Set Threshold Values     ${THRESHOLD LEVEL 3 TEXT}       30

Validate Set Shut-off Threshold Value For Invalid Thresholds Error Message
    [Tags]    REGRESSION
    Verify Set Threshold Values     ${THRESHOLD SHUTOFF TEXT}       30

Validate The Shut-off Invalid Thresholds Error Message Is Displayed In Credit Profile Page
    [Tags]    REGRESSION
    Verify The Specific Error Message Is Displayed In Credit Profile Page        Invalid Thresholds (Status Workflow: Level 1 warning -> Level 2 Warning -> Level 3 Warning -> Shut off recommended)

Validate Reset Shut-off Remaining Credit Amount Threshold Value For Invalid Thresholds Error Message
    [Tags]    REGRESSION
    Verify Set Threshold Values     ${THRESHOLD SHUTOFF TEXT}       25

Validate Click Save Credit Profile Button
    [Tags]    REGRESSION
    Verify Click Save Credit Profile Button

Validate Close Current Tab
    [Tags]    REGRESSION
    Verify Close Current Tab        ${CREDIT PROFILE TAB NAME}

Validate Click Credit Management Page Inline Action Button For Monitorind details
    [Tags]    REGRESSION
    Verify Click Credit Management Page Inline Action Button        ${CARRIER NAME}

Validate Select Credit Profile Monitorind details inline Item
    [Tags]    REGRESSION
    Verify Select Inline Action Item        ${MONITORING DETAILS INLINE ITEM}

Validate The Monitoring Details Tab Is Focused Properly In Credit Profile Page
    [Tags]    REGRESSION
    Verify The Specific Tab Is Focused Properly In Credit Profile Page      Monitoring Details

Validate Close Current Tab For Monitoring Details
    [Tags]    REGRESSION
    Verify Close Current Tab        ${CREDIT PROFILE TAB NAME}

Validate Click Credit Management Page Inline Action Button For Enter Transactions
    [Tags]    REGRESSION
    Verify Click Credit Management Page Inline Action Button        ${CARRIER NAME}

Validate Select Credit Profile Enter Transactions inline Item
    [Tags]    REGRESSION
    Verify Select Inline Action Item        ${ENTER TRANSACTIONS INLINE ITEM}

Validate The Add New Transaction Pop Up Is Available
    [Tags]    REGRESSION
    Verify The Add New Transaction Pop Up Is Available

Validate Close Add New Transaction Pop Up
    [Tags]    REGRESSION
    Verify Close Current Pop Up         Add New Transaction

Validate Click Credit Management Page Inline Action Button For Deactivate Credit Limit
    [Tags]    REGRESSION
    Verify Click Credit Management Page Inline Action Button        ${CARRIER NAME}

Validate Select Deactivate Credit Limit Inline Action Item
    [Tags]    REGRESSION
    Verify Select Deactivate Credit Limit Inline Action Item        ${DEACTIVATE CREDIT LIMIT INLINE ITEM}