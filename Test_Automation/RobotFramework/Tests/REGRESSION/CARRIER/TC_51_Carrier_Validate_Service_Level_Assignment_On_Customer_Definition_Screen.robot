*** Settings ***
Documentation     [TAENOSIS-951] A Test Suite With Set Of Tests To Validate Service Level Assignment On Customer Definition Screen

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixtrade_page_resource.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Contracts module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate Go To IXTrade Screen With Specific Url
    [Tags]    REGRESSION
    Go To IXTrade Screen With Specific Url

Validate Click Service Level Base CPL Customer Definition Submenu
    [Tags]    REGRESSION
    Verify Click Service Level Base CPL Customer Definition Submenu

Validate Customer Filter Option Is Present
    [Tags]    REGRESSION
    Verify RPLM Screen Filter Option Is Present     Customer

Validate Service Level Based CPLs Filter Option Is Present
    [Tags]    REGRESSION
    Verify RPLM Screen Filter Option Is Present     Service-Level Based CPLs        ${FALSE}

Validate Save Changes Button Is Present
    [Tags]    REGRESSION
    Verify RPLM Screen Button Is Present        Save changes

Validate Cancel Changes Button Is Present
    [Tags]    REGRESSION
    Verify RPLM Screen Button Is Present        Cancel changes

Validate Bulk Edit Button Is Present
    [Tags]    REGRESSION
    Verify RPLM Screen Button Is Present        Bulk Edit

Validate Service Level Customer Definition Grid Customer Column Is Present
    [Tags]    REGRESSION
    Verify Service Level Customer Definition Grid Column Is Present     Customer

Validate Service Level Customer Definition Grid Service Level Based CPL Column Is Present
    [Tags]    REGRESSION
    Verify Service Level Customer Definition Grid Column Is Present     Service Level Based CPL

Validate Service-Level Based CPLs Drop Down Displays Correct Options
    [Tags]    REGRESSION
    Verify Service-Level Based CPLs Drop Down Displays Correct Options

Validate Click Exit Button
    [Tags]    REGRESSION
    Verify Click Exit Button