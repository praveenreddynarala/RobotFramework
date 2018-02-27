*** Settings ***
Documentation     A Test Suite With Set Of Tests For Localization-Carrier Modules

Resource          ../../Resources/common_resource.robot
Resource          ../../Resources/Pages/carrier_page_resource.robot
Resource          ../../Resources/Localization/${LOCALE}/localization_settings.robot

Suite Setup       Validate Login Functionality With Valid Credential
Suite Teardown    Validate Log Out Functionality

*** Test Cases ***
Validate Navigate to Carrier Module
    [Tags]    LOCALIZATION
    Click on Home Icon and Select 'Carrier' From Main Menu

Validate Carriers Grid Out Minutes Column Currency Format
    [Tags]    LOCALIZATION
    Verify Carriers Grid Column Currency Format     ${LOCALE FOR CURRENCY FORMAT}       Out Minutes

Validate Carriers Grid In Minutes Column Currency Format
    [Tags]    LOCALIZATION
    Verify Carriers Grid Column Currency Format     ${LOCALE FOR CURRENCY FORMAT}       In Minutes

Validate Carriers Grid Out Margin Column Currency Format
    [Tags]    LOCALIZATION
    Verify Carriers Grid Column Currency Format     ${LOCALE FOR CURRENCY FORMAT}       Out Margin

Validate Carriers Grid In Margin Column Currency Format
    [Tags]    LOCALIZATION
    Verify Carriers Grid Column Currency Format     ${LOCALE FOR CURRENCY FORMAT}       In Margin

Validate Carriers Grid Revenue Column Currency Format
    [Tags]    LOCALIZATION
    Verify Carriers Grid Column Currency Format     ${LOCALE FOR CURRENCY FORMAT}       Revenue

Validate Carriers Grid Credit Limit Column Currency Format
    [Tags]    LOCALIZATION
    Verify Carriers Grid Column Currency Format     ${LOCALE FOR CURRENCY FORMAT}       Credit Limit

Validate Carriers Grid Cost Column Currency Format
    [Tags]    LOCALIZATION
    Verify Carriers Grid Column Currency Format     ${LOCALE FOR CURRENCY FORMAT}       Cost

Validate Carriers Grid Errored Minutes Column Currency Format
    [Tags]    LOCALIZATION
    Verify Carriers Grid Column Currency Format     ${LOCALE FOR CURRENCY FORMAT}       Errored Minutes

Validate Click Carrier Page First Row Inline Action Button
    [Tags]    LOCALIZATION
    Verify Click Carriers Page First Row Inline Action Button

Validate Select Carrier Relationships Inline Action Item
    [Tags]    LOCALIZATION
    Verify Select Inline Action Item        Carrier Relationships

Validate Carrier Relationships Select Date Format
    [Tags]    LOCALIZATION
    Verify Carrier Relationships Select Date Format     ${DATE FORMAT}

Validate Expand Commercial Trunks Section
    [Tags]    LOCALIZATION
    Verify Expand Commercial Trunks Section

Validate Commercial Trunks Grid Effective Date Format
    [Tags]    LOCALIZATION
    Verify Commercial Trunks Grid Effective Date Format     ${DATE FORMAT}

Validate Click Create Trunk Button
    [Tags]    LOCALIZATION
    Verify Click Create Trunk Button

Validate Commercial Trunks Effective Date Format
    [Tags]    LOCALIZATION
    Verify Effective Date Format        ${DATE FORMAT}

Validate Close Add Commercial Trunk Pop Up
    [Tags]    LOCALIZATION
    Verify Close Current Pop Up         Add Commercial Trunk

Validate Shrink Commercial Trunks Section
    [Tags]    LOCALIZATION
    Verify Expand Commercial Trunks Section

Validate Expand Service Level Assignments Section
    [Tags]    LOCALIZATION
    Verify Expand Service Level Assignments Section

Validate Service Level Grid Begin Date Format
    [Tags]    LOCALIZATION
    Verify Service Level Grid Begin Date Format     ${DATE FORMAT}

Validate Service Level Grid End Date Format
    [Tags]    LOCALIZATION
    Verify Service Level Grid End Date Format       ${DATE FORMAT}

Validate Click Add Service Level Button
    [Tags]    LOCALIZATION
    Verify Click Add Service Level button

Validate Add Service Level Begin Date Format
    [Tags]    LOCALIZATION
    Verify Begin Date Format        ${DATE FORMAT}

Validate Add Service Level End Date Format
    [Tags]    LOCALIZATION
    Verify End Date Format          ${DATE FORMAT}

Validate Close Add Service Level Pop Up
    [Tags]    LOCALIZATION
    Verify Close Current Pop Up         Add Service Level

Validate Shrink Service Level Assignments Section
    [Tags]    LOCALIZATION
    Verify Expand Service Level Assignments Section

Validate Expand Rate Plans Section
    [Tags]    LOCALIZATION
    Verify Expand Rate Plans Section

Validate Rate Plans Grid Begin Date Format
    [Tags]    LOCALIZATION
    Verify Rate Plans Grid Begin Date Format     ${DATE FORMAT}

Validate Rate Plans Grid End Date Format
    [Tags]    LOCALIZATION
    Verify Rate Plans Grid End Date Format       ${DATE FORMAT}

Validate Click Create Rate Plan Button
    [Tags]    LOCALIZATION
    Verify Click Create Rate Plan Button

Validate Add Rate Plans Begin Date Format
    [Tags]    LOCALIZATION
    Verify Begin Date Format        ${DATE FORMAT}

Validate Add Rate Plans End Date Format
    [Tags]    LOCALIZATION
    Verify End Date Format          ${DATE FORMAT}

Validate Close Add Rate Plans Pop Up
    [Tags]    LOCALIZATION
    Verify Close Current Pop Up         Add New Rate Plan

Validate Shrink Rate Plans Section
    [Tags]    LOCALIZATION
    Verify Expand Rate Plans Section

Validate Expand Number Plans Section
    [Tags]    LOCALIZATION
    Verify Expand Number Plans Section

Validate Number Plans Grid Begin Date Format
    [Tags]    LOCALIZATION
    Verify Number Plans Grid Begin Date Format     ${DATE FORMAT}

Validate Number Plans Grid End Date Format
    [Tags]    LOCALIZATION
    Verify Number Plans Grid End Date Format       ${DATE FORMAT}

Validate Click Add Number Plan Button
    [Tags]    LOCALIZATION
    Verify Click Add Number Plan button

Validate Add Number Plans Begin Date Format
    [Tags]    LOCALIZATION
    Verify Begin Date Format        ${DATE FORMAT}

Validate Add Number Plans End Date Format
    [Tags]    LOCALIZATION
    Verify End Date Format          ${DATE FORMAT}

Validate Close Add Number Plans Pop Up
    [Tags]    LOCALIZATION
    Verify Close Current Pop Up         Add Number Plan

Validate Shrink Number Plans Section
    [Tags]    LOCALIZATION
    Verify Expand Number Plans Section

Validate Select Dialed Digits Tab
    [Tags]    LOCALIZATION
    Verify Click Dialed Digits Tab

Validate Dialed Digits Tab Begin Date Format
    [Tags]    LOCALIZATION
    Verify Begin Date Format        ${DATE FORMAT}

Validate Dialed Digits Tab End Date Format
    [Tags]    LOCALIZATION
    Verify End Date Format          ${DATE FORMAT}

Validate Dialed Digits Grid Begin Date Format
    [Tags]    LOCALIZATION
    Verify Dialed Digits Grid Begin Date Format     ${DATE FORMAT}

Validate Dialed Digits Grid End Date Format
    [Tags]    LOCALIZATION
    Verify Dialed Digits Grid End Date Format       ${DATE FORMAT}

Validate Select Rates Tab
    [Tags]    LOCALIZATION
    Verify Click Rates Tab

Validate Rates Tab Begin Date Format
    [Tags]    LOCALIZATION
    Verify Rates Tab Begin Date Format      ${DATE FORMAT}

Validate Rates Tab End Date Format
    [Tags]    LOCALIZATION
    Verify Rates Tab End Date Format        ${DATE FORMAT}

Validate Rates Grid Begin Date Format
    [Tags]    LOCALIZATION
    Verify Rates Grid Begin Date Format     ${DATE FORMAT}

Validate Rates Grid End Date Format
    [Tags]    LOCALIZATION
    Verify Rates Grid End Date Format       ${DATE FORMAT}

Validate Select Destinations Tab
    [Tags]    LOCALIZATION
    Verify Click Destinations Tab

Validate Destinations Tab Begin Date Format
    [Tags]    LOCALIZATION
    Verify Destinations Tab Begin Date Format       ${DATE FORMAT}

Validate Destinations Tab End Date Format
    [Tags]    LOCALIZATION
    Verify Destinations Tab End Date Format         ${DATE FORMAT}

Validate Destinations Grid Begin Date Format
    [Tags]    LOCALIZATION
    Verify Destinations Grid Begin Date Format      ${DATE FORMAT}

Validate Destinations Grid End Date Format
    [Tags]    LOCALIZATION
    Verify Destinations Grid End Date Format        ${DATE FORMAT}

Validate Close Carrier Profile Tab
    [Tags]    LOCALIZATION
    Verify Close Current Tab        Carrier Profile

Validate Select Credit Management Tab
    [Tags]    LOCALIZATION
    Click On Credit Management Tab

Validate Credit Management Grid Last Calculation Date Column Date Format
    [Tags]    LOCALIZATION
    Verify Credit Management Grid Column For Date Format        ${TIME STAMP}      Last Calculation Date

Validate Credit Management Grid Credit Limit Column Currency Format
    [Tags]    LOCALIZATION
    Verify Credit Management Grid Column For Currency Format    ${LOCALE FOR CURRENCY FORMAT}       Credit Limit

Validate Credit Management Grid Current Balance Column Currency Format
    [Tags]    LOCALIZATION
    Verify Credit Management Grid Column For Currency Format    ${LOCALE FOR CURRENCY FORMAT}       Current Balance

Validate Credit Management Grid Remaining Credit Column Currency Format
    [Tags]    LOCALIZATION
    Verify Credit Management Grid Column For Currency Format    ${LOCALE FOR CURRENCY FORMAT}       Remaining Credit

Validate Credit Management Grid Invoiced Balance Column Currency Format
    [Tags]    LOCALIZATION
    Verify Credit Management Grid Column For Currency Format    ${LOCALE FOR CURRENCY FORMAT}       Invoiced Balance

Validate Credit Management Grid Non-Invoiced Balance Column Currency Format
    [Tags]    LOCALIZATION
    Verify Credit Management Grid Column For Currency Format    ${LOCALE FOR CURRENCY FORMAT}       Non-Invoiced Balance

Validate Click Credit Management Grid First Row Inline Action Button
    [Tags]    LOCALIZATION
    Verify Click Credit Management Grid First Row Inline Action Button

Validate Select Credit Profile Inline Action Item
    [Tags]    LOCALIZATION
    Verify Select Inline Action Item        Credit Profile

Validate Credit Profile Credit Limit Currency Format
    [Tags]    LOCALIZATION
    Verify Credit Profile Credit Limit Currency Format      ${LOCALE FOR CURRENCY FORMAT}

Validate Credit Limit Last Modified Date Format
    [Tags]    LOCALIZATION
    Verify Credit Limit Last Modified Date Format       ${DATE FORMAT}

Validate Click Monitoring Details Tab
    [Tags]    LOCALIZATION
    Verify Click Monitoring Details Tab

Validate Last Calculation Date Label Wise Text Date Format
    [Tags]    LOCALIZATION
    Verify Label Wise Text For Date Format      ${TIME STAMP}       Last Calculation Date

Validate Last Modified Date Label Wise Text Date Format
    [Tags]    LOCALIZATION
    Verify Label Wise Text For Date Format      ${TIME STAMP}       Last Modified Date

Validate Non-Invoiced Balance Label Wise Text Currency Format
    [Tags]    LOCALIZATION
    Verify Label Wise Text For Currency Format      ${LOCALE FOR CURRENCY FORMAT}       Non-Invoiced Balance

Validate Remaining Credit Label Wise Text Currency Format
    [Tags]    LOCALIZATION
    Verify Label Wise Text For Currency Format      ${LOCALE FOR CURRENCY FORMAT}       Remaining Credit

Validate Invoiced Balance Label Wise Text Currency Format
    [Tags]    LOCALIZATION
    Verify Label Wise Text For Currency Format      ${LOCALE FOR CURRENCY FORMAT}       Invoiced Balance

Validate Current Balance Label Wise Text Currency Format
    [Tags]    LOCALIZATION
    Verify Label Wise Text For Currency Format      ${LOCALE FOR CURRENCY FORMAT}       Current Balance

Validate Transactions History Grid Transaction Date Column Date Format
    [Tags]    LOCALIZATION
    Verify Transactions History Grid Column For Date Format     ${DATE FORMAT}       Transaction Date

Validate Transactions History Grid Statement Begin Date Column Date Format
    [Tags]    LOCALIZATION
    Verify Transactions History Grid Column For Date Format     ${DATE FORMAT}       Statement Begin Date

Validate Transactions History Grid Calculation Date Column Date Format
    [Tags]    LOCALIZATION
    Verify Transactions History Grid Column For Date Format     ${DATE FORMAT}       Calculation Date

Validate Transactions History Grid Transaction Exchange Rate Column Currency Format
    [Tags]    LOCALIZATION
    Verify Transactions History Grid Column For Currency Format     ${LOCALE FOR CURRENCY FORMAT}       Transaction Exchange Rate

Validate Transactions History Grid Transaction Amount Column Currency Format
    [Tags]    LOCALIZATION
    Verify Transactions History Grid Column For Currency Format     ${LOCALE FOR CURRENCY FORMAT}       Transaction Amount

Validate Click Add New Transaction Button
    [Tags]    LOCALIZATION
    Verify Click Add New Transaction Button

Validate Add New Transaction Date Format
    [Tags]    LOCALIZATION
    Verify Add New Transaction Date Format      ${DATE FORMAT}

Validate Statement Begin Date Format
    [Tags]    LOCALIZATION
    Verify Statement Begin Date Format      ${DATE FORMAT}

Validate Close Add New Transaction Pop Up
    [Tags]    LOCALIZATION
    Verify Close Current Pop Up     Add New Transaction
