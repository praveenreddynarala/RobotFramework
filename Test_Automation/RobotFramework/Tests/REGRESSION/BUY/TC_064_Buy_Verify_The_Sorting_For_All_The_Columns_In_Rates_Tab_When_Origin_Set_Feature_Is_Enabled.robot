*** Settings ***
Documentation    A Test Suite With Set Of Tests To Verify The Sorting For All The Columns In Rates Tab When Origin Set Feature Is Enabled

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/buy_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/buy_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate To Buy module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Buy' From Main Menu

Validate Vendors Tab Is Available
    [Tags]    REGRESSION
    Verify The Vendors Tab Is Available

Validation Navigate To Vendors Tab
    [Tags]    REGRESSION
    Verify Click On Vendors Tab

Validate Click On Vendor Price Lists
    [Tags]    REGRESSION
    Verify Click On Vendor Price Lists

Validate Set 'From Date'
    [Tags]    REGRESSION
    Verify Set From Date        1/1/2017

Validate Click On Vendor Price Lists Search Button
    [Tags]    REGRESSION
    Verify Click On Vendor Price Lists Search Button

Validate Click Vendor Price Lists Grid First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Vendor Price List Grid First Row Inline Action Button

Validate Select View Price List Detail Inline Action Item
    [Tags]    REGRESSION
    Verify Select Buy Page Inline Action Item       ${VIEW PRICE LIST DETAIL INLINE ITEM}

Validate Set Vendor Price List Detail Grid Settings For Rate Column
    [Tags]    REGRESSION
    Verify Set Vendor Price List Detail Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Ascending Sorting Option Is Not Available In Rate Column
    [Tags]    REGRESSION
    Verify Ascending Sorting Option Is Not Available In Destination Column      ${RATE COLUMN NAME}

Validate Descending Sorting Option Is Not Available In Rate Column
    [Tags]    REGRESSION
    Verify Descending Sorting Option Is Not Available In Destination Column      ${RATE COLUMN NAME}

Validate Set Vendor Price List Detail Grid Settings For Percentage Change Column
    [Tags]    REGRESSION
    Verify Set Vendor Price List Detail Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Ascending Sorting Option Is Not Available In Percentage Change Column
    [Tags]    REGRESSION
    Verify Ascending Sorting Option Is Not Available In Destination Column      ${PERCENTAGE CHANGE COLUMN NAME}

Validate Descending Sorting Option Is Not Available In Percentage Change Column
    [Tags]    REGRESSION
    Verify Descending Sorting Option Is Not Available In Destination Column      ${PERCENTAGE CHANGE COLUMN NAME}

Validate Set Vendor Price List Detail Grid Settings For Amount Change Column
    [Tags]    REGRESSION
    Verify Set Vendor Price List Detail Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Ascending Sorting Option Is Not Available In Amount Change Column
    [Tags]    REGRESSION
    Verify Ascending Sorting Option Is Not Available In Destination Column      ${AMOUNT CHANGE COLUMN NAME}

Validate Descending Sorting Option Is Not Available In Amount Change Column
    [Tags]    REGRESSION
    Verify Descending Sorting Option Is Not Available In Destination Column      ${AMOUNT CHANGE COLUMN NAME}

Validate Set Vendor Price List Detail Grid Settings For Previous Rate Column
    [Tags]    REGRESSION
    Verify Set Vendor Price List Detail Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Ascending Sorting Option Is Not Available In Previous Rate Column
    [Tags]    REGRESSION
    Verify Ascending Sorting Option Is Not Available In Destination Column      ${PREVIOUS RATE COLUMN NAME}

Validate Descending Sorting Option Is Not Available In Previous Rate Column
    [Tags]    REGRESSION
    Verify Descending Sorting Option Is Not Available In Destination Column      ${PREVIOUS RATE COLUMN NAME}

Validate Set Vendor Price List Detail Grid Settings For Rate Type Column
    [Tags]    REGRESSION
    Verify Set Vendor Price List Detail Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Ascending Sorting Option Is Not Available In Rate Type Column
    [Tags]    REGRESSION
    Verify Ascending Sorting Option Is Not Available In Destination Column      ${RATE TYPE COLUMN NAME}

Validate Descending Sorting Option Is Not Available In Rate Type Column
    [Tags]    REGRESSION
    Verify Descending Sorting Option Is Not Available In Destination Column      ${RATE TYPE COLUMN NAME}

Validate Set Vendor Price List Detail Grid Settings For Rate Increase Violation Column
    [Tags]    REGRESSION
    Verify Set Vendor Price List Detail Grid Settings        ${RESET ALL GRID SETTINGS}

Validate Ascending Sorting Option Is Not Available In Rate Increase Violation Column
    [Tags]    REGRESSION
    Verify Ascending Sorting Option Is Not Available In Destination Column      ${RATE INCREASE VIOLATION COLUMN NAME}

Validate Descending Sorting Option Is Not Available In Rate Increase Violation Column
    [Tags]    REGRESSION
    Verify Descending Sorting Option Is Not Available In Destination Column      ${RATE INCREASE VIOLATION COLUMN NAME}