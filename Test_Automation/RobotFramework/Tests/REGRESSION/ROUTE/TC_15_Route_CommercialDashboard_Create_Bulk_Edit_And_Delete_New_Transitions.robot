*** Settings ***
Documentation     A Test Suite With Set Of Tests For Route Commercial Dashboard Create Bulk Edit And Delete New Transitions

Resource          ../../../Resources/common_resource.robot
Resource          ../../../Resources/Pages/route_page_resource.robot
Resource          ../../../Resources/Pages/Legacy/ixconnect_page_resource.robot
Resource          ../../../Resources/Pages/business_admin_page_resource.robot
Resource          ../../../Resources/ExternalDataSource/${TEST ENVIRONMENT}/route_page_test_data_source.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Route module
    [Tags]    REGRESSION
    Click on Home Icon and Select 'Route' From Main Menu

Validate Click Transition Automation Link
    [Tags]    REGRESSION
    Verify Click Transition Automation Link

Validate Click New Transition Button
    [Tags]    REGRESSION
    Verify Click New Transition Button

Validate Set New Automated Transition Route Class
    [Tags]    REGRESSION
    Verify Set New Automated Transition Route Class     ${ROUTE CLASS}

Validate Set New Automated Transition Country Type
    [Tags]    REGRESSION
    Verify Set New Automated Transition Country Type        ${AUTOMATED TRANSITION COUNTRY TYPE}

Validate Set New Automated Transition Country
    [Tags]    REGRESSION
    Verify Set New Automated Transition Country     @{AUTOMATED TRANSITION COUNTRY}

Validate Set New Automated Transition Routing Product
    [Tags]    REGRESSION
    Verify Set New Automated Transition Routing Product     India Chennai-ISDN-Flat

Validate Set New Automated Transition Value
    [Tags]    REGRESSION
    Verify Set New Automated Transition Value       @{TRANSITION FOR AUTOMATED TRANSITION}

Validate Select Automated Radio Button
    [Tags]    REGRESSION
    Verify Select Automated Radio Button        ${AUTOMATED RADIO BUTTON CHOICE}

Validate Set New Automated Transition Resolution Order
    [Tags]    REGRESSION
    Verify Set New Automated Transition Resolution Order        ${AUTOMATED TRANSITION RESOLUTION ORDER}

Validate Click Save Button
    [Tags]    REGRESSION
    Verify Click Save Button

Validate Set Route Class For Search
    [Tags]    REGRESSION
    @{ROUTE CLASS LIST} =       create list     ${ROUTE CLASS}
    Verify Set Transition Route Class For Search       @{ROUTE CLASS LIST}

Validate Set Transition For Search
    [Tags]    REGRESSION
    Verify Set Transition For Search        @{TRANSITION FOR AUTOMATED TRANSITION}

Validate Set Transition Country For Search
    [Tags]    REGRESSION
    Verify Set Transition Country For Search        @{AUTOMATED TRANSITION COUNTRY}

Validate Set Automated Choice For Search
    [Tags]    REGRESSION
    Verify Set Automated Choice For Search      ${AUTOMATED RADIO BUTTON CHOICE}

Validate Routing Product For Search
    [Tags]    REGRESSION
    Verify Set Transition Routing Product For Search       India Chennai-ISDN-Flat

Validate Click Transition Automation Search Button
    [Tags]    REGRESSION
    Verify Click Transition Automation Search Button

Validate Get Transition Automation Grid Row Details
    [Tags]    REGRESSION
    Verify Get Transition Automation Grid Row Details

Validate Compare Transition Automation Grid Row Data
    [Tags]    REGRESSION
    @{ROUTE CLASS LIST} =   create list         ${ROUTE CLASS}
    Verify Compare Transition Automation Grid Row Data      @{ROUTE CLASS LIST}     India Chennai-ISDN-Flat     @{AUTOMATED TRANSITION COUNTRY}     @{TRANSITION FOR AUTOMATED TRANSITION}

Validate Select Transition Automation Grid First Row Checkbox
    [Tags]    REGRESSION
    Verify Select Transition Automation Grid First Row Checkbox

Validate Click Transition Automation Delete Button
    [Tags]    REGRESSION
    Verify Click Transition Automation Delete Button

Validate Click New Transition Button After Delete
    [Tags]    REGRESSION
    Verify Click New Transition Button

Validate Set New Automated Transition Route Class After Delete
    [Tags]    REGRESSION
    Verify Set New Automated Transition Route Class     ${ROUTE CLASS}

Validate Set New Automated Transition Country Type After Delete
    [Tags]    REGRESSION
    Verify Set New Automated Transition Country Type        ${AUTOMATED TRANSITION COUNTRY TYPE}

Validate Set New Automated Transition Country After Delete
    [Tags]    REGRESSION
    Verify Set New Automated Transition Country     @{AUTOMATED TRANSITION COUNTRY}

Validate Set New Automated Transition Routing Product After Delete
    [Tags]    REGRESSION
    Verify Set New Automated Transition Routing Product     India Chennai-ISDN-Flat

Validate Set New Automated Transition Value After Delete
    [Tags]    REGRESSION
    Verify Set New Automated Transition Value       @{TRANSITION FOR AUTOMATED TRANSITION}

Validate Select Automated Radio Button After Delete
    [Tags]    REGRESSION
    Verify Select Automated Radio Button        ${AUTOMATED RADIO BUTTON CHOICE}

Validate Set New Automated Transition Resolution Order After Delete
    [Tags]    REGRESSION
    Verify Set New Automated Transition Resolution Order        ${AUTOMATED TRANSITION RESOLUTION ORDER}

Validate Click Save Button After Delete
    [Tags]    REGRESSION
    Verify Click Save Button

Validate Click Transition Automation Search Button After Delete
    [Tags]    REGRESSION
    Verify Click Transition Automation Search Button

Validate Select Transition Automation Grid First Row Checkbox After Delete
    [Tags]    REGRESSION
    Verify Select Transition Automation Grid First Row Checkbox

Validate Click Transition Automation Bulk Edit Button
    [Tags]    REGRESSION
    Verify Click Transition Automation Bulk Edit Button

Validate Set Bulk Edit Automated Value
    [Tags]    REGRESSION
    Verify Set Bulk Edit Automated Value        ${BULK EDIT AUTOMATED VALUE}

Validate Set Bulk Edit Resolution Order
    [Tags]    REGRESSION
    Verify Set Bulk Edit Resolution Order       ${BULK EDIT RESOLUTION ORDER}

Valdiate Click Bulk Edit Submit Button
    [Tags]    REGRESSION
    route_page_resource.Verify Click Bulk Edit Submit Button

Validate Click Transition Automation Save Changes Button
    [Tags]    REGRESSION
    Verify Click Transition Automation Save Changes Button

Validate Click Transition Automation First Row Inline Action Button
    [Tags]    REGRESSION
    Verify Click Transition Automation First Row Inline Action Button

Validate Select Transition Automation Delete Inline Action Item
    [Tags]    REGRESSION
    Verify Select Transition Automation Delete Inline Action Item