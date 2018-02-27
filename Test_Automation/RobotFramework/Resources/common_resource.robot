*** Settings ***
Documentation     A resource file with reusable keywords and variables.

Resource          ../Resources/Pages/login_page_resource.robot

Library           ../../TestFramework/Libraries/TestFixture.py
Library           ../../TestFramework/Libraries/RobotTests/Home.py

*** Variables ***
${LOCALE}                       en-US                                  # Locale; Editable, Default value: en-US
${DEFAULT TIME OUT VALUE}       60                                  # Webdriver default time out value. editable. should be greater than 0, Can't be empty
${TEST ENVIRONMENT}             TestAutomation                      # Test environment; Default Value: TestAutomation; Must be: TestAutomation/Staging/Client
${SERVER}                       testauto.etg.dom                   # Server name.
${iXTOOLS LOGIN PAGE URL}       http://${SERVER}/iXTools           # Application URL.
${BROWSER NAME}                 Ie                                  # Browser name.
${VALID USERNAME}               ixsaasadmin                         # Valid user name.
${VALID PASSWORD}               Admin2015                           # Valid password.
${INVALID USERNAME}             invalid                             # Invalid user name.
${INVALID PASSWORD}             invalid                             # Invalid password.
${LOGIN STATUS}                 False                               # Login status. Default value - False
${SIGN OUT STATUS}              False                               # Sign out status. Default value - False
${SCREENSHOT DIRECTORY}         ${EMPTY}                            # Screenshot directory, selected based on project output directory.
${IMAGE PATH}                   ${EMPTY}                            # Image path. is returned from test framework.
${DATABASE SERVER}              10.0.224.46                         # Database server name.
${DATABASE}                     iXTrade_Main                        # Database name.
${DATABASE USERNAME}            ixadmin                             # User name for the database.
${DATABASE PASSWORD}            admin2012                           # Password for the database.
${TEST DATA PREFIX}             UAT_AUTO_                           # Test data prefix. Default value: UAT_AUTO_. Editable.
${TEMPLATE PATH}                C:/Templates                       # Upload File Template Path.
${SSL CERTIFICATE FLAG}         False                               # SSL certificate flag, editable. Default value False.
${iXTRADE PAGE URL}             http://${SERVER}/iXTrade           # iXTrade page URL.
${iXADMIN PAGE URL}             http://${SERVER}/iXAdmin           # iXAdmin page URL.
${iXCONTROL PAGE URL}           http://${SERVER}/iXControl           # iXControl page URL.
${iXREPORT PAGE URL}            http://${SERVER}/iXReport           # iXReport page URL.
${iXBILL PAGE URL}              http://${SERVER}/iXBill             # iXBill page URL.
*** Keywords ***
Validate SetUp
    Setup    ${BROWSER NAME}
    set time out value      ${DEFAULT TIME OUT VALUE}
    set ssl certificate flag        ${SSL CERTIFICATE FLAG}

Validate Login Functionality With Valid Credential
    Validate SetUp
    Goto    ${iXTOOLS LOGIN PAGE URL}
    Submit Credentials    ${VALID USERNAME}    ${VALID PASSWORD}
    ${LOGIN STATUS} =    Login Should Be Succesfull
    Handle Multiple Sessions
    [Teardown]    run keyword if    '${LOGIN STATUS}'=='False'    Log Screenshot

Validate Log Out Functionality
    ${SIGN OUT STATUS} =    Sign out
    [Teardown]      run keyword     Teardown

Log Screenshot
    ${SCREENSHOT DIRECTORY} =   get variable value      ${OUTPUT DIR}
    ${IMAGE PATH} =    capture screenshot     ${SCREENSHOT DIRECTORY}
    Log    <img src="${IMAGE PATH}">    HTML
