*** Settings ***
Documentation     [TAENOSIS-576] A Test Suite With Set Of Tests To Validate The RPLM Screen

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixtrade_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CREATED PRICE POLICY}     ${EMPTY}

*** Test Cases ***
Validate Get Created Price Policy Name
    [Tags]    REGRESSION
    ${CREATED PRICE POLICY} =       Verify Get Created Cost Policy Name
    log         ${CREATED PRICE POLICY}
    set suite variable          ${CREATED PRICE POLICY}

Validate Navigate to Contracts Module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate Navigate to IXTrade module
    [Tags]    REGRESSION
    Go To IXTrade Screen With Specific Url

Validate Click Reference Price List management Submenu
    [Tags]    REGRESSION
    Verify Click Reference Price List management Submenu

Validate RPLM Screen Filter Reference Price List Filter Option Is Present
    [Tags]    REGRESSION
    Verify RPLM Screen Filter Option Is Present     Reference Price List

Validate RPLM Screen Filter Status Filter Option Is Present
    [Tags]    REGRESSION
    Verify RPLM Screen Filter Option Is Present     Status

Validate RPLM Screen Filter Country Filter Option Is Present
    [Tags]    REGRESSION
    Verify RPLM Screen Filter Option Is Present     Country

Validate RPLM Screen Filter Trade Destination Category Filter Option Is Present
    [Tags]    REGRESSION
    Verify RPLM Screen Filter Option Is Present     Trade Destination Category

Validate RPLM Screen Filter Region Filter Option Is Present
    [Tags]    REGRESSION
    Verify RPLM Screen Filter Option Is Present     Region

Validate RPLM Screen Filter Country Category #1 Filter Option Is Present
    [Tags]    REGRESSION
    Verify RPLM Screen Filter Option Is Present     Country Category #1

Validate RPLM Screen Filter Country Category #2 Filter Option Is Present
    [Tags]    REGRESSION
    Verify RPLM Screen Filter Option Is Present     Country Category #2

Validate RPLM Screen Filter Origin Filter Option Is Present
    [Tags]    REGRESSION
    Verify RPLM Screen Filter Option Is Present     Origin

Validate RPLM Screen Filter Destination Filter Option Is Present
    [Tags]    REGRESSION
    Verify RPLM Screen Filter Option Is Present     Destination     ${FALSE}

Validate RPLM Screen Filter Select Date Filter Option Is Present
    [Tags]    REGRESSION
    Verify RPLM Screen Filter Option Is Present     Select Date     ${FALSE}

Validate RPLM Screen Save Changes Button Is Present
    [Tags]    REGRESSION
    Verify RPLM Screen Button Is Present        Save changes

Validate RPLM Screen Cancel Changes Button Is Present
    [Tags]    REGRESSION
    Verify RPLM Screen Button Is Present        Cancel changes

Validate RPLM Screen Bulk Edit Button Is Present
    [Tags]    REGRESSION
    Verify RPLM Screen Button Is Present        Bulk Edit

Validate RPLM Screen RPL Report Button Is Present
    [Tags]    REGRESSION
    Verify RPLM Screen Button Is Present        RPL Report

Validate Apply Custom Rules Radio Button Is Present
    [Tags]    REGRESSION
    Verify Apply Custom Rules Radio Button Is Present

Validate Set Reference Price List For Search
    [Tags]    REGRESSION
    ixtrade_page_resource.Verify Set Reference Price List For Search      ${CREATED PRICE POLICY}

Validate Click Customer Pricing Exception Management Search Button
    [Tags]    REGRESSION
    Verify Click Customer Pricing Exception Management Search Button

Validate Compare Reference Price List Column Value Of RPLM Left Grid
    [Tags]    REGRESSION
    Compare Specifie Column First Row Value Of RPLM Left Grid     Reference Price List        ${CREATED PRICE POLICY}

Validate Click RPLM Grid First Row Checkbox
    [Tags]    REGRESSION
    Verify Click RPLM Grid First Row Checkbox

Validate Click Bulk Edit Button
    [Tags]    REGRESSIOn
    ixtrade_page_resource.Verify Click Bulk Edit Button

Validate Set Note
    [Tags]    REGRESSIOn
    ixtrade_page_resource.Verify Set Note   ${TEST DATA PREFIX}

Validate Click Bulk Edit Submit Button
    [Tags]    REGRESSIOn
    ixtrade_page_resource.Verify Click Bulk Edit Submit Button

Validate Select Apply Custom Rules Radio Button
    [Tags]    REGRESSION
    Verify Select Apply Custom Rules Radio Button   Yes

Validate Click Save Changes Button
    [Tags]    REGRESSION
    ixtrade_page_resource.Verify Click Save Changes Button

Validate Click RPL Report Button
    [Tags]    REGRESSION
    Verify Click RPL Report Button

Validate RPL Report Price List Tab Is Present
    [Tags]    REGRESSION
    Verify RPL Report Price List Tab Is Present

Validate RPL Report Impact Tab Is Present
    [Tags]    REGRESSION
    Verify RPL Report Impact Tab Is Present

Validate RPL Report Price List Grid Prev.Cost Column Is Present
    [Tags]    REGRESSION
    Verify RPL Report Price List Grid Column Is Present     Prev.Cost

Validate RPL Report Price List Grid Prev. Target Price Column Is Present
    [Tags]    REGRESSION
    Verify RPL Report Price List Grid Column Is Present     Prev. Target Price

Validate RPL Report Price List Grid Prev. Minimum Price Column Is Present
    [Tags]    REGRESSION
    Verify RPL Report Price List Grid Column Is Present     Prev. Minimum Price

Validate Select Rpl Report Impact Tab
    [Tags]    REGRESSION
    Verify Select Rpl Report Impact Tab

Validate RPL Report Impact Grid Impact Column Is Present
    [Tags]    REGRESSION
    Verify RPL Report Impact Grid Column Is Present     Impact

Validate RPL Report Impact Grid Estimated Volume for Last Month Column Is Present
    [Tags]    REGRESSION
    Verify RPL Report Impact Grid Column Is Present     Estimated Volume for Last Month

Validate RPL Report Impact Grid Target Revenue Column Is Present
    [Tags]    REGRESSION
    Verify RPL Report Impact Grid Column Is Present     Target Revenue

Validate Close Impact Window
    [Tags]    REGRESSION
    Verify Close iXTrade Window

Validate Close RPL Report Window
    [Tags]    REGRESSION
    Verify Close iXTrade Window

Validate Close IXTrade Window
    [Tags]    REGRESSION
    Verify Click Exit Button