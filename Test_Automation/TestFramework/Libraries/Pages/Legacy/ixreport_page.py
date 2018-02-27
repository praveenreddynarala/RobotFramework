"""Implementing iXReport screen page objects"""

from TestFramework.Libraries.Pages.base_page import BasePage
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC
import TestFramework.Libraries.Modules.database as Database
import win32com.client as client
import time
import datetime
import os


class IXReportPage(BasePage):
    """
    Contains iXReport UI page locators
    Switch to ixReport function
    Switch to list frame function
    Switch to detail frame function
    Expand reports section function
    Click sub report item function
    Get selected date function
    Get begin date function
    Get end date function
    Get effective date function
    Get from date function
    Get to date function
    Get date value function
    Get from processing date function
    Get to processing date function
    Get select date function
    Get usage from date function
    Get usage to date function
    Get created date from function
    Get created date to function
    Get from call date function
    Get to call date function
    Click submit button function
    Get specific column value from reports function
    Get begin date text function
    Get end date text function
    Get effective date text function
    Get from_processing date text function
    Get to processing date text function
    Set begin date function
    Click report preview button function
    Click report export to excel button function
    Click report export to csv button function
    Click report export to pdf button function
    Is end date column present function
    Is begin date greater than end date warning message shown function
    Is empty orig point code records are shown function
    Click account rate plan selection button function
    Move available rate plan to assigned function
    Click account rate plan selection submit button function
    Click currency selection button function
    Select first currency function
    Click first row error type function
    Switch to level2 detail frame function
    Switch to level3 detail frame function
    Switch to level4 detail frame function
    Expand layer first row function
    Verify column names of report table function
    Verify column names of cdr error report table function
    Verify column names of cdr error report layer 2 table function
    Verify column names of cdr error report layer 3 table function
    Verify layer 5 report title function
    Click report preview button if expand successful function
    Click report export to excel button if expand successful function
    Click report export to csv button if expand successful function
    Click report export to pdf button if expand successful function
    Select charts tab function
    Select tabular tab function
    Click save my report button function
    Set my report title function
    Click my report save button function
    Click on demand extract button function
    Set first level summarize by function
    Set second level summarize by function
    Set third level summarize by function
    Expand first layer first row function
    Expand second layer first row function
    Click reference set browse button function
    Click comparison set 1 browse button function
    Set number plan type function
    Click go button function
    Select row from look up table function
    Click country country code browse button function
    Get first row account name function
    Get first row rate plan function
    Set report trunk name function
    Get first row transmission type function
    Click account browse button function
    Set first letters function
    Select extracts submenu function
    Switch to header frame function
    Click extract list new button function
    Click specific extract name form list function
    Switch to detail extract frame function
    Set extract country function
    Click extract save button function
    Set extract title function
    Get created extract name function
    Set relative period function
    Click specific add button function
    Click extract next button function
    Set extract title function
    Set extract active time function
    Set extract active time function
    Click my report save button function
    Is extract generation present function
    Is completed extract status present function
    Click report page exit button function
    Set offers from date function
    Click submit button and verify error message function
    Click vendors massive lookup button function
    Move more than ten vendors to assign function
    Click vendor lookup submit button and verify error message function
    Move selected vendors to available function
    Set vendor lookup first letter function
    Click vendor lookup go button function
    Move vendor to assigned function
    Click vendor lookup submit button function
    Click first row vendor name function
    Verify column names of reference rates analysis report table function
    Verify column names of reference rates analysis report layer 2 table function
    Is completed extract delivery status present function
    Is extract delivery present function
    Set process status function
    Compare process status function
    Compare process status on table function
    Set account type function
    Is report page present for selected account type function
    Set fourth level summarize by function
    Set fifth level summarize by function
    Set begin month function
    Click submit button with id function
    Click new save my report button function
    Select standard tab function
    Is ppm calculated correctly function
    Click extract go button function
    Set report group function
    Set report function
    Get my report title function
    Expand sub report item function
    Click my report name function
    Click my report submit button function
    Expand mor layer first row function
    Switch to level n detail frame function
    Is sub report item present function
    Set select date function
    Set service function
    Get first row rate dimension template function
    Click rate dimension template browse button function
    Get second row account name function
    Get second row parent account name function
    Click parent account browse button function
    Get first row product catalog function
    Click number plan browse button function
    Set product catalog function
    Get first row tariff type function
    Set tariff type function
    Get first row routing product function
    Click routing product browse button function
    Set from processing date function
    Set switch function
    Set status function
    Set profile function
    Get first row status function
    Get second row contract name function
    Get saved contract name function
    Get saved account name function
    Click contract browse button function
    Click contract version browse button function
    Click country browse button function
    Set rate type function
    Get second row credit limit status function
    Click credit limit status browse button function
    Get second row in account name function
    Get second row out account name function
    Get second row routing destination function
    Click out account browse button function
    Click routing destination browse button function
    Set created date from function
    Click direction browse button function
    Set route class function
    Click submit button to verify warning function
    Click technical trunk browse button function
    Get first row technical trunk function
    Get first row switch function
    Click first row technical trunk function
    Click account browse button function
    Set date value into specific date field function
    Get second row customer source function
    Click customer source browse button function
    Move customer source to assigned function
    Set reference price list function
    Set currency function
    Click account browse button with id function
    Get cpe traffic report second row account name function
    Click first row routing product function
    Switch to route guide detail frame function
    Click report table first row function
    Get first row route class function
    Click route class browse button function
    Set delta report item function
    Click currency browse button function
    Click first row routing product for crg function
    Click source browse button function
    Get first row source name function
    Set source type function
    Click first row more info icon function
    Is second layer displayed function
    Get second row look up table value function
    Click offer browse button function
    Set offer type function
    Get report offer details function
    Get offer details from database function
    Compare report and database offer details function
    Is specific report displayed function
    Is specific report page displayed function
    Click unified number plan browse button function
    Set first unified number plan type function
    Click service level browse button function
    Get destination from productiXRoute table function
    Click destination browse button function
    Is selected dates are out of range warning message shown function
    Set first unified number plan type
    Click service level browse button
    Click specific view button function
    Click extract delete button function
    Set extract begin date function
    Click extract submit button function
    Click accrual check extract save button function
    Click save button to verify warning function
    Click specific extract name button function
    Is report page loaded properly function
    Is specific column present in report page function
    Is specific column not present in report page function
    Click specific edit icon function
    Click myreport edit save button function
    Click myreport delete button function
    Is specific myreport not present function
    Click myreport cancel button function
    Set cdr extract title function
    Click extract customer price vs current cost submit button function
    Set extract begin month function
    Get routing_product from productixroute table function
    Compare lookup table routing product with database function
    Click product browse button function
    Is extract present function
    Set profit symbol function
    Set profit value function
    Click specific tab on report page function
    Click specific download button function
    Get extract file name function
    Does extract file exist in network path function
    Delete extract file from network path function
    Click extract reference set browse button function
    Click extract comparison set 1 browse button function
    Get first row effective date function
    Get first row analyzed rate function
    Is analyzed rate shown up to six decimal points function
    Get account name without credit limit function
    Get account name with credit limit from database function
    Verify row exceed warning message function
    Click submit button with wait function
    Is country filter available function
    Does country filter have countries function
    Set extract first level summarize by function
    Set extract second level summarize by function
    Set minutes function
    Verify first row actual rate change in rp currency column value function
    Verify first row exchange rate impact column value function
    Verify first row rate calculation method column value function
    """
    # Start: iXReport page locators
    list_frame_locator = (By.NAME, "List")
    detail_frame_locator = (By.NAME, "Detail")
    header_frame_locator = (By.NAME, "Header")
    main_menu_locator = (By.ID, "C2_mtReport")
    extracts_submenu_js_function = "smReport_Click(2,'smReport2');"
    detail_extract_frame_locator = (By.NAME, "DetailExtract")
    level_detail_frame_locator = (By.XPATH, "//iframe[contains(@id, 'Detail_Row1')]")
    row1_iframe_locator = (By.NAME, "iFrame_Row1")
    # End: iXReport page locators

    # Start: Detail frame locators
    selected_date_inputbox_locator = (By.XPATH, "//span[contains(text(), 'Selected Date')]/../../descendant::input")
    effective_date_inputbox_locator = (By.XPATH, "//span[contains(text(), 'Effective Date')]/../../descendant::input")
    begin_date_inputbox_locator = (By.XPATH, "//span[contains(text(), 'Begin Date')]/../../descendant::input")
    end_date_inputbox_locator = (By.XPATH, "//span[contains(text(), 'End Date')]/../../descendant::input")
    begin_date_with_lower_case_d_inputbox_locator = (By.XPATH, "//span[contains(text(), 'Begin date')]/../../descendant::input")
    end_date_with_lower_case_d_inputbox_locator = (By.XPATH, "//span[contains(text(), 'End date')]/../../descendant::input")
    from_date_inputbox_locator = (By.XPATH, "//span[contains(text(), 'From Date')]/../../descendant::input")
    to_date_inputbox_locator = (By.XPATH, "//span[contains(text(), 'To Date')]/../../descendant::input")
    date_inputbox_locator = (By.XPATH, "//span[text()='Date: ']/../../descendant::input")
    from_processing_date_inputbox_locator = (By.XPATH, "//span[contains(text(), 'From Processing date')]/../../descendant::input")
    to_processing_date_inputbox_locator = (By.XPATH, "//span[contains(text(), 'To Processing date')]/../../descendant::input")
    select_date_inputbox_locator = (By.XPATH, "//span[contains(text(), 'Select Date')]/../../descendant::input")
    usage_from_date_inputbox_locator = (By.XPATH, "//span[contains(text(), 'Usage From')]/../../descendant::input")
    usage_to_date_inputbox_locator = (By.XPATH, "//span[contains(text(), 'Usage To')]/../../descendant::input")
    created_date_from_inputbox_locator = (By.XPATH, "//span[contains(text(), 'Created Date From')]/../../descendant::input")
    created_date_to_inputbox_locator = (By.XPATH, "//span[contains(text(), 'Created Date To')]/../../descendant::input")
    from_call_date_inputbox_locator = (By.XPATH, "//span[contains(text(), 'From Call Date')]/../../descendant::input")
    to_call_date_inputbox_locator = (By.XPATH, "//span[contains(text(), 'To Call Date')]/../../descendant::input")
    submit_button_locator = (By.XPATH, "//span[contains(@id, 'ReportSpan')]/img")
    report_parameter_title_locator = (By.ID, "lgx_ReportParameterTitle")
    charts_tab_locator = (By.XPATH, "//span[contains(@id, 'tabCharts') and contains(text(), 'Charts')]")
    tabular_tab_locator = (By.XPATH, "//span[contains(@id, 'tabTab') and contains(text(), 'Tabular')]")
    save_my_report_button_locator = (By.ID, "btnSave")
    on_demand_extract_button_locator = (By.ID, "btnSaveExtract")
    first_level_summarize_by_select_locator = (By.ID, "rSum1_FirstSummarizeBy")
    first_level_summarize_by_select_id = "rSum1_FirstSummarizeBy"
    second_level_summarize_by_select_locator = (By.ID, "rSum2_SecondSummarizeBy")
    second_level_summarize_by_select_id = "rSum2_SecondSummarizeBy"
    third_level_summarize_by_select_locator = (By.ID, "rSum3_ThirdSummarizeBy")
    third_level_summarize_by_select_id = "rSum3_ThirdSummarizeBy"
    reference_set_browse_button_locator = (By.ID, "rSource1_Param1imgDown")
    comparison_set_1_browse_button_locator = (By.ID, "rSource2_Param2imgDown")
    account_browse_button_locator = (By.XPATH, "//span[contains(text(), 'Account')]/../../descendant::img")
    completed_status_locator = (By.ID, "rStatus_StatusID_VO")
    close_status_locator = (By.ID, "btnClose")
    process_status_locator = (By.ID, "rProcessStatus_Param2Lookup")
    account_type_select_locator = (By.ID, "rHub_Param1")
    fourth_level_summarize_by_select_locator = (By.ID, "rSum4_FourthSummarizeBy")
    fourth_level_summarize_by_select_id = "rSum4_FourthSummarizeBy"
    fifth_level_summarize_by_select_locator = (By.ID, "rSum5_FifthSummarizeBy")
    fifth_level_summarize_by_select_id = "rSum5_FifthSummarizeBy"
    submit_button_locator_by_id = (By.ID, "lgxReport")
    new_save_my_report_button_locator = (By.ID, "btnMyRptNewSave")
    standard_tab_locator = (By.XPATH, "//span[contains(@id, 'tabStand') and contains(text(), 'Standard')]")
    rate_dimension_template_browse_button_locator = (By.XPATH, "//span[contains(text(), 'Rate Dimension Template')]/../../descendant::img")
    parent_account_browse_button_locator = (By.XPATH, "//span[contains(text(), 'Parent Account')]/../../descendant::img")
    service_select_locator = (By.ID, "r6Service_Param6")
    number_plan_browse_button_locator = (By.XPATH, "//span[contains(text(), 'Number Plan')]/../../descendant::img")
    product_catalog_select_locator = (By.XPATH, "//span[contains(text(), 'Product Catalog')]/../../descendant::select")
    tariff_type_select_locator = (By.XPATH, "//span[contains(text(), 'Tariff Type')]/../../descendant::select")
    routing_product_browse_button_locator = (By.XPATH, "//span[contains(text(), 'Routing Product')]/../../descendant::img")
    switch_select_locator = (By.XPATH, "//span[contains(text(), 'Switch')]/../../descendant::select")
    status_select_locator = (By.XPATH, "//span[contains(text(), 'Status')]/../../descendant::select")
    profile_select_locator = (By.XPATH, "//span[contains(text(), 'Profile')]/../../descendant::select")
    contract_browse_button_locator = (By.XPATH, "//span[contains(text(), 'Contract')]/../../descendant::img")
    contract_version_browse_button_locator = (By.XPATH, "//span[contains(text(), 'Contract Version')]/../../descendant::img")
    country_browse_button_locator = (By.XPATH, "//img[contains(@id, 'Country_')]")
    rate_type_select_locator = (By.XPATH, "//span[contains(text(), 'Rate Type')]/../../descendant::select")
    currency_browse_button_locator = (By.XPATH, "//span[contains(text(), 'Currency')]/../../descendant::img")
    credit_limit_status_browse_button_locator = (By.XPATH, "//span[contains(text(), 'Credit Limit Status')]/../../descendant::img")
    out_account_browse_button_locator = (By.XPATH, "//span[contains(text(), 'Out Account')]/../../descendant::img")
    routing_destination_browse_button_locator = (By.XPATH, "//span[contains(text(), 'Routing Destination')]/../../descendant::img")
    direction_browse_button_locator = (By.XPATH, "//span[contains(text(), 'Direction')]/../../descendant::img")
    route_class_select_locator = (By.XPATH, "//span[contains(text(), 'Route Class')]/../../descendant::select")
    technical_trunk_browse_button_locator = (By.XPATH, "//span[contains(text(), 'Technical Trunk')]/../../descendant::img")
    deal_name_textbox_locator = (By.XPATH, "//span[contains(text(), 'Deal Name')]/../../descendant::input")
    deal_browse_button_locator = (By.XPATH, "//span[contains(text(), 'Deal')]/../../descendant::img")
    customer_source_browse_button_locator = (By.XPATH, "//span[contains(text(), 'Customer Source')]/../../descendant::img")
    reference_price_list_select_locator = (By.XPATH, "//span[contains(text(), 'Reference Price List')]/../../descendant::select")
    currency_select_locator = (By.XPATH, "//select[contains(@id, 'rCurrency_Param')]")
    currency_select_id = "rCurrency_Param"
    account_browse_button_locator_with_id = (By.XPATH, "//img[contains(@id, 'rAccount_Param')]")
    route_class_browse_button_locator = (By.XPATH, "//span[contains(text(), 'Route Class')]/../../descendant::img")
    delta_report_item_select_locator = (By.ID, "rItem_Param1Lookup")
    rate_type_select_id = "rRateType_Param"
    customer_price_vs_current_cost_submit_button_locator_by_id = (By.ID, "BReport")
    destination_browse_button_locator = (By.XPATH, "//span[contains(text(), 'Destination:')]/../../descendant::img")
    product_browse_button_locator = (By.XPATH, "//span[contains(text(), 'Product')]/../../descendant::img")
    extract_file_name_locator = (By.ID, "lDownload")
    minutes_textbox_locator = (By.XPATH, "//input[contains(@id, 'rMinutes')]")
    # End: Detail frame locators

    # Start: Detail Reports screen locators
    begin_date_text_locator = (By.ID, "BeginDate")
    end_date_text_locator = (By.ID, "EndDate")
    effective_date_text_locator = (By.ID, "EffectiveDate")
    from_processing_date_text_locator = (By.ID, "FilterDisplay")
    to_processing_date_text_locator = (By.ID, "FilterEdDisplay")
    report_preview_button_locator = (By.XPATH, "//a[@id='aPrint']/img")
    report_export_to_excel_button_locator = (By.XPATH, "//a[@id='NExcel']/img")
    report_export_to_csv_button_locator = (By.XPATH, "//a[@id='CSV']/img")
    report_export_to_pdf_button_locator = (By.XPATH, "//a[@id='aPDF']/img")
    end_date_column_locator = (By.ID, "EndDate-TH")
    begin_date_greater_than_end_date_warning_message_locator = (By.XPATH, "//span[@id='rNote_Warning4' and contains(text(), 'is greater than the End Date')]")
    orig_point_code_span_locator = (By.XPATH, "//span[contains(@id, 'OrigPointCode')]")
    rate_dimension_template_first_row_locator = (By.ID, "RateDimensionTemplate_Row1")
    report_table_first_row_locator = (By.XPATH, "//table[contains(@class, 'Table')]/descendant::tbody/tr[@row='1']/td/a")
    selected_dates_are_out_of_range_warning_message_locator = (By.XPATH, "//span[@id='rNote_Warning1' and contains(text(), 'selected dates are out of range')]")
    total_page_count_locator = (By.ID, "tCRA-PageOfPages")
    row_exceed_warning_message_locator = (By.XPATH, "//span[@id='lblWarning' and contains(text(), 'WARNING: The number of returned rows exceeds the allowed size limitation. Only top 30000 records are displayed. Please use filter(s) to reduce the number of records.')]")
    # End: Detail Reports screen locators

    # Start: Customer Profile Reports page locators
    account_rate_plan_selection_button_locator = (By.ID, "rAccountRatePlan_imgDownParam2")
    available_rate_plan_source_id = "AvailableList"
    rate_plan_move_button_locator = (By.ID, "btnAssigned")
    account_rate_plan_selection_submit_button_locator = (By.ID, "bSubmit")
    currency_selection_button_locator = (By.ID, "rCurrency_imgDownParam3")
    first_currency_span_locator = (By.ID, "tLookup_cLookup1_Lookup")
    # End: Customer Profile Reports page locators

    # Start: CDR error report page locators
    first_row_error_type_locator = (By.ID, "ErrorTypeName_Row1")
    layer_2_first_row_locator = (By.ID, "Rx1_Row1")
    first_row_available = False
    layer_2_detail_frame_locator = (By.NAME, "Level2Detail_Row1")
    layer_3_detail_frame_locator = (By.NAME, "Level3Detail_Row1")
    layer_4_detail_frame_locator = (By.NAME, "Level4Detail_Row1")
    cdr_error_report_table_id = "tCDRtError"
    cdr_error_report_layer_2_table_id = "tCDRError"
    cdr_error_report_layer_3_table_id = "tMain"
    layer_5_report_title_locator = (By.ID, "ReportName_Row1")
    second_layer_first_row_locator = (By.ID, "Rx2_Row1")
    # End: CDR error report page locators

    # Start: Save my report page locators
    my_report_title_textbox_locator = (By.ID, "rTitle_ReportDefaultTitle")
    # End: Save my report page locators

    # Start: Reference set popup locators
    number_plan_type_select_locator = (By.XPATH, "//span[contains(text(), 'Number Plan Type')]/../../descendant::select")
    go_button_locator = (By.CLASS_NAME, "GoBtn")
    country_country_code_browse_button = (By.ID, "rCountryCode_Param6imgDown")
    # End: Reference set popup locators

    # Start: Contract status report page locators
    first_row_account_name_span_locator = (By.ID, "Account_Row1")
    second_row_account_name_span_locator = (By.ID, "Account_Row2")
    second_row_parent_account_name_span_locator = (By.ID, "ParentAccount_Row2")
    first_row_rate_plan_span_locator = (By.ID, "RatePlan_Row1")
    # End: Contract status report page locators

    # Start: Technical trunk with history report page locators
    trunk_name_inputbox_locator = (By.ID, "rTrunkName_TrunkName")
    first_row_transmission_type_span_locator = (By.ID, "TransmissionType_Row1")
    first_letters_inputbox_locator = (By.XPATH, "//span[contains(text(), 'First Letter')]/../../descendant::input")
    # End: Technical trunk with history report page locators

    # Start: Extract list page locators
    extract_list_new_button_locator = (By.ID, "Newbtn")
    extract_list_country_textbox_locator = (By.ID , "rCountry_Param1PDisplay")
    extract_save_button_locator = (By.ID, 'btnExtractUpdate')
    extract_title_textbox_locator = (By.ID, "rTitle_ReportDefaultTitle")
    relative_period_dropdown_arrow_locator = (By.ID, "rRelativePeriod_RelativePeriodID")
    extract_next_button_locator = (By.ID, 'btnNext')
    schedule_name_textbox_locator = (By.ID, "name_ScheduleName")
    active_time_hour_textbox_locator = (By.ID, "ractive_time_active_start_time_h")
    active_time_minute_textbox_locator = (By.ID, "ractive_time_active_start_time_m")
    active_date_textbox_locator = (By.ID, "ractive_start_date_active_start_date")
    extract_go_button_locator = (By.XPATH, "//img[@class='lgxGoButton']")
    extract_generation_locator = (By.XPATH, "//span[@class='ppItemProcessType' and contains(text(), 'Extract Generation')]")
    extract_delivery_locator = (By.XPATH, "//span[@class='ppItemProcessType' and contains(text(), 'Extract Delivery')]")
    report_page_exit_button_locator = (By.ID, "C2_mtLogout")
    extract_delivery_complete_img_locator = (By.XPATH, "//span[@class='ppItemProcessType' and contains(text(), 'Extract Delivery')]/../descendant::img[contains(@src, 'Completed')]")
    report_group_dropdown_locator = (By.ID, "rGroupReport_ReportGroupID")
    report_dropdown_locator = (By.ID, "rReport_ReportID")
    level_n_detail_frame_locator = (By.NAME, "LevelNDetail_Row1")
    extract_delete_button_locator = (By.ID, 'btnDel')
    edit_myreport_save_button_locator = (By.ID, 'bntMyRptUpdate')
    cdr_extract_title_textbox_locator = (By.ID, "rTitleNewExtract_ReportDefaultTitle")
    # End: Extract list page locators

    # Start: Reference rates analysis report page locators
    offers_from_date_textbox_locator = (By.ID, "rBDate_BeginDate")
    vendors_massive_look_up_button_locator = (By.ID, "rVendor_Param1imgDown")
    first_available_vendor_locator = (By.XPATH, "//select[@id='AvailableList']/option")
    move_to_assigned_button_locator = (By.ID, "btnAssigned")
    first_assigned_vendor_locator = (By.XPATH, "//select[@id='AssignedList']/option")
    move_to_available_button_locator = (By.ID, "btnAvailable")
    vendor_lookup_submit_button_locator = (By.ID, "bSubmit")
    vendor_lookup_error_message = "The maximum number of selections is 10"
    vendor_lookup_first_letter_textbox_locator = (By.ID, "tbxFirstLetter")
    vendor_lookup_go_button_locator = (By.ID, "btnGo")
    first_row_vendor_locator = (By.ID, "Country_Row1")
    layer_2_table_locator = (By.CLASS_NAME, "L2Table")
    reference_rates_analysis_table_id = "tCRA"
    first_available_customer_source_locator = (By.XPATH, "//select[@id='AvailableCust']/option")
    # End: Reference rates analysis report page locators

    # Start: Monthly operations report page locators
    begin_month_option_locator = (By.XPATH, "//select[@id='rBeginMonth_BeginMonth']/option")
    begin_month_dropdown_locator = (By.ID, "rBeginMonth_BeginMonth")
    total_rpm_column_locator = (By.ID, "sCRy8")
    total_cpm_column_locator = (By.ID, "sCRy9")
    total_ppm_column_locator = (By.ID, "sCRy10")
    mor_first_row_locator = (By.ID, "RxN_Row1")
    # End: Monthly operations report page locators

    # Start: Administrative report page locators
    first_row_product_catalog_span_locator = (By.ID, "ProductCatalog_Row1")
    first_row_tariff_type_span_locator = (By.ID, "TariffType_Row1")
    first_row_routing_product_span_locator = (By.XPATH, "//span[contains(@id, 'Product_Row1')]")
    first_row_status_span_locator = (By.XPATH, "//span[contains(@id, 'Status_Row1')]")
    unified_number_plan_browse_button_locator = (By.XPATH, "//span[contains(text(), 'Unified Number Plan')]/../../descendant::img")
    unified_number_plan_type_select_locator = (By.XPATH, "//span[contains(text(), 'Unified Number Plan Type')]/../../descendant::select")
    unified_number_plan_type_select_id = "rIsOpAc_Param"
    service_level_browse_button_locator = (By.XPATH, "//span[contains(text(), 'Service Level')]/../../descendant::img")
    profit_symbol_select_locator = (By.XPATH, "//span[contains(text(), 'Profit')]/../../descendant::select")
    profit_symbol_select_id = "Profit_AggParam1Label"
    profit_textbox_locator = (By.XPATH, "//input[@id='Profit_AggParam1']")
    # End: Administrative report page locators

    # Start: Bilateral report page locators
    second_row_contract_name_span_locator = (By.ID, "Contract_Row2")
    # End: Bilateral report page locators

    # Start: Operational sales report page locators
    second_row_credit_limit_status_span_locator = (By.XPATH, "//td[@id='cCreditLimitStatus_Row2']/span[@id='CreditLimitStatus_Row2']")
    # End: Operation sales report page locators

    # Start: Traffic report page locators
    second_row_in_account_name_span_locator = (By.ID, "InAccount_Row2")
    second_row_out_account_name_span_locator = (By.ID, "OutAccount_Row2")
    second_row_routing_destination_span_locator = (By.ID, "Destination_Row2")
    # End: Traffic report page locators

    # Start: Network report page locators
    first_row_switch_span_locator = (By.ID, "Switch_Row1")
    first_row_technical_trunk_span_locator = (By.ID, "Trunk_Row1")
    # End: Network report page locators

    # Start: iXTrade report page locators
    second_row_customer_source_span_locator = (By.ID, "Source_Row2")
    first_row_customer_source_span_locator = (By.ID, "Source_Row1")
    cpe_traffic_report_second_row_account_name_span_locator = (By.ID, "cAccount_Row2")
    source_browse_button_locator = (By.XPATH, "//img[contains(@id, 'Source_Param')]")
    source_type_dropdown_locator = (By.XPATH, "//select[contains(@id, 'SourceType_Param')]")
    offer_browse_button_locator = (By.XPATH, "//img[contains(@id, 'Offer_Param')]")
    offer_type_select_locator = (By.ID, "rOfferType_OfferTypeID")
    offer_list_number_of_pages_locator = (By.XPATH, "//rdcondelement2/descendant::span[@id='tOfferList-PageOfPages']")
    next_page_button_locator = (By.ID, "tOfferList-NextPageCaption")
    offer_list_details = []
    offer_list_details_from_database = []
    first_row_effective_date_span_locator = (By.ID, "EffectiveDate_Row1")
    first_row_analyzed_rate_span_locator = (By.ID, "AnalyzedRate_Row1")
    country_list_locator = (By.XPATH, "//select[@id='AvailableList']/option")
    # End: iXTrade report page locators

    # Start: iXRoute report page locators
    route_first_row_routing_product_span_locator = (By.ID, "Product_Row1")
    first_row_more_info_icon_locator = (By.ID, "MoreInfo_Row1")
    look_up_table_second_row_locator = (By.XPATH, "//table[@id='tLookup']/descendant::span[@LineNo='2']")
    route_guide_detail_frame_locator = (By.NAME, "RouteGuideDetail_Row1")
    paging_2_table_locator = (By.CLASS_NAME, "paging2")
    first_row_route_class_span_locator = (By.ID, "RouteClass_Row1")
    layer_2_body_locator = (By.CLASS_NAME, "body2")
    myreport_cancel_button_locator = (By.ID, "BClear")
    lookup_table_tr_locator = (By.XPATH, "//tr[@class='TblMRFATR']")
    database_routing_product = []
    routing_product_list = []
    first_row_actual_rate_change_in_rp_currency_locator = (By.ID, "lblActualRate_Row1")
    first_row_exchange_rate_impact_locator = (By.ID, "lblRateImpact_Row1")
    first_row_rate_calculation_method_locator = (By.ID, "lblCalculation_Row1")
    # End: iXRoute report page locators

    def switch_to_ixreport(self):
        """
        Implementing switch to ixreport functionality
        :return:
        """
        self.switch_to_window()

    def switch_to_list_frame(self):
        """
        Implementing switch to list frame functionality
        :return:
        """
        self.switch_to_frame(self.list_frame_locator)

    def switch_to_detail_frame(self):
        """
        Implementing switch to detail frame functionality
        :return:
        """
        self.switch_to_frame(self.detail_frame_locator)

    def expand_reports_section(self, report_section_name):
        """
        Implementing expand reports section functionality
        :param report_section_name:
        :return:
        """
        self.switch_to_list_frame()
        try:
            reports_section_name_locator = (By.XPATH, "//div[@id='ReportTree2']/descendant::span[text()='%s']" % report_section_name)
            reports_section_name_element = self.wait().until(EC.presence_of_element_located(reports_section_name_locator), 'reports section name locator not found before specified time out')
            reports_section_line_no = reports_section_name_element.get_attribute("LineNo")
            expand_icon_locator = (By.XPATH, "(//img[@class='Outline'])[%s]" % str(reports_section_line_no))
            time.sleep(5)
            self.click_element(expand_icon_locator)
        except:
            pass
        self.switch_to_default_content()

    def click_sub_report_item(self, sub_report_name):
        """
        Implementing click sub report item functionality
        :param sub_report_name:
        :return:
        """
        self.switch_to_list_frame()
        try:
            sub_report_item_locator = (By.XPATH, "//span[@class='layer2ItemA' and text()='%s']" % sub_report_name)
            self.click_element(sub_report_item_locator)
            self.wait_for_ajax_spinner_load(15)
        except:
            pass
        self.switch_to_default_content()

    def get_selected_date(self):
        """
        Implementing get selected date functionality
        :return: selected date
        """
        selected_date = ""
        self.switch_to_detail_frame()
        try:
            selected_date = self.get_text_from_element(self.selected_date_inputbox_locator, is_a_input_field=True)
        except:
            pass
        self.switch_to_default_content()
        return selected_date

    def get_begin_date(self, lower_case_d):
        """
        Implementing get begin date functionality
        :param lower_case_d:
        :return: begin date
        """
        begin_date = ""
        self.switch_to_detail_frame()
        try:
            if lower_case_d is True:
                begin_date = self.get_text_from_element(self.begin_date_with_lower_case_d_inputbox_locator, is_a_input_field=True)
            else:
                begin_date = self.get_text_from_element(self.begin_date_inputbox_locator, is_a_input_field=True)
        except:
            pass
        self.switch_to_default_content()
        return begin_date

    def get_end_date(self, lower_case_d):
        """
        Implementing get end date functionality
        :param lower_case_d:
        :return: end date
        """
        end_date = ""
        self.switch_to_detail_frame()
        try:
            if lower_case_d is True:
                end_date = self.get_text_from_element(self.end_date_with_lower_case_d_inputbox_locator, is_a_input_field=True)
            else:
                end_date = self.get_text_from_element(self.end_date_inputbox_locator, is_a_input_field=True)
        except:
            pass
        self.switch_to_default_content()
        return end_date

    def get_effective_date(self):
        """
        Implementing get effective date functionality
        :return: effective date
        """
        effective_date = ""
        self.switch_to_detail_frame()
        try:
            effective_date = self.get_text_from_element(self.effective_date_inputbox_locator, is_a_input_field=True)
        except:
            pass
        self.switch_to_default_content()
        return effective_date

    def get_from_date(self):
        """
        Implementing get from date functionality
        :return: from date
        """
        from_date = ""
        self.switch_to_detail_frame()
        try:
            from_date = self.get_text_from_element(self.from_date_inputbox_locator, is_a_input_field=True)
        except:
            pass
        self.switch_to_default_content()
        return from_date

    def get_to_date(self):
        """
        Implementing get to date functionality
        :return: to date
        """
        to_date = ""
        self.switch_to_detail_frame()
        try:
            to_date = self.get_text_from_element(self.to_date_inputbox_locator, is_a_input_field=True)
        except:
            pass
        self.switch_to_default_content()
        return to_date

    def get_date_value(self):
        """
        Implementing get date value functionality
        :return: date
        """
        date = ""
        self.switch_to_detail_frame()
        try:
            date = self.get_text_from_element(self.date_inputbox_locator, is_a_input_field=True)
        except:
            pass
        self.switch_to_default_content()
        return date

    def get_from_processing_date(self):
        """
        Implementing get from processing date functionality
        :return: from processing date
        """
        from_processing_date = ""
        self.switch_to_detail_frame()
        try:
            from_processing_date = self.get_text_from_element(self.from_processing_date_inputbox_locator, is_a_input_field=True)
        except:
            pass
        self.switch_to_default_content()
        return from_processing_date

    def get_to_processing_date(self):
        """
        Implementing get to processing date functionality
        :return: to processing date
        """
        to_processing_date = ""
        self.switch_to_detail_frame()
        try:
            to_processing_date = self.get_text_from_element(self.to_processing_date_inputbox_locator, is_a_input_field=True)
        except:
            pass
        self.switch_to_default_content()
        return to_processing_date

    def get_select_date(self):
        """
        Implementing get select date functionality
        :return: select date
        """
        select_date = ""
        self.switch_to_detail_frame()
        try:
            select_date = self.get_text_from_element(self.select_date_inputbox_locator, is_a_input_field=True)
        except:
            pass
        self.switch_to_default_content()
        return select_date

    def get_usage_from_date(self):
        """
        Implementing get usage from date functionality
        :return: usage from date
        """
        usage_from_date = ""
        self.switch_to_detail_frame()
        try:
            usage_from_date = self.get_text_from_element(self.usage_from_date_inputbox_locator, is_a_input_field=True)
        except:
            pass
        self.switch_to_default_content()
        return usage_from_date

    def get_usage_to_date(self):
        """
        Implementing get usage to date functionality
        :return: usage to date
        """
        usage_to_date = ""
        self.switch_to_detail_frame()
        try:
            usage_to_date = self.get_text_from_element(self.usage_to_date_inputbox_locator, is_a_input_field=True)
        except:
            pass
        self.switch_to_default_content()
        return usage_to_date

    def get_created_date_from(self):
        """
        Implementing get created date from functionality
        :return: created date from
        """
        created_date_from = ""
        self.switch_to_detail_frame()
        try:
            created_date_from = self.get_text_from_element(self.created_date_from_inputbox_locator, is_a_input_field=True)
        except:
            pass
        self.switch_to_default_content()
        return created_date_from

    def get_created_date_to(self):
        """
        Implementing get created date to functionality
        :return: created date to
        """
        created_date_to = ""
        self.switch_to_detail_frame()
        try:
            created_date_to = self.get_text_from_element(self.created_date_to_inputbox_locator, is_a_input_field=True)
        except:
            pass
        self.switch_to_default_content()
        return created_date_to

    def get_from_call_date(self):
        """
        Implementing get from call date functionality
        :return: from call date
        """
        from_call_date = ""
        self.switch_to_detail_frame()
        try:
            from_call_date = self.get_text_from_element(self.from_call_date_inputbox_locator, is_a_input_field=True)
        except:
            pass
        self.switch_to_default_content()
        return from_call_date

    def get_to_call_date(self):
        """
        Implementing get to call date functionality
        :return: to call date
        """
        to_call_date = ""
        self.switch_to_detail_frame()
        try:
            to_call_date = self.get_text_from_element(self.to_call_date_inputbox_locator, is_a_input_field=True)
        except:
            pass
        self.switch_to_default_content()
        return to_call_date

    def click_submit_button(self):
        """
        Implementing click submit button functionality
        :return:
        """
        self.switch_to_detail_frame()
        self.set_existing_handles()
        self.click_element(self.submit_button_locator, True)
        self.switch_to_default_content()
        self.switch_to_window()

    def get_specific_column_value_from_reports(self, column_name):
        """
        Implementing get specific column value from reports functionality
        :param column_name:
        :return: column value
        """
        column_value = ""
        row = 1
        while row < 20:
            column_name_locator = (By.XPATH, "(//th/a)[%s]" % str(row))
            column_name_element = self.wait().until(EC.presence_of_element_located(column_name_locator), 'column name locator not found before specified time out')
            if column_name == column_name_element.text:
                column_value_locator = (By.XPATH, "//tbody/tr/td[%s]" % str(row))
                column_value_element = self.wait().until(EC.presence_of_element_located(column_value_locator), 'column value locator not found before specified time out')
                column_value = column_value_element.text
                break
            row += 1
        return column_value

    def get_begin_date_text(self):
        """
        Implementing get begin date text functionality
        :return: begin date
        """
        begin_date = ""
        try:
            begin_date = self.get_text_from_element(self.begin_date_text_locator)
        except:
            pass
        return begin_date

    def get_end_date_text(self):
        """
        Implementing get end date text functionality
        :return: end date
        """
        end_date = ""
        try:
            end_date = self.get_text_from_element(self.end_date_text_locator)
        except:
            pass
        return end_date

    def get_effective_date_text(self):
        """
        Implementing get effective date text functionality
        :return: effective date
        """
        effective_date = ""
        try:
            effective_date = self.get_text_from_element(self.effective_date_text_locator)
        except:
            pass
        return effective_date

    def get_from_processing_date_text(self):
        """
        Implementing get from processing date text functionality
        :return: from processing date
        """
        from_processing_date = ""
        try:
            from_processing_date = self.get_text_from_element(self.from_processing_date_text_locator)
        except:
            pass
        return from_processing_date

    def get_to_processing_date_text(self):
        """
        Implementing get to processing date text functionality
        :return: to processing date
        """
        to_processing_date = ""
        try:
            to_processing_date = self.get_text_from_element(self.to_processing_date_text_locator)
        except:
            pass
        return to_processing_date

    def set_begin_date(self, begin_date, current_date, future_date, previous_date, lower_case_d, num_of_days_to_add):
        """
        Implementing set begin date functionality
        :param begin_date:
        :param current_date:
        :param future_date:
        :param previous_date:
        :param lower_case_d:
        :param num_of_days_to_add:
        :return:
        """
        self.switch_to_detail_frame()
        if begin_date == "":
            if current_date:
                begin_date = self.get_date(current_date=True)
            elif future_date:
                begin_date = self.get_date(future_date=True, number_of_days_to_add=int(num_of_days_to_add))
            elif previous_date:
                begin_date = self.get_date(last_day_of_last_month=True)
        if lower_case_d is True:
            self.set_value_into_input_field(self.begin_date_with_lower_case_d_inputbox_locator, begin_date)
        else:
            self.set_value_into_input_field(self.begin_date_inputbox_locator, begin_date)
        self.click_element(self.report_parameter_title_locator)
        self.switch_to_default_content()

    def click_report_preview_button(self, print_pop_up):
        """
        Implementing click report preview button functionality
        :param print_pop_up:
        :return:
        """
        try:
            self.set_existing_handles()
            if self.is_element_present(self.report_preview_button_locator):
                self.click_element(self.report_preview_button_locator)
                time.sleep(20)
                if print_pop_up is True:
                    print_pop_up = client.Dispatch("WScript.Shell")
                    print_pop_up.SendKeys("{ESC}")
                    print_pop_up.SendKeys("{ESC}")
                self.switch_to_window()
                self.close_browser()
        except:
            pass
        finally:
            self.switch_to_previous_window()

    def click_report_export_to_excel_button(self):
        """
        Implementing click report export to excel button functionality
        :return:
        """
        if self.is_element_present(self.report_export_to_excel_button_locator):
            self.click_element(self.report_export_to_excel_button_locator)
            time.sleep(10)

    def click_report_export_to_csv_button(self):
        """
        Implementing click report export to csv button functionality
        :return:
        """
        self.set_existing_handles()
        try:
            if self.is_element_present(self.report_export_to_csv_button_locator):
                self.click_element(self.report_export_to_csv_button_locator)
                time.sleep(10)
                self.switch_to_window()
                self.close_browser()
        except:
            pass
        finally:
            self.switch_to_previous_window()

    def click_report_export_to_pdf_button(self):
        """
        Implementing click report export to pdf button functionality
        :return:
        """
        if self.is_element_present(self.report_export_to_pdf_button_locator):
            self.click_element(self.report_export_to_pdf_button_locator)
            time.sleep(10)

    def is_end_date_column_present(self):
        """
        Implementing is end date column present functionality
        :return: True/False
        """
        return self.is_element_present(self.end_date_column_locator)

    def is_begin_date_greater_than_end_date_warning_message_shown(self):
        """
        Implementing is begin date greater than end date warning message shown functionality
        :return: True/False
        """
        return self.is_element_present(self.begin_date_greater_than_end_date_warning_message_locator)

    def is_empty_orig_point_code_records_are_shown(self):
        """
        Implementing is empty orig point code records are shown functionality
        :return: True/False
        """
        is_shown = False
        orig_point_code_span_elements = self.wait().until(EC.presence_of_all_elements_located(self.orig_point_code_span_locator))
        for element in orig_point_code_span_elements:
            if element.text == "":
                is_shown = True
                break
        return is_shown

    def click_account_rate_plan_selection_button(self):
        """
        Implementing click account rate plan selection button functionality
        :return:
        """
        self.set_existing_handles()
        self.switch_to_detail_frame()
        self.click_element(self.account_rate_plan_selection_button_locator)
        self.switch_to_default_content()
        self.switch_to_window()

    def move_available_rate_plan_to_assigned(self, multiple_rate_plan):
        """
        Implementing move available rate plan to assigned functionality
        :param multiple_rate_plan:
        :return:
        """
        no_of_rate_plan_to_move = 1
        if multiple_rate_plan is True:
            no_of_rate_plan_to_move = 11
        item_selection_locator = (By.XPATH, "//select[@id='%s']/descendant::option[1]" % self.available_rate_plan_source_id)
        self.click_element(item_selection_locator)
        if no_of_rate_plan_to_move > 1:
            for i in range(no_of_rate_plan_to_move-1):
                selection = client.Dispatch("WScript.Shell")
                selection.SendKeys("+{DOWN}")
        move_single_item_button_element = self.wait().until(EC.element_to_be_clickable(self.rate_plan_move_button_locator), 'rate plan move button locator not found before specified time out')
        move_single_item_button_element.click()
        self.wait_for_ajax_spinner_load()

    def click_account_rate_plan_selection_submit_button(self):
        """
        Implementing click account rate plan selection submit button functionality
        :return:
        """
        self.click_element(self.account_rate_plan_selection_submit_button_locator)
        self.switch_to_previous_window()

    def click_currency_selection_button(self):
        """
        Implementing click currency selection button functionality
        :return:
        """
        self.set_existing_handles()
        self.switch_to_detail_frame()
        self.click_element(self.currency_selection_button_locator)
        self.switch_to_default_content()
        self.switch_to_window()

    def select_first_currency(self):
        """
        Implementing select first currency functionality
        :return:
        """
        self.click_element(self.first_currency_span_locator)
        self.switch_to_previous_window()

    def click_first_row_error_type(self):
        """
        Implementing click first row error type functionality
        :return:
        """
        self.click_element(self.first_row_error_type_locator)
        self.switch_to_frame(self.layer_2_detail_frame_locator)
        if self.is_element_present(self.layer_2_first_row_locator):
            self.first_row_available = True
        self.switch_to_default_content()

    def switch_to_level2_detail_frame(self):
        """
        Implementing switch to level2 detail frame functionality
        :return:
        """
        if self.first_row_available:
            self.switch_to_frame(self.layer_2_detail_frame_locator)

    def switch_to_level3_detail_frame(self):
        """
        Implementing switch to level3 detail frame functionality
        :return:
        """
        if self.first_row_available:
            self.switch_to_frame(self.layer_3_detail_frame_locator)

    def switch_to_level4_detail_frame(self):
        """
        Implementing switch to level4 detail frame functionality
        :return:
        """
        if self.first_row_available:
            self.switch_to_frame(self.layer_4_detail_frame_locator)

    def expand_layer_first_row(self):
        """
        Implementing expand layer first row functionality
        :return:
        """
        if self.first_row_available:
            self.click_element(self.layer_2_first_row_locator)

    def verify_column_names_of_report_table(self, table_id, column_name_list):
        """
        Implementing verify column names of report table functionality
        :param table_id:
        :param column_name_list:
        :return: True/False
        """
        is_verified = True
        report_table_th_locator = (By.XPATH, "//table[@id='%s']/descendant::th" % table_id)
        report_table_th_elements = self.wait().until(EC.presence_of_all_elements_located(report_table_th_locator), 'report table th locator not found before specified time out')
        available_column_list = []
        for element in report_table_th_elements:
            available_column_list.append(element.text.strip())
        for column_name in column_name_list:
            if column_name not in available_column_list:
                is_verified = False
                break
        return is_verified

    def verify_column_names_of_cdr_error_report_table(self, column_name_list):
        """
        Implementing verify column names of cdr error report table functionality
        :param column_name_list:
        :return: True/False
        """
        if self.first_row_available:
            return self.verify_column_names_of_report_table(self.cdr_error_report_table_id, column_name_list)
        else:
            return True

    def verify_column_names_of_cdr_error_report_layer_2_table(self, column_name_list):
        """
        Implementing verify column names of cdr error report layer 2 table functionality
        :param column_name_list:
        :return: True/False
        """
        if self.first_row_available:
            return self.verify_column_names_of_report_table(self.cdr_error_report_layer_2_table_id, column_name_list)
        else:
            return True

    def verify_column_names_of_cdr_error_report_layer_3_table(self, column_name_list):
        """
        Implementing verify column names of cdr error report layer 3 table functionality
        :param column_name_list:
        :return: True/False
        """
        if self.first_row_available:
            return self.verify_column_names_of_report_table(self.cdr_error_report_layer_3_table_id, column_name_list)
        else:
            return True

    def verify_layer_5_report_title(self, expected_title):
        """
        Implementing verify layer 5 report title functionality
        :param expected_title:
        :return: True/False
        """
        is_verified = False
        if self.first_row_available:
            self.first_row_available = False
            actual_title = self.get_text_from_element(self.layer_5_report_title_locator)
            if actual_title == expected_title:
                is_verified = True
        else:
            is_verified = True
        return is_verified

    def click_report_preview_button_if_expand_successful(self):
        """
        Implementing click report preview button if expand successful functionality
        :return:
        """
        if self.first_row_available:
            self.set_existing_handles()
            if self.is_element_present(self.report_preview_button_locator):
                self.click_element(self.report_preview_button_locator)
                time.sleep(5)
                print_pop_up = client.Dispatch("WScript.Shell")
                print_pop_up.SendKeys("{ESC}")
                self.switch_to_window()
                self.close_browser()
                self.switch_to_previous_window()

    def click_report_export_to_excel_button_if_expand_successful(self):
        """
        Implementing click report export to excel button if expand successful functionality
        :return:
        """
        if self.first_row_available:
            if self.is_element_present(self.report_export_to_excel_button_locator):
                self.click_element(self.report_export_to_excel_button_locator)
                time.sleep(5)

    def click_report_export_to_csv_button_if_expand_successful(self):
        """
        Implementing click report export to csv button if expand successful functionality
        :return:
        """
        if self.first_row_available:
            self.set_existing_handles()
            if self.is_element_present(self.report_export_to_csv_button_locator):
                self.click_element(self.report_export_to_csv_button_locator)
                time.sleep(5)
                self.switch_to_window()
                self.close_browser()
                self.switch_to_previous_window()

    def click_report_export_to_pdf_button_if_expand_successful(self):
        """
        Implementing click report export to pdf button if expand successful functionality
        :return:
        """
        if self.first_row_available:
            if self.is_element_present(self.report_export_to_pdf_button_locator):
                self.click_element(self.report_export_to_pdf_button_locator)
                time.sleep(5)

    def select_charts_tab(self):
        """
        Implementing select charts tab functionality
        :return:
        """
        self.switch_to_detail_frame()
        self.click_element(self.charts_tab_locator)
        self.switch_to_default_content()

    def select_tabular_tab(self):
        """
        Implementing select tabular tab functionality
        :return:
        """
        self.switch_to_detail_frame()
        self.click_element(self.tabular_tab_locator)
        self.switch_to_default_content()

    def click_save_my_report_button(self):
        """
        Implementing click save my report button functionality
        :return:
        """
        self.switch_to_detail_frame()
        self.set_existing_handles()
        self.click_element(self.save_my_report_button_locator, True)
        self.switch_to_default_content()
        self.switch_to_window()

    def set_my_report_title(self, title_prefix):
        """
        Implementing set my report title functionality
        :param title_prefix:
        :return:
        """
        global my_report_title
        my_report_title = title_prefix + self.random_string_generator(4)
        self.set_value_into_input_field(self.my_report_title_textbox_locator, my_report_title)

    def click_my_report_save_button(self):
        """
        Implementing click my report save button functionality
        :return:
        """
        save_my_report_button_element = self.wait().until(EC.element_to_be_clickable(self.save_my_report_button_locator), 'save my report button locator not found before specified time out')
        save_my_report_button_element.click()
        time.sleep(5)
        self.accept_alert_pop_up()
        self.switch_to_previous_window()
        self.switch_to_default_content()

    def click_on_demand_extract_button(self):
        """
        Implementing click on demand extract button functionality
        :return:
        """
        self.switch_to_detail_frame()
        self.set_existing_handles()
        self.click_element(self.on_demand_extract_button_locator, True)
        self.switch_to_default_content()
        self.switch_to_window()

    def set_first_level_summarize_by(self, option_text):
        """
        Implementing set first level summarize by functionality
        :param option_text:
        :return:
        """
        self.switch_to_detail_frame()
        self.select_option(self.first_level_summarize_by_select_locator, option_text, self.first_level_summarize_by_select_id)
        self.switch_to_default_content()

    def set_second_level_summarize_by(self, option_text):
        """
        Implementing set second level summarize by functionality
        :param option_text:
        :return:
        """
        self.switch_to_detail_frame()
        self.select_option(self.second_level_summarize_by_select_locator, option_text, self.second_level_summarize_by_select_id)
        self.switch_to_default_content()

    def set_third_level_summarize_by(self, option_text):
        """
        Implementing set third level summarize by functionality
        :param option_text:
        :return:
        """
        self.switch_to_detail_frame()
        self.select_option(self.third_level_summarize_by_select_locator, option_text, self.third_level_summarize_by_select_id)
        self.switch_to_default_content()

    def expand_first_layer_first_row(self):
        """
        Implementing expand first layer first row functionality
        :return:
        """
        self.click_element(self.layer_2_first_row_locator)
        self.switch_to_frame(self.layer_2_detail_frame_locator)
        if self.is_element_present(self.second_layer_first_row_locator):
            self.first_row_available = True
        self.switch_to_default_content()

    def expand_second_layer_first_row(self):
        """
        Implementing expand second layer first row functionality
        :return:
        """
        if self.first_row_available:
            self.click_element(self.second_layer_first_row_locator, True)

    def click_reference_set_browse_button(self):
        """
        Implementing click reference set browse button functionality
        :return:
        """
        self.set_existing_handles()
        self.switch_to_detail_frame()
        self.click_element(self.reference_set_browse_button_locator)
        self.switch_to_default_content()
        self.switch_to_window()

    def click_comparison_set_1_browse_button(self):
        """
        Implementing click comparison set 1 browse button functionality
        :return:
        """
        self.set_existing_handles()
        self.switch_to_detail_frame()
        self.click_element(self.comparison_set_1_browse_button_locator)
        self.switch_to_default_content()
        self.switch_to_window()

    def set_number_plan_type(self, number_plan_type):
        """
        Implementing set number plan type functionality
        :param number_plan_type:
        :return:
        """
        self.select_option(self.number_plan_type_select_locator, number_plan_type)

    def click_go_button(self):
        """
        Implementing click go button functionality
        :return:
        """
        self.click_element(self.go_button_locator)

    def select_row_from_look_up_table(self, row_text, first_row, second_row):
        """
        Implementing select row from look up table functionality
        :param row_text:
        :param first_row:
        :param second_row:
        :return:
        """
        if first_row is True:
            look_up_table_row_locator = (By.XPATH, "//table[@id='tLookup']/descendant::span[@LineNo='1']")
        elif second_row is True:
            look_up_table_row_locator = (By.XPATH, "//table[@id='tLookup']/descendant::span[@LineNo='2']")
        else:
            look_up_table_row_locator = (By.XPATH, "//table[@id='tLookup']/descendant::span[text()='%s']" % row_text)
        self.click_element(look_up_table_row_locator)
        self.switch_to_previous_window()

    def click_country_country_code_browse_button(self):
        """
        Implementing click country country code browse button functionality
        :return:
        """
        self.set_existing_handles()
        self.switch_to_detail_frame()
        self.click_element(self.country_country_code_browse_button)
        self.switch_to_default_content()
        self.switch_to_window()

    def get_first_row_account_name(self):
        """
        Implementing get first row account name functionality
        :return: account_name
        """
        return self.get_text_from_element(self.first_row_account_name_span_locator)

    def get_first_row_rate_plan(self):
        """
        Implementing get first row rate plan functionality
        :return: rate_plan
        """
        return self.get_text_from_element(self.first_row_rate_plan_span_locator)

    def set_report_trunk_name(self, trunk_name):
        """
        Implementing set report trunk name functionality
        :param trunk_name:
        :return:
        """
        self.switch_to_detail_frame()
        self.set_value_into_input_field(self.trunk_name_inputbox_locator, trunk_name)
        self.switch_to_default_content()

    def get_first_row_transmission_type(self):
        """
        Implementing get first row transmission type functionality
        :return: transmission_type
        """
        return self.get_text_from_element(self.first_row_transmission_type_span_locator)

    def click_account_browse_button(self):
        """
        Implementing click account browse button functionality
        :return:
        """
        self.set_existing_handles()
        self.switch_to_detail_frame()
        account_browse_button_element = self.wait().until(EC.presence_of_element_located(self.account_browse_button_locator), 'account browse button locator not found before specified time out')
        account_browse_button_element.click()
        time.sleep(5)
        self.switch_to_default_content()
        self.switch_to_window()

    def set_first_letters(self, first_letters):
        """
        Implementing set first letters functionality
        :param first_letters:
        :return:
        """
        self.set_value_into_input_field(self.first_letters_inputbox_locator, first_letters)

    def select_extracts_submenu(self):
        """
        Implementing select extracts submenu functionality
        :return:
        """
        self.switch_to_header_frame()
        self.select_submenu(self.main_menu_locator, self.extracts_submenu_js_function, script_executor=True)
        self.wait_for_legacy_screen_spinner_load()
        time.sleep(5)
        self.switch_to_default_content()

    def switch_to_header_frame(self):
        """
        Implementing switch to header frame functionality
        :return:
        """
        self.switch_to_frame(self.header_frame_locator)

    def click_extract_list_new_button(self):
        """
        Implementing click extract list new button functionality
        :return:
        """
        self.switch_to_list_frame()
        extract_list_new_button_element = self.wait().until(EC.presence_of_element_located(self.extract_list_new_button_locator), 'new button locator not found before specified time out')
        extract_list_new_button_element.click()
        self.switch_to_default_content()
        self.switch_to_window()

    def click_specific_extract_name_from_list(self, extract_name):
        """
        Implementing click specific extract name form list functionality
        :param extract_name:
        :return:
        """
        specific_extract_name_locator = (By.XPATH, "//span[@class='linkItemADisabled' and contains(text(), '%s')]" % extract_name)
        self.click_element(specific_extract_name_locator)
        self.switch_to_previous_window()

    def switch_to_detail_extract_frame(self):
        """
        Implementing switch to detail extract frame functionality
        :return:
        """
        self.switch_to_frame(self.detail_extract_frame_locator)

    def set_extract_country(self, country_name):
        """
        Implementing set extract country functionality
        :param country_name:
        :return:
        """
        self.switch_to_detail_extract_frame()
        self.set_existing_handles()
        self.click_element(self.extract_list_country_textbox_locator)
        self.switch_to_default_content()
        self.switch_to_window()
        specific_country_name_locator = (By.XPATH, "//span[@class='invItemA' and text()='%s']" % country_name)
        self.click_element(specific_country_name_locator, True)
        self.switch_to_previous_window()

    def click_extract_save_button(self):
        """
        Implementing click extract save button functionality
        :return:
        """
        self.set_existing_handles()
        self.switch_to_detail_extract_frame()
        self.click_element(self.extract_save_button_locator)
        self.switch_to_default_content()
        self.switch_to_window()

    def set_extract_title(self, title_prefix):
        """
        Implementing set extract title functionality
        :param title_prefix:
        :return:
        """
        global title_name
        title_name = title_prefix + self.random_string_generator(4)
        self.set_value_into_input_field(self.extract_title_textbox_locator, title_name)

    def get_created_extract_name(self):
        """
        Implementing get created extract name functionality
        :return: extract_name
        """
        global title_name
        return title_name

    def set_extract_relative_period(self, item):
        """
        Implementing set relative period functionality
        :param item:
        :return:
        """
        self.select_option(self.relative_period_dropdown_arrow_locator, item)

    def click_specific_add_button(self, extract_name):
        """
        Implementing click specific add button functionality
        :param extract_name: 
        :return: 
        """
        self.switch_to_list_frame()
        extract_name_locator = (By.XPATH, "//span[@class='LinkItemA' and contains(text(), '%s')]" % extract_name)
        extract_name_element = self.wait().until(EC.presence_of_element_located(extract_name_locator), 'extract name locator not found before specified time out')
        line_no = str(extract_name_element.get_attribute("LineNo"))
        add_button_locator = (By.XPATH, "//span[@class='LinkItemA' and @LineNo='%s' and contains(text(), 'Add')]" % str(line_no))
        self.click_element(add_button_locator)
        self.switch_to_default_content()

    def click_extract_next_button(self):
        """
        Implementing click extract next button functionality
        :return:
        """
        self.switch_to_detail_extract_frame()
        self.click_element(self.extract_next_button_locator)
        self.switch_to_default_content()

    def set_extract_schedule_name(self, name_prefix):
        """
        Implementing set extract title functionality
        :param name_prefix:
        :return:
        """
        self.switch_to_detail_extract_frame()
        schedule_name = name_prefix + self.random_string_generator(4)
        self.set_value_into_input_field(self.schedule_name_textbox_locator, schedule_name)
        self.switch_to_default_content()

    def set_extract_active_time(self):
        """
        Implementing set extract active time functionality
        :return:
        """
        input_time = datetime.datetime.now().time().strftime("%H:%M")
        input_time = input_time.split(":")
        self.switch_to_detail_extract_frame()
        self.set_value_into_input_field(self.active_time_hour_textbox_locator, input_time[0])
        self.set_value_into_input_field(self.active_time_minute_textbox_locator, input_time[1])
        self.switch_to_default_content()

    def set_extract_active_date(self, relative_period):
        """
        Implementing set extract active time functionality
        :return:
        """
        input_date = ""
        if relative_period == "Today":
            input_date = str(self.get_current_date())
        elif relative_period == "Yesterday":
            input_date = str(self.get_date(past_date=True, number_of_days_to_back=1))
        elif relative_period == "Day before yesterday":
            input_date = str(self.get_date(past_date=True, number_of_days_to_back=2))
        else:
            input_date = str(self.get_current_date())
        self.switch_to_detail_extract_frame()
        self.set_value_into_input_field(self.active_date_textbox_locator, input_date)
        self.switch_to_default_content()

    def click_extract_schedule_save_button(self):
        """
        Implementing click my report save button functionality
        :return:
        """
        self.switch_to_detail_extract_frame()
        save_my_report_button_element = self.wait().until(EC.element_to_be_clickable(self.save_my_report_button_locator), 'save my report button locator not found before specified time out')
        save_my_report_button_element.click()
        time.sleep(5)
        self.accept_alert_pop_up()
        self.switch_to_default_content()

    def is_extract_generation_present(self, extract_name):
        """
        Implementing is extract generation present functionality
        :param extract_name:
        :return: True/False
        """
        is_present = False
        timeout = 150
        self.switch_to_list_frame()
        try:
            end_time = time.time() + timeout
            while time.time() < end_time:
                self.wait(5)
                self.click_element(self.extract_go_button_locator)
                extract_name_locator = (By.XPATH, "//span[@class='LinkItemA' and contains(text(), '%s')]" % extract_name)
                extract_name_element = self.wait().until(EC.presence_of_element_located(extract_name_locator), 'extract name locator not found before specified time out')
                line_no = str(extract_name_element.get_attribute("LineNo"))
                icon_button_locator = (By.XPATH, "//img[@LineNo='%s']" % line_no)
                self.click_element(icon_button_locator)
                if self.is_element_present(self.extract_generation_locator):
                    is_present = True
                    break
        except:
            raise
        finally:
            self.switch_to_default_content()
            return is_present

    def is_completed_extract_status_present(self,):
        """
        Implementing is completed extract status present functionality
        :return: 
        """
        is_present = False
        timeout = 900
        try:
            end_time = time.time() + timeout
            while time.time() < end_time:
                self.set_existing_handles()
                self.switch_to_list_frame()
                self.click_element(self.extract_generation_locator)
                self.switch_to_default_content()
                self.switch_to_window()
                completed_status_element = self.wait().until(EC.presence_of_element_located(self.completed_status_locator), 'completed status locator not found before specified time out')
                completed_status_text = completed_status_element.text
                if str(completed_status_text) == "Completed":
                    is_present = True
                    self.click_element(self.close_status_locator)
                    self.switch_to_previous_window()
                    break
                elif str(completed_status_text) == "Failed":
                    self.click_element(self.close_status_locator)
                    self.switch_to_previous_window()
                    break
                elif time.time() > end_time:
                    break
                self.click_element(self.close_status_locator)
                self.switch_to_previous_window()
        except:
            raise
        self.switch_to_default_content()
        return is_present

    def click_report_page_exit_button(self):
        """
        Implementing click report page exit button functionality
        :return:
        """
        self.switch_to_header_frame()
        self.click_element(self.report_page_exit_button_locator)
        self.switch_to_default_window()

    def set_offers_from_date(self, offers_from_date, current_date, future_date):
        """
        Implementing set offers from functionality
        :param offers_from_date:
        :param current_date:
        :param future_date:
        :return:
        """
        self.switch_to_detail_frame()
        try:
            if offers_from_date == "":
                if current_date:
                    offers_from_date = self.get_date(current_date=True)
                elif future_date:
                    offers_from_date = self.get_date(future_date=True, number_of_days_to_add=15)
            self.set_value_into_input_field(self.offers_from_date_textbox_locator, offers_from_date)
            self.click_element(self.report_parameter_title_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_submit_button_and_verify_error_message(self, error_message):
        """
        Implementing click submit button and verify error message functionality
        :return:
        """
        self.switch_to_detail_frame()
        try:
            submit_button_element = self.wait().until(EC.presence_of_element_located(self.submit_button_locator), 'submit button locator not found before specified time out')
            submit_button_element.click()
            time.sleep(5)
            if error_message in str(self.get_alert_text()):
                self.accept_alert_pop_up()
            else:
                self.dismiss_alert_pop_up()
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_vendors_massive_lookup_button(self):
        """
        Implementing click vendors massive look up button functionality
        :return:
        """
        self.switch_to_detail_frame()
        self.set_existing_handles()
        try:
            self.click_element(self.vendors_massive_look_up_button_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()
            self.switch_to_window()

    def move_more_than_ten_vendors_to_assign(self):
        """
        Implementing move more than ten vendors to assign functionality
        :return:
        """
        try:
            for i in range(0, 12):
                first_available_vendor_element = self.wait(20).until(EC.presence_of_element_located(self.first_available_vendor_locator), 'first available vendor locator not found before specified time out')
                first_available_vendor_element.click()
                move_to_assigned_button_element = self.wait(20).until(EC.presence_of_element_located(self.move_to_assigned_button_locator), 'move to assigned button locator not found before specified time out')
                move_to_assigned_button_element.click()
        except:
            pass

    def click_vendor_lookup_submit_button_and_verify_error_message(self):
        """
        Implementing click vendor lookup submit button and verify error message functionality
        :return:
        """
        vendor_look_up_submit_button_element = self.wait().until(EC.presence_of_element_located(self.vendor_lookup_submit_button_locator), 'vendor lookup submit button locator not found before specified time out')
        vendor_look_up_submit_button_element.click()
        time.sleep(5)
        if self.vendor_lookup_error_message in self.get_alert_text():
            self.accept_alert_pop_up()
        else:
            self.dismiss_alert_pop_up()

    def move_selected_vendors_to_available(self):
        """
        Implementing move selected vendors to available functionality
        :return:
        """
        for i in range(0, 12):
            first_assigned_vendor_element = self.wait().until(EC.presence_of_element_located(self.first_assigned_vendor_locator), 'first assigned vendor locator not found before specified time out')
            first_assigned_vendor_element.click()
            move_to_available_button_element = self.wait().until(EC.presence_of_element_located(self.move_to_available_button_locator), 'move to available button locator not found before specified time out')
            move_to_available_button_element.click()

    def set_vendor_lookup_first_letter(self, vendor_name):
        """
        Implementing set vendor lookup first letter functionality
        :param vendor_name:
        :return:
        """
        self.set_value_into_input_field(self.vendor_lookup_first_letter_textbox_locator, vendor_name)

    def click_vendor_lookup_go_button(self):
        """
        Implementing click vendor lookup go button functionality
        :return:
        """
        self.click_element(self.vendor_lookup_go_button_locator)

    def move_vendor_to_assigned(self):
        """
        Implementing move vendor to assigned functionality
        :return:
        """
        self.click_element(self.first_available_vendor_locator)
        self.click_element(self.move_to_assigned_button_locator)

    def click_vendor_lookup_submit_button(self):
        """
        Implementing click vendor lookup submit button and verify error message functionality
        :return:
        """
        self.click_element(self.vendor_lookup_submit_button_locator)
        self.switch_to_previous_window()

    def click_first_row_vendor_name(self):
        """
        Implementing click first row vendor name functionality
        :return:
        """
        self.click_element(self.first_row_vendor_locator)
        self.switch_to_frame(self.layer_2_detail_frame_locator)
        if self.is_element_present(self.layer_2_table_locator):
            self.first_row_available = True
        self.switch_to_default_content()

    def verify_column_names_of_reference_rates_analysis_report_table(self, column_name_list):
        """
        Implementing verify column names of reference rates analysis report table functionality
        :param column_name_list:
        :return: True/False
        """
        if self.first_row_available:
            return self.verify_column_names_of_report_table(self.reference_rates_analysis_table_id, column_name_list)
        else:
            return True

    def verify_column_names_of_reference_rates_analysis_report_layer_2_table(self, column_name_list):
        """
        Implementing verify column names of reference rates analysis report layer 2 table functionality
        :param column_name_list:
        :return: True/False
        """
        if self.first_row_available:
            return self.verify_column_names_of_report_table(self.cdr_error_report_layer_3_table_id, column_name_list)
        else:
            return True

    def is_completed_extract_delivery_status_present(self,):
        """
        Implementing is completed extract delivery status present functionality
        :return: 
        """
        is_present = False
        self.set_existing_handles()
        self.switch_to_list_frame()
        self.click_element(self.extract_delivery_locator)
        self.switch_to_default_content()
        self.switch_to_window()
        completed_status_element = self.wait().until(EC.presence_of_element_located(self.completed_status_locator), 'completed status locator not found before specified time out')
        completed_status_text = completed_status_element.text
        if str(completed_status_text) == "Completed":
            is_present = True
            self.click_element(self.close_status_locator)
            self.switch_to_previous_window()
        elif str(completed_status_text) == "Failed":
            self.click_element(self.close_status_locator)
            self.switch_to_previous_window()
        self.set_existing_handles()
        return is_present

    def is_extract_delivery_present(self, extract_name):
        """
        Implementing is extract delivery present functionality
        :param extract_name:
        :return: True/False
        """
        is_present = False
        timeout = 900
        self.switch_to_list_frame()
        try:
            end_time = time.time() + timeout
            while time.time() < end_time:
                self.wait(5)
                self.click_element(self.extract_go_button_locator)
                extract_name_locator = (By.XPATH, "//span[@class='LinkItemA' and contains(text(), '%s')]" % extract_name)
                extract_name_element = self.wait().until(EC.presence_of_element_located(extract_name_locator), 'extract name locator not found before specified time out')
                line_no = str(extract_name_element.get_attribute("LineNo"))
                icon_button_locator = (By.XPATH, "//img[@LineNo='%s']" % line_no)
                self.click_element(icon_button_locator)
                if self.is_element_present(self.extract_delivery_complete_img_locator):
                    is_present = True
                    break
        except:
            raise
        finally:
            self.switch_to_default_content()
            return is_present

    def set_process_status(self, status):
        """
        Implementing set process status functionality
        :param status:
        :return:
        """
        self.switch_to_detail_frame()
        self.set_existing_handles()
        self.click_element(self.process_status_locator)
        self.switch_to_default_content()
        self.switch_to_window()
        status_locator = (By.XPATH, "//div[@id='tLookupPaging']/descendant::span[text()='%s']" % status)
        self.click_element(status_locator)
        self.switch_to_previous_window()

    def compare_process_status(self, status_to_compare):
        """
        Implementing compare process status functionality
        :param status_to_compare:
        :return: True/False
        """
        process_status_locator = (By.XPATH, "//td[@id='cFilter2']/span")
        process_status_element = self.wait().until(EC.presence_of_element_located(process_status_locator), 'locator not found before specified time out')
        status = str(process_status_element.text).split(" ")
        if status[2] == status_to_compare:
            return True
        else:
            return False

    def compare_process_status_on_table(self, status_to_compare):
        """
        Implementing compare process status on table functionality
        :param status_to_compare:
        :return: True/False
        """
        process_status_locator = (By.XPATH, "//a[contains(@id, 'ShowOrderDetail_Row')]/span[text()='%s']" % status_to_compare)
        process_status_element = self.wait().until(EC.presence_of_element_located(process_status_locator), 'locator not found before specified time out')
        status = str(process_status_element.text)
        if status == str(status_to_compare):
            return True
        else:
            return False

    def set_account_type(self, option_text):
        """
        Implementing set account type functionality
        :param option_text:
        :return:
        """
        self.switch_to_detail_frame()
        self.select_option(self.account_type_select_locator, option_text)
        self.switch_to_default_content()

    def is_report_page_present_for_selected_account_type(self, account_type):
        """
        Implementing is report page present for selected account type functionality
        :param account_type:
        :return: True/False
        """
        account_type_locator = (By.XPATH, "//span[@id='AccountType' and text()='%s']" % account_type)
        return self.is_element_present(account_type_locator)

    def set_fourth_level_summarize_by(self, option_text):
        """
        Implementing set fourth level summarize by functionality
        :param option_text:
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.select_option(self.fourth_level_summarize_by_select_locator, option_text, self.fourth_level_summarize_by_select_id)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def set_fifth_level_summarize_by(self, option_text):
        """
        Implementing set fifth level summarize by functionality
        :param option_text:
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.select_option(self.fifth_level_summarize_by_select_locator, option_text, self.fifth_level_summarize_by_select_id)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def set_begin_month(self):
        """
        Implementing set begin month functionality
        :return:
        """
        self.switch_to_detail_frame()
        try:
            begin_month_option_elements = self.wait().until(EC.presence_of_all_elements_located(self.begin_month_option_locator), 'begin month option locator not found before specified time out')
            number_of_options = len(begin_month_option_elements)
            begin_month_last_option_locator = (By.XPATH, "//select[@id='rBeginMonth_BeginMonth']/option[%s]" % str(number_of_options))
            self.click_element(self.begin_month_dropdown_locator)
            self.click_element(begin_month_last_option_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_submit_button_with_id(self):
        """
        Implementing click submit button with id functionality
        :return:
        """
        self.switch_to_detail_frame()
        self.set_existing_handles()
        try:
            submit_button_element = self.wait().until(EC.presence_of_element_located(self.submit_button_locator_by_id), 'submit button locator by id not found before specified time out')
            self.script_executor_click(submit_button_element)
            time.sleep(10)
        except:
            raise
        finally:
            self.switch_to_default_content()
        self.switch_to_window()

    def click_new_save_my_report_button(self):
        """
        Implementing click new save my report button functionality
        :return:
        """
        self.switch_to_detail_frame()
        self.set_existing_handles()
        try:
            self.click_element(self.new_save_my_report_button_locator, True)
        except:
            raise
        finally:
            self.switch_to_default_content()
        self.switch_to_window()

    def select_standard_tab(self):
        """
        Implementing select standard tab functionality
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.click_element(self.standard_tab_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def is_ppm_calculated_correctly(self):
        """
        Implementing is ppm calculated correctly functionality
        :return: True/False
        """
        calculated_correctly = False
        rpm_value = self.get_text_from_element(self.total_rpm_column_locator)
        cpm_value = self.get_text_from_element(self.total_cpm_column_locator)
        ppm_value = self.get_text_from_element(self.total_ppm_column_locator)
        if str(float(ppm_value)) == str(float(rpm_value)-float(cpm_value)):
            calculated_correctly = True
        return calculated_correctly

    def click_extract_go_button(self):
        """
        Implementing click extract go button functionality
        :return:
        """
        self.switch_to_list_frame()
        try:
            self.click_element(self.extract_go_button_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def set_report_group(self, report_group):
        """
        Implementing set report group functionality
        :param report_group:
        :return:
        """
        self.switch_to_list_frame()
        try:
            self.select_option(self.report_group_dropdown_locator, report_group)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def set_report(self, report):
        """
        Implementing set report functionality
        :param report:
        :return:
        """
        self.switch_to_list_frame()
        try:
            self.select_option(self.report_dropdown_locator, report)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def get_my_report_title(self):
        """
        Implementing get my report title functionality
        :return: my_report_title
        """
        global my_report_title
        return my_report_title

    def expand_sub_report_item(self, sub_report_name):
        """
        Implementing expand sub_report item functionality
        :param sub_report_name:
        :return:
        """
        self.switch_to_list_frame()
        try:
            sub_report_item_locator = (By.XPATH, "//span[@class='layer2ItemA' and text()='%s']" % sub_report_name)
            sub_report_item_element = self.wait().until(EC.presence_of_element_located(sub_report_item_locator), 'sub report item lcoator not found before specified time out')
            sub_report_item_line_no = str(sub_report_item_element.get_attribute("LineNo"))
            expand_img_locator = (By.XPATH, "//span[@class='layer2ItemA' and text()='%s']/../img[%s]" % (sub_report_name, sub_report_item_line_no))
            self.click_element(expand_img_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_my_report_name(self, report_name):
        """
        Implementing click my report name functionality
        :param report_name:
        :return:
        """
        self.switch_to_list_frame()
        self.set_existing_handles()
        try:
            report_name_locator = (By.XPATH, "//table[@class='Mtable']/descendant::span[text()='%s']" % report_name)
            self.click_element(report_name_locator, True)
        except:
            raise
        finally:
            self.switch_to_default_content()
        self.switch_to_window()

    def click_my_report_submit_button(self):
        """
        Implementing click my report submit button functionality
        :return:
        """
        my_report_submit_button_locator = self.wait().until(EC.presence_of_element_located(self.submit_button_locator_by_id), 'submit button locator with id not found before specified time out')
        my_report_submit_button_locator.click()
        time.sleep(10)
        self.switch_to_window()

    def expand_mor_layer_first_row(self):
        """
        Implementing expand mor layer first row functionality
        :return:
        """
        self.click_element(self.mor_first_row_locator)
        self.switch_to_frame(self.level_n_detail_frame_locator)
        try:
            if self.is_element_present(self.mor_first_row_locator):
                self.first_row_available = True
        except:
            raise
        finally:
            self.switch_to_default_content()

    def switch_to_level_n_detail_frame(self):
        """
        Implementing switch to level n detail frame functionality
        :return:
        """
        self.switch_to_frame(self.level_n_detail_frame_locator)

    def is_sub_report_item_present(self, sub_report_name):
        """
        Implementing is sub report item present functionality
        :param sub_report_name:
        :return: True/False
        """
        is_present = False
        self.switch_to_list_frame()
        try:
            sub_report_item_locator = (By.XPATH, "//span[@class='layer2ItemA' and text()='%s']" % sub_report_name)
            is_present = self.is_element_present(sub_report_item_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()
            return is_present

    def set_select_date(self, select_date, current_date, future_date, previous_date):
        """
        Implementing set select date functionality
        :param select_date:
        :param current_date:
        :param future_date:
        :param previous_date:
        :return:
        """
        self.switch_to_detail_frame()
        try:
            if select_date == "":
                if current_date:
                    select_date = self.get_date(current_date=True)
                elif future_date:
                    select_date = self.get_date(future_date=True)
                elif previous_date:
                    select_date = self.get_date(last_day_of_last_month=True)
            self.set_value_into_input_field(self.select_date_inputbox_locator, select_date)
            self.click_element(self.report_parameter_title_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def set_service(self, option_text):
        """
        Implementing set service functionality
        :param option_text:
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.select_option(self.service_select_locator, option_text)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def get_first_row_rate_dimension_template(self):
        """
        Implementing get first row rate dimension template functionality
        :return: rate_dimension_template
        """
        return self.get_text_from_element(self.rate_dimension_template_first_row_locator)

    def click_rate_dimension_template_browse_button(self):
        """
        Implementing click rate dimension template browse button functionality
        :return:
        """
        self.set_existing_handles()
        self.switch_to_detail_frame()
        try:
            rate_dimension_template_browse_button_element = self.wait().until(EC.presence_of_element_located(self.rate_dimension_template_browse_button_locator), 'rate dimension template browse button locator not found before specified time out')
            rate_dimension_template_browse_button_element.click()
            time.sleep(5)
        except:
            raise
        finally:
            self.switch_to_default_content()
        self.switch_to_window()

    def get_second_row_account_name(self):
        """
        Implementing get second row account name functionality
        :return: account_name
        """
        global report_account_name
        report_account_name = self.get_text_from_element(self.second_row_account_name_span_locator)
        return report_account_name

    def get_second_row_parent_account_name(self):
        """
        Implementing get second row parent account name functionality
        :return: account_name
        """
        return self.get_text_from_element(self.second_row_parent_account_name_span_locator)

    def click_parent_account_browse_button(self):
        """
        Implementing click parent account browse button functionality
        :return:
        """
        self.set_existing_handles()
        self.switch_to_detail_frame()
        try:
            parent_account_browse_button_element = self.wait().until(EC.presence_of_element_located(self.parent_account_browse_button_locator), 'parent account browse button locator not found before specified time out')
            self.script_executor_click(parent_account_browse_button_element)
            time.sleep(5)
        except:
            raise
        finally:
            self.switch_to_default_content()
        self.switch_to_window()

    def get_first_row_product_catalog(self):
        """
        Implementing get first row product catalog functionality
        :return: product_catalog
        """
        return self.get_text_from_element(self.first_row_product_catalog_span_locator)

    def click_number_plan_browse_button(self):
        """
        Implementing click number plan browse button functionality
        :return:
        """
        self.set_existing_handles()
        self.switch_to_detail_frame()
        try:
            number_plan_browse_button_element = self.wait().until(EC.presence_of_element_located(self.number_plan_browse_button_locator), 'number plan browse button locator not found before specified time out')
            self.script_executor_click(number_plan_browse_button_element)
            time.sleep(5)
        except:
            raise
        finally:
            self.switch_to_default_content()
        self.switch_to_window()

    def set_product_catalog(self, option_text):
        """
        Implementing set product catalog functionality
        :param option_text:
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.select_option(self.product_catalog_select_locator, option_text)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def get_first_row_tariff_type(self):
        """
        Implementing get first row tariff type functionality
        :return: tariff type
        """
        full_tariff_type = self.get_text_from_element(self.first_row_tariff_type_span_locator)
        tariff_type = full_tariff_type.split(" ")
        return tariff_type[0]

    def set_tariff_type(self, option_text):
        """
        Implementing set tariff type functionality
        :param option_text:
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.select_option(self.tariff_type_select_locator, option_text)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def get_first_row_routing_product(self):
        """
        Implementing get first row routing product functionality
        :return: routing product
        """
        return self.get_text_from_element(self.first_row_routing_product_span_locator)

    def click_routing_product_browse_button(self):
        """
        Implementing click routing product browse button functionality
        :return:
        """
        self.set_existing_handles()
        self.switch_to_detail_frame()
        try:
            routing_product_browse_button_element = self.wait().until(EC.presence_of_element_located(self.routing_product_browse_button_locator), 'routing product browse button locator not found before specified time out')
            self.script_executor_click(routing_product_browse_button_element)
            time.sleep(5)
        except:
            raise
        finally:
            self.switch_to_default_content()
        self.switch_to_window()

    def set_from_processing_date(self, from_processing_date, current_date, future_date, previous_date):
        """
        Implementing set from processing date functionality
        :param from_processing_date:
        :param current_date:
        :param future_date:
        :param previous_date:
        :return:
        """
        self.switch_to_detail_frame()
        try:
            if from_processing_date == "":
                if current_date:
                    from_processing_date = self.get_date(current_date=True)
                elif future_date:
                    from_processing_date = self.get_date(future_date=True)
                elif previous_date:
                    from_processing_date = self.get_date(last_day_of_last_month=True)
            self.set_value_into_input_field(self.from_processing_date_inputbox_locator, from_processing_date)
            self.click_element(self.report_parameter_title_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def set_switch(self, option_text):
        """
        Implementing set switch functionality
        :param option_text:
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.select_option(self.switch_select_locator, option_text)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def set_status(self, option_text):
        """
        Implementing set status functionality
        :param option_text:
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.select_option(self.status_select_locator, option_text)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def set_profile(self, option_text):
        """
        Implementing set profile functionality
        :param option_text:
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.select_option(self.profile_select_locator, option_text)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def get_first_row_status(self):
        """
        Implementing get first row status functionality
        :return: status
        """
        return self.get_text_from_element(self.first_row_status_span_locator)

    def get_second_row_contract_name(self):
        """
        Implementing get second row contract name functionality
        :return: contract_name
        """
        global report_contract_name
        report_contract_name = self.get_text_from_element(self.second_row_contract_name_span_locator)
        return report_contract_name

    def get_saved_contract_name(self):
        """
        Implementing get saved contract name functionality
        :return: contract_name
        """
        global report_contract_name
        return report_contract_name

    def get_saved_account_name(self):
        """
        Implementing get saved account name functionality
        :return: account_name
        """
        global report_account_name
        return report_account_name

    def click_contract_browse_button(self):
        """
        Implementing click contract browse button functionality
        :return:
        """
        self.set_existing_handles()
        self.switch_to_detail_frame()
        contract_browse_button_element = self.wait().until(EC.presence_of_element_located(self.contract_browse_button_locator), 'contract browse button locator not found before specified time out')
        contract_browse_button_element.click()
        time.sleep(5)
        self.switch_to_default_content()
        self.switch_to_window()

    def click_contract_version_browse_button(self):
        """
        Implementing click contract version browse button functionality
        :return:
        """
        self.set_existing_handles()
        self.switch_to_detail_frame()
        contract_version_browse_button_element = self.wait().until(EC.presence_of_element_located(self.contract_version_browse_button_locator), 'contract version browse button locator not found before specified time out')
        contract_version_browse_button_element.click()
        time.sleep(5)
        self.switch_to_default_content()
        self.switch_to_window()

    def click_country_browse_button(self, is_detail_extract_frame):
        """
        Implementing click country browse button functionality
        :param is_detail_extract_frame:
        :return:
        """
        self.set_existing_handles()
        if is_detail_extract_frame is False:
            self.switch_to_detail_frame()
        else:
            self.switch_to_detail_extract_frame()
        country_browse_button_element = self.wait().until(EC.presence_of_element_located(self.country_browse_button_locator), 'country browse button locator not found before specified time out')
        country_browse_button_element.click()
        time.sleep(5)
        self.switch_to_default_content()
        self.switch_to_window()

    def set_rate_type(self, option_text):
        """
        Implementing set rate type functionality
        :param option_text:
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.select_option(self.rate_type_select_locator, option_text)
        except:
            self.select_option(self.rate_type_select_locator, None, select_id=self.rate_type_select_id, first_item=True)
        finally:
            self.switch_to_default_content()

    def get_second_row_credit_limit_status(self):
        """
        Implementing get second row credit limit status functionality
        :return: credit_limit_status
        """
        global credit_limit_status
        credit_limit_status = self.get_text_from_element(self.second_row_credit_limit_status_span_locator)
        return credit_limit_status

    def click_credit_limit_status_browse_button(self):
        """
        Implementing click credit limit status browse button functionality
        :return:
        """
        self.set_existing_handles()
        self.switch_to_detail_frame()
        try:
            credit_limit_status_browse_button_element = self.wait().until(EC.presence_of_element_located(self.credit_limit_status_browse_button_locator), 'credit limit status browse button locator not found before specified time out')
            credit_limit_status_browse_button_element.click()
            time.sleep(5)
        except:
            raise
        finally:
            self.switch_to_default_content()
        self.switch_to_window()

    def get_second_row_in_account_name(self):
        """
        Implementing get second row in account name functionality
        :return: in_account_name
        """
        global in_account_name
        in_account_name = self.get_text_from_element(self.second_row_in_account_name_span_locator)
        return in_account_name

    def get_second_row_out_account_name(self):
        """
        Implementing get second row out account name functionality
        :return: out_account_name
        """
        global out_account_name
        out_account_name = self.get_text_from_element(self.second_row_out_account_name_span_locator)
        return out_account_name

    def get_second_row_routing_destination(self):
        """
        Implementing get second row routing destination functionality
        :return: routing_destination
        """
        global routing_destination
        routing_destination = self.get_text_from_element(self.second_row_routing_destination_span_locator)
        return routing_destination

    def click_out_account_browse_button(self):
        """
        Implementing click out account browse button functionality
        :return:
        """
        self.set_existing_handles()
        self.switch_to_detail_frame()
        try:
            out_account_browse_button_element = self.wait().until(EC.presence_of_element_located(self.out_account_browse_button_locator), 'out account browse button locator not found before specified time out')
            out_account_browse_button_element.click()
            time.sleep(5)
        except:
            raise
        finally:
            self.switch_to_default_content()
        self.switch_to_window()

    def click_routing_destination_browse_button(self):
        """
        Implementing click routing destination browse button functionality
        :return:
        """
        self.set_existing_handles()
        self.switch_to_detail_frame()
        try:
            routing_destination_browse_button_element = self.wait().until(EC.presence_of_element_located(self.routing_destination_browse_button_locator), 'out account browse button locator not found before specified time out')
            routing_destination_browse_button_element.click()
            time.sleep(5)
        except:
            raise
        finally:
            self.switch_to_default_content()
        self.switch_to_window()

    def set_created_date_from(self, created_date_from, current_date, future_date, previous_date, num_of_days_to_add):
        """
        Implementing set created date from functionality
        :param created_date_from:
        :param current_date:
        :param future_date:
        :param previous_date:
        :param num_of_days_to_add:
        :return:
        """
        self.switch_to_detail_frame()
        if created_date_from == "":
            if current_date:
                created_date_from = self.get_date(current_date=True)
            elif future_date:
                created_date_from = self.get_date(future_date=True, number_of_days_to_add=int(num_of_days_to_add))
            elif previous_date:
                created_date_from = self.get_date(last_day_of_last_month=True)
        self.set_value_into_input_field(self.created_date_from_inputbox_locator, created_date_from)
        self.click_element(self.report_parameter_title_locator)
        self.switch_to_default_content()

    def click_direction_browse_button(self):
        """
        Implementing click direction browse button functionality
        :return:
        """
        self.set_existing_handles()
        self.switch_to_detail_frame()
        try:
            direction_browse_button_element = self.wait().until(EC.presence_of_element_located(self.direction_browse_button_locator), 'direction browse button locator not found before specified time out')
            direction_browse_button_element.click()
            time.sleep(5)
        except:
            raise
        finally:
            self.switch_to_default_content()
        self.switch_to_window()

    def set_route_class(self, option_text):
        """
        Implementing set route class functionality
        :param option_text:
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.select_option(self.route_class_select_locator, option_text)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_submit_button_to_verify_warning(self):
        """
        Implementing click submit button to verify warning functionality
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.click_element(self.submit_button_locator)
            time.sleep(5)
            self.accept_alert_pop_up()
        except:
            pass
        finally:
            self.switch_to_default_content()

    def click_technical_trunk_browse_button(self):
        """
        Implementing click technical trunk browse button functionality
        :return:
        """
        self.set_existing_handles()
        self.switch_to_detail_frame()
        try:
            technical_trunk_browse_button_element = self.wait().until(EC.presence_of_element_located(self.technical_trunk_browse_button_locator), 'technical trunk browse button locator not found before specified time out')
            technical_trunk_browse_button_element.click()
            time.sleep(5)
        except:
            raise
        finally:
            self.switch_to_default_content()
        self.switch_to_window()

    def get_first_row_technical_trunk(self):
        """
        Implementing get first row technical trunk functionality
        :return: technical_trunk
        """
        global technical_trunk
        technical_trunk = self.get_text_from_element(self.first_row_technical_trunk_span_locator)
        return technical_trunk

    def get_first_row_switch(self):
        """
        Implementing get first row switch functionality
        :return: switch
        """
        global switch
        switch = self.get_text_from_element(self.first_row_switch_span_locator)
        return switch

    def click_first_row_technical_trunk(self):
        """
        Implementing click first row technical trunk functionality
        :return:
        """
        self.click_element(self.first_row_technical_trunk_span_locator)
        self.switch_to_frame(self.layer_2_detail_frame_locator)
        if self.is_element_present(self.layer_2_table_locator):
            self.first_row_available = True
        self.switch_to_default_content()

    def set_deal_name(self, created_deal_name):
        """
        Implementing set route class functionality
        :param created_deal_name:
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.set_value_into_input_field(self.deal_name_textbox_locator, created_deal_name)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_deal_browse_button(self):
        """
        Implementing click account browse button functionality
        :return:
        """
        self.set_existing_handles()
        self.switch_to_detail_frame()
        account_browse_button_element = self.wait().until(EC.presence_of_element_located(self.deal_browse_button_locator), 'deal browse button locator not found before specified time out')
        account_browse_button_element.click()
        time.sleep(5)
        self.switch_to_default_content()
        self.switch_to_window()

    def set_date_value_into_specific_date_field(self, text_field_name, created_date_from, current_date, future_date, previous_date, num_of_days_to_add):
        """
        Implementing set date value into specific date field functionality
        :param text_field_name:
        :param created_date_from:
        :param current_date:
        :param future_date:
        :param previous_date:
        :param num_of_days_to_add:
        :return:
        """
        self.switch_to_detail_frame()
        specific_date_text_field_locator = (By.XPATH, "//span[contains(text(), '%s')]/../../descendant::input" % text_field_name)
        if created_date_from == "":
            if current_date:
                created_date_from = self.get_date(current_date=True)
            elif future_date:
                created_date_from = self.get_date(future_date=True, number_of_days_to_add=int(num_of_days_to_add))
            elif previous_date:
                created_date_from = self.get_date(last_day_of_last_month=True)
        self.set_value_into_input_field(specific_date_text_field_locator, created_date_from)
        self.click_element(self.report_parameter_title_locator)
        self.switch_to_default_content()

    def move_customer_source_to_assigned(self):
        """
        Implementing move customer source to assigned functionality
        :return:
        """
        self.click_element(self.first_available_customer_source_locator)
        self.click_element(self.move_to_assigned_button_locator)

    def set_reference_price_list(self, option_text):
        """
        Implementing set reference price list functionality
        :param option_text:
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.select_option(self.reference_price_list_select_locator, option_text)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def set_currency(self, option_text, first_item):
        """
        Implementing set currency functionality
        :param option_text:
        :param first_item:
        :return:
        """
        self.switch_to_detail_frame()
        try:
            if first_item is False:
                self.select_option(self.currency_select_locator, option_text)
            else:
                self.select_option(self.currency_select_locator, None, select_id=self.currency_select_id, first_item=True)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def get_second_row_customer_source(self):
        """
        Implementing get second row customer source functionality
        :return: customer_source
        """
        return self.get_text_from_element(self.second_row_customer_source_span_locator)

    def click_customer_source_browse_button(self):
        """
        Implementing click customer source browse button functionality
        :return:
        """
        self.set_existing_handles()
        try:
            self.switch_to_detail_frame()
            self.click_element(self.customer_source_browse_button_locator)
            self.switch_to_default_content()
        except:
            raise
        self.switch_to_window()

    def click_account_browse_button_with_id(self):
        """
        Implementing click account browse button with id functionality
        :return:
        """
        self.set_existing_handles()
        try:
            self.switch_to_detail_frame()
            self.click_element(self.account_browse_button_locator_with_id)
            self.switch_to_default_content()
        except:
            raise
        self.switch_to_window()

    def get_cpe_traffic_report_second_row_account_name(self):
        """
        Implementing get cpe traffic report second row account name functionality
        :return: account_name
        """
        return self.get_text_from_element(self.cpe_traffic_report_second_row_account_name_span_locator)

    def click_first_row_routing_product(self):
        """
        Implementing click first row routing product functionality
        :return:
        """
        self.click_element(self.route_first_row_routing_product_span_locator)
        self.switch_to_frame(self.route_guide_detail_frame_locator)
        try:
            if self.is_element_present(self.paging_2_table_locator):
                self.first_row_available = True
        except:
            raise
        finally:
            self.switch_to_default_content()

    def switch_to_route_guide_detail_frame(self):
        """
        Implementing switch to route guide detail frame functionality
        :return:
        """
        self.switch_to_frame(self.route_guide_detail_frame_locator)

    def click_report_table_first_row(self):
        """
        Implementing click report table first row functionality
        :return:
        """
        self.click_element(self.report_table_first_row_locator)
        self.switch_to_frame(self.level_detail_frame_locator)
        try:
            if self.is_element_present(self.report_table_first_row_locator):
                self.first_row_available = True
        except:
            raise
        finally:
            self.switch_to_default_content()

    def get_first_row_route_class(self):
        """
        Implementing get first row route class functionality
        :return: route class
        """
        return self.get_text_from_element(self.first_row_route_class_span_locator)

    def click_route_class_browse_button(self):
        """
        Implementing click route class browse button functionality
        :return:
        """
        self.set_existing_handles()
        self.switch_to_detail_frame()
        try:
            route_class_browse_button_element = self.wait().until(EC.presence_of_element_located(self.route_class_browse_button_locator), 'route class browse button locator not found before specified time out')
            self.script_executor_click(route_class_browse_button_element)
            time.sleep(5)
        except:
            raise
        finally:
            self.switch_to_default_content()
        self.switch_to_window()

    def set_delta_report_item(self, option_text):
        """
        Implementing set delta report item functionality
        :param option_text:
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.select_option(self.delta_report_item_select_locator, option_text)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_currency_browse_button(self):
        """
        Implementing click currency browse button functionality
        :return:
        """
        self.set_existing_handles()
        self.switch_to_detail_frame()
        currency_browse_button_element = self.wait().until(EC.presence_of_element_located(self.currency_browse_button_locator), 'account browse button locator not found before specified time out')
        currency_browse_button_element.click()
        time.sleep(5)
        self.switch_to_default_content()
        self.switch_to_window()

    def click_first_row_routing_product_for_crg(self):
        """
        Implementing click first row routing product for crg functionality
        :return:
        """
        self.click_element(self.route_first_row_routing_product_span_locator)
        self.switch_to_frame(self.layer_2_detail_frame_locator)
        try:
            if self.is_element_present(self.layer_2_table_locator):
                self.first_row_available = True
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_source_browse_button(self):
        """
        Implementing click source browse button functionality
        :return:
        """
        self.set_existing_handles()
        try:
            self.switch_to_detail_frame()
            self.click_element(self.source_browse_button_locator, True)
            self.switch_to_default_content()
        except:
            raise
        self.switch_to_window()

    def get_first_row_source_name(self):
        """
        Implementing get first row source name functionality
        :return: source name
        """
        return self.get_text_from_element(self.first_row_customer_source_span_locator)

    def set_source_type(self, option_text):
        """
        Implementing set source type functionality
        :param option_text:
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.select_option(self.source_type_dropdown_locator, option_text)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_first_row_more_info_icon(self):
        """
        Implementing click first row more info icon functionality
        :return:
        """
        self.click_element(self.first_row_more_info_icon_locator)

    def is_second_layer_displayed(self):
        """
        Implementing is second layer displayed functionality
        :return: True/False
        """
        is_displayed = False
        self.switch_to_frame(self.row1_iframe_locator)
        try:
            is_displayed = self.is_element_present(self.layer_2_body_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()
            return is_displayed

    def get_second_row_look_up_table_value(self):
        """
        Implementing get second row look up table value functionality
        :return: value
        """
        return self.get_text_from_element(self.look_up_table_second_row_locator)

    def click_offer_browse_button(self):
        """
        Implementing click offer browse button functionality
        :return:
        """
        self.set_existing_handles()
        try:
            self.switch_to_detail_frame()
            self.click_element(self.offer_browse_button_locator, True)
            self.switch_to_default_content()
        except:
            raise
        self.switch_to_window()

    def set_offer_type(self, option_text):
        """
        Implementing set offer type functionality
        :param option_text:
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.select_option(self.offer_type_select_locator, option_text)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def get_report_offer_details(self):
        """
        Implementing get report offer details functionality
        :return:
        """
        self.offer_list_details = []
        number_of_pages = self.get_text_from_element(self.offer_list_number_of_pages_locator)
        try:
            for i in range(int(number_of_pages)):
                for j in range(1, 21):
                    row_count = 20*i + j
                    row_details = []
                    row_source_span_locator = (By.ID, "dSource_Row%s" % str(row_count))
                    row_offer_span_locator = (By.ID, "dOffer_Row%s" % str(row_count))
                    row_offer_date_span_locator = (By.ID, "dODate_Row%s" % str(row_count))
                    row_details.append(self.get_text_from_element(row_source_span_locator))
                    row_details.append(self.get_text_from_element(row_offer_span_locator))
                    row_details.append(self.get_text_from_element(row_offer_date_span_locator))
                    self.offer_list_details.append(row_details)
                self.click_element(self.next_page_button_locator)
        except:
            pass

    def get_offer_details_from_database(self, server, database, user, password, customer_offer):
        """
        Implementing get offer details from database functionality
        :param server:
        :param database:
        :param user:
        :param password:
        :param customer_offer:
        :return: True/False
        """
        self.offer_list_details_from_database = []
        status = True
        try:
            Database.open_mssql(server=server, database=database, user=user, password=password)
            if customer_offer is False:
                sql = ("""
                SELECT s.Source, o.Offer, o.OfferDate FROM iXTrade_Main.dbo.tbOffer AS o
                INNER JOIN iXTrade_Main.dbo.tbsource AS s ON (s.SourceID = o.SourceID)
                WHERE o.OfferTypeID = 1 and o.OfferDate > '2017-01-01 00:00:00.000';
                """)
            else:
                sql = ("""
                SELECT s.Source, o.Offer, o.OfferDate FROM iXTrade_Main.dbo.tbOffer AS o
                INNER JOIN iXTrade_Main.dbo.tbsource AS s ON (s.SourceID = o.SourceID)
                WHERE o.OfferTypeID = 2 and o.OfferDate > '2017-01-01 00:00:00.000';
                """)
            cursor = Database.get_cursor(sql)
            row = cursor.fetchone()
            while row:
                row_details = []
                row_details.append(row.Source)
                row_details.append(row.Offer)
                offer_date = str(row.OfferDate).split(" ")
                mod_offer_date = datetime.datetime.strptime(offer_date[0], '%Y-%m-%d')
                mod_offer_date = '{0}/{1}/{2}'.format(mod_offer_date.month, mod_offer_date.day, mod_offer_date.year)
                row_details.append(mod_offer_date)
                self.offer_list_details_from_database.append(row_details)
                row = cursor.fetchone()
            cursor.close()
            Database.close()
            return status
        except:
            raise

    def compare_report_and_database_offer_details(self,):
        """
        Implementing compare report and database offer details functionality
        :return: True/False
        """
        matched = False
        self.offer_list_details.sort()
        self.offer_list_details_from_database.sort()
        if self.offer_list_details == self.offer_list_details_from_database:
            matched = True
        return matched

    def is_specific_report_displayed(self, report_name):
        """
        Implementing is specific report displayed functionality
        :param report_name:
        :return: True/False
        """
        report_locator = (By.XPATH, "//span[contains(@id, 'ReportName_Row') and contains(text(), '%s')]" % report_name)
        is_displayed = self.is_element_present(report_locator)
        return is_displayed

    def is_specific_report_page_displayed(self, report_page_name):
        """
        Implementing is specific report page displayed functionality
        :param report_page_name:
        :return: True/False
        """
        self.switch_to_detail_frame()
        is_displayed = None
        report_page_locator = (By.XPATH, "//div[@id='lgx_ReportParameterTitle' and contains(text(), '%s')]" % report_page_name)
        try:
            is_displayed = self.is_element_present(report_page_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()
            return is_displayed

    def click_unified_number_plan_browse_button(self):
        """
        Implementing click unified number plan browse button functionality
        :return:
        """
        self.set_existing_handles()
        self.switch_to_detail_frame()
        unified_number_plan_browse_button_element = self.wait().until(EC.presence_of_element_located(self.unified_number_plan_browse_button_locator), 'unified number plan browse button locator not found before specified time out')
        unified_number_plan_browse_button_element.click()
        time.sleep(5)
        self.switch_to_default_content()
        self.switch_to_window()

    def set_first_unified_number_plan_type(self):
        """
        Implementing set first unified number plan type functionality
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.select_option(self.unified_number_plan_type_select_locator, None, self.unified_number_plan_type_select_id, first_item=True)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_service_level_browse_button(self):
        """
        Implementing click service level browse button functionality
        :return:
        """
        self.set_existing_handles()
        self.switch_to_detail_frame()
        service_level_browse_button_element = self.wait().until(EC.presence_of_element_located(self.service_level_browse_button_locator), 'service level browse button locator not found before specified time out')
        service_level_browse_button_element.click()
        time.sleep(5)
        self.switch_to_default_content()
        self.switch_to_window()

    def get_destination_from_productiXRoute_table(self, server, database, user, password):
        """
        Implementing get destination from productiXRoute table functionality
        :param server:
        :param database:
        :param user:
        :param password:
        :return: destination
        """
        destination = ""
        try:
            Database.open_mssql(server=server, database=database, user=user, password=password)
            sql = ("""
               SELECT TOP 1 * FROM iXCore_Port.dbo.vwProductiXRoute;
               """)
            cursor = Database.get_cursor(sql)
            row = cursor.fetchone()
            cursor.close()
            Database.close()
            destination = str(row.Destination).strip()
        except:
            raise
        finally:
            return destination

    def click_destination_browse_button(self):
        """
        Implementing click destination browse button functionality
        :return:
        """
        self.set_existing_handles()
        self.switch_to_detail_frame()
        try:
            destination_browse_button_element = self.wait().until(EC.presence_of_element_located(self.destination_browse_button_locator), 'destination browse button locator not found before specified time out')
            destination_browse_button_element.click()
            time.sleep(5)
        except:
            raise
        finally:
            self.switch_to_default_content()
        self.switch_to_window()

    def is_selected_dates_are_out_of_range_warning_message_shown(self):
        """
        Implementing is selected dates are out of range warning message shown functionality
        :return: True/False
        """
        return self.is_element_present(self.selected_dates_are_out_of_range_warning_message_locator)

    def click_specific_view_button(self, extract_name):
        """
        Implementing click specific view button functionality
        :param extract_name:
        :return:
        """
        self.switch_to_list_frame()
        try:
            extract_name_locator = (By.XPATH, "//span[@class='LinkItemA' and contains(text(), '%s')]" % extract_name)
            extract_name_element = self.wait().until(EC.presence_of_element_located(extract_name_locator), 'extract name locator not found before specified time out')
            line_no = str(extract_name_element.get_attribute("LineNo"))
            view_button_locator = (By.XPATH, "//span[@class='LinkItemA' and @LineNo='%s' and contains(text(), 'View')]" % str(line_no))
            self.click_element(view_button_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_extract_delete_button(self):
        """
        Implementing click extract delete button functionality
        :return:
        """
        self.switch_to_detail_extract_frame()
        try:
            extract_delete_button_element = self.wait().until(EC.presence_of_element_located(self.extract_delete_button_locator), 'extract delete button locator not found before specified time out')
            extract_delete_button_element.click()
            time.sleep(10)
            self.accept_alert_pop_up()
            time.sleep(5)
            self.accept_alert_pop_up()
        except:
            raise
        finally:
            self.switch_to_default_content()

    def set_extract_begin_date(self, begin_date, future_date, num_of_days_to_add, begin_date_with_upper_case_d):
        """
        Implementing set extract begin date functionality
        :param begin_date:
        :param future_date:
        :param num_of_days_to_add:
        :param begin_date_with_upper_case_d:
        :return:
        """
        self.switch_to_detail_extract_frame()
        try:
            if begin_date == "":
                if future_date:
                    begin_date = self.get_date(future_date=True, number_of_days_to_add=int(num_of_days_to_add))
                else:
                    begin_date = self.get_date(current_date=True)
            if begin_date_with_upper_case_d is False:
                self.set_value_into_input_field(self.begin_date_with_lower_case_d_inputbox_locator, begin_date)
            else:
                self.set_value_into_input_field(self.begin_date_inputbox_locator, begin_date)
            self.click_element(self.report_parameter_title_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_extract_submit_button(self):
        """
        Implementing click extract submit button functionality
        :return:
        """
        self.switch_to_detail_extract_frame()
        try:
            self.set_existing_handles()
            self.click_element(self.submit_button_locator_by_id, True)
        except:
            raise
        finally:
            self.switch_to_default_content()
        self.switch_to_window()

    def click_accrual_check_extract_save_button(self):
        """
        Implementing click accrual check extract save button functionality
        :return:
        """
        self.switch_to_detail_extract_frame()
        self.set_existing_handles()
        try:
            self.click_element(self.on_demand_extract_button_locator, True)
        except:
            raise
        finally:
            self.switch_to_default_content()
        self.switch_to_window()

    def click_save_button_to_verify_warning(self):
        """
        Implementing click save button to verify warning functionality
        :return:
        """
        self.switch_to_detail_extract_frame()
        try:
            self.click_element(self.extract_save_button_locator)
            time.sleep(5)
            self.accept_alert_pop_up()
        except:
            pass
        finally:
            self.switch_to_default_content()

    def click_specific_extract_name_button(self, extract_name):
        """
        Implementing click specific extract name button functionality
        :param extract_name:
        :return:
        """
        self.switch_to_list_frame()
        try:
            extract_name_locator = (By.XPATH, "//span[@class='LinkItemA' and contains(text(), '%s')]" % extract_name)
            self.click_element(extract_name_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def is_report_page_loaded_properly(self, report_title):
        """
        Implementing is report page loaded properly functionality
        :param report_title:
        :return: True/False
        """
        page_title_locator = (By.XPATH, "//span[contains(@id, 'ReportName_') and contains(text(), '%s')]" % report_title)
        return self.is_element_present(page_title_locator)

    def is_specific_column_present_in_report_page(self, column_name):
        """
        Implementing is specific column present in report page functionality
        :param column_name:
        :return: True/False
        """
        column_locator = (By.XPATH, "//a[contains(text(), '%s')]" % column_name)
        return self.is_element_present(column_locator)

    def is_specific_column_not_present_in_report_page(self, column_name):
        """
        Implementing is specific column not present in report page functionality
        :param column_name:
        :return: True/False
        """
        column_locator = (By.XPATH, "//a[contains(text(), '%s')]" % column_name)
        is_not_present = None
        try:
            self.wait(5).until(EC.presence_of_element_located(column_locator))
            is_not_present = False
        except:
            is_not_present = True
        finally:
            return is_not_present

    def click_specific_edit_icon(self, myreport_name):
        """
        Implementing click specific edit icon functionality
        :param myreport_name: 
        :return: 
        """
        self.switch_to_list_frame()
        try:
            edit_icon_locator = (By.XPATH, "//span[text()='%s']/../../../ descendant::td[3] / descendant::img" % myreport_name)
            self.click_element(edit_icon_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_myreport_edit_save_button(self):
        """
        Implementing click myreport edit save button functionality
        :return:
        """
        self.set_existing_handles()
        self.switch_to_detail_frame()
        self.click_element(self.edit_myreport_save_button_locator)
        self.switch_to_default_content()
        self.switch_to_window()

    def click_myreport_delete_button(self):
        """
        Implementing click myreport delete button functionality
        :return:
        """
        self.switch_to_detail_frame()
        try:
            extract_delete_button_element = self.wait().until(EC.presence_of_element_located(self.extract_delete_button_locator), 'extract delete button locator not found before specified time out')
            extract_delete_button_element.click()
            time.sleep(10)
            self.accept_alert_pop_up()
            time.sleep(5)
            self.accept_alert_pop_up()
        except:
            raise
        finally:
            self.switch_to_default_content()

    def is_specific_myreport_not_present(self, myreport_name):
        """
        Implementing is specific myreport not present functionality
        :param myreport_name:
        :return: True/False
        """
        is_not_present = True
        self.switch_to_list_frame()
        myreport_name_locator = (By.XPATH, "//span[text()='%s']" % myreport_name)
        try:
            self.wait(5).until(EC.presence_of_element_located(myreport_name_locator))
            is_not_present = False
        except:
            raise
        finally:
            self.switch_to_default_content()
            return is_not_present

    def click_myreport_cancel_button(self):
        """
        Implementing click myreport cancel button functionality
        :return:
        """
        self.click_element(self.myreport_cancel_button_locator)
        self.switch_to_previous_window()

    def set_cdr_extract_title(self, title_prefix):
        """
        Implementing set cdr extract title functionality
        :param title_prefix:
        :return:
        """
        global title_name
        title_name = title_prefix + self.random_string_generator(4)
        self.set_value_into_input_field(self.cdr_extract_title_textbox_locator, title_name)

    def click_extract_customer_price_vs_current_cost_submit_button(self):
        """
        Implementing click extract customer price vs current cost submit button functionality
        :return:
        """
        self.switch_to_detail_extract_frame()
        try:
            self.set_existing_handles()
            self.click_element(self.customer_price_vs_current_cost_submit_button_locator_by_id, True)
        except:
            raise
        finally:
            self.switch_to_default_content()
        self.switch_to_window()

    def set_extract_begin_month(self):
        """
        Implementing set extract begin month functionality
        :return:
        """
        self.switch_to_detail_extract_frame()
        try:
            begin_month_option_elements = self.wait().until(EC.presence_of_all_elements_located(self.begin_month_option_locator), 'begin month option locator not found before specified time out')
            number_of_options = len(begin_month_option_elements)
            begin_month_last_option_locator = (By.XPATH, "//select[@id='rBeginMonth_BeginMonth']/option[%s]" % str(number_of_options))
            self.click_element(self.begin_month_dropdown_locator)
            self.click_element(begin_month_last_option_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_product_browse_button(self):
        """
        Implementing click product browse button functionality
        :return:
        """
        self.set_existing_handles()
        self.switch_to_detail_frame()
        try:
            product_browse_button_element = self.wait().until(EC.presence_of_element_located(self.product_browse_button_locator), 'product browse button locator not found before specified time out')
            self.script_executor_click(product_browse_button_element)
            time.sleep(5)
        except:
            raise
        finally:
            self.switch_to_default_content()
        self.switch_to_window()

    def get_routing_product_from_productixroute_table(self, server, database, user, password, destination):
        """
        Implementing get routing product from productixroute table functionality
        :param server:
        :param database:
        :param user:
        :param password:
        :param destination:
        :return:
        """
        self.database_routing_product = []
        try:
            Database.open_mssql(server=server, database=database, user=user, password=password)
            sql = ("""
               select Product from iXCore_Port.dbo.vwProductiXRoute where Destination=?;
               """)
            cursor = Database.get_cursor(sql, destination)
            row = cursor.fetchone()
            while row:
                self.database_routing_product.append(str(row.Product).strip())
                row = cursor.fetchone()
            cursor.close()
            Database.close()
        except:
            raise

    def compare_lookup_table_routing_product_with_database(self):
        """
        Implementing compare lookup table routing product with database functionality
        :return: True/False
        """
        is_compared = False
        self.routing_product_list = []
        lookup_table_tr_elements = self.wait().until(EC.presence_of_all_elements_located(self.lookup_table_tr_locator), 'lookup table tr locator not found before specified time out')
        for row in range(2, len(lookup_table_tr_elements)+1):
            routing_product_span_locator = (By.XPATH, "(//span[@class='invItemA'])[%s]" % str(row))
            self.routing_product_list.append(self.get_text_from_element(routing_product_span_locator))
        if self.routing_product_list.sort() == self.database_routing_product.sort():
            is_compared = True
        return is_compared

    def is_extract_present(self, extract_name):
        """
        Implementing is extract present functionality
        :param extract_name:
        :return: True/False
        """
        specific_extract_name_locator = (By.XPATH, "//span[@class='linkItemADisabled' and contains(text(), '%s')]" % extract_name)
        return self.is_element_present(specific_extract_name_locator)

    def set_profit_symbol(self, symbol):
        """
        Implementing set profit symbol functionality
        :param symbol:
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.click_element(self.profit_symbol_select_locator, legacy_screen_loader=True)
            option_locator = (By.XPATH, "//span[contains(text(), 'Profit')]/../../descendant::select/option[text()='%s']" % symbol)
            self.click_element(option_locator, legacy_screen_loader=True)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def set_profit_value(self, profit_value):
        """
        Implementing set profit value functionality
        :param profit_value:
        :return:
        """
        self.switch_to_detail_frame()
        try:
            self.set_value_into_input_field(self.profit_textbox_locator, profit_value, use_win32com=True)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_specific_tab_on_report_page(self, tab_name):
        """
        Implementing click specific tab on report page functionality
        :param tab_name:
        :return:
        """
        self.switch_to_detail_frame()
        try:
            tab_locator = (By.XPATH, "//div[@id='rTab0']/descendant::span[contains(text(), '%s')]" % tab_name)
            self.click_element(tab_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_specific_download_button(self, extract_name):
        """
        Implementing click specific download button functionality
        :param extract_name:
        :return:
        """
        self.switch_to_list_frame()
        try:
            self.click_element(self.extract_go_button_locator)
            extract_name_locator = (By.XPATH, "//span[@class='LinkItemA' and contains(text(), '%s')]" % extract_name)
            extract_name_element = self.wait().until(EC.presence_of_element_located(extract_name_locator), 'extract name locator not found before specified time out')
            line_no = str(extract_name_element.get_attribute("LineNo"))
            download_button_locator = (By.XPATH, "//span[@class='linkItemA' and @LineNo='%s' and contains(text(), 'Download')]" % str(line_no))
            self.click_element(download_button_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def get_extract_file_name(self):
        """
        Implementing get extract file name functionality
        :return: extract_file_name
        """
        extract_file_name = ""
        self.switch_to_detail_extract_frame()
        try:
            extract_file_name = self.get_text_from_element(self.extract_file_name_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()
            return extract_file_name

    def does_extract_file_exist_in_network_path(self, network_path, extract_file_name):
        """
        Implementing does extract file exist in network path functionality
        :param network_path:
        :param extract_file_name:
        :return: True/False
        """
        file_path = network_path + "/" + extract_file_name
        return os.path.isfile(file_path)

    def delete_extract_file_from_network_path(self, network_path, extract_file_name):
        """
        Implementing delete extract file from network path functionality
        :param network_path:
        :param extract_file_name:
        :return:
        """
        file_path = network_path + "/" + extract_file_name
        if os.path.isfile(file_path):
            os.remove(file_path)

    def click_extract_reference_set_browse_button(self):
        """
        Implementing click extract reference set browse button functionality
        :return:
        """
        self.set_existing_handles()
        self.switch_to_detail_extract_frame()
        try:
            self.click_element(self.reference_set_browse_button_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()
            self.switch_to_window()

    def click_extract_comparison_set_1_browse_button(self):
        """
        Implementing click extract comparison set 1 browse button functionality
        :return:
        """
        self.set_existing_handles()
        self.switch_to_detail_extract_frame()
        try:
            self.click_element(self.comparison_set_1_browse_button_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()
        self.switch_to_window()

    def get_first_row_effective_date(self):
        """
        Implementing get first row effective date functionality
        :return: effective_date
        """
        return self.get_text_from_element(self.first_row_effective_date_span_locator)

    def get_first_row_analyzed_rate(self):
        """
        Implementing get first row analyzed rate functionality
        :return: analyzed_rate
        """
        return self.get_text_from_element(self.first_row_analyzed_rate_span_locator)

    def is_analyzed_rate_shown_up_to_six_decimal_points(self):
        """
        Implementing is analyzed rate shown up to six decimal points functionality
        :return: True/False
        """
        is_shown = False
        analyzed_rate = self.get_text_from_element(self.first_row_analyzed_rate_span_locator)
        no_of_decimal_points = len(analyzed_rate.split(".")[1])
        if no_of_decimal_points == 6:
            is_shown = True
        return is_shown

    def get_account_name_without_credit_limit(self):
        """
        Implementing get account name without credit limit functionality
        :return: account name
        """
        i = 1
        while i < 30:
            credit_limit_span_locator = (By.XPATH, "//span[@id='CreditLimit_Row%s']" % str(i))
            credit_limit = self.get_text_from_element(credit_limit_span_locator)
            if credit_limit == "":
                break
        account_without_credit_limit_locator = (By.XPATH, "//span[@id='Account_Row%s']" % str(i))
        return self.get_text_from_element(account_without_credit_limit_locator)

    def get_account_name_with_credit_limit_from_database(self, server, database, user, password):
        """
        Implementing get account name with credit limit from database functionality
        :param server:
        :param database:
        :param user:
        :param password:
        :return: account name
        """
        account_name = None
        try:
            Database.open_mssql(server=server, database=database, user=user, password=password)
            sql = ("""
                    SELECT a.account, a.creditlimit, cl.creditlimit
                    FROM ixcore_main..tbAccountCreditLimit AS cl
                    INNER JOIN ixcore_main..tbAccount AS a ON a.accountid = cl.accountid
                    WHERE a.creditlimit <> cl.creditlimit
                    """)
            cursor = Database.get_cursor(sql)
            row = cursor.fetchone()
            account_name = str(row.account)
        except:
            account_name = ""
            raise
        finally:
            Database.close()
            return account_name

    def verify_row_exceed_warning_message(self):
        """
        Implementing verify row exceed warning message functionality
        :return:
        """
        is_verified = False
        total_page_count = int(self.get_text_from_element(self.total_page_count_locator))
        if total_page_count >= 1000:
            is_verified = self.is_element_present(self.row_exceed_warning_message_locator)
        else:
            is_verified = True
        return is_verified

    def click_submit_button_with_wait(self):
        """
        Implementing click submit button with wait functionality
        :return:
        """
        self.switch_to_detail_frame()
        self.set_existing_handles()
        self.click_element(self.submit_button_locator, True)
        self.switch_to_default_content()
        timeout = 300
        try:
            end_time = time.time() + timeout
            while time.time() < end_time:
                self.wait(5)
        except:
            raise
        self.switch_to_window()

    def is_country_filter_available(self):
        """
        Implementing is country filter available functionality
        :return: True/False
        """
        self.switch_to_detail_frame()
        try:
            return self.is_element_present(self.country_browse_button_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def does_country_filter_have_countries(self):
        """
        Implementing does country filter have countries functionality
        :return: True/False
        """
        have_countries = False
        country_list_element = self.wait().until(EC.presence_of_all_elements_located(self.country_list_locator), 'country list locator not found before specified time out')
        if len(country_list_element) > 0:
            have_countries = True
        return have_countries

    def set_extract_first_level_summarize_by(self, option_text):
        """
        Implementing extract set first level summarize by functionality
        :param option_text:
        :return:
        """
        self.switch_to_frame(self.detail_extract_frame_locator)
        try:
            self.select_option(self.first_level_summarize_by_select_locator, option_text, self.first_level_summarize_by_select_id)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def set_extract_second_level_summarize_by(self, option_text):
        """
        Implementing set extract second level summarize by functionality
        :param option_text:
        :return:
        """
        self.switch_to_frame(self.detail_extract_frame_locator)
        try:
            self.select_option(self.second_level_summarize_by_select_locator, option_text, self.second_level_summarize_by_select_id)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def set_minutes(self, minutes):
        """
        Implementing set minutes functionality
        :param minutes:
        :return:
        """
        self.switch_to_frame(self.detail_frame_locator)
        try:
            self.set_value_into_input_field(self.minutes_textbox_locator, minutes)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def verify_first_row_actual_rate_change_in_rp_currency_column_value(self):
        """
        Implementing verify first row actual rate change in rp currency column value functionality
        :return: True/False
        """
        is_verified = False
        actual_rate_change_in_rp_currency = self.get_text_from_element(self.first_row_actual_rate_change_in_rp_currency_locator)
        if actual_rate_change_in_rp_currency == "Increase" or actual_rate_change_in_rp_currency == "Decrease" or actual_rate_change_in_rp_currency == "No Change":
            is_verified = True
        return is_verified

    def verify_first_row_exchange_rate_impact_column_value(self):
        """
        Implementing verify first row exchange rate impact column value functionality
        :return: True/False
        """
        is_verified = False
        exchange_rate_impact = self.get_text_from_element(self.first_row_exchange_rate_impact_locator)
        if exchange_rate_impact == "Increase" or exchange_rate_impact == "Decrease" or exchange_rate_impact == "No Change":
            is_verified = True
        return is_verified

    def verify_first_row_rate_calculation_method_column_value(self):
        """
        Implementing verify first row rate calculation method column value functionality
        :return: True/False
        """
        is_verified = False
        row_calculation_method = self.get_text_from_element(self.first_row_rate_calculation_method_locator)
        if row_calculation_method == "SEP Reference":
            is_verified = True
        return is_verified
