*** Settings ***
Documentation   A Test Suite With Set Of Tests To Validate Navigation To Price Page

Resource        ../../../Resources/common_resource.robot
Resource        ../../../Resources/Pages/price_page_resource.robot

Suite Setup     Validate Login Functionality With Valid Credential
Suite Teardown  Validate Log Out Functionality

*** Test Cases ***
Validate navigation to Price module
    [Tags]    BVT
    Click on Home icon and select 'Price' from main menu

Validate The Price Dashboard Tab Is Available
    [Tags]    BVT
    Verify The Price Dashboard Tab Is Available

Validate The Cost Policies Tab Is Available
    [Tags]    BVT
    Verify The Cost Policies Tab Is Available

Validate The Price Policies Tab Is Available
    [Tags]    BVT
    Verify The Price Policies Tab Is Available

Validate Country Groups link is Available
    [Tags]    BVT
    Verify Country Groups link is Available

Validate Create Customer Price List link is Available
    [Tags]    BVT
    Verify Create Customer Price List link is Available

Validate Generate Reference Prices link is Available
    [Tags]    BVT
    Verify Generate Reference Prices link is Available

Validate Review Customer Price Exception Requests link is Available
    [Tags]    BVT
    Verify Review Customer Price Exception Requests link is Available

Validation Navigate To Cost Policies Tab
    [Tags]    BVT
    Click on Cost Policies Tab

Validate The 'Create New Cost Policy' Button Is Present Under Customer Tab
    [Tags]    BVT
    Verify The 'Create New Cost Policy' Button Is Present Under Customer Tab

Validate The 'Fomulas' Button Is Present Under Customer Tab
    [Tags]    BVT
    Verify The 'Fomulas' Button Is Present Under Customer Tab

Validate The 'User defined Parameters' Button Is Present Under Customer Tab
    [Tags]    BVT
    Verify The 'User defined Parameters' Button Is Present Under Customer Tab

Validate The 'Costs' Button Is Present Under Customer Tab
    [Tags]    BVT
    Verify The 'Costs' Button Is Present Under Customer Tab
