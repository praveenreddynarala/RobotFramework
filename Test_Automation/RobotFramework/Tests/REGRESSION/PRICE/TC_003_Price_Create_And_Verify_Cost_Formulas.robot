*** Settings ***
Documentation     A Test Suite With Set Of Tests To Validate Create And Verify Cost Formulas

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/price_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/price_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Price module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Price' From Main Menu

Validate Navigate to Cost Policies Tab
    [Tags]    REGRESSION
    Click on Cost Policies Tab

Validate Click Formulas Button
    [Tags]    REGRESSION
    Verify Click Formulas Button

Validate Get Created Cost Policy Name
    [Tags]    REGRESSION
    Verify Get Created Cost Policy Name

Validate Set Cost Policy
    [Tags]    REGRESSION
    Verify Set Cost Policy

Validate Click Search Button
    [Tags]    REGRESSION
    price_page_resource.Verify Click Search Button

Validate Click Create New Cost Policy Formula Dropdown
    [Tags]    REGRESSION
    Verify Click Create New Cost Policy Formula Dropdown

Validate Is Create Destination Formula Present
    [Tags]    REGRESSION
    Verify Is Create Destination Formula Present

Validate Is Create Global Formula Present
    [Tags]    REGRESSION
    Verify Is Create Global Formula Present

Validate Is Create Category Formula Present
    [Tags]    REGRESSION
    Verify Is Create Category Formula Present

Validate Click Create Destination Formula
    [Tags]    REGRESSION
    Verify Click Create Destination Formula

Validate Set Destination of Formula Pop Up
    [Tags]    REGRESSION
    ${DESTINATION} =    Verify Get Created Destination
    Verify Set Destination of Formula Pop Up        ${DESTINATION}

Validate Set Rate Type For Destination Formula
    [Tags]    REGRESSION
    Verify Set Rate Type            ${RATE TYPE FOR DESTINATION}

Validate Set Begin Date For Destination Formula
    [Tags]    REGRESSION
    Verify Set Begin Date           ${BEGIN DATE FOR DESTINATION}

Validate Set Cost Formula For Destination Formula
    [Tags]    REGRESSION
    Verify Set Cost Formula         ${COST FORMULA FOR DESTINATION}

Validate Click Calculate Button
    [Tags]    REGRESSION
    Verify Click Calculate Button

Validate Click Create Button For Destination Formula
    [Tags]    REGRESSION
    Verify Click Create Button

Validate Set Select Date For Destination Formula
    [Tags]    REGRESSION
    Verify Set Select Date          ${BEGIN DATE FOR DESTINATION}

Validate Click Search Button For Destination Formula
    [Tags]    REGRESSION
    price_page_resource.Verify Click Search Button

Validate Filter Cost Policies Formulas Notes Column For Destination Formula
    [Tags]    REGRESSION
    Verify Filter Cost Policies Formulas Grid Notes Column

Validate Get Cost Policies Formulas Grid Row Details For Destination Formula
    [Tags]    REGRESSION
    Verify Get Cost Policies Formulas Grid Row Details

Validate Formula Type For Destination Formula
    [Tags]    REGRESSION
    Verify Formula Type         ${FORMULA TYPE FOR DESTINATION}

Validate Formula For Destination Formula
    [Tags]    REGRESSION
    Verify Formula              ${COST FORMULA FOR DESTINATION}

Validate Clear Cost Policy Column Filter For Destination Formula
    [Tags]    REGRESSION
    Verify Clear Cost Policy Column Filter      ${NOTES COLUMN NAME}

Validate Click Create New Cost Policy Formula Dropdown For Global Formula
    [Tags]    REGRESSION
    Verify Click Create New Cost Policy Formula Dropdown

Validate Click Create Global Formula
    [Tags]    REGRESSION
    Verify Click Create Global Formula

Validate Set Rate Type For Global Formula
    [Tags]    REGRESSION
    Verify Set Rate Type            ${RATE TYPE FOR GLOBAL}

Validate Set Begin Date For Global Formula
    [Tags]    REGRESSION
    Verify Set Begin Date           ${BEGIN DATE FOR GLOBAL}

Validate Set Cost Formula For Global Formula
    [Tags]    REGRESSION
    Verify Set Cost Formula         ${COST FORMULA FOR GLOBAL}

Validate Click Create Button For Global Formula
    [Tags]    REGRESSION
    Verify Click Create Button

Validate Set Select Date For Global Formula
    [Tags]    REGRESSION
    Verify Set Select Date          ${BEGIN DATE FOR GLOBAL}

Validate Click Search Button For Global Formula
    [Tags]    REGRESSION
    price_page_resource.Verify Click Search Button

Validate Filter Cost Policies Formulas Notes Column For Global Formula
    [Tags]    REGRESSION
    Verify Filter Cost Policies Formulas Grid Notes Column

Validate Get Cost Policies Formulas Grid Row Details For Global Formula
    [Tags]    REGRESSION
    Verify Get Cost Policies Formulas Grid Row Details

Validate Formula Type For Global Formula
    [Tags]    REGRESSION
    Verify Formula Type         ${FORMULA TYPE FOR GLOBAL}

Validate Formula For Global Formula
    [Tags]    REGRESSION
    Verify Formula              ${COST FORMULA FOR GLOBAL}

Validate Clear Cost Policy Column Filter For Global Formula
    [Tags]    REGRESSION
    Verify Clear Cost Policy Column Filter      ${NOTES COLUMN NAME}

Validate Click Create New Cost Policy Formula Dropdown For Category Formula
    [Tags]    REGRESSION
    Verify Click Create New Cost Policy Formula Dropdown

Validate Click Create Category Formula For Category Formula
    [Tags]    REGRESSION
    Verify Click Create Category Formula

Validate Set Category of Formula Pop Up
    [Tags]    REGRESSION
    Verify Set Category of Formula Pop Up       ${CATEGORY FOR FORMULA POP UP}

Validate Set Rate Type For Category Formula
    [Tags]    REGRESSION
    Verify Set Rate Type            ${RATE TYPE FOR CATEGORY}

Validate Set Begin Date For Category Formula
    [Tags]    REGRESSION
    Verify Set Begin Date           ${BEGIN DATE FOR CATEGORY}

Validate Set Cost Formula For Category Formula
    [Tags]    REGRESSION
    Verify Set Cost Formula         ${COST FORMULA FOR CATEGORY}

Validate Click Create Button For Category Formula
    [Tags]    REGRESSION
    Verify Click Create Button

Validate Set Select Date For Category Formula
    [Tags]    REGRESSION
    Verify Set Select Date          ${BEGIN DATE FOR CATEGORY}

Validate Click Search Button For Category Formula
    [Tags]    REGRESSION
    price_page_resource.Verify Click Search Button

Validate Filter Cost Policies Formulas Notes Column For Category Formula
    [Tags]    REGRESSION
    Verify Filter Cost Policies Formulas Grid Notes Column

Validate Get Cost Policies Formulas Grid Row Details For Category Formula
    [Tags]    REGRESSION
    Verify Get Cost Policies Formulas Grid Row Details

Validate Formula Type For Category Formula
    [Tags]    REGRESSION
    Verify Formula Type         ${FORMULA TYPE FOR CATEGORY}

Validate Formula For Category Formula
    [Tags]    REGRESSION
    Verify Formula              ${COST FORMULA FOR CATEGORY}