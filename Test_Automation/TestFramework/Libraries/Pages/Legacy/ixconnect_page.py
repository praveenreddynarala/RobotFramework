"""Implementing iXConnect screen page objects"""

from TestFramework.Libraries.Pages.base_page import BasePage
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.support.ui import Select
import time
import string
import win32com.client as client

class IXConnectPage(BasePage):
    """
    Contains iXConnect UI page locators
    Switch to ixconnect function
    Switch to list frame function
    Click new rating method button function
    Switch to detail frame function
    Click new button function
    Set new daylight saving zone function
    Set new daylight saving zone region function
    Click new daylight saving zone save button function
    Switch to default content function
    Click add a new row button function
    Set daylight saving zone period begin date function
    Set begin hour value function
    Set begin hour minute value function
    Set daylight saving zone period end date function
    Set end hour value function
    Set end hour minute value function
    Click daylight saving zone period save button function
    Set new rating method name function
    Set new rating method abbreviation function
    Set minimum value function
    Set initial rounding value function
    Set additional rounding value function
    Set maximum value function
    Set measure adjustment value function
    Select rating dimensions subtab function
    Click date and time value button function
    Select rate dimension template function
    Select band rates subtab function
    Select automatically assign bands checkbox function
    Click new rating method save button function
    Set letters for search function
    Click go button function
    Expand testhome region function
    Is created daylight saving zone available function
    Select daylight saving zone function
    Click delete button function
    Expand new rating method structure function
    Is rating method available function
    Select rating method function
    Click rating method delete button function
    Get alert pop up text function
    Get destination date function
    Get daylight savings zone date function
    Click test home button function
    Get daylight savings grid begin date function
    Select route class submenu function
    Switch to header frame function
    Click new route class button function
    Set route class function
    Get route class function
    Select company submenu function
    Set company function
    Get company function
    Click company save button function
    Set route class abbreviation function
    Set target fulfillment order function
    Set capacity saturation order function
    Click route class save button function
    Select destination submenu function
    Click destination new button function
    Set destination function
    Get created destination function
    Set destination abbreviation function
    Select destination type function
    Select service level submenu function
    Get created service level function
    Click service level new button
    Set service level function
    Get service level function
    Set service level abbreviation function
    Select route class function
    Select dropdown item from select tag function
    Select route class function
    Click service level save button function
    Set call char function
    Set country function
    Set number plan function
    Set destination begin date function
    Set destination end date function
    Click destination save button function
    Set route class service function
    Get rating method function
    Click selected for routing check box function
    Click route class initialize button function
    Select product submenu function
    Expand routing structure function
    Select routing function
    Click add new product link function
    Set product name function
    Get created product name function
    Set product abbreviation function
    Set first letter function
    Set routing destination function
    Set company code function
    Click maintain routing products button function
    Click new destination button function
    Set dialed digits function
    Set dialed digits begin date function
    Click dialed digits save button function
    Set dialed digits end date function
    Select origin set subtab function
    Click origin set value button function
    Set origin set letters function
    Is job maintenance link present function
    Click exit header link function
    Click create new complex contract button function
    Set contract account function
    Set contract direction function
    Set contract name function
    Set contract begin date function
    Set contract end date function
    Click contract details save button function
    Select configure number plan tab function
    Set configure number plan commercial trunk function
    Set configure number plan call type function
    Click configure number plan create plus button function
    Set create a new number plan function
    Set number plan to copy from function
    Move available countries to destination function
    Click configure number plan go button function
    Click configure number plan save button function
    Select rating and tariff details tab function
    Set rating and tariff details rating method function
    Set rating and tariff details outbound rate plan function
    Click rating and tariff details save button function
    Click complex contract wizard next button function
    Set aggregation group name function
    Set aggregation group abbreviation function
    Set aggregation template function
    Click create aggregation group save button function
    Set aggregate product name function
    Set aggregate product abbreviation function
    Set traffic direction function
    Check traffic type function
    Check rate type function
    Select aggregation rules tab function
    Move available service to destination function
    Move available commercial trunk to destination function
    Select aggregation rules grid first row checkbox function
    Set aggregate rate plan name function
    Set aggregate rate plan abbreviation function
    Set rate plan type function
    Set tariff type function
    Set currency function
    Click aggregate rate plan save button function
    Click aggregate scenario save button function
    Click rating structure 3 arrow function
    Click add new tier button function
    Click submit button function
    Set value in tier grid column function
    Set value in rate grid column function
    Click rate grid save button function
    Click contract complete button function
    Click auto extend operational and accounting radio button function
    Click auto extend operational only radio button function
    Click rating structure 22 arrow function
    Set rate structure function
    Set splitting type function
    Set threshold function
    Set penalty rate function
    Click rating structure save button function
    Click manage complex contracts button function
    Click manage complex contracts go button function
    Set signature date function
    Click manage complex contracts save button function
    Click manage complex contracts unlocked button function
    Is lock unlock popup present function
    Set contract status function
    Click manage complex contract button function
    Set complex contract account function
    Set complex contract status function
    Set complex contract locked status function
    Click complex contract management go button function
    Click contracts grid first row contract status change button function
    Click change contract status radio button function
    Click change contract status save button function
    Set contracts grid signature date function
    Unlock contracts grid first row function
    Click contracts grid first row contract name function
    Is edit contract name disabled function
    Click contract workflow link function
    Click change contract locked status radio button function
    Set group commitment function
    Set subgroup commitment function
    Set value in shortfall rates grid column function
    Move available virtual countries to destination function
    Get created contract name function
    Click complex contract dashboard link function
    Set contract name for search function
    Click contract report button function
    Click contract version submit button function
    Click preview button function
    Click export to excel button function
    Click detail tab function
    Click first row add product button function
    Are rate type checkboxes disabled function
    Switch to iframe function
    Set origin set function
    Move available settlement origin to destination function
    Click aggregate rules exit button function
    Click complex contract worklist button function
    Click filters collapsible arrow button function
    Is specific field on complex contract worklist present function
    Set complex contract worklist contract status function
    Click complex contract workflow go button function
    Click complex contract workflow first row contract function
    Click complex contract management first row workflow button function
    Is specific column on complex contract management grid present function
    Set complex contract management grid signature date function
    Click complex contract management save button function
    Click complex contract worklist clear sections button function
    Is specific column on complex contract worklist grid present function
    Click contract simulator button function
    Is contract simulator specific search field present function
    Set contract simulator status for search function
    Click contract simulator search button function
    Click contract simulator download button function
    Is specific field present on download new simulator pop up function
    Click contract simulator cancel button function
    Set download new simulator carrier function
    Set download new simulator revenue country function
    Click download new simulator download button function
    Set grace period from dropdown function
    Set aggregate group grace period function
    Switch to upperlist frame function
    Select network trunk submenu function
    Set trunk letters function
    Click expand switch button function
    Click trunk name for details function
    Get transmission type function
    Set contract begin date for search function
    Set contract end date for search function
    Select number plan tab function
    Click add number plan grid first row export button function
    Select carrier submenu function
    Click carrier account first plus button function
    Click other rate plan first plus button function
    Click other rate plan first book icon button function
    Click copy from existing complex contract function
    Set copy complex contract source account function
    Set copy complex contract target account function
    Set copy complex contract source contract function
    Click copy contract save button function
    Set copy contract copy direction function
    Select aggregation groups mapping tab function
    Click aggregation groups mapping save button function
    Select commercial trunk mapping tab function
    Click commercial trunk  mapping save button function
    Select number plan mapping tab function
    Set target number plan function
    Click number plan mapping save button function
    Select rate plan mapping tab function
    Click rate plan mapping save button function
    Select product mapping submenu function
    Click product mapping go button function
    Get product mapping grid first row selling product function
    Click selling product browse button function
    Select selling product function
    Make routing to selling percentage to 100 function
    Click first account name function
    Click buyer browse button function
    Click seller browse button function
    Click account save button function
    Select buyer tab function
    Select seller tab function
    Verify first name function
    Verify last name function
    Is contract simulator search button present function
    Is contract simulator download button present function
    Is contract simulator upload button present function
    Is contract simulator download button not present function
    Is contract simulator upload button not present function
    Is contract submenu not present function
    Compare rates grid product with excel data function
    Click on first route class function
    Is specific mandatory field on route class present function
    Is service level created for route class function
    Select first inner customer function
    Is service level column present function
    Click on specific tab in agreement page function
    Is specific tab remained intact function
    """
    # Start: iXConnect page locators
    list_frame_locator = (By.NAME, "List")
    detail_frame_locator = (By.NAME, "Detail")
    header_frame_locator = (By.NAME, "Header")
    network_menu_locator = (By.ID, "C2_mNetwork")
    admin_menu_locator = (By.ID, "C2_mAdmin")
    destination_menu_locator = (By.ID, "C2_mDestination")
    route_class_submenu_js_function = "Network_Click(1,'Network1');"
    company_submenu_js_function = "Admin_Click(6,'Admin6');"
    rating_method_submenu_js_function = "Admin_Click(13,'Admin13');"
    destination_submenu_js_function = "Destination_Click(1,'Destination1');"
    service_level_submenu_js_function = "Network_Click(2,'Network2')"
    product_submenu_js_function = "Destination_Click(8,'Destination8');"
    pages = []
    page_count = 0
    ajax_spin_loader_locator = (By.ID, "BlockScreenImg")
    iframe_locator = (By.NAME, "iframewizzard")
    network_trunk_submenu_js_function = "Network_Click(0,'Network0');"
    upperlist_frame_locator = (By.NAME, "UpperList")
    lowerlist_frame_locator = (By.NAME, "LowerList")
    account_menu_locator = (By.ID, "C2_mAccount")
    carrier_submenu_js_function = "Account_Click(0,'Account0');"
    detail2_frame_locator = (By.NAME, "Detail2")
    product_mapping_submenu_js_function = "Destination_Click(8,'Destination8');"

    # Start: List frame locators
    new_button_locator = (By.ID, "btnNew")
    new_route_class_button_locator = (By.ID, "New")
    new_rating_method_button_locator = (By.ID, "_lRateStructure1__iNewRatingMethod")
    new_destination_button_locator = (By.ID, "DestinationTable_cDest1_iNewDialedDigits")
    letters_input_field_locator = (By.ID, "R1_ATOZ")
    go_button_locator = (By.CLASS_NAME, "lgxGoButton")
    testhome_expand_button_locator = (By.ID, "IMG_lRegionALL1_lRegion13")
    new_rating_method_expand_button_locator = (By.ID, "IMG_lRateStructure1")
    destination_date_locator = (By.XPATH, "//div[@id='lgx_FilterDiv']/descendant::input[@id='rr4_SelDate']")
    daylight_saving_zone_date_locator = (By.XPATH, "//div[@id='rr4']/descendant::input[@id='rr4_SelDate']")
    routing_expand_button_locator = (By.ID, "IMG_lyrDataStructure1_lyrProductCatalogType1")
    routing_locator = (By.ID, "_lyrDataStructure1_lyrProductCatalogType1_lyrProductCatalog1_tProductCatalog_tESCatalog_ProductCatalog")
    job_maintenance_link_locator = (By.ID, "JobMaintenance_Process_JobMaintenance")
    exit_header_link_locator = (By.ID, "C2_mLogout")
    aggregate_rules_exit_button_locator = (By.ID, "C2_mLogout")
    trunk_letters_input_field_locator = (By.ID, "rLetter_Trunk")
    expand_switch_button_locator = (By.ID, "dtSwitch_cImage1_img")
    transmission_type_dropdown_locator = (By.ID, "TransmType_TransmissionTypeID")
    first_route_class_locator = (By.ID, "tRouteClass_cRouteClass1_txRouteClass")
    # End: List frame locators

    # Start: Detail frame locators
    route_class = ""
    daylight_saving_zone_input_field_locator = (By.ID, "rDSTZone_DaylightSavingsZone")
    daylight_saving_zone_region_locator = (By.ID, "rRegion_RegionID")
    new_daylight_saving_zone_save_button_locator = (By.ID, "Save")
    add_a_new_row_button_locator = (By.ID, "btnAddRow")
    lgx_calframe_locator = (By.ID, "lgx_CalFrame")
    period_begin_date_locator = (By.ID, "rBeginDate_vBeginDate")
    begin_hour_input_field_locator = (By.ID, "rBeginHour_tBeginHour")
    begin_hour_minute_input_field_locator = (By.ID, "rBeginHour_tBeginMinute")
    period_end_date_locator = (By.ID, "rEndDate_vEndDate")
    end_hour_input_field_locator = (By.ID, "rEndHour_tEndHour")
    end_hour_minute_input_field_locator = (By.ID, "rEndHour_tEndMinute")
    new_daylight_saving_zone_period_save_button_locator = (By.CLASS_NAME, "btnItemI")
    delete_button_locator = (By.ID, "Delete")
    delete_success_alert_text = "Record has been removed successfully."
    rating_method_input_field_locator = (By.ID, "rRatingMethod_RatingMethod")
    rating_method_abbreviation_input_field_locator = (By.ID, "rRatingMethodAbbrv_RatingMethodAbbrv")
    minimum_value_locator = (By.ID, "tItem2_cItemValue1_ItemValue")
    initial_rounding_value_locator = (By.ID, "tItem2_cItemValue2_ItemValue")
    additional_rouding_value_locator = (By.ID, "tItem2_cItemValue3_ItemValue")
    maximum_value_locator = (By.ID, "tItem2_cItemValue4_ItemValue")
    measure_adjustment_value_input_field_locator = (By.ID, "tItem2_cItemValue5_ItemValue")
    save_button_locator = (By.ID, "btnSave")
    rating_dimensions_subtab_locator = (By.ID, "UDRD")
    date_and_time_value_button_locator = (By.ID, "tItem3_cItemValue1_img")
    band_rates_subtab_locator = (By.ID, "RB")
    automatically_assign_bands_checkbox_locator = (By.ID, "Prepop")
    rating_method_delete_button_locator = (By.ID, "btnDel")
    rating_method_delete_success_text = "Record has been removed successfully."
    route_class_textbox_locator = (By.ID, "RouteClassTextBox_text")
    company_textbox_locator = (By.ID, "CompanyTextBox_text")
    company_save_button_locator = (By.ID, "SaveButton")
    route_class_abbreviation_locator = (By.ID, "RouteClassAbbrTextBox_text")
    target_fulfillment_order_locator = (By.ID, "TargetFulfillmentOrderTextBox_text")
    capacity_saturation_order_locator = (By.ID, "CapacitySaturationOrderTextBox_text")
    route_class_save_button_locator = (By.ID, "SaveButton")
    service_level_textbox_locator = (By.ID, "rServiceLevel_ServiceLevel")
    service_level_abbreviation_textbox_locator = (By.ID, "rServiceLevelAbbrv_ServiceLevelAbbrv")
    route_class_dropdown_select_tag_locator = (By.ID, "rRouteClassID_RouteClassID")
    service_level_save_button_locator = (By.ID, "Save")
    destination_textbox_locator = (By.ID, "Destination_Destination")
    destination_abbreviation_textbox_locator = (By.ID, "DestinationAbbrv_DestinationAbbrv")
    destination_begin_date_textbox_locator = (By.ID, "rBeginDate_BeginDate")
    destination_end_date_textbox_locator = (By.ID, "rEndDate_EndDate")
    destination_type_select_tag_locator = (By.ID, "DestinationType_DestinationTypeID")
    call_char_select_tag_locator = (By.ID, "CallChar_CallCharID")
    country_select_tag_locator = (By.ID, "Country_CountryID")
    number_plan_select_tag_locator = (By.ID, "rNumberPlan_NumberPlanID")
    route_class_service_dropdown_arrow_locator = (By.ID, "RouteClassServiceComboBox_Arrow")
    selected_for_routing_check_box_locator = (By.ID, "SelectedForRoutingChk")
    route_class_initialize_button_locator = (By.ID, "InitializeButton")
    add_new_product_link_locator = (By.ID, "lblNEw")
    company_code_textbox_locator = (By.ID, "CompanyCodeTextBox_text")
    maintain_routing_products_button_locator = (By.ID, "BISaveMaintain")
    origin_set_tab_locator = (By.ID, "OriginTab")
    origin_set_value_button_locator = (By.ID, "OriginGrid_cItemValue1_img")
    origin_set_letters_textbox_locator = (By.ID, "rFilter_ResultFilter")
    copy_from_existing_complex_contract_locator = (By.ID, "ctl00_PageContent_CopyContractLink")
    # End: Detail frame locators

    product_name_textbox_locator = (By.ID, "rProductName_Product")
    product_abbreviation_textbox_locator = (By.ID, "rProductAbbv_ProductAbbrv")
    routing_destination_textbox_locator = (By.ID, "rAtt1_Attribute1")
    first_letter_textbox_locator = (By.XPATH, "//div[@id='R1']/descendant::input[@id='R1_FirstLetter']")
    dialed_digits_textbox_locator = (By.ID, "DialedDigits_DialedDigits")
    dialed_digits_begin_date_textbox_locator = (By.ID, "BeginDate_BeginDate")
    dialed_digits_end_date_textbox_locator = (By.ID, "EndDate_EndDate")

    # Start: Complex contract creation locators
    create_new_contract_button_locator = (By.ID, "ctl00_PageContent_CreateLink")
    contract_account_dropdown_locator = (By.ID, "ctl00_PageContent_ddlAccount")
    contract_direction_dropdown_locator = (By.ID, "ctl00_PageContent_ddlDirection")
    contract_name_textbox_locator = (By.ID, "txtContractName")
    contract_begin_date_textbox_locator = (By.ID, "txtBeginDate")
    contract_end_date_textbox_locator = (By.ID, "txtEndDate")
    contract_details_save_button_locator = (By.ID, "imgSave")
    complex_contract_wizard_next_button_locator = (By.ID, "ctl00_btnWizNext")
    create_complex_contract_page_title_locator = (By.ID, "titlePage")
    auto_extend_operational_and_accounting_radio_button_locator = (By.ID, "auto_y2")
    auto_extend_operational_only_radio_button_locator = (By.ID, "auto_y1")

    # Start: Configure number plan tab locators
    configure_number_plan_tab_locator = (By.ID, "lnktabNP")
    configure_number_plan_commercial_trunk_dropdown_locator = (By.ID, "trunkSelect_1")
    configure_number_plan_call_type_dropdown_locator = (By.ID, "callTypeSelect_1")
    configure_number_plan_create_plus_button_locator = (By.ID, "npToggle_1")
    create_a_new_number_plan_dropdown_locator = (By.XPATH, "//label[text()='Create a new Number Plan']/../../descendant::select")
    number_plan_to_copy_from_dropdown_locator = (By.ID, "ddlNP")
    available_countries_source_id = "availableCountry"
    available_country_first_option_locator = (By.XPATH, "//select[@id='availableCountry']/option[@nodeIndex='1']")
    configure_number_plan_pop_up_title_locator = (By.XPATH, "//h2[contains(text(), 'Configure Number Plan') and @class='popupTitle']")
    available_country_move_button_locator = (By.ID, "countryRight")
    configure_number_plan_go_button_locator = (By.ID, "btnNPGo")
    configure_number_plan_save_button_locator = (By.ID, "saveNPButton")
    available_virtual_countries_source_id = "availableVirtualCountry"
    available_virtual_country_move_button_locator = (By.ID, "virtualCountryRight")
    available_virtual_country_first_option_locator = (By.XPATH, "//select[@id='availableVirtualCountry']/option[@nodeIndex='1']")
    # End: Configure number plan tab locators

    # Start: Rating and tariff details tab locators
    rating_and_tariff_details_tab_locator = (By.ID, "lnktabRT")
    rating_and_tariff_details_rating_method_dropdown_locator = (By.ID, "RatingMethodSelect")
    rating_and_tariff_details_outbound_rate_plan_dropdown_locator = (By.ID, "OutboundRPSelect")
    rating_and_tariff_details_save_button_locator = (By.ID, "saveRTValues")
    # End: Rating and tariff details tab locators

    # Start: Aggregation group page locators
    aggregation_group_name_textbox_locator = (By.ID, "AggregationGroupName")
    aggregation_group_abbreviation_textbox_locator = (By.ID, "AggregationGroupAbbreviation")
    aggregation_template_dropdown_locator = (By.ID, "ctl00_PageContent_AggregationGroupTemplateID_Input")
    aggregate_group_grace_period_dropdown_locator = (By.ID, "AggregationGroupGracePeriodType")
    aggregate_group_grace_period_textbox_locator = (By.ID, "AggregationGroupGracePeriodValue")
    # End: Aggregation group page locators

    # Start: Aggregate product page locators
    aggregate_product_name_textbox_locator = (By.ID, "AggregateProductName")
    aggregate_product_abbreviation_textbox_locator = (By.ID, "AggregateProductAbbreviation")
    # End: Aggregate product page locators

    # Start: Aggregation rules page locators
    traffic_direction_dropdown_locator = (By.ID, "trafficDirection")
    available_service_move_button_locator = (By.ID, "serviceRight")
    available_commercial_trunk_move_button_locator = (By.ID, "trunkRight")
    aggregation_rules_grid_first_row_checkbox_locator = (By.ID, "AggregationRulesGrid_Temp_0")
    origin_set_dropdown_locator = (By.ID, "originSet")
    available_settlement_origin_move_button_locator = (By.ID, "OriginRight")
    # End: Aggregation rules page locators

    # Start: Aggregate rate plan page locators
    aggregate_rate_plan_name_textbox_locator = (By.ID, "newARPName")
    aggregate_rate_plan_abbreviation_textbox_locator = (By.ID, "newARPAbbreviation")
    rate_plan_type_dropdown_locator = (By.ID, "RatePlanTypeDDL")
    tariff_type_dropdown_locator = (By.ID, "TariffTypeDDL")
    currency_dropdown_locator = (By.ID, "CurrencyDDL")
    aggregate_rate_plan_save_button_locator = (By.ID, "saveNew")
    aggregate_scenario_save_button_locator = (By.ID, "saveScenario")
    rating_structure_3_arrow_locator = (By.ID, "RS3")
    rating_structure_22_arrow_locator = (By.ID, "RS22")
    # End: Aggregate rate plan page locators

    # Start: Rating method information pop up locators
    add_new_tier_button_locator = (By.ID, "addNewTier")
    submit_button_locator = (By.ID, "Submit")
    tier_grid_div_id = "TierGrid"
    rate_grid_div_id = "RateGrid"
    rate_grid_save_button_locator = (By.ID, "SaveBtn")
    contract_complete_button_locator = (By.XPATH, "//div[text()='ContractComplete']")
    ok_button_locator = (By.ID, "btnOk")
    confirmation_popup_locator = (By.XPATH, "//p[text()='Data has been saved successfully!']")
    rating_method_info_header_locator = (By.XPATH, "//div[contains(text(), 'Rating Method Information')]")
    rate_structure_dropdown_locator = (By.ID, "rRateStructure_RateStructureID")
    splitting_type_dropdown_locator = (By.ID, "rSplittingType_SplittingTypeID")
    threshold_textbox_locator = (By.ID, "rThreshold_Threshold")
    penalty_rate_textbox_locator = (By.ID, "rPenaltyRate_PenaltyRate")
    detail_title_header_locator = (By.ID, "lgx_DetailTitle")
    group_commitment_textbox_locator = (By.XPATH, "//label[text()='Group Commitment']/../descendant::input")
    subgroup_commitment_textbox_locator = (By.XPATH, "//label[contains(text(), 'SubGroup Commitment')]/../descendant::input")
    shortfall_rates_grid_div_id = "ShortfallRateGrid"
    # End: Rating method information pop up locators

    # End: Complex contract creation locators

    # Start: Manage complex contracts page locators
    manage_complex_contracts_button_locator = (By.ID, "ctl00_PageContent_ManageLink")
    manage_complex_contracts_go_button_locator = (By.ID, "filterWorkflow")
    manage_complex_contracts_save_button_locator = (By.ID, "saveSignatureDate")
    manage_complex_contracts_delete_button_locator = (By.ID, "ContractsGrid_DeleteContract_0")
    manage_complex_contracts_confirmation_popup_locator = (By.XPATH, "//label[contains(text(), 'Are you sure you want to delete contract')]")
    yes_button_locator = (By.ID, "popupSave")
    cancel_button_locator = (By.ID, "popupCancel")
    manage_complex_contracts_unlocked_button_locator = (By.ID, "ContractsGrid_LockedStatus_0")
    lock_unlock_popup_locator = (By.XPATH, "//h2[contains(text(), 'Lock/UnLock Contract')]")
    contracts_grid_first_row_contract_status_change_button_locator = (By.XPATH, "//label[@id='ContractsGrid_ContractStatus_0']/../descendant::img")
    contract_status_dropdown_locator = (By.ID, "ctl00_PageContent_ddlContractStatus")
    contact_status_select_id = "ctl00_PageContent_ddlContractStatus"
    contract_status_change_save_button_locator = (By.ID, "popupSave")
    contracts_grid_signature_date_textbox_locator = (By.ID, "ContractsGrid_SignatureDate_0")
    contracts_grid_save_button_locator = (By.ID, "saveSignatureDate")
    contracts_grid_first_row_lock_button_locator = (By.ID, "ContractsGrid_LockedStatus_0")
    edit_contract_name_textbox_locator = (By.ID, "contractname")
    contracts_grid_first_row_contract_name_locator = (By.ID, "ContractsGrid_ContractName_0")
    contract_workflow_link_locator = (By.ID, "ctl00_PageContent_WorkflowLink")
    contract_locked_status_dropdown_locator = (By.ID, "ctl00_PageContent_ddlLockedStatus")
    complex_contract_account_dropdown_locator = (By.ID, "ctl00_PageContent_ddlAccount")
    complex_contract_dashdoard_link_locator = (By.ID, "ctl00_PageContent_DashboardLink")
    manage_contract_name_textbox_locator = (By.XPATH, "//div[@id='workflowFilter']/descendant::input[@id='contractName']")
    contract_report_button_locator = (By.XPATH, "//div[text()='Contract Report']")
    contract_version_submit_button_locator = (By.XPATH, "//div[text()='Submit']")
    report_preview_button_locator = (By.ID, "btnPrint")
    export_to_excel_button_locator = (By.ID, "btnExport")
    complex_contract_management_first_row_workflow_locator = (By.ID, "ContractsGrid_Workflow_0")
    contract_begin_date_for_search_textbox_locator = (By.ID, "beginDate")
    contract_end_date_for_search_textbox_locator = (By.ID, "endDate")
    number_plan_tab_locator = (By.XPATH, "//a[text()='Number Plan']")
    new_number_plan_grid_first_row_export_button_locator = (By.ID, "NumberPlanGrid_NPExportIcon_0")
    # End: Manage complex contracts page locators

    # Start: Copy from existing complex contracts page locators
    source_account_dropdown_locator = (By.ID, "ddlSourceAccount")
    target_account_dropdown_locator = (By.ID, "ddlTargetAccount")
    source_contract_dropdown_locator = (By.ID, "ddlSourceContract")
    contract_save_button_locator = (By.ID, "ContractSave")
    copy_direction_drop_down_locator = (By.ID, "ddlCopyDirection")
    aggregation_groups_mapping_tab_locator = (By.ID, "lnktabAGMapping")
    aggregation_groups_mapping_save_button_locator = (By.ID, "AGMappingSave")
    commercial_trunk_mapping_tab_locator = (By.ID, "lnktabCTMapping")
    commercial_trunk_mapping_tab_save_button_locator = (By.ID, "CTMappingSave")
    number_plan_mapping_tab_locator = (By.ID, "lnktabNPMapping")
    target_number_plan_textbox_locator = (By.ID, "txtTargetNumberPlan")
    number_plan_mapping_tab_save_button_locator = (By.ID, "NPMappingSave")
    rate_plan_mapping_tab_locator = (By.ID, "lnktabRPMapping")
    rate_plan_mapping_tab_save_button_locator = (By.ID, "RPMappingSave")
    # End: Copy from existing complex contracts page locators

    # Start: Detail tab locators
    detail_tab_locator = (By.XPATH, "//div[@id='ContractEditTabs']/descendant::ul/descendant::a[text()='Detail']")
    first_row_add_product_button_locator = (By.ID, "DetailGridGrid_addIcon_0")
    # End: Detail tab locators
    # End: Manage complex contracts locators

    # Start: Complex contract worklist locators
    complex_contract_worklist_button_locator = (By.ID, "ctl00_PageContent_ContractWorklistLink")
    filters_collapsible_arrow_button_locator = (By.ID, "FiltersCollapsible")
    contract_status_button_locator = (By.ID, "ctl00$FiltersContentID$ContractStatusMultiSelectionUserControl$MultiSelectionRadButton_input")
    done_button_locator = (By.ID, "ctl00$FiltersContentID$ContractStatusMultiSelectionUserControl$MultiSelectionRadWindow$C$MultiSelectionListBoxControl$DoneRadButton_input")
    complex_contract_worklist_go_button_locator = (By.ID, "ctl00$FiltersContentID$btnGo_input")
    complex_contract_worklist_first_row_contract_locator = (By.XPATH, "//tr[@id='ctl00_ResultContentID_ResultControl_ctl00__0']/td[6]/a")
    complex_contract_worklist_clear_section_button_locator = (By.ID, "ctl00$FiltersContentID$btnClearAll_input")
    # End: Complex contract worklist locators

    # Start: Complex contract worklist locators
    contract_simulator_button_locator = (By.ID, "ctl00_PageContent_ContractSimulator")
    contract_simulator_status_field_locator = (By.XPATH, "//label[text()='Status ']/../descendant::div[@class='k-multiselect-wrap k-floatwrap k-multiselectbox-wrap']")
    contract_simulator_search_button_locator = (By.ID, "searchSimulatorDownloads")
    contract_simulator_download_button_locator = (By.ID, "DownloadSimulator")
    contract_simulator_page_title_locator = (By.ID, "page-title")
    contract_simulator_cancel_button_locator = (By.ID, "btnCancelSimulator")
    download_new_simulator_carrier_arrow_locator = (By.XPATH, "//span[text()='Carrier']/../../descendant::span[@class='k-icon k-i-arrow-s']")
    download_new_simulator_pop_up_title_locator = (By.ID, "DownloadNewSimulatorWindow_wnd_title")
    download_new_simulator_revenue_country_field_locator = (By.XPATH, "//label[text()='Revenue Country ']/../descendant::input")
    download_new_simulator_download_button_locator = (By.ID, "btnDownloadNewSimulator")
    contract_simulator_upload_button_locator = (By.ID, "UploadSimulator")
    home_menu_locator = (By.ID, "menu_opener")
    contracts_submenu_locator = (By.XPATH, "//div[@id='main-menu']/descendant::a[text()='Contracts']")
    # End: Complex contract worklist locators

    # Start: Carrier page locators
    carrier_account_first_plus_button_locator = (By.ID, "IMGAccountTree_Account1")
    other_rate_plan_first_plus_button_locator = (By.ID, "IMGAccountTree_Account1_LayAgreement1_lRatePlanGroup1")
    other_rate_plan_first_book_icon_button_locator = (By.ID, "AccountTree_Account1_LayAgreement1_lRatePlanGroup1__LayRatePlan1_ItLiRatePlan_imgRateReference")
    first_account_name_locator = (By.ID, "AccountTree_Account1_ILAccount_Acct")
    buyer_browse_button_locator = (By.ID, "rBuyer_imgBuyer")
    seller_browse_button_locator = (By.ID, "rSeller_imgSeller")
    buyer_tab_locator = (By.ID, "rTab_tabBuyer")
    seller_tab_locator = (By.ID, "rTab_tabSeller")
    first_name_textbox_locator = (By.ID, "rFName_FirstName")
    last_name_textbox_locator = (By.ID, "rLName_LastName")
    account_save_button_locator = (By.ID, "Save")
    rates_grid_first_row_product_locator = (By.ID, "RateGrid_RateGrid_gc_Product1_Product")
    first_inner_customer_name_locator = (By.ID, "AccountTree_Account1_LayAgreement1_ItLiAgreement_Agreement")
    service_level_column_locator = (By.ID, "tESR_cRouteClass_Header")
    # End: Carrier page locators

    # Start: Product mapping page locators
    product_mapping_go_button_locator = (By.ID, "Go")
    product_mapping_grid_first_row_selling_product_locator = (By.ID, "tCS_cAtt21_iAtt2")
    selling_product_browse_button_locator = (By.XPATH, "//span[contains(text(), 'Selling Product')]/../../descendant::img")
    product_mapping_grid_rows_locator = (By.XPATH, "//table[@id='tCS']/descendant::tr")
    routing_to_selling_percentage_textbox_locator = (By.ID, "rRes1_Result1ID")
    # End: Product mapping page locators

    # End: iXConnect page locators

    def switch_to_ixconnect(self):
        """
        Implementing switch to ixconnect functionality
        :return:
        """
        self.switch_to_window()
        self.accept_ssl_certificate()

    def switch_to_list_frame(self):
        """
        Implementing switch to list frame functionality
        :return:
        """
        self.switch_to_frame(self.list_frame_locator)

    def switch_to_header_frame(self):
        """
        Implementing switch to header frame functionality
        :return:
        """
        self.switch_to_frame(self.header_frame_locator)

    def click_new_rating_method_button(self):
        """
        Implementing click new rating method button functionality
        :return:
        """
        self.click_element(self.new_rating_method_button_locator, legacy_screen_loader=True)

    def switch_to_detail_frame(self):
        """
        Implementing switch to detail frame functionality
        :return:
        """
        self.switch_to_frame(self.detail_frame_locator)

    def click_new_button(self):
        """
        Implementing click new button functionality
        :return:
        """
        self.wait().until(EC.visibility_of_element_located(self.new_button_locator))
        self.click_element(self.new_button_locator, legacy_screen_loader=True)

    def set_new_daylight_saving_zone(self, daylight_saving_zone_name_prefix):
        """
        Implementing set new daylight saving zone functionality
        :param daylight_saving_zone_name_prefix:
        :return: daylight_saving_zone
        """
        daylight_saving_zone = daylight_saving_zone_name_prefix + self.random_string_generator(6)
        self.set_value_into_input_field(self.daylight_saving_zone_input_field_locator, daylight_saving_zone)
        return daylight_saving_zone

    def set_new_daylight_saving_zone_region(self, region):
        """
        Implementing set new daylight saving zone region functionality
        :param region:
        :return:
        """
        self.click_element(self.daylight_saving_zone_region_locator, legacy_screen_loader=True)
        select_option_locator = (By.XPATH, "//select[@id='rRegion_RegionID']/descendant::option[text()='%s']" % str(region))
        self.click_element(select_option_locator, legacy_screen_loader=True)

    def click_new_daylight_saving_zone_save_button(self):
        """
        Implementing click new daylight saving zone save button functionality
        :return:
        """
        self.click_element(self.new_daylight_saving_zone_save_button_locator, legacy_screen_loader=True)

    def click_add_a_new_row_button(self):
        """
        Implementing click add a new row button functionality
        :return:
        """
        self.set_existing_handles()
        self.click_element(self.add_a_new_row_button_locator, legacy_screen_loader=True)

    def set_daylight_saving_zone_period_begin_date(self, begin_date):
        """
        Implementing set daylight saving zone period begin date functionality
        :param: begin_date
        :return:
        """
        if begin_date != "":
            self.set_value_into_input_field(self.period_begin_date_locator, begin_date)
        else:
            self.set_value_into_input_field(self.period_begin_date_locator, self.get_current_date())

    def set_begin_hour_value(self, begin_hour):
        """
        Implementing set begin hour value functionality
        :param begin_hour:
        :return:
        """
        self.set_value_into_input_field(self.begin_hour_input_field_locator, begin_hour)

    def set_begin_hour_minute_value(self, minute):
        """
        Implementing set begin hour minute value functionality
        :param minute:
        :return:
        """
        self.set_value_into_input_field(self.begin_hour_minute_input_field_locator, minute)

    def set_daylight_saving_zone_period_end_date(self, end_date):
        """
        Implementing set daylight saving zone period end date functionality
        :param: end_date
        :return:
        """
        if end_date != "":
            self.set_value_into_input_field(self.period_end_date_locator, end_date)
        else:
            self.set_value_into_input_field(self.period_end_date_locator, self.get_date(last_day_of_current_month=True))

    def set_end_hour_value(self, end_hour):
        """
        Implementing set end hour value functionality
        :param end_hour:
        :return:
        """
        self.set_value_into_input_field(self.end_hour_input_field_locator, end_hour)

    def set_end_hour_minute_value(self, minute):
        """
        Implementing set end hour minute value functionality
        :param minute:
        :return:
        """
        self.set_value_into_input_field(self.end_hour_minute_input_field_locator, minute)

    def click_daylight_saving_zone_period_save_button(self):
        """
        Implementing click daylight saving zone period save button functionality
        :return:
        """
        save_button_element = self.wait().until(EC.presence_of_element_located(self.new_daylight_saving_zone_period_save_button_locator), 'new daylight saving zone save button locator not found before specified time out')
        save_button_element.click()
        # To Do: Need to R&D to use webdriver explicit wait rather time.sleep
        time.sleep(5)
        try:
            self.accept_alert_pop_up()
        except:
            pass
        self.wait_for_legacy_screen_spinner_load()

    def set_letters_for_search(self, letters):
        """
        Implementing set letters for search functionality
        :param letters:
        :return:
        """
        self.set_value_into_input_field(self.letters_input_field_locator, letters)

    def click_go_button(self):
        """
        Implementing click go button functionality
        :return:
        """
        self.click_element(self.go_button_locator, legacy_screen_loader=True)

    def expand_testhome_region(self):
        """
        Implementing expand testhome region functionality
        :return:
        """
        self.click_element(self.testhome_expand_button_locator, legacy_screen_loader=True)

    def is_created_daylight_saving_zone_available(self, daylight_saving_zone):
        """
        Implementing is created daylight saving zone available functionality
        :param daylight_saving_zone:
        :return: True/False
        """
        daylight_saving_zone_locator = (By.XPATH, "//span[text()='%s']" % str(daylight_saving_zone))
        return self.is_element_present(daylight_saving_zone_locator)

    def select_daylight_saving_zone(self, daylight_saving_zone):
        """
        Implementing select daylight saving zone functionality
        :param daylight_saving_zone:
        :return:
        """
        daylight_saving_zone_locator = (By.XPATH, "//span[text()='%s']" % daylight_saving_zone)
        self.click_element(daylight_saving_zone_locator, True, legacy_screen_loader=True)

    def click_delete_button(self):
        """
        Implementing click delete button functionality
        :return:
        """
        delete_button_element = self.wait().until(EC.presence_of_element_located(self.delete_button_locator), 'delete button locator not found before specified time out')
        delete_button_element.click()
        # To Do: Need to do R&D to use webdriver wait instead of time.sleep
        time.sleep(5)
        try:
            self.accept_alert_pop_up()
        except:
            pass
        time.sleep(5)
        alert_text = self.get_alert_pop_up_text()
        if alert_text == self.delete_success_alert_text:
            self.accept_alert_pop_up()
        self.wait_for_legacy_screen_spinner_load()

    def set_new_rating_method_name(self, rating_method_prefix):
        """
        Implementing set new rating method name functionality
        :param rating_method_prefix:
        :return: rating method
        """
        global rating_method
        rating_method = rating_method_prefix + self.random_string_generator(6)
        self.set_value_into_input_field(self.rating_method_input_field_locator, rating_method)
        return rating_method

    def set_new_rating_method_abbreviation(self, abbreviation_prefix):
        """
        Implementing set new rating method abbreviation functionality
        :param abbreviation_prefix:
        :return:
        """
        abbreviation = abbreviation_prefix + self.random_string_generator(6)
        self.set_value_into_input_field(self.rating_method_abbreviation_input_field_locator, abbreviation)

    def set_minimum_value(self, value):
        """
        Implementing set minimum value functionality
        :param value:
        :return:
        """
        self.set_value_into_input_field(self.minimum_value_locator, value)

    def set_initial_rounding_value(self, value):
        """
        Implementing set initial rounding value functionality
        :param value:
        :return:
        """
        self.set_value_into_input_field(self.initial_rounding_value_locator, value)

    def set_additional_rounding_value(self, value):
        """
        Implementing set additional rounding value functionality
        :param value:
        :return:
        """
        self.set_value_into_input_field(self.additional_rouding_value_locator, value)

    def set_maximum_value(self, value):
        """
        Implementing set maximum value functionality
        :param value:
        :return:
        """
        self.set_value_into_input_field(self.maximum_value_locator, value)

    def set_measure_adjustment_value(self, value):
        """
        Implementing set measure adjustment value functionality
        :param value:
        :return:
        """
        self.set_value_into_input_field(self.measure_adjustment_value_input_field_locator, value)

    def select_rating_dimensions_subtab(self):
        """
        Implementing select rating dimensions subtab functionality
        :return:
        """
        self.click_element(self.rating_dimensions_subtab_locator, legacy_screen_loader=True)

    def click_date_and_time_value_button(self):
        """
        Implementing click date and time value button functionality
        :return:
        """
        self.set_existing_handles()
        self.click_element(self.date_and_time_value_button_locator, legacy_screen_loader=True)

    def select_rate_dimension_template(self, template):
        """
        Implementing select rate dimension template functionality
        :param template:
        :return:
        """
        template_locator = (By.XPATH, "//div[@id='tAttributesPaging']/descendant::table[@id='tAttributes']/descendant::span[text()='%s']" % str(template))
        self.click_element(template_locator, legacy_screen_loader=True)

    def select_band_rates_subtab(self):
        """
        Implementing select band rates subtab functionality
        :return:
        """
        self.click_element(self.band_rates_subtab_locator, legacy_screen_loader=True)

    def select_automatically_assign_bands_checkbox(self):
        """
        Implementing select automatically assign bands checkbox functionality
        :return:
        """
        self.click_element(self.automatically_assign_bands_checkbox_locator, legacy_screen_loader=True)

    def click_new_rating_method_save_button(self):
        """
        Implementing click new rating method save button functionality
        :return:
        """
        save_button_element = self.wait().until(EC.presence_of_element_located(self.save_button_locator), 'save button locator not found before specified time out')
        save_button_element.click()
        # To Do: Find a way to work without time.sleep
        time.sleep(5)
        try:
            self.accept_alert_pop_up()
        except:
            raise
        self.wait_for_legacy_screen_spinner_load()

    def expand_new_rating_method_structure(self):
        """
        Implementing expand new rating method structure functionality
        :return:
        """
        self.click_element(self.new_rating_method_expand_button_locator, legacy_screen_loader=True)

    def is_rating_method_available(self, rating_method):
        """
        Implementing is rating method available functionality
        :param rating_method:
        :return: True/False
        """
        rating_method_locator = (By.XPATH, "//span[text()='%s']" % str(rating_method))
        return self.is_element_present(rating_method_locator)

    def select_rating_method(self, rating_method):
        """
        Implementing select rating method functionality
        :param rating_method:
        :return:
        """
        rating_method_locator = (By.XPATH, "//span[text()='%s']" % rating_method)
        self.click_element(rating_method_locator, True, legacy_screen_loader=True)

    def click_rating_method_delete_button(self):
        """
        Implementing click rating method delete button functionality
        :return:
        """
        delete_button_element = self.wait().until(EC.presence_of_element_located(self.rating_method_delete_button_locator), 'delete button locator not found before specified time out')
        delete_button_element.click()
        # To Do: Find a way to work without time.sleep
        time.sleep(5)
        try:
            self.accept_alert_pop_up()
        except:
            pass
        time.sleep(5)
        alert_text = self.get_alert_pop_up_text()
        if alert_text == self.rating_method_delete_success_text:
            self.accept_alert_pop_up()
        self.wait_for_legacy_screen_spinner_load()

    def get_alert_pop_up_text(self):
        """
        Implementing get alert pop up text functionality
        :return: alert text
        """
        return self.get_alert_text()

    def get_destination_date(self):
        """
        Implementing get destination date functionality
        :return: destination date
        """
        return self.get_text_from_element(self.destination_date_locator, is_a_input_field=True)

    def get_date_from_daylight_savings_zone(self):
        """
        Implementing get daylight savings zone date functionality
        :return: daylight savings date
        """
        return self.get_text_from_element(self.daylight_saving_zone_date_locator, is_a_input_field=True)

    def select_route_class_submenu(self):
        """
        Implementing select route class submenu functionality
        :return:
        """
        self.switch_to_header_frame()
        self.select_submenu(self.network_menu_locator, self.route_class_submenu_js_function, script_executor=True)
        self.wait_for_legacy_screen_spinner_load()
        self.switch_to_default_content()

    def click_new_route_class_button(self):
        """
        Implementing click new route class button functionality
        :return:
        """
        self.switch_to_list_frame()
        new_route_class_button_element = self.wait().until(EC.visibility_of_element_located(self.new_route_class_button_locator), 'new route class button locator not visible before specified time out')
        self.script_executor_click(new_route_class_button_element)
        self.wait_for_legacy_screen_spinner_load()
        self.switch_to_default_content()

    def set_route_class(self, route_class_prefix):
        """
        Implementing set route class functionality
        :return:
        """
        global route_class
        self.switch_to_detail_frame()
        route_class = route_class_prefix + self.random_string_generator(size=4)
        self.set_value_into_input_field(self.route_class_textbox_locator, route_class)
        self.switch_to_default_content()

    def set_route_class_service(self, item):
        """
        Implementing set route class service functionality
        :param item:
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.single_selection_from_static_kendo_dropdown(self.route_class_service_dropdown_arrow_locator, item, find_locator_with_class=True)
        except:
            try:
                dropdown_item_locator = (By.XPATH, "//ul[@class='rcbList']/descendant::li[2]")
                self.click_element(dropdown_item_locator, script_executor=True, legacy_screen_loader=True)
            except:
                pass
        self.switch_to_default_content()

    def get_route_class(self):
        """
        Implementing get route class functionality
        :return:
        """
        global route_class
        return route_class

    def set_route_class_abbreviation(self):
        """
        Implementing set route class abbreviation functionality
        :return:
        """
        self.switch_to_detail_frame()
        self.set_value_into_input_field(self.route_class_abbreviation_locator, self.random_string_generator(size=4))
        self.switch_to_default_content()

    def select_company_submenu(self):
        """
        Implementing select company submenu functionality
        :return:
        """
        self.switch_to_header_frame()
        self.select_submenu(self.admin_menu_locator, self.company_submenu_js_function, script_executor=True)
        self.wait_for_legacy_screen_spinner_load()
        self.switch_to_default_content()

    def set_company_name(self, company_prefix):
        """
        Implementing set company name functionality
        :return:
        """
        global company
        self.switch_to_detail_frame()
        company = company_prefix + self.random_string_generator(size=4)
        self.set_value_into_input_field(self.company_textbox_locator, company)
        self.switch_to_default_content()

    def get_company(self):
        """
        Implementing get company functionality
        :return: company
        """
        global company
        return company

    def click_company_save_button(self):
        """
        Implementing click company save button functionality
        :return:
        """
        self.switch_to_detail_frame()
        save_button_element = self.wait().until(EC.presence_of_element_located(self.company_save_button_locator), 'save button locator not found before specified time out')
        save_button_element.click()
        # To Do: Find a way to work without time.sleep
        time.sleep(5)
        try:
            self.accept_alert_pop_up()
        except:
            raise
        self.wait_for_legacy_screen_spinner_load()
        self.switch_to_default_content()

    def set_target_fulfillment_order(self):
        """
        Implementing set target fulfillment order functionality
        :return:
        """
        self.switch_to_detail_frame()
        self.set_value_into_input_field(self.target_fulfillment_order_locator, self.random_string_generator(size=4, chars=string.digits))
        self.switch_to_default_content()

    def set_capacity_saturation_order(self):
        """
        Implementing set capacity saturation order functionality
        :return:
        """
        self.switch_to_detail_frame()
        self.set_value_into_input_field(self.capacity_saturation_order_locator, self.random_string_generator(size=4, chars=string.digits))
        self.switch_to_default_content()

    def click_route_class_save_button(self):
        """
        Implementing click route class save button functionality
        :return:
        """
        self.switch_to_detail_frame()
        self.click_element(self.route_class_save_button_locator, script_executor=True, legacy_screen_loader=True)
        self.wait_for_legacy_screen_spinner_load()
        try:
            self.accept_alert_pop_up()
        except:
            pass
        self.switch_to_default_content()

    def select_destination_submenu(self):
        """
        Implementing select destination submenu functionality
        :return:
        """
        self.switch_to_header_frame()
        self.select_submenu(self.destination_menu_locator, self.destination_submenu_js_function, script_executor=True)
        self.wait_for_legacy_screen_spinner_load()
        self.switch_to_default_content()

    def click_destination_new_button(self):
        """
        Implementing click destination new button functionality
        :return:
        """
        self.switch_to_list_frame()
        self.wait().until(EC.visibility_of_element_located(self.new_button_locator), 'new button locator not visible before specified time out')
        self.click_element(self.new_button_locator, script_executor=True, legacy_screen_loader=True)
        self.wait_for_legacy_screen_spinner_load()
        self.switch_to_default_content()

    def set_destination(self, destination_prefix):
        """
        Implementing set destination functionality
        :param destination_prefix:
        :return:
        """
        global destination
        destination = destination_prefix + self.random_string_generator(size=4)
        self.switch_to_detail_frame()
        self.set_value_into_input_field(self.destination_textbox_locator, destination)
        self.switch_to_default_content()

    def get_created_destination(self):
        """
        Implementing get created destination functionality
        :return:
        """
        global destination
        return destination

    def set_destination_abbreviation(self):
        """
        Implementing set destination abbreviation functionality
        :return:
        """
        self.switch_to_detail_frame()
        self.set_value_into_input_field(self.destination_abbreviation_textbox_locator, self.random_string_generator(size=5))
        self.switch_to_default_content()

    def select_service_level_submenu(self):
        """
        Implementing select service level submenu functionality
        :return:
        """
        self.switch_to_header_frame()
        self.select_submenu(self.network_menu_locator, self.service_level_submenu_js_function, script_executor=True)
        self.wait_for_legacy_screen_spinner_load()
        self.switch_to_default_content()

    def click_service_level_new_button(self):
        """
        Implementing click service level new button
        :return:
        """
        self.switch_to_list_frame()
        self.click_element(self.new_button_locator, script_executor=True, legacy_screen_loader=True)
        self.wait_for_legacy_screen_spinner_load()
        self.switch_to_default_content()

    def set_service_level(self, service_level_prefix):
        """
        Implementing set service level functionality
        :param service_level_prefix:
        :return:
        """
        global service_level
        service_level = service_level_prefix + self.random_string_generator(size=4)
        self.switch_to_detail_frame()
        self.set_value_into_input_field(self.service_level_textbox_locator, service_level)
        self.switch_to_default_content()

    def get_created_service_level(self):
        """
        Implementing get created service level functionality
        :return:
        """
        global service_level
        return service_level

    def set_service_level_abbreviation(self):
        """
        Implementing set service level abbreviation functionality
        :return:
        """
        self.switch_to_detail_frame()
        self.set_value_into_input_field(self.service_level_abbreviation_textbox_locator, self.random_string_generator(size=3))
        self.switch_to_default_content()

    def select_dropdown_item_from_select_tag(self, select_tag_locator, value):
        """
        Implementing select dropdown item from select tag functionality
        :param select_tag_locator:
        :param value:
        :return:
        """
        try:
            select = Select(self.wait().until(EC.presence_of_element_located(select_tag_locator)))
            select.select_by_visible_text(value)
        except:
            raise

    def select_route_class_dropdown_item(self, route_class):
        """
        Implementing select route class dropdown item functionality
        :return:
        """
        self.switch_to_detail_frame()
        self.select_dropdown_item_from_select_tag(self.route_class_dropdown_select_tag_locator, route_class)
        self.switch_to_default_content()

    def click_service_level_save_button(self):
        """
        Implementing click service level save button functionality
        :return:
        """
        self.switch_to_detail_frame()
        self.click_element(self.service_level_save_button_locator, legacy_screen_loader=True)
        self.wait_for_legacy_screen_spinner_load()
        try:
            self.accept_alert_pop_up()
        except:
            pass
        self.switch_to_default_content()

    def set_destination_type(self, destination_type):
        """
        Implementing set destination type functionality
        :param destination_type:
        :return:
        """
        self.switch_to_detail_frame()
        self.select_dropdown_item_from_select_tag(self.destination_type_select_tag_locator, destination_type)
        self.switch_to_default_content()

    def set_call_char(self, call_char):
        """
        Implementing set call char functionality
        :param call_char:
        :return:
        """
        self.switch_to_detail_frame()
        self.select_dropdown_item_from_select_tag(self.call_char_select_tag_locator, call_char)
        self.switch_to_default_content()

    def set_country(self, country):
        """
        Implementing set country functionality
        :param country:
        :return:
        """
        self.switch_to_detail_frame()
        self.select_dropdown_item_from_select_tag(self.country_select_tag_locator, country)
        self.switch_to_default_content()

    def set_number_plan(self, number_plan):
        """
        Implementing set number plan functionality
        :param number_plan:
        :return:
        """
        self.switch_to_detail_frame()
        self.click_element(self.number_plan_select_tag_locator, legacy_screen_loader=True)
        number_plan_option_locator = (By.XPATH, "//select[@id='rNumberPlan_NumberPlanID']/option[text()='%s']" % number_plan)
        if self.is_element_present(number_plan_option_locator) is False:
            number_plan_option_locator = (By.XPATH, "//select[@id='rNumberPlan_NumberPlanID']/option[1]" % number_plan)
        self.click_element(number_plan_option_locator, legacy_screen_loader=True)
        self.switch_to_default_content()

    def set_destination_begin_date(self, future_date):
        """
        Implementing set destination begin date functionality
        :param future_date:
        :return:
        """
        self.switch_to_detail_frame()
        if future_date is True:
            self.set_value_into_input_field(self.destination_begin_date_textbox_locator, self.get_date(future_date=True, number_of_days_to_add=6))
        else:
            self.set_value_into_input_field(self.destination_begin_date_textbox_locator, self.get_date(current_date=True))
        self.switch_to_default_content()

    def set_destination_end_date(self):
        """
        Implementing set destination end date functionality
        :return:
        """
        self.switch_to_detail_frame()
        self.set_value_into_input_field(self.destination_end_date_textbox_locator, self.get_date(future_date=True, number_of_days_to_add=8))
        self.switch_to_default_content()

    def click_destination_save_button(self):
        """
        Implementing click destination save button functionality
        :return:
        """
        self.switch_to_detail_frame()
        self.click_element(self.new_daylight_saving_zone_save_button_locator, legacy_screen_loader=True)
        self.wait_for_legacy_screen_spinner_load()
        try:
            self.accept_alert_pop_up()
        except:
            pass
        self.wait_for_legacy_screen_spinner_load()
        self.switch_to_default_content()

    def get_rating_method(self):
        """
        Implementing get rating method functionality
        :return: rating method
        """
        global rating_method
        return rating_method

    def click_selected_for_routing_check_box(self):
        """
        Implementing click selected for routing check box functionality
        :return:
        """
        self.switch_to_detail_frame()
        self.click_element(self.selected_for_routing_check_box_locator, True, legacy_screen_loader=True)
        self.switch_to_default_content()

    def click_route_class_initialize_button(self):
        """
        Implementing click route class initialize button functionality
        :return:
        """
        self.switch_to_detail_frame()
        self.click_element(self.route_class_initialize_button_locator, legacy_screen_loader=True)
        try:
            self.accept_alert_pop_up()
            self.wait_for_legacy_screen_spinner_load()
            self.accept_alert_pop_up()
        except:
            pass
        self.switch_to_default_content()

    def select_product_submenu(self):
        """
        Implementing select product submenu functionality
        :return:
        """
        self.switch_to_header_frame()
        self.select_submenu(self.destination_menu_locator, self.product_submenu_js_function, script_executor=True)
        self.wait_for_legacy_screen_spinner_load()
        self.switch_to_default_content()

    def expand_routing_structure(self):
        """
        Implementing expand routing structure functionality
        :return:
        """
        self.switch_to_list_frame()
        self.click_element(self.routing_expand_button_locator, legacy_screen_loader=True)
        self.switch_to_default_content()

    def select_routing(self):
        """
        Implementing select routing functionality
        :return:
        """
        self.switch_to_list_frame()
        self.click_element(self.routing_locator, legacy_screen_loader=True)
        self.switch_to_default_content()

    def click_add_new_product_link(self):
        """
        Implementing click add new product link functionality
        :return:
        """
        self.switch_to_detail_frame()
        self.set_existing_handles()
        self.click_element(self.add_new_product_link_locator, legacy_screen_loader=True)
        self.wait_for_legacy_screen_spinner_load()
        self.switch_to_default_content()
        self.switch_to_window()

    def set_product_name(self, product_prefix):
        """
        Implementing set product name functionality
        :param product_prefix:
        :return:
        """
        global product_name
        product_name = product_prefix + self.random_string_generator(size=4)
        self.set_value_into_input_field(self.product_name_textbox_locator, product_name)

    def get_created_product_name(self):
        """
        Implementing get created product name functionality
        :return: product_name
        """
        global product_name
        return product_name

    def set_product_abbreviation(self):
        """
        Implementing set product abbreviation functionality
        :return:
        """
        self.set_value_into_input_field(self.product_abbreviation_textbox_locator, self.random_string_generator(size=5))
        self.switch_to_default_content()

    def set_first_letter(self, first_letter):
        """
        Implementing set first letter functionality
        :param first_letter:
        :return:
        """
        self.click_element(self.first_letter_textbox_locator, legacy_screen_loader=True)
        if first_letter == "":
            self.set_value_into_input_field(self.first_letter_textbox_locator, self.random_string_generator(size=5))
        else:
            self.set_value_into_input_field(self.first_letter_textbox_locator, first_letter)

    def set_routing_destination(self):
        """
        Implementing set routing destination functionality
        :return:
        """
        self.set_existing_handles()
        self.click_element(self.routing_destination_textbox_locator, legacy_screen_loader=True)
        self.wait_for_legacy_screen_spinner_load()
        self.switch_to_window()

    def set_company_code(self):
        """
        Implementing set company code functionality
        :return:
        """
        self.switch_to_detail_frame()
        company_code = self.random_string_generator(4, string.digits)
        self.set_value_into_input_field(self.company_code_textbox_locator, company_code)
        self.switch_to_default_content()

    def click_maintain_routing_products_button(self):
        """
        Implementing click maintain routing products button functionality
        :return:
        """
        self.switch_to_detail_frame()
        self.click_element(self.maintain_routing_products_button_locator, legacy_screen_loader=True)
        self.wait_for_legacy_screen_spinner_load()
        try:
            self.accept_alert_pop_up()
            self.wait_for_legacy_screen_spinner_load()
            self.accept_alert_pop_up()
        except:
            pass
        self.switch_to_default_content()

    def click_new_destination_button(self):
        """
        Implementing click new destination button functionality
        :return:
        """
        self.switch_to_list_frame()
        self.click_element(self.new_destination_button_locator, legacy_screen_loader=True)
        self.wait_for_legacy_screen_spinner_load()
        self.switch_to_default_content()
        self.set_existing_handles()
        self.switch_to_window()

    def set_dialed_digits(self):
        """
        Implementing set dialed digits functionality
        :return:
        """
        self.set_value_into_input_field(self.dialed_digits_textbox_locator, self.random_string_generator(4, string.digits))

    def set_dialed_digits_begin_date(self):
        """
        Implementing set dialed digits begin date functionality
        :return:
        """
        self.set_value_into_input_field(self.dialed_digits_begin_date_textbox_locator, self.get_date(last_day_of_last_month=True))

    def click_dialed_digits_save_button(self):
        """
        Implementing click dialed digits save button functionality
        :return:
        """
        save_button_element = self.wait().until(EC.presence_of_element_located(self.service_level_save_button_locator), 'save button locator not found before specified time out')
        self.script_executor_click(save_button_element)
        # To Do: Find a way to work without time.sleep
        time.sleep(5)
        try:
            self.accept_alert_pop_up()
            input_field = client.Dispatch("WScript.Shell")
            input_field.SendKeys("{ENTER}")
        except:
            pass
        self.switch_to_default_content()
        self.switch_to_previous_window()
        self.wait_for_legacy_screen_spinner_load()

    def set_dialed_digits_end_date(self):
        """
        Implementing set dialed digits end date functionality
        :return:
        """
        self.set_value_into_input_field(self.dialed_digits_end_date_textbox_locator, self.get_date(last_day_of_current_month=True))

    def select_origin_set_subtab(self):
        """
        Implementing select origin set subtab functionality
        :return:
        """
        self.click_element(self.origin_set_tab_locator, legacy_screen_loader=True)

    def click_origin_set_value_button(self):
        """
        Implementing click origin set value button functionality
        :return:
        """
        self.set_existing_handles()
        self.click_element(self.origin_set_value_button_locator, legacy_screen_loader=True)

    def set_origin_set_letters(self, origin_set):
        """
        Implementing set origin set letters functionality
        :param origin_set:
        :return:
        """
        self.set_value_into_input_field(self.origin_set_letters_textbox_locator, origin_set)

    def is_job_maintenance_link_present(self):
        """
        Implementing is job maintenance link present functionality
        :return: True/False
        """
        self.switch_to_list_frame()
        is_present = self.is_element_present(self.job_maintenance_link_locator)
        self.switch_to_default_content()
        return is_present

    def click_exit_header_link(self):
        """
        Implementing click exit header link functionality
        :return:
        """
        self.switch_to_header_frame()
        self.click_element(self.exit_header_link_locator, legacy_screen_loader=True)
        self.switch_to_previous_window()

    def click_create_new_complex_contract_button(self):
        """
        Implementing click create new complex contract button functionality
        :return:
        """
        self.switch_to_detail_frame()
        self.click_element(self.create_new_contract_button_locator, legacy_screen_loader=True)
        self.switch_to_default_content()

    def set_contract_account(self, account_name):
        """
        Implementing set contract account functionality
        :return:
        """
        self.switch_to_detail_frame()
        self.select_option(self.contract_account_dropdown_locator, account_name)
        self.switch_to_default_content()

    def set_contract_direction(self, direction):
        """
        Implementing set contract direction functionality
        :return:
        """
        self.switch_to_detail_frame()
        self.select_option(self.contract_direction_dropdown_locator, direction)
        self.switch_to_default_content()

    def set_contract_name(self, contract_name_prefix):
        """
        Implementing set contract name functionality
        :return:
        """
        global contract_name
        self.switch_to_detail_frame()
        contract_name = contract_name_prefix + self.random_string_generator(4)
        self.set_value_into_input_field(self.contract_name_textbox_locator, contract_name)
        self.switch_to_default_content()

    def set_contract_begin_date(self, contract_begin_date):
        """
        Implementing set contract begin date functionality
        :return:
        """
        if contract_begin_date == "":
            contract_begin_date = self.get_date(first_day_of_current_month=True)
        self.switch_to_detail_frame()
        self.set_value_into_input_field(self.contract_begin_date_textbox_locator, contract_begin_date)
        self.switch_to_default_content()

    def set_contract_end_date(self, contract_end_date):
        """
        Implementing set contract end date functionality
        :return:
        """
        if contract_end_date == "":
            contract_end_date = self.get_date(last_day_of_current_month=True)
        self.switch_to_detail_frame()
        self.set_value_into_input_field(self.contract_end_date_textbox_locator, contract_end_date)
        self.switch_to_default_content()

    def click_contract_details_save_button(self):
        """
        Implementing click contract details save button functionality
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.click_element(self.contract_details_save_button_locator, legacy_screen_loader=True)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def select_configure_number_plan_tab(self):
        """
        Implementing select configure number plan tab functionality
        :return:
        """
        self.switch_to_detail_frame()
        self.click_element(self.configure_number_plan_tab_locator, legacy_screen_loader=True)
        self.switch_to_default_content()

    def set_configure_number_plan_commercial_trunk(self, commercial_trunk):
        """
        Implementing set configure number plan commercial trunk functionality
        :param commercial_trunk:
        :return:
        """
        self.switch_to_detail_frame()
        self.select_option(self.configure_number_plan_commercial_trunk_dropdown_locator, commercial_trunk)
        self.switch_to_default_content()

    def set_configure_number_plan_call_type(self, call_type):
        """
        Implementing set configure number plan call type functionality
        :param call_type:
        :return:
        """
        self.switch_to_detail_frame()
        self.select_option(self.configure_number_plan_call_type_dropdown_locator, call_type)
        self.switch_to_default_content()

    def click_configure_number_plan_create_plus_button(self):
        """
        Implementing click configure number plan create plus button functionality
        :return:
        """
        self.switch_to_detail_frame()
        self.click_element(self.configure_number_plan_create_plus_button_locator, legacy_screen_loader=True)
        self.switch_to_default_content()

    def set_create_a_new_number_plan(self, new_number_plan):
        """
        Implementing set create a new number plan functionality
        :param new_number_plan:
        :return:
        """
        self.switch_to_detail_frame()
        self.select_option(self.create_a_new_number_plan_dropdown_locator, new_number_plan)
        self.click_element(self.configure_number_plan_pop_up_title_locator, legacy_screen_loader=True)
        self.switch_to_default_content()

    def set_number_plan_to_copy_from(self, number_plan_to_copy_from):
        """
        Implementing set number plan to copy from functionality
        :param number_plan_to_copy_from:
        :return:
        """
        self.switch_to_detail_frame()
        self.select_option(self.number_plan_to_copy_from_dropdown_locator, number_plan_to_copy_from)
        self.click_element(self.configure_number_plan_pop_up_title_locator, legacy_screen_loader=True)
        self.switch_to_default_content()

    def move_available_countries_to_destination(self, country_name, deselect_first_option, iframe=False):
        """
        Implementing move available countries to destination functionality
        :param country_name:
        :param deselect_first_option:
        :param iframe:
        :return:
        """
        country_list = [country_name]
        self.switch_to_detail_frame()
        if iframe is True:
            self.switch_to_iframe()
        if deselect_first_option is True:
            self.click_element(self.available_country_first_option_locator, legacy_screen_loader=True)
        self.move_available_items_to_destination(self.available_countries_source_id, country_list, self.available_country_move_button_locator)
        self.switch_to_default_content()

    def click_configure_number_plan_go_button(self):
        """
        Implementing click configure number plan go button functionality
        :return:
        """
        self.switch_to_detail_frame()
        self.click_element(self.configure_number_plan_go_button_locator, legacy_screen_loader=True)
        self.switch_to_default_content()

    def click_configure_number_plan_save_button(self):
        """
        Implementing click configure number plan save button functionality
        :return:
        """
        self.switch_to_detail_frame()
        self.click_element(self.configure_number_plan_save_button_locator, legacy_screen_loader=True)
        self.switch_to_default_content()

    def select_rating_and_tariff_details_tab(self):
        """
        Implementing select rating and tariff details tab functionality
        :return:
        """
        self.switch_to_detail_frame()
        self.click_element(self.rating_and_tariff_details_tab_locator, legacy_screen_loader=True)
        self.switch_to_default_content()

    def set_rating_and_tariff_details_rating_method(self, rating_method):
        """
        Implementing set rating and tariff details rating method functionality
        :param rating_method:
        :return:
        """
        self.switch_to_detail_frame()
        self.select_option(self.rating_and_tariff_details_rating_method_dropdown_locator, rating_method)
        self.click_element(self.create_complex_contract_page_title_locator, legacy_screen_loader=True)
        self.switch_to_default_content()

    def set_rating_and_tariff_details_outbound_rate_plan(self, outbound_rate_plan):
        """
        Implementing set rating and tariff details outbound rate plan functionality
        :param outbound_rate_plan:
        :return:
        """
        self.switch_to_detail_frame()
        self.select_option(self.rating_and_tariff_details_outbound_rate_plan_dropdown_locator, outbound_rate_plan)
        self.click_element(self.create_complex_contract_page_title_locator, legacy_screen_loader=True)
        self.switch_to_default_content()

    def click_rating_and_tariff_details_save_button(self):
        """
        Implementing click rating and tariff details save button functionality
        :return:
        """
        self.switch_to_detail_frame()
        self.click_element(self.rating_and_tariff_details_save_button_locator, legacy_screen_loader=True)
        self.switch_to_default_content()

    def click_complex_contract_wizard_next_button(self, iframe=False):
        """
        Implementing click complex contract wizard next button functionality
        :param iframe:
        :return:
        """
        self.switch_to_detail_frame()
        if iframe is True:
            self.switch_to_iframe()
        self.click_element(self.complex_contract_wizard_next_button_locator, legacy_screen_loader=True)
        self.switch_to_default_content()

    def set_aggregation_group_name(self, aggregation_group_prefix):
        """
        Implementing set aggregation group name functionality
        :param aggregation_group_prefix:
        :return:
        """
        aggregation_group_name = aggregation_group_prefix + self.random_string_generator(4)
        self.switch_to_detail_frame()
        self.set_value_into_input_field(self.aggregation_group_name_textbox_locator, aggregation_group_name)
        self.switch_to_default_content()

    def set_aggregation_group_abbreviation(self, aggregation_group_prefix):
        """
        Implementing set aggregation group abbreviation functionality
        :param aggregation_group_prefix:
        :return:
        """
        aggregation_group_abbreviation = aggregation_group_prefix + self.random_string_generator(4)
        self.switch_to_detail_frame()
        self.set_value_into_input_field(self.aggregation_group_abbreviation_textbox_locator, aggregation_group_abbreviation)
        self.switch_to_default_content()

    def set_aggregation_template(self, aggregation_template):
        """
        Implementing set aggregation template functionality
        :param aggregation_template:
        :return:
        """
        self.switch_to_detail_frame()
        self.click_element(self.aggregation_template_dropdown_locator, legacy_screen_loader=True)
        aggregation_template_item_locator = (By.XPATH, "//ul[@class='rcbList']/descendant::li[text()='%s']" % aggregation_template)
        self.click_element(aggregation_template_item_locator, legacy_screen_loader=True)
        self.switch_to_default_content()

    def click_create_aggregation_group_save_button(self, iframe=False):
        """
        Implementing click create aggregation group save button functionality
        :param iframe:
        :return:
        """
        self.switch_to_detail_frame()
        if iframe is True:
            self.switch_to_iframe()
        self.click_element(self.company_save_button_locator, legacy_screen_loader=True)
        self.switch_to_default_content()

    def set_aggregate_product_name(self, aggregate_product_prefix, iframe=False):
        """
        Implementing set aggregate product name functionality
        :param aggregate_product_prefix:
        :param iframe:
        :return:
        """
        aggregate_product_name = aggregate_product_prefix + self.random_string_generator(4)
        self.switch_to_detail_frame()
        if iframe is True:
            self.switch_to_iframe()
        self.set_value_into_input_field(self.aggregate_product_name_textbox_locator, aggregate_product_name)
        self.switch_to_default_content()

    def set_aggregate_product_abbreviation(self, aggregate_product_prefix, iframe=False):
        """
        Implementing set aggregate product abbreviation functionality
        :param aggregate_product_prefix:
        :param iframe:
        :return:
        """
        aggregate_product_abbreviation = aggregate_product_prefix + self.random_string_generator(4)
        self.switch_to_detail_frame()
        if iframe is True:
            self.switch_to_iframe()
        self.set_value_into_input_field(self.aggregate_product_abbreviation_textbox_locator, aggregate_product_abbreviation)
        self.switch_to_default_content()

    def set_traffic_direction(self, traffic_direction, iframe=False):
        """
        Implementing set traffic direction functionality
        :param traffic_direction:
        :param iframe:
        :return:
        """
        self.switch_to_detail_frame()
        if iframe is True:
            self.switch_to_iframe()
        self.select_option(self.traffic_direction_dropdown_locator, traffic_direction)
        self.switch_to_default_content()

    def check_traffic_type(self, traffic_type_list, iframe=False):
        """
        Implementing check traffic type functionality
        :param traffic_type_list:
        :param iframe:
        :return:
        """
        self.switch_to_detail_frame()
        if iframe is True:
            self.switch_to_iframe()
        for item in traffic_type_list:
            traffic_type_checkbox_locator = (By.XPATH, "//div[@id='tariffCheckBoxList']/input[@type='checkbox' and @value='%s']" % item)
            self.click_element(traffic_type_checkbox_locator, legacy_screen_loader=True)
        self.switch_to_default_content()

    def check_rate_type(self, rate_type_list, iframe=False):
        """
        Implementing check rate type functionality
        :param rate_type_list:
        :param iframe:
        :return:
        """
        self.switch_to_detail_frame()
        if iframe is True:
            self.switch_to_iframe()
        for item in rate_type_list:
            traffic_type_checkbox_locator = (By.XPATH, "//div[@id='rateCheckBoxList']/input[@type='checkbox' and @value='%s']" % item)
            self.click_element(traffic_type_checkbox_locator, legacy_screen_loader=True)
        self.switch_to_default_content()

    def select_aggregation_rules_tab(self, tab_name, iframe=False):
        """
        Implementing select aggregation rules tab functionality
        :param tab_name:
        :param iframe:
        :return:
        """
        self.switch_to_detail_frame()
        if iframe is True:
            self.switch_to_iframe()
        tab_locator = (By.XPATH, "//div[@id='tabs']/descendant::a[text()='%s']" % tab_name)
        self.click_element(tab_locator, legacy_screen_loader=True)
        self.switch_to_default_content()

    def move_available_service_to_destination(self, iframe=False):
        """
        Implementing move available service to destination functionality
        :param iframe:
        :return:
        """
        self.switch_to_detail_frame()
        if iframe is True:
            self.switch_to_iframe()
        self.click_element(self.available_service_move_button_locator, legacy_screen_loader=True)
        self.switch_to_default_content()

    def move_available_commercial_trunk_to_destination(self, iframe=False):
        """
        Implementing move available commercial trunk to destination functionality
        :param iframe:
        :return:
        """
        self.switch_to_detail_frame()
        if iframe is True:
            self.switch_to_iframe()
        self.click_element(self.available_commercial_trunk_move_button_locator, legacy_screen_loader=True)
        self.switch_to_default_content()

    def select_aggregation_rules_grid_first_row_checkbox(self, iframe=False):
        """
        Implementing select aggregation rules grid first row checkbox functionality
        :param iframe:
        :return:
        """
        self.switch_to_detail_frame()
        if iframe is True:
            self.switch_to_iframe()
        self.click_element(self.aggregation_rules_grid_first_row_checkbox_locator, legacy_screen_loader=True)
        self.switch_to_default_content()

    def set_aggregate_rate_plan_name(self, aggregate_rate_plan_prefix):
        """
        Implementing set aggregate rate plan name functionality
        :param aggregate_rate_plan_prefix:
        :return:
        """
        aggregate_rate_plan_name = aggregate_rate_plan_prefix + self.random_string_generator(4)
        self.switch_to_detail_frame()
        self.set_value_into_input_field(self.aggregate_rate_plan_name_textbox_locator, aggregate_rate_plan_name)
        self.switch_to_default_content()

    def set_aggregate_rate_plan_abbreviation(self, aggregate_rate_plan_prefix):
        """
        Implementing set aggregate rate plan abbreviation functionality
        :param aggregate_rate_plan_prefix:
        :return:
        """
        aggregate_rate_plan_abbreviation = aggregate_rate_plan_prefix + self.random_string_generator(4)
        self.switch_to_detail_frame()
        self.set_value_into_input_field(self.aggregate_rate_plan_abbreviation_textbox_locator, aggregate_rate_plan_abbreviation)
        self.switch_to_default_content()

    def set_rate_plan_type(self, rate_plan_type):
        """
        Implementing set rate plan type functionality
        :param rate_plan_type:
        :return:
        """
        self.switch_to_detail_frame()
        self.select_option(self.rate_plan_type_dropdown_locator, rate_plan_type)
        self.switch_to_default_content()

    def set_tariff_type(self, tariff_type):
        """
        Implementing set tariff type functionality
        :param tariff_type:
        :return:
        """
        self.switch_to_detail_frame()
        self.select_option(self.tariff_type_dropdown_locator, tariff_type)
        self.switch_to_default_content()

    def set_currency(self, currency):
        """
        Implementing set currency functionality
        :param currency:
        :return:
        """
        self.switch_to_detail_frame()
        self.select_option(self.currency_dropdown_locator, currency)
        self.switch_to_default_content()

    def click_aggregate_rate_plan_save_button(self):
        """
        Implementing click aggregate rate plan save button functionality
        :return:
        """
        self.switch_to_detail_frame()
        self.click_element(self.aggregate_rate_plan_save_button_locator, legacy_screen_loader=True)
        self.switch_to_default_content()

    def click_aggregate_scenario_save_button(self):
        """
        Implementing click aggregate scenario save button functionality
        :return:
        """
        self.switch_to_detail_frame()
        self.click_element(self.aggregate_scenario_save_button_locator, legacy_screen_loader=True)
        self.switch_to_default_content()

    def click_rating_structure_3_arrow(self):
        """
        Implementing click rating structure 3 arrow functionality
        :return:
        """
        self.wait_for_legacy_screen_spinner_load()
        self.switch_to_detail_frame()
        self.set_existing_handles()
        self.click_element(self.rating_structure_3_arrow_locator, legacy_screen_loader=True)
        self.switch_to_default_content()
        self.is_element_present(self.add_new_tier_button_locator)
        self.switch_to_window()

    def click_add_new_tier_button(self):
        """
        Implementing click add new tier button functionality
        :return:
        """
        self.click_element(self.add_new_tier_button_locator, legacy_screen_loader=True)

    def click_submit_button(self):
        """
        Implementing click submit button functionality
        :return:
        """
        self.click_element(self.submit_button_locator, legacy_screen_loader=True)

    def set_value_in_tier_grid_column(self, column_name, column_value):
        """
        Implementing set value in tier grid column functionality
        :param column_name:
        :param column_value:
        :return:
        """
        column_locator = (By.XPATH, "//div[@id='%s']/descendant::th[@data-title='%s']" % (self.tier_grid_div_id, column_name))
        column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) + 1
        first_row_column_locator = (By.XPATH, "//div[@id='%s']/descendant::td[%s]/span[@class='k-grid-cell']" % (self.tier_grid_div_id, str(column_index)))
        self.click_element(first_row_column_locator, legacy_screen_loader=True)
        first_row_column = client.Dispatch("WScript.Shell")
        first_row_column.SendKeys("^a")
        first_row_column.SendKeys("{DEL}")
        first_row_column.SendKeys(str(column_value))
        self.click_element(self.rating_method_info_header_locator, legacy_screen_loader=True)

    def set_value_in_rate_grid_column(self, column_name):
        """
        Implementing set value in rate grid column functionality
        :param column_name:
        :return:
        """
        column_value = "0." + self.random_string_generator(6, chars=string.digits)
        column_locator = (By.XPATH, "//div[@id='%s']/descendant::th[@data-title='%s']" % (self.rate_grid_div_id, column_name))
        column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) + 1
        first_row_column_locator = (By.XPATH, "//div[@id='%s']/descendant::td[%s]/span[@class='k-grid-cell']" % (self.rate_grid_div_id, str(column_index)))
        self.click_element(first_row_column_locator, legacy_screen_loader=True)
        first_row_column = client.Dispatch("WScript.Shell")
        first_row_column.SendKeys("^a")
        first_row_column.SendKeys("{DEL}")
        first_row_column.SendKeys(str(column_value))
        self.click_element(self.rating_method_info_header_locator, legacy_screen_loader=True)

    def click_rate_grid_save_button(self):
        """
        Implementing set value in rate grid column functionality
        :return:
        """
        self.click_element(self.rate_grid_save_button_locator, legacy_screen_loader=True)
        try:
            self.wait().until(EC.presence_of_element_located(self.confirmation_popup_locator), 'confirmation popup locator not found before specified time')
            self.click_element(self.ok_button_locator, legacy_screen_loader=True)
        except:
            raise
        self.wait_for_legacy_screen_spinner_load()
        self.switch_to_previous_window()

    def click_contract_complete_button(self):
        """
        Implementing click contract complete button functionality
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.click_element(self.contract_complete_button_locator, legacy_screen_loader=True)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_auto_extend_operational_and_accounting_radio_button(self):
        """
        Implementing click auto extend operational and accounting radio button functionality
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.click_element(self.auto_extend_operational_and_accounting_radio_button_locator, legacy_screen_loader=True)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_auto_extend_operational_only_radio_button(self):
        """
        Implementing click auto extend operational only radio button functionality
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.click_element(self.auto_extend_operational_only_radio_button_locator, legacy_screen_loader=True)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_rating_structure_22_arrow(self):
        """
        Implementing click rating structure 22 arrow functionality
        :return:
        """
        self.switch_to_detail_frame()
        self.set_existing_handles()
        try:
            self.click_element(self.rating_structure_22_arrow_locator, legacy_screen_loader=True)
        except:
            raise
        finally:
            self.switch_to_default_content()
        self.is_element_present(self.add_new_tier_button_locator)
        self.switch_to_window()

    def set_rate_structure(self, rate_structure):
        """
        Implementing set rate structure functionality
        :param rate_structure:
        :return:
        """
        self.select_option(self.rate_structure_dropdown_locator, rate_structure)
        self.click_element(self.detail_title_header_locator, legacy_screen_loader=True)

    def set_splitting_type(self, splitting_type):
        """
        Implementing set splitting type functionality
        :param splitting_type:
        :return:
        """
        self.select_option(self.splitting_type_dropdown_locator, splitting_type)

    def set_threshold(self):
        """
        Implementing set threshold functionality
        :return:
        """
        threshold = self.random_string_generator(3, chars=string.digits)
        self.set_value_into_input_field(self.threshold_textbox_locator, threshold)

    def set_penalty_rate(self):
        """
        Implementing set penalty rate functionality
        :return:
        """
        penalty_rate = self.random_string_generator(3, chars=string.digits)
        self.set_value_into_input_field(self.penalty_rate_textbox_locator, penalty_rate)

    def click_rating_structure_save_button(self):
        """
        Implementing click rating structure save button functionality
        :return:
        """
        save_button_element = self.wait().until(EC.presence_of_element_located(self.save_button_locator), 'save button locator not found before specified time out')
        save_button_element.click()
        try:
            self.accept_alert_pop_up()
        except:
            raise
        self.wait_for_legacy_screen_spinner_load()
        self.switch_to_previous_window()

    def click_manage_complex_contracts_button(self):
        """
        Implementing click manage complex contracts button functionality
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.click_element(self.manage_complex_contracts_button_locator, legacy_screen_loader=True)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_manage_complex_contracts_go_button(self):
        """
        Implementing click manage complex contracts go button functionality
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.click_element(self.manage_complex_contracts_go_button_locator, legacy_screen_loader=True)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def set_signature_date(self):
        """
        Implementing set signature date functionality
        :return:
        """
        self.switch_to_detail_frame()
        try:
            row_count_locator = (By.XPATH, "//div[@id='ContractsGridDiv']/descendant::tbody/tr")
            row_count_elements = self.wait().until(EC.presence_of_all_elements_located(row_count_locator), 'locator not found before specified time out')
            for i in range(len(row_count_elements) - 1):
                signature_date_textbox_locator = (By.XPATH, "//input[@id='ContractsGrid_SignatureDate_%s']" % i)
                self.set_value_into_input_field(signature_date_textbox_locator, self.get_date(current_date=True))
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_manage_complex_contracts_save_button(self):
        """
        Implementing click manage complex contracts save button functionality
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.click_element(self.manage_complex_contracts_save_button_locator, legacy_screen_loader=True)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_manage_complex_contracts_delete_button(self):
        """
        Implementing click manage complex contracts delete button functionality
        :return:
        """
        self.switch_to_detail_frame()
        self.click_element(self.manage_complex_contracts_delete_button_locator, legacy_screen_loader=True)
        try:
            self.wait().until(EC.presence_of_element_located(self.manage_complex_contracts_confirmation_popup_locator), 'confirmation popup locator not found before specified time')
            self.click_element(self.yes_button_locator, legacy_screen_loader=True)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_manage_complex_contracts_unlocked_button(self):
        """
        Implementing click manage complex contracts unlocked button functionality
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.click_element(self.contracts_grid_first_row_lock_button_locator, legacy_screen_loader=True)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def is_lock_unlock_popup_present(self):
        """
        Implementing is lock unlock popup present functionality
        :return: True/False
        """
        self.switch_to_detail_frame()
        is_present = None
        try:
            is_present = self.is_element_present(self.lock_unlock_popup_locator)
            if is_present is True:
                self.click_element(self.cancel_button_locator, legacy_screen_loader=True)
            else:
                pass
        except:
            raise
        finally:
            self.switch_to_default_content()
            return is_present

    def set_contract_status(self, contract_status):
        """
        Implementing set contract status functionality
        :param contract_status:
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.select_option(select_locator=self.contract_status_dropdown_locator, option_text=contract_status, select_id=self.contact_status_select_id)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_manage_complex_contract_button(self):
        """
        Implementing click manage complex contract button functionality
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.click_element(self.manage_complex_contracts_button_locator, legacy_screen_loader=True)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def set_complex_contract_account(self, account):
        """
        Implementing set complex contract account functionality
        :param account:
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.select_option(self.complex_contract_account_dropdown_locator, account)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def set_complex_contract_status(self, status):
        """
        Implementing set complex contract status functionality
        :param status:
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.select_option(self.contract_status_dropdown_locator, status)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def set_complex_contract_locked_status(self, status):
        """
        Implementing set complex contract locked status functionality
        :param status:
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.select_option(self.contract_locked_status_dropdown_locator, status)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_contracts_grid_first_row_contract_status_change_button(self):
        """
        Implementing click contracts grid first row contract status change button functionality
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.click_element(self.contracts_grid_first_row_contract_status_change_button_locator, legacy_screen_loader=True)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_change_contract_status_radio_button(self, radio_button_label):
        """
        Implementing click change contract status radio button functionality
        :param radio_button_label:
        :return:
        """
        self.switch_to_detail_frame()
        try:
            contract_status_change_radio_button_locator = (By.XPATH, "//label[@class='ctStatusLabel' and text()='%s']/input" % radio_button_label)
            self.click_element(contract_status_change_radio_button_locator, legacy_screen_loader=True)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_change_contract_status_save_button(self):
        """
        Implementing click change contract status save button functionality
        :return:
        """
        self.switch_to_detail_frame()
        self.click_element(self.contract_status_change_save_button_locator, legacy_screen_loader=True)
        try:
            self.wait(5).until(EC.presence_of_element_located(self.contract_status_change_save_button_locator))
            self.click_element(self.contract_status_change_save_button_locator, legacy_screen_loader=True)
        except:
            pass
        finally:
            self.switch_to_default_content()

    def set_contracts_grid_signature_date(self):
        """
        Implementing set contracts grid signature date functionality
        :return:
        """
        self.switch_to_detail_frame()
        try:
            signature_date = self.get_text_from_element(self.contracts_grid_signature_date_textbox_locator, True)
            if signature_date == "":
                self.set_value_into_input_field(self.contracts_grid_signature_date_textbox_locator, self.get_date(current_date=True))
                self.click_element(self.contracts_grid_save_button_locator, legacy_screen_loader=True)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def unlock_contracts_grid_first_row(self):
        """
        Implementing lock contracts grid first row functionality
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.click_element(self.contracts_grid_first_row_lock_button_locator, legacy_screen_loader=True)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_contracts_grid_first_row_contract_name(self):
        """
        Implementing click contracts grid first row contract name functionality
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.click_element(self.contracts_grid_first_row_contract_name_locator, legacy_screen_loader=True)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def is_edit_contract_name_disabled(self):
        """
        Implementing is edit contract name disabled functionality
        :return: True/False
        """
        is_disabled = False
        self.switch_to_detail_frame()
        try:
            edit_contract_name_textbox_element = self.wait().until(EC.presence_of_element_located(self.edit_contract_name_textbox_locator), 'edit contract name textbox locator not found before specified time out')
            disabled_status = edit_contract_name_textbox_element.get_attribute("disabled")
            if disabled_status == "true":
                is_disabled = True
        except:
            raise
        finally:
            self.switch_to_default_content()
            return is_disabled

    def click_contract_workflow_link(self):
        """
        Implementing click contract workflow link functionality
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.click_element(self.contract_workflow_link_locator, legacy_screen_loader=True)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_change_contract_locked_status_radio_button(self, radio_button_label):
        """
        Implementing click change contract locked status radio button functionality
        :param radio_button_label:
        :return:
        """
        self.switch_to_detail_frame()
        try:
            contract_locked_status_change_radio_button_locator = (By.XPATH, "//label[@class='LockLabel' and text()='%s']/input" % radio_button_label)
            self.click_element(contract_locked_status_change_radio_button_locator, legacy_screen_loader=True)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def set_group_commitment(self):
        """
        Implementing set group commitment functionality
        :return:
        """
        group_commitment_value = self.random_string_generator(3, chars=string.digits)
        self.set_value_into_input_field(self.group_commitment_textbox_locator, group_commitment_value, use_win32com=True)

    def set_subgroup_commitment(self):
        """
        Implementing set subgroup commitment functionality
        :return:
        """
        subgroup_commitment_value = self.random_string_generator(3, chars=string.digits)
        self.set_value_into_input_field(self.subgroup_commitment_textbox_locator, subgroup_commitment_value, use_win32com=True)

    def set_value_in_shortfall_rates_grid_column(self, column_name):
        """
        Implementing set value in shortfall rates grid column functionality
        :param column_name:
        :return:
        """
        column_value = "0." + self.random_string_generator(6, chars=string.digits)
        column_locator = (By.XPATH, "//div[@id='%s']/descendant::th[@data-title='%s']" % (self.shortfall_rates_grid_div_id, column_name))
        column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) + 1
        first_row_column_locator = (By.XPATH, "//div[@id='%s']/descendant::td[%s]/span[@class='k-grid-cell']" % (self.shortfall_rates_grid_div_id, str(column_index)))
        self.click_element(first_row_column_locator, legacy_screen_loader=True)
        first_row_column = client.Dispatch("WScript.Shell")
        first_row_column.SendKeys("^a")
        first_row_column.SendKeys("{DEL}")
        first_row_column.SendKeys(str(column_value))
        self.click_element(self.rating_method_info_header_locator, legacy_screen_loader=True)

    def move_available_virtual_countries_to_destination(self, country_name, deselect_first_option):
        """
        Implementing move available virtual countries to destination functionality
        :param country_name:
        :param deselect_first_option:
        :return:
        """
        country_list = [country_name]
        self.switch_to_detail_frame()
        try:
            if deselect_first_option is True:
                self.click_element(self.available_virtual_country_first_option_locator, legacy_screen_loader=True)
            self.move_available_items_to_destination(self.available_virtual_countries_source_id, country_list, self.available_virtual_country_move_button_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def get_created_contract_name(self):
        """
        Implementing get created contract name functionality
        :return: contract_name
        """
        global contract_name
        return contract_name

    def click_complex_contract_dashboard_link(self):
        """
        Implementing click complex contract dashboard link functionality
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.click_element(self.complex_contract_dashdoard_link_locator, legacy_screen_loader=True)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def set_contract_name_for_search(self, contract_name):
        """
        Implementing set contract name for search functionality
        :param contract_name:
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.set_value_into_input_field(self.manage_contract_name_textbox_locator, contract_name, use_win32com=True)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_detail_tab(self):
        """
        Implementing click detail tab functionality
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.click_element(self.detail_tab_locator, legacy_screen_loader=True)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_first_row_add_product_button(self):
        """
        Implementing click first row add product button functionality
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.click_element(self.first_row_add_product_button_locator, legacy_screen_loader=True)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def are_rate_type_checkboxes_disabled(self, iframe=False):
        """
        Implementing are rate type checkboxes disabled functionality
        :param iframe:
        :return: True/False
        """
        is_disabled = True
        self.switch_to_detail_frame()
        if iframe is True:
            self.switch_to_iframe()
        rate_type_checkbox_locator = (By.XPATH, "//div[@id='rateCheckBoxList']/input[@name='rateCheckBoxList']")
        rate_type_checkbox_elements = self.wait().until(EC.presence_of_all_elements_located(rate_type_checkbox_locator), 'rate type checkbox locator not found before specified time out')
        for rate_type_checkbox in range(1, len(rate_type_checkbox_elements)):
            status = rate_type_checkbox_elements[rate_type_checkbox].get_attribute("disabled")
            if status != "true":
                is_disabled = False
                break
        return is_disabled

    def switch_to_iframe(self):
        """
        Implementing switch to iframe functionality
        :return:
        """
        self.switch_to_frame(self.iframe_locator)

    def set_origin_set(self, origin_set, iframe=False):
        """
        Implementing set origin set functionality
        :param origin_set:
        :param iframe:
        :return:
        """
        self.switch_to_detail_frame()
        try:
            if iframe is True:
                self.switch_to_iframe()
            self.select_option(self.origin_set_dropdown_locator, origin_set)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def move_available_settlement_origin_to_destination(self, iframe=False):
        """
        Implementing move available settlement origin to destination functionality
        :param iframe:
        :return:
        """
        self.switch_to_detail_frame()
        try:
            if iframe is True:
                self.switch_to_iframe()
            self.click_element(self.available_settlement_origin_move_button_locator, legacy_screen_loader=True)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_aggregate_rules_exit_button(self):
        """
        Implementing click aggregate rules exit button functionality
        :return:
        """
        self.switch_to_header_frame()
        self.click_element(self.aggregate_rules_exit_button_locator, legacy_screen_loader=True)
        self.switch_to_previous_window()

    def click_complex_contract_worklist_button(self):
        """
        Implementing click complex contract worklist button functionality
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.click_element(self.complex_contract_worklist_button_locator, legacy_screen_loader=True)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_filters_collapsible_arrow_button(self):
        """
        Implementing click filters collapsible arrow button functionality
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.click_element(self.filters_collapsible_arrow_button_locator, legacy_screen_loader=True)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def is_specific_field_on_complex_contract_worklist_present(self, field_name):
        """
        Implementing is specific field on complex contract worklist present functionality
        :param field_name:
        :return: True/False
        """
        self.switch_to_detail_frame()
        is_present = None
        try:
            field_locator = (By.XPATH, "//div[@id='ctl00_ctl00_FiltersContentID_FilterOptionsPanel']/descendant::label[text()='%s']" % field_name)
            is_present = self.is_element_present(field_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()
            return is_present

    def set_complex_contract_worklist_contract_status(self, contract_status):
        """
        Implementing set complex contract worklist contract status functionality
        :param contract_status:
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.click_element(self.contract_status_button_locator, legacy_screen_loader=True)
            checkbox_locator  = (By.XPATH, "//span[text()='%s']/../descendant::input" % contract_status)
            self.click_element(checkbox_locator, legacy_screen_loader=True)
            self.click_element(self.done_button_locator, legacy_screen_loader=True)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_complex_contract_worklist_go_button(self):
        """
        Implementing click complex contract worklist go button functionality
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.click_element(self.complex_contract_worklist_go_button_locator, legacy_screen_loader=True)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_complex_contract_worklist_grid_first_row_contract(self):
        """
        Implementing click complex contract worklist first row contract functionality
        :return:
        """
        self.switch_to_detail_frame()
        self.set_existing_handles()
        self.click_element(self.complex_contract_worklist_first_row_contract_locator, legacy_screen_loader=True)
        self.switch_to_window()

    def click_complex_contract_management_first_row_workflow_button(self):
        """
        Implementing click complex contract management first row workflow button functionality
        :return:
        """
        self.click_element(self.complex_contract_management_first_row_workflow_locator, legacy_screen_loader=True)

    def is_specific_column_on_complex_contract_management_grid_present(self, column_name):
        """
        Implementing is specific column on complex contract management grid present functionality
        :param column_name:
        :return: True/False
        """
        column_locator = (By.XPATH, "//div[@id='Div_ContractsGrid_Row_0_46']/descendant::a[text()='%s']" % column_name)
        is_present = self.is_element_present(column_locator)
        return is_present

    def set_complex_contract_management_grid_signature_date(self):
        """
        Implementing set complex contract management grid signature date functionality
        :return:
        """
        signature_date_textbox_locator = (By.XPATH, "//input[@id='ContractsGrid_SignatureDate_0']")
        self.set_value_into_input_field(signature_date_textbox_locator, self.get_date(current_date=True))

    def click_complex_contract_management_save_button(self):
        """
        Implementing click complex contract management save button functionality
        :return:
        """
        self.click_element(self.manage_complex_contracts_save_button_locator, legacy_screen_loader=True)

    def click_complex_contract_worklist_clear_sections_button(self):
        """
        Implementing click complex contract worklist clear sections button functionality
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.click_element(self.complex_contract_worklist_clear_section_button_locator, legacy_screen_loader=True)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def is_specific_column_on_complex_contract_worklist_grid_present(self, column_name):
        """
        Implementing is specific column on complex contract worklist grid present functionality
        :param column_name:
        :return: True/False
        """
        self.switch_to_detail_frame()
        is_present = None
        try:
            column_locator = (By.XPATH, "//div[@id='ctl00_ResultContentID_ResultControl']/descendant::a[text()='%s']" % column_name)
            is_present = self.is_element_present(column_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()
            return is_present

    def click_contract_report_button(self):
        """
        Implementing click contract report button functionality
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.click_element(self.contract_report_button_locator, legacy_screen_loader=True)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_contract_version_submit_button(self):
        """
        Implementing click contract version submit button functionality
        :return:
        """
        self.set_existing_handles()
        self.switch_to_detail_frame()
        try:
            self.click_element(self.contract_version_submit_button_locator, legacy_screen_loader=True)
        except:
            raise
        finally:
            self.switch_to_default_content()
            self.switch_to_window()

    def click_preview_button(self):
        """
        Implementing click preview button functionality
        :return:
        """
        self.set_existing_handles()
        self.click_element(self.report_preview_button_locator, legacy_screen_loader=True)
        print_pop_up = client.Dispatch("WScript.Shell")
        print_pop_up.SendKeys("{ESC}")
        self.switch_to_window()
        self.close_browser()
        self.switch_to_previous_window()

    def click_export_to_excel_button(self):
        """
        Implementing click export to excel button functionality
        :return:
        """
        self.click_element(self.export_to_excel_button_locator, legacy_screen_loader=True)

    def click_contract_simulator_button(self):
        """
        Implementing click contract simulator button functionality
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.click_element(self.contract_simulator_button_locator, legacy_screen_loader=True)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def is_contract_simulator_specific_search_field_present(self, field_name):
        """
        Implementing is contract simulator specific search field present functionality
        :param field_name:
        :return: True/False
        """
        self.switch_to_detail_frame()
        is_present = None
        try:
            column_locator = (By.XPATH, "//form[@id='dvbasicSimulatorSearchForm']/descendant::label[contains(text(), '%s')]" % field_name)
            is_present = self.is_element_present(column_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()
            return is_present

    def set_contract_simulator_status_for_search(self, status):
        """
        Implementing set contract simulator status for search functionality
        :param status:
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.click_element(self.contract_simulator_status_field_locator, True, legacy_screen_loader=True)
            for item in status:
                item_locator = (By.XPATH, "//li[text()='%s']" % item)
                self.click_element(item_locator, legacy_screen_loader=True)
            self.click_element(self.contract_simulator_page_title_locator, legacy_screen_loader=True)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_contract_simulator_search_button(self):
        """
        Implementing click contract simulator search button functionality
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.click_element(self.contract_simulator_search_button_locator, legacy_screen_loader=True)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_contract_simulator_download_button(self):
        """
        Implementing click contract simulator download button functionality
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.click_element(self.contract_simulator_download_button_locator, legacy_screen_loader=True)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def is_specific_field_present_on_download_new_simulator_pop_up(self, field_name, label):
        """
        Implementing is specific field present on download new simulator pop up functionality
        :param field_name:
        :param label:
        :return: True/False
        """
        self.switch_to_detail_frame()
        is_present = None
        try:
            if label is True:
                column_locator = (By.XPATH, "//div[@id='NewSimulatorDownloadDiv']/descendant::label[contains(text(), '%s')]" % field_name)
            else:
                column_locator = (By.XPATH, "//div[@id='NewSimulatorDownloadDiv']/descendant::span[text()='%s']" % field_name)
            is_present = self.is_element_present(column_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()
            return is_present

    def click_contract_simulator_cancel_button(self):
        """
        Implementing click contract simulator cancel button functionality
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.click_element(self.contract_simulator_cancel_button_locator, legacy_screen_loader=True)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def set_download_new_simulator_carrier(self, carrie_name):
        """
        Implementing set download new simulator carrier functionality
        :param carrie_name:
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.click_element(self.download_new_simulator_carrier_arrow_locator, True, legacy_screen_loader=True)
            item_locator = (By.XPATH, "//ul[@id='newSimulatorCarrier_listbox']/descendant::li[text()='%s']" % carrie_name)
            self.click_element(item_locator, legacy_screen_loader=True)
            self.click_element(self.download_new_simulator_pop_up_title_locator, legacy_screen_loader=True)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def set_download_new_simulator_revenue_country(self, country_name_list):
        """
        Implementing set download new simulator revenue country functionality
        :param country_name_list:
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.click_element(self.download_new_simulator_revenue_country_field_locator, True, legacy_screen_loader=True)
            for item in country_name_list:
                item_locator = (By.XPATH, "//ul[@id='NewSimInCountry_listbox']/descendant::li[text()='%s']" % item)
                self.click_element(item_locator, legacy_screen_loader=True)
            self.click_element(self.download_new_simulator_pop_up_title_locator, legacy_screen_loader=True)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_download_new_simulator_download_button(self):
        """
        Implementing click download new simulator download button functionality
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.click_element(self.download_new_simulator_download_button_locator, legacy_screen_loader=True)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def set_grace_period_from_dropdown(self, grace_period, iframe=False):
        """
        Implementing set grace period from dropdown functionality
        :param grace_period:
        :param iframe:
        :return:
        """
        self.switch_to_detail_frame()
        try:
            if iframe is True:
                self.switch_to_iframe()
            self.select_option(self.aggregate_group_grace_period_dropdown_locator, grace_period)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def set_aggregate_group_grace_period(self, grace_period_value):
        """
        Implementing set aggregate group grace period functionality
        :param grace_period_value:
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.set_value_into_input_field(self.aggregate_group_grace_period_textbox_locator, grace_period_value)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def switch_to_upperlist_frame(self):
        """
        Implementing switch to upperlist frame functionality
        :return:
        """
        self.switch_to_frame(self.upperlist_frame_locator)

    def select_network_trunk_submenu(self):
        """
        Implementing select network trunk submenu functionality
        :return:
        """
        self.switch_to_header_frame()
        try:
            self.select_submenu(self.network_menu_locator, self.network_trunk_submenu_js_function, script_executor=True)
            self.wait_for_legacy_screen_spinner_load()
        except:
            raise
        finally:
            self.switch_to_default_content()

    def set_trunk_letters(self, trunk_letters):
        """
        Implementing set trunk letters functionality
        :param trunk_letters:
        :return:
        """
        self.set_value_into_input_field(self.trunk_letters_input_field_locator, trunk_letters)

    def click_expand_switch_button(self):
        """
        Implementing click expand switch button functionality
        :return:
        """
        self.click_element(self.expand_switch_button_locator, legacy_screen_loader=True)

    def click_trunk_name_for_details(self, trunk_name):
        """
        Implementing click trunk name for details functionality
        :param trunk_name:
        :return:
        """
        self.switch_to_frame(self.lowerlist_frame_locator)
        try:
            trunk_name_locator = (By.XPATH, "//span[@id='tbTrunkDetail_clmTrunk1_lblTrunk' and text()='%s']" % trunk_name)
            self.click_element(trunk_name_locator, legacy_screen_loader=True)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def get_transmission_type(self):
        """
        Implementing get transmission type functionality
        :return: transmission_type
        """
        self.switch_to_frame(self.detail_frame_locator)
        transmission_type = None
        try:
            transmission_type_select_element = Select(self.wait().until(EC.presence_of_element_located(self.transmission_type_dropdown_locator)))
            transmission_type_selected_option = transmission_type_select_element.first_selected_option
            transmission_type = transmission_type_selected_option.text
        except:
            raise
        finally:
            self.switch_to_default_content()
            return transmission_type

    def set_contract_begin_date_for_search(self, contract_begin_date):
        """
        Implementing set contract begin date for search functionality
        :return:
        """
        if contract_begin_date == "":
            contract_begin_date = self.get_date(first_day_of_current_month=True)
        self.switch_to_detail_frame()
        try:
            self.set_value_into_input_field(self.contract_begin_date_for_search_textbox_locator, contract_begin_date)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def set_contract_end_date_for_search(self, contract_end_date):
        """
        Implementing set contract end date for search functionality
        :return:
        """
        if contract_end_date == "":
            contract_end_date = self.get_date(last_day_of_current_month=True)
        self.switch_to_detail_frame()
        try:
            self.set_value_into_input_field(self.contract_end_date_for_search_textbox_locator, contract_end_date)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def select_number_plan_tab(self):
        """
        Implementing select number plan tab functionality
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.click_element(self.number_plan_tab_locator, legacy_screen_loader=True)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_add_number_plan_grid_first_row_export_button(self):
        """
        Implementing click add number plan grid first row export button functionality
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.click_element(self.new_number_plan_grid_first_row_export_button_locator, legacy_screen_loader=True)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_copy_from_existing_complex_contract(self):
        """
        Implementing click copy from existing complex contract functionality
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.click_element(self.copy_from_existing_complex_contract_locator, legacy_screen_loader=True)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def set_copy_complex_contract_source_account(self, account):
        """
        Implementing set copy complex contract source account functionality
        :param account:
        :return:
        """
        self.switch_to_detail_frame()
        try:
            if account.strip() == "" or account is None:
                select = Select(
                    self.wait().until(EC.presence_of_element_located(self.source_account_dropdown_locator)))
                select.select_by_index(2)
            else:
                self.select_option(self.source_account_dropdown_locator, account)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def set_copy_complex_contract_target_account(self, account):
        """
        Implementing set copy complex contract target account functionality
        :param account:
        :return:
        """
        self.switch_to_detail_frame()
        try:
            if account.strip() == "" or account is None:
                select = Select(
                    self.wait().until(EC.presence_of_element_located(self.target_account_dropdown_locator)))
                select.select_by_index(2)
            else:
                self.select_dropdown_item_from_select_tag(self.target_account_dropdown_locator, account)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def set_copy_complex_contract_source_contract(self, contract):
        """
        Implementing set copy complex contract source contract functionality
        :param contract:
        :return:
        """
        self.switch_to_detail_frame()
        try:
            if contract.strip() == "" or contract is None:
                select = Select(self.wait().until(EC.presence_of_element_located(self.source_contract_dropdown_locator)))
                select.select_by_index(2)
            else:
                self.select_dropdown_item_from_select_tag(self.source_contract_dropdown_locator, contract)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_copy_contract_save_button(self):
        """
        Implementing click copy contract save button functionality
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.click_element(self.contract_save_button_locator, legacy_screen_loader=True)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def set_copy_contract_copy_direction(self, copy_direction):
        """
        Implementing set copy contract copy direction functionality
        :param copy_direction:
        :return:
        """
        self.switch_to_detail_frame()
        try:
            if copy_direction.strip() == "" or copy_direction is None:
                select = Select(self.wait().until(EC.presence_of_element_located(self.copy_direction_drop_down_locator)))
                select.select_by_index(1)
            else:
                self.select_dropdown_item_from_select_tag(self.copy_direction_drop_down_locator, copy_direction)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def select_aggregation_groups_mapping_tab(self):
        """
        Implementing select aggregation groups mapping tab functionality
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.click_element(self.aggregation_groups_mapping_tab_locator, legacy_screen_loader=True)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_aggregation_groups_mapping_save_button(self):
        """
        Implementing click aggregation groups mapping save button functionality
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.click_element(self.aggregation_groups_mapping_save_button_locator, legacy_screen_loader=True)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def select_commercial_trunk_mapping_tab(self):
        """
        Implementing select commercial trunk mapping tab functionality
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.click_element(self.commercial_trunk_mapping_tab_locator, legacy_screen_loader=True)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_commercial_trunk_mapping_save_button(self):
        """
        Implementing click commercial trunk mapping save button functionality
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.click_element(self.commercial_trunk_mapping_tab_save_button_locator, legacy_screen_loader=True)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def select_number_plan_mapping_tab(self):
        """
        Implementing select number plan mapping tab functionality
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.click_element(self.number_plan_mapping_tab_locator, legacy_screen_loader=True)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def set_target_number_plan(self, number_plan_prefix):
        """
        Implementing set target number plan functionality
        :param number_plan_prefix:
        :return:
        """
        self.switch_to_detail_frame()
        try:
           self.set_value_into_input_field(self.target_number_plan_textbox_locator, (number_plan_prefix + self.random_string_generator(2)))
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_number_plan_mapping_save_button(self):
        """
        Implementing click number plan mapping save button functionality
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.click_element(self.number_plan_mapping_tab_save_button_locator, legacy_screen_loader=True)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def select_rate_plan_mapping_tab(self):
        """
        Implementing select rate plan mapping tab functionality
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.click_element(self.rate_plan_mapping_tab_locator, legacy_screen_loader=True)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_rate_plan_mapping_save_button(self):
        """
        Implementing click rate plan mapping save button functionality
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.click_element(self.rate_plan_mapping_tab_save_button_locator, legacy_screen_loader=True)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def select_carrier_submenu(self):
        """
        Implementing select carrier submenu functionality
        :return:
        """
        self.switch_to_header_frame()
        self.select_submenu(self.account_menu_locator, self.carrier_submenu_js_function, script_executor=True)
        self.wait_for_legacy_screen_spinner_load()
        self.switch_to_default_content()

    def click_carrier_account_first_plus_button(self):
        """
        Implementing click carrier account first plus button functionality
        :return:
        """
        self.switch_to_list_frame()
        self.click_element(self.carrier_account_first_plus_button_locator)
        self.switch_to_default_content()

    def click_other_rate_plan_first_plus_button(self):
        """
        Implementing click other rate plan first plus button functionality
        :return:
        """
        self.switch_to_list_frame()
        self.click_element(self.other_rate_plan_first_plus_button_locator)
        self.switch_to_default_content()

    def click_other_rate_plan_first_book_icon_button(self):
        """
        Implementing click other rate plan first book icon button functionality
        :return:
        """
        self.switch_to_list_frame()
        self.click_element(self.other_rate_plan_first_book_icon_button_locator)
        self.switch_to_default_content()

    def select_product_mapping_submenu(self):
        """
        Implementing select product mapping submenu functionality
        :return:
        """
        self.switch_to_header_frame()
        try:
            self.select_submenu(self.destination_menu_locator, self.product_mapping_submenu_js_function, script_executor=True)
            self.wait_for_legacy_screen_spinner_load()
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_product_mapping_go_button(self):
        """
        Implementing click product mapping go button functionality
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.click_element(self.product_mapping_go_button_locator, legacy_screen_loader=True)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def get_product_mapping_grid_first_row_selling_product(self):
        """
        Implementing get product mapping grid first row selling product functionality
        :return: selling_product
        """
        selling_product = ""
        self.switch_to_frame(self.detail2_frame_locator)
        try:
            selling_product = self.get_text_from_element(self.product_mapping_grid_first_row_selling_product_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()
            return selling_product

    def click_selling_product_browse_button(self):
        """
        Implementing click selling product browse button functionality
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.click_element(self.selling_product_browse_button_locator, legacy_screen_loader=True)
        except:
            raise
        finally:
            self.switch_to_default_content()
            self.switch_to_window()

    def select_selling_product(self, selling_product):
        """
        Implementing select selling product functionality
        :param selling_product:
        :return:
        """
        selling_product_locator = (By.XPATH, "//span[contains(text(), '%s')]" % selling_product)
        self.click_element(selling_product_locator, legacy_screen_loader=True)
        self.switch_to_previous_window()
        self.set_existing_handles()

    def make_routing_to_selling_percentage_to_100(self):
        """
        Implementing make routing to selling percentage to 100 functionality
        :return:
        """
        self.switch_to_frame(self.detail2_frame_locator)
        try:
            product_mapping_grid_rows = self.wait().until(EC.presence_of_all_elements_located(self.product_mapping_grid_rows_locator))
            product_mapping_grid_row_count = len(product_mapping_grid_rows)
            for i in range(2, product_mapping_grid_row_count):
                row_edit_button_locator = (By.XPATH, "//table[@id='tCS']/descendant::tr[%s]/descendant::img[@class='btnItemI']" % i)
                row_edit_button_element = self.wait().until(EC.presence_of_element_located(row_edit_button_locator))
                row_edit_button_element.click()
                time.sleep(5)
                self.switch_to_window()
                self.set_value_into_input_field(self.routing_to_selling_percentage_textbox_locator, "0")
                self.click_new_rating_method_save_button()
                self.switch_to_previous_window()
                self.set_existing_handles()
                self.switch_to_frame(self.detail2_frame_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_first_account_name(self):
        """
        Implementing click first account name functionality
        :return:
        """
        self.switch_to_list_frame()
        try:
            self.click_element(self.first_account_name_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_buyer_browse_button(self):
        """
        Implementing click buyer browse button functionality
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.click_element(self.buyer_browse_button_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()
            self.switch_to_window()

    def click_seller_browse_button(self):
        """
        Implementing click seller browse button functionality
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.click_element(self.seller_browse_button_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()
            self.switch_to_window()

    def click_account_save_button(self):
        """
        Implementing click account save button functionality
        :return:
        """
        self.switch_to_detail_frame()
        try:
            account_save_button_element = self.wait().until(EC.presence_of_element_located(self.account_save_button_locator), 'account save button locator not found before specified time out')
            account_save_button_element.click()
            self.wait(5)
            self.accept_alert_pop_up()
        except:
            raise
        finally:
            self.switch_to_default_content()

    def select_buyer_tab(self):
        """
        Implementing select buyer tab functionality
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.click_element(self.buyer_tab_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def select_seller_tab(self):
        """
        Implementing select seller tab functionality
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.click_element(self.seller_tab_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def verify_first_name(self, first_name):
        """
        Implementing verify first name functionality
        :param first_name:
        :return: True/False
        """
        is_verified = False
        self.switch_to_detail_frame()
        try:
            actual_first_name = self.get_text_from_element(self.first_name_textbox_locator)
            if actual_first_name == first_name:
                is_verified = True
        except:
            raise
        finally:
            self.switch_to_default_content()
            return is_verified

    def verify_last_name(self, last_name):
        """
        Implementing verify last name functionality
        :param last_name:
        :return: True/False
        """
        is_verified = False
        self.switch_to_detail_frame()
        try:
            actual_last_name = self.get_text_from_element(self.last_name_textbox_locator)
            if actual_last_name == last_name:
                is_verified = True
        except:
            raise
        finally:
            self.switch_to_default_content()
            return is_verified

    def is_contract_simulator_search_button_present(self):
        """
        Implementing is contract simulator search button present functionality
        :return: True/False
        """
        self.switch_to_detail_frame()
        is_present = self.is_element_present(self.contract_simulator_search_button_locator)
        self.switch_to_default_content()
        return is_present

    def is_contract_simulator_download_button_present(self):
        """
        Implementing is contract simulator download button present functionality
        :return: True/False
        """
        self.switch_to_detail_frame()
        is_present = self.is_element_present(self.contract_simulator_download_button_locator)
        self.switch_to_default_content()
        return is_present

    def is_contract_simulator_upload_button_present(self):
        """
        Implementing is contract simulator upload button present functionality
        :return: True/False
        """
        self.switch_to_detail_frame()
        is_present = self.is_element_present(self.contract_simulator_upload_button_locator)
        self.switch_to_default_content()
        return is_present

    def is_contract_simulator_download_button_not_present(self):
        """
        Implementing is contract simulator download button not present functionality
        :return: True/False
        """
        is_not_present = None
        self.switch_to_detail_frame()
        try:
            self.wait(5).until(EC.presence_of_element_located(self.contract_simulator_download_button_locator))
            is_not_present = False
        except:
            is_not_present = True
        finally:
            self.switch_to_default_content()
            return is_not_present

    def is_contract_simulator_upload_button_not_present(self):
        """
        Implementing is contract simulator upload button not present functionality
        :return: True/False
        """
        is_not_present = None
        self.switch_to_detail_frame()
        try:
            self.wait(5).until(EC.presence_of_element_located(self.contract_simulator_upload_button_locator))
            is_not_present = False
        except:
            is_not_present = True
        finally:
            self.switch_to_default_content()
            return is_not_present

    def is_contract_submenu_not_present(self):
        """
        Implementing is contract submenu not present functionality
        :return: True/False
        """
        is_not_present = None
        try:
            self.select_submenu(self.home_menu_locator, self.contracts_submenu_locator)
            self.wait(5).until(EC.visibility_of_element_located(self.contract_simulator_upload_button_locator))
            is_not_present = False
        except:
            is_not_present = True
        finally:
            return is_not_present

    def compare_rates_grid_product_with_excel_data(self):
        """
        Implementing compare rates grid product with excel data functionality
        :return: True/False
        """
        self.switch_to_detail_frame()
        is_compared = False
        try:
            rates_excel_data_dictionary = self.get_excel_data_dictionary()
            rates_grid_product = self.get_text_from_element(self.rates_grid_first_row_product_locator)
            if rates_excel_data_dictionary["Destination"] in rates_grid_product:
                is_compared = True
        except:
            raise
        finally:
            self.switch_to_default_content()
            return is_compared

    def click_on_first_route_class(self):
        """
        Implementing click on first route class functionality
        :return:
        """
        self.switch_to_list_frame()
        try:
            self.click_element(self.first_route_class_locator, legacy_screen_loader=True)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def is_specific_mandatory_field_on_route_class_page_present(self, field_name):
        """
        Implementing is specific mandatory field on route class present functionality
        :param field_name:
        :return: True/False
        """
        self.switch_to_detail_frame()
        try:
            field_locator = (By.XPATH, "//td[contains(text(), '%s')]" % field_name)
            return self.is_element_present(field_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def is_service_level_created_for_route_class(self, route_class_name):
        """
        Implementing is service level created for route class functionality
        :param route_class_name:
        :return: True/False
        """
        is_created = False
        self.switch_to_frame(self.list_frame_locator)
        service_level_locator = (By.XPATH, "//span[contains(@id, 'tServLevel_cServiceLevel') and text()='%s']" % route_class_name)
        try:
            is_created = self.is_element_present(service_level_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()
            return is_created

    def select_first_inner_customer(self):
        """
        Implementing select first inner customer functionality
        :return:
        """
        self.switch_to_frame(self.list_frame_locator)
        try:
            self.click_element(self.first_inner_customer_name_locator, True)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def is_service_level_column_present(self):
        """
        Implementing is service level column present functionality
        :return: True/False
        """
        self.switch_to_detail_frame()
        try:
            return self.is_element_present(self.service_level_column_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_on_specific_tab_in_agreement_page(self, tab_name):
        """
        Implementing click on specific tab in agreement page functionality
        :param tab_name:
        :return:
        """
        self.switch_to_detail_frame()
        tab_locator = (By.XPATH, "//span[contains(text(), '%s')]" % tab_name)
        try:
            self.click_element(tab_locator, legacy_screen_loader=True)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def is_specific_tab_remained_intact(self, tab_name):
        """
        Implementing is specific tab remained intact functionality
        :param tab_name:
        :return: True/False
        """
        self.switch_to_detail_frame()
        tab_locator = (By.XPATH, "//span[contains(text(), '%s')]" % tab_name)
        try:
            return self.is_element_present(tab_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()
