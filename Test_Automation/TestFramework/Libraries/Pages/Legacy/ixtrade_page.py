"""Implementing ixTrade screen page objects"""

from TestFramework.Libraries.Pages.base_page import BasePage
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC
from xml.dom import minidom
from selenium.common.exceptions import NoSuchElementException, TimeoutException, ElementNotVisibleException, WebDriverException
import time
import string
from datetime import datetime
from datetime import date


class IXTradePage(BasePage):
    """
    Contains ixTrade UI page locators
    Click vendor offers link function
    Click vendor offer upload submenu function
    Set vendor offer source type function
    Click vendor offer browse button function
    Click upload now button function
    Compare upload failure message function
    Click customer pricing exception management Submenu function
    Click customer pricing exception management search button function
    Click exit button function
    Click legacy ui link function
    Click pricing exception grid first row inline action button function
    Get pricing exception left grid row details function
    Get pricing exception grid left table details function
    Select pricing exception grid inline action item function
    Get pricing exception grid label wise text function
    Get pricing exception grid right table details function
    Is exception history pop up page loaded properly function
    close pricing exception current pop up function
    Is route guide with sell rates page loaded properly function
    Click upload new document button function
    Click on file browse button function
    Set file name function
    Compare file name function
    Click on file save button function
    Set status function
    Click pricing exception grid first row checkbox function
    Click on copy button function
    Move available items to destination function
    Select customers for price lists function
    Click on copy  cpe save button function
    Multiple items selection from kendo dropdown function
    Click buy sell deal management submenu function
    Is buy and sell deal dropdown present function
    Is status dropdown present function
    Is start date datepicker present function
    Is end date datepicker present function
    Is save changes button present function
    Is cancel changes button present function
    Is request new buy and sell deal button present function
    Is deal bulk edit button present function
    Update the xml file function
    Is upload now button present function
    Update specific attribute value of xml file function
    Update offer name of the xml file function
    Update origingroup name of the xml file function
    Update origin name of the xml file function
    Get specific attribute value from xml file function
    Get destinations from the xml file function
    Get rates value from the xml file function
    Click vendor offers submenu function
    Set vendor name for search function
    Set vendor offer from date for search function
    Click vendor offers go button function
    Click vendor offer first plus button function
    Click vendor offer first dicon button fun functionction
    Click vendor offers destination go button
    Get vendor offer destination grid destination column value function
    Get vendor offer destination grid destination column value function
    Compare destinations function
    Click vendor offer first ricon button function
    Get vendor offer destination grid destination column value function
    Compare rates function
    Click price exception management screen import button function
    Click price exception management screen export button function
    Click first vendor offer link function
    Click edit analyzed rates button function
    Switch to rate analysis frame function
    Is rate analysis view filter present function
    Is rate analysis status filter present function
    Is rate analysis discrepancy filter present function
    Is rate analysis in routing flag filter present function
    Is rate analysis rate filter present function
    Is rate analysis destination filter present function
    Click reference price list management Submenu function
    Is approval reject wizard button present function
    Click approval reject wizard button function
    Is rplm approval reject wizard page present function
    Set start date function
    Click buy and sell deal management grid first row inline action button function
    Is total deal customer volume column present function
    Select buy and sell deal management grid inline action item function
    Move available rpl to destination function
    Move available rplm country to destination function
    Click approval wizard next button function
    Is total rpl report column present function
    Get all rpl list function
    Compare sorted data for rpl function
    Set start date for approve reject present function
    Are proper date columns present function
    Filter reference price list management grid column function
    Is specific filter option present function
    Is total rpl to be approved matched function
    Click reference price list generation Submenu function
    Set generate record function
    Set ixtrade generation type function
    Move available reference price list to destination function
    Move available rpl destination to destination function
    Click ixtrade generate reference price list button function
    Is destination resolved correctly function
    Set action function
    Is action dropdown displayed function
    Is future action dropdown displayed function
    Does action dropdown has proper option function
    Is future action dropdown enable function
    Is record date range start date present function
    Is record date range end date present function
    Is apply custom rules enable function
    Verify start and end date range does not exceed 31 days function
    Click customer offers submenu function
    Click customer offer first ddicon button function
    Is uploaded dialed digit information displayed function
    Set reference price list for search function
    Get specific column first row value from rplm left grid function
    Get specific column first row value from rplm right grid function
    Click rplm grid first row checkbox function
    Click bulk edit button function
    Set status for bulk edit function
    Set start date for rpl approve reject function
    Click bulk edit submit button function
    Click target buy list submenu function
    Click target buy list calculate button function
    Is cost forecast job initialization message shown function
    Verify deal management grid column display thousand separators function
    Click target buy list generation submenu function
    Is target buy list generation screen button present
    Is target buy list generation screen list control present function
    Is target buy list generation screen published date control present function
    Is country selector list box visible function
    Is selected country list box visible function
    Is rplm screen filter option present function
    Is rplm screen button present function
    Is apply custom rules radio button present function
    Click rpl report button function
    Is rpl report price list tab present function
    Is rpl report impact tab present function
    Delect rpl report impact tab function
    Is rpl report price list grid column present function
    Is rpl report impact grid column present function
    Click save changes button function
    Set note function
    Select apply custom rules radio button function
    Click service level based cpl customer definition submenu function
    Is service level customer definition grid column present function
    Does service level based cpls dropdown display correct options function
    Click customer pricing exception management go button function
    Click customer pricing exception management export import button function
    Is export import requested exception for customer pricing exceptions window opened function
    Close export import requested exception for customer pricing exceptions window function
    Click to expand specific bar in customer routing role definition screen function
    Check first rounding rule checkbox function
    Click rounding rules definition save button function
    Filter country definition function
    Check first country definition checkbox function
    Click country definition save button function
    Set rate dimension template function
    Click rate dimension template save button function
    Filter customer source function
    Set rounding rule to customer source function
    Click customer source save button function
    Click cpem grid bulk edit button function
    Set requested price for bulk edit function
    Click cpem grid cpe report button function
    Is cpe report page loaded properly function
    Is data displayed in cpe grid function
    Is left side specific column present in cpe grid function
    Set current status function
    Is generate offer file link present function
    Click customer offer generation Submenu function
    Set mypricelist in ixtrade function
    Click mypricelist generate button function
    Get specific column first row value from cpem right grid function
    Is percentage margin column present function
    Sort percentage margin column in descending order function
    Is percentage margin column value displayed correctly function
    Click offer template management submenu function
    Is offer template management page loaded properly function
    Is offer template management filter option worked properly function
    Click first offer template function
    Is company field present in detail frame function
    Click offer template management edit button function
    Is company field present function
    Click offer template definition cancel function
    Click new offer template button function
    Is vendor offer upload fail message present function
    Click select order column button function
    Is margin percentage checkbox present function
    Check margin percentage checkbox function
    Is margin percentage column present function
    Click customer pricing exception entry submenu function
    Set cpee status function
    Click customer pricing exception management go button with validation function
    """
    # Start: ixTrade page locators
    source_container_frame_locator = (By.NAME, "SourceContainer")
    header_frame_locator = (By.NAME, "Header")
    vendor_offers_link_locator = (By.ID, "lnkBuy3")
    vendor_offer_upload_link_locator = (By.ID, "lnkBuy2")
    buy_menu_locator = (By.ID, "C2_mtBuy")
    vendor_offer_upload_submenu_js_function = "Buy_Click(0,'Buy0');"
    sell_menu_locator = (By.ID, "C2_mtSell")
    customer_pricing_exception_entry_submenu_js_function = "Sell_Click(2,'Sell2');"
    customer_pricing_exception_management_submenu_js_function = "Sell_Click(3,'Sell3');"
    app_container_frame_locator = (By.NAME, "AppContainer")
    exit_header_locator = (By.ID, "C2_mtExit")
    deal_menu_locator = (By.ID, "C2_mtDeal")
    buy_sell_deal_management_submenu_js_function = "Deal_Click(0,'Deal0');"
    vendor_offers_submenu_js_function = "Buy_Click(1,'Buy1');"
    list_frame_locator = (By.NAME, "List")
    detail_frame_locator = (By.NAME, "Detail")
    detail1_frame_locator = (By.NAME, "Detail1")
    price_menu_locator = (By.ID, "C2_mtPrice")
    reference_price_list_management_submenu_js_function = "Price_Click(9,'Price9');"
    reference_price_list_generation_submenu_js_function = "Price_Click(8,'Price8');"
    all_rpl = []
    customer_offers_submenu_js_function = "Sell_Click(5,'Sell5');"
    target_menu_locator = (By.ID, "C2_mtarget")
    target_buy_list_submenu_js_function = "TargetBuy_Click(4,'TargetBuy4');"
    target_buy_list_generation_submenu_js_function = "TargetBuy_Click(5,'TargetBuy5');"
    admin_menu_locator = (By.ID, "C2_mtAdmin")
    service_level_based_cpl_customer_definition_submenu_js_function = "Admin_Click(20,'Admin20');"
    custrrcont_frame_locator = (By.NAME, "CustRRCont")
    customer_offer_generation_submenu_js_function = "Sell_Click(4,'Sell4');"
    offer_template_management_submenu_js_function = "Admin_Click(15,'Admin15');"

    # Start: Vendor offer upload page locators
    vendor_offer_source_type_dropdown_locator = (By.XPATH, "//input[@id='ddlFileType_Input']/..")
    vendor_offer_browse_button_locator = (By.XPATH, "//div[@class='button-upload']")
    upload_now_button_locator = (By.ID, "btnUploadNow")
    # End: Vendor offer upload page locators

    # Start: Customer Pricing Exception Management page locators
    customer_pricing_exception_management_search_button_locator = (By.ID, "btnSearch")
    legacy_ui_link_locator = (By.XPATH, "//a[text()='Legacy UI']")
    pricing_exception_grid_div_id = "grdCPEMgmt"
    pricing_exception_inline_action_column_number = 3
    exception_history_pop_up_page_header_locator = (By.XPATH, "//span[contains(@id, 'CPEHistoryWindow_wnd_title') and contains(text(), 'Pricing Exception History for Customer')]")
    route_guide_with_sell_rates_page_header_locator = (By.XPATH, "//span[contains(@id, 'ReportName_Row1') and contains(text(), 'Route Guide With Sell Rates')]")
    upload_new_document_button_locator = (By.ID, "btnDocumentUpload")
    file_browse_button_locator = (By.XPATH, "//div[@id='DocumentUploadItem']/descendant::div[@class='k-button k-upload-button']")
    file_name_textbox_locator = (By.XPATH, "//label[text()='File Name']/../descendant::input")
    file_save_button_locator = (By.ID, "btnDocumentUploadSave")
    upload_completed_success_message_locator = (By.XPATH, "//p[text()='Upload successfully completed.']")
    ok_button_locator = (By.ID, "btnOk")
    status_kendo_dropdown_locator = (By.XPATH, "//label[contains(text(), 'Status')]/../descendant::input")
    copy_button_locator = (By.ID, "btnCPECopy")
    available_customers_selectbox_id = "lvCopyFrom"
    move_single_button_locator = (By.ID, "btnAddSelected")
    copy_cpe_save_button_locator = (By.ID, "btnCopyCPESave")
    confirmation_popup_locator = (By.XPATH, "//p[text()='Data has been saved successfully']")
    customer_pricing_exception_header_locator = (By.ID, "page-title")
    import_button_locator = (By.ID, "btnCPEImport")
    export_button_locator = (By.ID, "btnCPEExport")
    import_pricing_exception_pop_up_locator = (By.XPATH, "//span[@id='wndCPEImport_wnd_title' and text()='Import Approved/Rejected Customer Pricing Exceptions']")
    import_pricing_exception_pop_up_close_icon_locator = (By.XPATH, "//span[@class='k-icon k-i-close' and text()='Close']")
    exported_offer_related_warning_message_locator = (By.XPATH, "//p[text()='Do not delete rows inside of the exported offer to ensure that it loads properly at the import step.']")
    reference_price_list_kendo_dropdown_locator = (By.XPATH, "//label[contains(text(), 'Reference Price List')]/../descendant::input")
    bulk_edit_button_locator = (By.ID, "btnRefPriceBulkEdit")
    bulk_edit_submit_button_locator = (By.ID, "BulkEditSubmit")
    customer_pricing_exception_management_go_button_locator = (By.ID, "BtnGo")
    customer_pricing_exception_management_export_import_button_locator = (By.XPATH, "//img[@id='BtnIE']")
    warning_pop_up_save_button_locator = (By.XPATH, "//div[@id='Div2']/descendant::img[@alt='Save']")
    cpem_bulk_edit_button_locator = (By.ID, "btnCPEMBulkEdit")
    bulk_edit_requested_price_locator = (By.ID, "Edit-RequestedPrice")
    cpem_cpe_report_button_locator = (By.ID, "btnCPEReport")
    cpe_report_page_header_locator = (By.ID, "ReportName_Row1")
    cpe_grid_first_row_locator = (By.XPATH, "//div[contains(@id, 'grdCPEMgmt')]/descendant::tbody/descendant::tr[1]")
    percentage_margin_column_locator = (By.XPATH, "//div[contains(@id, 'grdCPEMgmt')]/descendant::th[contains(@data-title, '%Margin') and @data-field='PercentageMargin']")
    margin_minimum_test_column_name = "Margin Minimum test"
    approved_price_column_name = "Approved Price"
    percentage_margin_column_name = "%Margin"
    select_order_column_button_locator = (By.XPATH, "//span[text()='Select/Order Column(s)']")
    margin_percentage_checkbox_locator = (By.ID, "chkMARGINPERCENT")
    margin_percentage_column_locator = (By.XPATH, "//a[contains(text(), 'Margin %')]")
    select_order_column_save_button_locator = (By.ID, "bSave")
    # End: Customer Pricing Exception Management page locators

    # Start: Export Import Requested Exception for Customer Pricing Exceptions Screen Locators
    export_import_requested_exception_for_customer_pricing_exceptions_window_title_locator = (By.XPATH, "//span[@id='lblTitle' and text()='Export/Import Requested Exception for Customer Pricing Exceptions']")
    # End: Export Import Requested Exception for Customer Pricing Exceptions Screen Locators

    # Start: Buy and Sell Deal Management page locators
    buy_and_sell_deal_select_locator = (By.ID, "ddlDeal")
    status_select_locator = (By.ID, "ddlStatus")
    start_date_inputbox_locator = (By.XPATH, "//input[@id='startDate' and @data-role='datepicker']")
    end_date_inputbox_locator = (By.XPATH, "//input[@id='endDate' and @data-role='datepicker']")
    save_changes_button_locator = (By.XPATH, "//a[contains(@class, 'k-button') and text()='Save changes']")
    cancel_changes_button_locator = (By.XPATH, "//a[contains(@class, 'k-button') and text()='Cancel changes']")
    request_new_buy_and_sell_deal_button_locator = (By.XPATH, "//a[contains(@class, 'k-button') and @id='btnRequestDeal']")
    deal_bulk_edit_button_locator = (By.XPATH, "//a[contains(@class, 'k-button') and @id='btnDealBulkEdit']")
    buy_and_sell_deal_management_grid_first_row_inline_action_button_locator = (By.XPATH, "//div[@id='grdDealMgmt']/descendant::td[@class='dropdownColumn custom-icon-pullout-menu']/span")
    total_deal_customer_volume_column_locator = (By.XPATH, "//th[@data-title='Total Deal Customer Volume']")
    deal_management_grid_div_id = "grdDealMgmt"
    deal_management_grid_count_span_locator = (By.XPATH, "//div[@id='divSelectCount']/span")
    # End: Buy and Sell Deal Management page locators

    # Start: XML file locators
    offer_tag_name = "Offer"
    name_attributr_name = "Name"
    origingroup_tag_name = "OriginGroup"
    originname_tag_name = "OriginName"
    rate_tag_name = "Rate"
    value_attribute_name = "Value"
    # End: XML file locators

    # Start: Customer Offers page locators
    uploaded_dialed_digit_information_locator = (By.XPATH, "//div[@id='tDDPaging']/descendant::tbody/tr[@id='TR_tDD_1']")
    # End: Customer Offers page locators

    # Start: Vendor Offers page locator
    vendor_offer_vendor_textbox_locator = (By.ID, "rSource_Source")
    go_button_locator = (By.CLASS_NAME, "lgxGoButton")
    vendor_offer_first_plus_button_locator = (By.ID, "IMGOfferTree_Source1")
    vendor_offer_from_date_textbox_locator = (By.ID, "rDate_FromDate")
    vendor_offer_first_dicon_button_locator = (By.ID, "lOffer1_OfferTree_Source1__tOffer_cDestination_iDestination")
    vendor_offer_first_ricon_button_locator = (By.ID, "lOffer1_OfferTree_Source1__tOffer_cRates_iRate")
    first_vendor_offer_link_locator = (By.ID, "lOffer1_OfferTree_Source1__tOffer_cOffer_Offer")
    edit_analyzed_rates_button_locator = (By.ID, "rEdit_bEditAnalyze")
    vendor_offer_first_ddicon_button_locator = (By.ID, "lOffer1_OfferTree_Source1__tOffer_cDD_iDD")
    # End: Vendor offers page locator

    # Start: Rate analysis pop up locators
    rate_analysis_frame_locator = (By.NAME, "RateAnalysis")
    rate_analysis_view_dropdown_locator = (By.ID, "DdlView")
    rate_analysis_status_dropdown_locator = (By.ID, "DdlStatus")
    rate_analysis_discrepancy_dropdown_locator = (By.ID, "DdlDiscrepancy")
    rate_analysis_in_routing_flag_dropdown_locator = (By.ID, "DdlRoutingFlag")
    rate_analysis_rate_inputbox_locator = (By.ID, "TxtRate")
    rate_analysis_destination_inputbox_locator = (By.ID, "TxtvalDestination")
    # End: Rate analysis pop up locators

    # Start: Reference price list management page locators
    approval_wizard_button_locator = (By.ID, "btnApprovalWizard")
    approval_wizard_page_locator = (By.ID, "ApprovalWizard_wnd_title")
    # End: Reference price list management page locators

    # Start: RPLM page locators
    rpl_count_locator = (By.XPATH, "//div[@id='divCopyFromCountRPL']/span")
    country_count_locator = (By.XPATH, "//div[@id='divCopyFromCountCountry']/span")
    move_rplm_single_item_button_locator = (By.XPATH, "//button[@id='btnAddSelectedRPL']")
    move_rplm_country_single_item_button_locator = (By.XPATH, "//button[@id='btnAddSelectedCountry']")
    approval_wizard_next_button_locator = (By.ID, "btnApprovalWizardNext")
    total_rpl_report_column_locator = (By.XPATH, "//a[text()='Total RPL Record(s) to be Approved']")
    select_date_for_approve_reject_locator = (By.ID, "dtWStartDate")
    rplm_grid_row_count_locator = (By.ID, "divSelectCount")
    rplm_grid_div_id = "grdRefPrice"
    generate_record_kendo_dropdown_locator = (By.XPATH, "//label[text()='Generate Record(s) for']/../descendant::span[@class='k-icon k-i-arrow-s']")
    generation_type_dropdown_locator = (By.XPATH, "//label[text()='Generation Type']/../descendant::span[@class='k-icon k-i-arrow-s']")
    available_rpl_selectbox_id = "lvCopyFromRPL"
    available_rpl_destination_selectbox_id = "lvCopyFromDestination"
    move_destination_single_item_button_locator = (By.XPATH, "//button[@id='btnAddSelectedDestination']")
    generate_reference_price_list_button_locator = (By.ID, "btnGenerate")
    destination_resolved_pop_up_locator = (By.ID, "wndLog_wnd_title")
    close_button_locator = (By.XPATH, "btnLogClose")
    action_dropdown_locator = (By.XPATH, "//div[@class='filter-label required' and contains(text(), 'Action')]/../descendant::span[@class='k-input']")
    future_action_dropdown_locator = (By.XPATH, "//div[@class='filter-label required' and contains(text(), 'Future Action')]/../descendant::span[@class='k-input']")
    apply_custom_rules_dropdown_locator = (By.XPATH, "//div[@class='filter-label required' and contains(text(), 'Apply Custom Rules')]/../descendant::span[@class='k-input']")
    approve_action_option_locator = (By.XPATH, "//ul[@id='ddlWAction_listbox']/li[text()='Approve']")
    reject_action_option_locator = (By.XPATH, "//ul[@id='ddlWAction_listbox']/li[text()='Reject']")
    adjust_future_action_option_locator = (By.XPATH, "//ul[@id='ddlWFutureAction_listbox']/li[text()='Adjust']")
    delete_future_action_option_locator = (By.XPATH, "//ul[@id='ddlWFutureAction_listbox']/li[text()='Delete']")
    apply_custom_rules_no_option_locator = (By.XPATH, "//ul[@id='ddlWApplyCustomRules_listbox']/li[text()='No']")
    apply_custom_rules_yes_option_locator = (By.XPATH, "//ul[@id='ddlWApplyCustomRules_listbox']/li[text()='Yes']")
    record_date_range_start_date_inputbox_locator = (By.ID, "dtWStartDate")
    record_date_range_end_date_inputbox_locator = (By.ID, "dtWEndDate")
    reference_price_list_column_name = "Reference Price List"
    bulk_edit_status_kendo_dropdown_locator = (By.XPATH, "//label[text()='Status']/../descendant::span[@class='k-icon k-i-arrow-s']")
    bulk_edit_end_date_locator = (By.ID, "Edit-EndDate")
    apply_custom_rules_yes_radio_button_locator = (By.ID, "rbCustomRulesYes")
    apply_custom_rules_no_radio_button_locator = (By.ID, "rbCustomRulesNo")
    rpl_report_button_locator = (By.ID, "btnRPLReport")
    rpl_report_price_list_tab_locator = (By.ID, "tPL")
    rpl_report_impact_tab_locator = (By.ID, "tImpact")
    data_saved_success_message_locator = (By.XPATH, "//p[contains(text(), 'Data has been saved successfully')]")
    note_textarea_locator = (By.XPATH, "//label[text()='Note']/../descendant::textarea")
    # End: RPLM page locators

    # Start: Target Buy List page locators
    calculate_button_locator = (By.ID, "btnRunCostJob")
    cost_forecast_job_initialization_success_message_locator = (By.XPATH, "//p[text()='Cost Forecasting (On Demand) Job Initiated. Please access the Control menu to review the status of the job']")
    # End: Target Buy List page locators

    # Start: Target Buy List Generation page locators
    published_date_datepicker_locator = (By.XPATH, "//input[@id='dtPublishedDate']/../descendant::span[@class='k-icon k-i-calendar']")
    vendors_selector_list_box_locator = (By.XPATH, "//div[@id='tblVendorSelector']/descendant::ul[@id='lvCopyFromVendor']")
    selected_vendors_list_box_locator = (By.XPATH, "//div[@id='tblVendorSelector']/descendant::ul[@id='lvCopyToVendor']")
    countries_selector_list_box_locator = (By.XPATH, "//div[@id='tblCountriesSelector']/descendant::ul[@id='lvCopyFromCountries']")
    selected_countries_list_box_locator = (By.XPATH, "//div[@id='tblCountriesSelector']/descendant::ul[@id='lvCopyToCountries']")
    # End: Target Buy List Generation page locators

    # Start: Target Buy List Generation page locators
    service_level_based_cpl_dropdown_locator = (By.XPATH, "//label[text()='Service-Level Based CPLs']/../descendant::span[@class='k-input']")
    account_updates_cpl_option_locator = (By.XPATH, "//ul[@id='ddlSLCPLOption_listbox']/li[text()='Account Updates CPL']")
    cpl_updates_account_option_locator = (By.XPATH, "//ul[@id='ddlSLCPLOption_listbox']/li[text()='CPL Updates Account']")
    # End: Target Buy List Generation page locators

    # Start: Customer Rounding Rule Definition page locators
    first_rounding_rule_checkbox_locator = (By.ID, "RadPanelBar_i0_i0_grdRules_ctl00_ctl04_cbAssigned")
    rounding_rule_defination_save_button_locator = (By.ID, "RadPanelBar_i0_i0_btnSaveRules")
    country_definition_filter_textbox_locator = (By.ID, "RadPanelBar_i1_i0_grdCountry_ctl00_ctl02_ctl02_FilterTextBox_Country")
    country_definition_filter_icon_locator = (By.ID, "RadPanelBar_i1_i0_grdCountry_ctl00_ctl02_ctl02_Filter_Country")
    contains_button_locator = (By.XPATH, "//span[text()='Contains']")
    country_defination_save_button_locator = (By.ID, "RadPanelBar_i1_i0_btnSaveCountry")
    first_country_definition_checkbox_locator = (By.ID, "RadPanelBar_i1_i0_grdCountry_ctl00_ctl04_cbAssigned")
    rate_dimension_template_column_count_locator = (By.XPATH, "//div[@id='RadPanelBar_i2_i0_grdRM']/descendant::thead/tr[1]/th")
    rate_dimension_template_save_button_locator = (By.ID, "RadPanelBar_i2_i0_btnSaveRM")
    customer_source_filter_textbox_locator = (By.ID, "RadPanelBar_i3_i0_grdCustRR_ctl00_ctl02_ctl02_FilterTextBox_Source")
    customer_source_filter_icon_locator = (By.ID, "RadPanelBar_i3_i0_grdCustRR_ctl00_ctl02_ctl02_Filter_Source")
    customer_source_column_count_locator = (By.XPATH, "//div[@id='RadPanelBar_i3_i0_grdCustRR']/descendant::thead/tr[1]/th")
    customer_source_save_button_locator = (By.ID, "RadPanelBar_i3_i0_btnSaveCustRR")
    # End: Customer Rounding Rule Definition page locators

    # Start: Customer Offers page locator
    current_status_select_locator = (By.ID, "Status_StatusValue")
    generate_offer_file_link_locator = (By.ID, "rOfferFile_bGenerateFile")
    # End: Customer offers page locator

    # Start: Customer offer generation page locators
    mypricelist_dropdown_locator = (By.ID, "ddlTemplate")
    mypricelist_generate_button_locator = (By.ID, "imgGenerate")
    mypricelist_spin_loader_locator = (By.CLASS_NAME, "loading")
    # End: Customer offer generation page locators

    # Start: Offer Template Management page locators
    offer_template_management_page_header_locator = (By.ID, "lgx_DetailTitle")
    first_offer_template_locator = (By.ID, "tblVOT_cVOTName1_lblTemplateName")
    company_filter_field_locator = (By.ID, "Company_lblCompany")
    edit_button_locator = (By.ID, "btnEdit")
    cancel_button_locator = (By.ID, "btnCancel")
    new_offer_template_button_locator = (By.ID, "btnNewOfferTemplate")
    vendor_offer_upload_fail_message_locator = (By.XPATH, "//td[contains(text(), 'Upload failed. Please check log for details.')]")
    # End: Offer Template Management page locators

    # End: ixTrade page locators

    def switch_to_ixtrade(self):
        """
        Implementing switch to ixtrade functionality
        :return:
        """
        self.switch_to_window()
        self.accept_ssl_certificate()

    def click_vendor_offers_link(self):
        """
        Implementing click vendor offers link functionality
        :return:
        """
        self.switch_to_frame(self.source_container_frame_locator)
        self.click_element(self.vendor_offers_link_locator)
        self.switch_to_default_content()

    def click_vendor_offer_upload_submenu(self):
        """
        Implementing click vendor offers Submenu functionality
        :return:
        """
        self.wait_for_ajax_spinner_load()
        self.switch_to_frame(self.header_frame_locator)
        self.select_submenu(self.buy_menu_locator, self.vendor_offer_upload_submenu_js_function, script_executor=True)
        self.wait_for_ajax_spinner_load()
        self.switch_to_default_content()

    def set_vendor_offer_source_type(self, source_type):
        """
        Implementing set vendor offer source type functionality
        :param source_type:
        :return:
        """
        i = 0
        while i<5:
            try:
                self.switch_to_frame(self.source_container_frame_locator)
                vendor_offer_source_type_dropdown_element = self.wait(10).until(EC.presence_of_element_located(self.vendor_offer_source_type_dropdown_locator))
                vendor_offer_source_type_dropdown_element.click()
                dropdown_item_locator = (By.XPATH, "//ul[@class='rcbList']/descendant::li[text()='%s']" % source_type)
                self.click_element(dropdown_item_locator, script_executor=True)
                self.switch_to_default_content()
                break
            except:
                self.switch_to_default_content()
                self.refresh_window()
                pass
            finally:
                i += 1

    def click_vendor_offer_browse_button(self):
        """
        Implementing click vendor offer browse button functionality
        :return:
        """
        self.switch_to_frame(self.source_container_frame_locator)
        browse_button_element = self.wait().until(EC.element_to_be_clickable(self.vendor_offer_browse_button_locator))
        browse_button_element.click()

    def click_upload_now_button(self):
        """
        Implementing click upload now button functionality
        :return:
        """
        timeout = 300
        self.click_element(self.upload_now_button_locator)
        self.wait_for_ajax_spinner_load()
        try:
            upload_progress_pop_up_locator = (By.XPATH, "//em[text()='Upload Progress']")
            upload_progress_pop_up_control = self.wait(5).until(EC.visibility_of_any_elements_located(upload_progress_pop_up_locator), 'ajax spinner load locator not found before specified time out')
            end_time = time.time() + timeout
            while len(upload_progress_pop_up_control) > 0:
                upload_progress_pop_up_control = self.wait(5).until(EC.visibility_of_any_elements_located(upload_progress_pop_up_locator), 'ajax spinner load locator not found before specified time out')
                if time.time() > end_time:
                    break
        except TimeoutException:
            pass
        except NoSuchElementException:
            pass
        except ElementNotVisibleException:
            pass
        except WebDriverException:
            pass
        self.switch_to_default_content()

    def compare_upload_failure_message(self, message):
        """
        Implementing compare upload failure message functionality
        :param message:
        :return: True/False
        """
        is_compared = False
        self.switch_to_frame(self.source_container_frame_locator)
        failure_message_locator = (By.XPATH, "//div[contains(text(), '%s')]" % message)
        if self.is_element_present(failure_message_locator):
            is_compared = True
        self.switch_to_default_content()
        return is_compared

    def click_customer_pricing_exception_management_submenu(self):
        """
        Implementing click customer pricing exception management Submenu functionality
        :return:
        """
        self.wait_for_ajax_spinner_load()
        self.switch_to_frame(self.header_frame_locator)
        try:
            self.select_submenu(self.sell_menu_locator, self.customer_pricing_exception_management_submenu_js_function, script_executor=True)
            self.wait_for_ajax_spinner_load()
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_customer_pricing_exception_management_search_button(self):
        """
        Implementing click customer pricing exception management search button functionality
        :return:
        """
        self.switch_to_frame(self.app_container_frame_locator)
        try:
            self.wait_for_ajax_spinner_load(timeout=180)
            self.click_element(self.customer_pricing_exception_management_search_button_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_exit_button(self):
        """
        Implementing click exit button functionality
        :return:
        """
        self.switch_to_frame(self.header_frame_locator)
        self.click_element(self.exit_header_locator)
        self.switch_to_default_window()

    def click_legacy_ui_link(self):
        """
        Implementing click legacy ui link functionality
        :return:
        """
        self.switch_to_frame(self.app_container_frame_locator)
        self.click_element(self.legacy_ui_link_locator)
        self.switch_to_default_content()

    def click_pricing_exception_grid_first_row_inline_action_button(self):
        """
        Implementing click pricing exception grid first row inline action button functionality
        :return:
        """
        self.switch_to_frame(self.app_container_frame_locator)
        inline_action_button_locator = (By.XPATH, "//div[contains(@id, 'grdCPEMgmt')]/descendant::tbody/descendant::td[3]/span")
        self.click_element(inline_action_button_locator)
        self.switch_to_default_content()

    def get_pricing_exception_grid_row_details(self, div_id, column_name, is_inside_span=True):
        """
        Implementing get pricing exception left grid row details functionality
        :param column_name:
        :param is_inside_span:
        :return: column_value
        """
        column_locator = (By.XPATH, "//div[@id='%s']/descendant::th[@data-title='%s']" % (div_id, str(column_name)))
        column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) + 1
        if is_inside_span is False:
            column_value_locator = (By.XPATH, "//div[@id='%s']/descendant::div[@class='k-grid-content-locked']/descendant::tr/td[%s]" % (div_id, str(column_index)))
        else:
            column_value_locator = (By.XPATH, "//div[@id='%s']/descendant::div[@class='k-grid-content-locked']/descendant::tr/td[%s]/span" % (div_id, str(column_index)))
        column_value_element = self.wait(5).until(EC.presence_of_element_located(column_value_locator), 'column value not found before specified time out')
        return column_value_element.text

    def get_pricing_exception_grid_left_table_details(self):
        """
        Implementing get pricing exception grid left table details functionality
        :return: grid_row_data
        """
        column_value = None
        grid_row_data = {"Status": "", "Customer": "", "Selling Destination": ""}
        self.switch_to_frame(self.app_container_frame_locator)
        for key in grid_row_data:
            if key == "Selling Destination":
                column_value = self.get_pricing_exception_grid_row_details(self.pricing_exception_grid_div_id, key, False)
            else:
                column_value = self.get_pricing_exception_grid_row_details(self.pricing_exception_grid_div_id, key)
            grid_row_data[key] = column_value
        self.switch_to_default_content()
        return grid_row_data

    def select_pricing_exception_grid_inline_action_item(self, inline_item_name, module_name=None):
        """
        Implementing select pricing exception grid inline action item functionality
        :param inline_item_name:
        :param module_name:
        :return:
        """
        inline_item_locator = None
        self.switch_to_frame(self.app_container_frame_locator)
        self.set_existing_handles()
        if module_name is None:
            inline_item_locator = (By.XPATH, "//ul[@id='Actions_listbox']/descendant::li[text()='%s']" % inline_item_name)
        else:
            inline_item_locator = (By.XPATH, "//ul[@id='Action_listbox']/descendant::li[text()='%s']" % inline_item_name)
        self.click_element(inline_item_locator)
        self.switch_to_default_content()

    def get_pricing_exception_grid_label_wise_text(self, label_name):
        """
        Implementing get pricing exception grid label wise text functionality
        :param label_name:
        :return: label text
        """
        self.switch_to_frame(self.app_container_frame_locator)
        labels_text_locator = (By.XPATH, "//label[text()='%s']/../descendant::div[@class='field-wrapper']/span" % label_name)
        labels_text_element = self.wait().until(EC.presence_of_element_located(labels_text_locator), 'labels text locator not found before specified time out')
        text = labels_text_element.text
        self.switch_to_default_content()
        return text

    def get_pricing_exception_grid_right_table_details(self):
        """
        Implementing get pricing exception grid right table details functionality
        :return: grid_row_data
        """
        pricing_exception_grid_right_table_dictionary = {}
        pricing_exception_grid_right_table_columns = ["Trade Destination Category", "CPE Bundle", "Reference Price List", "Currency", "Current Customer Price", "Requested Price", "Approved Price", "Estimated Value", "Volume of Last Day", "Volume of Last Week", "Cost Test", "Reference Minimum Price", "Target Price01feb", "Price", "Net Margin", "Margin Minimum test 01 feb", "Absolute Margin test", "Begin Date Test", "End Date", "Rate Type", "Approval Type", "CLI", "ASR", "ALOC", "Note"]
        self.switch_to_frame(self.app_container_frame_locator)
        for column_position in range(len(pricing_exception_grid_right_table_columns)):
            column_value_locator = (By.XPATH, "//div[@id='%s']/descendant::div[@class='k-grid-content']/descendant::tr/td[%s]" % (self.pricing_exception_grid_div_id, str(column_position+1)))
            column_value_element = self.wait(5).until(EC.presence_of_element_located(column_value_locator), 'column value not found before specified time out')
            pricing_exception_grid_right_table_dictionary.update({pricing_exception_grid_right_table_columns[column_position]: column_value_element.text})
        self.switch_to_default_content()
        return pricing_exception_grid_right_table_dictionary

    def is_exception_history_pop_up_page_loaded_properly(self):
        """
        Implementing is exception history pop up page loaded properly functionality
        :return: True/False
        """
        self.switch_to_frame(self.app_container_frame_locator)
        is_element_present = self.is_element_present(self.exception_history_pop_up_page_header_locator)
        self.switch_to_default_content()
        return is_element_present

    def close_pricing_exception_current_pop_up(self, pop_up_name):
        """
        Implementing close pricing exception current pop up functionality
        :param pop_up_name:
        :return:
        """
        self.switch_to_frame(self.app_container_frame_locator)
        pop_up_close_button_locator = (By.XPATH, "//span[contains(text(), '%s')]/../descendant::span[text()='Close']" % pop_up_name)
        self.click_element(pop_up_close_button_locator, True)
        self.switch_to_default_content()

    def is_route_guide_with_sell_rates_page_loaded_properly(self):
        """
        Implementing is route guide with sell rates page loaded properly functionality
        :return: True/False
        """
        is_element_present = self.is_element_present(self.route_guide_with_sell_rates_page_header_locator)
        return is_element_present

    def click_upload_new_document_button(self):
        """
        Implementing click upload new document button functionality
        :return:
        """
        self.switch_to_frame(self.app_container_frame_locator)
        self.click_element(self.upload_new_document_button_locator)
        self.switch_to_default_content()

    def click_on_file_browse_button(self):
        """
        Implementing click on file browse button functionality
        :return:
        """
        self.switch_to_frame(self.app_container_frame_locator)
        self.click_element(self.file_browse_button_locator)

    def set_file_name(self, file_name_prefix):
        """
        Implementing set file name functionality
        :param file_name_prefix:
        :return: file name
        """
        self.switch_to_default_content()
        self.switch_to_frame(self.app_container_frame_locator)
        file_name = file_name_prefix + self.random_string_generator(6)
        self.set_value_into_input_field(self.file_name_textbox_locator, file_name)
        self.switch_to_default_content()
        return file_name

    def compare_file_name(self, file_name):
        """
        Implementing compare file name functionality
        :param file_name:
        :return: True/False
        """
        self.switch_to_frame(self.app_container_frame_locator)
        row_column_locator = (By.XPATH, "//div[contains(@id, 'grdDocumentList')]/descendant::div[@class='k-grid-content']/descendant::tr")
        row_column_elements = self.wait().until(EC.presence_of_all_elements_located(row_column_locator), 'row column locator not found before specified time out')
        status = False
        for row in range(len(row_column_elements)):
            file_name_value_locator = (By.XPATH, "//div[contains(@id, 'grdDocumentList')]/descendant::div[@class='k-grid-content']/descendant::tr[%s]/td[2]/a" % (str(row + 1)))
            file_name_value_element = self.wait().until(EC.presence_of_element_located(file_name_value_locator), 'file name locator not found before specified time out')
            grid_file_name = str(file_name_value_element.text)
            if file_name == grid_file_name:
                status = True
                break
        self.switch_to_default_content()
        return status

    def click_on_file_save_button(self):
        """
        Implementing click on file save button functionality
        :return:
        """
        self.switch_to_frame(self.app_container_frame_locator)
        self.click_element(self.file_save_button_locator)
        try:
            self.wait().until(EC.visibility_of_element_located(self.upload_completed_success_message_locator), 'upload completed success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise
        self.switch_to_default_content()

    def set_status(self, list_of_status):
        """
        Implementing set status functionality
        :param list_of_status:
        :return:
        """
        self.switch_to_frame(self.app_container_frame_locator)
        self.multiple_items_selection_from_kendo_dropdown_for_copy_price_exceptions(self.status_kendo_dropdown_locator, list_of_status)
        self.wait_for_ajax_spinner_load()
        self.click_element(self.customer_pricing_exception_header_locator)
        self.switch_to_default_content()

    def click_pricing_exception_grid_first_row_checkbox(self):
        """
        Implementing click pricing exception grid first row checkbox functionality
        :return:
        """
        self.switch_to_frame(self.app_container_frame_locator)
        inline_action_button_locator = (By.XPATH, "//div[contains(@id, 'grdCPEMgmt')]/descendant::tbody/descendant::td[2]/input")
        self.click_element(inline_action_button_locator)
        self.switch_to_default_content()

    def click_on_copy_button(self):
        """
        Implementing click on copy button functionality
        :return:
        """
        self.switch_to_frame(self.app_container_frame_locator)
        self.click_element(self.copy_button_locator)
        self.switch_to_default_content()

    def move_available_items_to_destination_for_copy_price_exceptions(self, source_id, item_list, move_button_locator=None):
        """
        Implementing move available items to destination functionality
        :param source_id:
        :param item_list:
        :param move_button_locator:
        :return:
        """
        for item in item_list:
            item_selection_locator = (By.XPATH, "//ul[@id='%s']/descendant::li[text()='%s']" % (source_id, item))
            self.click_element(item_selection_locator, script_executor=True)
            if move_button_locator is None:
                move_single_item_button_element = self.wait().until(EC.element_to_be_clickable(self.move_single_item_button_locator), 'move single item button locator not found before specified time out')
            else:
                move_single_item_button_element = self.wait().until(EC.element_to_be_clickable(move_button_locator), 'move single item button locator not found before specified time out')
            move_single_item_button_element.click()
        self.wait_for_ajax_spinner_load()

    def select_customers_for_copy_price_exceptions(self, customers_list):
        """
        Implementing select customers for price lists functionality
        :param customers_list:
        :return:
        """
        self.switch_to_frame(self.app_container_frame_locator)
        self.move_available_items_to_destination_for_copy_price_exceptions(self.available_customers_selectbox_id, customers_list, self.move_single_button_locator)
        self.switch_to_default_content()

    def click_on_copy_cpe_save_button(self):
        """
        Implementing click on copy  cpe save button functionality
        :return:
        """
        self.switch_to_frame(self.app_container_frame_locator)
        self.click_element(self.copy_cpe_save_button_locator)
        try:
            self.wait().until(EC.presence_of_element_located(self.confirmation_popup_locator), 'confirmation popup locator not found before specified time out')
            self.click_element(self.ok_button_locator)
            self.wait_for_ajax_spinner_load(timeout=300)
        except:
            raise
        self.switch_to_default_content()

    def multiple_items_selection_from_kendo_dropdown_for_copy_price_exceptions(self, kendo_dropdown_locator, dropdown_items, script_executor=True):
        """
        Implementing multiple items selection from kendo dropdown functionality
        :param kendo_dropdown_locator:
        :param dropdown_items:
        :param script_executor:
        :return:
        """
        kendo_dropdown_element = self.wait().until(EC.element_to_be_clickable(kendo_dropdown_locator), 'kendo dropdown locator not found before specified time out')
        if script_executor:
            self.script_executor_click(kendo_dropdown_element)
        else:
            kendo_dropdown_element.click()
        self.wait_for_ajax_spinner_load()
        for item in dropdown_items:
            dropdown_item_locator = (By.XPATH, "//li[text()='%s']" % item)
            self.click_element(dropdown_item_locator, True)

    def click_buy_sell_deal_management_submenu(self):
        """
        Implementing click buy sell deal management submenu functionality
        :return:
        """
        self.wait_for_ajax_spinner_load()
        self.switch_to_frame(self.header_frame_locator)
        self.select_submenu(self.deal_menu_locator, self.buy_sell_deal_management_submenu_js_function, script_executor=True)
        self.wait_for_ajax_spinner_load()
        self.switch_to_default_content()

    def is_buy_and_sell_deal_dropdown_present(self):
        """
        Implementing is buy and sell deal dropdown present functionality
        :return: True/False
        """
        self.switch_to_frame(self.app_container_frame_locator)
        is_present = self.is_element_present(self.buy_and_sell_deal_select_locator)
        self.switch_to_default_content()
        return is_present

    def is_status_dropdown_present(self):
        """
        Implementing is status dropdown present functionality
        :return: True/False
        """
        self.switch_to_frame(self.app_container_frame_locator)
        is_present = self.is_element_present(self.status_select_locator)
        self.switch_to_default_content()
        return is_present

    def is_start_date_datepicker_present(self):
        """
        Implementing is start date datepicker present functionality
        :return: True/False
        """
        self.switch_to_frame(self.app_container_frame_locator)
        is_present = self.is_element_present(self.start_date_inputbox_locator)
        self.switch_to_default_content()
        return is_present

    def is_end_date_datepicker_present(self):
        """
        Implementing is end date datepicker present functionality
        :return: True/False
        """
        self.switch_to_frame(self.app_container_frame_locator)
        is_present = self.is_element_present(self.end_date_inputbox_locator)
        self.switch_to_default_content()
        return is_present

    def is_save_changes_button_present(self):
        """
        Implementing is save changes button present functionality
        :return: True/False
        """
        self.switch_to_frame(self.app_container_frame_locator)
        is_present = self.is_element_present(self.save_changes_button_locator)
        self.switch_to_default_content()
        return is_present

    def is_cancel_changes_button_present(self):
        """
        Implementing is cancel changes button present functionality
        :return: True/False
        """
        self.switch_to_frame(self.app_container_frame_locator)
        is_present = self.is_element_present(self.cancel_changes_button_locator)
        self.switch_to_default_content()
        return is_present

    def is_request_new_buy_and_sell_deal_button_present(self):
        """
        Implementing is request new buy and sell deal button present functionality
        :return: True/False
        """
        self.switch_to_frame(self.app_container_frame_locator)
        is_present = self.is_element_present(self.request_new_buy_and_sell_deal_button_locator)
        self.switch_to_default_content()
        return is_present

    def is_deal_bulk_edit_button_present(self):
        """
        Implementing is deal bulk edit button present functionality
        :return: True/False
        """
        self.switch_to_frame(self.app_container_frame_locator)
        is_present = self.is_element_present(self.deal_bulk_edit_button_locator)
        self.switch_to_default_content()
        return is_present

    def update_the_xml_file(self, file_path, vendor_name):
        """
        Implementing update the xml file functionality
        :param file_path:
        :param vendor_name:
        :return:
        """
        try:
            modified_file_path = file_path.replace('/', '\\')
            xmldoc = minidom.parse(str(modified_file_path))
            offer = xmldoc.getElementsByTagName("Offer")[0]
            offer.setAttribute('Account', vendor_name)
            file_handle = open(str(modified_file_path), "wb")
            xmldoc.writexml(file_handle)
            file_handle.close()
        except:
            raise

    def is_upload_now_button_present(self):
        """
        Implementing is upload now button present functionality
        :return: True/False
        """
        self.switch_to_frame(self.source_container_frame_locator)
        is_present = self.is_element_present(self.upload_now_button_locator)
        self.switch_to_default_content()
        return is_present

    def update_specific_attribute_value_of_xml_file(self, file_path, value_prefix, tag_name, attribute_name):
        """
        Implementing update specific attribute value of xml file functionality
        :param file_path:
        :param value_prefix:
        :param tag_name:
        :param attribute_name:
        :return:
        """
        value = value_prefix + self.random_string_generator(4, string.digits)
        try:
            modified_file_path = file_path.replace('/', '\\')
            xmldoc = minidom.parse(str(modified_file_path))
            elements = xmldoc.getElementsByTagName("%s" % tag_name)
            for item in elements:
                item.setAttribute(('%s' % attribute_name), value)
            file_handle = open(str(modified_file_path), "wb")
            xmldoc.writexml(file_handle)
            file_handle.close()
        except:
            raise

    def update_offer_name_of_the_xml_file(self, file_path, offer_name_prefix):
        """
        Implementing update offer name of the xml file functionality
        :param file_path:
        :param offer_name_prefix:
        :return:
        """
        self.update_specific_attribute_value_of_xml_file(file_path, offer_name_prefix, self.offer_tag_name, self.name_attributr_name)

    def update_origingroup_name_of_the_xml_file(self, file_path, origingroupname_prefix):
        """
        Implementing update origingroup name of the xml file functionality
        :param file_path:
        :param origingroupname_prefix:
        :return:
        """
        self.update_specific_attribute_value_of_xml_file(file_path, origingroupname_prefix, self.origingroup_tag_name, self.name_attributr_name)

    def update_origin_name_of_the_xml_file(self, file_path, origin_prefix):
        """
        Implementing update origin name of the xml file functionality
        :param file_path:
        :param origin_prefix:
        :return:
        """
        self.update_specific_attribute_value_of_xml_file(file_path, origin_prefix, self.originname_tag_name, self.name_attributr_name)

    def get_specific_attribute_value_from_xml_file(self, file_path, tag_name, attribute_name):
        """
        Implementing get specific attribute value from xml file functionality
        :param file_path:
        :param tag_name:
        :param attribute_name:
        :return:
        """
        attribute_value_list = []
        try:
            modified_file_path = file_path.replace('/', '\\')
            xmldoc = minidom.parse(str(modified_file_path))
            elements = xmldoc.getElementsByTagName("%s" % tag_name)
            for item in elements:
                attribute_value_list.append(item.getAttribute('%s' % attribute_name))
            return attribute_value_list
        except:
            raise

    def get_destinations_from_the_xml_file(self, file_path):
        """
        Implementing get destinations from the xml file functionality
        :param file_path:
        :return:
        """
        return self.get_specific_attribute_value_from_xml_file(file_path, self.origingroup_tag_name, self.name_attributr_name)

    def get_rates_value_from_the_xml_file(self, file_path):
        """
        Implementing get rates value from the xml file functionality
        :param file_path:
        :return:
        """
        return self.get_specific_attribute_value_from_xml_file(file_path, self.rate_tag_name, self.value_attribute_name)

    def click_vendor_offers_submenu(self):
        """
        Implementing click vendor offers functionality
        :return:
        """
        self.wait_for_ajax_spinner_load()
        self.switch_to_frame(self.header_frame_locator)
        self.select_submenu(self.buy_menu_locator, self.vendor_offers_submenu_js_function, script_executor=True)
        self.wait_for_ajax_spinner_load()
        self.switch_to_default_content()

    def set_vendor_name_for_search(self, vendor_name):
        """
        Implementing set vendor name for search functionality
        :param vendor_name:
        :return:
        """
        self.switch_to_frame(self.list_frame_locator)
        self.set_value_into_input_field(self.vendor_offer_vendor_textbox_locator, vendor_name)
        self.switch_to_default_content()

    def set_vendor_offer_from_date_for_search(self, from_date):
        """
        Implementing set vendor offer from date for search functionality
        :param from_date:
        :return:
        """
        self.switch_to_frame(self.list_frame_locator)
        self.set_value_into_input_field(self.vendor_offer_from_date_textbox_locator, from_date)
        self.switch_to_default_content()

    def click_vendor_offers_go_button(self):
        """
        Implementing click vendor offers go button functionality
        :return:
        """
        self.switch_to_frame(self.list_frame_locator)
        self.click_element(self.go_button_locator)
        self.switch_to_default_content()

    def click_vendor_offer_first_plus_button(self):
        """
        Implementing click vendor offer first plus button functionality
        :return:
        """
        self.switch_to_frame(self.list_frame_locator)
        self.click_element(self.vendor_offer_first_plus_button_locator)
        self.switch_to_default_content()

    def click_vendor_offer_first_dicon_button(self):
        """
        Implementing click vendor offer first dicon button functionality
        :return:
        """
        self.switch_to_frame(self.list_frame_locator)
        self.click_element(self.vendor_offer_first_dicon_button_locator)
        self.switch_to_default_content()

    def click_vendor_offers_destination_go_button(self):
        """
        Implementing click vendor offers destination go button functionality
        :return:
        """
        self.switch_to_frame(self.detail_frame_locator)
        self.click_element(self.go_button_locator)
        self.switch_to_default_content()

    def get_vendor_offer_destination_grid_destination_column_value(self):
        """
        Implementing get vendor offer destination grid destination column value functionality
        :return: destination_list
        """
        i = 1
        global destinations_list
        destinations_list = []
        self.switch_to_frame(self.detail_frame_locator)
        column_row_count_locator = (By.XPATH, "//table[@id='gDestination']/tr")
        column_row_count_elements = self.wait().until(EC.presence_of_element_located(column_row_count_locator), 'row count locator not found before specified time out')
        try:
            for row in range(len(column_row_count_elements) -1):
                destination_locator = (By.XPATH, "//table[@id='gDestination']/tr[%s]/td[1]/span/span[1]/span" % str(i+1))
                destination_element = self.wait().until(EC.presence_of_element_located(destination_locator), 'destination locator not found before specified time out')
                destination = destination_element.text.split()
                destinations_list.append(str(destination[0]))
                i = i+1
        except:
            raise
        self.switch_to_default_content()
        return destinations_list

    def compare_destinations(self, destinations_list_from_xml):
        """
        Implementing compare destinations functionality
        :param destinations_list_from_xml:
        :return: True/False
        """
        global destinations_list
        is_compared = True
        for destination in destinations_list_from_xml:
            if destination not in destinations_list:
                is_compared = False
                break
        return is_compared

    def click_vendor_offer_first_ricon_button(self):
        """
        Implementing click vendor offer first ricon button functionality
        :return:
        """
        self.switch_to_frame(self.list_frame_locator)
        self.click_element(self.vendor_offer_first_ricon_button_locator)
        self.switch_to_default_content()

    def get_vendor_offer_rate_grid_rate_column_value(self):
        """
        Implementing get vendor offer destination grid destination column value functionality
        :return: rate_list
        """
        i = 1
        global rate_list
        rate_list = []
        self.switch_to_frame(self.detail_frame_locator)
        column_row_count_locator = (By.XPATH, "//table[@id='RateGrid_RateGrid']/tr")
        column_row_count_elements = self.wait().until(EC.presence_of_element_located(column_row_count_locator), 'row count locator not found before specified time out')
        try:
            for row in range(len(column_row_count_elements)):
                destination_locator = (By.XPATH, "//table[@id='RateGrid_RateGrid']/tr[%s]/td[5]/span/span/span" % str(i))
                destination_element = self.wait().until(EC.presence_of_element_located(destination_locator), 'destination locator not found before specified time out')
                destination = destination_element.text.split()
                rate_list.append(str(destination[0]))
                i = i+1
        except:
            raise
        self.switch_to_default_content()
        return rate_list

    def compare_rates(self, rate_list_from_xml):
        """
        Implementing compare destinations functionality
        :param rate_list_from_xml:
        :return: True/False
        """
        global rate_list
        is_compared = True
        for rate in rate_list_from_xml:
            if rate not in rate_list:
                is_compared = False
                break
        return is_compared

    def click_price_exception_management_screen_import_button(self):
        """
        Implementing click price exception management screen import button functionality
        :return:
        """
        self.switch_to_frame(self.app_container_frame_locator)
        try:
            self.click_element(self.import_button_locator, error_message='import button locator not found before specified time out')
            self.wait().until(EC.visibility_of_element_located(self.import_pricing_exception_pop_up_locator))
            self.click_element(self.import_pricing_exception_pop_up_close_icon_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_price_exception_management_screen_export_button(self):
        """
        Implementing click price exception management screen export button functionality
        :return:
        """
        self.switch_to_frame(self.app_container_frame_locator)
        try:
            self.click_element(self.export_button_locator, error_message='export button locator not found before specified time out')
            self.wait().until(EC.visibility_of_element_located(self.exported_offer_related_warning_message_locator))
            self.wait().until(EC.element_to_be_clickable(self.ok_button_locator), 'ok button locator not found before specified time out')
            self.refresh_window()
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_first_vendor_offer_link(self):
        """
        Implementing click first vendor offer link functionality
        :return:
        """
        self.switch_to_frame(self.list_frame_locator)
        try:
            self.click_element(self.first_vendor_offer_link_locator, error_message='first vendor offer link locator not found before specified time out')
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_edit_analyzed_rates_button(self):
        """
        Implementing click edit analyzed rates button functionality
        :return:
        """
        self.switch_to_frame(self.detail_frame_locator)
        try:
            edit_analyzed_rates_button_element = self.wait().until(EC.presence_of_element_located(self.edit_analyzed_rates_button_locator), 'edit analyzed rates button locator not found before specified time out')
            edit_analyzed_rates_button_element.click()
        except:
            raise
        finally:
            self.switch_to_default_content()
            self.switch_to_window()

    def switch_to_rate_analysis_frame(self):
        """
        Implementing switch to rate analysis frame functionality
        :return:
        """
        self.switch_to_frame(self.rate_analysis_frame_locator)

    def is_rate_analysis_view_filter_present(self):
        """
        Implementing is rate analysis view filter present functionality
        :return: True/False
        """
        return self.is_element_present(self.rate_analysis_view_dropdown_locator)

    def is_rate_analysis_status_filter_present(self):
        """
        Implementing is rate analysis status filter present functionality
        :return: True/False
        """
        return self.is_element_present(self.rate_analysis_status_dropdown_locator)

    def is_rate_analysis_discrepancy_filter_present(self):
        """
        Implementing is rate analysis discrepancy filter present functionality
        :return: True/False
        """
        return self.is_element_present(self.rate_analysis_discrepancy_dropdown_locator)

    def is_rate_analysis_in_routing_flag_filter_present(self):
        """
        Implementing is rate analysis in routing flag filter present functionality
        :return: True/False
        """
        return self.is_element_present(self.rate_analysis_in_routing_flag_dropdown_locator)

    def is_rate_analysis_rate_filter_present(self):
        """
        Implementing is rate analysis rate filter present functionality
        :return: True/False
        """
        return self.is_element_present(self.rate_analysis_rate_inputbox_locator)

    def is_rate_analysis_destination_filter_present(self):
        """
        Implementing is rate analysis destination filter present functionality
        :return: True/False
        """
        return self.is_element_present(self.rate_analysis_destination_inputbox_locator)

    def click_reference_price_list_management_submenu(self):
        """
        Implementing click reference price list management Submenu functionality
        :return:
        """
        self.wait_for_ajax_spinner_load()
        self.switch_to_frame(self.header_frame_locator)
        try:
            self.select_submenu(self.price_menu_locator, self.reference_price_list_management_submenu_js_function, script_executor=True)
            self.wait_for_ajax_spinner_load()
        except:
            raise
        finally:
            self.switch_to_default_content()

    def is_approval_reject_wizard_button_present(self):
        """
        Implementing is approval reject wizard button present functionality
        :return: True/False
        """
        self.switch_to_frame(self.app_container_frame_locator)
        is_present = self.is_element_present(self.approval_wizard_button_locator)
        self.switch_to_default_content()
        return is_present

    def click_approval_reject_wizard_button(self):
        """
        Implementing click approval reject wizard button functionality
        :return:
        """
        self.switch_to_frame(self.app_container_frame_locator)
        self.click_element(self.approval_wizard_button_locator, True)
        self.switch_to_default_content()

    def is_rplm_approval_reject_wizard_page_present(self):
        """
        Implementing is rplm approval reject wizard page present functionality
        :return: True/False
        """
        self.switch_to_frame(self.app_container_frame_locator)
        is_present = self.is_element_present(self.approval_wizard_page_locator)
        self.switch_to_default_content()
        return is_present

    def set_start_date(self, start_date):
        """
        Implementing set start date present functionality
        :return:
        """
        self.switch_to_frame(self.app_container_frame_locator)
        try:
            self.set_value_into_input_field(self.start_date_inputbox_locator, start_date)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_buy_and_sell_deal_management_grid_first_row_inline_action_button(self):
        """
        Implementing click buy and sell deal management grid first row inline action button present functionality
        :return:
        """
        self.switch_to_frame(self.app_container_frame_locator)
        try:
            self.click_element(self.buy_and_sell_deal_management_grid_first_row_inline_action_button_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def is_total_deal_customer_volume_column_present(self):
        """
        Implementing is total deal customer volume column present functionality
        :return: True/False
        """
        is_present = False
        self.switch_to_frame(self.app_container_frame_locator)
        try:
            is_present = self.is_element_present(self.total_deal_customer_volume_column_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()
            return is_present

    def select_buy_and_sell_deal_management_grid_inline_action_item(self, inline_item_name):
        """
        Implementing select buy and sell deal management grid inline action item functionality
        :param inline_item_name:
        :return:
        """
        self.switch_to_frame(self.app_container_frame_locator)
        try:
            inline_item_locator = (By.XPATH, "//ul[@id='Action_listbox']/descendant::li[text()='%s']" % inline_item_name)
            self.click_element(inline_item_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def move_available_rpl_to_destination(self):
        """
        Implementing move available rpl to destination functionality
        :return:
        """
        global rpl_count
        self.switch_to_frame(self.app_container_frame_locator)
        count_span_element = self.wait().until(EC.presence_of_element_located(self.rpl_count_locator), 'rpl count locator not found before specified time out')
        count_span_text = count_span_element.text.split()
        rpl_count = count_span_text[3].split('(')[1].split(')')[0].strip()
        try:
            if int(rpl_count) > 0:
                item_selection_locator = (By.XPATH, "//ul[@id='lvCopyFromRPL']/descendant::li[1]")
                self.click_element(item_selection_locator)
                self.click_element(self.move_rplm_single_item_button_locator)
            else:
                pass
        except:
            raise
        finally:
            self.switch_to_default_content()

    def move_available_rplm_country_to_destination(self):
        """
        Implementing move available rplm country to destination functionality
        :return:
        """
        global rpl_count
        global country_count
        self.switch_to_frame(self.app_container_frame_locator)
        count_span_element = self.wait().until(EC.presence_of_element_located(self.country_count_locator), 'country count locator not found before specified time out')
        count_span_text = count_span_element.text.split()
        country_count = count_span_text[1].split('(')[1].split(')')[0].strip()
        try:
            if int(rpl_count) > 0 and int(country_count) > 0:
                item_selection_locator = (By.XPATH, "//ul[@id='lvCopyFromCountry']/descendant::li[1]")
                item_selection_element = self.wait().until(EC.presence_of_element_located(item_selection_locator), 'item selection locator not found before specified time out')
                self.script_executor_click(item_selection_element)
                self.click_element(self.move_rplm_country_single_item_button_locator)
            else:
                pass
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_approval_wizard_next_button(self):
        """
        Implementing click approval wizard next button functionality
        :return:
        """
        global rpl_count
        global country_count
        self.switch_to_frame(self.app_container_frame_locator)
        try:
            if int(rpl_count) > 0 and int(country_count) > 0:
                self.click_element(self.approval_wizard_next_button_locator)
            else:
                pass
        except:
            raise
        finally:
            self.switch_to_default_content()

    def is_total_rpl_report_column_present(self):
        """
        Implementing is total report column present functionality
        :return: True/False
        """
        global rpl_count
        global country_count
        is_present = False
        self.switch_to_frame(self.app_container_frame_locator)
        try:
            if int(rpl_count) > 0 and int(country_count) > 0:
                is_present = self.is_element_present(self.total_rpl_report_column_locator)
            else:
                pass
        except:
            raise
        finally:
            self.switch_to_default_content()
            return is_present

    def get_all_rpl_list(self):
        """
        Implementing get all rpl list functionality
        :return: all_rpl
        """
        self.switch_to_frame(self.app_container_frame_locator)
        rpl_list_locator = (By.XPATH, "//ul[@id='lvCopyFromRPL']/descendant::li")
        rpl_list_element = self.wait().until(EC.presence_of_all_elements_located(rpl_list_locator), 'rpl list locator not found before specified time out')
        try:
            for item in range(len(rpl_list_element)):
                text_locator = (By.XPATH, "//ul[@id='lvCopyFromRPL']/descendant::li[%s]" % str(item+1))
                text_element = self.wait().until(EC.presence_of_element_located(text_locator), 'text locator not found before specified time out')
                text_value = text_element.text
                self.all_rpl.append(str(text_value))
        except:
            raise
        finally:
            self.switch_to_default_content()
            return self.all_rpl

    def compare_sorted_data_for_rpl(self, unsorted_data):
        """
        Implementing compare sorted data for rpl functionality
        :param unsorted_data:
        :return: True/False
        """
        status = True
        self.all_rpl = [x.lower() for x in self.all_rpl]
        sorted_data = sorted([x.lower() for x in unsorted_data])
        for i in range(0, len(sorted_data)):
            if sorted_data[i] != self.all_rpl[i]:
                status = False
                break
        return status

    def set_start_date_for_rpl_approve_reject(self):
        """
        Implementing set start date for approve reject present functionality
        :return:
        """
        self.switch_to_frame(self.app_container_frame_locator)
        try:
            self.set_value_into_input_field(self.select_date_for_approve_reject_locator, str(self.get_date(current_date=True)))
        except:
            raise
        finally:
            self.switch_to_default_content()

    def are_proper_date_columns_present(self):
        """
        Implementing are proper date columns present functionality
        :return: True/False
        """
        global rpl_count
        global country_count
        is_present = None
        self.switch_to_frame(self.app_container_frame_locator)
        current_day = date.today()
        try:
            if int(rpl_count) > 0 and int(country_count) > 0:
                for incremental_date in range(0, 30):
                    future_day = current_day + datetime.timedelta(days=incremental_date)
                    expected_date = "%d/%d/%d" % (future_day.month, future_day.day, future_day.year)
                    proper_date_colum_locator = (By.XPATH, "//a[text()='%s']" % str(expected_date))
                    is_present = self.is_element_present(proper_date_colum_locator)
                    if is_present is False:
                        break
            else:
                pass
        except:
            raise
        finally:
            self.switch_to_default_content()
            return is_present

    def filter_reference_price_list_management_grid_column(self, column_name):
        """
        Implementing filter reference price list management grid column functionality
        :param column_name:
        :return:
        """
        self.switch_to_frame(self.app_container_frame_locator)
        row_count = self.get_grid_row_count(self.rplm_grid_row_count_locator, 6)
        try:
            if int(row_count) > 0:
                column_locator = (By.XPATH, "//div[@id='grdRefPrice']/descendant::th[@data-title='%s']" % column_name)
                column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
                column_index = int(column_element.get_attribute("data-index")) + 1
                column_value_locator = (By.XPATH, "//div[@id='grdRefPrice']/descendant::div[@class='k-grid-content-locked']/descendant::tr/td[%s]/span" % str(column_index))
                column_value_element = self.wait().until(EC.presence_of_element_located(column_value_locator), 'column value locator not found before specified time out')
                column_value = str(column_value_element.text)
                self.grid_filter_with_textbox(self.rplm_grid_div_id, column_name, column_value, column_position=6)
            else:
                pass
        except:
            raise
        finally:
            self.switch_to_default_content()

    def is_specific_filter_option_present(self, label_name):
        """
        Implementing is specific filter option present functionality
        :param label_name:
        :return: True/False
        """
        is_present = False
        self.switch_to_frame(self.app_container_frame_locator)
        try:
            filter_locator = (By.XPATH, "//label[text()='%s']" % label_name)
            is_present = self.is_element_present(filter_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()
            return is_present

    def is_total_rpl_to_be_approved_matched(self):
        """
        Implementing is total rpl to be approved matched functionality
        :return: True/False
        """
        is_matched = False
        total_amount = 0
        self.switch_to_frame(self.app_container_frame_locator)
        row_count_locator = (By.XPATH, "//div[@id='grdRPLApprovalReview']/descendant::div[@class='k-grid-content']/descendant::tr[2]")
        is_present = self.is_element_present(row_count_locator)
        try:
            if is_present is True:
                for row in range(2, 32):
                    column_value_locator = (By.XPATH, "//div[@id='grdRPLApprovalReview']/descendant::div[@class='k-grid-content']/descendant::tr/td[%s]/span" % row)
                    column_value_element = self.wait().until(EC.presence_of_element_located(column_value_locator), 'column value locator not found before specified time out')
                    column_value = str(column_value_element.text)
                    if column_value != '':
                        total_amount = total_amount + int(column_value)
                last_column_value_locator = (By.XPATH, "//div[@id='grdRPLApprovalReview']/descendant::div[@class='k-grid-content']/descendant::tr/td[33]/span")
                last_column_value_element = self.wait().until(EC.presence_of_element_located(last_column_value_locator), 'column value locator not found before specified time out')
                last_column_value = str(last_column_value_element.text)
                if int(last_column_value) == total_amount:
                    is_matched = True
            else:
                is_matched = True
        except:
            raise
        finally:
            self.switch_to_default_content()
            return is_matched

    def click_reference_price_list_generation_submenu(self):
        """
        Implementing click reference price list generation Submenu functionality
        :return:
        """
        self.wait_for_ajax_spinner_load()
        self.switch_to_frame(self.header_frame_locator)
        try:
            self.select_submenu(self.price_menu_locator, self.reference_price_list_generation_submenu_js_function, script_executor=True)
            self.wait_for_ajax_spinner_load()
        except:
            raise
        finally:
            self.switch_to_default_content()

    def set_generate_record(self, record_name):
        """
        Implementing set generate record functionality
        :param record_name:
        :return:
        """
        self.switch_to_frame(self.app_container_frame_locator)
        try:
            self.single_selection_from_static_kendo_dropdown(self.generate_record_kendo_dropdown_locator, record_name)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def set_ixtrade_generation_type(self, type):
        """
        Implementing set ixtrade generation type functionality
        :param type:
        :return:
        """
        self.switch_to_frame(self.app_container_frame_locator)
        try:
            self.single_selection_from_static_kendo_dropdown(self.generation_type_dropdown_locator, type)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def move_available_reference_price_list_to_destination(self, item_list):
        """
        Implementing move available reference price list to destination functionality
        :param item_list:
        :return:
        """
        self.switch_to_frame(self.app_container_frame_locator)
        try:
            self.move_available_items_to_destination_for_copy_price_exceptions(self.available_rpl_selectbox_id, item_list, self.move_rplm_single_item_button_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def move_available_rpl_destination_to_destination(self, destination_list):
        """
        Implementing move available rpl destination to destination functionality
        :param destination_list:
        :return:
        """
        self.switch_to_frame(self.app_container_frame_locator)
        try:
            self.move_available_items_to_destination_for_copy_price_exceptions(self.available_rpl_destination_selectbox_id, destination_list, self.move_destination_single_item_button_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_ixtrade_generate_reference_price_lists_button(self):
        """
        Implementing click ixtrade generate reference price list button functionality
        :return:
        """
        self.switch_to_frame(self.app_container_frame_locator)
        try:
            self.click_element(self.generate_reference_price_list_button_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def is_destination_resolved_correctly(self):
        """
        Implementing is destination resolved correctly functionality
        :return: True/False
        """
        is_present = None
        self.switch_to_frame(self.app_container_frame_locator)
        try:
            is_present = self.is_element_present(self.destination_resolved_pop_up_locator)
            self.click_element(self.close_button_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()
            return is_present

    def set_action(self, action):
        """
        Implementing set action functionality
        :param action:
        :return:
        """
        self.switch_to_frame(self.app_container_frame_locator)
        try:
            self.single_selection_from_static_kendo_dropdown(self.action_dropdown_locator, action)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def is_action_dropdown_displayed(self):
        """
        Implementing is action dropdown displayed functionality
        :return: True/False
        """
        is_displayed = None
        self.switch_to_frame(self.app_container_frame_locator)
        try:
            is_displayed = self.is_element_visible(self.action_dropdown_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()
            return is_displayed

    def is_future_action_dropdown_displayed(self):
        """
        Implementing is future action dropdown displayed functionality
        :return: True/False
        """
        is_displayed = None
        self.switch_to_frame(self.app_container_frame_locator)
        try:
            is_displayed = self.is_element_visible(self.future_action_dropdown_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()
            return is_displayed

    def does_action_dropdown_has_proper_option(self):
        """
        Implementing does action dropdown has proper option functionality
        :return: True/False
        """
        is_displayed = False
        self.switch_to_frame(self.app_container_frame_locator)
        try:
            self.click_element(self.action_dropdown_locator)
            if self.is_element_visible(self.approve_action_option_locator)is True and self.is_element_visible(self.approve_action_option_locator) is True:
                is_displayed = True
        except:
            raise
        finally:
            self.switch_to_default_content()
            return is_displayed

    def is_future_action_dropdown_enable(self):
        """
        Implementing is future action dropdown enable functionality
        :return: True/False
        """
        is_enable = False
        self.switch_to_frame(self.app_container_frame_locator)
        try:
            self.click_element(self.future_action_dropdown_locator)
            if self.is_element_visible(self.adjust_future_action_option_locator)is True and self.is_element_visible(self.delete_future_action_option_locator) is True:
                is_enable = True
        except:
            raise
        finally:
            self.switch_to_default_content()
            return is_enable

    def is_record_date_range_start_date_present(self):
        """
        Implementing is record date range start date present functionality
        :return: True/False
        """
        is_present = None
        self.switch_to_frame(self.app_container_frame_locator)
        try:
            is_present = self.is_element_present(self.record_date_range_start_date_inputbox_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()
            return is_present

    def is_record_date_range_end_date_present(self):
        """
        Implementing is record date range end date present functionality
        :return: True/False
        """
        is_present = None
        self.switch_to_frame(self.app_container_frame_locator)
        try:
            is_present = self.is_element_present(self.record_date_range_end_date_inputbox_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()
            return is_present

    def is_apply_custom_rules_enable(self):
        """
        Implementing is apply custom rules enable functionality
        :return: True/False
        """
        is_enable = False
        self.switch_to_frame(self.app_container_frame_locator)
        try:
            self.click_element(self.apply_custom_rules_dropdown_locator)
            if self.is_element_visible(self.apply_custom_rules_yes_option_locator)is True and self.is_element_visible(self.apply_custom_rules_no_option_locator) is True:
                is_enable = True
        except:
            raise
        finally:
            self.switch_to_default_content()
            return is_enable

    def verify_start_and_end_date_range_does_not_exceed_31_days(self):
        """
        Implementing verify start and end date range does not exceed 31 days functionality
        :return: True/False
        """
        is_verified = False
        self.switch_to_frame(self.app_container_frame_locator)
        try:
            start_date = datetime.strptime(self.get_text_from_element(self.record_date_range_start_date_inputbox_locator, is_a_input_field=True), "%m/%d/%Y")
            end_date = datetime.strptime(self.get_text_from_element(self.record_date_range_end_date_inputbox_locator, is_a_input_field=True), "%m/%d/%Y")
            date_range = int(abs((start_date - end_date).days))
            if date_range <= 31:
                is_verified = True
        except:
            raise
        finally:
            self.switch_to_default_content()
            return is_verified

    def click_customer_offers_submenu(self):
        """
        Implementing click customer offers Submenu functionality
        :return:
        """
        self.wait_for_ajax_spinner_load()
        self.switch_to_frame(self.header_frame_locator)
        try:
            self.select_submenu(self.sell_menu_locator, self.customer_offers_submenu_js_function, script_executor=True)
            self.wait_for_ajax_spinner_load()
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_customer_offer_first_ddicon_button(self):
        """
        Implementing click customer offer first ddicon button functionality
        :return:
        """
        self.switch_to_frame(self.list_frame_locator)
        try:
            self.click_element(self.vendor_offer_first_ddicon_button_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def is_uploaded_dialed_digit_information_displayed(self):
        """
        Implementing is uploaded dialed digit information displayed functionality
        :return: True/False
        """
        is_present = None
        self.switch_to_frame(self.detail_frame_locator)
        try:
            is_present = self.is_element_present(self.uploaded_dialed_digit_information_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()
            return is_present

    def set_reference_price_list_for_search(self, list_of_rpl):
        """
        Implementing set reference price list for search functionality
        :param list_of_rpl:
        :return:
        """
        self.switch_to_frame(self.app_container_frame_locator)
        self.multiple_items_selection_from_kendo_dropdown_for_copy_price_exceptions(self.reference_price_list_kendo_dropdown_locator, list_of_rpl)
        self.wait_for_ajax_spinner_load()
        self.click_element(self.customer_pricing_exception_header_locator)
        self.switch_to_default_content()

    def get_specific_column_first_row_value_from_rplm_left_grid(self, column_name):
        """
        Implementing get specific column value from rplm left grid functionality
        :param column_name:
        :return:
        """
        column_value = ""
        self.switch_to_frame(self.app_container_frame_locator)
        column_locator = (By.XPATH, "//div[@id='%s']/descendant::th[@data-title='%s']" % (self.rplm_grid_div_id, column_name))
        column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) + 1
        try:
            column_value_locator = (By.XPATH, "//div[@id='%s']/descendant::div[@class='k-grid-content-locked']/descendant::tbody/tr[1]/td[%s]/div" % (self.rplm_grid_div_id, str(column_index)))
            column_value_element = self.wait().until(EC.presence_of_element_located(column_value_locator), 'column value locator not found before specified time out')
            column_value = str(column_value_element.text).strip()
        except:
            pass
        finally:
            self.switch_to_default_content()
            return column_value

    def get_specific_column_first_row_value_from_rplm_right_grid(self, column_name):
        """
        Implementing get specific column value from rplm right grid functionality
        ;:param column_name:
        :return: column_value
        """
        column_value = ""
        self.switch_to_frame(self.app_container_frame_locator)
        column_locator = (By.XPATH, "//div[@id='%s']/descendant::th[@data-title='%s']" % (self.rplm_grid_div_id, column_name))
        column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) - 5
        try:
            column_value_locator = (By.XPATH, "//div[@id='%s']/descendant::div[@class='k-grid-content']/descendant::tbody/tr[1]/td[%s]/span[@class='k-grid-cell']" % (self.rplm_grid_div_id, str(column_index)))
            column_value_element = self.wait().until(EC.presence_of_element_located(column_value_locator), 'column value locator not found before specified time out')
            column_value = str(column_value_element.text).strip()
        except:
            pass
        finally:
            self.switch_to_default_content()
            return column_value

    def click_rplm_grid_first_row_checkbox(self):
        """
        Implementing click rplm grid first row checkbox functionality
        :return:
        """
        self.switch_to_frame(self.app_container_frame_locator)
        checkbox_locator = (By.XPATH, "//div[contains(@id, 'grdRefPrice')]/descendant::tbody/descendant::tr[1]/td[2]/input")
        self.click_element(checkbox_locator)
        self.switch_to_default_content()

    def click_bulk_edit_button(self):
        """
        Implementing click bulk edit button functionality
        :return:
        """
        self.switch_to_frame(self.app_container_frame_locator)
        self.click_element(self.bulk_edit_button_locator)
        self.switch_to_default_content()

    def set_status_for_bulk_edit(self, status):
        """
        Implementing set status for bulk edit functionality
        :param status:
        :return:
        """
        self.switch_to_frame(self.app_container_frame_locator)
        try:
            self.single_selection_from_static_kendo_dropdown(self.bulk_edit_status_kendo_dropdown_locator, status)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def set_end_date_for_bulk_edit(self):
        """
        Implementing set end date for bulk edit functionality
        :return: end_date
        """
        end_date = str(self.get_date(current_date=True))
        self.switch_to_frame(self.app_container_frame_locator)
        try:
            self.set_value_into_input_field(self.bulk_edit_end_date_locator, end_date)
        except:
            raise
        finally:
            self.switch_to_default_content()
            return end_date

    def click_bulk_edit_submit_button(self):
        """
        Implementing click bulk edit submit button functionality
        :return:
        """
        self.switch_to_frame(self.app_container_frame_locator)
        try:
            self.click_element(self.bulk_edit_submit_button_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_target_buy_list_submenu(self):
        """
        Implementing click target buy list submenu functionality
        :return:
        """
        self.wait_for_ajax_spinner_load()
        self.switch_to_frame(self.header_frame_locator)
        try:
            self.select_submenu(self.target_menu_locator, self.target_buy_list_submenu_js_function, script_executor=True)
            self.wait_for_ajax_spinner_load()
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_target_buy_list_calculate_button(self):
        """
        Implementing click target buy list calculate button functionality
        :return:
        """
        self.wait_for_ajax_spinner_load()
        self.switch_to_frame(self.app_container_frame_locator)
        try:
            self.click_element(self.calculate_button_locator, error_message='target buy list page calculate button locator not found before specified time out')
        except:
            raise
        finally:
            self.switch_to_default_content()

    def is_cost_forecast_job_initialization_message_shown(self):
        """
        Implementing is cost forecast job initialization message shown functionality
        :return:
        """
        self.switch_to_frame(self.app_container_frame_locator)
        try:
            return self.is_element_visible(self.cost_forecast_job_initialization_success_message_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_target_buy_list_generation_submenu(self):
        """
        Implementing click target buy list generation submenu functionality
        :return:
        """
        self.wait_for_ajax_spinner_load()
        self.switch_to_frame(self.header_frame_locator)
        try:
            self.select_submenu(self.target_menu_locator, self.target_buy_list_generation_submenu_js_function, script_executor=True)
            self.wait_for_ajax_spinner_load()
        except:
            raise
        finally:
            self.switch_to_default_content()

    def is_target_buy_list_generation_screen_button_present(self, button):
        """
        Implementing is target buy list generation screen button present functionality
        :param button:
        :return:
        """
        self.wait_for_ajax_spinner_load()
        self.switch_to_frame(self.app_container_frame_locator)
        try:
            button_locator = (By.XPATH, "//button[text()='%s']" % (button))
            return self.is_element_visible(button_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def is_target_buy_list_generation_screen_list_control_present(self, list_control):
        """
        Implementing is target buy list generation screen list control present functionality
        :param list_control:
        :return:
        """
        self.switch_to_frame(self.app_container_frame_locator)
        try:
            list_control_locator = (By.XPATH, "//label[text()='%s']/../descendant::input[@data-role='dropdownlist']" % (list_control))
            return self.is_element_present(list_control_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def is_published_date_datepicker_visible(self):
        """
        Implementing is target buy list generation screen published date control present functionality
        :return:
        """
        self.switch_to_frame(self.app_container_frame_locator)
        try:
            return self.is_element_present(self.published_date_datepicker_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def is_vendors_selector_list_box_visible(self):
        """
        Implementing is vendors selector list box visible functionality
        :return:
        """
        self.switch_to_frame(self.app_container_frame_locator)
        try:
            return self.is_element_present(self.vendors_selector_list_box_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def is_selected_vendors_list_box_visible(self):
        """
        Implementing is selected vendors list box visible functionality
        :return:
        """
        self.switch_to_frame(self.app_container_frame_locator)
        try:
            return self.is_element_present(self.selected_vendors_list_box_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def is_country_selector_list_box_visible(self):
        """
        Implementing is countries selector list box visible functionality
        :return:
        """
        self.switch_to_frame(self.app_container_frame_locator)
        try:
            return self.is_element_present(self.countries_selector_list_box_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def is_selected_country_list_box_visible(self):
        """
        Implementing is selected countries list box visible functionality
        :return:
        """
        self.switch_to_frame(self.app_container_frame_locator)
        try:
            return self.is_element_present(self.selected_countries_list_box_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def verify_deal_management_grid_column_display_thousand_separators(self, column_name):
        """
        Implementing verify deal management grid column display thousand separators functionality
        :param column_name:
        :return: True/False
        """
        is_verified = False
        self.switch_to_frame(self.app_container_frame_locator)
        try:
            column_value = self.get_specific_column_value_from_grid(self.deal_management_grid_div_id, self.get_grid_row_count(self.deal_management_grid_count_span_locator, 5), column_name)
            if "," in column_value:
                is_verified = True
            elif int(column_value) < 1000:
                is_verified = True
        except:
            raise
        finally:
            self.switch_to_default_content()
            return is_verified

    def is_rplm_screen_filter_option_present(self, filter_option_name, is_dropdown):
        """
        Implementing is rplm screen filter option present functionality
        :param filter_option_name:
        :param is_dropdown:
        :return: True/False
        """
        self.switch_to_frame(self.app_container_frame_locator)
        try:
            if is_dropdown:
                rplm_filter_option_locator = (By.XPATH, "//label[contains(text(), '%s')]/../descendant::input[@role='listbox']" % filter_option_name)
            else:
                rplm_filter_option_locator = (By.XPATH, "//label[contains(text(), '%s')]/../descendant::input[@type='text']" % filter_option_name)
            return self.is_element_present(rplm_filter_option_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def is_rplm_screen_button_present(self, button_name):
        """
        Implementing is rplm screen button present functionality
        :param button_name:
        :return: True/False
        """
        self.switch_to_frame(self.app_container_frame_locator)
        try:
            rplm_screen_button_locator = (By.XPATH, "//a[contains(@class, 'k-button') and contains(text(), '%s')]" % button_name)
            return self.is_element_present(rplm_screen_button_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def is_apply_custom_rules_radio_button_present(self):
        """
        Implementing is apply custom rules radio button present functionality
        :return: True/False
        """
        self.switch_to_frame(self.app_container_frame_locator)
        is_present = False
        try:
            if self.is_element_present(self.apply_custom_rules_yes_radio_button_locator) and self.is_element_present(self.apply_custom_rules_no_radio_button_locator):
                is_present = True
        except:
            raise
        finally:
            self.switch_to_default_content()
            return is_present

    def click_rpl_report_button(self):
        """
        Implementing click rpl report button functionality
        :return:
        """
        self.switch_to_frame(self.app_container_frame_locator)
        try:
            self.click_element(self.rpl_report_button_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()
            self.switch_to_window()

    def is_rpl_report_price_list_tab_present(self):
        """
        Implementing is rpl report price list tab present functionality
        :return: True/False
        """
        return self.is_element_present(self.rpl_report_price_list_tab_locator)

    def is_rpl_report_impact_tab_present(self):
        """
        Implementing is rpl report impact tab present functionality
        :return: True/False
        """
        return self.is_element_present(self.rpl_report_impact_tab_locator)

    def select_rpl_report_impact_tab(self):
        """
        Implementing select rpl report impact tab functionality
        :return:
        """
        self.set_existing_handles()
        self.click_element(self.rpl_report_impact_tab_locator)
        self.switch_to_window()

    def is_rpl_report_price_list_grid_column_present(self, column_name):
        """
        Implementing is rpl report price list grid column present functionality
        :param column_name:
        :return: True/False
        """
        rpl_report_price_list_grid_column_locator = (By.XPATH, "//table[@id='tPList']/descendant::a[text()='%s']" % column_name)
        return self.is_element_present(rpl_report_price_list_grid_column_locator)

    def is_rpl_report_impact_grid_column_present(self, column_name):
        """
        Implementing is rpl report impact grid column present functionality
        :param column_name:
        :return: True/False
        """
        rpl_report_impact_grid_column_locator = (By.XPATH, "//table[@id='tCRF']/descendant::a[text()='%s']" % column_name)
        return self.is_element_present(rpl_report_impact_grid_column_locator)

    def click_save_changes_button(self):
        """
        Implementing is rpl report impact grid column present functionality
        :return:
        """
        self.switch_to_frame(self.app_container_frame_locator)
        try:
            self.click_element(self.save_changes_button_locator)
            self.wait().until(EC.visibility_of_element_located(self.data_saved_success_message_locator), 'data saved success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def set_note(self, note_prefix):
        """
        Implementing set note functionality
        :param note_prefix:
        :return:
        """
        self.switch_to_frame(self.app_container_frame_locator)
        note = note_prefix + self.random_string_generator(6)
        try:
            self.set_value_into_input_field(self.note_textarea_locator, note)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def select_apply_custom_rules_radio_button(self, radio_button_value):
        """
        Implementing select apply custom rules radio button functionality
        :param radio_button_value:
        :return:
        """
        self.switch_to_frame(self.app_container_frame_locator)
        try:
            if radio_button_value.lower() == "yes":
                self.click_element(self.apply_custom_rules_yes_radio_button_locator)
            else:
                self.click_element(self.apply_custom_rules_no_radio_button_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_service_level_based_cpl_customer_definition_submenu(self):
        """
        Implementing click service level based cpl customer definition submenu functionality
        :return:
        """
        self.wait_for_ajax_spinner_load()
        self.switch_to_frame(self.header_frame_locator)
        try:
            self.select_submenu(self.admin_menu_locator, self.service_level_based_cpl_customer_definition_submenu_js_function, script_executor=True)
            self.wait_for_ajax_spinner_load()
        except:
            raise
        finally:
            self.switch_to_default_content()

    def is_service_level_customer_definition_grid_column_present(self, column_name):
        """
        Implementing is service level customer definition grid column present functionality
        :param column_name:
        :return: True/False
        """
        service_level_customer_definition_grid_column_locator = (By.XPATH, "//div[@id='grdSLCustDefinition']/descendant::th[@data-title='%s']" % column_name)
        self.switch_to_frame(self.app_container_frame_locator)
        try:
            return self.is_element_present(service_level_customer_definition_grid_column_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def does_service_level_based_cpls_dropdown_display_correct_options(self):
        """
        Implementing does service level based cpls dropdown display correct options functionality
        :return: True/False
        """
        is_displayed = False
        self.switch_to_frame(self.app_container_frame_locator)
        try:
            self.click_element(self.service_level_based_cpl_dropdown_locator)
            if self.is_element_present(self.account_updates_cpl_option_locator) and self.is_element_present(self.cpl_updates_account_option_locator):
                is_displayed = True
        except:
            raise
        finally:
            self.switch_to_default_content()
            return is_displayed

    def click_customer_pricing_exception_management_go_button(self):
        """
        Implementing click customer pricing exception management go button functionality
        :return:
        """
        self.switch_to_frame(self.app_container_frame_locator)
        try:
            end_time = time.time() + 300
            while end_time > time.time():
                if self.is_element_visible(self.customer_pricing_exception_management_go_button_locator):
                    self.click_element(self.customer_pricing_exception_management_go_button_locator, error_message='customer pricing exception management go button locator not found before specified time out')
                    self.wait_for_legacy_screen_spinner_load(timeout=180)
                    break
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_customer_pricing_exception_management_export_import_button(self):
        """
        Implementing click customer pricing exception management export import button functionality
        :return:
        """
        self.switch_to_frame(self.app_container_frame_locator)
        try:
            self.click_element(self.customer_pricing_exception_management_export_import_button_locator, error_message='customer pricing exception management export import button locator not found before specified time out')
            self.switch_to_window()
        except:
            raise
        finally:
            self.switch_to_default_content()

    def is_export_import_requested_exception_for_customer_pricing_exceptions_window_opened(self):
        """
        Implementing is export import requested exception for customer pricing exceptions window opened functionality
        :return:
        """
        return self.is_element_visible(self.export_import_requested_exception_for_customer_pricing_exceptions_window_title_locator)

    def close_export_import_requested_exception_for_customer_pricing_exceptions_window(self):
        """
        Implementing close export import requested exception for customer pricing exceptions window functionality
        :return:
        """
        self.close_browser()
        self.switch_to_previous_window()

    def click_to_expand_specific_bar_in_customer_routing_role_definition_screen(self, bar_name):
        """
        Implementing click to expand specific bar in customer routing role definition screen functionality
        :param bar_name: 
        :return: 
        """
        self.switch_to_frame(self.custrrcont_frame_locator)
        try:
            bar_locator = (By.XPATH, "//span[text()='%s']" % bar_name)
            self.click_element(bar_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def check_first_rounding_rule_checkbox(self):
        """
        Implementing check first rounding rule checkbox functionality
        :return: True/False
        """
        global status
        status = None
        self.switch_to_frame(self.custrrcont_frame_locator)
        try:
            checkbox_element = self.wait().until(EC.presence_of_element_located(self.first_rounding_rule_checkbox_locator), 'checkbox locator not found before specified time out')
            status = checkbox_element.is_selected()
            if status is False:
                self.click_element(self.first_rounding_rule_checkbox_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_rounding_rules_definition_save_button(self):
        """
        Implementing click rounding rules definition save button functionality
        :return: True/False
        """
        global status
        self.switch_to_frame(self.custrrcont_frame_locator)
        try:
            if status is False:
                self.click_element(self.rounding_rule_defination_save_button_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def filter_country_definition(self, country_name):
        """
        Implementing filter country definition functionality
        :param country_name:
        :return:
        """
        self.switch_to_frame(self.custrrcont_frame_locator)
        try:
            self.set_value_into_input_field(self.country_definition_filter_textbox_locator, country_name)
            self.click_element(self.country_definition_filter_icon_locator)
            self.click_element(self.contains_button_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def check_first_country_definition_checkbox(self):
        """
        Implementing check first country definition checkbox functionality
        :return: True/False
        """
        global status
        status = None
        self.switch_to_frame(self.custrrcont_frame_locator)
        try:
            checkbox_element = self.wait().until(EC.presence_of_element_located(self.first_country_definition_checkbox_locator), 'checkbox locator not found before specified time out')
            status = checkbox_element.is_selected()
            if status is False:
                self.click_element(self.first_country_definition_checkbox_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_country_definition_save_button(self):
        """
        Implementing click country definition save button functionality
        :return: True/False
        """
        global status
        self.switch_to_frame(self.custrrcont_frame_locator)
        try:
            if status is False:
                self.click_element(self.country_defination_save_button_locator)
            if self.wait(10).until(EC.presence_of_element_located(self.warning_pop_up_save_button_locator)) is True:
                self.click_element(self.warning_pop_up_save_button_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def set_rate_dimension_template(self):
        """
        Implementing set rate dimension template functionality
        :return:
        """
        self.switch_to_frame(self.custrrcont_frame_locator)
        try:
            column_count = self.wait().until(EC.presence_of_all_elements_located(self.rate_dimension_template_column_count_locator), 'column count locator not found before specified time out')
            for column in range(3, len(column_count)):
                dropdown_locator = (By.XPATH, "//div[@id='RadPanelBar_i2_i0_grdRM']/descendant::tbody/tr[1]/td[%s]" % str(column))
                self.click_element(dropdown_locator)
                dropdown_item_locator = (By.XPATH, "//ul[@class='rcbList']/descendant::li[2]")
                self.click_element(dropdown_item_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_rate_dimension_template_save_button(self):
        """
        Implementing click rate dimension template save button functionality
        :return: True/False
        """
        self.switch_to_frame(self.custrrcont_frame_locator)
        try:
            self.click_element(self.rate_dimension_template_save_button_locator)
            if self.wait(10).until(EC.presence_of_element_located(self.warning_pop_up_save_button_locator)) is True:
                self.click_element(self.warning_pop_up_save_button_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def filter_customer_source(self, customer_name):
        """
        Implementing filter customer source functionality
        :param customer_name:
        :return:
        """
        self.switch_to_frame(self.custrrcont_frame_locator)
        try:
            self.set_value_into_input_field(self.customer_source_filter_textbox_locator, customer_name)
            self.click_element(self.customer_source_filter_icon_locator)
            self.click_element(self.contains_button_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def set_rounding_rule_to_customer_source(self):
        """
        Implementing set rounding rule to customer source functionality
        :return:
        """
        self.switch_to_frame(self.custrrcont_frame_locator)
        try:
            column_count = self.wait().until(EC.presence_of_all_elements_located(self.customer_source_column_count_locator), 'column count locator not found before specified time out')
            for column in range(3, int(len(column_count)-1)):
                dropdown_locator = (By.XPATH, "//div[@id='RadPanelBar_i3_i0_grdCustRR_GridData']/descendant::tbody/tr[1]/td[%s]" % str(column))
                self.click_element(dropdown_locator)
                dropdown_item_locator = (By.XPATH, "//ul[@class='rcbList']/descendant::li[2]")
                self.click_element(dropdown_item_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_customer_source_save_button(self):
        """
        Implementing click customer source save button functionality
        :return: True/False
        """
        self.switch_to_frame(self.custrrcont_frame_locator)
        try:
            self.click_element(self.customer_source_save_button_locator)
            if self.wait(10).until(EC.presence_of_element_located(self.warning_pop_up_save_button_locator)) is True:
                self.click_element(self.warning_pop_up_save_button_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_cpem_grid_bulk_edit_button(self):
        """
        Implementing click cpem grid bulk edit button functionality
        :return:
        """
        self.switch_to_frame(self.app_container_frame_locator)
        try:
            self.click_element(self.cpem_bulk_edit_button_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def set_requested_price_for_bulk_edit(self, requested_price):
        """
        Implementing set requested price for bulk edit functionality
        :return: requested_price
        """
        self.switch_to_frame(self.app_container_frame_locator)
        try:
            self.set_value_into_input_field(self.bulk_edit_requested_price_locator, requested_price)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_cpem_grid_cpe_report_button(self):
        """
        Implementing click cpem grid cpe report button functionality
        :return:
        """
        self.switch_to_frame(self.app_container_frame_locator)
        try:
            self.click_element(self.cpem_cpe_report_button_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()
            self.switch_to_window()

    def is_cpe_report_page_loaded_properly(self):
        """
        Implementing is cpe report page loaded properly functionality
        :return: True/False
        """
        return self.is_element_present(self.cpe_report_page_header_locator)

    def is_data_displayed_in_cpe_grid(self):
        """
        Implementing is data displayed in cpe grid functionality
        :return:
        """
        self.switch_to_frame(self.app_container_frame_locator)
        try:
            return self.is_element_present(self.cpe_grid_first_row_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def is_left_side_specific_column_present_in_cpe_grid(self, column_name):
        """
        Implementing is left side specific column present in cpe grid functionality
        :param column_name:
        :return: True/False
        """
        is_present = False
        self.switch_to_frame(self.app_container_frame_locator)
        try:
            column_locator = (By.XPATH, "//div[contains(@id, 'grdCPEMgmt')]/descendant::div[@class='k-grid-header-locked']/descendant::thead/descendant::th[@data-title='%s']" % column_name)
            is_present = self.is_element_present(column_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()
            return is_present

    def set_current_status(self, current_status):
        """
        Implementing set current status functionality
        :param current_status:
        :return:
        """
        self.switch_to_frame(self.list_frame_locator)
        try:
            self.select_option(self.current_status_select_locator, current_status)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def is_generate_offer_file_link_present(self):
        """
        Implementing is generate offer file link present functionality
        :return: True/False
        """
        is_present = False
        self.switch_to_frame(self.detail_frame_locator)
        try:
            is_present = self.is_element_present(self.generate_offer_file_link_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()
            return is_present

    def click_customer_offer_generation_submenu(self):
        """
        Implementing click customer offer generation Submenu functionality
        :return:
        """
        self.wait_for_ajax_spinner_load()
        self.switch_to_frame(self.header_frame_locator)
        try:
            self.select_submenu(self.sell_menu_locator, self.customer_offer_generation_submenu_js_function, script_executor=True)
            self.wait_for_ajax_spinner_load()
        except:
            raise
        finally:
            self.switch_to_default_content()

    def set_mypricelist_in_ixtrade(self, item_name):
        """
        Implementing set mypricelist in ixtrade functionality
        :param item_name:
        :return:
        """
        self.switch_to_frame(self.detail1_frame_locator)
        try:
            self.select_option(self.mypricelist_dropdown_locator, item_name)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_mypricelist_generate_button(self):
        """
        Implementing click mypricelist generate button functionality
        :return:
        """
        self.switch_to_frame(self.detail1_frame_locator)
        self.click_element(self.mypricelist_generate_button_locator)
        self.wait_for_legacy_screen_spinner_load(spinner_locator=self.mypricelist_spin_loader_locator)
        try:
            self.accept_alert_pop_up()
        except:
            pass
        finally:
            self.switch_to_default_content()

    def get_specific_column_first_row_value_from_cpem_right_grid(self, column_name):
        """
        Implementing get specific column value from cpem right grid functionality
        :param column_name:
        :return: column_value
        """
        column_value = ""
        self.switch_to_frame(self.app_container_frame_locator)
        column_locator = (By.XPATH, "//div[@id='%s']/descendant::th[contains(@data-title, '%s')]" % (self.pricing_exception_grid_div_id, column_name))
        column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) - 5
        try:
            column_value_locator = (By.XPATH, "//div[@id='%s']/descendant::div[@class='k-grid-content']/descendant::tbody/tr[1]/td[%s]/span[@class='k-grid-cell']" % (self.pricing_exception_grid_div_id, str(column_index)))
            column_value_element = self.wait().until(EC.presence_of_element_located(column_value_locator), 'column value locator not found before specified time out')
            column_value = str(column_value_element.text).strip()
        except:
            raise
        finally:
            self.switch_to_default_content()
            return column_value

    def is_percentage_margin_column_present(self):
        """
        Implementing is percentage margin column present functionality
        :return: True/False
        """
        self.switch_to_frame(self.app_container_frame_locator)
        try:
            return self.is_element_present(self.percentage_margin_column_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def sort_percentage_margin_column_in_descending_order(self):
        """
        Implementing sort percentage margin column in descending order functionality
        :return:
        """
        self.switch_to_frame(self.app_container_frame_locator)
        try:
            self.click_element(self.percentage_margin_column_locator)
            self.click_element(self.percentage_margin_column_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def is_percentage_margin_column_value_displayed_correctly(self, margin_minimum_test_text, approved_price_text, percentage_margin_text):
        """
        Implementing is percentage margin column value displayed correctly functionality
        :param margin_minimum_test_text:
        :param approved_price_text:
        :param percentage_margin_text:
        :return: True/False
        """
        displayed_correctly = False
        if "," in margin_minimum_test_text:
            margin_minimum_test_text = margin_minimum_test_text.replace(",", "")
        margin_minimum_test = float(margin_minimum_test_text)
        if "," in approved_price_text:
            approved_price_text = approved_price_text.replace(",", "")
        approved_price = float(approved_price_text)
        expected_percentage_margin = (margin_minimum_test/approved_price) * 100
        expected_percentage_margin_string = str("%.4f" % expected_percentage_margin)
        if percentage_margin_text == expected_percentage_margin_string:
            displayed_correctly = True
        return displayed_correctly

    def click_offer_template_management_submenu(self):
        """
        Implementing click offer template management submenu functionality
        :return:
        """
        self.wait_for_ajax_spinner_load()
        self.switch_to_frame(self.header_frame_locator)
        try:
            self.select_submenu(self.admin_menu_locator, self.offer_template_management_submenu_js_function, script_executor=True)
            self.wait_for_ajax_spinner_load()
        except:
            raise
        finally:
            self.switch_to_default_content()

    def is_offer_template_management_page_loaded_properly(self):
        """
        Implementing is offer template management page loaded properly functionality
        :return: True/False
        """
        self.switch_to_frame(self.detail_frame_locator)
        try:
            return self.is_element_present(self.offer_template_management_page_header_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def is_offer_template_management_filter_option_worked_properly(self):
        """
        Implementing is offer template management filter option worked properly functionality
        :return: True/False
        """
        self.switch_to_frame(self.list_frame_locator)
        try:
            return self.is_element_present(self.first_offer_template_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_first_offer_template(self):
        """
        Implementing click first offer template functionality
        :return:
        """
        self.switch_to_frame(self.list_frame_locator)
        try:
            self.click_element(self.first_offer_template_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def is_company_field_present_in_detail_frame(self):
        """
        Implementing is company field present in detail frame functionality
        :return: True/False
        """
        self.switch_to_frame(self.detail_frame_locator)
        try:
            return self.is_element_present(self.company_filter_field_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_offer_template_management_edit_button(self):
        """
        Implementing click offer template management edit button functionality
        :return:
        """
        self.switch_to_frame(self.detail_frame_locator)
        try:
            self.click_element(self.edit_button_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()
            self.switch_to_window()

    def is_company_field_present(self):
        """
        Implementing is company field present functionality
        :return: True/False
        """
        return self.is_element_present(self.company_filter_field_locator)

    def click_offer_template_definition_cancel(self):
        """
        Implementing click offer template definition cancel functionality
        :return: True/False
        """
        self.click_element(self.cancel_button_locator)
        try:
            self.accept_alert_pop_up()
        except:
            pass
        finally:
            self.close_browser()
            self.switch_to_previous_window()

    def click_new_offer_template_button(self):
        """
        Implementing click new offer template button functionality
        :return:
        """
        self.set_existing_handles()
        self.switch_to_frame(self.list_frame_locator)
        try:
            self.click_element(self.new_offer_template_button_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()
            self.switch_to_window()

    def is_vendor_offer_upload_fail_message_present(self):
        """
        Implementing is vendor offer upload fail message present functionality
        :return: True/False
        """
        self.switch_to_frame(self.source_container_frame_locator)
        try:
            return self.is_element_present(self.vendor_offer_upload_fail_message_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_select_order_column_button(self):
        """
        Implementing click select order column button functionality
        :return:
        """
        self.switch_to_frame(self.app_container_frame_locator)
        try:
            self.click_element(self.select_order_column_button_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()
            self.switch_to_window()

    def is_margin_percentage_checkbox_present(self):
        """
        Implementing is margin percentage checkbox present functionality
        :return: True/False
        """
        return self.is_element_present(self.margin_percentage_checkbox_locator)

    def check_margin_percentage_checkbox(self):
        """
        Implementing check margin percentage checkbox functionality
        :return:
        """
        checkbox_element = self.wait().until(EC.element_to_be_clickable(self.margin_percentage_checkbox_locator))
        is_checked = bool(checkbox_element.get_attribute("CHECKED"))
        if is_checked is False:
            self.click_element(self.margin_percentage_checkbox_locator)
        try:
            save_button_element = self.wait().until(EC.presence_of_element_located(self.select_order_column_save_button_locator), 'select order column save button locator not found before specified time out')
            save_button_element.click()
            time.sleep(10)
            self.accept_alert_pop_up()
        except:
            pass
        finally:
            self.switch_to_previous_window()

    def is_margin_percentage_column_present(self):
        """
        Implementing is margin percentage column present functionality
        :return: True/False
        """
        self.switch_to_frame(self.app_container_frame_locator)
        try:
            return self.is_element_present(self.margin_percentage_column_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_customer_pricing_exception_entry_submenu(self):
        """
        Implementing click customer pricing exception entry submenu functionality
        :return:
        """
        self.wait_for_ajax_spinner_load()
        self.switch_to_frame(self.header_frame_locator)
        try:
            self.select_submenu(self.sell_menu_locator, self.customer_pricing_exception_entry_submenu_js_function, script_executor=True)
            self.wait_for_ajax_spinner_load()
        except:
            raise
        finally:
            self.switch_to_default_content()

    def set_cpee_status(self, status):
        """
        Implementing set cpee status functionality
        :param status:
        :return:
        """
        self.switch_to_frame(self.app_container_frame_locator)
        try:
            self.select_option(self.status_select_locator, status)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_customer_pricing_exception_management_go_button_with_validation(self):
        """
        Implementing click customer pricing exception management go button with validation functionality
        :return:
        """
        self.switch_to_frame(self.app_container_frame_locator)
        try:
            go_button_element = self.wait().until(EC.presence_of_element_located(self.customer_pricing_exception_management_go_button_locator), 'customer price exception management go button locator not found before specified time out')
            go_button_element.click()
            time.sleep(10)
            self.accept_alert_pop_up()
        except:
            raise
        finally:
            self.switch_to_default_content()
