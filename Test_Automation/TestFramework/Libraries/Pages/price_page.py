"""Implementing Price screen page objects"""

from TestFramework.Libraries.Pages.base_page import BasePage
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC
import win32com.client as client
import TestFramework.Libraries.Modules.database as Database
import time
from random import randint


class PricePage(BasePage):
    """
    Contains Price UI page locators
    Switch to price function
    Get price page title function
    Is price dashboard tab present function
    Is cost policies tab present function
    Is price policies tab present function
    Is country groups link present function
    Is create customer price list link present function
    Is generate reference prices link present function
    Is review customer price exception requests link present function
    Select cost policies tab function
    Is create new cost policy present function
    Is formulas present function
    Is user defined parameters present function
    Is costs present function
    Click formulas button
    Click cost forecast elements reports button
    Click cost forecast report submit button
    Verify cost forecast report page header
    Click price page inline action button function
    Verify cost policy details function
    Click formulas page inline action button functionality
    Select cost policies formulas grid row checkbox functionality
    Set cost formula functionality
    Click formula save button functionality
    Verify edited formula status functionality
    Click deleted formulas button functionality
    Set note for edit formula functionality
    Click costs button functionality
    Select multiple rows from cost policies costs grid functionality
    Click bulk edit button functionality
    Set future date at end date functionality
    Click bulk edit submit button functionality
    Click user defined parameters button functionality
    Click user defined parameters page header functionality
    Set first row value column functionality
    Set first row description column functionality
    Set first row end date column functionality
    Click save changes button functionality
    Verify updated description functionality
    Filter user defined parameters grid with unique description functionality
    Get updated value functionality
    Get updated end date functionality
    Select cost policy for copy formulas functionality
    Click formulas page search button functionality
    Click copy formulas button functionality
    Check new start and end date radio button functionality
    Set new start date functionality
    Set new end date functionality
    Select cost policies from available policies functionality
    Click next button functionality
    Click copy cost formulas save button functionality
    Set cost policy
    Click search button
    Click create new cost policy formula dropdown
    Is create destination formula present
    Is create global formula present
    Is create category formula present
    Click create destination formula
    Click create global formula
    Click create category formula
    Set destination of formula pop up destination
    Set rate type
    Set begin date
    Set select date
    Set category of formula pop up
    Click calculate button
    Click create button
    Filter cost policies formulas grid
    Clear filter of cost policies grid
    Get cost policies formulas grid row details
    Click create new cost policy button functionality
    Set cost policy name functionality
    Set cost policy abbreviation functionality
    Set cost policy status functionality
    Set cost policy type functionality
    Set cost policy call type functionality
    Set cost policy route class functionality
    Click create cost policy save button functionality
    Click cost policy grid inline action button functionality
    Click edit cost policy button functionality
    Edit cost policy status functionality
    Click save cost policy button functionality
    Is cost policy status inactive functionality
    Get cost policy details from database functionality
    Get cost policy status from database functionality
    Select price policies tab
    Set price policy
    Set formula target
    Set formula minimum
    Set formula cost
    Get price policies formulas grid row details
    Click policies formulas grid inline action button
    Get price policy details from database functionality
    Get price policy status from database functionality
    Set value in user defined parameters grid column
    Click price overrides button functionality
    Select price overrides grid row checkbox functionality
    Click price overrides bulk edit button functionality
    Set price overrides bulk edit end date functionality
    Click review customer price exception requests functionality
    Is review customer price exception requests page loaded properly functionality
    Click price policy grid inline action functionality
    Is view price policy page loaded properly functionality
    Move available policies to destination
    Click second page next button
    Click create new user defined parameter button functionality
    Click price policy user defined parameters page header functionality
    Set value for create new user defined parameters functionality
    Set price policy for create user defined parameter functionality
    Set parameter for new user defined parameters functionality
    Set description for new user defined parameters functionality
    Edit end date for new user defined parameter functionality
    Set start date for new user defined parameter functionality
    Click generate reference prices button functionality
    Select reference price policies functionality
    Select available destinations functionality
    Click generate reference prices submit button functionality
    Select user defined parameters grid row checkbox
    Click copy parameter button
    Click reference prices button functionality
    Select status for reference prices search functionality
    Click reference prices search button functionality
    Set status for reference prices functionality
    Click reference prices save changes button functionality
    Click reference prices button
    Click reference prices search button
    Click reference prices bulk edit button
    Select reference prices grid multiple rows
    Set note for bulk edit
    Click costs page search button functionality
    Click upload costs button functionality
    Set cost policy for upload functionality
    Click costs browse button functionality
    Click completed status green button functionality
    Get completed jobs count functionality
    Click upload button functionality
    Compare completed jobs count after upload functionality
    Select price overrides tab
    Click upload price overrides button
    Click price overrides completed status green button
    Is reference prices page loaded properly function
    Is reference prices total number of records returned function
    Set status function
    Click price exceptions search button function
    Set costs number plan function
    Click cost policy grid first row inline action button function
    Get cost policy last modified date function
    Select formulas tab function
    Get cost policy formula select date function
    Get formula begin date function
    Close create cost policy destination formula screen function
    Get formulas grid begin date column value function
    Get formulas grid formula column value function
    Select user defined parameters tab function
    Get user defined parameter select date function
    Get user defined parameter grid value column value function
    Get user defined parameter grid value column value function
    Get user defined parameter grid start date column value function
    Get costs tab select date value function
    Get active on date value function
    Click cost upload link function
    Get registry to date function
    Get registry to date function
    Get reg date time column value function
    Get process begin date time column value function
    Get process end date time column value function
    Get price policy formulas grid begin date column value function
    Get price policy formulas grid end date column value function
    Get value column value from user defined parameters grid function
    Get start date column value from user defined parameters grid function
    Get price overrides grid target price column value function
    Get price overrides grid begin date column value function
    Get price overrides grid end date column value function
    Select price dashboard function
    Click compound reference price list link function
    Get compound reference price list grid begin date column value function
    Get compound reference price list grid modified date column value function
    Click customer price list function
    Get customer price list offer date function
    Get created customer name function
    Set pricing exceptions select date function
    Get created new cost policy name function
    Set value in cost policy column function
    Filter price policies grid price policy column function
    Click price policy user defined parameters page header for inline item function
    Set value in parameter column function
    Select price policy formulas grid row checkbox function
    Select price policy formulas grid row checkbox function
    Is view cost policy page loaded properly function
    Get available reference prices count function
    Compare price reference prices count after create function
    Compare jobs count after job completed function
    Compare jobs count after price overrides completed function
    Set cost policy formulas grid settings function
    Get all rows of specific column from cost policy formulas grid function
    Sort cost policy formulas grid column function
    Get cost policy formulas grid column names by order function
    Drag cost policy formulas grid column function
    Click cost policy formulas grid export to excel button function
    Set cost policies user defined parameters grid settings function
    Get all rows of specific column from cost policies user defined parameters grid function
    Sort cost policies user defined parameters grid column function
    Get cost policies user defined parameters grid column names by order function
    Drag cost policies user defined parameters grid column function
    Click cost policies user defined parameters grid export to excel button function
    Set cost policies costs grid settings function
    Get all rows of specific column from cost policies costs grid function
    Sort cost policies costs grid column function
    Get cost policies costs grid column names by order function
    Drag cost policies costs grid column function
    Click cost policies costs grid export to excel button function
    Set reference prices grid settings function
    Get all rows of specific column from reference prices grid function
    Sort reference prices grid column function
    Get reference prices grid column names by order function
    Drag reference prices grid column function
    Click reference prices grid export to excel button function
    Compare grid column position after altering for reference prices function
    Set price policies udp grid settings function
    Get all rows of specific column from price policies udp grid function
    Sort price policies udp grid column function
    Get price policies udp grid column names by order function
    Drag price policies udp grid column function
    Click price policies udp grid export to excel button function
    Set compound reference price list function
    Compare compound reference price list grid first row data functions
    Set compound rpl begin date function
    Click origin reference price list link function
    Set origin reference price list function
    Click add new origin rpl button function
    Set add new origin rpl destination function
    Set add new origin rpl origin set function
    Set add new origin rpl rating method function
    Click add new origin rpl page search button function
    Set add new origin rpl rate values function
    Select origin reference price list grid row checkbox function
    Click origin rpl delete button function
    Click save origin rpl save button function
    Compare compound reference price list grid first row data function
    Select cost policies grid first row checkbox function
    Is cost policy preselected function
    Is cost policy preselected in upload costs function
    Is apply custom rules present function
    Click reference prices save changes button without custom rule function
    Click custom rule yes radio button function
    Set begin date with future date function
    Set cost forecast report route class function
    Set cost forecast report call type function
    Set cost forecast report routing destination function
    Get cost forecast report parameters text function
    Click country groups link function
    Click create country group button function
    Set country group scope function
    Set wholesale solution type function
    Set country group function
    Move available countries to destination function
    Click create country group save button function
    Get created country group name function
    Filter country group management grid column function
    Select country group management grid first row checkbox function
    Click country group management delete button function
    Is the created country group deleted function
    Set generation type function
    Is reference prices grid first row status approved function
    Compare completed status green button jobs count function
    Compare failed status red button jobs count function
    Get status button jobs count function
    Get completed status green button jobs count function
    Compare completed status green button jobs count after upload function
    Get failed status red button jobs count function
    Compare failed status red button jobs count after upload function
    Click price override browse button function
    Click price override upload button function
    Click price policy grid first row checkbox function
    Get completed status green button jobs count for reference price function
    Compare completed status green button jobs count for reference price function
    Get failed status red button jobs count for reference price function
    Compare failed status red button jobs count for reference price function
    Is specific system parameter for create destination formula present function
    Click generate reference prices link function
    Is specific reference price policy present in the source function
    Is specific destination present in the source function
    Is specific reference price policy not present in the source function
    Is specific destination not present in the source function
    Is expected country loaded in country column function
    Click country group management grid inline action button function
    Is country group scope dropdown control disabled function
    Is wholeslae solution type kendo dropdown control disabled function
    Is assigned country present function
    Unassign all country function
    Click country group selection checkbox function
    Set country group management grid settings function
    Get all rows of specific column from country group management grid function
    Sort country group management grid column function
    Click country group management grid export to excel button function
    Get available country function
    Select country group grid inline action item function
    Clear country group column filter function
    Set display grid function
    Click cancel button function
    Get cost elements grid cost element column values function
    Get cost elements grid value column values function
    Filter cost forecast reports grid column function
    Set cost forecast elements report routing destination function
    Get cost forecast element reports grid row details function
    Click price exceptions import button function
    Get completed status green button jobs count for price exception request function
    Compare completed status green button jobs count after upload for price exception request function
    Click price exception request upload button function
    Is price exception request export button present function
    Click failed status red button
    Click failed upload info icon function
    Compare failed upload info function
    Sort jobs grid column function
    Set jobs grid settings function
    Select cost policy formula grid multiple rows function
    Is specific selection criteria filter present function
    Is country selection criteria field present in crpl page function
    Is specific selection column present function
    Is country column present in crpl page function
    Is country selection criteria field present in orpl page function
    Is country column present in orpl page function
    Is country selection criteria field present in rcper page function
    Is country column present in rcper page function
    Is country selection criteria field present in costs page function
    Is country column present in costs page function
    Is country selection criteria field present in price override page function
    Is country column present in price override page function
    Is country selection criteria field present in reference prices page function
    Is country column present in reference prices page function
    Is ccpmr each call text present in info column function
    Compare price policy formulas grid formula column value function
    Is reference prices cost and routing section loaded function
    Verify pricing policies reference prices grid headers function
    Is route class kendo dropdown present function
    Verify cost elements grid columns header function
    Verify routing guide links grid columns header function
    Click reference prices grid first row inline action button function
    Is route guide with sell rates report inline item present function
    Is route guide with sell rates report pop up present function
    Is ccpmr cost per message text present in info column function
    Are job notifiers displayed at generate reference prices screen function
    Get cost upload all job notification status function
    Is by default specific generation type present function
    Set origin reference price list bulk edit end date
    Compare End Date Column Value in Origin Reference Price List Grid functionality
    Select create destination formula system parameters tab function
    Select user defined parameters grid first row checkbox function
    Is specific tab present in view pricing exception details pop up function
    Get cost policies grid first row cost policy name function
    Get upload costs cost policy field value function
    Click upload costs cancel button function
    Select cost policies grid multiple row checkbox function
    Is cost forecast elements grid description correct function
    Is review customer price exception requests search grid present function
    Is specific filter option present in price reference prices page function
    Select price policy for reference prices search function
    Set reference prices destination function
    Select country for reference prices search function
    Select trade destination category for reference prices search function
    Select region for reference prices search function
    Compare only failed status red button jobs count function
    Filter origin reference price list grid column function
    Click origin reference price list grid inline action button function
    Is specific dropdown disabled function
    Select orpl grid inline item function
    Is cost formula grid first row checkbox checked function
    Is price policy udp grid first row checkbox checked function
    Get price policy from reference prices grid function
    Click document tab on pricing exception page function
    Is delete button present in view pricing exception details page function
    Is upload document button present in view pricing exception details page function
    Is country column present in review pricing exception documents tab function
    Click rgwsrr tab on pricing exception page function
    Is country column present in review pricing exception rgwsrr tab function
    Is specific selection column present with data title function
    Click exception request export button function
    Click exception request browse button function
    Is view reference price details inline item present function
    Is view reference price details pop up present function
    Is reference price list section present function
    """
    # Start: Price page locators
    default_tab_header_locator = (By.XPATH, "//div[@id='PriceTabStrip-1']/descendant::h3")
    price_dashboard_tab_locator = (By.XPATH, "//div[@id='PriceTabStrip']/descendant::a[text()='Price Dashboard']")
    compound_reference_price_list_link_locator = (By.ID, "btnCRPL")
    country_groups_locator = (By.ID, "btnCountryGroups")
    create_customer_price_list_locator = (By.ID, "btnCustomerOffer")
    generate_reference_prices_locator = (By.ID, "btnGenerateReferencePrices")
    review_customer_price_exception_requests_locator = (By.ID, "btnReviewCustomerPE")
    cost_policies_tab_locator = (By.XPATH, "//div[@id='PriceTabStrip']/descendant::li[@aria-controls='PriceTabStrip-2']/descendant::a")
    price_policies_tab_locator = (By.XPATH, "//div[@id='PriceTabStrip']/descendant::li[@aria-controls='PriceTabStrip-3']/descendant::a")
    price_page_title_locator = (By.XPATH, "//label[@class='page-title' and text()='Price']")
    price_exceptions_grid_div_id = "divPricingExp"
    price_exceptions_grid_inline_action_column_number = 3
    pricing_exception_save_success_message_locator = (By.XPATH, "//p[text()='Pricing exception saved successfully.']")
    approve_inline_item_name = "Approve"
    cancel_button_locator = (By.ID, "btnCancel")
    all_row_data = []
    column_name_list = []
    grid_column_name_list = []
    origin_reference_price_list_link_locator = (By.ID, "btnOriginRpl")
    price_exceptions_page_div_id = "pricingExceptions"
    job_notification_categories = ["Failed", "Running", "Waiting", "Completed"]
    price_exceptions_grid_row_count_span_locator = (By.XPATH, "//div[@id='divSelectCount']/descendant::span")

    # Start: Compound reference price list page locators
    compound_reference_price_list_grid = "divCRPLGrid"
    modified_date_column_name = "Modified Date"
    compound_reference_price_list_dropdown_locator = (By.XPATH, "//label[text()='Compound Reference Price List']/../descendant::input")
    compound_reference_price_list_column_name = "Compound Reference Price List"
    compound_reference_price_list_grid_row_count_span_locator = (By.XPATH, "//div[contains(@id, 'divCRPLBar')]/descendant::span")
    compound_reference_price_list_bulk_edit_button_locator = (By.XPATH, "//a[contains(text(), 'Bulk Edit')]")
    reference_price_list_dropdown_arrow_locator = (By.XPATH, "//label[text()='Reference Price List']/../descendant::span[@class='k-icon k-i-arrow-s']")
    bulk_edit_header_locator = (By.ID, "PriceBulkEditWindowContainerWindow_wnd_title")
    system_parameters_grid_div_id = "ManageFormulaTabStrip"
    parameter_column_name = "Parameter"
    compound_reference_price_list_page_div_id = "CRPLMain"
    country_label_name = "Country"
    column_name_country = "Country"
    # End: Compound reference price list page locators

    # Start: Customer price list page locators
    offer_date_locator = (By.XPATH, "//label[text()='Offer Date']/../descendant::input")
    # End: Customer price list page locators

    # Start: Cost Policies tab locators
    create_new_cost_policy_locator = (By.XPATH, "//a[contains(@id, 'btnCreateCostPolicy')]")
    formulas_locator = (By.XPATH, "//a[contains(@id, 'btnFormulas') and text()='Formulas']")
    user_defined_parameters_locator = (By.XPATH, "//a[contains(@id, 'btnUserDefinedParameters') and text()='User Defined Parameters']")

    costs_locator = (By.ID, "btnCosts")
    cost_policy_last_modified_date_locator = (By.XPATH, "//span[contains(text(), 'Last Modified')]/../descendant::span[contains(@id, 'spnModifiedDate')]")
    costs_tab_locator = (By.XPATH, "//div[contains(@id, 'PricePolicyProfile')]/descendant::a[text()='Costs']")
    active_on_date_locator = (By.XPATH, "//div[contains(@id, 'divCPCCountSingle')]/descendant::span[@class='cpcSelectedDate']")
    cost_upload_link_locator = (By.XPATH, "//div[contains(@id, 'divCPCMain')]/descendant::span[text()='Cost Upload']")
    registry_from_date_value_locator = (By.XPATH, "//label[contains(text(), 'Registry Date From ')]/../descendant::input")
    registry_to_date_value_locator = (By.XPATH, "//label[contains(text(), 'Registry Date To ')]/../descendant::input")
    view_cost_policy_page_header_locator = (By.XPATH, "//h3[contains(text(), 'Cost Policy')]")
    first_row_cost_policy = ""
    cost_policy_column_name = "Cost Policy"
    failed_upload_info_icon_locator = (By.XPATH, "//span[@class='sajInfoImg infoIcon']")
    additional_info_grid_div_id = "divSAJAIGrid"
    cost_upload_job_notifiers_locator = (By.XPATH, "//div[contains(@id, 'jobStatus_Upload_')]/descendant::div[@class='jobnotifier-content status-indicators']/div")

    # Start: User Defined Parameters page locators
    user_defined_parameters_tab_locator = (By.XPATH, "//div[contains(@id, 'PricePolicyProfile')]/descendant::a[text()='User Defined Parameters']")
    user_defined_parameters_grid_checkbox_column_number = 2
    value_column_locator = (By.XPATH, "//th[@data-title='Value']")
    description_column_locator = (By.XPATH, "//th[@data-title='Description']")
    end_date_column_locator = (By.XPATH, "//th[@data-title='End Date']")
    user_defined_paramenters_page_header_locator = (By.XPATH, "//h3[contains(text(), 'Cost Policy')]")
    user_defined_parameters_div_id = "divUserDefinedParameters"
    user_defined_parameters_grid_data_grid_name = "PriceUserDefinedParametersGrid"
    save_changes_button_locator = (By.XPATH, "//a[text()='Save changes']")
    success_message_locator = (By.XPATH, "//p[text()='Data has been saved successfully']")
    copy_parameter_button_locator = (By.XPATH, "//a[contains(@id, 'btnCopyParameter')]")
    description_column_name = "Description"
    value_column_name = "Value"
    start_date_column_name = "Start Date"
    cost_policy_column_locator = (By.XPATH, "//th[@data-title='Cost Policy']")
    parameter_column_locator_for_user_defined_parameters = (By.XPATH, "//th[@data-title='Parameter']")
    cost_policies_user_defined_parameters_grid_row_count_span_locator = (By.XPATH, "//div[contains(@id, 'userDefinedParams')]/descendant::div[contains(@id, 'divBar')]/descendant::span")
    # End: User Defined Parameters page locators
    # End: Cost Policies tab locators

    # Start: Cost Policy Formulas page locators
    formulas_tab_locator = (By.XPATH, "//div[contains(@id, 'PricePolicyProfile')]/descendant::a[contains(text(), 'Formulas')]")
    cost_policy_formula_select_date_locator = (By.XPATH, "//input[contains(@id, 'pricePolicyFormulaSelectDate_')]")
    cost_forecast_elements_reports_button_locator = (By.XPATH, "//a[text()='Cost Forecast Elements Reports']")
    cost_forecast_report_submit_button_locator = (By.ID, "CFRSearchSubmit")
    cost_policies_formulas_grid_div_id = "Policy_Formula"
    formula_column_locator = (By.XPATH, "//th[@data-title='Formula']")
    formulas_cost_policy_column_number = 3
    formulas_column_number = 6
    formula_type_category_note = ""
    notes_column_name = "Notes"
    begin_date_column_name = "Begin Date"
    end_date_column_name = "End Date"
    formula_column_name = "Formula"
    select_grid_row_checkbox_column_number = 1
    cost_policies_formulas_grid_row_data = {"Formula Type": "", "Formula": "", "Notes": ""}
    cost_formula_textbox_locator = (By.ID, "Formula_Formula1")
    save_formula_button_locator = (By.ID, "btnSubmit")
    ok_button_locator = (By.ID, "btnOk")
    delete_formulas_button_locator = (By.XPATH, "//a[text()='Delete Formulas']")
    delete_formulas_success_message_locator = (By.XPATH, "//p[text()='Selected Formulas deleted successfully.']")
    delete_error_message_for_without_select = (By.XPATH, "//p[text()='Please select a formula to Delete.']")
    note_textbox_locator = (By.ID, "Formula_Note_Content")
    inline_action_button_locator = (By.XPATH, "//div[@id='Policy_Formula']/descendant::div[@data-role='virtualscrollable']/descendant::tr[1]/descendant::td[2]/span")
    cost_policy_kendo_dropdown_locator = (By.XPATH, "//label[contains(text(), 'Cost Policy')]/../descendant::input")
    formulas_page_search_button_locator = (By.ID, "btnSearch")
    copy_formulas_button_locator = (By.XPATH, "//a[text()='Copy Formulas']")
    new_start_and_end_dates_radio_button_locator = (By.XPATH, "//input[@id='rdoCustom_WinCopyFormula']")
    new_start_date_locator = (By.XPATH, "//input[@id='copyPolicyStartDate_WinCopyFormula']")
    new_end_date_locator = (By.XPATH, "//input[@id='copyPolicyEndDate_WinCopyFormula']")
    select_policy_button_locator = (By.XPATH, "//input[@id='btnMoveDest_copyPolicyList']")
    copy_cost_formulas_next_button = (By.XPATH, "//input[@id='save-page1']")
    copy_cost_formulas_save_button = (By.XPATH, "//a[@id='save-final']")
    search_button_locator = (By.ID, "btnSearch")
    cost_policies_formulas_page_header_locator = (By.XPATH, "//h3[text()='Cost Policy Formulas']")
    create_new_cost_policy_formula_dropdown_locator = (By.XPATH, "//a[@id='createDestinationFormula']/../descendant::span[@class='k-icon k-i-arrow-s']")
    create_destination_formula_locator = (By.XPATH, "//a[@id='createDestinationFormula' and text()='Create Destination Formula']")
    create_global_formula_locator = (By.ID, "createGlobalFormula")
    create_category_formula_locator = (By.ID, "createCategoryFormula")
    formula_pop_up_destination_dropdown_icon_locator = (By.XPATH, "//input[@id='ddlDestination']/../descendant::span[@class='k-icon k-i-arrow-s']")
    rate_type_dropdown_locator = (By.XPATH, "//label[contains(text(), 'Rate Type')]/../descendant::input")
    formula_pop_up_category_dropdown_icon_locator = (By.XPATH, "//input[@id='ddlCategory']/../descendant::span[@class='k-icon k-i-arrow-s']")
    begin_date_inputbox_locator =(By.XPATH, "//label[contains(text(), 'Begin Date')]/../descendant::input")
    calculate_button_locator = (By.ID, "btnCalculate")
    create_button_locator = (By.XPATH, "//button[contains(@id, 'btnSubmit')]")
    note_textarea_locator = (By.XPATH, "//label[contains(text(), 'Note')]/../descendant::textarea")
    select_date_inputbox_locator = (By.XPATH, "//label[contains(text(), 'Select Date')]/../descendant::input")
    formula_begin_date_locator = (By.ID, "Formula_BeginDate")
    formulas_grid_row_count = 0
    formulas_grid_row_count_span_locator = (By.XPATH, "//div[contains(@id, 'policyFormula_')]/descendant::div[contains(@id, 'divBar_')]/descendant::span")
    cost_policy_formula_grid_checkbox_column_number = 1
    system_parameters_tab_locator = (By.XPATH, "//div[@id='ManageFormulaTabStrip']/descendant::a[text()='System Parameters']")
    cost_forecast_elements_grid_div_id = "divCostForecastElements"
    # End: Cost Policy Formulas page locators

    # Start: Cost Forecast Report page locators
    cost_forecast_report_page_header_locator = (By.XPATH, "//div[@class='divCFRMain']/span[text()='Cost Forecast Report']")
    cost_forecast_report_parameters_popup_header_locator = (By.ID, "CFRSearchWindow_wnd_title")
    routing_destination_textbox_locator = (By.ID, "txtCRFDestination")
    cost_forecast_reports_grid_div_id = "divCFRGrid"
    cost_forecast_elements_report_grid_row_details = {}
    # End: Cost Forecast Report page locators
    cost_policy_div_id = "Policy_col_re"
    grid_column_number = 2
    view_cost_policy_string = "//span[text()='Cost Policy: ']/../descendant::span"
    view_cost_policy_inline_item_locator = (By.XPATH, "//ul[@id='Actions_listbox']/li[text()='View Cost Policy']")
    edit_cost_policy_button_locator = (By.XPATH, "//input[contains(@id, 'btnEdit')]")
    # End: Cost Policies tab locators

    # Start: Cost Policies Costs Page locators
    bulk_edit_button_locator = (By.XPATH, "//button[contains(@id, 'btnCPCBulkEdit') and text()='Bulk Edit']")
    end_date_inputbox_locator = (By.ID, "Edit-EndDate")
    bulk_edit_submit_button_locator = (By.ID, "BulkEditSubmit")
    costs_page_search_button_locator = (By.XPATH, "//button[contains(text(), 'Search')]")
    upload_costs_button_locator = (By.XPATH, "//button[contains(@id, 'btnCPCUpload') and text()='Upload Costs']")
    cost_policy_single_kendo_dropdown_locator = (By.XPATH, "//input[contains(@id, 'UDCostPolicyName')]")
    browse_button_locator = (By.XPATH, "//span[text()='Browse...']/..")
    completed_status_green_button_locator = (By.XPATH, "//div[contains(@id, 'jobStatus_Upload_')]/descendant::div[@data-status='Completed']")
    jobs_grid_row_count_span_locator = (By.XPATH, "//div[contains(@id, 'divSAJBar')]/span")
    jobs_grid_row_count = 0
    jobs_grid_div_id = "divSAJGrid"
    jobs_grid_data_grid_name = "SystemAdminJobsGrid"
    reg_date_time_column_name = "Reg Date/Time"
    process_begin_date_time_column_name = "Process Begin Date/Time"
    process_end_date_time_column_name = "Process End Date/Time"
    upload_button_locator = (By.XPATH, "//button[text()='Upload']")
    upload_success_message_locator = (By.XPATH, "//p[text()='File copied successfully onto server. Data review in progress. Please review latest status of file validation on the jobs screen.']")
    number_plan_dropdown_arrow_locator = (By.XPATH, "//label[text()='Number Plan']/../descendant::span[@class='k-icon k-i-arrow-s']")
    cost_policies_grid_row_count_span_locator = (By.XPATH, "//div[contains(@id, 'priceCostPolicy')]/descendant::div[contains(@id, 'divBar')]/descendant::span")
    cost_policies_costs_div_id = "divCPCGrid_"
    failed_status_red_button_locator = (By.XPATH, "//div[contains(@id, 'jobStatus_Upload_')]/descendant::div[@data-status='Failed']")
    refresh_button_locator = (By.XPATH, "//div[contains(@id, 'jobStatus_Upload_')]/descendant::span[@class='k-icon k-i-refresh']")
    cost_policies_costs_page_div_id = "divCPCMain_"
    upload_costs_cost_policy_field_locator = (By.XPATH, "//div[contains(@id, 'UDContent_')]/descendant::span[text()='Cost Policy']/../../descendant::span[@class='k-input']")
    upload_costs_cancel_button_locator = (By.XPATH, "//button[contains(@id, 'UDCancel')]")
    # End: Cost Policies Costs Page locators
    # Start: Create New Cost Policy Page locators
    cost_policy_name_textbox_locator = (By.XPATH, "//input[@id='txtCEPPPricePolicy']")
    abbreviation_textbox_locator = (By.XPATH, "//input[@id='txtCEPPAbbreviation']")
    status_kendo_dropdown_locator = (By.XPATH, "//label[contains(text(), 'Status')]/../descendant::input")
    cost_policy_type_kendo_dropdown_locator = (By.XPATH, "//label[text()='Cost Policy Type']/../descendant::input")
    call_type_kendo_dropdown_locator = (By.XPATH, "//label[text()='Call Type']/../descendant::input")
    route_class_kendo_dropdown_locator = (By.XPATH, "//label[text()='Route Class']/../descendant::input")
    route_class_kendo_dropdown_arrow_locator = (By.XPATH, "//label[text()='Route Class']/../descendant::span[@class='k-icon k-i-arrow-s']")
    create_cost_policy_save_button_locator = (By.ID, "CEPPSave")
    save_cost_policy_button_locator = (By.XPATH, "//input[contains(@id, 'btnSave')]")
    edit_status_kendo_dropdown_locator = (By.XPATH, "//span[text()='Status: ']/../descendant::input")
    status_column_locator = (By.XPATH, "//th[@data-title='Status']")
    cost_policy_data_from_database = {"Source": "", "Status": "", "CallType": "", "RouteClass": ""}
    costs_grid_row_count_span_locator = (By.XPATH, "//div[contains(@id, 'divCPCBar')]/span")
    # End: Create New Cost Policy Page locators
    # Start: Create New Cost Policy Page locators
    price_policy_data_from_database = {"Source": "", "CallType": "", "RouteClass": ""}
    # End: Create New Cost Policy Page locators

    # Start: Price Policy Formulas page locators
    price_policy_formulas_grid_row_count = 0
    price_policies_formulas_grid_div_id = "Policy_Formula"
    policies_formulas_grid_inline_action_column_number = 2
    price_policy_formulas_grid_row_count_span_locator = (By.XPATH, "//div[contains(@id, 'policyFormula')]/descendant::div[contains(@id, 'divBar_')]/descendant::span")
    price_policies_formulas_grid_row_data = {"Formula Type":"", "Formula":"", "Notes":""}
    price_policy_dropdown_locator = (By.XPATH, "//label[contains(text(), 'Price Policy')]/../descendant::input")
    price_policies_formulas_page_header_locator = (By.XPATH, "//h3[text()='Price Policy Formulas']")
    target_textarea_locator = (By.ID, "Formula_Formula1")
    minimum_textarea_locator = (By.ID, "Formula_Formula2")
    cost_textarea_locator = (By.ID, "Formula_Formula3")
    price_policy_grid_inline_action_button_locator = (By.XPATH, "//div[contains(@id, 'priceCostPolicy_')]/h2[text()='Price Policy']/../descendant::div[@id='Policy_col_re']/descendant::div[@class='k-grid-content']/descendant::tr[1]/descendant::td[2]/span")
    view_price_policy_page_header_locator = (By.XPATH, "//h3[contains(text(), 'Price Policy')]")
    price_policy_grid_first_row_checkbox_locator = (By.XPATH, "//div[contains(@id, 'priceCostPolicy_')]/h2[text()='Price Policy']/../descendant::div[@id='Policy_col_re']/descendant::div[@class='k-grid-content']/descendant::tr[1]/descendant::td[1]/input")
    display_dropdown_locator = (By.XPATH, "//div[@id='divRefPrices']/descendant::span[@class='k-input']")
    cost_element_grid_div_id = "divCostElements"
    cost_element_column_name = "Cost Element"
    cost_element_column_value = []
    value_column_value = []
    cost_element_value_dictionary = {}
    formulas_grid_formula_column_target_value_locator = (By.XPATH, "//div[contains(@id, 'divPricePolicyFormulas_')]/descendant::span[text()='Target:']/../span[2]")
    formulas_grid_formula_column_minimum_value_locator = (By.XPATH, "//div[contains(@id, 'divPricePolicyFormulas_')]/descendant::span[text()='Minimum:']/../span[2]")
    formulas_grid_formula_column_cost_value_locator = (By.XPATH, "//div[contains(@id, 'divPricePolicyFormulas_')]/descendant::span[text()='Cost:']/../span[2]")
    reference_prices_cost_and_routing_text_locator = (By.XPATH, "//div[@id='divRefPrices']/h3[text()='Reference Prices, Cost and Routing Information']")
    # End: Price Policy Formulas page locators
    # Start: Price Policies page locators
    price_overrides_button_locator = (By.XPATH, "//a[@id='btnPriceOverrides' and text()='Price Overrides']")
    generate_reference_prices_button_locator = (By.XPATH, "//a[@id='btnGenRefPrices']")
    reference_prices_button_locator = (By.ID, "btnReferencePrices")
    price_policies_grid_div_id = "divPricePolicy"
    price_policy_cloumn_name = "Price Policy"
    generation_type_dropdown_locator = (By.XPATH, "//label[text()='Generation Type']/../descendant::span[@class='k-icon k-i-arrow-s']")
    # End: Price Policies page locators
    # Start: Price Overrides page locators
    price_overrides_grid_div_id = "divPPOGrid_"
    price_overrides_grid_row_count_span_locator = (By.XPATH, "//div[contains(@id, 'divPPOMain')]/descendant::div[contains(@id, 'divPPOBar')]/descendant::span")
    target_price_column_name = "Target Price"
    price_overrides_grid_row_count = 0
    price_overrides_grid_checkbox_column_number = 2
    price_overrides_bulk_edit_button_locator = (By.XPATH, "//button[contains(@id, 'btnPPOBulkEdit')]")
    price_overrides_bulk_edit_end_date_locator = (By.XPATH, "//input[@id='Edit-EndDate']")
    upload_price_overrides_button_locator = (By.XPATH, "//button[contains(@id, 'btnPPOUpload')]")
    price_overrides_completed_status_green_button_locator = (By.XPATH, "//div[contains(@id, 'divPPOMain') and @class='ppoMain']/descendant::div[@data-status='Completed']")
    price_overrides_browse_button_locator = (By.XPATH, "//input[contains(@id, 'UDFilePricePolicyOverride')]/../descendant::span[text()='Browse...']/..")
    price_overrides_upload_button_locator = (By.XPATH, "//span[@id='PriceOverridesUploadDialogWindow_wnd_title' and text()='Upload Price Policy Overrides']/../../descendant::button[text()='Upload']")
    price_overrides_page_div_id = "divPPOMain_"
    # End: Price Overrides page locators
    # Start: Review Customer Price Exception Request page locators
    price_exceptions_request_page_header_locator = (By.XPATH, "//span[text()='Price Exception Requests ']")
    price_exceptions_search_button_locator = (By.ID, "searchCustomerPriceExceptions")
    price_exceptions_import_button_locator = (By.XPATH, "//a[contains(@id, 'btnImport')]")
    price_exceptions_completed_status_green_button_locator = (By.XPATH, "//div[@id='jobStatus_Upload1']/descendant::div[@data-status='Completed']")
    price_exceptions_status_refresh_button_locator = (By.XPATH, "//div[@id='jobStatus_Upload1']/descendant::span[@class='k-icon k-i-refresh']")
    price_exceptions_export_button_locator = (By.XPATH, "//a[contains(@id, 'btnExport')]")
    price_exceptions_request_page_search_grid_locator = (By.XPATH, "//form[@id='frmPriceExceptionsSearch']")
    price_exceptions_export_warning_message_lcoator = (By.XPATH, "//p[text()='Do not delete rows inside of the exported offer to ensure that it loads properly at the import step.']")
    price_exception_request_browse_button_locator = (By.XPATH, "//div[@id='BulkEditableFields']/descendant::span[text()='Browse...']")
    # End: Review Customer Price Exception Request page locators

    # Start: Copy Price Policy Formulas page locators
    available_policies_selectbox_id = "from_copyPolicyList"
    second_page_next_button = (By.ID, "save-page2")
    # End: Copy Price Policy Formulas page locators

    # Start: User Defined Parameters page locators under Price Policy
    create_new_user_defined_parameter_locator = (By.XPATH, "//a[text()='Create New User Defined Parameter']")
    user_defined_parameter_select_date_locator = (By.XPATH, "//input[contains(@id, 'userDefinedParameterSelectDate_')]")
    user_defined_parameter_grid_price_policy_kendo_dropdown_locator = (By.XPATH, "//input[@id='PricePolicy']")
    price_policies_user_defined_parameters_header_locator = (By.XPATH, "//h3[text()='Price Policies User Defined Parameters']")
    parameter_column_locator = (By.XPATH, "//input[@id='Parameter']")
    price_policies_user_defined_parameters_header_locator_for_inline_item = (By.XPATH, "//h3[contains(text(), 'Price Policy')]")
    # End: User Defined Parameters page locators under Price Policy

    # Start: Generate Reference Prices page locators
    generate_reference_prices_submit_locator = (By.ID, "GRPSubmit")
    reference_price_list_id = "from_GRPPolicies_1"
    reference_price_move_button_locator = (By.XPATH, "//input[contains(@id, 'btnMoveDest_GRPPolicies')]")
    destination_list_id = "from_GRPDestinations_1"
    destination_move_button_locator = (By.XPATH, "//input[contains(@id, 'btnMoveDest_GRPDestinations')]")
    move_all_destination_button_locator = (By.XPATH, "//input[contains(@id, 'btnMoveAllDest_GRPDestinations')]")
    reference_price_completed_status_green_button_locator = (By.XPATH, "//div[contains(@id, 'jobStatus_Generate_')]/descendant::div[@data-status='Completed']")
    reference_price_failed_status_red_button_locator = (By.XPATH, "//div[contains(@id, 'jobStatus_Generate_')]/descendant::div[@data-status='Failed']")
    reference_price_status_refresh_button_locator = (By.XPATH, "//div[contains(@id, 'jobStatus_Generate_')]/descendant::span[@class='k-icon k-i-refresh']")
    job_notifiers_locator = (By.XPATH, "//div[contains(@id, 'jobStatus_Generate_')]/descendant::div[@class='jobnotifier-content status-indicators']/div")
    # End: Generate Reference Prices page locators

    # Start: Reference Prices page locators
    reference_prices_status_kendo_dropdown_locator = (By.XPATH, "//span[contains(@id, 'selStatusCount')]/../../descendant::input")
    reference_prices_status_column_locator = (By.XPATH, "//th[@data-title='Status']")
    reference_prices_grid_div_id = "divPRPGrid_"
    reference_prices_data_grid_name = 'PriceReferencePricesGrid'
    reference_prices_first_row_column_locator_string = "//div[contains(@id, 'divPRPGrid')]/descendant::div[@class='k-grid-content']/descendant::"
    price_policy_column_dropdown_locator = (By.XPATH, "//th[@data-title='Price Policy']/descendant::span")
    reference_prices_div_bar_id = "divPRPBar"
    reference_prices_selected_text_locator = (By.XPATH, "//span[contains(text(), 'Reference Prices selected out of')]")
    reference_prices_div_id = "divPRPGrid"
    reference_prices_grid_checkbox_column_number = 2
    reference_prices_search_button_locator = (By.XPATH, "//button[contains(@id, 'btnPRPSearch')]")
    edit_note_textarea_locator = (By.ID, "Edit-Note")
    reference_prices_bulk_edit_button_locator = (By.XPATH, "//a[contains(text(), 'Bulk Edit')]")
    reference_prices_page_header_locator = (By.XPATH, "//h3[text()='Price Reference Prices']")
    reference_price_bulk_edit_title_locator = (By.XPATH, "//span[@id='PriceBulkEditWindowContainerWindow_wnd_title' and contains(text(), 'Bulk')]")
    reference_prices_total_number_of_records_count_locator = (By.XPATH, "//div[contains(@id, 'divPRPBar')]/descendant::span[contains(text(), 'Reference Prices selected out of')]")
    apply_custom_rules_span_locator = (By.XPATH, "//span[text()='Apply Custom Rules:']")
    custom_rule_yes_radio_button_locator = (By.ID, "rbCustomRulesYes")
    custom_rule_no_radio_button_locator = (By.ID, "rbCustomRulesNo")
    custom_rule_error_message_locator = (By.XPATH, "//p[text()='Please select Yes or No for applying the custom rules to proceed.']")
    reference_prices_page_div_id = "divPRPMain_m1"
    ccpmr_each_call_text_locator = (By.XPATH, "//div[@class='k-tooltip-content' and contains(text(), 'CCPMR= sum(cost of each call)')]")
    ccpmr_cost_per_message_text_locator = (By.XPATH, "//div[@class='k-tooltip-content' and contains(text(), 'Cost Per Message Rate')]")
    ccpm_info_locator = (By.XPATH, "//span[text()='CCPMR']/../../td[1]/descendant::span[@class='k-icon k-i-search']")
    reference_prices_grid_inline_action_column_number = 4
    route_guide_with_sell_rates_report_inline_item_locator = (By.XPATH, "//li[text()='Route Guide with Sell Rates Report']")
    route_guide_with_sell_rates_report_pop_up_locator = (By.ID, "RouteGuideReport__wnd_title")
    reference_prices_price_policy_kendo_dropdown_locator = (By.XPATH, "//label[contains(text(), 'Price Policy')]/../../descendant::input")
    reference_prices_destination_textbox_locator = (By.ID, "txtPRPDestination_m1")
    reference_prices_country_kendo_dropdown_locator = (By.XPATH, "//span[contains(@id, 'selPRPCountry_')]/../../descendant::input")
    reference_prices_trade_destination_category_kendo_dropdown_locator = (By.XPATH, "//span[contains(@id, 'selTDCCount_m1')]/../../descendant::input")
    first_dropdown_item_locator = (By.XPATH, "//ul[@aria-hidden='false' and @role='listbox']/li[@data-offset-index='0']")
    reference_prices_region_kendo_dropdown_locator = (By.XPATH, "//span[contains(@id, 'selRegionCount_')]/../../descendant::input")
    view_reference_price_details_inline_item_locator = (By.XPATH, "//li[text()='View Reference Price Details']")
    view_reference_price_details_pop_up_locator = (By.ID, "ReferencePriceDetailsPopup_wnd_title")
    reference_price_list_history_section_locator = (By.XPATH, "//span[text()='Reference Price List History']")
    # End: Reference Prices page locators

    # Start: View Price Policy page locators
    price_overrides_tab_locator = (By.XPATH, "//a[@class='k-link' and text()='Price Overrides']")
    price_policy_formulas_tab_locator = (By.XPATH, "//a[@class='k-link' and text()='Formulas']")
    # End: View Price Policy page locators

    # Start: Origin reference price list page locators
    origin_reference_price_list_grid = "grdOriginRPL"
    origin_reference_price_list_grid_row_count_span_locator = (By.XPATH, "//div[contains(@id, 'divORPLNotification')]/descendant::span")
    origin_reference_price_list_grid_bulk_edit_button_locator = (By.XPATH, "//a[contains(@id, 'btnOriginRPLBulkEdit') and text()='Bulk Edit']")
    origin_reference_price_list_dropdown_arrow_locator = (By.XPATH, "//label[text()='Origin Reference Price List']/../descendant::span[@class='k-icon k-i-arrow-s']")
    origin_reference_price_list_kendo_dropdown_locator = (By.XPATH, "//label[text()='Origin Reference Price List']/../descendant::input")
    add_new_origin_rpl_button_locator = (By.XPATH, "//a[contains(@id, 'btnOriginRPLAdd') and text()='Add New Origin RPL']")
    add_new_origin_rpl_destination_dropdown_arrow_locator = (By.XPATH, "//label[text()='Destination']/../descendant::span[@class='k-icon k-i-arrow-s']")
    add_new_origin_rpl_origin_set_dropdown_arrow_locator = (By.XPATH, "//label[text()='Origin Set']/../descendant::span[@class='k-icon k-i-arrow-s']")
    add_new_origin_rpl_rating_method_dropdown_arrow_locator = (By.XPATH, "//label[text()='Rating Method']/../descendant::span[@class='k-icon k-i-arrow-s']")
    add_new_origin_rpl_page_search_button_locator = (By.ID, "btnSearchOriginRPLWizard")
    rates_grid_div_id = "grdOriginRate"
    rate_column_name = "Rate"
    new_origin_rate_note_textbox_locator = (By.ID, "Note")
    origin_reference_price_list_grid_div_id = "grdOriginRPL"
    origin_rpl_delete_button_locator = (By.XPATH, "//a[contains(@id, 'btnOriginRPLDelete') and text()='Delete']")
    confirmation_message_locator = (By.XPATH, "//p[text()='Are you sure you want to Delete the selected Origin Reference Price List(s)?']")
    delete_origin_rpl_success_message_locator = (By.XPATH, "//p[text()='Origin RPL Deleted Successfully']")
    save_origin_rpl_button_locator = (By.XPATH, "//a[contains(@id, 'btnSave')]")
    origin_reference_price_list_page_div_id = "divORPL"
    origin_reference_price_list_bulk_edit_end_date_locator = (By.XPATH, "//input[@name='EndDate' and @id='Edit-EndDate']")
    orpl_grid_column_number = 3
    # End: Origin reference price list page locators

    # Start: Customer Price Exception Request page locators
    customer_price_exception_request_link_locator = (By.ID, "btnReviewCustomerPE")
    customer_price_exception_request_grid_div_id = "divPricingExp"
    customer_price_exception_request_grid_row_count_span_locator = (By.XPATH, "//div[contains(@id, 'divSelectCount')]/descendant::span")
    customer_price_exception_request_grid_bulk_edit_button_locator = (By.XPATH, "//a[contains(@id, 'BatchEditPriceExceptions') and text()='Bulk Edit']")
    # End: Customer Price Exception Request page locators

    # Start: Country Group Management page locators
    create_country_group_button_locator = (By.XPATH, "//a[contains(@id, 'btnAddCountryGroup')]")
    country_group_scope_kendo_dropdown_locator = (By.ID, "ddlBACountryType")
    wholesale_solution_type_kendo_dropdown_locator = (By.ID, "ddlNewSolutionType")
    country_group_textbox_locator = (By.XPATH, "//div[@id='divNewCountryGroupContent']/descendant::label[(text()='Country Group')]/../descendant::input")
    available_countries_selectbox_id = "from_msBACountryGroup"
    create_country_group_save_button_locator = (By.ID, "btnBACountryGroupSave")
    country_group_management_grid_div_id = "divCountryGroupGrid"
    country_group_management_data_grid_name = "CountryGroupManagementGrid"
    country_group_management_delete_button = (By.XPATH, "//a[contains(@id, 'btnDeleteCountryGroup')]")
    delete_confirmation_message_locator = (By.XPATH, "//p[text()='Are you sure you want to delete the selected rows?']")
    delete_success_message_locator = (By.XPATH, "//p[text()='Data has been deleted successfully']")
    country_group_management_grid_row_count_span_locator = (By.XPATH, "//div[contains(@id, 'divBACountryGroupBar')]/descendant::span")
    country_column_name = "Countries"
    country_group_management_grid_inline_action_button_column_position = 2
    country_group_selection_checkbox_column_position = 1
    move_all_assigned_country_to_source_locator = (By.ID, "btnMoveAllSrc_msBACountryGroup")
    available_first_country_locator = (By.XPATH, "//select[@id='from_msBACountryGroup']/descendant::option")
    # End: Country Group Management page locators

    # Start: Review Customer Price Exception Requests page locators
    document_tab_locator = (By.XPATH, "//div[@id='CustomerPricingExceptionTabStrip']/descendant::li/a[text()='Documents']")
    view_pricing_exception_details_delete_button_locator = (By.XPATH, "//a[@id='btnDeleteDocument']")
    view_pricing_exception_details_upload_document_button_locator = (By.XPATH, "//a[@id='btnUploadDocument']")
    documents_grid_div_id = "divUploadDocumentsGrid"
    rgwsrr_tab_locator = (By.XPATH, "//div[@id='CustomerPricingExceptionTabStrip']/descendant::li/a[text()='Route Guide with Sell Rates Report']")
    rgwsrr_grid_div_id = "divRGWithSellRatesReport"
    # End: Review Customer Price Exception Requests page locators

    # End: Price page locators

    def switch_to_price(self):
        """
        Implementing Switch to price functionality
        :return:
        """
        self.switch_to_window()
        self.accept_ssl_certificate()

    def get_price_page_title(self):
        """
        Implementing get price page title functionality
        :return: Price page title
        """
        self.wait().until(EC.visibility_of_element_located(self.default_tab_header_locator), 'default tab header not found before specified time')
        return self.page_title()

    def is_price_dashboard_tab_present(self):
        """
        Implementing is price dashboard tab present functionality
        :return: True/False
        """
        is_present = self.is_element_present(self.price_dashboard_tab_locator)
        return is_present

    def is_cost_policies_tab_present(self):
        """
        Implementing is cost policies tab present functionality
        :return: True/False
        """
        is_present = self.is_element_present(self.cost_policies_tab_locator)
        return is_present

    def is_price_policies_tab_present(self):
        """
        Implementing is price policies tab present functionality
        :return: True/False
        """
        is_present = self.is_element_present(self.price_policies_tab_locator)
        return is_present

    def is_country_groups_link_present(self):
        """
        Implementing is country groups link present functionality
        :return: True/False
        """
        is_present = self.is_element_present(self.country_groups_locator)
        return is_present

    def is_create_customer_price_list_link_present(self):
        """
        Implementing is create customer price list link present functionality
        :return: True/False
        """
        is_present = self.is_element_present(self.create_customer_price_list_locator)
        return is_present

    def is_generate_reference_prices_link_present(self):
        """
        Implementing is generate reference prices link present functionality
        :return: True/False
        """
        is_present = self.is_element_present(self.generate_reference_prices_locator)
        return is_present

    def is_review_customer_price_exception_requests_link_present(self):
        """
        Implementing is review customer price exception requests link present functionality
        :return: True/False
        """
        is_present = self.is_element_present(self.review_customer_price_exception_requests_locator)
        return is_present

    def select_cost_policies_tab(self):
        """
        Implementing select cost policies tab functionality
        :return:
        """
        self.select_static_tab(self.cost_policies_tab_locator, 'cost policies tab not found before specified time')

    def is_create_new_cost_policy_present(self):
        """
        Implementing is create new cost policy present functionality
        :return: True/False
        """
        is_present = self.is_element_present(self.create_new_cost_policy_locator)
        return is_present

    def is_formulas_present(self):
        """
        Implementing is formulas present functionality
        :return: True/False
        """
        is_present = self.is_element_present(self.formulas_locator)
        return is_present

    def is_user_defined_parameters_present(self):
        """
        Implementing is user defined parameters present present functionality
        :return: True/False
        """
        is_present = self.is_element_present(self.user_defined_parameters_locator)
        return is_present

    def is_costs_present(self):
        """
        Implementing is costs present functionality
        :return: True/False
        """
        is_present = self.is_element_present(self.costs_locator)
        return is_present

    def click_formulas_button(self):
        """
        Implementing click formulas button functionality
        :return:
        """
        formulas_button_element = self.wait().until(EC.presence_of_element_located(self.formulas_locator), 'formulas button locator not found before specified time out')
        self.script_executor_click(formulas_button_element)
        self.wait_for_ajax_spinner_load()

    def click_cost_forecast_elements_reports_button(self):
        """
        Implementing click cost forecast elements reports button functionality
        :return:
        """
        cost_forecast_elements_reports_button_element = self.wait().until(EC.element_to_be_clickable(self.cost_forecast_elements_reports_button_locator), 'cost forecast elements reports button locator not found before specified time out')
        cost_forecast_elements_reports_button_element.click()
        self.wait_for_ajax_spinner_load()

    def click_cost_forecast_report_submit_button(self):
        """
        Implementing click cost forecast report submit button functionality
        :return:
        """
        cost_forecast_report_submit_button_element = self.wait().until(EC.element_to_be_clickable(self.cost_forecast_report_submit_button_locator), 'cost forecast report submit button locator not found before specified time out')
        cost_forecast_report_submit_button_element.click()
        self.wait_for_ajax_spinner_load()

    def verify_cost_forecast_report_page_header(self):
        """
        Implementing verify cost forecast report page header functionality
        :return:
        """
        is_present = self.is_element_present(self.cost_forecast_report_page_header_locator)
        return is_present

    def click_price_page_inline_action_button(self, cost_policy):
        """
        Implementing click price page inline action button functionality
        :param cost_policy: cost_policy name
        :return:
        """
        self.click_inline_action_button(self.cost_policy_div_id, cost_policy, self.grid_column_number)

    def verify_cost_policy_details(self, cost_policy):
        """
        Implementing verify cost policy details functionality
        :param cost_policy:
        :return: True/False
        """
        cost_policy_locator = (By.XPATH, self.view_cost_policy_string + "[text()='%s']" % cost_policy)
        return self.is_element_present(cost_policy_locator)

    def click_formulas_page_inline_action_button(self):
        """
        Implementing click formulas page inline action button functionality
        :return:
        """
        inline_action_button_element = self.wait().until(EC.presence_of_element_located(self.inline_action_button_locator), 'inline action button locator not found before specified time')
        self.script_executor_click(inline_action_button_element)
        self.wait_for_ajax_spinner_load()

    def select_cost_policies_formulas_grid_row_checkbox(self, list_of_cost_policy):
        """
        Implementing select cost policies formulas grid row checkbox functionality
        :param list_of_cost_policy:
        :return:
        """
        for row in list_of_cost_policy:
            self.select_grid_row_checkbox(self.cost_policies_formulas_grid_div_id, row, self.select_grid_row_checkbox_column_number)

    def set_cost_formula(self, cost_formula_value):
        """
        Implementing set cost formula functionality
        :param cost_formula_value:
        :return:
        """
        self.set_value_into_input_field(self.cost_formula_textbox_locator, cost_formula_value)

    def click_formula_save_button(self):
        """
        Implementing click formula save button functionality
        :return:
        """
        save_button_element = self.wait().until(EC.element_to_be_clickable(self.save_formula_button_locator), 'save button locator not found before specified time')
        save_button_element.click()
        self.wait_for_ajax_spinner_load()
        try:
            self.wait().until(EC.presence_of_element_located(self.success_message_locator), 'success popup locator not found before specified time')
            ok_button_element = self.wait().until(EC.element_to_be_clickable(self.ok_button_locator), 'ok button locator not found before specified time')
            ok_button_element.click()
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def verify_edited_formula(self, edited_formula_value):
        """
        Implementing verify edited formula functionality
        :param edited_formula_value:
        :return: True/False
        """
        formula_column_element = self.wait().until(EC.presence_of_element_located(self.formula_column_locator), 'formula column locator not found before specified time out')
        column_index = int(formula_column_element.get_attribute("data-index")) + 1
        edited_formula_locator = (By.XPATH, "//div[@id='%s']/descendant::span[text()='%s']/../../td[%s]/descendant::span[text()='Target:']/../descendant::span[2]" % (self.cost_policies_formulas_grid_div_id, self.formula_type_category_note, str(column_index)))
        edited_formula_element = self.wait().until(EC.visibility_of_element_located(edited_formula_locator), 'edited formula locator not found before specified time')
        if (edited_formula_element.text == edited_formula_value):
            return True
        else:
            return False

    def click_delete_formulas_button(self):
        """
        Implementing click delete formulas button functionality
        :return:
        """
        self.click_element(self.delete_formulas_button_locator, True)
        popup_element = None
        try:
            self.accept_alert_pop_up()
            popup_element = self.wait(10).until(EC.visibility_of_element_located(self.delete_formulas_success_message_locator))
        except:
            pass
        if(popup_element):
            ok_button_element = self.wait().until(EC.element_to_be_clickable(self.ok_button_locator), 'ok button locator not found before specified time')
            self.wait_for_ajax_spinner_load()
            ok_button_element.click()
        else:
            self.wait().until(EC.visibility_of_element_located(self.delete_error_message_for_without_select))
            ok_button_element = self.wait().until(EC.element_to_be_clickable(self.ok_button_locator), 'ok button locator not found before specified time')
            self.wait_for_ajax_spinner_load()
            ok_button_element.click()
        self.wait_for_ajax_spinner_load()

    def set_note_for_edit_formula(self):
        """
        Implementing set note for edit formula functionality
        :return:
        """
        unique_note = self.random_string_generator(6)
        self.set_value_into_input_field(self.note_textbox_locator, unique_note)
        self.formula_type_category_note = unique_note

    def set_cost_policy(self, list_of_cost_policy):
        """
        Implementing set cost policy functionality
        :param list_of_cost_policy:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.cost_policy_kendo_dropdown_locator, list_of_cost_policy)
        price_page_title_element = self.wait().until(EC.element_to_be_clickable(self.price_page_title_locator), 'price page title locator not found before specified time out')
        price_page_title_element.click()
        self.wait_for_ajax_spinner_load()

    def click_search_button(self):
        """
        Implementing click search button functionality
        :return:
        """
        self.click_element(self.costs_page_search_button_locator, True)
        self.wait_for_ajax_spinner_load(timeout=300)

    def click_create_new_cost_policy_formula_dropdown(self):
        """
        Implementing click create new cost policy formula dropdown functionality
        :return:
        """
        create_new_cost_policy_formula_dropdown_element = self.wait().until(EC.element_to_be_clickable(self.create_new_cost_policy_formula_dropdown_locator), 'create new cost policy formula dropdown locator not found before specified time out')
        create_new_cost_policy_formula_dropdown_element.click()

    def is_create_destination_formula_present(self):
        """
        Implementing is create destination formula present functionality
        :return: True/False
        """
        is_present = self.is_element_present(self.create_destination_formula_locator)
        return is_present

    def is_create_global_formula_present(self):
        """
        Implementing is create global formula present functionality
        :return: True/False
        """
        is_present = self.is_element_present(self.create_global_formula_locator)
        return is_present

    def is_create_category_formula_present(self):
        """
        Implementing is create category formula present functionality
        :return: True/False
        """
        is_present = self.is_element_present(self.create_category_formula_locator)
        return is_present

    def click_create_destination_formula(self):
        """
        Implementing click create destination formula functionality
        :return:
        """
        create_destination_formula_element = self.wait().until(EC.presence_of_element_located(self.create_destination_formula_locator), 'create destination formula locator not found before specified time out')
        self.script_executor_click(create_destination_formula_element)
        self.wait_for_ajax_spinner_load()

    def click_create_global_formula(self):
        """
        Implementing click create global formula functionality
        :return:
        """
        create_global_formula_element = self.wait().until(EC.presence_of_element_located(self.create_global_formula_locator), 'create global formula locator not found before specified time out')
        self.script_executor_click(create_global_formula_element)
        self.wait_for_ajax_spinner_load()

    def click_create_category_formula(self):
        """
        Implementing click create category formula functionality
        :return:
        """
        create_category_formula_element = self.wait().until(EC.presence_of_element_located(self.create_category_formula_locator), 'create category formula locator not found before specified time out')
        self.script_executor_click(create_category_formula_element)
        self.wait_for_ajax_spinner_load()

    def set_destination_of_formula_pop_up(self, destination):
        """
        Implementing set destination of formula pop up functionality
        :param destination:
        :return:
        """
        try:
            self.wait_for_ajax_spinner_load()
            self.click_element(self.formula_pop_up_destination_dropdown_icon_locator, script_executor=True)
            self.wait_for_ajax_spinner_load()
            destination_item_locator = (By.XPATH, "//ul[@id='ddlDestination_listbox']/li[text()='%s']" % destination)
            destination_item_element = self.wait(30).until(EC.element_to_be_clickable(destination_item_locator), 'destination item locator not found before specified time out')
            self.script_executor_click(destination_item_element)
            self.wait_for_ajax_spinner_load()
        except:
            try:
                destination_item_locator = (By.XPATH, "//ul[@id='ddlDestination_listbox']/li[2]")
                destination_item_element = self.wait(10).until(EC.element_to_be_clickable(destination_item_locator), 'destination first item locator not found before specified time out')
                self.script_executor_click(destination_item_element)
            except:
                raise

    def set_rate_type(self, rate_type):
        """
        Implementing set rate type functionality
        :param rate_type:
        :return:
        """
        rate_type = rate_type.replace(' ', '  ')
        self.single_selection_from_kendo_dropdown(self.rate_type_dropdown_locator, rate_type)
        self.wait_for_ajax_spinner_load()

    def set_begin_date(self, date):
        """
        Implementing set begin date functionality
        :param date:
        :return:
        """
        self.set_value_into_input_field(self.begin_date_inputbox_locator, str(date))

    def set_select_date(self, date):
        """
        Implementing set select date functionality
        :param date:
        :return:
        """
        self.set_value_into_input_field(self.select_date_inputbox_locator, str(date))

    def set_category_of_formula_pop_up(self, category):
        """
        Implementing set category of formula pop up functionality
        :param category:
        :return:
        """
        formula_pop_up_category_dropdown_icon_element = self.wait().until(EC.element_to_be_clickable(self.formula_pop_up_category_dropdown_icon_locator), 'formula pop up category dropdown icon locator not found before specified time')
        formula_pop_up_category_dropdown_icon_element.click()
        self.wait_for_ajax_spinner_load()
        category_item_locator = (By.XPATH, "//ul[@id='ddlCategory_listbox']/li[text()='%s']" % category)
        category_item_element = self.wait().until(EC.element_to_be_clickable(category_item_locator), 'category item locator not found before specified time out')
        self.script_executor_click(category_item_element)
        self.wait_for_ajax_spinner_load()

    def click_calculate_button(self):
        """
        Implementing click calculate button functionality
        :return:
        """
        calculate_button_element = self.wait().until(EC.element_to_be_clickable(self.calculate_button_locator), 'calculate button locator not found before specified time out')
        calculate_button_element.click()
        self.wait_for_ajax_spinner_load()

    def click_create_button(self):
        """
        Implementing click create button functionality
        :return:
        """
        self.set_note_for_edit_formula()
        create_button_element = self.wait().until(EC.presence_of_element_located(self.create_button_locator), 'create button locator not found before specified time')
        self.script_executor_click(create_button_element)
        self.wait_for_ajax_spinner_load()
        try:
            self.wait().until(EC.presence_of_element_located(self.success_message_locator), 'success popup locator not found before specified time')
            ok_button_element = self.wait().until(EC.element_to_be_clickable(self.ok_button_locator), 'ok button locator not found before specified time')
            ok_button_element.click()
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def filter_cost_policies_formulas_grid_notes_column(self):
        """
        Implementing filter cost policies formulas grid notes column functionality
        :return:
        """
        self.grid_filter_with_textbox(self.cost_policies_formulas_grid_div_id, self.notes_column_name, self.formula_type_category_note)

    def clear_filter_of_cost_policies_grid(self, column_name):
        """
        Implementing clear filter of cost policies grid functionality
        :param column_name:
        :return:
        """
        self.clear_filter(column_name, self.cost_policies_formulas_grid_div_id)

    def get_cost_policies_formulas_grid_row_details(self):
        """
        Implementing get cost policies formulas grid row details functionality
        :return: grid_row_data
        """
        grid_row_data = self.get_grid_row_details_with_unique_identifier(self.cost_policies_formulas_grid_div_id, self.cost_policies_formulas_grid_row_data, self.formula_type_category_note)
        grid_row_data_list = grid_row_data["Formula"].split(":")
        grid_row_data["Formula"] = grid_row_data_list[1]
        return grid_row_data

    def click_costs_button(self):
        """
        Implementing click costs button functionality
        :return:
        """
        costs_button_element = self.wait().until(EC.element_to_be_clickable(self.costs_locator), 'costs button locator not found before specified time out')
        costs_button_element.click()
        self.wait_for_ajax_spinner_load()

    def select_multiple_rows_from_cost_policies_costs_grid(self):
        """
        Implementing select multiple rows cost policies costs grid functionality
        :return:
        """
        for i in range(2):
            cost_policies_costs_grid_checkbox_locator = (By.XPATH,"(//div[@data-grid-name='CostPoliciesCostsGrid']/descendant::input[@type='checkbox'])[%s]" % str(i+2))
            self.click_element(cost_policies_costs_grid_checkbox_locator, True)

    def click_bulk_edit_button(self):
        """
        Implementing click bulk edit button functionality
        :return:
        """
        bulk_edit_button_element = self.wait().until(EC.element_to_be_clickable(self.bulk_edit_button_locator), 'bulk edit button locator not found before specified time out')
        bulk_edit_button_element.click()
        self.wait_for_ajax_spinner_load()

    def set_future_date_at_end_date(self):
        """
        Implementing set future date at end date functionality
        :return:
        """
        future_date = self.get_future_date()
        self.set_value_into_input_field(self.end_date_inputbox_locator, str(future_date))

    def click_bulk_edit_submit_button(self):
        """
        Implementing click bulk edit submit button functionality
        :return:
        """
        self.click_element(self.bulk_edit_submit_button_locator, True)

    def click_user_defined_parameters_button(self):
        """
        Implementing click user defined parameters button functionality
        :return:
        """
        user_defined_parameters_element = self.wait().until(EC.presence_of_element_located(self.user_defined_parameters_locator), 'user defined parameters locator not found before specified time')
        self.script_executor_click(user_defined_parameters_element)
        self.wait_for_ajax_spinner_load()

    def click_user_defined_parameters_page_header(self):
        """
        Implementing click user defined parameters page header functionality
        :return:
        """
        user_defined_parameters_page_header_element = self.wait().until(EC.presence_of_element_located(self.user_defined_paramenters_page_header_locator), 'user defined paramenters page header locator not found before specified time')
        user_defined_parameters_page_header_element.click()
        self.wait_for_ajax_spinner_load()

    def set_value_in_value_column(self, value):
        """
        Implementing set value in value column functionality
        :param value:
        :return:
        """
        value_column_element = self.wait().until( EC.presence_of_element_located(self.value_column_locator), 'value column locator not found before specified time out')
        column_index = int(value_column_element.get_attribute("data-index")) + 1
        first_row_value_column_locator = (By.XPATH, "//div[contains(@id, 'divUserDefinedParameters')]/descendant::div[@class='k-grid-content']/descendant::td[%s]/span" % str(column_index))
        first_row_value_column_element = self.wait().until( EC.element_to_be_clickable(first_row_value_column_locator), 'first row value column locator not found before specified time out')
        first_row_value_column_element.click()
        self.wait_for_ajax_spinner_load()
        first_row_value_column = client.Dispatch("WScript.Shell")
        first_row_value_column.SendKeys("^a")
        first_row_value_column.SendKeys("{DEL}")
        first_row_value_column.SendKeys(str(value))
        self.click_user_defined_parameters_page_header()

    def set_value_in_description_column(self, description_prefix):
        """
        Implementing set value in description column functionality
        :return:
        """
        global description_string
        description_unique_id = self.random_string_generator(6)
        description_string = description_prefix + description_unique_id
        self.set_value_in_grid_column(self.user_defined_parameters_div_id, self.description_column_name, description_string)
        self.click_user_defined_parameters_page_header()

    def set_value_in_end_date_column(self, end_date):
        """
        Implementing set value in end date column functionality
        :param end_date:
        :return:
        """
        end_date_column_element = self.wait().until(EC.presence_of_element_located(self.end_date_column_locator), 'end date column locator not found before specified time out')
        column_index = int(end_date_column_element.get_attribute("data-index")) + 1
        first_row_end_date_column_locator = (By.XPATH, "//div[contains(@id, 'divUserDefinedParameters')]/descendant::div[@class='k-grid-content']/descendant::td[%s]/span" % str(column_index))
        first_row_end_date_column_element = self.wait().until(EC.element_to_be_clickable(first_row_end_date_column_locator), 'first row end date column locator not found before specified time out')
        first_row_end_date_column_element.click()
        self.wait_for_ajax_spinner_load()
        first_row_end_date_column = client.Dispatch("WScript.Shell")
        first_row_end_date_column.SendKeys("^a")
        first_row_end_date_column.SendKeys("{DEL}")
        first_row_end_date_column.SendKeys(end_date)
        self.click_user_defined_parameters_page_header()

    def click_save_changes_button(self):
        """
        Implementing click save changes button functionality
        :return:
        """
        self.click_element(self.save_changes_button_locator, True)
        try:
            self.wait().until(EC.visibility_of_element_located(self.success_message_locator), 'save changes success message locator not found before specified time')
            ok_button_element = self.wait().until(EC.element_to_be_clickable(self.ok_button_locator), 'ok button locator not found before specified time')
            self.wait_for_ajax_spinner_load()
            ok_button_element.click()
        except:
            pass
        self.wait_for_ajax_spinner_load()

    def verify_updated_description(self):
        """
        Implementing verify updated description functionality
        :return: True/False
        """
        column_element = self.wait().until(EC.presence_of_element_located(self.description_column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) + 1
        first_row_column_locator = (By.XPATH, "//div[contains(@id, 'divUserDefinedParameters')]/descendant::div[@class='k-grid-content']/descendant::td[%s]/span[@class='k-grid-cell']" % str(column_index))
        first_row_column_element = self.wait().until(EC.element_to_be_clickable(first_row_column_locator), 'first row column locator not found before specified time out')
        first_row_column_value = first_row_column_element.text
        if(description_string == str(first_row_column_value)):
            return True
        else:
            return False

    def filter_user_defined_parameters_grid_with_unique_description(self):
        """
        Implementing filter user defined parameters grid with unique description functionality
        :return:
        """
        description_list = [description_string]
        self.grid_filter_details("Description", description_list)

    def get_updated_value(self):
        """
        Implementing get updated value functionality
        :return: updated value
        """
        column_element = self.wait().until(EC.presence_of_element_located(self.value_column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) + 1
        first_row_column_locator = (By.XPATH, "//div[contains(@id, 'divUserDefinedParameters')]/descendant::div[@class='k-grid-content']/descendant::td[%s]/span[@class='k-grid-cell']" % str(column_index))
        first_row_column_element = self.wait().until(EC.element_to_be_clickable(first_row_column_locator), 'first row column locator not found before specified time out')
        return first_row_column_element.text

    def get_updated_end_date(self):
        """
        Implementing get updated end date functionality
        :return: updated end date
        """
        column_element = self.wait().until(EC.presence_of_element_located(self.end_date_column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) + 1
        first_row_column_locator = (By.XPATH, "//div[contains(@id, 'divUserDefinedParameters')]/descendant::div[@class='k-grid-content']/descendant::td[%s]/span[@class='k-grid-cell']" % str(column_index))
        first_row_column_element = self.wait().until(EC.element_to_be_clickable(first_row_column_locator), 'first row column locator not found before specified time out')
        return first_row_column_element.text

    def click_create_new_cost_policy_button(self):
        """
        Implementing click create new cost policy button functionality
        :return:
        """
        create_new_cost_policy_button_element = self.wait().until(EC.element_to_be_clickable(self.create_new_cost_policy_locator), 'create new cost policy locator not found before specified time')
        create_new_cost_policy_button_element.click()
        self.wait_for_ajax_spinner_load()

    def set_cost_policy_name(self, cost_policy_prefix):
        """
        Implementing set cost policy name functionality
        :param cost_policy_prefix:
        :return: cost_policy_name
        """
        global created_new_cost_policy_name
        try:
            cost_policy_unique_id = self.random_string_generator(6)
            created_new_cost_policy_name = (cost_policy_prefix + cost_policy_unique_id).strip()
            self.set_value_into_input_field(self.cost_policy_name_textbox_locator, created_new_cost_policy_name)
            return created_new_cost_policy_name
        except:
            raise

    def set_cost_policy_abbreviation(self):
        """
        Implementing set cost policy abbreviation functionality
        :return:
        """
        try:
            abbreviation_name = self.random_string_generator(6)
            self.set_value_into_input_field(self.abbreviation_textbox_locator, abbreviation_name)
        except:
            raise

    def set_cost_policy_status(self, status):
        """
        Implementing set cost policy status functionality
        :param status:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.status_kendo_dropdown_locator, status)
        self.wait_for_ajax_spinner_load()

    def set_cost_policy_type(self, cost_policy_type):
        """
        Implementing set cost policy type functionality
        :param cost_policy_type:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.cost_policy_type_kendo_dropdown_locator, cost_policy_type)
        self.wait_for_ajax_spinner_load()

    def set_cost_policy_call_type(self, call_type):
        """
        Implementing set cost policy call type functionality
        :param call_type: call type
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.call_type_kendo_dropdown_locator, call_type)
        self.wait_for_ajax_spinner_load()

    def set_cost_policy_route_class(self, route_class):
        """
        Implementing set cost policy route class functionality
        :param route_class:
        :return:
        """
        if route_class is None or route_class.strip() == '':
            self.single_selection_from_static_kendo_dropdown(self.route_class_kendo_dropdown_arrow_locator, first_item=True)
        else:
            self.single_selection_from_kendo_dropdown(self.route_class_kendo_dropdown_locator, route_class)
            self.wait_for_ajax_spinner_load()

    def click_create_cost_policy_save_button(self):
        """
        Implementing click create cost policy save button functionality
        :return:
        """
        self.click_element(self.create_cost_policy_save_button_locator, True)
        try:
            self.wait().until(EC.presence_of_element_located(self.success_message_locator), 'success popup locator not found before specified time')
            ok_button_element = self.wait().until(EC.element_to_be_clickable(self.ok_button_locator), 'ok button locator not found before specified time')
            ok_button_element.click()
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def click_cost_policy_grid_inline_action_button(self, cost_policy):
        """
        Implementing click cost policy grid inline action button functionality
        :param cost_policy:
        :return:
        """
        self.click_inline_action_button(self.cost_policy_div_id, cost_policy, self.grid_column_number)
        self.wait_for_ajax_spinner_load()

    def click_edit_cost_policy_button(self):
        """
        Implementing click edit cost policy button functionality
        :return:
        """
        edit_cost_policy_button_element = self.wait().until(EC.element_to_be_clickable(self.edit_cost_policy_button_locator), 'edit cost policy button locator not found before specified time')
        edit_cost_policy_button_element.click()
        self.wait_for_ajax_spinner_load()

    def edit_cost_policy_status(self, status):
        """
        Implementing edit cost policy status functionality
        :param status:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.edit_status_kendo_dropdown_locator, status)
        self.wait_for_ajax_spinner_load()

    def click_save_cost_policy_button(self):
        """
        Implementing click save cost policy button functionality
        :return:
        """
        save_cost_policy_button_element = self.wait().until(EC.element_to_be_clickable(self.save_cost_policy_button_locator), 'save cost policy button locator not found before specified time')
        save_cost_policy_button_element.click()
        self.wait_for_ajax_spinner_load()
        try:
            self.wait().until(EC.presence_of_element_located(self.success_message_locator), 'success popup locator not found before specified time')
            ok_button_element = self.wait().until(EC.element_to_be_clickable(self.ok_button_locator), 'ok button locator not found before specified time')
            ok_button_element.click()
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def is_cost_policy_status_inactive(self, cost_policy_name):
        """
        Implementing is cost policy status inactive functionality
        :param cost_policy_name:
        :return: True/False
        """
        status_column_element = self.wait().until(EC.presence_of_element_located(self.status_column_locator), 'column locator not found before specified time out')
        status_column_number = int(status_column_element.get_attribute("data-index")) + 1
        cost_policy_status_locator = (By.XPATH, "//div[@id='%s']/descendant::span[text()='%s']/../../td[%s]/span" % (self.cost_policy_div_id, cost_policy_name, str(status_column_number)))
        cost_policy_status_element = self.wait().until(EC.element_to_be_clickable(cost_policy_status_locator), 'inline action button locator not found before specified time')
        cost_policy_status = cost_policy_status_element.text
        if(cost_policy_status == "InActive"):
            return True
        else:
            return False

    def get_cost_policy_details_from_database(self, cost_policy_name, server, database, user, password):
        """
        Implementing get cost policy details from database functionality
        :param cost_policy_name:
        :param server:
        :param database:
        :param user:
        :param password:
        :return: cost policy data from database
        """
        try:
            Database.open_mssql(server=server, database=database, user=user, password=password)
            sql=("""
            SELECT spc.Source, s.ActiveStatusID, ct.CallType, r.RouteClass
            FROM iXTrade_Main.dbo.tbSourcePCB AS spc
            INNER JOIN iXTrade_Main.dbo.tbSource AS s ON (s.SourceID = spc.SourceID)
            INNER JOIN ixcore_main.dbo.tbCallType AS ct ON (ct.CallTypeID = spc.CallTypeID)
            INNER JOIN ixcore_main.dbo.tbRouteClass AS r ON (r.RouteClassID = spc.RouteClassID)
            WHERE spc.Source = ?;
            """)
            cursor = Database.get_cursor(sql, [cost_policy_name])
            row = cursor.fetchone()
            while row:
                self.cost_policy_data_from_database["Source"] = str(row.Source)
                self.cost_policy_data_from_database["Status"] = str(row.ActiveStatusID)
                self.cost_policy_data_from_database["CallType"] = str(row.CallType)
                self.cost_policy_data_from_database["RouteClass"] = str(row.RouteClass)
                row = cursor.fetchone()
            cursor.close()
            Database.close()
            return self.cost_policy_data_from_database
        except:
            raise

    def get_cost_policy_status_from_database(self, cost_policy_name, server, database, user, password):
        """
        Implementing get cost policy status from database functionality
        :param cost_policy_name:
        :param server:
        :param database:
        :param user:
        :param password:
        :return: cost policy status from database
        """
        status = None
        try:
            Database.open_mssql(server=server, database=database, user=user, password=password)
            sql = ("""
            SELECT pcb.Source, s.ActiveStatusID
            FROM iXTrade_Main.dbo.tbSourcePCB AS pcb
            INNER JOIN iXTrade_Main.dbo.tbsource AS s ON (s.SourceID = pcb.SourceID)
            WHERE pcb.Source  = ?;
            """)
            cursor = Database.get_cursor(sql, [cost_policy_name])
            row = cursor.fetchone()
            while row:
                status =  str(row.ActiveStatusID)
                row = cursor.fetchone()
            if(status == "1"):
                status = "Active"
            elif(status == "2"):
                status = "Inactive"
            cursor.close()
            Database.close()
            return status
        except:
            raise

    def select_cost_policy_for_copy_formulas(self, cost_policy_list):
        """
        Implementing select cost policy for copy formulas functionality
        :param cost_policy_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.cost_policy_kendo_dropdown_locator, cost_policy_list)
        self.wait_for_ajax_spinner_load()

    def click_formulas_page_search_button(self):
        """
        Implementing click formulas page search button functionality
        :return:
        """
        self.click_element(self.formulas_page_search_button_locator, True)

    def click_copy_formulas_button(self):
        """
        Implementing click copy formulas button functionality
        :return:
        """
        self.click_element(self.copy_formulas_button_locator, True)

    def check_new_start_and_end_date_radio_button(self):
        """
        Implementing check new start and end date radio button functionality
        :return:
        """
        new_start_and_end_date_radio_button_element = self.wait().until(EC.element_to_be_clickable(self.new_start_and_end_dates_radio_button_locator), 'new start and end date radio button locator not found before specified time out')
        new_start_and_end_date_radio_button_element.click()
        self.wait_for_ajax_spinner_load()

    def set_new_start_date(self, date):
        """
        Implementing set new start date functionality
        :return:
        """
        if date != "":
            self.set_value_into_input_field(self.new_start_date_locator, date)
        else:
            self.set_value_into_input_field(self.new_start_date_locator, str(self.get_current_date()))

    def set_new_end_date(self):
        """
        Implementing set new end date functionality
        :return:
        """
        future_date = str(self.get_future_date())
        self.set_value_into_input_field(self.new_end_date_locator, future_date)

    def select_cost_policies_from_available_policies(self, cost_policy_list):
        """
        Implementing select cost policies from available policies functionality
        :param cost_policy_list:
        :return:
        """
        for cost_policy in cost_policy_list:
            cost_policy_locator = (By.XPATH, "//select[@id='from_copyPolicyList']/descendant::option[text()='%s']" % cost_policy)
            cost_policy_element = self.wait().until(EC.element_to_be_clickable(cost_policy_locator), 'cost policy locator not found before specified time')
            cost_policy_element.click()
            self.wait_for_ajax_spinner_load()
            select_policy_button_element = self.wait().until(EC.element_to_be_clickable(self.select_policy_button_locator), 'select policy button locator not found before specified time')
            select_policy_button_element.click()
        self.wait_for_ajax_spinner_load()

    def click_next_button(self):
        """
        Implementing click next button functionality
        :return:
        """
        next_button_element = self.wait().until(EC.element_to_be_clickable(self.copy_cost_formulas_next_button), 'next button locator not found before specified time')
        next_button_element.click()
        self.wait_for_ajax_spinner_load()

    def click_copy_cost_formulas_save_button(self):
        """
        Implementing click copy cost formulas save button functionality
        :return:
        """
        save_button_element = self.wait().until(EC.element_to_be_clickable(self.copy_cost_formulas_save_button), 'save button locator not found before specified time')
        save_button_element.click()
        self.wait_for_ajax_spinner_load()
        try:
            self.wait().until(EC.visibility_of_element_located(self.success_message_locator), 'success message locator not found before specified time')
            ok_button_element = self.wait().until(EC.element_to_be_clickable(self.ok_button_locator), 'ok button locator not found before specified time')
            self.wait_for_ajax_spinner_load()
            ok_button_element.click()
        except:
            pass
        self.wait_for_ajax_spinner_load()

    def grid_filter_formulas_with_notes(self):
        """
        Implementing grid filter formulas with notes functionality
        :return:
        """
        self.grid_filter_with_textbox(self.cost_policies_formulas_grid_div_id, self.notes_column_name, self.formula_type_category_note)
        self.wait_for_ajax_spinner_load()

    def select_price_policies_tab(self):
        """
        Implementing select price policies tab functionality
        :return:
        """
        self.select_static_tab(self.price_policies_tab_locator, 'price policies tab not found before specified time')

    def set_price_policy(self, list_of_price_policy):
        """
        Implementing set price policy functionality
        :param list_of_price_policy:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.price_policy_dropdown_locator, list_of_price_policy)
        price_page_title_element = self.wait().until(EC.element_to_be_clickable(self.price_page_title_locator), 'price page title locator not found before specified time out')
        price_page_title_element.click()
        self.wait_for_ajax_spinner_load()

    def set_formula_target(self, target):
        """
        Implementing set formula target functionality
        :param target:
        :return:
        """
        self.set_value_into_input_field(self.target_textarea_locator, target)

    def set_formula_minimum(self, minimum):
        """
        Implementing set formula minimum functionality
        :param minimum:
        :return:
        """
        self.set_value_into_input_field(self.minimum_textarea_locator, minimum)

    def set_formula_cost(self, cost):
        """
        Implementing set formula cost functionality
        :param cost:
        :return:
        """
        self.set_value_into_input_field(self.cost_textarea_locator, cost)

    def get_price_policies_formulas_grid_row_details(self):
        """
        Implementing get price policies formulas grid row details functionality
        :return: grid_row_data
        """
        grid_row_data = self.get_grid_row_details_with_unique_identifier(self.price_policies_formulas_grid_div_id,self.price_policies_formulas_grid_row_data, self.formula_type_category_note)
        grid_row_data_list = grid_row_data["Formula"].split("Cost:")
        grid_row_data_formula = grid_row_data_list[0]
        grid_row_data["Cost"] = grid_row_data_list[1]
        grid_row_data_list = grid_row_data_formula.split("Minimum:")
        grid_row_data_formula = grid_row_data_list[0]
        grid_row_data["Minimum"] = grid_row_data_list[1]
        grid_row_data_list = grid_row_data_formula.split("Target:")
        grid_row_data["Target"] = grid_row_data_list[1]
        self.price_policies_formulas_grid_row_data = {"Formula Type": "", "Formula": "", "Notes": ""}
        return grid_row_data

    def click_policies_formulas_grid_inline_action_button(self, policy_formula):
        """
        Implement logging for click policies formulas grid inline action button functionality
        :param policy_formula:
        :return:
        """
        self.click_inline_action_button(self.price_policies_formulas_grid_div_id, policy_formula,self.policies_formulas_grid_inline_action_column_number)

    def get_price_policy_details_from_database(self, price_policy_name, server, database, user, password):
        """
        Implementing get price policy details from database functionality
        :param price_policy_name:
        :param server:
        :param database:
        :param user:
        :param password:
        :return: price policy data from database
        """
        try:
            Database.open_mssql(server=server, database=database, user=user, password=password)
            sql = ("""
            SELECT sr.Source, ct.CallType, r.RouteClass
            FROM iXTrade_Main.dbo.tbsourceRPP AS sr
            INNER JOIN ixcore_main.dbo.tbCallType AS ct ON (ct.CallTypeID = sr.CallTypeID)
            INNER JOIN ixcore_main.dbo.tbRouteClass AS r ON (r.RouteClassID = sr.RouteClassID)
            WHERE sr.Source = ?;
            """)
            cursor = Database.get_cursor(sql, [price_policy_name])
            row = cursor.fetchone()
            while row:
                self.price_policy_data_from_database["Source"] = str(row.Source)
                self.price_policy_data_from_database["CallType"] = str(row.CallType)
                self.price_policy_data_from_database["RouteClass"] = str(row.RouteClass)
                row = cursor.fetchone()
            cursor.close()
            Database.close()
            return self.price_policy_data_from_database
        except:
            raise

    def get_price_policy_status_from_database(self, price_policy_name, server, database, user, password):
        """
        Implementing get price policy status from database functionality
        :param price_policy_name:
        :param server:
        :param database:
        :param user:
        :param password:
        :return: price policy status from database
        """
        status = None
        try:
            Database.open_mssql(server=server, database=database, user=user, password=password)
            sql = ("""
            SELECT sr.Source, s.ActiveStatusID
            FROM iXTrade_Main.dbo.tbsourceRPP AS sr
            INNER JOIN iXTrade_Main.dbo.tbsource AS s ON (s.SourceID = sr.SourceID)
            WHERE sr.Source = ?;
            """)
            cursor = Database.get_cursor(sql, [price_policy_name])
            row = cursor.fetchone()
            while row:
                status =  str(row.ActiveStatusID)
                row = cursor.fetchone()
            if(status == "1"):
                status = "Active"
            elif(status == "2"):
                status = "Inactive"
            cursor.close()
            Database.close()
            return status
        except:
            raise

    def click_review_customer_price_exception_requests(self):
        """
        Implementing click review customer price exception requests functionality
        :return:
        """
        self.click_element(self.review_customer_price_exception_requests_locator, script_executor=True)

    def is_review_customer_price_exception_requests_page_loaded_properly(self):
        """
        Implementing is review customer price exception requests page loaded properly functionality
        :return: True/False
        """
        is_loaded = self.is_element_present(self.price_exceptions_request_page_header_locator)
        return is_loaded

    def click_price_policy_grid_first_row_inline_action_button(self):
        """
        Implementing click price policy grid inline action button functionality
        :return:
        """
        price_policy_grid_inline_action_button_element = self.wait().until(EC.element_to_be_clickable(self.price_policy_grid_inline_action_button_locator), 'price policy grid inline action button not found before specified time')
        self.script_executor_click(price_policy_grid_inline_action_button_element)
        self.wait_for_ajax_spinner_load()

    def is_view_price_policy_page_loaded_properly(self):
        """
        Implementing is view price policy page loaded properly functionality
        :return: True/False
        """
        is_loaded = self.is_element_present(self.view_price_policy_page_header_locator)
        return is_loaded

    def click_price_overrides_button(self):
        """
        Implementing click price overrides button functionality
        :return:
        """
        price_overrides_button_element = self.wait().until(EC.presence_of_element_located(self.price_overrides_button_locator), 'price overrides button locator not found before specified time')
        self.script_executor_click(price_overrides_button_element)
        self.wait_for_ajax_spinner_load()

    def select_price_overrides_grid_row_checkbox(self):
        """
        Implementing select price overrides grid row checkbox functionality
        :return:
        """
        for i in range(2):
            grid_row_checkbox_locator = (By.XPATH, "(//div[contains(@id, '%s')]/descendant::input[@type='checkbox'])[%s]" % (self.price_overrides_grid_div_id, str(i+2)))
            self.click_element(grid_row_checkbox_locator, True)

    def click_price_overrides_bulk_edit_button(self):
        """
        Implementing click price overrides bulk edit button functionality
        :return:
        """
        self.click_element(self.price_overrides_bulk_edit_button_locator, True)
        self.wait_for_ajax_spinner_load()

    def set_price_overrides_bulk_edit_end_date(self, date):
        """
        Implementing set price overrides bulk edit end date functionality
        :param date:
        :return:
        """
        end_date_element = self.wait().until(EC.visibility_of_element_located(self.price_overrides_bulk_edit_end_date_locator), 'end date locator not found before specified time')
        end_date_element.clear()
        if(date == "" or time.strptime(date, "%m/%d/%Y") < time.strptime(self.get_current_date(), "%m/%d/%Y")):
            end_date_element.send_keys(self.get_future_date())
        else:
            end_date_element.send_keys(date)
        self.wait_for_ajax_spinner_load()

    def set_value_in_user_defined_parameters_grid_column(self, column_name, column_value):
        """
        Implementing set value in user defined parameters grid column functionality
        :param column_name:
        :param column_value:
        :return:
        """
        self.set_value_in_grid_column(self.user_defined_parameters_div_id, column_name, column_value)
        self.click_user_defined_parameters_page_header()

    def move_available_policies_to_destination(self, policies_list):
        """
        Implementing move available policies to destination functionality
        :param policies_list:
        :return:
        """
        self.move_available_items_to_destination(self.available_policies_selectbox_id, policies_list)

    def click_second_page_next_button(self):
        """
        Implementing click second page next button functionality
        :return:
        """
        second_page_next_button_element = self.wait().until(EC.element_to_be_clickable(self.second_page_next_button), 'second page next button locator not found before specified time')
        second_page_next_button_element.click()
        self.wait_for_ajax_spinner_load()

    def click_create_new_user_defined_parameter_button(self):
        """
        Implementing click create new user defined parameter button functionality
        :return:
        """
        create_new_user_defined_parameter_button_element = self.wait().until(EC.element_to_be_clickable(self.create_new_user_defined_parameter_locator), 'create new user defined parameter locator not found before specified time')
        self.script_executor_click(create_new_user_defined_parameter_button_element)
        self.wait_for_ajax_spinner_load()

    def click_price_policy_user_defined_parameters_page_header(self):
        """
        Implementing click price policy user defined parameters page header functionality
        :return:
        """
        page_header_element = self.wait().until(EC.visibility_of_element_located(self.price_policies_user_defined_parameters_header_locator), 'header locator not found before specified time')
        page_header_element.click()

    def set_value_for_create_new_user_defined_parameters(self, column_name, column_value):
        """
        Implementing set value for create new user defined parameters functionality
        :param column_name:
        :param column_value:
        :return:
        """
        self.set_value_in_grid_column(self.user_defined_parameters_div_id, column_name, column_value)
        self.click_price_policies_user_defined_parameters_header_for_inline_item()

    def set_price_policy_for_create_user_defined_parameter(self, price_policy):
        """
        Implementing set price policy for create user defined parameter functionality
        :param price_policy:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.user_defined_parameter_grid_price_policy_kendo_dropdown_locator, price_policy)
        self.wait_for_ajax_spinner_load()
        self.click_price_policy_user_defined_parameters_page_header()

    def set_parameter_for_new_user_defined_parameters(self, column_name, column_value):
        """
        Implementing set parameter for new user defined parameters functionality
        :param column_name:
        :param column_value:
        :return:
        """
        unique_string = self.random_string_generator(6)
        new_column_value = column_value + unique_string
        column_locator = (By.XPATH, "//th[@data-title='%s']" % column_name)
        column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) + 1
        first_row_column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::div[@class='k-grid-content']/descendant::td[%s]/input[@id='Parameter']" % (self.user_defined_parameters_div_id, str(column_index)))
        first_row_column_element = self.wait().until(EC.presence_of_element_located(first_row_column_locator), 'first row column locator not found before specified time out')
        self.script_executor_click(first_row_column_element)
        self.wait_for_ajax_spinner_load()
        first_row_column = client.Dispatch("WScript.Shell")
        first_row_column.SendKeys("^a")
        first_row_column.SendKeys("{DEL}")
        first_row_column.SendKeys(str(new_column_value))
        self.click_price_policies_user_defined_parameters_header_for_inline_item()

    def set_description_for_new_user_defined_parameters(self, column_name, column_value):
        """
        Implementing set description for new user defined parameters functionality
        :param column_name:
        :param column_value:
        :return: description
        """
        unique_string = self.random_string_generator(6)
        new_column_value = column_value + unique_string
        self.set_value_in_grid_column(self.user_defined_parameters_div_id, column_name, new_column_value)
        self.click_price_policies_user_defined_parameters_header_for_inline_item()
        return new_column_value

    def edit_grid_column_for_new_user_defined_parameter(self, column_name, end_date):
        """
        Implementing edit grid column for new user defined parameter functionality
        :param column_name:
        :param end_date:
        :return:
        """
        if end_date == "" or (time.strptime(end_date, "%m/%d/%Y") < time.strptime(self.get_current_date(), "%m/%d/%Y")):
            self.set_value_in_grid_column(self.user_defined_parameters_div_id, column_name, str(self.get_future_date()))
        else:
            self.set_value_in_grid_column(self.user_defined_parameters_div_id, column_name, end_date)
        self.click_price_policies_user_defined_parameters_header_for_inline_item()

    def set_value_in_grid_for_new_user_defined_parameter(self, column_name):
        """
        Implementing set value in grid for new user defined parameter functionality
        :param column_name:
        :return:
        """
        self.set_value_in_grid_column(self.user_defined_parameters_div_id, column_name, str(self.get_current_date()))
        self.click_price_policies_user_defined_parameters_header_for_inline_item()

    def click_generate_reference_prices_button(self):
        """
        Implementing click generate reference prices button functionality
        :return:
        """
        generate_reference_prices_button_element = self.wait().until(EC.element_to_be_clickable(self.generate_reference_prices_button_locator), 'generate reference prices button locator not found before specified time')
        generate_reference_prices_button_element.click()
        self.wait_for_ajax_spinner_load()

    def select_reference_price_policies(self, policies_list):
        """
        Implementing select reference price policies functionality
        :param policies_list:
        :return:
        """
        self.move_available_items_to_destination(self.reference_price_list_id, policies_list, self.reference_price_move_button_locator)

    def select_available_destinations(self, destination_list):
        """
        Implementing select available destinations functionality
        :param destination_list:
        :return:
        """
        if len(destination_list)>0:
            self.move_available_items_to_destination(self.destination_list_id, destination_list, self.destination_move_button_locator)
        else:
            self.click_element(self.move_all_destination_button_locator)

    def click_generate_reference_prices_submit_button(self):
        """
        Implementing click generate reference prices submit button functionality
        :return:
        """
        self.click_element(self.generate_reference_prices_submit_locator, True)
        try:
            self.wait().until(EC.visibility_of_element_located(self.success_message_locator), 'success message locator not found before specified time')
            ok_button_element = self.wait().until(EC.element_to_be_clickable(self.ok_button_locator), 'ok button locator not found before specified time')
            self.wait_for_ajax_spinner_load()
            ok_button_element.click()
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def select_user_defined_parameters_grid_row_checkbox(self, list_of_policy):
        """
        Implementing select user defined parameters grid row checkbox functionality
        :param list_of_policy:
        :return:
        """
        for row in list_of_policy:
            select_grid_row_checkbox_locator = (By.XPATH,"//div[contains(@id, '%s')]/descendant::span[text()='%s']/../../td[%s]/input" % (self.user_defined_parameters_div_id, row, str(self.user_defined_parameters_grid_checkbox_column_number)))
            select_grid_row_checkbox_element = self.wait().until(EC.element_to_be_clickable(select_grid_row_checkbox_locator),'select grid row locator not found before specified time')
            self.script_executor_click(select_grid_row_checkbox_element)

    def click_copy_parameter_button(self):
        """
        Implementing click copy parameter button functionality
        :return:
        """
        copy_parameter_button_element = self.wait().until(EC.element_to_be_clickable(self.copy_parameter_button_locator), 'copy parameter button locator not found before specified time')
        copy_parameter_button_element.click()
        self.wait_for_ajax_spinner_load()

    def click_reference_prices_button(self):
        """
        Implementing click reference prices button functionality
        :return:
        """
        reference_prices_button_element = self.wait().until(EC.element_to_be_clickable(self.reference_prices_button_locator), 'reference prices button locator not found before specified time')
        self.script_executor_click(reference_prices_button_element)
        self.wait_for_ajax_spinner_load()

    def select_status_for_reference_prices_search(self, status_list):
        """
        Implementing select status for reference prices search functionality
        :param status_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.reference_prices_status_kendo_dropdown_locator, status_list)
        self.wait_for_ajax_spinner_load()

    def click_reference_prices_search_button(self):
        """
        Implementing click reference prices search button functionality
        :return:
        """
        reference_prices_search_button_element = self.wait().until(EC.element_to_be_clickable(self.reference_prices_search_button_locator), 'reference prices search button locator not found before specified time')
        self.script_executor_click(reference_prices_search_button_element)
        self.wait(300).until(EC.visibility_of_element_located(self.reference_prices_selected_text_locator), 'text locator not found before specified time')
        self.wait_for_ajax_spinner_load()
        global number_of_rows
        number_of_rows = int(self.get_number_of_rows_from_grid(self.reference_prices_div_bar_id))

    def set_status_for_reference_prices(self, status):
        """
        Implementing set status for reference prices functionality
        :param status:
        :return:
        """
        column_element = self.wait().until(EC.presence_of_element_located(self.reference_prices_status_column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) - 2
        first_row_column_locator = (By.XPATH, self.reference_prices_first_row_column_locator_string + "td[%s]/span[@class='k-grid-cell']" % str(column_index))
        first_row_column_element = self.wait().until(EC.presence_of_element_located(first_row_column_locator), 'column locator not found before specified time')
        self.script_executor_click(first_row_column_element)
        kendo_dropdown_locator = (By.XPATH, self.reference_prices_first_row_column_locator_string + "td[%s]/descendant::input" % str(column_index))
        self.single_selection_from_kendo_dropdown(kendo_dropdown_locator, status)
        self.wait_for_ajax_spinner_load()

    def click_reference_prices_save_changes_button(self):
        """
        Implementing click reference prices save changes button functionality
        :return:
        """
        save_changes_button_element = self.wait().until(EC.element_to_be_clickable(self.save_changes_button_locator), 'save changes button locator not found before specified time')
        save_changes_button_element.click()
        number_of_rows_after_saving = str(number_of_rows - 1)
        text_after_saving = "0 Reference Prices selected out of " + number_of_rows_after_saving
        text_locator_after_saving = (By.XPATH, "//span[contains(text(), '%s')]" % text_after_saving)
        self.wait(300).until(EC.visibility_of_element_located(text_locator_after_saving), 'text locator not found before specified time')
        self.wait_for_ajax_spinner_load()
        try:
            self.wait().until(EC.visibility_of_element_located(self.success_message_locator), 'success message locator not found before specified time')
            ok_button_element = self.wait().until(EC.element_to_be_clickable(self.ok_button_locator), 'ok button locator not found before specified time')
            self.wait_for_ajax_spinner_load()
            ok_button_element.click()
        except:
            pass
        self.wait_for_ajax_spinner_load()

    def click_reference_prices_bulk_edit_button(self):
        """
        Implementing click reference prices bulk edit button functionality
        :return:
        """
        self.click_element(self.reference_prices_bulk_edit_button_locator, True)
        self.wait().until(EC.visibility_of_element_located(self.reference_price_bulk_edit_title_locator))

    def select_reference_prices_grid_multiple_rows(self):
        """
        Implementing select reference prices grid multiple rows functionality
        :return:
        """
        for i in range(2):
            row_checkbox_locator = (By.XPATH, "(//div[contains(@id, '%s')]/descendant::div[@class='k-grid-content-locked']/descendant::tr[%s]/td[%s]/input[@type='checkbox'])" % (self.reference_prices_div_id, str(i+1), str(self.reference_prices_grid_checkbox_column_number)))
            row_checkbox_element = self.wait().until(EC.element_to_be_clickable(row_checkbox_locator), 'row checkbox locator not found beofre specified time out')
            row_checkbox_element.click()

    def set_note_for_bulk_edit(self):
        """
        Implementing set note for bulk edit functionality
        :return:
        """
        self.set_value_into_input_field(self.edit_note_textarea_locator, self.random_string_generator())

    def click_costs_page_search_button(self):
        """
        Implementing click costs page search button
        :return:
        """
        self.click_element(self.costs_page_search_button_locator, True)

    def click_upload_costs_button(self):
        """
        Implementing click upload costs button functionality
        :return:
        """
        upload_costs_button_element = self.wait().until(EC.element_to_be_clickable(self.upload_costs_button_locator), 'upload costs button locator not found before specified timeout')
        self.script_executor_click(upload_costs_button_element)
        self.wait_for_ajax_spinner_load()

    def set_cost_policy_for_upload(self, cost_policy):
        """
        Implementing set cost policy for upload functionality
        :param cost_policy:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.cost_policy_single_kendo_dropdown_locator, cost_policy)

    def click_costs_browse_button(self):
        """
        Implementing click costs browse button
        :return:
        """
        self.kill_all_opened_file_browsing_dialogs()
        costs_browse_button_element = self.wait().until(EC.element_to_be_clickable(self.browse_button_locator), 'browse button locator not found before specified timeout')
        costs_browse_button_element.click()
        self.wait_for_ajax_spinner_load()

    def click_completed_status_green_button(self):
        """
        Implementing click completed status green button
        :return:
        """
        completed_status_green_button_element = self.wait().until(EC.element_to_be_clickable(self.completed_status_green_button_locator), 'completed status green button locator not found before specified time out')
        completed_status_green_button_element.click()
        self.wait_for_ajax_spinner_load()

    def get_completed_jobs_count(self):
        """
        Implementing get completed jobs count
        :return:
        """
        jobs_grid_row_count_span_element = self.wait().until(EC.visibility_of_element_located(self.jobs_grid_row_count_span_locator), 'jobs grid row count span locator nor found before specified time out')
        count_span_text = jobs_grid_row_count_span_element.text
        count_span_text = count_span_text.split()
        global completed_jobs_count
        completed_jobs_count = count_span_text[2]
        return completed_jobs_count

    def click_upload_button(self):
        """
        Implementing click upload button functionality
        :return:
        """
        upload_button_element = self.wait().until(EC.element_to_be_clickable(self.upload_button_locator), 'upload button locator not found before specified timeout')
        upload_button_element.click()
        self.wait_for_ajax_spinner_load()
        try:
            self.wait().until(EC.visibility_of_element_located(self.upload_success_message_locator), 'upload success message locator not found before specified time')
            ok_button_element = self.wait().until(EC.element_to_be_clickable(self.ok_button_locator), 'ok button locator not found before specified time')
            self.wait_for_ajax_spinner_load()
            ok_button_element.click()
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def compare_completed_jobs_count_after_upload(self):
        """
        Implementing compare completed jobs count after upload
        :return:
        """
        global completed_jobs_count
        timeout = 900
        try:
            end_time = time.time() + timeout
            while (time.time() < end_time):
                self.wait(5)
                self.click_search_button()
                self.wait_for_ajax_spinner_load()
                jobs_grid_row_count_span_element = self.wait().until(EC.visibility_of_element_located(self.jobs_grid_row_count_span_locator),'jobs grid row count span locator nor found before specified time out')
                current_count = jobs_grid_row_count_span_element.text
                current_count = current_count.split()
                if (int(current_count[2]) > (int(completed_jobs_count))):
                    return True
        except:
            raise
        return False

    def select_price_overrides_tab(self):
        """
        Implementing select price overrides tab
        :return:
        """
        price_overrides_tab_element = self.wait().until(EC.element_to_be_clickable(self.price_overrides_tab_locator), 'price overrides tab locator not found before specified time out')
        price_overrides_tab_element.click()
        self.wait_for_ajax_spinner_load()

    def click_upload_price_overrides_button(self):
        """
        Implementing click upload price overrides button
        :return:
        """
        upload_price_overrides_button_element = self.wait().until(EC.element_to_be_clickable(self.upload_price_overrides_button_locator), 'upload price overrides button locator not found before specified time out')
        upload_price_overrides_button_element.click()
        self.wait_for_ajax_spinner_load()

    def click_price_overrides_completed_status_green_button(self):
        """
        Implementing click price overrides completed status green button
        :return:
        """
        price_overrides_completed_status_green_button_element = self.wait().until(EC.element_to_be_clickable(self.price_overrides_completed_status_green_button_locator), 'price overrides completed status green button locator not found before specified time out')
        price_overrides_completed_status_green_button_element.click()
        self.wait_for_ajax_spinner_load()

    def set_status(self, status_list):
        """
        Implementing set status functionality
        :param status_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.status_kendo_dropdown_locator, status_list)
        self.wait_for_ajax_spinner_load()

    def click_price_exceptions_search_button(self):
        """
        Implementing click price exceptions search button functionality
        :return:
        """
        self.click_element(self.price_exceptions_search_button_locator)

    def is_reference_prices_page_loaded_properly(self):
        """
        Implementing is reference prices page loaded properly functionality
        :return: True/False
        """
        return self.is_element_present(self.reference_prices_page_header_locator)

    def is_reference_prices_total_number_of_records_returned(self):
        """
        Implementing is reference prices total number of records returned functionality
        :return: True/False
        """
        return self.is_element_present(self.reference_prices_total_number_of_records_count_locator)

    def set_costs_number_plan(self, number_plan):
        """
        Implementing set costs number plan functionality
        :param number_plan:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.number_plan_dropdown_arrow_locator, number_plan)

    def click_cost_policy_grid_first_row_inline_action_button(self):
        """
        Implementing click cost policy grid first row inline action button functionality
        :return:
        """
        self.click_inline_action_button(self.cost_policy_div_id, None, self.grid_column_number, first_row=True)
        self.wait_for_ajax_spinner_load()

    def get_cost_policy_last_modified_date(self):
        """
        Implementing get cost policy last modified date functionality
        :return:
        """
        return self.get_text_from_element(self.cost_policy_last_modified_date_locator)

    def select_formulas_tab(self):
        """
        Implementing select formulas tab functionality
        :return:
        """
        self.select_static_tab(self.formulas_tab_locator, True)

    def get_cost_policy_formula_select_date(self):
        """
        Implementing get cost policy formula select date functionality
        :return: cost policy formula screen select date value
        """
        return self.get_text_from_element(self.cost_policy_formula_select_date_locator, is_a_input_field=True)

    def get_formula_begin_date(self):
        """
        Implementing get formula begin date functionality
        :return:
        """
        return self.get_text_from_element(self.formula_begin_date_locator, is_a_input_field=True)

    def close_create_cost_policy_destination_formula_screen(self):
        """
        Implementing close create cost policy destination formula screen functionality
        :return:
        """
        self.wait_for_ajax_spinner_load()
        self.click_element(self.cancel_button_locator, script_executor=True)

    def get_formulas_grid_begin_date_column_value(self):
        """
        Implementing get formulas grid begin date column value functionality
        :return: formulas grid begin date
        """
        self.formulas_grid_row_count = self.get_grid_row_count(self.formulas_grid_row_count_span_locator, 5)
        return self.get_specific_column_value_from_grid(self.cost_policies_formulas_grid_div_id, self.formulas_grid_row_count, self.begin_date_column_name)

    def get_formulas_grid_formula_column_value(self):
        """
        Implementing get formulas grid formula column value functionality
        :return: formula column value
        """
        formula_value = ""
        self.formulas_grid_row_count = self.get_grid_row_count(self.formulas_grid_row_count_span_locator, 5)
        formula_column_value =  self.get_specific_column_value_from_grid(self.cost_policies_formulas_grid_div_id, self.formulas_grid_row_count, self.formula_column_name)
        try:
            splitted_formula_value = formula_column_value.split(':')
            formula_value = splitted_formula_value[1].strip()
        except:
            formula_value = ""
        finally:
            return formula_value

    def select_user_defined_parameters_tab(self):
        """
        Implementing select user defined parameters tab functionality
        :return:
        """
        self.select_static_tab(self.user_defined_parameters_tab_locator, True)

    def get_user_defined_parameter_select_date(self):
        """
        Implementing get user defined parameter select date functionality
        :return:
        """
        return self.get_text_from_element(self.user_defined_parameter_select_date_locator, is_a_input_field=True)

    def get_user_defined_parameter_grid_value_column_value(self):
        """
        Implementing get user defined parameter grid value column value functionality
        :return: value column value
        """
        return self.get_specific_column_value_from_grid(self.user_defined_parameters_div_id, 5, self.value_column_name)

    def get_user_defined_parameter_grid_start_date_column_value(self):
        """
        Implementing get user defined parameter grid start date column value functionality
        :return: start column value
        """
        return self.get_specific_column_value_from_grid(self.user_defined_parameters_div_id, 5, self.start_date_column_name)

    def select_costs_tab(self):
        """
        Implementing select costs tab functionality
        :return:
        """
        self.select_static_tab(self.costs_tab_locator, True)

    def get_costs_tab_select_date_value(self):
        """
        Implementing get costs tab select date value functionality
        :return: select date value
        """
        return self.get_text_from_element(self.select_date_inputbox_locator, is_a_input_field=True)

    def get_active_on_date_value(self):
        """
        Implementing get active on date value functionality
        :return: active on date value
        """
        return self.get_text_from_element(self.active_on_date_locator)

    def click_cost_upload_link(self):
        """
        Implementing click cost upload link functionality
        :return:
        """
        self.click_element(self.cost_upload_link_locator, script_executor=True)

    def get_registry_from_date_value(self):
        """
        Implementing get registry from date functionality
        :return:
        """
        return self.get_text_from_element(self.registry_from_date_value_locator, is_a_input_field=True)

    def get_registry_to_date_value(self):
        """
        Implementing get registry to date functionality
        :return:
        """
        return self.get_text_from_element(self.registry_to_date_value_locator, is_a_input_field=True)

    def get_reg_date_time_column_value(self):
        """
        Implementing get reg date time column value functionality
        :return:
        """
        self.jobs_grid_row_count = self.get_grid_row_count(self.jobs_grid_row_count_span_locator, 2)
        return self.get_specific_column_value_from_grid(self.jobs_grid_div_id, self.jobs_grid_row_count, self.reg_date_time_column_name, self.jobs_grid_data_grid_name)

    def get_process_begin_date_time_column_value(self):
        """
        Implementing get process begin date time column value functionality
        :return:
        """
        self.jobs_grid_row_count = self.get_grid_row_count(self.jobs_grid_row_count_span_locator, 2)
        return self.get_specific_column_value_from_grid(self.jobs_grid_div_id, self.jobs_grid_row_count, self.process_begin_date_time_column_name, self.jobs_grid_data_grid_name)

    def get_process_end_date_time_column_value(self):
        """
        Implementing get process end date time column value functionality
        :return:
        """
        self.jobs_grid_row_count = self.get_grid_row_count(self.jobs_grid_row_count_span_locator, 2)
        return self.get_specific_column_value_from_grid(self.jobs_grid_div_id, self.jobs_grid_row_count, self.process_end_date_time_column_name, self.jobs_grid_data_grid_name)

    def get_price_policy_formulas_grid_begin_date_column_value(self):
        """
        Implementing get price policy formulas grid begin date column value functionality
        :return:
        """
        self.price_policy_formulas_grid_row_count = self.get_grid_row_count(self.price_policy_formulas_grid_row_count_span_locator, 5)
        return self.get_specific_column_value_from_grid(self.price_policies_formulas_grid_div_id, self.price_policy_formulas_grid_row_count, self.begin_date_column_name)

    def get_price_policy_formulas_grid_end_date_column_value(self):
        """
        Implementing get price policy formulas grid end date column value functionality
        :return:
        """
        self.price_policy_formulas_grid_row_count = self.get_grid_row_count(self.price_policy_formulas_grid_row_count_span_locator, 5)
        return self.get_specific_column_value_from_grid(self.price_policies_formulas_grid_div_id, self.price_policy_formulas_grid_row_count, self.end_date_column_name)

    def get_value_column_value_from_user_defined_parameters_grid(self):
        """
        Implementing get value column value from user defined parameters grid functionality
        :return:
        """
        return self.get_specific_column_value_from_grid(self.user_defined_parameters_div_id, 5, self.value_column_name)

    def get_start_date_column_value_from_user_defined_parameters_grid(self):
        """
        Implementing get start date column value from user defined parameters grid functionality
        :return:
        """
        return self.get_specific_column_value_from_grid(self.user_defined_parameters_div_id, 5, self.start_date_column_name)

    def get_price_overrides_grid_target_price_column_value(self):
        """
        Implementing get price overrides grid target price column value functionality
        :return:
        """
        self.price_overrides_grid_row_count = self.get_grid_row_count(self.price_overrides_grid_row_count_span_locator, 6)
        return self.get_specific_column_value_from_grid(self.price_overrides_grid_div_id, self.price_overrides_grid_row_count, self.target_price_column_name)

    def get_price_overrides_grid_begin_date_column_value(self):
        """
        Implementing get price overrides grid begin date column value functionality
        :return:
        """
        self.price_overrides_grid_row_count = self.get_grid_row_count(self.price_overrides_grid_row_count_span_locator, 6)
        return self.get_specific_column_value_from_grid(self.price_overrides_grid_div_id, self.price_overrides_grid_row_count, self.begin_date_column_name)

    def get_price_overrides_grid_end_date_column_value(self):
        """
        Implementing get price overrides grid end date column value functionality
        :return:
        """
        self.price_overrides_grid_row_count = self.get_grid_row_count(self.price_overrides_grid_row_count_span_locator, 6)
        return self.get_specific_column_value_from_grid(self.price_overrides_grid_div_id, self.price_overrides_grid_row_count, self.end_date_column_name)

    def select_price_dashboard(self):
        """
        Implementing select price dashboard functionality
        :return:
        """
        self.select_static_tab(self.price_dashboard_tab_locator, True)

    def click_compound_reference_price_list_link(self):
        """
        Implementing click compound reference price list link functionality
        :return:
        """
        self.click_element(self.compound_reference_price_list_link_locator, script_executor=True)

    def get_compound_reference_price_list_grid_begin_date_column_value(self):
        """
        Implementing get compound reference price list grid begin date column value functionality
        :return:
        """
        return self.get_specific_column_value_from_grid(self.compound_reference_price_list_grid, 5, self.begin_date_column_name)

    def get_compound_reference_price_list_grid_modified_date_column_value(self):
        """
        Implementing get compound reference price list grid modified date column value functionality
        :return:
        """
        return self.get_specific_column_value_from_grid(self.compound_reference_price_list_grid, 5, self.modified_date_column_name)

    def click_create_customer_price_list_link(self):
        """
        Implementing click create customer price list functionality
        :return:
        """
        self.click_element(self.create_customer_price_list_locator, script_executor=True)
        self.wait_for_ajax_spinner_load()

    def get_customer_price_list_offer_date(self):
        """
        Implementing get customer price list offer date functionality
        :return:
        """
        return self.get_text_from_element(self.offer_date_locator, is_a_input_field=True)

    def click_price_exceptions_grid_first_row_inline_action_button(self):
        """
        Implementing click price exceptions grid first row inline action button functionality
        :return:
        """
        global is_row_present
        price_exceptions_grid_row_count = self.get_grid_row_count(self.price_exceptions_grid_row_count_span_locator, 6)
        if int(price_exceptions_grid_row_count) > 0:
            inline_action_button_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::div[@class='k-grid-content-locked']/descendant::tbody/descendant::tr/td[%s]/span" % (self.price_exceptions_grid_div_id, str(self.price_exceptions_grid_inline_action_column_number)))
            self.click_element(inline_action_button_locator, True, True)
            is_row_present = True
        else:
            pass

    def select_pricing_exception_approve_inline_action_button(self):
        """
        Implementing select pricing exception approve inline action button functionality
        :return:
        """
        self.select_inline_action_item(self.approve_inline_item_name)
        try:
            self.wait().until(EC.visibility_of_element_located(self.pricing_exception_save_success_message_locator), 'pricing exception save success message locator not found before specified time')
            self.click_element(self.ok_button_locator)
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def get_created_new_cost_policy_name(self):
        """
        Implementing get created new cost policy name functionality
        :return: created_new_cost_policy_name
        """
        global created_new_cost_policy_name
        return created_new_cost_policy_name

    def set_value_in_cost_policy_column(self, value):
        """
        Implementing set value in cost policy column functionality
        :param value:
        :return:
        """
        value_column_element = self.wait().until( EC.presence_of_element_located(self.cost_policy_column_locator), 'value column locator not found before specified time out')
        column_index = int(value_column_element.get_attribute("data-index")) + 1
        first_row_value_column_locator = (By.XPATH, "//div[contains(@id, 'divUserDefinedParameters')]/descendant::div[@class='k-grid-content']/descendant::td[%s]/span" % str(column_index))
        first_row_value_column_element = self.wait().until( EC.element_to_be_clickable(first_row_value_column_locator), 'first row value column locator not found before specified time out')
        first_row_value_column_element.click()
        self.wait_for_ajax_spinner_load()
        first_row_value_column = client.Dispatch("WScript.Shell")
        first_row_value_column.SendKeys("^a")
        first_row_value_column.SendKeys("{DEL}")
        first_row_value_column.SendKeys(str(value))
        self.click_user_defined_parameters_page_header()

    def filter_price_policies_grid_price_policy_column(self, filter_item_text):
        """
        Implementing filter price policies grid price policy column functionality
        :param filter_item_text:
        :return:
        """
        self.grid_filter_with_textbox(self.price_policies_grid_div_id, self.price_policy_cloumn_name, filter_item_text)

    def click_price_policies_user_defined_parameters_header_for_inline_item(self):
        """
        Implementing click price policy user defined parameters page header for inline item functionality
        :return:
        """
        page_header_element = self.wait().until(EC.visibility_of_element_located(self.price_policies_user_defined_parameters_header_locator_for_inline_item), 'header locator not found before specified time')
        page_header_element.click()

    def set_value_in_parameter_column(self, column_name, column_value):
        """
        Implementing set value in parameter column functionality
        :param column_name:
        :param column_value:
        :return:
        """
        unique_string = self.random_string_generator(6)
        new_column_value = column_value + unique_string
        column_locator = (By.XPATH, "//th[@data-title='%s']" % column_name)
        column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) + 1
        first_row_column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::div[@class='k-grid-content']/descendant::td[%s]/input[@id='Parameter']" % (self.user_defined_parameters_div_id, str(column_index)))
        first_row_column_element = self.wait().until(EC.presence_of_element_located(first_row_column_locator), 'first row column locator not found before specified time out')
        self.script_executor_click(first_row_column_element)
        self.wait_for_ajax_spinner_load()
        first_row_column = client.Dispatch("WScript.Shell")
        first_row_column.SendKeys("^a")
        first_row_column.SendKeys("{DEL}")
        first_row_column.SendKeys(str(new_column_value))
        self.click_user_defined_parameters_page_header()

    def select_price_policy_formulas_grid_row_checkbox(self, list_of_cost_policy):
        """
        Implementing select price policy formulas grid row checkbox functionality
        :param list_of_cost_policy:
        :return:
        """
        for row in list_of_cost_policy:
            self.select_grid_row_checkbox(self.price_policies_formulas_grid_div_id, row, self.select_grid_row_checkbox_column_number)

    def select_price_policies_grid_row_checkbox(self, list_of_cost_policy):
        """
        Implementing select cost policy formulas grid row checkbox functionality
        :param list_of_cost_policy:
        :return:
        """
        for row in list_of_cost_policy:
            self.select_grid_row_checkbox(self.price_policies_grid_div_id, row, self.select_grid_row_checkbox_column_number)

    def is_view_cost_policy_page_loaded_properly(self):
        """
        Implementing is view cost policy page loaded properly functionality
        :return: True/False
        """
        is_loaded = self.is_element_present(self.view_cost_policy_page_header_locator)
        return is_loaded

    def get_available_reference_prices_count(self):
        """
        Implementing get available reference prices count
        :return:
        """
        reference_prices_grid_row_count_span_element = self.wait().until(EC.visibility_of_element_located(self.reference_prices_total_number_of_records_count_locator), 'price reference prices span locator nor found before specified time out')
        count_span_text = reference_prices_grid_row_count_span_element.text
        count_span_text = count_span_text.split()
        global available_reference_prices_count
        available_reference_prices_count = count_span_text[6]
        return available_reference_prices_count

    def compare_price_reference_prices_count_after_create(self, number_of_rows_to_add):
        """
        Implementing compare price reference prices count after create functionality
        :return:
        """
        global available_reference_prices_count
        timeout = 900
        try:
            end_time = time.time() + timeout
            while (time.time() < end_time):
                self.wait(5)
                self.click_search_button()
                self.wait_for_ajax_spinner_load()
                reference_prices_count_span_element = self.wait().until(EC.visibility_of_element_located(self.reference_prices_total_number_of_records_count_locator),'reference prices span locator nor found before specified time out')
                current_count = reference_prices_count_span_element.text
                current_count = current_count.split()
                if (int(current_count[6]) > (int(available_reference_prices_count) + int(number_of_rows_to_add))):
                    return True
        except:
            raise
        return False

    def compare_jobs_count_after_job_completed(self):
        """
        Implementing compare jobs count after job completed
        :return:
        """
        timeout = 900
        try:
            end_time = time.time() + timeout
            while (time.time() < end_time):
                self.wait(5)
                self.click_search_button()
                self.wait_for_ajax_spinner_load()
                current_count = self.get_grid_row_count(self.costs_grid_row_count_span_locator, 5)
                if (int(current_count) > 1):
                    return True
        except:
            raise
        return False

    def compare_jobs_count_after_price_overrides_completed(self):
        """
        Implementing compare jobs count after price overrides completed
        :return:
        """
        timeout = 900
        try:
            end_time = time.time() + timeout
            while (time.time() < end_time):
                self.wait(5)
                self.click_search_button()
                self.wait_for_ajax_spinner_load()
                current_count = self.get_grid_row_count(self.price_overrides_grid_row_count_span_locator, 6)
                if (int(current_count) > 1):
                    return True
        except:
            raise
        return False

    def set_cost_policies_grid_settings(self, grid_settings):
        """
        Implementing set cost policies grid settings functionality
        :param grid_settings:
        :return:
        """
        self.set_grid_settings(self.price_policies_grid_div_id, grid_settings)

    def get_all_rows_of_specific_column_from_cost_policies_grid(self, column_name):
        """
        Implementing get all rows of specific column from cost policies grid functionality
        :param column_name:
        :return: all_row_data
        """
        self.all_row_data = self.get_all_rows_of_specific_column_from_grid(self.price_policies_grid_div_id, column_name, self.get_grid_row_count(self.cost_policies_grid_row_count_span_locator, 6))
        return self.all_row_data

    def sort_cost_policies_grid_column(self, column_name, descending_order):
        """
        Implementing sort cost policies grid column functionality
        :param column_name:
        :param descending_order:
        :return:
        """
        self.sort_grid_column(self.price_policies_grid_div_id, column_name, descending_order)

    def set_compound_reference_price_list(self, compound_rpl_list):
        """
        Implementing set compound reference price list functionality
        :param compound_rpl_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.compound_reference_price_list_dropdown_locator, compound_rpl_list)

    def compare_compound_reference_price_list_grid_first_row_data(self, compound_rpl):
        """
        Implementing compare compound reference price list grid first row data functionality
        :param compound_rpl:
        :return: True/False
        """
        status = False
        grid_compound_rpl = self.get_specific_column_value_from_grid(self.compound_reference_price_list_grid, 5, self.compound_reference_price_list_column_name)
        if compound_rpl == grid_compound_rpl:
            status = True
        return status

    def set_compound_reference_price_list_grid_settings(self, grid_settings):
        """
        Implementing set compound reference price list grid settings functionality
        :param grid_settings:
        :return:
        """
        self.set_grid_settings(self.compound_reference_price_list_grid, grid_settings)

    def get_all_rows_of_specific_column_from_compound_reference_price_list_grid(self, column_name):
        """
        Implementing get all rows of specific column from compound reference price list grid functionality
        :param column_name:
        :return: all_row_data
        """
        self.all_row_data = self.get_all_rows_of_specific_column_from_grid(self.compound_reference_price_list_grid, column_name, self.get_grid_row_count(self.compound_reference_price_list_grid_row_count_span_locator, 5))
        return self.all_row_data

    def sort_compound_reference_price_list_grid_column(self, column_name, descending_order):
        """
        Implementing sort compound reference price list grid column functionality
        :param column_name:
        :param descending_order:
        :return:
        """
        self.sort_grid_column(self.compound_reference_price_list_grid, column_name, descending_order)

    def compare_sorted_data(self, unsorted_data, descending_order):
        """
        Implementing compare sorted data functionality
        :param unsorted_data:
        :param descending_order:
        :return: True/False
        """
        sorted_data = []
        self.all_row_data = [x.lower() for x in self.all_row_data]
        if descending_order:
            sorted_data = sorted([x.lower() for x in unsorted_data], reverse=True)
        else:
            sorted_data = sorted([x.lower() for x in unsorted_data])
        if sorted_data == self.all_row_data:
            return True
        else:
            return False

    def get_cost_policies_grid_column_names_by_order(self):
        """
        Implementing get cost policies grid column names by order functionality
        :return: column_name_list
        """
        self.column_name_list = self.get_grid_column_names_by_order(self.price_policies_grid_div_id)
        return self.column_name_list

    def drag_cost_policies_grid_column(self, source_column, destination_column):
        """
        Implementing drag cost policies grid column functionality
        :param source_column:
        :param destination_column:
        :return:
        """
        self.drag_grid_column(self.price_policies_grid_div_id, source_column, destination_column)

    def get_compound_reference_price_list_grid_column_names_by_order(self):
        """
        Implementing get compound reference price list grid column names by order functionality
        :return: column_name_list
        """
        self.column_name_list = self.get_grid_column_names_by_order(self.compound_reference_price_list_grid)
        return self.column_name_list

    def drag_compound_reference_price_list_grid_column(self, source_column, destination_column):
        """
        Implementing drag compound reference price list grid column functionality
        :param source_column:
        :param destination_column:
        :return:
        """
        self.drag_grid_column(self.compound_reference_price_list_grid, source_column, destination_column)

    def compare_grid_column_position_after_altering(self, source_column, destination_column, previous_column_name_list):
        """
        Implementing compare grid column position after altering functionality
        :param source_column:
        :param destination_column:
        :param previous_column_name_list:
        :return: True/False
        """
        destination_column_position = 0
        for i in range(len(previous_column_name_list)):
            if previous_column_name_list[i] == destination_column:
                destination_column_position = i
                break
        if self.column_name_list[destination_column_position] == source_column:
            return True
        else:
            return False

    def click_cost_policies_grid_export_to_excel_button(self):
        """
        Implementing click cost policies grid export to excel button functionality
        :return:
        """
        self.click_grid_export_to_excel_button(self.price_policies_grid_div_id)

    def set_cost_policy_formulas_grid_settings(self, grid_settings):
        """
        Implementing set cost policy formulas grid settings functionality
        :param grid_settings:
        :return:
        """
        grid_settings_menu_locator = (By.XPATH, "//div[contains(@id, 'divPricePolicyFormulas')]/descendant::span[@class='k-link']/descendant::span[@class='k-icon k-i-arrow-s']")
        grid_settings_menu_element = self.wait().until(EC.presence_of_element_located(grid_settings_menu_locator), 'grid settings menu locator not found before specified time out')
        self.hover(grid_settings_menu_element)
        self.wait_for_ajax_spinner_load()
        grid_setting_locator = (By.XPATH, "//div[contains(@id, 'divPricePolicyFormulas')]/descendant::span[text()='%s']" % grid_settings)
        self.click_element(grid_setting_locator)

    def get_all_rows_of_specific_column_from_cost_policy_formulas_grid(self, column_name):
        """
        Implementing get all rows of specific column from cost policy formulas grid functionality
        :param column_name:
        :return: all_row_data
        """
        self.all_row_data = self.get_all_rows_of_specific_column_from_grid(self.cost_policies_formulas_grid_div_id, column_name, self.get_grid_row_count(self.formulas_grid_row_count_span_locator, 5))
        return self.all_row_data

    def sort_cost_policy_formulas_grid_column(self, column_name, descending_order):
        """
        Implementing sort cost policy formulas grid column functionality
        :param column_name:
        :param descending_order:
        :return:
        """
        self.sort_grid_column(self.cost_policies_formulas_grid_div_id, column_name, descending_order)

    def get_cost_policy_formulas_grid_column_names_by_order(self):
        """
        Implementing get cost policy formulas grid column names by order functionality
        :return: column_name_list
        """
        self.column_name_list = self.get_grid_column_names_by_order(self.cost_policies_formulas_grid_div_id)
        return self.column_name_list

    def drag_cost_policy_formulas_grid_column(self, source_column, destination_column):
        """
        Implementing drag cost policy formulas grid column functionality
        :param source_column:
        :param destination_column:
        :return:
        """
        self.drag_grid_column(self.cost_policies_formulas_grid_div_id, source_column, destination_column)

    def click_cost_policy_formulas_grid_export_to_excel_button(self):
        """
        Implementing click cost policy formulas grid export to excel button functionality
        :return:
        """
        grid_settings_menu_locator = (By.XPATH, "//div[contains(@id, 'divPricePolicyFormulas')]/descendant::span[@class='k-link']/descendant::span[@class='k-icon k-i-arrow-s']")
        self.click_element(grid_settings_menu_locator)

    def set_cost_policies_user_defined_parameters_grid_settings(self, grid_settings):
        """
        Implementing set cost policies user defined parameters grid settings functionality
        :param grid_settings:
        :return:
        """
        self.set_grid_settings(self.user_defined_parameters_div_id, grid_settings)

    def get_all_rows_of_specific_column_from_cost_policies_user_defined_parameters_grid(self, column_name):
        """
        Implementing get all rows of specific column from cost policies user defined parameters grid functionality
        :param column_name:
        :return: all_row_data
        """
        self.all_row_data = self.get_all_rows_of_specific_column_from_grid(self.user_defined_parameters_div_id, column_name, self.get_grid_row_count(self.cost_policies_user_defined_parameters_grid_row_count_span_locator, 5))
        return self.all_row_data

    def sort_cost_policies_user_defined_parameters_grid_column(self, column_name, descending_order):
        """
        Implementing sort cost policies user defined parameters grid column functionality
        :param column_name:
        :param descending_order:
        :return:
        """
        self.sort_grid_column(self.user_defined_parameters_div_id, column_name, descending_order)

    def get_cost_policies_user_defined_parameters_grid_column_names_by_order(self):
        """
        Implementing get cost policies user defined parameters grid column names by order functionality
        :return: column_name_list
        """
        self.column_name_list = self.get_grid_column_names_by_order(self.user_defined_parameters_div_id)
        return self.column_name_list

    def drag_cost_policies_user_defined_parameters_grid_column(self, source_column, destination_column):
        """
        Implementing drag cost policies user defined parameters grid column functionality
        :param source_column:
        :param destination_column:
        :return:
        """
        self.drag_grid_column(self.user_defined_parameters_div_id, source_column, destination_column)

    def click_cost_policies_user_defined_parameters_grid_export_to_excel_button(self):
        """
        Implementing click cost policies user defined parameters grid export to excel button functionality
        :return:
        """
        self.click_grid_export_to_excel_button(self.user_defined_parameters_div_id)

    def set_cost_policies_costs_grid_settings(self, grid_settings):
        """
        Implementing set cost policies costs grid settings functionality
        :param grid_settings:
        :return:
        """
        self.set_grid_settings(self.cost_policies_costs_div_id, grid_settings)

    def get_all_rows_of_specific_column_from_cost_policies_costs_grid(self, column_name):
        """
        Implementing get all rows of specific column from cost policies costs grid functionality
        :param column_name:
        :return: all_row_data
        """
        self.all_row_data = self.get_all_rows_of_specific_column_from_grid(self.cost_policies_costs_div_id, column_name, self.get_grid_row_count(self.costs_grid_row_count_span_locator, 5))
        return self.all_row_data

    def sort_cost_policies_costs_grid_column(self, column_name, descending_order):
        """
        Implementing sort cost policies costs grid column functionality
        :param column_name:
        :param descending_order:
        :return:
        """
        self.sort_grid_column(self.cost_policies_costs_div_id, column_name, descending_order)

    def get_cost_policies_costs_grid_column_names_by_order(self):
        """
        Implementing get cost policies costs grid column names by order functionality
        :return: column_name_list
        """
        self.column_name_list = self.get_grid_column_names_by_order(self.cost_policies_costs_div_id)
        return self.column_name_list

    def drag_cost_policies_costs_grid_column(self, source_column, destination_column):
        """
        Implementing drag cost policies costs grid column functionality
        :param source_column:
        :param destination_column:
        :return:
        """
        self.drag_grid_column(self.cost_policies_costs_div_id, source_column, destination_column)

    def click_cost_policies_costs_grid_export_to_excel_button(self):
        """
        Implementing click cost policies costs grid export to excel button functionality
        :return:
        """
        self.click_grid_export_to_excel_button(self.cost_policies_costs_div_id)

    def select_price_policy_formulas_tab(self):
        """
        Implementing select price policy formulas tab
        :return:
        """
        price_overrides_tab_element = self.wait().until(EC.element_to_be_clickable(self.price_policy_formulas_tab_locator), 'formulas tab locator not found before specified time out')
        price_overrides_tab_element.click()
        self.wait_for_ajax_spinner_load()

    def set_price_overrides_grid_settings(self, grid_settings):
        """
        Implementing set price overrides grid settings functionality
        :param grid_settings:
        :return:
        """
        self.set_grid_settings(self.price_overrides_grid_div_id, grid_settings)

    def get_all_rows_of_specific_column_from_price_overrides_grid(self, column_name):
        """
        Implementing get all rows of specific column from price overrides grid functionality
        :param column_name:
        :return: all_row_data
        """
        self.all_row_data = self.get_all_rows_of_specific_column_from_grid(self.price_overrides_grid_div_id, column_name, self.get_grid_row_count(self.price_overrides_grid_row_count_span_locator, 6))
        return self.all_row_data

    def sort_price_overrides_grid_column(self, column_name, descending_order):
        """
        Implementing sort price overrides grid column functionality
        :param column_name:
        :param descending_order:
        :return:
        """
        self.sort_grid_column(self.price_overrides_grid_div_id, column_name, sort_descending=descending_order)

    def get_price_overrides_grid_column_names_by_order(self):
        """
        Implementing get price overrides grid column names by order functionality
        :return: column_name_list
        """
        self.column_name_list = self.get_grid_column_names_by_order(self.price_overrides_grid_div_id)
        return self.column_name_list

    def drag_price_overrides_grid_column(self, source_column, destination_column):
        """
        Implementing drag price overrides grid column functionality
        :param source_column:
        :param destination_column:
        :return:
        """
        self.drag_grid_column(self.price_overrides_grid_div_id, source_column, destination_column)

    def click_price_overrides_grid_export_to_excel_button(self):
        """
        Implementing click price overrides grid export to excel button functionality
        :return:
        """
        self.click_grid_export_to_excel_button(self.price_overrides_grid_div_id)

    def set_reference_prices_grid_settings(self, grid_settings):
        """
        Implementing set reference prices grid settings functionality
        :param grid_settings:
        :return:
        """
        self.set_grid_settings(self.reference_prices_div_id, grid_settings)

    def get_all_rows_of_specific_column_from_reference_prices_grid(self, column_name):
        """
        Implementing get all rows of specific column from reference prices grid functionality
        :param column_name:
        :return: all_row_data
        """
        row_count = int(self.get_grid_row_count(self.reference_prices_total_number_of_records_count_locator, 6))
        self.all_row_data = []
        next_page = False
        column_locator = (By.XPATH, "//div[contains(@id, 'divPRPGrid')]/descendant::th[@data-title='%s']" %  column_name)
        column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) + 1
        row = 1
        try:
            while row < row_count+1:
                column_value_locator = (By.XPATH, "//div[contains(@id, 'divPRPGrid')]/descendant::div[@class='k-grid-content-locked']/descendant::tbody/tr[%s]/td[%s]/span" % (row, str(column_index)))
                column_value_element = self.wait(10).until(EC.presence_of_element_located(column_value_locator), 'column value locator not found before specified time out')
                column_value = str(column_value_element.get_attribute("innerHTML"))
                if column_value not in self.all_row_data:
                    self.all_row_data.append(column_value)
                else:
                    row_count += 1
                if row % 50 == 0:
                    next_page = True
                    next_page_button_locator = (By.XPATH, "//div[contains(@id, 'divPRPGrid')]/descendant::span[@class='k-icon k-i-arrow-e']")
                    self.click_element(next_page_button_locator, True)
                    row = 0
                    row_count -= 50
                row += 1
        except:
            pass
        if next_page is True:
            first_page_button_locator = (By.XPATH, "//div[contains(@id, 'divPRPGrid')]/descendant::span[@class='k-icon k-i-seek-w']")
            self.click_element(first_page_button_locator, True)
        return self.all_row_data

    def sort_reference_prices_grid_column(self, column_name, descending_order):
        """
        Implementing sort reference prices grid column functionality
        :param column_name:
        :param descending_order:
        :return:
        """
        self.sort_grid_column(self.reference_prices_div_id, column_name, sort_descending=descending_order)

    def get_reference_prices_grid_column_names_by_order(self):
        """
        Implementing get reference prices grid column names by order functionality
        :return: column_name_list
        """
        self.column_name_list = self.get_grid_column_names_by_order(self.reference_prices_div_id)
        return self.column_name_list

    def drag_reference_prices_grid_column(self, source_column, destination_column):
        """
        Implementing drag reference prices grid column functionality
        :param source_column:
        :param destination_column:
        :return:
        """
        self.drag_grid_column(self.reference_prices_div_id, source_column, destination_column)

    def click_reference_prices_grid_export_to_excel_button(self):
        """
        Implementing click reference prices grid export to excel button functionality
        :return:
        """
        self.click_grid_export_to_excel_button(self.reference_prices_div_id)

    def compare_grid_column_position_after_altering_for_reference_prices(self, source_column, destination_column, previous_column_name_list):
        """
        Implementing compare grid column position after altering for reference prices functionality
        :param source_column:
        :param destination_column:
        :param previous_column_name_list:
        :return: True/False
        """
        destination_column_position = 0
        for i in range(len(previous_column_name_list)):
            if previous_column_name_list[i] == destination_column:
                destination_column_position = i
                break
        if self.column_name_list[destination_column_position] == source_column:
            return True
        else:
            return False

    def set_price_policies_udp_grid_settings(self, grid_settings):
        """
        Implementing set price policies udp grid settings functionality
        :param grid_settings:
        :return:
        """
        self.set_grid_settings(self.user_defined_parameters_div_id, grid_settings)

    def get_all_rows_of_specific_column_from_price_policies_udp_grid(self, column_name):
        """
        Implementing get all rows of specific column from price policies udp grid functionality
        :param column_name:
        :return: all_row_data
        """
        self.all_row_data = self.get_all_rows_of_specific_column_from_grid(self.user_defined_parameters_div_id, column_name, self.get_grid_row_count(self.cost_policies_user_defined_parameters_grid_row_count_span_locator, 5))
        return self.all_row_data

    def sort_price_policies_udp_grid_column(self, column_name, descending_order):
        """
        Implementing sort price policies udp grid column functionality
        :param column_name:
        :param descending_order:
        :return:
        """
        self.sort_grid_column(self.user_defined_parameters_div_id, column_name, descending_order)

    def get_price_policies_udp_grid_column_names_by_order(self):
        """
        Implementing get price policies udp grid column names by order functionality
        :return: column_name_list
        """
        self.column_name_list = self.get_grid_column_names_by_order(self.user_defined_parameters_div_id)
        return self.column_name_list

    def drag_price_policies_udp_grid_column(self, source_column, destination_column):
        """
        Implementing drag price policies udp grid column functionality
        :param source_column:
        :param destination_column:
        :return:
        """
        self.drag_grid_column(self.user_defined_parameters_div_id, source_column=source_column, destination_column=destination_column)

    def click_price_policies_udp_grid_export_to_excel_button(self):
        """
        Implementing click price policies udp grid export to excel button functionality
        :return:
        """
        self.click_grid_export_to_excel_button(self.user_defined_parameters_div_id)

    def click_compound_reference_price_list_grid_export_to_excel_button(self):
        """
        Implementing click compound reference price list grid export to excel button functionality
        :return:
        """
        self.click_grid_export_to_excel_button(self.compound_reference_price_list_grid)

    def select_multiple_rows_from_compound_reference_price_list_grid(self):
        """
        Implementing select multiple rows from compound reference price list grid functionality
        :return:
        """
        for i in range(2):
            compound_reference_price_list_grid_checkbox_locator = (By.XPATH,"(//div[@data-grid-name='CRPLGrid']/descendant::input[@type='checkbox'])[%s]" % str(i+2))
            self.click_element(compound_reference_price_list_grid_checkbox_locator, True)

    def click_compound_reference_price_list_bulk_edit_button(self):
        """
        Implementing click compound reference price list bulk edit button functionality
        :return:
        """
        self.click_element(self.compound_reference_price_list_bulk_edit_button_locator, True)
        self.wait_for_ajax_spinner_load()

    def click_origin_reference_price_list_link(self):
        """
        Implementing click origin reference price list link functionality
        :return:
        """
        self.click_element(self.origin_reference_price_list_link_locator, script_executor=True)

    def get_all_rows_of_specific_column_from_origin_reference_price_list_grid(self, column_name):
        """
        Implementing get all rows of specific column from origin reference price list grid functionality
        :param column_name:
        :return: all_row_data
        """
        self.all_row_data = self.get_all_rows_of_specific_column_from_grid(self.origin_reference_price_list_grid, column_name, self.get_grid_row_count(self.origin_reference_price_list_grid_row_count_span_locator, 2))
        return self.all_row_data

    def sort_origin_reference_price_list_grid_column(self, column_name, descending_order):
        """
        Implementing sort origin reference price list grid column functionality
        :param column_name:
        :param descending_order:
        :return:
        """
        self.sort_grid_column(self.origin_reference_price_list_grid, column_name, descending_order)

    def get_origin_reference_price_list_grid_column_names_by_order(self):
        """
        Implementing get origin reference price list grid column names by order functionality
        :return: column_name_list
        """
        self.column_name_list = self.get_grid_column_names_by_order(self.origin_reference_price_list_grid)
        return self.column_name_list

    def drag_origin_reference_price_list_grid_column(self, source_column, destination_column):
        """
        Implementing drag origin reference price list grid column functionality
        :param source_column:
        :param destination_column:
        :return:
        """
        self.drag_grid_column(self.origin_reference_price_list_grid, source_column, destination_column)

    def set_origin_reference_price_list_grid_settings(self, grid_settings):
        """
        Implementing set origin reference price list grid settings functionality
        :param grid_settings:
        :return:
        """
        self.set_grid_settings(self.origin_reference_price_list_grid, grid_settings)

    def click_origin_reference_price_list_grid_export_to_excel_button(self):
        """
        Implementing click origin reference price list grid export to excel button functionality
        :return:
        """
        self.click_grid_export_to_excel_button(self.origin_reference_price_list_grid)

    def click_customer_price_exception_request_link(self):
        """
        Implementing click customer price exception request link functionality
        :return:
        """
        self.click_element(self.customer_price_exception_request_link_locator, script_executor=True)

    def set_customer_price_exception_request_grid_settings(self, grid_settings):
        """
        Implementing set customer price exception request grid settings functionality
        :param grid_settings:
        :return:
        """
        self.set_grid_settings(self.customer_price_exception_request_grid_div_id, grid_settings)

    def get_all_rows_of_specific_column_from_customer_price_exception_request_grid(self, column_name):
        """
        Implementing get all rows of specific column from customer price exception request grid functionality
        :param column_name:
        :return: all_row_data
        """
        self.all_row_data = self.get_all_rows_of_specific_column_from_grid(self.customer_price_exception_request_grid_div_id, column_name, self.get_grid_row_count(self.customer_price_exception_request_grid_row_count_span_locator, 6))
        return self.all_row_data

    def sort_customer_price_exception_request_grid_column(self, column_name, descending_order):
        """
        Implementing sort customer price exception request grid column functionality
        :param column_name:
        :param descending_order:
        :return:
        """
        self.sort_grid_column(self.customer_price_exception_request_grid_div_id, column_name, descending_order)

    def get_customer_price_exception_request_grid_column_names_by_order(self):
        """
        Implementing get customer price exception request grid column names by order functionality
        :return: column_name_list
        """
        self.column_name_list = self.get_grid_column_names_by_order(self.customer_price_exception_request_grid_div_id)
        return self.column_name_list

    def drag_customer_price_exception_request_grid_column(self, source_column, destination_column):
        """
        Implementing drag customer price exception request grid column functionality
        :param source_column:
        :param destination_column:
        :return:
        """
        self.drag_grid_column(self.customer_price_exception_request_grid_div_id, source_column, destination_column)

    def click_customer_price_exception_request_grid_export_to_excel_button(self):
        """
        Implementing click customer price exception request grid export to excel button functionality
        :return:
        """
        self.click_grid_export_to_excel_button(self.customer_price_exception_request_grid_div_id)

    def select_multiple_rows_from_customer_price_exception_request_grid(self):
        """
        Implementing select multiple rows from customer price exception request grid functionality
        :return:
        """
        for i in range(2):
            customer_price_exception_request_grid_checkbox_locator = (By.XPATH,"(//div[@data-grid-name='PricingExceptionsGrid']/descendant::input[@type='checkbox'])[%s]" % str(i+2))
            self.click_element(customer_price_exception_request_grid_checkbox_locator, True)

    def click_customer_price_exception_request_grid_bulk_edit_button(self):
        """
        Implementing click customer price exception request grid bulk edit button functionality
        :return:
        """
        bulk_edit_button_element = self.wait().until(EC.element_to_be_clickable(self.customer_price_exception_request_grid_bulk_edit_button_locator), 'bulk edit button locator not found before specified time out')
        bulk_edit_button_element.click()
        self.wait_for_ajax_spinner_load()

    def select_multiple_rows_from_origin_reference_price_list_grid(self):
        """
        Implementing select multiple rows from origin reference price list grid functionality
        :return:
        """
        for i in range(2):
            origin_reference_price_list_grid_checkbox_locator = (By.XPATH,"(//div[@data-grid-name='OriginRPLGrid']/descendant::input[@type='checkbox'])[%s]" % str(i+2))
            self.click_element(origin_reference_price_list_grid_checkbox_locator, True)

    def click_origin_reference_price_list_grid_bulk_edit_button(self):
        """
        Implementing click origin reference price list grid bulk edit button functionality
        :return:
        """
        self.click_element(self.origin_reference_price_list_grid_bulk_edit_button_locator, script_executor=True, error_message='bulk edit button locator not found before specified time out')

    def set_reference_price_list(self, item):
        """
        Implementing set reference price list functionality
        :param item:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.reference_price_list_dropdown_arrow_locator, item)
        self.wait_for_ajax_spinner_load()

    def set_compound_rpl_begin_date(self):
        """
        Implementing set compound rpl begin date functionality
        :return:
        """
        self.set_value_into_input_field(self.begin_date_inputbox_locator, self.get_future_date())
        self.click_element(self.bulk_edit_header_locator)

    def set_origin_reference_price_list(self, item):
        """
        Implementing set origin reference price list functionality
        :param item:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.origin_reference_price_list_dropdown_arrow_locator, item)
        self.wait_for_ajax_spinner_load()

    def click_add_new_origin_rpl_button(self):
        """
        Implementing click add new origin rpl button functionality
        :return:
        """
        # add_new_origin_rpl_button_element = self.wait().until(EC.presence_of_element_located(self.add_new_origin_rpl_button_locator), 'formulas button locator not found before specified time out')
        # self.script_executor_click(add_new_origin_rpl_button_element)
        self.click_element(self.add_new_origin_rpl_button_locator)
        self.wait_for_ajax_spinner_load()

    def set_add_new_origin_rpl_destination(self, item):
        """
        Implementing set add new origin rpl destination functionality
        :param item:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.add_new_origin_rpl_destination_dropdown_arrow_locator, item)
        self.wait_for_ajax_spinner_load()

    def set_add_new_origin_rpl_origin_set(self, item):
        """
        Implementing set add new origin rpl origin set functionality
        :param item:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.add_new_origin_rpl_origin_set_dropdown_arrow_locator, item)
        self.wait_for_ajax_spinner_load()

    def set_add_new_origin_rpl_rating_method(self, item):
        """
        Implementing set add new origin rpl rating method functionality
        :param item:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.add_new_origin_rpl_rating_method_dropdown_arrow_locator, item)
        self.wait_for_ajax_spinner_load()

    def click_add_new_origin_rpl_page_search_button(self):
        """
        Implementing click add new origin rpl page search button functionality
        :return:
        """
        self.click_element(self.add_new_origin_rpl_page_search_button_locator, True)

    def set_add_new_origin_rpl_rate_values(self):
        """
        Implementing set add new origin rpl rate values functionality
        :return:
        """
        column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::th[@data-title='%s']" % (self.rates_grid_div_id, self.rate_column_name))
        column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) + 1
        row_column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::div[@class='k-grid-content']/descendant::tr/td[%s]/descendant::input[contains(@class, 'k-formatted-value')]" % (self.rates_grid_div_id, str(column_index)))
        row_column_elements = self.wait().until(EC.presence_of_all_elements_located(row_column_locator), 'row column locator not found before specified time out')
        random_number = randint(10, 99)
        for row in range(len(row_column_elements)):
            rate_row_column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::div[@class='k-grid-content']/descendant::tr[%s]/td[%s]/descendant::input" % (self.rates_grid_div_id, str(row+1), str(column_index)))
            self.set_value_into_input_field(rate_row_column_locator, str(random_number), True)
            random_number = random_number - 5
            self.click_element(self.new_origin_rate_note_textbox_locator)

    def select_origin_reference_price_list_grid_row_checkbox(self):
        """
        Implementing select origin reference price list grid row checkbox functionality
        :return:
        """
        self.select_grid_row_checkbox(self.origin_reference_price_list_grid_div_id, row_identifier_text=None, column_number=self.grid_column_number, first_row=True)

    def click_origin_rpl_delete_button(self):
        """
        Implementing click origin rpl delete button functionality
        :return:
        """
        origin_rpl_delete_button_element = self.wait().until(EC.presence_of_element_located(self.origin_rpl_delete_button_locator), 'delete button locator not found before specified time out')
        self.script_executor_click(origin_rpl_delete_button_element)
        self.wait_for_ajax_spinner_load()
        try:
            self.wait().until(EC.presence_of_element_located(self.confirmation_message_locator), 'confirmation popup locator not found before specified time')
            self.click_element(self.ok_button_locator)
            self.wait().until(EC.presence_of_element_located(self.delete_origin_rpl_success_message_locator), 'confirmation popup locator not found before specified time')
            self.click_element(self.ok_button_locator)
        except:
            raise

    def click_origin_rpl_save_button(self):
        """
        Implementing click save origin rpl save button functionality
        :return:
        """
        save_origin_rpl_button_element = self.wait().until(EC.element_to_be_clickable(self.save_origin_rpl_button_locator), 'save cost policy button locator not found before specified time')
        save_origin_rpl_button_element.click()
        self.wait_for_ajax_spinner_load()
        try:
            self.wait().until(EC.presence_of_element_located(self.success_message_locator), 'success popup locator not found before specified time')
            self.click_element(self.ok_button_locator)
        except:
            raise

    def select_cost_policies_grid_first_row_checkbox(self):
        """
        Implementing set reference price list functionality
        :return:
        """
        self.select_grid_row_checkbox(self.price_policies_grid_div_id, None, self.select_grid_row_checkbox_column_number, first_row=True)
        self.first_row_cost_policy = self.get_specific_column_value_from_grid(self.price_policies_grid_div_id, self.get_grid_row_count(self.cost_policies_grid_row_count_span_locator, 6), self.cost_policy_column_name)

    def is_cost_policy_preselected(self):
        """
        Implementing is cost policy preselected functionality
        :return: True/False
        """
        is_preselected = False
        cost_policy_dropdown_item_locator = (By.XPATH, "//ul[contains(@id, 'cmbCPCCostPolicy')]/descendant::span[text()='%s']" % self.first_row_cost_policy)
        if self.is_element_present(cost_policy_dropdown_item_locator):
            is_preselected = True
        return is_preselected

    def is_cost_policy_preselected_in_upload_costs(self):
        """
        Implementing is cost policy preselected in upload costs functionality
        :return: True/False
        """
        is_preselected = False
        cost_policy_dropdown_item_locator = (By.XPATH, "//div[@id='CostsUploadDialogWindow']/descendant::span[text()='Cost Policy']/../../descendant::span[@class='k-input' and text()='%s']" % self.first_row_cost_policy)
        if self.is_element_present(cost_policy_dropdown_item_locator):
            is_preselected = True
        return is_preselected

    def is_apply_custom_rules_present(self):
        """
        Implementing is apply custom rules present functionality
        :return: True/False
        """
        is_present = False
        if self.is_element_present(self.apply_custom_rules_span_locator) is True and self.is_element_present(self.custom_rule_yes_radio_button_locator) is True and self.is_element_present(self.custom_rule_no_radio_button_locator) is True:
            is_present = True
        return is_present

    def click_reference_prices_save_changes_button_without_custom_rule(self):
        """
        Implementing click reference prices save changes button without custom rule functionality
        :return:
        """
        self.click_element(self.save_changes_button_locator)
        try:
            self.wait().until(EC.visibility_of_element_located(self.custom_rule_error_message_locator), 'custom rule error message locator message locator not found before specified time')
            self.click_element(self.ok_button_locator)
        except:
            raise

    def click_custom_rule_yes_radio_button(self):
        """
        Implementing click custom rule yes radio button functionality
        :return:
        """
        self.click_element(self.custom_rule_yes_radio_button_locator)

    def set_begin_date_with_future_date(self):
        """
        Implementing set begin date with future date functionality
        :return:
        """
        self.set_value_into_input_field(self.begin_date_inputbox_locator, self.get_date(future_date=True))
        self.click_element(self.begin_date_inputbox_locator)

    def set_cost_forecast_report_route_class(self, route_class_list):
        """
        Implementing set cost forecast report route class functionality
        :param route_class_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.route_class_kendo_dropdown_locator, route_class_list)
        self.click_element(self.cost_forecast_report_parameters_popup_header_locator)
        self.wait_for_ajax_spinner_load()

    def set_cost_forecast_report_call_type(self, call_type_list):
        """
        Implementing set cost forecast report call type functionality
        :param call_type_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.call_type_kendo_dropdown_locator, call_type_list)
        self.click_element(self.cost_forecast_report_parameters_popup_header_locator)
        self.wait_for_ajax_spinner_load()

    def set_cost_forecast_report_routing_destination(self, routing_destination_prefix):
        """
        Implementing set cost forecast report routing destination functionality
        :param routing_destination_prefix:
        :return:
        """
        routing_destination = routing_destination_prefix + self.random_string_generator(6)
        self.set_value_into_input_field(self.routing_destination_textbox_locator, routing_destination)
        return routing_destination

    def get_cost_forecast_report_parameters_text(self, parameter_name):
        """
        Implementing get cost forecast report parameters text functionality
        :param parameter_name:
        :return: text
        """
        td_text_locator = (By.XPATH, "//td[contains(text(), '%s')]/../descendant::td[2]" % parameter_name)
        td_text_element = self.wait().until(EC.presence_of_element_located(td_text_locator), 'td text locator not found before specified time out')
        return td_text_element.text

    def click_country_groups_link(self):
        """
        Implementing click country groups link functionality
        :return:
        """
        self.click_element(self.country_groups_locator)

    def click_create_country_group_button(self):
        """
        Implementing click create country group button functionality
        :return:
        """
        self.click_element(self.create_country_group_button_locator)

    def set_country_group_scope(self, country_group_scope_name):
        """
        Implementing set country group scope functionality
        :param country_group_scope_name:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.country_group_scope_kendo_dropdown_locator, country_group_scope_name)
        self.wait_for_ajax_spinner_load()

    def set_wholesale_solution_type(self, wholesale_solution_type):
        """
        Implementing set wholesale solution type functionality
        :param wholesale_solution_type:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.wholesale_solution_type_kendo_dropdown_locator, wholesale_solution_type)
        self.wait_for_ajax_spinner_load()

    def set_country_group(self, country_group_prefix):
        """
        Implementing set country group functionality
        :param country_group_prefix:
        :return:
        """
        global country_group_name
        country_group_name = country_group_prefix  + self.random_string_generator(6)
        self.set_value_into_input_field(self.country_group_textbox_locator, country_group_name)

    def get_created_country_group_name(self):
        """
        Implementing get created country group name functionality
        :return: country_group_name
        """
        global country_group_name
        return country_group_name

    def move_available_countries_to_destination(self, countries_list):
        """
        Implementing move available countries to destination functionality
        :param countries_list:
        :return:
        """
        self.move_available_items_to_destination(self.available_countries_selectbox_id, countries_list)

    def click_create_country_group_save_button(self):
        """
        Implementing click create country group save button functionality
        :return:
        """
        self.click_element(self.create_country_group_save_button_locator)
        try:
            self.wait().until(EC.presence_of_element_located(self.success_message_locator), 'success popup locator not found before specified time')
            self.click_element(self.ok_button_locator)
        except:
            raise

    def filter_country_group_management_grid_column(self, country_group_column_name, country_group_name):
        """
        Implementing filter country group management grid column functionality
        :param country_group_column_name:
        :param country_group_name:
        :return:
        """
        self.grid_filter_with_textbox(self.country_group_management_grid_div_id, country_group_column_name, country_group_name)

    def select_country_group_management_grid_first_row_checkbox(self):
        """
        Implementing select country group management grid first row checkbox functionality
        :return:
        """
        self.select_grid_row_checkbox(self.country_group_management_grid_div_id, None, self.select_grid_row_checkbox_column_number, first_row=True)

    def click_country_group_management_delete_button(self):
        """
        Implementing click country group management delete button functionality
        :return:
        """
        self.click_element(self.country_group_management_delete_button)
        try:
            self.wait().until(EC.presence_of_element_located(self.delete_confirmation_message_locator), 'delete confirmation popup locator not found before specified time')
            self.click_element(self.ok_button_locator)
            self.wait().until(EC.presence_of_element_located(self.delete_success_message_locator), 'delete success popup locator not found before specified time')
            self.click_element(self.ok_button_locator)
        except:
            raise

    def is_the_created_country_group_deleted(self):
        """
        Implementing is the created country group deleted functionality
        :return:
        """
        row_count = int(self.get_grid_row_count(self.country_group_management_grid_row_count_span_locator, 2))
        if row_count == 0:
            is_deleted = True
        else:
            is_deleted = False
        return is_deleted

    def set_generation_type(self, type):
        """
        Implementing set generation type functionality
        :param type:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.generation_type_dropdown_locator, type)

    def is_reference_prices_grid_first_row_status_approved(self):
        """
        Implementing is reference prices grid first row status approved functionality
        :return: True/False
        """
        status = False
        column_element = self.wait().until(EC.presence_of_element_located(self.reference_prices_status_column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) - 2
        timeout = 900
        end_time = time.time() + timeout
        while (time.time() < end_time):
            try:
                first_row_column_locator = (By.XPATH, self.reference_prices_first_row_column_locator_string + "td[%s]/span[@class='k-grid-cell']" % str(column_index))
                first_row_column_element = self.wait().until(EC.presence_of_element_located(first_row_column_locator), 'column locator not found before specified time')
                if first_row_column_element.text.strip() == "Approved":
                    status = True
                    break
            except:
                pass
        return status

    def compare_completed_status_green_buttons_jobs_count(self, locator, refresh_button_locator):
        """
        Implementing compare completed status green button jobs count functionality
        :param locator:
        :param refresh_button_locator:
        :return: status
        """
        status = False
        global complete_status
        complete_status = False
        global status_button_jobs_count
        timeout = 900
        end_time = time.time() + timeout
        while (time.time() < end_time):
            try:
                self.wait(5)
                self.click_element(refresh_button_locator)
                self.wait_for_ajax_spinner_load()
                completed_status_green_button_element = self.wait().until(EC.visibility_of_element_located(locator), 'completed status green button locator nor found before specified time out')
                current_count = completed_status_green_button_element.text
                if (int(current_count) > (int(status_button_jobs_count))):
                    status = True
                    complete_status = True
                    break
            except:
                raise
        return status

    def compare_failed_status_red_buttons_jobs_count(self, locator, refresh_button_locator):
        """
        Implementing compare failed status red button jobs count functionality
        :param locator:
        :param refresh_button_locator:
        :return: status
        """
        status = False
        global complete_status
        global failed_status_job_count
        timeout = 300
        end_time = time.time() + timeout
        while (time.time() < end_time):
            try:
                self.wait(5)
                self.click_element(refresh_button_locator)
                self.wait_for_ajax_spinner_load()
                failed_status_red_button_element = self.wait().until(EC.visibility_of_element_located(locator), 'failed status red button locator nor found before specified time out')
                current_count = failed_status_red_button_element.text
                if complete_status is True:
                    if (int(current_count) == (int(failed_status_job_count))):
                        status = True
                        break
                else:
                    if (int(current_count) > (int(failed_status_job_count))):
                        status = True
                        break
            except:
                raise
        return status

    def get_status_button_jobs_count(self, locator):
        """
        Implementing get status button jobs count functionality
        :return: job count
        """
        global status_button_jobs_count
        status_button_element = self.wait().until(EC.visibility_of_element_located(locator), 'status button locator nor found before specified time out')
        status_button_jobs_count = status_button_element.text
        return status_button_jobs_count

    def get_completed_status_green_button_jobs_count(self):
        """
        Implementing get completed status green button jobs count functionality
        :return: job count
        """
        return self.get_status_button_jobs_count(self.completed_status_green_button_locator)

    def compare_completed_status_green_buttons_jobs_count_after_upload(self):
        """
        Implementing compare completed status green button jobs count after upload functionality
        :return: True/False
        """
        return self.compare_completed_status_green_buttons_jobs_count(self.completed_status_green_button_locator, self.refresh_button_locator)

    def get_failed_status_red_button_jobs_count(self):
        """
        Implementing get failed status red button jobs count functionality
        :return: job count
        """
        global failed_status_job_count
        failed_status_job_count = self.get_status_button_jobs_count(self.failed_status_red_button_locator)
        return failed_status_job_count

    def compare_failed_status_red_buttons_jobs_count_after_upload(self):
        """
        Implementing compare failed status red button jobs count after upload functionality
        :return: True/False
        """
        return self.compare_failed_status_red_buttons_jobs_count(self.failed_status_red_button_locator, self.refresh_button_locator)

    def click_price_override_browse_button(self):
        """
        Implementing click price override browse button functionality
        :return: job count
        """
        self.kill_all_opened_file_browsing_dialogs()
        self.click_element(self.price_overrides_browse_button_locator)

    def click_price_override_upload_button(self):
        """
        Implementing click price override upload button functionality
        :return: job count
        """
        self.click_element(self.price_overrides_upload_button_locator)

    def click_price_policy_grid_first_row_checkbox(self):
        """
        Implementing click price policy grid first row checkbox functionality
        :return: True/False 
        """
        self.click_element(self.price_policy_grid_first_row_checkbox_locator)

    def get_completed_status_green_button_jobs_count_for_reference_price(self):
        """
        Implementing get completed status green button jobs count for reference price functionality
        :return: job count
        """
        return self.get_status_button_jobs_count(self.reference_price_completed_status_green_button_locator)

    def compare_completed_status_green_buttons_jobs_count_for_reference_price(self):
        """
        Implementing compare completed status green button jobs count for reference price functionality
        :return: True/False
        """
        return self.compare_completed_status_green_buttons_jobs_count(self.reference_price_completed_status_green_button_locator, self.reference_price_status_refresh_button_locator)

    def get_failed_status_red_button_jobs_count_for_reference_price(self):
        """
        Implementing get failed status red button jobs count for reference price functionality
        :return: job count
        """
        return self.get_status_button_jobs_count(self.reference_price_failed_status_red_button_locator)

    def compare_failed_status_red_buttons_jobs_count_for_reference_price(self):
        """
        Implementing compare failed status red button jobs count for reference price functionality
        :return: True/False
        """
        return self.compare_failed_status_red_buttons_jobs_count(self.reference_price_failed_status_red_button_locator, self.reference_price_status_refresh_button_locator)

    def is_specific_system_parameter_for_create_destination_formula_present(self, system_parameter):
        """
        Implementing is specific system parameter for create destination formula present functionality
        :param system_parameter:
        :return: True/False
        """
        grid_system_parameter_value_locator = (By.XPATH, "//div[@id='ManageFormulaTabStrip']/descendant::span[text()='%s']" % system_parameter)
        return self.is_element_present(grid_system_parameter_value_locator)

    def click_generate_reference_prices_link(self):
        """
        Implementing click generate reference prices link functionality
        :return:
        """
        self.click_element(self.generate_reference_prices_locator, True)

    def is_specific_reference_price_policy_present_in_the_source(self, price_policy):
        """
        Implementing is specific reference price policy present in the source functionality
        :param price_policy:
        :return: True/False
        """
        generation_type_value_locator = (By.XPATH, "//select[contains(@id, 'from_GRPPolicies_')]/descendant::option[text()='%s']" % price_policy)
        return self.is_element_present(generation_type_value_locator)

    def is_specific_destination_present_in_the_source(self, destination):
        """
        Implementing is specific destination present in the source functionality
        :param destination:
        :return: True/False
        """
        destination_value_locator = (By.XPATH, "//select[contains(@id, 'from_GRPDestinations_')]/descendant::option[text()='%s']" % destination)
        return self.is_element_present(destination_value_locator)

    def is_specific_reference_price_policy_not_present_in_the_source(self, price_policy):
        """
        Implementing is specific reference price policy not present in the source functionality
        :param price_policy:
        :return: True/False
        """
        generation_type_value_locator = (By.XPATH, "//select[contains(@id, 'from_GRPPolicies_')]/descendant::option[text()='%s']" % price_policy)
        try:
            self.wait(10).until(EC.visibility_of_element_located(generation_type_value_locator), 'locator not found before specified time out')
            is_present = False
        except:
            is_present = True
        return is_present

    def is_specific_destination_not_present_in_the_source(self, destination):
        """
        Implementing is specific destination not present in the source functionality
        :param destination:
        :return: True/False
        """
        destination_value_locator = (By.XPATH, "//select[contains(@id, 'from_GRPDestinations_')]/descendant::option[text()='%s']" % destination)
        try:
            self.wait(10).until(EC.visibility_of_element_located(destination_value_locator), 'locator not found before specified time out')
            is_present = False
        except:
            is_present = True
        return is_present

    def is_expected_country_loaded_in_country_column(self, column_value):
        """
        Implementing is expected country loaded in country column functionality
        :param column_value:
        :return: True/False
        """
        is_loaded = False
        current_value = self.get_specific_column_value_from_grid(self.country_group_management_grid_div_id, 1, self.country_column_name)
        if current_value.lower() == column_value.lower():
            is_loaded =  True
        return is_loaded

    def click_country_group_management_grid_inline_action_button(self, country_group):
        """
        Implementing click country group management grid inline action button functionality
        :param country_group:
        :return:
        """
        self.click_inline_action_button(self.country_group_management_grid_div_id, country_group, self.country_group_management_grid_inline_action_button_column_position)

    def is_country_group_scope_dropdown_control_disabled(self):
        """
        Implementing is country group scope dropdown control disabled functionality
        :return: True/False
        """
        is_disabled = False
        country_group_scope_kendo_dropdown_elemnent = self.wait().until(EC.presence_of_element_located(self.country_group_scope_kendo_dropdown_locator), 'country group scope kendo dropdown locator not found before specified time out')
        try:
            country_group_scope_kendo_dropdown_elemnent_disabled_attribute = country_group_scope_kendo_dropdown_elemnent.get_attribute("disabled")
            if country_group_scope_kendo_dropdown_elemnent_disabled_attribute.lower() == "true":
                is_disabled = True
        except:
            is_disabled = False
        finally:
            return is_disabled

    def is_wholesale_solution_type_kendo_dropdown_control_disabled(self):
        """
        Implementing is wholeslae solution type kendo dropdown control disabled functionality
        :return: True/False
        """
        is_disabled = False
        wholesale_solution_type_kendo_dropdown_elemnent = self.wait().until(EC.presence_of_element_located(self.wholesale_solution_type_kendo_dropdown_locator), 'wholeslae solution type kendo dropdown locator not found before specified time out')
        try:
            wholesale_solution_type_kendo_dropdown_elemnent_disabled_attribute = wholesale_solution_type_kendo_dropdown_elemnent.get_attribute("disabled")
            if wholesale_solution_type_kendo_dropdown_elemnent_disabled_attribute.lower() == "true":
                is_disabled = True
        except:
            is_disabled = False
        finally:
            return is_disabled

    def is_assigned_country_present(self, assigned_country):
        """
        Implementing is assigned country present functionality
        :param assigned_country:
        :return: True/False
        """
        assigned_country_locator = (By.XPATH, "//select[@id='to_msBACountryGroup']/option[text()='%s']"%(assigned_country))
        return self.is_element_present(assigned_country_locator)

    def unassign_all_country(self):
        """
        Implementing unassign all country functionality
        :return:
        """
        self.click_element(self.move_all_assigned_country_to_source_locator)

    def click_country_group_selection_checkbox(self, country_group):
        """
        Implementing click country group selection checkbox functionality
        :param country_group:
        :return:
        """
        self.select_grid_row_checkbox(self.country_group_management_grid_div_id, country_group, self.country_group_selection_checkbox_column_position, first_row=True)

    def set_country_group_management_grid_settings(self, grid_settings):
        """
        Implementing set country group management grid settings functionality
        :param grid_settings:
        :return:
        """
        self.set_grid_settings(self.country_group_management_grid_div_id, grid_settings)

    def get_all_rows_of_specific_column_from_country_group_management_grid(self, column_name):
        """
        Implementing get all rows of specific column from country group management grid functionality
        :param column_name:
        :return: all_row_data
        """
        self.all_row_data = self.get_all_rows_of_specific_column_from_grid(self.country_group_management_grid_div_id, column_name, self.get_grid_row_count(self.country_group_management_grid_row_count_span_locator, 2))
        return self.all_row_data

    def sort_country_group_management_grid_column(self, column_name, descending_order):
        """
        Implementing sort country group management grid column functionality
        :param column_name:
        :param descending_order:
        :return:
        """
        self.sort_grid_column(self.country_group_management_grid_div_id, column_name, sort_descending=descending_order)

    def click_country_group_management_grid_export_to_excel_button(self):
        """
        Implementing click country group management grid export to excel button functionality
        :return:
        """
        self.click_grid_export_to_excel_button(self.country_group_management_grid_div_id)

    def get_available_country(self):
        """
        Implementing get available country functionality
        :return:
        """
        available_first_country_element = self.wait().until(EC.presence_of_element_located(self.available_first_country_locator), 'available first country locator not found before specified time out')
        return available_first_country_element.text

    def select_country_group_grid_inline_action_item(self, inline_item):
        """
        Implementing select country group grid inline action item functionality
        :param inline_item:
        :return:
        """
        self.select_inline_action_item(inline_item)
        self.wait_for_ajax_spinner_load()

    def clear_country_group_grid_column_filter(self, column_name):
        """
        Implementing clear country group column filter functionality
        :param column_name:
        :return:
        """
        clear_filter_icon_locator = (By.XPATH, "//div[contains(@id, '%s') and @data-grid-name='%s']/descendant::th[@data-title='%s']/a[1]/span[@class='k-icon k-filter']"%(self.country_group_management_grid_div_id, self.country_group_management_data_grid_name, str(column_name)))
        if (self.is_element_present(clear_filter_icon_locator)):
            self.click_element(clear_filter_icon_locator)

    def set_display_grid(self, grid_name):
        """
        Implementing set display grid functionality
        :param grid_name:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.display_dropdown_locator, grid_name)
        self.wait_for_ajax_spinner_load()

    def click_cancel_button(self):
        """
        Implementing click cancel button functionality
        :return:
        """
        cancel_button_element = self.wait().until(EC.presence_of_element_located(self.cancel_button_locator), 'cancel button locator not found before specified time out')
        cancel_button_element.click()
        time.sleep(5)
        confirmation_pop_up = client.Dispatch("WScript.Shell")
        confirmation_pop_up.SendKeys("{ENTER}")

    def get_cost_elements_grid_cost_element_column_values(self):
        """
        Implementing get cost elements grid cost element column values functionality
        :return:
        """
        self.cost_element_column_value = self.get_all_rows_of_specific_column_from_grid(self.cost_element_grid_div_id, self.cost_element_column_name)

    def get_cost_elements_grid_value_column_values(self):
        """
        Implementing get cost elements grid value column values functionality
        :return: cost_element_value_dictionary
        """
        column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::th[@data-title='%s']" % (self.cost_element_grid_div_id, self.value_column_name))
        column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) + 1
        row = 1
        try:
            while row < len(self.cost_element_column_value) + 1:
                column_value_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::div[@class='k-grid-content']/descendant::tbody[@role='rowgroup']/tr[%s]/td[%s]/descendant::span" % (self.cost_element_grid_div_id, row, str(column_index)))
                column_value_element = self.wait(10).until(EC.presence_of_element_located(column_value_locator), 'column value locator not found before specified time out')
                column_value = str(column_value_element.get_attribute("innerHTML"))
                self.value_column_value.append(column_value)
                row += 1
        except:
            pass

        for i in range(len(self.value_column_value)):
            if self.value_column_value[i] != "":
                if self.cost_element_column_value[i] != "MKTHR" and self.cost_element_column_value[i] != "F2SRGR" and self.cost_element_column_value[i] != "F1SRGR":
                    self.cost_element_value_dictionary[self.cost_element_column_value[i]] = self.value_column_value[i]
        return self.cost_element_value_dictionary

    def filter_cost_forecast_reports_grid_column(self, column_name, column_value):
        """
        Implementing filter cost forecast reports grid column functionality
        :param column_name:
        :param column_value:
        :return:
        """
        self.grid_filter_with_textbox(self.cost_forecast_reports_grid_div_id, column_name, column_value)

    def set_cost_forecast_elements_report_routing_destination(self, routing_destination):
        """
        Implementing set cost forecast elements report routing destination functionality
        :param routing_destination:
        :return:
        """
        self.set_value_into_input_field(self.routing_destination_textbox_locator, routing_destination)

    def get_cost_forecast_element_reports_grid_row_details(self):
        """
        Implementing get cost forecast element reports grid row details functionality
        :return: cost_forecast_elements_report_grid_row_details
        """
        self.cost_forecast_elements_report_grid_row_details = self.get_grid_row_details(self.cost_forecast_reports_grid_div_id, self.cost_element_value_dictionary)
        for key in self.cost_forecast_elements_report_grid_row_details:
            actual_value = float(self.cost_forecast_elements_report_grid_row_details[key])
            precision_value = str("%.2f" % actual_value)
            self.cost_forecast_elements_report_grid_row_details[key] = precision_value
        return self.cost_forecast_elements_report_grid_row_details

    def click_price_exceptions_import_button(self):
        """
        Implementing click price exceptions import button functionality
        :return:
        """
        self.click_element(self.price_exceptions_import_button_locator)

    def get_completed_status_green_button_jobs_count_for_price_exception_request(self):
        """
        Implementing get completed status green button jobs count for price exception request functionality
        :return: job count
        """
        return self.get_status_button_jobs_count(self.price_exceptions_completed_status_green_button_locator)

    def compare_completed_status_green_buttons_jobs_count_for_price_exception_request(self):
        """
        Implementing compare completed status green button jobs count for price exception request functionality
        :return: True/False
        """
        return self.compare_completed_status_green_buttons_jobs_count(self.price_exceptions_completed_status_green_button_locator, self.price_exceptions_status_refresh_button_locator)

    def click_price_exception_request_upload_button(self):
        """
        Implementing click price exception request upload button functionality
        :return:
        """
        upload_button_element = self.wait().until(EC.element_to_be_clickable(self.upload_button_locator), 'upload button locator not found before specified timeout')
        upload_button_element.click()
        self.wait_for_ajax_spinner_load()
        try:
            self.wait().until(EC.visibility_of_element_located(self.upload_success_message_locator), 'upload success message locator not found before specified time')
            ok_button_element = self.wait().until(EC.element_to_be_clickable(self.ok_button_locator), 'ok button locator not found before specified time')
            self.wait_for_ajax_spinner_load()
            ok_button_element.click()
        except:
            pass
        self.wait_for_ajax_spinner_load()

    def is_price_exception_request_export_button_present(self):
        """
        Implementing is price exception request export button present functionality
        :return: True/False
        """
        return self.is_element_present(self.price_exceptions_export_button_locator)

    def click_failed_status_red_button(self):
        """
        Implementing click failed status red button
        :return:
        """
        failed_status_red_button_element = self.wait().until(EC.element_to_be_clickable(self.failed_status_red_button_locator), 'failed status red button locator not found before specified time out')
        failed_status_red_button_element.click()
        self.wait_for_ajax_spinner_load()

    def click_failed_upload_info_icon(self):
        """
        Implementing click failed upload info icon functionality
        :return:
        """
        self.click_element(self.failed_upload_info_icon_locator)

    def compare_failed_upload_info(self, info_message):
        """
        Implementing compare failed upload info functionality
        :param info_message:
        :return: True/False
        """
        info_message_locator = (By.XPATH, "//div[@id='%s']/descendant::span[@class='k-grid-cell' and contains(text(), '%s')]" % (self.additional_info_grid_div_id, info_message))
        if self.is_element_present(info_message_locator):
            return True
        else:
            return False

    def sort_jobs_grid_column(self, column_name, descending_order):
        """
        Implementing sort jobs grid column functionality
        :param column_name:
        :param descending_order:
        :return:
        """
        column_name_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::th[@data-title='%s']" % (self.jobs_grid_div_id, column_name))
        column_element = self.wait().until(EC.visibility_of_element_located(column_name_locator), 'column locator not found before specified time out')
        if descending_order:
            column_element.click()
            self.wait_for_ajax_spinner_load()
            column_element.click()
        else:
            column_element.click()

    def set_jobs_grid_settings(self, grid_settings):
        """
        Implementing set jobs grid settings functionality
        :param grid_settings:
        :return:
        """
        self.wait_for_ajax_spinner_load()
        self.set_grid_settings(self.jobs_grid_div_id, grid_settings)

    def select_cost_policy_formula_grid_multiple_rows(self):
        """
        Implementing select cost policy formula grid multiple rows functionality
        :return:
        """
        for i in range(2):
            row_checkbox_locator = (By.XPATH, "(//div[contains(@id, 'divPricePolicyFormulas')]/descendant::div[@class='k-virtual-scrollable-wrap']/descendant::tr[%s]/td[%s]/input[@type='checkbox'])" % (str(i+1), str(self.cost_policy_formula_grid_checkbox_column_number)))
            self.click_element(row_checkbox_locator)

    def is_specific_selection_criteria_filter_present(self, page_div_id, label_name):
        """
        Implementing is specific selection criteria filter present functionality
        :param page_div_id: 
        :param label_name: 
        :return: True/False
        """
        selection_criteria_filter_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::label[contains(text(), '%s')]" % (page_div_id, label_name))
        return self.is_element_present(selection_criteria_filter_locator)

    def is_country_selection_criteria_field_present_in_crpl_page(self):
        """
        Implementing is country selection criteria field present in crpl page functionality
        :return: True/False
        """
        return self.is_specific_selection_criteria_filter_present(self.compound_reference_price_list_page_div_id, self.country_label_name)

    def is_specific_column_present(self, grid_div_id, column_name):
        """
        Implementing is specific selection column present functionality
        :param grid_div_id: 
        :param column_name: 
        :return: True/False
        """
        specific_column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::th[@data-field='%s']" % (grid_div_id, column_name))
        return self.is_element_present(specific_column_locator)

    def is_country_column_present_in_crpl_page(self):
        """
        Implementing is country column present in crpl page functionality
        :return: True/False
        """
        return self.is_specific_column_present(self.compound_reference_price_list_grid, self.column_name_country)

    def is_country_selection_criteria_field_present_in_orpl_page(self):
        """
        Implementing is country selection criteria field present in orpl page functionality
        :return: True/False
        """
        return self.is_specific_selection_criteria_filter_present(self.origin_reference_price_list_page_div_id, self.country_label_name)

    def is_country_column_present_in_orpl_page(self):
        """
        Implementing is country column present in orpl page functionality
        :return: True/False
        """
        return self.is_specific_column_present(self.origin_reference_price_list_grid, self.column_name_country)

    def is_country_selection_criteria_field_present_in_rcper_page(self):
        """
        Implementing is country selection criteria field present in rcper page functionality
        :return: True/False
        """
        return self.is_specific_selection_criteria_filter_present(self.price_exceptions_page_div_id, self.country_label_name)

    def is_country_column_present_in_rcper_page(self):
        """
        Implementing is country column present in rcper page functionality
        :return: True/False
        """
        return self.is_specific_column_present(self.price_exceptions_grid_div_id, self.column_name_country)

    def is_country_selection_criteria_field_present_in_costs_page(self):
        """
        Implementing is country selection criteria field present in costs page functionality
        :return: True/False
        """
        return self.is_specific_selection_criteria_filter_present(self.cost_policies_costs_page_div_id, self.country_label_name)

    def is_country_column_present_in_costs_page(self):
        """
        Implementing is country column present in costs page functionality
        :return: True/False
        """
        return self.is_specific_column_present(self.cost_policies_costs_div_id, self.column_name_country)

    def is_country_selection_criteria_field_present_in_price_override_page(self):
        """
        Implementing is country selection criteria field present in price override page functionality
        :return: True/False
        """
        return self.is_specific_selection_criteria_filter_present(self.price_overrides_page_div_id, self.country_label_name)

    def is_country_column_present_in_price_override_page(self):
        """
        Implementing is country column present in price override page functionality
        :return: True/False
        """
        return self.is_specific_column_present(self.price_overrides_grid_div_id, self.column_name_country)

    def is_country_selection_criteria_field_present_in_reference_prices_page(self):
        """
        Implementing is country selection criteria field present in reference prices page functionality
        :return: True/False
        """
        return self.is_specific_selection_criteria_filter_present(self.reference_prices_page_div_id, self.country_label_name)

    def is_country_column_present_in_reference_prices_page(self):
        """
        Implementing is country column present in reference prices page functionality
        :return: True/False
        """
        return self.is_specific_column_present(self.reference_prices_grid_div_id, self.column_name_country)

    def is_ccpmr_each_call_text_present_in_info_column(self):
        """
        Implementing is ccpmr each call text present in info column functionality
        :return: True/False
        """
        column_name_element = self.wait().until(EC.presence_of_element_located(self.ccpm_info_locator), 'info locator not found before specified time out')
        self.hover(column_name_element)
        self.click_element(self.ccpm_info_locator)
        return self.is_element_present(self.ccpmr_each_call_text_locator)

    def is_ccpmr_cost_per_message_text_present_in_info_column(self):
        """
        Implementing is ccpmr cost per message text present in info column functionality
        :return: True/False
        """
        column_name_element = self.wait().until(EC.presence_of_element_located(self.ccpm_info_locator), 'info locator not found before specified time out')
        self.hover(column_name_element)
        self.click_element(self.ccpm_info_locator)
        return self.is_element_present(self.ccpmr_cost_per_message_text_locator)

    def compare_price_policy_formulas_grid_formula_column_value(self, target, minimum, cost):
        """
        Implementing compare price policy formulas grid formula column value functionality
        :return:
        """
        status = False
        formulas_grid_formula_column_target_value_element = self.wait().until(EC.presence_of_element_located(self.formulas_grid_formula_column_target_value_locator), 'target field locator not found before specified time out')
        formulas_grid_formula_column_minimum_value_element = self.wait().until(EC.presence_of_element_located(self.formulas_grid_formula_column_minimum_value_locator), 'minimum field locator not found before specified time out')
        formulas_grid_formula_column_cost_value_element = self.wait().until(EC.presence_of_element_located(self.formulas_grid_formula_column_cost_value_locator), 'cost field locator not found before specified time out')
        actual_target_value = formulas_grid_formula_column_target_value_element.text
        actual_minimum_value = formulas_grid_formula_column_minimum_value_element.text
        actual_cost_value = formulas_grid_formula_column_cost_value_element.text
        if str(target).lower() == str(actual_target_value).lower() and str(minimum).lower() == str(actual_minimum_value).lower() and str(cost).lower()== str(actual_cost_value).lower():
            status = True
        return status

    def is_reference_prices_cost_and_routing_section_loaded(self):
        """
        Implementing is reference prices cost and routing section loaded functionality
        :return:
        """
        return self.is_element_present(self.reference_prices_cost_and_routing_text_locator)

    def verify_pricing_policies_reference_prices_grid_columns_header(self, columns_headers):
        """
        Implementing verify pricing policies reference prices grid column headers functionality
        :param columns_headers:
        :return:
        """
        status = None
        for header in columns_headers:
            grid_column_header_locator = (By.XPATH, "//div[@id='divReferencePrices']/descendant::table/thead/tr/th[@data-title='%s']" %(header))
            status = self.is_element_present(grid_column_header_locator)
            if status is False:
                break
        return status

    def is_route_class_kendo_dropdown_present(self):
        """
        Implementing is route class kendo dropdown present functionality
        :return:
        """
        return self.is_element_present(self.route_class_kendo_dropdown_locator)

    def verify_cost_elements_grid_columns_header(self, columns_header):
        """
        Implementing verify cost elements grid columns header functionality
        :param columns_header:
        :return:
        """
        status = None
        for header in columns_header:
            grid_column_header_locator = (By.XPATH, "//div[@id='divCostElements']/descendant::table/thead/tr/th[@data-title='%s']" %(header))
            status = self.is_element_present(grid_column_header_locator)
            if status is False:
                break
        return status

    def verify_routing_guide_links_grid_columns_header(self, columns_header):
        """
        Implementing verify routing guide links grid columns header functionality
        :param columns_header:
        :return:
        """
        status = None
        for header in columns_header:
            grid_column_header_locator = (By.XPATH, "//div[@id='divRouteGuideLinks']/descendant::table/thead/tr/th[@data-title='%s']" %(header))
            status = self.is_element_present(grid_column_header_locator)
            if status is False:
                break
        return status

    def are_job_notifiers_displayed_at_generate_reference_prices_screen(self):
        """
        Implementing are job notifiers displayed at generate reference prices screen functionality
        :return: status
        """
        status = True
        actual_job_notification_categories = []
        job_notifiers_elements = self.wait().until(EC.presence_of_all_elements_located(self.job_notifiers_locator))
        for element in job_notifiers_elements:
            actual_job_notification_categories.append(element.get_attribute('data-status'))
        if actual_job_notification_categories != self.job_notification_categories:
            status = False
        return status

    def click_reference_prices_grid_first_row_inline_action_button(self):
        """
        Implementing click reference prices grid first row inline action button functionality
        :return:
        """
        inline_action_button_locator = (By.XPATH, "//div[@id='divPRPGrid_m1']/descendant::div[@class='k-grid-content-locked']/descendant::tbody/descendant::tr[1]/td[%s]/span" % str(self.reference_prices_grid_inline_action_column_number))
        self.click_element(inline_action_button_locator)

    def is_route_guide_with_sell_rates_report_inline_item_present(self):
        """
        Implementing is route guide with sell rates report inline item present functionality
        :return: True/False
        """
        return self.is_element_present(self.route_guide_with_sell_rates_report_inline_item_locator)

    def is_route_guide_with_sell_rates_report_pop_up_present(self):
        """
        Implementing is route guide with sell rates report pop up present functionality
        :return:
        """
        return self.is_element_present(self.route_guide_with_sell_rates_report_pop_up_locator)

    def get_cost_upload_all_job_notification_status(self):
        """
        Implementing get cost upload all job notification status functionality
        :return:
        """
        actual_job_notification_status = []
        job_notifiers_elements = self.wait().until(EC.presence_of_all_elements_located(self.cost_upload_job_notifiers_locator))
        for element in job_notifiers_elements:
            actual_job_notification_status.append(element.get_attribute('data-status') + ": " + element.text)
        return actual_job_notification_status

    def set_origin_reference_price_list_bulk_edit_end_date(self, end_date):
        """
        Implementing set origin reference price list bulk edit end date functionality
        :param end_date:
        :return:
        """
        self.set_value_into_input_field(self.origin_reference_price_list_bulk_edit_end_date_locator, end_date)

    def compare_end_date_column_value_in_origin_reference_price_list_grid(self, expected_value):
        """
        Implementing Compare End Date Column Value in Origin Reference Price List Grid functionality
        :param expected_value:
        :return:
        """
        status = True
        actual_value = self.get_specific_column_value_from_grid(self.origin_reference_price_list_grid_div_id, 1, self.end_date_column_name)
        if expected_value.strip() != actual_value.strip():
            status = False
        return status

    def is_by_default_specific_generation_type_present(self, generation_type):
        """
        Implementing is by default specific generation type present functionality
        :param generation_type:
        :return: True/False
        """
        by_default_generation_type_locator = (By.XPATH, "//label[text()='Generation Type']/../descendant::span[@class='k-input' and text()='%s']" % generation_type)
        return self.is_element_present(by_default_generation_type_locator)

    def select_create_destination_formula_system_parameters_tab(self):
        """
        Implementing select create destination formula system parameters tab functionality
        :return:
        """
        self.select_static_tab(self.system_parameters_tab_locator, message='create destination formula pop up system parameters tab locator not found before specified time out')

    def select_user_defined_parameters_grid_first_row_checkbox(self):
        """
        Implementing select user defined parameters grid first row checkbox functionality
        :return:
        """
        first_row_checkbox_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::table/tbody/tr[1]/td[%s]/input" % (self.user_defined_parameters_div_id, str(self.user_defined_parameters_grid_checkbox_column_number)))
        first_row_checkbox_element = self.wait().until(EC.element_to_be_clickable(first_row_checkbox_locator), 'select grid frist row locator not found before specified time')
        self.script_executor_click(first_row_checkbox_element)

    def is_specific_tab_present_in_view_pricing_exception_details_pop_up(self, tab_name):
        """
        Implementing is specific tab present in view pricing exception details pop up functionality
        :param tab_name:
        :return: True/False
        """
        global is_row_present
        tab_locator = (By.XPATH, "//div[@id='CustomerPricingExceptionTabStrip']/descendant::li/a[text()='%s']" % tab_name)
        if is_row_present is True:
            is_present = self.is_element_present(tab_locator)
            return is_present
        else:
            pass

    def get_cost_policies_grid_first_row_cost_policy_name(self):
        """
        Implementing get cost policies grid first row cost policy name functionality
        :return: cost policy
        """
        return self.get_specific_column_value_from_grid(self.cost_policy_div_id, 1, self.cost_policy_column_name)

    def get_upload_costs_cost_policy_field_value(self):
        """
        Implementing get upload costs cost policy field value functionality
        :return: cost policy
        """
        return self.get_text_from_element(self.upload_costs_cost_policy_field_locator)

    def click_upload_costs_cancel_button(self):
        """
        Implementing click upload costs cancel button functionality
        :return:
        """
        self.click_element(self.upload_costs_cancel_button_locator)

    def select_cost_policies_grid_multiple_row_checkbox(self):
        """
        Implementing select cost policies grid multiple row checkbox functionality
        :return:
        """
        for i in range(2):
            cost_policies_grid_checkbox_locator = (By.XPATH, "(//div[@data-grid-name='CostPolicyGrid']/descendant::input[@type='checkbox'])[%s]" % str(i+2))
            self.click_element(cost_policies_grid_checkbox_locator, True)

    def is_cost_forecast_elements_grid_description_correct(self, expected_text):
        """
        Implementing is cost forecast elements grid description correct functionality
        :param expected_text:
        :return: True/False
        """
        is_correct = False
        description_from_grid = self.get_specific_column_value_from_grid(self.cost_forecast_elements_grid_div_id, 1, self.description_column_name)
        if expected_text in description_from_grid:
            is_correct = True
        return is_correct

    def is_review_customer_price_exception_requests_search_grid_present(self):
        """
        Implementing is review customer price exception requests search grid present functionality
        :return: True/False
        """
        return self.is_element_present(self.price_exceptions_request_page_search_grid_locator)

    def is_specific_filter_option_present_in_price_reference_prices_page(self, filter_option_label_name):
        """
        Implementing is specific filter option present in price reference prices page functionality
        :param filter_option_label_name:
        :return: True/False
        """
        return self.is_specific_selection_criteria_filter_present(self.reference_prices_page_div_id, filter_option_label_name)

    def select_price_policy_for_reference_prices_search(self, price_policy_list):
        """
        Implementing select price policy for reference prices search functionality
        :param price_policy_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.reference_prices_price_policy_kendo_dropdown_locator, price_policy_list)
        self.wait_for_ajax_spinner_load()

    def set_reference_prices_destination(self, destination):
        """
        Implementing set reference prices destination functionality
        :param destination:
        :return:
        """
        self.set_value_into_input_field(self.reference_prices_destination_textbox_locator, destination)

    def select_country_for_reference_prices_search(self, country_list):
        """
        Implementing select country for reference prices search functionality
        :param country_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.reference_prices_country_kendo_dropdown_locator, country_list)
        self.wait_for_ajax_spinner_load()

    def select_trade_destination_category_for_reference_prices_search(self):
        """
        Implementing select trade destination category for reference prices search functionality
        :return:
        """
        self.click_element(self.reference_prices_trade_destination_category_kendo_dropdown_locator)
        self.click_element(self.first_dropdown_item_locator, script_executor=True)

    def select_region_for_reference_prices_search(self, region_list):
        """
        Implementing select region for reference prices search functionality
        :param region_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.reference_prices_region_kendo_dropdown_locator, region_list)
        self.wait_for_ajax_spinner_load()

    def compare_only_failed_status_red_buttons_jobs_count(self):
        """
        Implementing compare only failed status red button jobs count functionality
        :return: status
        """
        status = False
        global failed_status_job_count
        timeout = 300
        end_time = time.time() + timeout
        while (time.time() < end_time):
            try:
                self.wait(5)
                self.click_element(self.refresh_button_locator)
                self.wait_for_ajax_spinner_load()
                failed_status_red_button_element = self.wait().until(EC.visibility_of_element_located(self.failed_status_red_button_locator), 'failed status red button locator nor found before specified time out')
                current_count = failed_status_red_button_element.text
                if (int(current_count) > (int(failed_status_job_count))):
                    status = True
                    break
            except:
                raise
        return status

    def filter_origin_reference_price_list_grid_column(self, column_name, orp_name):
        """
        Implementing filter origin reference price list grid column functionality
        :param column_name:
        :param orp_name:
        :return:
        """
        self.grid_filter_with_textbox(self.origin_reference_price_list_grid_div_id, column_name, orp_name)

    def click_origin_reference_price_list_grid_first_row_inline_action_button(self):
        """
        Implementing click origin reference price list grid inline action button functionality
        :return:
        """
        self.click_inline_action_button(self.origin_reference_price_list_grid_div_id, None, self.orpl_grid_column_number, first_row=True)
        self.wait_for_ajax_spinner_load()

    def is_specific_dropdown_disabled(self, dropdown_label_text):
        """
        Implementing is specific dropdown disabled functionality
        :param dropdown_label_text:
        :return: True/False
        """
        is_disabled = False
        specific_dropdown_locator = (By.XPATH, "//label[text()='%s']/../descendant::span[@class='k-widget k-dropdown k-header']" % dropdown_label_text)
        try:
            specific_dropdown_element = self.wait().until(EC.presence_of_element_located(specific_dropdown_locator), 'dropdown locator not found before specified time out')
            disabled_status = specific_dropdown_element.get_attribute("aria-disabled")
            if disabled_status == "true":
                is_disabled = True
        except:
            raise
        finally:
            return is_disabled

    def select_orpl_grid_inline_action_item(self, inline_item):
        """
        Implementing select orpl grid inline action item functionality
        :param inline_item:
        :return:
        """
        self.select_inline_action_item(inline_item, module_name="Orpl")
        self.wait_for_ajax_spinner_load()

    def is_cost_formula_grid_first_row_checkbox_checked(self):
        """
        Implementing is cost formula grid first row checkbox checked functionality
        :return: True/False
        """
        status = None
        checkbox_locator = (By.XPATH, "//div[contains(@id, 'divPricePolicyFormulas_')]/descendant::tbody/tr[1]/td[1]/input")
        try:
            checkbox_element = self.wait().until(EC.presence_of_element_located(checkbox_locator), 'checkbox locator not found before specified time out')
            status = checkbox_element.is_selected()
        except:
            raise
        finally:
            return status

    def is_price_policy_udp_grid_first_row_checkbox_checked(self):
        """
        Implementing is price policy udp grid first row checkbox checked functionality
        :return: True/False
        """
        status = None
        checkbox_locator = (By.XPATH, "//div[contains(@id, 'divUserDefinedParameters_')]/descendant::tbody/tr[1]/td[2]/input")
        try:
            checkbox_element = self.wait().until(EC.presence_of_element_located(checkbox_locator), 'checkbox locator not found before specified time out')
            status = checkbox_element.is_selected()
        except:
            raise
        finally:
            return status

    def get_price_policy_from_reference_prices_grid(self):
        """
        Implementing get price policy from reference prices grid functionality
        :return:
        """
        return self.get_specific_column_value_from_grid(self.reference_prices_grid_div_id, 5, self.price_policy_cloumn_name, data_grid_name=self.reference_prices_data_grid_name)

    def click_document_tab_on_pricing_exception_page(self):
        """
        Implementing click document tab on pricing exception page functionality
        :return:
        """
        self.click_element(self.document_tab_locator, True)

    def is_delete_button_present_in_view_pricing_exception_details_page(self):
        """
        Implementing is delete button present in view pricing exception details page functionality
        :return: True/False
        """
        return self.is_element_present(self.view_pricing_exception_details_delete_button_locator)

    def is_upload_document_button_present_in_view_pricing_exception_details_page(self):
        """
        Implementing is upload document button present in view pricing exception details page functionality
        :return: True/False
        """
        return self.is_element_present(self.view_pricing_exception_details_upload_document_button_locator)

    def is_specific_column_present_with_data_title(self, grid_div_id, column_name):
        """
        Implementing is specific selection column present with data title functionality
        :param grid_div_id: 
        :param column_name: 
        :return: True/False
        """
        specific_column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::th[@data-title='%s']" % (grid_div_id, column_name))
        return self.is_element_present(specific_column_locator)

    def is_specific_column_present_in_review_pricing_exception_documents_tab(self, column_name):
        """
        Implementing is country column present in review pricing exception documents tab functionality
        :param column_name:
        :return: True/False
        """
        return self.is_specific_column_present_with_data_title(self.documents_grid_div_id, column_name)

    def click_rgwsrr_tab_on_pricing_exception_page(self):
        """
        Implementing click rgwsrr tab on pricing exception page functionality
        :return:
        """
        self.click_element(self.rgwsrr_tab_locator, True)

    def is_specific_column_present_in_review_pricing_exception_rgwsrr_tab(self, column_name):
        """
        Implementing is country column present in review pricing exception rgwsrr tab functionality
        :param column_name:
        :return: True/False
        """
        return self.is_specific_column_present_with_data_title(self.rgwsrr_grid_div_id, column_name)

    def click_price_exception_request_export_button(self):
        """
        Implementing click exception request export button functionality
        :return: True/False
        """
        self.click_element(self.price_exceptions_export_button_locator)
        self.wait().until(EC.visibility_of_element_located(self.price_exceptions_export_warning_message_lcoator))
        self.click_element(self.ok_button_locator)
        self.switch_to_default_window()

    def click_price_exception_request_browse_button(self):
        """
        Implementing click exception request browse button functionality
        :return: True/False
        """
        self.kill_all_opened_file_browsing_dialogs()
        self.click_element(self.price_exception_request_browse_button_locator)

    def is_view_reference_price_details_inline_item_present(self):
        """
        Implementing is view reference price details inline item present functionality
        :return: True/False
        """
        return self.is_element_present(self.view_reference_price_details_inline_item_locator)

    def is_view_reference_price_details_pop_up_present(self):
        """
        Implementing is view reference price details pop up present functionality
        :return:
        """
        return self.is_element_present(self.view_reference_price_details_pop_up_locator)

    def is_reference_price_list_history_section_present(self):
        """
        Implementing is reference price list section present functionality
        :return:
        """
        return self.is_element_present(self.reference_price_list_history_section_locator)
