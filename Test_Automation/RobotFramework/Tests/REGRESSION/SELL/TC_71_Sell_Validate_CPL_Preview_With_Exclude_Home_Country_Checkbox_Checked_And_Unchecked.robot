*** Settings ***
Documentation     [TAENOSIS-553] A Test Suite With Set Of Tests To Validate CPL Preview With Exclude Home Country Checkbox Checked And Unchecked

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/sell_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${HOMECOUNTRYID VALUE}      ${EMPTY}
${SOURCE NAME}              ${EMPTY}
${COUNTRY NAME FROM DATABASE}       ${EMPTY}

*** Test Cases ***
Validate Navigate to System Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'System Admin' From Main Menu

Validate Select System Tab
    [Tags]    REGRESSION
    Click on System Tab

Validate Click Configuration Variables Button
    [Tags]    REGRESSION
    Verify Click Configuration Variables Button

Validate Create Config Variable Presen Dictionary
    [Tags]    REGRESSION
    Verify Create Config Variable Presen Dictionary

Validate Set Variable Name For HomeCountryID
    [Tags]    REGRESSION
    Verify Set Variable Name    HomeCountryID

Validate Click Configuration Variables Grid Search Button For HomeCountryID
    [Tags]    REGRESSION
    system_admin_page_resource.Verify Click Search Button

Validate Store Preset Config Variable Current Value For HomeCountryID
    [Tags]    REGRESSION
    ${HOMECOUNTRYID VALUE} =       Verify Store Preset Config Variable Current Value       HomeCountryID
    log     ${HOMECOUNTRYID VALUE}
    set suite variable          ${HOMECOUNTRYID VALUE}

Validate Close System Admin Window
    [Tags]    REGRESSION
    Verify Close System Admin Window

Validate Navigate to Sell module
    [Tags]    REGRESSION
    Click On Home Icon And Select 'Sell' From Main Menu

Validate Navigate to Customer Tab
    [Tags]    REGRESSION
    Click On Customer Tab

Validate Get Source Name From Source Customer Table
    [Tags]    REGRESSION
    ${SOURCE NAME} =    Verify Get Source Name From Source Customer Table       ${DATABASE SERVER}      ${DATABASE}      ${DATABASE USERNAME}      ${DATABASE PASSWORD}
    log  ${SOURCE NAME}
    set suite variable      ${SOURCE NAME}

Validate Filter Customer Grid Column
    [Tags]    REGRESSION
    Verify Filter Customer Grid Column      ${SOURCE NAME}

Validate Click On Customer Grid Inline Action Button
    [Tags]    REGRESSION
    Verify Click On Customer Grid Inline Action Button      ${SOURCE NAME}

Validate Select Customer Profile Inline Action Item
    [Tags]    REGRESSION
    sell_page_resource.Verify Select Inline Action Item        ${INLINE ACTION ITEM NAME}

Validate Check Exclude Own Home Country Checkbox
    [Tags]    REGRESSION
    Verify Check Exclude Own Home Country Checkbox

Validate Click Save Customer Profile Button
    [Tags]    REGRESSION
    Verify Click Save Customer Profile Button

Validate Customer Profile Tab
    [Tags]    REGRESSION
    sell_page_resource.Verify Close Current Tab        Customer Profile

Validate Click Create Customer Price Lists Button
    [Tags]    REGRESSION
    Verify Click Create Customer Price Lists Button

Validate Select Customers For Price Lists
    [Tags]    REGRESSION
    Verify Select Customers For Price Lists     ${SOURCE NAME}

Validate Get Country Name From Database
    [Tags]    REGRESSION
    ${COUNTRY NAME FROM DATABASE} =       Verify Get Country Name From Database     ${HOMECOUNTRYID VALUE}       ${DATABASE SERVER}      ${DATABASE}      ${DATABASE USERNAME}      ${DATABASE PASSWORD}
    log         ${COUNTRY NAME FROM DATABASE}
    set suite variable      ${COUNTRY NAME FROM DATABASE}

Validate Assign Available Country To Source From Database
    [Tags]    REGRESSION
    Verify Assign Available Country To Source       ${COUNTRY NAME FROM DATABASE}

Validate Assign Available Country To Source
    [Tags]    REGRESSION
    Verify Assign Available Country To Source       Yemen

Validate Click Preview Button
    [Tags]    REGRESSION
    sell_page_resource.Verify Click Preview Button

Validate The Homecountry Is Not Available In The Preview Grid
    [Tags]    REGRESSION
    Verify The Homecountry Is Not Available In The Preview Grid     ${COUNTRY NAME FROM DATABASE}

Validate Close Preview Page
    [Tags]    REGRESSION
    sell_page_resource.Verify Close Preview Page

Validate Click On Generate Customer Price Lists Button
    [Tags]    REGRESSION
    Verify Click On Generate Customer Price Lists Button

Validate Close Create Customer Price Lists Tab
    [Tags]     REGRESSION
    sell_page_resource.Verify Close Current Tab        Create Customer Price Lists

Validate Click On Customer Grid Inline Action Button To Uncheck Homecountry Checkbox
    [Tags]    REGRESSION
    Verify Click On Customer Grid Inline Action Button      ${SOURCE NAME}

Validate Select Customer Profile Inline Action Item To Uncheck Homecountry Checkbox
    [Tags]    REGRESSION
    sell_page_resource.Verify Select Inline Action Item        ${INLINE ACTION ITEM NAME}

Validate Uncheck Exclude Own Home Country Checkbox
    [Tags]    REGRESSION
    Verify Uncheck Exclude Own Home Country Checkbox

Validate Click Save Customer Profile Button After Unchecking Homecountry Checkbox
    [Tags]    REGRESSION
    Verify Click Save Customer Profile Button

Validate Customer Profile Tab After Unchecking Homecountry Checkbox
    [Tags]    REGRESSION
    sell_page_resource.Verify Close Current Tab        Customer Profile

Validate Click Create Customer Price Lists Button After Unchecking Homecountry Checkbox
    [Tags]    REGRESSION
    Verify Click Create Customer Price Lists Button

Validate Select Customers For Price Lists After Unchecking Homecountry Checkbox
    [Tags]    REGRESSION
    Verify Select Customers For Price Lists     ${SOURCE NAME}

Validate Assign Available Country To Source From Database After Unchecking Homecountry Checkbox
    [Tags]    REGRESSION
    Verify Assign Available Country To Source       Yemen

Validate Assign Available Country To Source After Unchecking Homecountry Checkbox
    [Tags]    REGRESSION
    Verify Assign Available Country To Source       ${COUNTRY NAME FROM DATABASE}

Validate Click Preview Button After Unchecking Homecountry Checkbox
    [Tags]    REGRESSION
    sell_page_resource.Verify Click Preview Button

Validate The Homecountry Is Available In The Preview Grid After Unchecking Homecountry Checkbox
    [Tags]    REGRESSION
    Verify The Homecountry Is Available In The Preview Grid     ${COUNTRY NAME FROM DATABASE}

Validate Close Preview Pop Up After Unchecking Homecountry Checkbox
    [Tags]    REGRESSION
    sell_page_resource.Verify Close Preview Page

Validate Click On Generate Customer Price Lists Button After Unchecking Homecountry Checkbox
    [Tags]    REGRESSION
    Verify Click On Generate Customer Price Lists Button

Validate Close Create Customer Price Lists Tab After Unchecking Homecountry Checkbox
    [Tags]     REGRESSION
    sell_page_resource.Verify Close Current Tab        Create Customer Price Lists

Validate Close Sell Window
    [Tags]    REGRESSION
    Verify Close Sell Window

Validate Navigate to Sell module For CountryId As Not Null
    [Tags]    REGRESSION
    Click On Home Icon And Select 'Sell' From Main Menu

Validate Navigate to Customer Tab For CountryId As Not Null
    [Tags]    REGRESSION
    Click On Customer Tab

Validate Get Source Name From Source Customer Table For CountryId As Not Null
    [Tags]    REGRESSION
    ${SOURCE NAME} =    Verify Get Source Name From Source Customer Table Where CountryId Is Not Null       ${DATABASE SERVER}      ${DATABASE}      ${DATABASE USERNAME}      ${DATABASE PASSWORD}
    log  ${SOURCE NAME}
    set suite variable      ${SOURCE NAME}

Validate Filter Customer Grid Column For CountryId As Not Null
    [Tags]    REGRESSION
    Verify Filter Customer Grid Column      ${SOURCE NAME}

Validate Click On Customer Grid Inline Action Button For CountryId As Not Null
    [Tags]    REGRESSION
    Verify Click On Customer Grid Inline Action Button      ${SOURCE NAME}

Validate Select Customer Profile Inline Action Item For CountryId As Not Null
    [Tags]    REGRESSION
    sell_page_resource.Verify Select Inline Action Item        ${INLINE ACTION ITEM NAME}

Validate Check Exclude Own Home Country Checkbox For CountryId As Not Null
    [Tags]    REGRESSION
    Verify Check Exclude Own Home Country Checkbox

Validate Click Save Customer Profile Button For CountryId As Not Null
    [Tags]    REGRESSION
    Verify Click Save Customer Profile Button

Validate Customer Profile Tab For CountryId As Not Null
    [Tags]    REGRESSION
    sell_page_resource.Verify Close Current Tab        Customer Profile

Validate Click Create Customer Price Lists Button For CountryId As Not Null
    [Tags]    REGRESSION
    Verify Click Create Customer Price Lists Button

Validate Select Customers For Price Lists For CountryId As Not Null
    [Tags]    REGRESSION
    Verify Select Customers For Price Lists     ${SOURCE NAME}

Validate Assign Available Country To Source From Database For CountryId As Not Null
    [Tags]    REGRESSION
    Verify Assign Available Country To Source       ${COUNTRY NAME FROM DATABASE}

Validate Assign Available Country To Source For CountryId As Not Null
    [Tags]    REGRESSION
    Verify Assign Available Country To Source       Yemen

Validate Click Preview Button For CountryId As Not Null
    [Tags]    REGRESSION
    sell_page_resource.Verify Click Preview Button

Validate The Homecountry Is Not Available In The Preview Grid For CountryId As Not Null
    [Tags]    REGRESSION
    Verify The Homecountry Is Not Available In The Preview Grid     ${COUNTRY NAME FROM DATABASE}

Validate Close Preview Page For CountryId As Not Null
    [Tags]    REGRESSION
    sell_page_resource.Verify Close Preview Page

Validate Click On Generate Customer Price Lists Button For CountryId As Not Null
    [Tags]    REGRESSION
    Verify Click On Generate Customer Price Lists Button

Validate Close Create Customer Price Lists Tab For CountryId As Not Null
    [Tags]     REGRESSION
    sell_page_resource.Verify Close Current Tab        Create Customer Price Lists

Validate Click On Customer Grid Inline Action Button To Uncheck Homecountry Checkbox For CountryId As Not Null
    [Tags]    REGRESSION
    Verify Click On Customer Grid Inline Action Button      ${SOURCE NAME}

Validate Select Customer Profile Inline Action Item To Uncheck Homecountry Checkbox For CountryId As Not Null
    [Tags]    REGRESSION
    sell_page_resource.Verify Select Inline Action Item        ${INLINE ACTION ITEM NAME}

Validate Uncheck Exclude Own Home Country Checkbox For CountryId As Not Null
    [Tags]    REGRESSION
    Verify Uncheck Exclude Own Home Country Checkbox

Validate Click Save Customer Profile Button After Unchecking Homecountry Checkbox For CountryId As Not Null
    [Tags]    REGRESSION
    Verify Click Save Customer Profile Button

Validate Customer Profile Tab After Unchecking Homecountry Checkbox For CountryId As Not Null
    [Tags]    REGRESSION
    sell_page_resource.Verify Close Current Tab        Customer Profile

Validate Click Create Customer Price Lists Button After Unchecking Homecountry Checkbox For CountryId As Not Null
    [Tags]    REGRESSION
    Verify Click Create Customer Price Lists Button

Validate Select Customers For Price Lists After Unchecking Homecountry Checkbox For CountryId As Not Null
    [Tags]    REGRESSION
    Verify Select Customers For Price Lists     ${SOURCE NAME}

Validate Assign Available Country To Source From Database After Unchecking Homecountry Checkbox For CountryId As Not Null
    [Tags]    REGRESSION
    Verify Assign Available Country To Source       Yemen

Validate Assign Available Country To Source After Unchecking Homecountry Checkbox For CountryId As Not Null
    [Tags]    REGRESSION
    Verify Assign Available Country To Source       ${COUNTRY NAME FROM DATABASE}

Validate Click Preview Button After Unchecking Homecountry Checkbox For CountryId As Not Null
    [Tags]    REGRESSION
    sell_page_resource.Verify Click Preview Button

Validate The Homecountry Is Available In The Preview Grid After Unchecking Homecountry Checkbox For CountryId As Not Null
    [Tags]    REGRESSION
    Verify The Homecountry Is Available In The Preview Grid     ${COUNTRY NAME FROM DATABASE}

Validate Close Preview Pop Up After Unchecking Homecountry Checkbox For CountryId As Not Null
    [Tags]    REGRESSION
    sell_page_resource.Verify Close Preview Page

Validate Click On Generate Customer Price Lists Button After Unchecking Homecountry Checkbox For CountryId As Not Null
    [Tags]    REGRESSION
    Verify Click On Generate Customer Price Lists Button

Validate Close Create Customer Price Lists Tab After Unchecking Homecountry Checkbox For CountryId As Not Null
    [Tags]     REGRESSION
    sell_page_resource.Verify Close Current Tab        Create Customer Price Lists