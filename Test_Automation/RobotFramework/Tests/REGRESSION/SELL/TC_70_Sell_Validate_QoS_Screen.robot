*** Settings ***
Documentation     [TAENOSIS-843] A Test Suite With Set Of Tests To Validate Qos Screen

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/sell_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/business_admin_page_test_data_source.robot
Resource          ../../../Resources/ExternalDataSource/TestAutomation/sell_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${SOURCE NAME}      ${EMPTY}

*** Test Cases ***
Validate Navigate to Business Admin module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Business Admin' From Main Menu

Validate Expand Trading Menu
    [Tags]    REGRESSION
    Verify Expand Trading Menu

Validate Click Source And Policies Submenu
    [Tags]    REGRESSION
    Verify Click Source And Policies Submenu

Validate Set Source Type For Search
    [Tags]    REGRESSION
    Verify Set Source Type For Search       ${QUALITY OF SERVICE SOURCE TYPE}

Validate Click Sources Search Button
    [Tags]    REGRESSION
    Verify Click Sources Search Button

Validate Click Add New Source Button
    [Tags]    REGRESSION
    Verify Click Add New Source Button

Validate Set Source
    [Tags]    REGRESSION
    Verify Set Source       ${TEST DATA PREFIX}

Validate Set Abbreviation
    [Tags]    REGRESSION
    Verify Set Abbreviation     ${TEST DATA PREFIX}

Validate Set Status
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Set Status       ${ACTIVE STATUS}

Validate Set Number Plan
    [Tags]    REGRESSION
    Verify Set QOS Number Plan      ${OUTBOUND REF NUMBER PLAN}

Validate Set Call Type
    [Tags]    REGRESSION
    Verify Set QOS Call Type        SMS

Validate Set Note
    [Tags]    REGRESSION
    Verify Set Note     ${NOTE FOR ADD QUALITY OF SERVICE}

Validate Click Create New Customer Save Button
    [Tags]    REGRESSION
    Verify Click Create New Customer Save Button

Validate Get Source Name
    [Tags]    REGRESSION
    ${SOURCE NAME} =        Verify Get Source Name
    set suite variable      ${SOURCE NAME}

Validate Close Business Admin Window
    [Tags]    REGRESSION
    Verify Close Business Admin Window

Validate Navigate to Sell module
    [Tags]    REGRESSION
    Click On Home Icon And Select 'Sell' From Main Menu

Validate Click Quality Of Service Link
    [Tags]    REGRESSION
    Verify Click Quality Of Service Link

Validate QOS Screen Destination Filter Option Is Present
    [Tags]    REGRESSION
    Verify QOS Screen Filter Option Is Present      Destination

Validate QOS Screen Country Filter Option Is Present
    [Tags]    REGRESSION
    Verify QOS Screen Filter Option Is Present      Country

Validate QOS Screen Quality of Service Filter Option Is Present
    [Tags]    REGRESSION
    Verify QOS Screen Filter Option Is Present      Quality of Service

Validate QOS Screen Select Date Filter Option Is Present
    [Tags]    REGRESSION
    Verify QOS Screen Filter Option Is Present      Select Date

Validate Set Quality of Service
    [Tags]    REGRESSION
    sell_page_resource.Verify Set Quality of Service       ${SOURCE NAME}

Validate Click Quality Of Service Search Button
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Click Search Button

Validate QOS Grid Destination Column Is Present
    [Tags]    REGRESSION
    Verify QOS Grid Column Is Present       Destination

Validate QOS Grid Country Column Is Present
    [Tags]    REGRESSION
    Verify QOS Grid Column Is Present       Country

Validate QOS Grid Terminating Traffic Column Is Present
    [Tags]    REGRESSION
    Verify QOS Grid Column Is Present       Terminating Traffic

Validate QOS Grid Delivery Report Column Is Present
    [Tags]    REGRESSION
    Verify QOS Grid Column Is Present       Delivery Report

Validate QOS Grid Stop SMS Mandatory Column Is Present
    [Tags]    REGRESSION
    Verify QOS Grid Column Is Present       Stop SMS Mandatory

Validate QOS Grid Alpha-Numeric Support Column Is Present
    [Tags]    REGRESSION
    Verify QOS Grid Column Is Present       Alpha-Numeric Support

Validate QOS Grid Long Number Support Column Is Present
    [Tags]    REGRESSION
    Verify QOS Grid Column Is Present       Long Number Support

Validate QOS Grid Short Code Support Column Is Present
    [Tags]    REGRESSION
    Verify QOS Grid Column Is Present       Short Code Support

Validate QOS Grid Architecture Column Is Present
    [Tags]    REGRESSION
    Verify QOS Grid Column Is Present       Architecture

Validate QOS Grid MNP Column Is Present
    [Tags]    REGRESSION
    Verify QOS Grid Column Is Present       MNP

Validate QOS Grid Comments Column Is Present
    [Tags]    REGRESSION
    Verify QOS Grid Column Is Present       Comments

Validate Click Clear Button
    [Tags]    REGRESSION
    Verify Click Clear Button

Validate QoS Filter Option Selection Is Cleared
    [Tags]    REGRESSION
    Verify Qos Filter Option Selection Is Cleared

Validate Close Sell Window
    [Tags]    REGRESSION
    Verify Close Sell Window

Validate Navigate to Business Admin module For Voice
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Business Admin' From Main Menu

Validate Expand Trading Menu For Voice
    [Tags]    REGRESSION
    Verify Expand Trading Menu

Validate Click Source And Policies Submenu For Voice
    [Tags]    REGRESSION
    Verify Click Source And Policies Submenu

Validate Set Source Type For Search For Voice
    [Tags]    REGRESSION
    Verify Set Source Type For Search       ${QUALITY OF SERVICE SOURCE TYPE}

Validate Click Sources Search Button For Voice
    [Tags]    REGRESSION
    Verify Click Sources Search Button

Validate Click Add New Source Button For Voice
    [Tags]    REGRESSION
    Verify Click Add New Source Button

Validate Set Source For Voice
    [Tags]    REGRESSION
    Verify Set Source       ${TEST DATA PREFIX}

Validate Set Abbreviation For Voice
    [Tags]    REGRESSION
    Verify Set Abbreviation     ${TEST DATA PREFIX}

Validate Set Status For Voice
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Set Status       ${ACTIVE STATUS}

Validate Set Number Plan For Voice
    [Tags]    REGRESSION
    Verify Set QOS Number Plan      ${OUTBOUND REF NUMBER PLAN}

Validate Set Call Type For Voice
    [Tags]    REGRESSION
    Verify Set QOS Call Type        ISDN

Validate Set Note For Voice
    [Tags]    REGRESSION
    Verify Set Note     ${NOTE FOR ADD QUALITY OF SERVICE}

Validate Click Create New Customer Save Button For Voice
    [Tags]    REGRESSION
    Verify Click Create New Customer Save Button

Validate Get Source Name For Voice
    [Tags]    REGRESSION
    ${SOURCE NAME} =        Verify Get Source Name
    set suite variable      ${SOURCE NAME}

Validate Close Business Admin Window For Voice
    [Tags]    REGRESSION
    Verify Close Business Admin Window

Validate Navigate to Sell module For Voice
    [Tags]    REGRESSION
    Click On Home Icon And Select 'Sell' From Main Menu

Validate Click Quality Of Service Link For Voice
    [Tags]    REGRESSION
    Verify Click Quality Of Service Link

Validate Set Quality of Service For Voice
    [Tags]    REGRESSION
    sell_page_resource.Verify Set Quality of Service       ${SOURCE NAME}

Validate Click Quality Of Service Search Button For Voice
    [Tags]    REGRESSION
    business_admin_page_resource.Verify Click Search Button

Validate QOS Grid Destination Column Is Present For Voice
    [Tags]    REGRESSION
    Verify QOS Grid Column Is Present       Destination

Validate QOS Grid Country Column Is Present For Voice
    [Tags]    REGRESSION
    Verify QOS Grid Column Is Present       Country

Validate QOS Grid Terminating Traffic Column Is Present For Voice
    [Tags]    REGRESSION
    Verify QOS Grid Column Is Present       Terminating Traffic

Validate QOS Grid CLI Column Is Present For Voice
    [Tags]    REGRESSION
    Verify QOS Grid Column Is Present       CLI

Validate QOS Grid ASR Column Is Present For Voice
    [Tags]    REGRESSION
    Verify QOS Grid Column Is Present       ASR

Validate QOS Grid ALOC Column Is Present For Voice
    [Tags]    REGRESSION
    Verify QOS Grid Column Is Present       ALOC

Validate QOS Grid NER Column Is Present For Voice
    [Tags]    REGRESSION
    Verify QOS Grid Column Is Present       NER

Validate QOS Grid Volume Column Is Present For Voice
    [Tags]    REGRESSION
    Verify QOS Grid Column Is Present       Volume

Validate Click Import Button
    [Tags]    REGRESSION
    Verify Click Import Button

Validate Click QoS Browse Button
    [Tags]    REGRESSION
    Verify Click QoS Browse Button

Validate Select Qos File To Be Uploaded
    [Tags]    REGRESSION
    ${CALL TYPE} =      Verify Get Call Type
    Verify Select Price Exception File To Be Uploaded       ${TEMPLATE PATH}/${CALL TYPE}/${QOS IMPORT TEMPLATE NAME}

Validate Click Upload Files Button
    [Tags]    REGRESSION
    Verify Click Upload Files Button