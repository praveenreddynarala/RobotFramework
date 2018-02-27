*** Settings ***
Documentation    A Test Suite With Set Of Tests To Validate Origin Set To Be Populated For Non Origin Records

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/contracts_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixtrade_page_resource.robot
Resource          ../../../Resources/Pages/system_admin_page_resource.robot
Resource          ../../../Resources/Pages/buy_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/ixtrade_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Variables ***
${CREATED NEW VENDOR NAME}      ${EMPTY}
${CALL TYPE}                    ${EMPTY}
@{DESTINATION LIST}             ${EMPTY}
@{RATES VELUE LIST}             ${EMPTY}

*** Test Cases ***
Validate Navigate to Contracts Module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Contracts' From Main Menu

Validate Navigate to IXTrade module
    [Tags]    REGRESSION
    Go To IXTrade Screen With Specific Url

Validate Click Vendor Offer Upload Submenu
    [Tags]    REGRESSION
    Verify Click Vendor Offer Upload Submenu

Validate Set Vendor Offer Source Type
    [Tags]    REGRESSION
    Verify Set Vendor Offer Source Type     ${XML SOURCE TYPE}

Validate Get Call Type
    [Tags]    REGRESSION
    ${CALL TYPE} =      Verify Get Call Type
    set suite variable      ${CALL TYPE}

Validate Get Created Vendor Name For New Vendor
    [Tags]    REGRESSION
    ${CREATED NEW VENDOR NAME} =    Verify Get Created Vendor Name
    set suite variable      ${CREATED NEW VENDOR NAME}
    log  ${CREATED NEW VENDOR NAME}

Validate Update The XML File
    [Tags]    REGRESSION
    ${CALL TYPE} =      Verify Get Call Type
    set suite variable      ${CALL TYPE}
    Verify Update The XML File      ${TEMPLATE PATH}/${CALL TYPE}/${XML TEMPLATES FOLDER}/${VENDOR OFFER UPLOAD XML FILE NAME}      ${CREATED NEW VENDOR NAME}

Validate Update Offer Name Of The XML File
    [Tags]    REGRESSION
    Verify Update Offer Name Of The XML File      ${TEMPLATE PATH}/${CALL TYPE}/${XML TEMPLATES FOLDER}/${VENDOR OFFER UPLOAD XML FILE NAME}      ORIGIN_RATES_TEST_

Validate Update Origingroup Name Of The XML File
    [Tags]    REGRESSION
    Verify Update Origingroup Name Of The XML File      ${TEMPLATE PATH}/${CALL TYPE}/${XML TEMPLATES FOLDER}/${VENDOR OFFER UPLOAD XML FILE NAME}      ${TEST DATA PREFIX}

Validate Update Origin Name Of The XML File
    [Tags]    REGRESSION
    Verify Update Origin Name Of The XML File      ${TEMPLATE PATH}/${CALL TYPE}/${XML TEMPLATES FOLDER}/${VENDOR OFFER UPLOAD XML FILE NAME}      ${TEST DATA PREFIX}

Validate Get Destinations From The XML File
    [Tags]    REGRESSION
    @{DESTINATION LIST} =   Verify Get Destinations From The XML File       ${TEMPLATE PATH}/${CALL TYPE}/${XML TEMPLATES FOLDER}/${VENDOR OFFER UPLOAD XML FILE NAME}
    set suite variable          @{DESTINATION LIST}

Validate Get Rates Value From The XML File
    [Tags]    REGRESSION
    @{RATES VELUE LIST} =   Verify Get Rates Value From The XML File       ${TEMPLATE PATH}/${CALL TYPE}/${XML TEMPLATES FOLDER}/${VENDOR OFFER UPLOAD XML FILE NAME}
    set suite variable          @{RATES VELUE LIST}

Validate Click Vendor Offer Browse Button
    [Tags]    REGRESSION
    Verify Click Vendor Offer Browse Button

Validate Select The File To Be Uploaded
    [Tags]    REGRESSION
    ixtrade_page_resource.Verify Select The File To Be Uploaded        ${TEMPLATE PATH}/${CALL TYPE}/${XML TEMPLATES FOLDER}/${VENDOR OFFER UPLOAD XML FILE NAME}

Validate Click Upload Now Button
    [Tags]    REGRESSION
    Verify Click Upload Now Button

Validate Click Vendor Offes Submenu
    [Tags]    REGRESSION
    Verify Click Vendor Offers Submenu

Validate Set Vendor Name For Search
    [Tags]    REGRESSION
    Verify Set Vendor Name For Search       ${CREATED NEW VENDOR NAME}

Validate Set Vendor Offer From Date For Search
    [Tags]    REGRESSION
    Verify Set Vendor Offer From Date For Search        1/1/2016

Validate Click Vendor Offers Go Button
    [Tags]    REGRESSION
    Verify Click Vendor Offers Go Button

Validate Click Vendor Offer First Plus Button
    [Tags]    REGRESSION
    Verify Click Vendor Offer First Plus Button

Validate Click Vendor Offer First Dicon Button
    [Tags]    REGRESSION
    Verify Click Vendor Offer First Dicon Button

Validate Click Vendor Offers Destination Go Button
    [Tags]    REGRESSION
    Verify Click Vendor Offers Destination Go Button

Validate Compare Destination
    [Tags]    REGRESSION
    Verify Compare Destinations      @{DESTINATION LIST}

Validate Click Vendor Offer First Ricon Button
    [Tags]    REGRESSION
    Verify Click Vendor Offer First Ricon Button

Validate Compare Rates
    [Tags]    REGRESSION
    Verify Compare Rates      @{RATES VELUE LIST}

Validate Click Vendor Offer Upload Submenu For Second Upload
    [Tags]    REGRESSION
    Verify Click Vendor Offer Upload Submenu

Validate Set Vendor Offer Source Type For Second Upload
    [Tags]    REGRESSION
    Verify Set Vendor Offer Source Type     ${XML SOURCE TYPE}

Validate Update The XML File For Second Upload
    [Tags]    REGRESSION
    Verify Update The XML File      ${TEMPLATE PATH}/${CALL TYPE}/${XML TEMPLATES FOLDER}/${VENDOR OFFER UPLOAD SECOND XML FILE NAME}      ${CREATED NEW VENDOR NAME}

Validate Update Offer Name Of The XML File For Second Upload
    [Tags]    REGRESSION
    Verify Update Offer Name Of The XML File      ${TEMPLATE PATH}/${CALL TYPE}/${XML TEMPLATES FOLDER}/${VENDOR OFFER UPLOAD SECOND XML FILE NAME}      ORIGIN_RATES_TEST_

Validate Update Origingroup Name Of The XML File For Second Upload
    [Tags]    REGRESSION
    Verify Update Origingroup Name Of The XML File      ${TEMPLATE PATH}/${CALL TYPE}/${XML TEMPLATES FOLDER}/${VENDOR OFFER UPLOAD SECOND XML FILE NAME}      ${TEST DATA PREFIX}

Validate Update Origin Name Of The XML File For Second Upload
    [Tags]    REGRESSION
    Verify Update Origin Name Of The XML File      ${TEMPLATE PATH}/${CALL TYPE}/${XML TEMPLATES FOLDER}/${VENDOR OFFER UPLOAD SECOND XML FILE NAME}      ${TEST DATA PREFIX}

Validate Get Destinations From The XML File For Second Upload
    [Tags]    REGRESSION
    @{DESTINATION LIST} =   Verify Get Destinations From The XML File       ${TEMPLATE PATH}/${CALL TYPE}/${XML TEMPLATES FOLDER}/${VENDOR OFFER UPLOAD SECOND XML FILE NAME}
    set suite variable          @{DESTINATION LIST}

Validate Get Rates Value From The XML File For Second Upload
    [Tags]    REGRESSION
    @{RATES VELUE LIST} =   Verify Get Rates Value From The XML File       ${TEMPLATE PATH}/${CALL TYPE}/${XML TEMPLATES FOLDER}/${VENDOR OFFER UPLOAD SECOND XML FILE NAME}
    set suite variable          @{RATES VELUE LIST}

Validate Click Vendor Offer Browse Button For Second Upload
    [Tags]    REGRESSION
    Verify Click Vendor Offer Browse Button

Validate Select The File To Be Uploaded For Second Upload
    [Tags]    REGRESSION
    ixtrade_page_resource.Verify Select The File To Be Uploaded        ${TEMPLATE PATH}/${CALL TYPE}/${XML TEMPLATES FOLDER}/${VENDOR OFFER UPLOAD SECOND XML FILE NAME}

Validate Click Upload Now Button For Second Upload
    [Tags]    REGRESSION
    Verify Click Upload Now Button

Validate Click Vendor Offes Submenu For Second Upload
    [Tags]    REGRESSION
    Verify Click Vendor Offers Submenu

Validate Set Vendor Name For Search For Second Upload
    [Tags]    REGRESSION
    Verify Set Vendor Name For Search       ${CREATED NEW VENDOR NAME}

Validate Set Vendor Offer From Date For Search For Second Upload
    [Tags]    REGRESSION
    Verify Set Vendor Offer From Date For Search        1/1/2016

Validate Click Vendor Offers Go Button For Second Upload
    [Tags]    REGRESSION
    Verify Click Vendor Offers Go Button

Validate Click Vendor Offer First Plus Button For Second Upload
    [Tags]    REGRESSION
    Verify Click Vendor Offer First Plus Button

Validate Click Vendor Offer First Dicon Button For Second Upload
    [Tags]    REGRESSION
    Verify Click Vendor Offer First Dicon Button

Validate Click Vendor Offers Destination Go Button For Second Upload
    [Tags]    REGRESSION
    Verify Click Vendor Offers Destination Go Button

Validate Compare Destination For Second Upload
    [Tags]    REGRESSION
    Verify Compare Destinations      @{DESTINATION LIST}

Validate Click Vendor Offer First Ricon Button For Second Upload
    [Tags]    REGRESSION
    Verify Click Vendor Offer First Ricon Button

Validate Compare Rates For Second Upload
    [Tags]    REGRESSION
    Verify Compare Rates      @{RATES VELUE LIST}

Validate Close IXTrade Window After First Upload
    [Tags]    REGRESSION
    ixtrade_page_resource.Verify Close Current Window