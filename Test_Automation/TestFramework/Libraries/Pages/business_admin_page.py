"""Implementing BusinessAdmin screen page objects"""

from TestFramework.Libraries.Pages.base_page import BasePage
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC
from selenium.common.exceptions import WebDriverException
import string
import win32com.client as client
import datetime
import time
import TestFramework.Libraries.Modules.database as Database


class BusinessAdminPage(BasePage):
    """
    Contains BusinessAdmin UI page locators
    Switch to business admin function
    Get business admin page title function
    Is business admin dashboard tab present function
    Expand number plan menu
    Click origin set submenu
    Click add dialed digits button
    Set begin date
    Set end date
    Click add dialed digits popup title
    Click begin date label function
    Set dialed digit type
    Set digit 1 value
    Select origin sets
    Select settlement origin
    Click add dialed digits ok button
    Set origin set for search
    Set settlement origin for search
    Set dialed digit for search
    Click origin set search button
    Get origin set grid row details
    Expand number plan menu function
    Click number plan submenu function
    Click country submenu function
    Click upload number plan button function
    Click number plan uploads button function
    Set upload number plan type function
    Set upload number plan function
    Set upload number plan note function
    Click number plan upload browse button function
    Click number plan upload button function
    Set number plan uploads number plan type function
    Set number plan uploads number plan function
    Set multiple status function
    Click number plan uploads search button function
    Is pending status record found function
    Analyze pending status if exists function
    Click number plan uploads grid inline action button function
    Click number plan upload cancel button function
    Click origin set grid inline action button function
    Set origin set function
    Set rule of missing a function
    Click edit origin set ok button function
    Click origin set submenu function
    Click add dialed digits button function
    Set begin date function
    Set end date function
    Click add dialed digits popup title function
    Set dialed digit type function
    Set digit 1 value function
    Select origin sets function
    Select settlement origin function
    Click add dialed digits ok button function
    Set origin set for search function
    Set settlement origin for search function
    Set dialed digit for search function
    Click origin set search button function
    Get origin set grid row details function
    Click export to excel button function
    Click new origin set button function
    Is number plan uploads grid inline item available function
    Select business admin module inline action item function
    Click show summary link function
    Set number plan uploads grid row details function
    Verify upload details information function
    Is dial digits tab loaded properly function
    Is csnp analysis tab loaded properly function
    Click new settlement origin button function
    Set settlement origin function
    Click add row button function
    Set digit 2 value function
    Search results displayed in the grid function
    Click new settlement origin ok button function
    Generate origin set function
    Is view origin set details available function
    Is edit origin set popup available function
    Click edit origin set popup cancel button function
    Get number plan uploads grid row details for workflow function
    Click show workflow link function
    Get workflow grid row details function
    Set from date function
    Click origin set upload button function
    Set origin set for upload function
    Set effective date for upload origin set function
    Click upload origin set browse button function
    Click upload origin set upload button function
    Click add origin set ok button function
    Click add origin set cancel button function
    Is Available origin set fetched function
    Click new settlement origin popup cancel button function
    Expand trading menu function
    Click source and policies submenu function
    Set source type for search function
    Click sources search button function
    Click add new source button function
    Set source function
    Set abbreviation function
    Set status function
    Set account function
    Set rate plan function
    Set call type function
    Set number plan function
    Set reference price list function
    Click create new customer save button function
    Set source for search function
    Get source grid row details function
    Set source status function
    Click source grid save changes button function
    Click bulk edit button function
    Select source policies grid multiple rows function
    Set bulk edit number plan function
    Set bulk edit call type function
    Set bulk edit reference price list function
    Set bulk edit quality of service function
    Set bulk edit origin reference price list function
    Set bulk edit note function
    Click bulk edit submit button function
    Verify edited sources grid row details function
    Click save changes button function
    Select created source checkbox function
    Click delete button function
    Select created source checkbox
    Click bulk edit button
    Set bulk edit call type
    Set bulk edit note
    Click bulk edit submit button
    Get vendor source grid row details function
    Set route class function
    Select source and policies screen checkbox function
    Set note function
    Get target buy list grid row details function
    Is Grid checkbox checked function
    Set note
    Get reference account grid row details
    Get switch grid row details
    Get reference pricing policy grid row details function
    Set bulk edit route class function
    Set reference pricing policy function
    Set az min selection threshold function
    Get reference price list grid row details function
    Set reference account bulk edit number plan function
    Set bulk edit reference pricing policy function
    Set bulk edit az min selection threshold function
    Check bulk edit compound rpl checkbox function
    Is source policies grid compound rpl checkbox checked function
    Get quality of service grid row details function
    Get origin reference price list grid row details
    Get price cost basis grid row details function
    Click country submenu function
    Click new country button function
    Set new country region function
    Set new country country type function
    Set new country buy country group function
    Set new country sell country group function
    Set new country country name function
    Set new country country abbreviation function
    Set new country country code function
    Set new country mobile country code function
    Click new country save button function
    Set country function
    Click search button function
    Get countries grid row details function
    Select countries grid row checkbox function
    Click country bulk edit button function
    Set bulk edit buy country group function
    Set bulk edit sell country group function
    Click regions button function
    Click new region button function
    Set value in regions grid first row column function
    Select regions grid row checkbox function
    Click regions save changes button function
    Set region function
    Click generic search button function
    Click delete region button function
    Get regions grid row details function
    Click country groups button function
    Click Create country groups button function
    Set country group scope function
    Set country group function
    Expand groups and categories menu function
    Click categories submenu function
    Click categories grid inline action button function
    Move available countries to destination function
    Implementing click save country group function
    Close country group tab function
    Click country group search button function
    Get country group grid row details function
    Click country group grid inline action button function
    Select country group grid inline action item function
    Select created country group checkbox function
    Click country group delete button function
    Move countries to available function
    Click edit category save button function
    Set category scope for search function
    Click categories search button function
    Get assigned countries list function
    Is all countries moved to available function
    Click edit category cancel button function
    Click new category button function
    Set new category category scope function
    Set new category category type function
    Set category name function
    Get category name function
    Set category abbreviation function
    Click new category save button function
    Set category scope function
    Set category type function
    Select categories grid row checkbox function
    Get categories grid row details function
    Click categories grid delete button function
    Expand currency and exchange rates menu function
    Click currency and exchange rates submenu function
    Click new exchange rate button function
    Set exchange rate types for search function
    Set currency for search function
    Set exchange rate type function
    Set currency function
    Set exchange rate function
    Set exchange rate begin date function
    Click add exchange rate save button function
    Get exchange rates grid row details function
    Click exchange rates grid inline action button function
    Click exchange rate delete inline item function
    Expand routing menu function
    Click route class submenu function
    Get route class grid first row data function
    Set route class name function
    Set route class abbreviation function
    Set target fulfillment order function
    Set capacity saturation order function
    Set minimum direct percent function
    Click add edit route class save button function
    Select auto suggest checkbox function
    Is auto suggested value field disabled function
    Click add route class button function
    Click add edit route class cancel button function
    Get auto suggested value function
    Set aep distribution group function
    Select selected for routing checkbox function
    Select cli guarantee checkbox function
    Set cdr route class function
    Get new route class data function
    Get route class grid row data function
    Filter route class grid function
    Click route class grid inline action button function
    Select item from route class inline action function
    Click network codes submenu function
    Click network destinations grid first row inline action button function
    Click add network code button function
    Click add cdr match button function
    Set network code function
    Set network code begin date function
    Set network code end date function
    Click network code save changes button function
    Click network codes grid inline action button function
    select network code delete inline item function
    Set cdr match function
    Set cdr match begin date function
    Set cdr match end date function
    Click cdr match save changes button function
    Click cdr matches grid inline action button function
    Select cdr match delete inline item function
    Click save changes button without confirmation function
    Click add network destination button function
    Set network destination function
    Set destination abbreviation function
    Set network destination country function
    Set call char function
    Set network destination begin date function
    Set network destination end date function
    Set internal code function
    Set external code function
    Get network destinations grid first row details function
    Add duplicate network destination function
    Click add network destination save button function
    Set country for search function
    Set network destination for search function
    Set value in network destinations grid first row column function
    Click route class export to excel button function
    Compare number plan uploads grid row count after upload function
    Is source policies grid total number of records returned function
    Is countries grid total number of records returned function
    Is country groups search successful function
    Is exchange rates search successful function
    Click categories grid first row inline action button function
    Set view edit category type function
    Set view edit category number plan type function
    Set view edit category number plan function
    Expand rating menu function
    Click daylight saving zone submenu function
    Click bill cycle and settlement management submenu function
    Expand bill and audit menu function
    Click statement numbering templates submenu function
    Click rating method submenu function
    Get country grid last modified date column value function
    Get country group management grid last modified date column value function
    Get number plan grid last modified date column value function
    Get number plan from date function
    Get number plan to date function
    Get number plan uploads grid upload date function
    Get number plan uploads grid modified date function
    Get network codes begin date function
    Get network codes grid begin date column value function
    Get network codes grid modified date column value function
    Get origin set management select date function
    Get origin set management grid begin date column value function
    Get origin set management grid modified date column value function
    Expand company menu function
    Click company submenu function
    Get company grid last modified column value function
    Get currency and exchange rates begin date function
    Get exchange rate column value function
    Get exchange rate begin date column value function
    Get exchange rate last modified column value function
    Click currency button function
    Get currency grid last modified column value function
    Get categories grid modified date column value function
    Get route classes minimum direct percent column value function
    Get source and policy grid modified date column value function
    Get origin set name function
    Get settlement origin name function
    Set rule of invalid a function
    Click next button function
    Click new csnp button function
    Set csnp type function
    Set csnp number plan function
    Get csnp number plan function
    Set csnp number plan abbreviation function
    Set services function
    Set default primary blending method function
    Set default destination type function
    Set default call char function
    Set default rating method function
    Set enter min function
    Set enter max function
    Set define fixed blending security function
    Set define minmax blending security function
    Click new csnp save button function
    Get network destination function
    Get region name function
    Get country name function
    Click country bulk edit save changes button function
    Get source name function
    Set qos number plan function
    Set qos call type function
    Set wholesale solution type function
    Set settlement origin dialed digit type function
    Click new currency button function
    Set currency name function
    Set currency abbreviation function
    Set currency symbol function
    Click new currency save button function
    Get currency name function
    Move available destinations to destination functiona
    Click initialize button function
    Get route class name function
    Set wholesale type function
    Move first category to destination function
    Reassign category to source function
    Click internal cost adjustment submenu function
    Is network codes screen loaded function
    Expand translate menu function
    Click calendar provisioning submenu function
    Is calendar provisioning management screen loaded function
    Click rate dimension template submenu function
    Click audit cycle and settlement management submenu function
    Is cycle and settlement management screen loaded function
    Click customer rounding rule definition submenu function
    Is customer rounding rule definition screen loaded function
    Click adjustment folder approval submenu function
    Is adjustment folder approval page loaded properly function
    Click audit statement fields submenu function
    Is audit statement fields page loaded properly function
    Click bill statement fields submenu function
    Is bill statement fields page loaded properly function
    Click charge categories submenu function
    Is charge categories page loaded properly function
    Click cover letter templates submenu function
    Is cover letter templates page loaded properly function
    Click discrepancy source submenu function
    Is discrepancy source page loaded properly function
    Click dispute grades submenu function
    Is dispute grades page loaded properly function
    Click dispute letter submenu function
    Is dispute letter page loaded properly function
    Is statement numbering template page loaded properly function
    Click statement templates submenu function
    Is statement templates page loaded properly function
    Click accounting codes submenu function
    Is accounting codes page loaded properly function
    Click summarization level submenu function
    Is summarization level page loaded properly function
    Expand switch translation mappings menu function
    Click submenu of switch translation mappings menu function
    Verify translate page title function
    Verify translate page filter frame title function
    Expand subscribers and calling plans menu function
    Click submenu of subscribers and calling plans menu function
    Verify tab header function
    Filter source and policies grid function
    Select source and policies first row crpl checkbox function
    Set generate rpl records for function
    Set automated rpl generation function
    Compare sorted data function
    Compare grid column position after altering function
    Set network codes grid settings function
    Sort network codes grid column function
    Get all rows of specific column from network codes grid function
    Drag network codes grid column function
    Get network codes grid column names by order function
    Click network codes grid export to excel button function
    Is route class page loaded properly function
    Click product submenu function
    Is product page loaded properly function
    Expand switch translation mappings menu function
    Click submenu of switch translation mappings menu function
    Verify translate page title function
    Verify translate page filter frame title function
    Expand subscribers and calling plans menu function
    Click submenu of subscribers and calling plans menu function
    Verify tab header function
    Is create country groups button not present function
    Is delete country groups button not present function
    Get countries grid existing mcc function
    Set countries grid column value function
    Move first available country to destination function
    Set country for country group search function
    Verify country group grid loaded with selected country function
    Click buy and sell deal management submenu function
    Set start date function
    Set buy and sell management grid settings function
    Sort buy and sell management grid column function
    Get all rows of specific column from buy and sell management grid function
    Drag buy and sell management grid column function
    Get buy and sell management grid column names by order function
    Click buy and sell management grid export to excel button function
    Select buy and sell deal management grid first row checkbox function
    Click buy and sell deal bulk edit button function
    Set bulk edit end date function
    Set route class grid settings function
    Sort route class grid column function
    Get all rows of specific column from route class grid function
    Drag route class grid column function
    Get route class grid column names by order function
    Click route class grid export to excel button function
    Set currency grid settings function
    Sort currency grid column function
    Get all rows of specific column from currency grid function
    Drag currency grid column function
    Get currency grid column names by order function
    Click currency grid export to excel button function
    Set currency grid first row currency symbol function
    Set source policies grid settings function
    Sort source policies grid column function
    Get all rows of specific column from source policies grid function
    Drag source policies grid column function
    Get source policies grid column names by order function
    Click source policies grid export to excel button function
    Click source policies grid first row inline action button function
    Is copy source pop up opened properly function
    Click copy source cancel button function
    Set categories grid settings function
    Sort categories grid column function
    Get all rows of specific column from categories grid function
    Drag categories grid column function
    Get categories grid column names by order function
    Click categories grid export to excel button function
    Set exchange rates grid settings function
    Sort exchange rates grid column function
    Get all rows of specific column from exchange rates grid function
    Drag exchange rates grid column function
    Get exchange rates grid column names by order function
    Click exchange rates grid export to excel button function
    Set exchange rates grid first row exchange rate function
    Click add new adjustment button function
    Set route class for cost adjustment function
    Set routing product function
    Set cost per minute function
    Select internal cost adjustments grid first row checkbox function
    Click internal cost adjustment delete button function
    Click accounting codes grid first row inline action button function
    Is assign accounting codes page title available function
    Get source grid cpl prev date override function
    Set source grid cpl prev date override function
    Set company grid settings function
    Get all rows of specific column from company grid function
    Sort company grid column function
    Get company grid column names by order function
    Drag company grid column function
    Click new company button function
    Set business admin company name function
    Click company save button function
    Filter company grid function
    Get business admin company names function
    Get duplicate company from database function
    Set company for search function
    Set company code function
    get pending jobs count function
    compare number plan uploads grid row count after upload for pending job function
    set number plan upload multiple status function
    set static number plan uploads number plan type function
    Is reference number plan template download link present function
    Set internal cost adjustments grid settings function
    Sort internal cost adjustments grid column function
    Get all rows of specific column from internal cost adjustments grid function
    Drag internal cost adjustments grid column function
    Get internal cost adjustments grid column names by order function
    Click internal cost adjustments grid export to excel button function
    Set regions grid settings function
    Sort regions grid column function
    Get all rows of specific column from regions grid function
    Drag regions grid column function
    Get regions grid column names by order function
    Click regions grid export to excel button function
    Set country groups grid settings function
    Sort country groups grid column function
    Get all rows of specific column from country groups grid function
    Drag country groups grid column function
    Get country groups grid column names by order function
    Click country groups grid export to excel button function
    Compare country group grid modified by column value function
    Is country code displayed with country name function
    Get currency grid currency column value function
    Is error message displayed for duplicate currency function
    Move assigned countries to source function
    Verify save country group error message function
    Click country group cancel button function
    Set number plan type function
    Is number plan search result matched function
    Click buy and sell deal management grid first row inline action button function
    Is account label displayed correctly function
    Is account manager label displayed correctly function
    Set country group management grid settings function
    Get all rows of specific column from country group management grid function
    Sort country group management grid column function
    Get country group management grid column names by order function
    Drag country group management grid column function
    Click country group submenu function
    Filter source and policies grid column with checkbox function
    Select source and policies first row automate export checkbox function
    Is source policies grid automate export checkbox checked function
    Click origin set search button for new tab function
    Get origin set grid row count function
    Get new tab origin set grid row count function
    Is country bulk edit pop up present function
    Select countries grid first row checkbox function
    Is network code save changes button present function
    Is network code cancel changes button present function
    Is cdr match save changes button present function
    Is cdr match cancel changes button present function
    Is network code save changes button not present function
    Is network code cancel changes button not present function
    Is cdr match save changes button not present function
    Is cdr match cancel changes button not present function
    Click request new deal button function
    Set buy and sell deal name function
    Set buy sell deal account function
    Set vendor function
    Set customer function
    Get buy and sell deal name function
    Click vendor grid add destination button function
    Set source to add destination function
    Set route class to add destination function
    Set destination to add destination function
    Set deal rate to add destination function
    Set deal volume to add destination function
    Click customer grid add destination button function
    Click request deal button function
    Click add destination save button function
    Click network destinations grid row inline action button function
    Is internal cost adjustment submenu not present function
    Set country grid settings function
    Drag country grid column function
    Get country grid column names by order function
    Get all rows of specific column from country grid function
    Sort country grid column function
    Click my price list submenu function
    Is my price list page loaded properly function
    Set number plan grid settings function
    Get number plan grid column names by order function
    Drag number plan grid column function
    Get all rows of specific column from number plan grid function
    Sort number plan grid column function
    Set percentage function
    Click save button and pass the error message function
    Is specific error message present function
    Is route class grid column present function
    Is custom field alias present function
    Is duplicate cost adjustment error message pop up present function
    Click number plan upload job notifier function
    Get jobs grid row count function
    Compare jobs grid row count function
    Is expected button not visible function
    Click country grid first row inline action button function
    Click country delete inline item function
    Is specific column present in source and policy grid function
    Set specific textbox column in source and policy grid function
    Set specific dropdown column in source and policy grid function
    Check custom rc checkbox function
    Is error message displayed for empty search criteria function
    Compare begin date with given date function
    Compare end date with given date function
    """
    # Start: Business Admin page locators
    default_tab_header_locator = (By.XPATH, "//div[@id='BusinessAdminTabStrip-1']/descendant::h3")
    business_admin_dashboard_tab_locator = (By.XPATH, "//div[@id='BusinessAdminTabStrip']/descendant::a[text()='Business Admin Dashboard']")
    business_admin_page_title_locator = (By.XPATH, "//label[@class='page-title' and text()='BusinessAdmin']")
    number_plan_menu_locator = (By.XPATH, "//div[@id='homeDashboard']/descendant::span[text()='Number Plan']")
    origin_set_submenu_locator = (By.ID, "btnOriginSet")
    rate_dimension_template_submenu_locator = (By.XPATH, "//div[@id='homeDashboard']/descendant::button[text()='Rate Dimension Template']")
    audit_cycle_and_settlement_management_submenu_locator = (By.XPATH, "//div[@id='homeDashboard']/descendant::button[text()='Audit Cycle & Settlement Management']")
    customer_rounding_rule_definition_submenu_locator = (By.XPATH, "//div[@id='homeDashboard']/descendant::button[text()='Customer Rounding Rules Definition']")
    add_dialed_digits_button_locator = (By.XPATH, "//a[contains(@id, 'btnAddDialedDigits')]")
    origin_set_locator = (By.XPATH, "//label[contains(text(), 'Origin Set')]/../descendant::input")
    settlement_origin_locator = (By.XPATH, "//label[contains(text(), 'Settlement Origin')]/../descendant::input")
    dialed_digit_input_field_locator = (By.ID, "DialedDigits")
    origin_set_search_button_locator = (By.XPATH, "//button[contains(@id, 'btnSearchOriginSets')]")
    origin_set_grid_row_details = {"Origin Set": "", "Settlement Origin": "", "Dialed Digit": "", "Begin Date": ""}
    origin_set_grid_div_id = "OriginSets"
    number_plan_submenu_locator = (By.ID, "btnNumberPlan")
    business_admin_module_name = "Business Admin"
    origin_set_grid_inline_action_button_column_position = "3"
    new_origin_set_button_locator = (By.XPATH, "//a[contains(@id, 'btnNewOriginSet')]")
    view_origin_set_details_inline_item_locator = (By.XPATH, "//ul[@id='Action_listbox']/descendant::li[text()='View Origin Set Details']")
    edit_origin_set_popup_locator = (By.ID, "OriginSetDetailsWindow_wnd_title")
    edit_origin_set_popup_cancel_button_locator = (By.ID, "btnCancelOriginSet")
    origin_set_upload_button_locator = (By.XPATH, "//a[contains(@id, 'btnUploadOriginSet')]")
    trading_menu_locator = (By.XPATH, "//div[@id='homeDashboard']/descendant::span[text()='Trading']")
    source_and_policies_submenu_locator = (By.ID, "btnSourcePolicies")
    generic_search_button_locator = (By.XPATH, "//button[contains(text(), 'Search') and @class='submitBtn gridSearch']")
    page_header_locator = (By.XPATH, "//div[@id='outercontainer']/descendant::label[@class='page-title']")
    country_submenu_locator = (By.ID, "btnCountries")
    groups_and_categories_menu_locator = (By.XPATH, "//div[@id='homeDashboard']/descendant::span[text()='Groups & Categories']")
    categories_submenu_locator = (By.ID, "btnCategories")
    delete_selected_rows_confirmation_message_locator = (By.XPATH, "//p[text()='Are you sure you want to delete the selected rows?']")
    delete_success_message_locator = (By.XPATH, "//p[text()='Data has been deleted successfully']")
    currency_and_exchange_rates_menu_locator = (By.XPATH, "//div[@id='homeDashboard']/descendant::span[text()='Currency & Exchange Rates']")
    currency_and_exchange_rates_submenu_locator = (By.ID, "btnExchangeRates")
    routing_menu_locator = (By.XPATH, "//div[@id='homeDashboard']/descendant::span[text()='Routing']")
    route_class_submenu_locator = (By.ID, "btnRouteClass")
    network_codes_submenu_locator = (By.ID, "btnNetworkCodes")
    rating_menu_locator = (By.XPATH, "//div[@id='homeDashboard']/descendant::span[text()='Rating']")
    daylight_saving_zone_submenu_locator = (By.XPATH, "//button[text()='Daylight Savings Zone']")
    cycle_and_settlement_management_submenu_locator = (By.XPATH, "//button[text()='Bill Cycle & Settlement Management']")
    bill_and_audit_menu_locator = (By.XPATH, "//div[@id='homeDashboard']/descendant::span[text()='Bill & Audit']")
    statement_numbering_templates_submenu_locator = (By.ID, "btnStatementNumberingTemplates")
    rating_method_submenu_locator = (By.XPATH, "//button[text()='Rating Method']")
    from_date_locator = (By.XPATH, "//label[text()='From']/../descendant::input")
    to_date_locator = (By.XPATH, "//label[text()='To']/../descendant::input")
    company_menu_locator = (By.XPATH, "//div[@id='homeDashboard']/descendant::span[text()='Company']")
    company_submenu_locator = (By.ID, "btnCompany")
    destination_submenu_locator = (By.XPATH, "//button[@id='destination' and text()='Destination']")
    internal_cost_adjustment_submenu_locator = (By.ID, "btnInternalCostAdjustment")
    translate_menu_locator = (By.XPATH, "//div[@id='homeDashboard']/descendant::span[text()='Translate']")
    calendar_provisioning_submenu_locator = (By.ID, "btnCalendarProvisioning")
    adjustment_folder_approval_submenu_locator = (By.ID, "btnAdjustmentFolderApproval")
    dot_net_page_frame_locator = (By.NAME, "DotNetPage")
    adjustment_folder_approval_page_title_locator = (By.XPATH, "//div[@class='title' and text()='Adjustment Folder Approval']")
    audit_statement_fields_submenu_locator = (By.XPATH, "//button[text()='Audit Statement Fields']")
    header_frame_locator = (By.NAME, "Header")
    statements_menu_locator = (By.ID, "C1Label_mStatement")
    bill_statement_fields_submenu_locator = (By.XPATH, "//button[text()='Bill Statement Fields']")
    list_frame_locator = (By.NAME, "List")
    statement_fields_title_locator = (By.XPATH, "//div[@id='lgx_ListTitle' and contains(text(), 'Statement Fields')]")
    charge_categories_submenu_loctor = (By.ID, "btnChargeCategories")
    charge_categories_title_locator = (By.XPATH, "//div[@id='lgx_ListTitle' and contains(text(), 'Charge Categories')]")
    cover_letter_templates_submenu_locator = (By.ID, "btnCoverLetterTemplates")
    cover_letter_templates_title_locator = (By.XPATH, "//div[@id='lgx_ListTitle' and contains(text(), 'Cover Letter Templates')]")
    discrepancy_source_submenu_locator = (By.ID, "btnDiscrepancySource")
    dispute_grades_submenu_locator = (By.ID, "btnDisputeGrades")
    dispute_letter_submenu_locator = (By.ID, "btnDisputeLetter")
    statement_templates_submenu_locator = (By.ID, "btnStatementTemplates")
    accounting_codes_submenu_locator = (By.ID, "btnBillAuditAccounts")
    summarization_level_submenu_locator = (By.ID, "btnSummarizationLevel")
    detail_frame_locator = (By.NAME, "Detail")
    discrepancy_source_page_title_locator = (By.XPATH, "//div[@id='lgx_DetailTitle' and contains(text(), 'Discrepancy Source')]")
    dispute_grades_page_title_locator = (By.XPATH, "//div[@id='lgx_ListTitle' and contains(text(), 'Dispute Grades')]")
    dispute_letter_page_title_locator = (By.XPATH, "//div[@id='lgx_DetailTitle' and contains(text(), 'Dispute Letter')]")
    statement_numbering_templates_page_title_locator = (By.XPATH, "//div[@id='lgx_ListTitle' and contains(text(), 'Statement Numbering Templates')]")
    statement_template_page_title_locator = (By.XPATH, "//div[@id='lgx_ListTitle' and contains(text(), 'Statement Template')]")
    accounting_codes_header_locator = (By.XPATH, "//h3[text()='Accounting Codes']")
    summarization_level_header_locator = (By.XPATH, "//h3[text()='Summarization Level']")
    switch_translation_mappings_menu_locator = (By.XPATH, "//div[@id='homeDashboard']/descendant::span[text()='Switch Translation Mappings']")
    filter_frame_locator = (By.NAME, "Filter")
    subscribers_and_calling_plans_menu_locator = (By.XPATH, "//div[@id='homeDashboard']/descendant::span[text()='Subscribers & Calling plans']")
    all_row_data = []
    column_name_list = []
    product_submenu_locator = (By.XPATH, "//button[text()='Product']")
    product_page_title_locator = (By.XPATH, "//div[@id='lgx_ListTitle' and contains(text(), 'Level - Product Catalog Type - Product Catalog')]")
    buy_and_sell_deal_management_submenu_locator = (By.ID, "btnDealManagement")
    new_tab_origin_set_search_button_locator = (By.ID, "btnSearchOriginSets_1")
    origin_set_grid_count_span_locator = (By.XPATH, "//div[contains(@id, 'divOriginSetBar')]/span")
    new_tab_origin_set_grid_count_span_locator = (By.XPATH, "//div[@id='divOriginSetBar_1']/span")
    my_price_list_submenu_locator = (By.ID, "btnMypricelist")
    my_price_list_title_locator = (By.ID, "TitleLabel")

    # Start: Edit Origin Set Pop up locators
    origin_set_input_field_locator = (By.ID, "txtOriginSetName")
    rule_for_missing_kendo_dropdown_locator = (By.XPATH, "//label[text()='Rule for Missing A#']/../descendant::input")
    rule_for_invalid_kendo_dropdown_locator = (By.XPATH, "//label[text()='Rule for Invalid A#']/../descendant::input")
    origin_set_ok_button_locator = (By.ID, "btnSaveOriginSet")
    origin_set_save_success_message_locator = (By.XPATH, "//p[text()='New Origin Set saved successfully']")
    add_origin_set_error_message_locator = (By.XPATH, "//p[text()='The Origin Set name must be unique.']")
    add_origin_set_cancel_button_locator = (By.ID, "btnCancelOriginSet")
    select_date_locator = (By.XPATH, "//label[text()='Select Date ']/../descendant::input")
    origin_set_management_grid_row_count_span_locator = (By.XPATH, "//div[@id='divOriginSetBar']/descendant::span")
    origin_set_management_grid_div_id = "divOriginSetGrid"
    origin_set_management_grid_row_count = 0

    # End: Edit Origin Set Pop up locators
    export_to_excel_button_locator = (By.ID, "btnExportToExcelOriginSets")
    export_to_excel_success_message_locator = (By.XPATH, "//p[text()='Export completed successfully']")
    inline_item_locator_string = "//ul[@id='Action_listbox']/descendant::li"
    grid_row_data = {}
    new_settlement_origin_button_locator = (By.XPATH, "//a[contains(@id, 'btnNewSettlementOrigin')]")
    begin_date_label_locator = (By.XPATH, "//label[text()='Begin Date']")
    no_data_found_locator = (By.XPATH, "//div[@id='tblCustomerPriceList']/descendant::span[text()='No records found.']")
    settlement_origin = ""

    # Start: Add Dialed Digits pop up locators
    add_dialed_digits_popup_title_locator = (By.XPATH, "//span[text()='Add Dialed Digits']")
    begin_date_locator = (By.XPATH, "//label[contains(text(), 'Begin Date')]/../descendant::input")
    end_date_locator = (By.XPATH, "//label[text()='End Date']/../descendant::input")
    digit_1_locator = (By.ID, "txtDigit1")
    origin_sets_source_id = "from_msOriginSet"
    settlement_origins_source_id = "from_msSettlementOrigin"
    origin_sets_move_button_locator = (By.ID, "btnMoveDest_msOriginSet")
    settlement_origins_move_button_locator = (By.ID, "btnMoveDest_msSettlementOrigin")
    add_dialed_digits_ok_button_locator = (By.ID, "btnSave")
    add_dialed_digits_success_message_locator = (By.XPATH, "//p[text()='New Dialed Digits saved successfully']")
    ok_button_locator = (By.ID, "btnOk")
    dialed_digit_type_locator = (By.XPATH, "//div[@id='divAddDialedDigits']/descendant::label[text()='Dialed Digit Type']/../descendant::input")
    next_button_locator = (By.ID, "btnNext")
    # End: Add Dialed Digits pop up locators

    # Start: Number Plan tab locators
    upload_number_plan_button_locator = (By.ID, "btnUploadNumberPlan")
    number_plan_uploads_button_locator = (By.ID, "btnNumPlanUploads")
    upload_number_plan_type_kendo_dropdown_arrow_locator = (By.XPATH, "//span[text()='Number Plan Type']/../../descendant::span[@class='k-icon k-i-arrow-s']")
    upload_number_plan_kendo_dropdown_locator = (By.XPATH, "//input[contains(@id, 'UDNumberPlan_')]")
    number_plan_upload_browse_button_locator = (By.XPATH, "//input[@id='UDNumberPlan']/..")
    number_plan_upload_button_locator = (By.XPATH, "//button[contains(@id, 'UDUpload_')]")
    upload_number_plan_note_textarea_locator = (By.XPATH, "//textarea[contains(@id, 'UDNumberPlanNote_')]")
    upload_success_message_locator = (By.XPATH, "//p[text()='Upload successfully completed.']")
    number_plan_upload_cancel_button_locator = (By.XPATH, "//button[contains(@id, 'UDCancel_')]")
    number_plan_grid_row_count_span_locator = (By.XPATH, "//div[contains(@id, 'divBANPBar')]/descendant::span")
    number_plan_grid_row_count = 0
    number_plan_grid_div_id = "divBANumberPlan"
    number_plan_grid_data_grid_name = "BusinessAdminNumberPlanGrid"
    new_csnp_button_locator = (By.XPATH, "//a[contains(@id, 'btnNewCSNP')]")
    csnp_type_dropdown_locator = (By.XPATH, "//label[text()='CSNP Type']/../descendant::span[@class='k-input']")
    csnp_number_plan_textbox_locator = (By.ID, "NumberPlan")
    number_plan_abbreviation_inputbox_locator = (By.XPATH, "//label[text()='Number Plan Abbreviation']/../descendant::input")
    services_dropdown_locator = (By.XPATH, "//label[text()='Services']/../descendant::input")
    default_primary_blending_method_dropdown_locator = (By.XPATH, "//label[text()='Default Primary Blending Method']/../descendant::input")
    default_secondary_blending_method_dropdown_locator = (By.XPATH, "//label[text()='Default Secondary Blending Method']/../descendant::input")
    default_destination_type_dropdown_locator = (By.XPATH, "//label[text()='Default Destination Type']/../descendant::span[@class='k-input']")
    default_call_char_dropdown_locator = (By.XPATH, "//label[text()='Default Call Char']/../descendant::span[@class='k-input']")
    default_rating_method_dropdown_locator = (By.XPATH, "//label[text()='Default Rating Method']/../descendant::span[@class='k-input']")
    enter_min_textbox_locator = (By.XPATH, "//label[text()='Enter Min %']/../descendant::input")
    enter_min_textfield_locator = (By.XPATH, "//input[@name='MinPercentage' and @id='MinPercentage']")
    enter_max_textbox_locator = (By.XPATH, "//label[text()='Enter Max %']/../descendant::input")
    enter_max_textfield_locator = (By.XPATH, "//input[@name='MaxPercentage' and @id='MaxPercentage']")
    define_fixed_blending_security_inputbox_locator = (By.XPATH, "//label[text()='Define Fixed Blending Security Mark-up %']/../descendant::input")
    define_fixed_blending_security_inputfield_locator = (By.XPATH, "//input[@id='FixedBlendingMarkupPercentage' and @name='FixedBlendingMarkupPercentage']")
    define_minmax_blending_security_inputbox_locator = (By.XPATH, "//label[text()='Define Min/Max Blending Security Mark-up %']/../descendant::input")
    define_minmax_blending_security_inputfield_locator = (By.XPATH, "//input[@name='MinMaxBlendingMarkupPercentage' and @id='MinMaxBlendingMarkupPercentage']")
    number_plan_type_kendo_dropdown_locator = (By.XPATH, "//label[contains(text(), 'Number Plan Type')]/../descendant::span[@class='k-input']")
    number_plan_type_column_name = "Number Plan Type"
    number_plan_upload_job_notifier_locator = (By.XPATH, "//span[@class='jobNotifierTitle' and text()='Number Plan Upload']")
    jobs_grid_count_span_locator = (By.XPATH, "//div[contains(@id, 'divSAJBar')]/span")
    jobs_grid_row_count = ""
    # End: Number Plan tab locators

    # Start: Company tab locators
    company_grid_row_count_span_locator = (By.XPATH, "//div[contains(@id, 'divBACompanyBar')]/descendant::span")
    company_grid_row_count = 0
    company_grid_div_id = "divCompany"
    company_grid_data_grid_name = "BusinessAdminCompanyGrid"
    new_company_button_locator = (By.XPATH, "//a[contains(@id, 'btnAddCompany')]")
    company_name_textbox_locator = (By.XPATH, "//input[@id='txtBACompanyName']")
    company_save_button_locator = (By.XPATH, "//button[@id='btnAddCompanySave']")
    company_multiple_kendo_dropdown_locator = (By.XPATH, "//label[contains(text(), 'Company')]/../descendant::input")
    company_code_column_name = "Company Code"
    company_header_locator = (By.XPATH, "//div[@id='page-title' and text()='Company']")
    # End: Company tab locators

    # Start: Number Plan Uploads tab locators
    pending_status = "Pending"
    analyze_inline_item_name = "Analyze"
    number_plan_uploads_grid_div_id = "divNumberPlanUploadList_1"
    number_plan_uploads_grid_inline_action_column_number = 1
    number_plan_uploads_number_plan_type_kendo_dropdown_locator = (By.XPATH, "//input[@id='ddlBANPUNumberPlanType_1']")
    number_plan_uploads_number_plan_type_dropdown_arrow_locator = (By.XPATH, "//input[@id='ddlBANPUNumberPlanType_1']/../descendant::span[@class='k-icon k-i-arrow-s']")
    number_plan_uploads_number_plan_kendo_dropdown_locator = (By.XPATH, "//ul[@id='msBANPUNumberPlan_1_taglist']/..")
    status_kendo_dropdown_locator = (By.XPATH, "//label[contains(text(), 'Status')]/../descendant::input")
    number_plan_uploads_search_button_locator = (By.ID, "searchNumberplanuploads")
    number_plan_uploads_grid_row_count_span_locator = (By.XPATH, "//div[@id='divNPUploadsListBar']/span")
    analyze_success_message_locator = (By.XPATH, "//p[text()='Analyze completed successfully.']")
    from_date_textbox_locator = (By.XPATH, "//label[contains(text(), 'From')]/../descendant::input")
    number_plan_uploads_grid_row_count = 0
    number_plan_uploads_grid_data_grid_name = "NumberPlanUploadsListGrid"
    number_plan_upload_status_kendo_dropdown_locator = (By.XPATH, "//ul[contains(@id, 'msReferenceNumberPlanStatus_')]/../descendant::input")
    reference_number_plan_template_link_locator = (By.XPATH, "//a[text()='Click here to download the Reference Number Plan template']")
    # End: Number Plan Uploads tab locators

    # Start: Country tab locators
    country_grid_data_grid_name = "CountriesGrid"
    country_group_tab_name = "Country Group Management"
    regions_button_locator = (By.XPATH, "//a[contains(@id, 'btnRegions') and text()='Regions']")
    country_groups_button_locator = (By.XPATH, "//a[contains(@id, 'btnCountryGroups') and contains(text(), 'Country Group')]")
    country_group_grid_div_id = "divCountryGroupGrid"
    country_group_data_grid_name = "CountryGroupManagementGrid"
    country_group_grid_inline_action_button_column_position = "2"
    country_grid_row_count = 0
    last_modified_column_name = "Last Modified"
    upload_date_column_name = "Upload Date"
    modified_date_column_name = "Modified Date"
    country_group_submenu_locator = (By.XPATH, "//button[@id='btnCountryGroup' and text()='Country Group']")
    country_grid_div_id = "divCountriesGrid"
    country_grid_inline_action_button_column_position = "3"
    # End: Country tab locators

    # Start: Country Group Management tab locators
    create_country_group_button_locator = (By.XPATH, "//a[contains(@id, 'btnAddCountryGroup') and text()='Create Country Group']")
    country_group_kendo_dropdown_locator = (By.XPATH, "//span[@id='selBACountryGroup']/../../descendant::input")
    country_group_search_button_locator = (By.XPATH, "//a[@class='search-form-reset' and text()='Clear']/../button[contains(text(), 'Search')]")
    country_group_grid_checkbox_column_number = "1"
    country_group_delete_button_locator = (By.XPATH, "//a[contains(@id, 'btnDeleteCountryGroup')]")
    delete_country_group_success_message_locator = (By.XPATH, "//p[text()='Data has been deleted successfully']")
    country_groups_grid_row_count_locator = (By.XPATH, "//div[contains(@id, 'divBACountryGroupBar')]/span[contains(text(), 'records selected')]")
    country_group_management_grid_row_count = 0
    country_group_management_grid_div_id = "divCountryGroupGrid"
    country_group_management_grid_data_grid_name = "CountryGroupManagementGrid"
    countries_column_name = "Countries"
    # End: Country Group Management tab locators

    # Start: Region tab locators
    new_region_button_locator = (By.XPATH, "//a[contains(@id, 'btnAddNewRegion') and text()='New Region']")
    regions_grid_div_id = "divRegion"
    regions_data_grid_name = "BusinessAdminRegionGrid"
    regions_grid_checkbox_column_number = 2
    regions_save_changes_button_locator = (By.XPATH, "//div[contains(@id, 'divRegion')]/descendant::a[text()='Save changes']")
    region_kendo_dropdown_locator = (By.XPATH, "//label[contains(text(), 'Region')]/../descendant::div[@class='k-multiselect-wrap k-floatwrap k-multiselectbox-wrap']")
    delete_region_button_locator = (By.XPATH, "//a[contains(@id, 'btnDeleteRegion') and text()='Delete']")
    region_column_name = "Region"
    regions_grid_row_count_locator = (By.XPATH, "//div[contains(@id, 'divBARegionBar')]/span")
    # End: Region tab locators
    # Start: View/Edit Country Group window locators
    country_group_scope_kendo_dropdown_locator = (By.XPATH, "//div[@id='divNewCountryGroupContent']/descendant::input")
    country_group_input_field_locator = (By.ID, "txtBACountryGroup")
    available_coutries_selectbox_id = "from_msBACountryGroup"
    move_all_countries_to_destination_locator = (By.ID, "btnMoveAllDest_msBACountryGroup")
    save_country_group_button_locator = (By.ID, "btnBACountryGroupSave")
    country_group_name = ""
    first_country_locator = (By.XPATH, "//select[@id='from_msBACountryGroup']/option")
    move_all_countries_to_source_locator = (By.ID, "btnMoveAllSrc_msBACountryGroup")
    country_group_cancel_button_locator = (By.ID, "btnBACountryGroupCancel")
    duplicate_country_group_error_message_locator = (By.XPATH, "//p[contains(text(), 'already exists for scope')]")
    # End: View/Edit Country Group window locators

    # Start: Upload Details tab locators
    workflow_grid_div_id = "divWorkflow"
    show_summary_link_locator = (By.XPATH, "//a[@class='sectionVisibiltyHandler' and text()='Show Summary']")
    show_workflow_link_locator = (By.XPATH, "//a[@class='sectionVisibiltyHandler' and text()='Show Workflow']")
    dial_digits_grid_dialed_digit_column_locator = (By.XPATH, "//div[contains(@id, 'divDialDigits_')]/descendant::th[contains(@data-title, 'Dialed Digit')]")
    csnp_analysis_grid_csd_origin_column_locator = (By.XPATH, "//div[contains(@id, 'divCsnpAnalysisGrid_')]/descendant::th[@data-title='CSD Origin']")
    # End: Upload Details tab locators

    # Start: New settlement origin pop up locator
    settlement_origin_input_field_locator = (By.ID, "txtSettlementOrigin")
    add_row_button_locator = (By.ID, "btnAddRow")
    digit_2_locator = (By.ID, "txtDigit2")
    new_settlement_origin_success_message_locator = (By.XPATH, "//p[text()='New Settlement origin saved successfully']")
    available_origin_sets_locator = (By.ID, "count_from_msOriginSet")
    new_settlement_origin_cancel_button_locator = (By.ID, "btnCancel")
    settlement_origin_dialed_digit_type_dropdown_locator = (By.XPATH, "//div[@id='divNewSettlementOrigin']/descendant::label[text()='Dialed Digit Type']/../descendant::span[@class='k-input']")
    # End: New settlement origin pop up locator

    # Start: Upload origin set popup locators
    origin_set_dropdown_locator = (By.XPATH, "//div[@id='UpOSContent']/descendant::label[text()='Origin Set']/../descendant::input")
    upload_origin_set_effective_date_locator = (By.ID, "EffectiveDate")
    upload_origin_set_browse_button_locator = (By.XPATH, "//span[text()='Browse...']/..")
    upload_button_locator = (By.ID, "btnSubmit")
    # End: Upload origin set popup locators

    # Start: Source and Policies tab locators
    bulk_edited_data = {}
    source_type_dropdown_locator = (By.XPATH, "//label[contains(text(), 'Source Type')]/../descendant::input")
    search_button_locator = (By.ID, "btnSearchSources")
    add_new_source_button_locator = (By.ID, "btnSrcCreateNew")
    source_input_field_locator = (By.XPATH, "//label[text()='Source']/../descendant::input")
    source_grid_div_id = "grdSource"
    source_grid_data_grid_name = "SourcePreferencesGrid"
    status_column_name = "Status"
    bulk_edit_button_locator = (By.ID, "btnSrcBulkEdit")
    source_policies_grid_div_id = "divSourcePoliciesGrid"
    source_policies_grid_checkbox_column_number = "2"
    source_and_policies_grid_inline_action_column_number = 3
    bulk_edit_number_plan_dropdown_arrow_locator = (By.XPATH, "//div[@id='BulkEditableFields']/descendant::label[text()='Number Plan']/../descendant::span[@class='k-icon k-i-arrow-s']")
    bulk_edit_call_type_dropdown_arrow_locator = (By.XPATH, "//div[@id='BulkEditableFields']/descendant::label[text()='Call Type']/../descendant::span[@class='k-icon k-i-arrow-s']")
    bulk_edit_reference_price_list_dropdown_arrow_locator = (By.XPATH, "//div[@id='BulkEditableFields']/descendant::label[text()='Reference Price List:']/../descendant::span[@class='k-icon k-i-arrow-s']")
    bulk_edit_quality_of_service_dropdown_arrow_locator = (By.XPATH, "//div[@id='BulkEditableFields']/descendant::label[text()='Quality of Service']/../descendant::span[@class='k-icon k-i-arrow-s']")
    bulk_edit_origin_reference_price_list_dropdown_arrow_locator = (By.XPATH, "//div[@id='BulkEditableFields']/descendant::label[text()='Origin Reference Price List']/../descendant::span[@class='k-icon k-i-arrow-s']")
    bulk_edit_note_textarea_locator = (By.ID, "Edit-Note")
    bulk_edit_submit_button_locator = (By.ID, "BulkEditSubmit")
    save_changes_button_locator = (By.XPATH, "//a[text()='Save changes']")
    sources_grid_checkbox_column_number = 2
    delete_button_locator = (By.ID, "btnSrcDelete")
    source_delete_success_message_locator = (By.XPATH, "//p[text()='Source Deleted Successfully']")
    vendor_grid_row_details = {"Source": "", "Abbreviation": "", "Status": "", "Account": "", "Rate Plan": "", "Call Type": ""}
    route_class_dropdown_locator = (By.XPATH, "//label[text()='Route Class']/../descendant::input")
    note_textarea_locator = (By.ID, "txtNSONotes")
    bulk_edit_route_class_dropdown_arrow_locator = (By.XPATH, "//div[@id='BulkEditableFields']/descendant::label[text()='Route Class']/../descendant::span[@class='k-icon k-i-arrow-s']")
    reference_pricing_policy_dropdown_locator = (By.XPATH, "//label[text()='Reference Pricing Policy']/../descendant::input")
    compound_rpl_checkbox_locator = (By.XPATH, "//label[text()='Compound RPL']/../descendant::input")
    az_min_selection_threshold_textbox_locator = (By.XPATH, "//label[text()='A-Z Min Selection Threshold']/../descendant::input")
    bulk_edit_reference_pricing_policy_dropdown_arrow_locator = (By.XPATH, "//div[@id='BulkEditableFields']/descendant::label[text()='Reference Pricing Policy']/../descendant::span[@class='k-icon k-i-arrow-s']")
    bulk_edit_az_min_selection_threshold_textbox_locator = (By.ID, "Edit-RPLMinThreshold")
    bulk_edit_compound_rpl_checkbox_locator = (By.XPATH, "//div[@id='BulkEditableFields']/descendant::label[text()='Compound RPL']/../descendant::input")
    compound_rpl_column_name = "Compound RPL"
    source_policies_grid_total_number_of_records_count_locator = (By.XPATH, "//div[@id='divSourcePoliciesBar']/descendant::span[contains(text(), 'selected out of')]")
    source_and_policy_grid_row_count_locator = (By.XPATH, "//div[@id='divSourcePoliciesGrid']/descendant::span")
    source_and_policy_grid_row_count = 0
    wholesale_solution_type_dropdown_locator = (By.XPATH, "//label[text()='Wholesale Solution Type']/../descendant::input")
    source_and_policies_grid_checkbox_column_number = 12
    generate_rpl_records_for_dropdown_locator = (By.XPATH, "//label[text()='Generate RPL Records for']/../descendant::span[@class='k-input']")
    automated_rpl_generation_dropdown_locator = (By.XPATH, "//label[text()='Automated Reference Price List Generation']/../descendant::span[@class='k-input']")
    copy_source_pop_up_title_locator = (By.ID, "NewSourceObjectPopup_wnd_title")
    copy_source_cancel_button_locator = (By.ID, "btnNSOCancel")
    cpl_prev_date_override_column_name = "CPL Prev. Date Override"
    first_number_plan_li_locator = (By.XPATH, "//ul[@id='ddlNumberPlan_listbox']/li")
    automate_export_column_name = "Automate Export"

    # Start: Create New Customer popup locators
    create_new_customer_source_locator = (By.ID, "txtNSOSourceName")
    abbreviation_locator = (By.ID, "txtNSOAbbreviation")
    create_new_customer_status_locator = (By.ID, "ddlNSOStatus")
    account_dropdown_locator = (By.XPATH, "//label[text()='Account']/../descendant::input")
    rate_plan_dropdown_locator = (By.XPATH, "//label[text()='Rate Plan']/../descendant::input")
    call_type_dropdown_locator = (By.XPATH, "//label[text()='Call Type']/../descendant::input")
    number_plan_dropdown_locator = (By.XPATH, "//label[text()='Number Plan']/../descendant::span[@class='k-input']")
    reference_price_list_dropdown_locator = (By.XPATH, "//label[text()='Reference Price List:']/../descendant::input")
    create_new_customer_save_button_locator = (By.ID, "btnNSORSave")
    success_message_locator = (By.XPATH, "//p[text()='Data has been saved successfully']")
    error_message_locator = (By.XPATH, "//p[contains(text(), 'Several fields on this screen have been left blank or populated with invalid values')]")
    duplicate_cost_ajdustment_error_message_locator = (By.XPATH, "//p[contains(text(), 'This cost adjustment overlaps with an existing cost adjustment for the same Route Class and Routing Product.')]")
    # End: Create New Customer popup locators

    # Start: Bulk Edit Pop up locators
    bulk_edit_call_type_locator = (By.XPATH, "//div[@id='BulkEditableField-CallTypeID']/descendant::input")
    bulk_edit_note_locator = (By.ID, "Edit-Note")
    bulk_edit_route_class_locator = (By.XPATH, "//div[@id='BulkEditableField-RouteClassID']/descendant::label[text()='Route Class']/../descendant::span[@class='k-icon k-i-arrow-s']")
    refresh_from_job_checkbox_locator = (By.XPATH, "//label[text()='Refresh From Job']/../descendant::input")
    automate_generation_checkbox_locator = (By.XPATH, "//label[text()='Automate Generation']/../descendant::input")
    include_cli_checkbox_locator = (By.XPATH, "//label[text()='Include CLI']/../descendant::input")
    reference_account_number_plan_dropdown_locator = (By.XPATH, "//div[@id='BulkEditableField-NumberPlanID']/descendant::span[@class='k-icon k-i-arrow-s']")
    bulk_edit_buy_country_group_kendo_dropdown_locator = (By.XPATH, "//div[@id='BulkEditableFields']/descendant::label[text()='Buy Country Group']/../descendant::span[@class='k-icon k-i-arrow-s']")
    bulk_edit_sell_country_group_kendo_dropdown_locator = (By.XPATH, "//div[@id='BulkEditableFields']/descendant::label[text()='Sell Country Group']/../descendant::span[@class='k-icon k-i-arrow-s']")
    first_index_item_locator = (By.XPATH, "//ul[@aria-hidden='false' and @role='listbox']/descendant::li[@data-offset-index='0']")
    # End: Bulk Edit Pop up locators
    # End: Source and Policies tab locators

    # Start: Country tab locators
    countries_grid_div_id = "divCountriesGrid_1"
    countries_grid_checkbox_column_number = 2
    new_country_button_locator = (By.ID, "btnNewCountry_1")
    country_bulk_edit_button_locator = (By.ID, "btnBACountryBulkEdit1")
    country_kendo_dropdown_locator = (By.XPATH, "//label[text()='Country']/../descendant::input")
    new_country_region_kendo_dropdown_locator = (By.ID, "ddlBANewRegions_1")
    new_country_country_type_kendo_dropdown_locator = (By.ID, "ddlBANewCountryType_1")
    new_country_buy_country_group_kendo_dropdown_locator = (By.ID, "ddlBANewBuyCountryGroup_1")
    new_country_sell_country_group_kendo_dropdown_locator = (By.ID, "ddlBANewSellCountryGroup_1")
    new_country_country_textbox_locator = (By.ID, "txtBACountryName")
    new_country_country_abbreviation_textbox_locator = (By.ID, "txtBACountryAbbrv")
    new_country_country_code_textbox_locator = (By.ID, "txtBACountryCode")
    new_country_mobile_country_code_textbox_locator = (By.ID, "txtBAMobileCountryCode")
    new_country_save_button_locator = (By.ID, "btnBANewCountrySave")
    countries_grid_total_number_of_records_count_locator = (By.XPATH, "//div[contains(@id, 'divCountriesBar')]/descendant::span[contains(text(), 'records selected')]")
    bulk_edit_popup_locator = (By.XPATH, "//span[text()='Bulk Edit']")
    # End: Country tab locators

    # Start: Categories page locators
    category_scope_dropdown_locator = (By.XPATH, "//label[contains(text(),'Category Scope')]/../descendant::input")
    categories_search_button_locator = (By.XPATH, "//button[contains(@id,'btnBACSearch')]")
    categories_grid_div_id = "divBACGrid"
    categories_grid_inline_action_column_number = 3
    categories_grid_row_count_locator = (By.XPATH, "//div[contains(@id, 'divBACBar')]/descendant::span")
    categories_grid_row_count = 0

    available_countries_selection_id = "from_lstBACEdCategoryAA"
    edit_category_save_button_locator = (By.ID, "btnBACEdSave")
    remove_all_countries_button_locator = (By.ID, "btnMoveAllSrc_lstBACEdCategoryAA")
    assigned_countries_span_locator = (By.XPATH, "//span[@id='count_to_lstBACEdCategoryAA']")
    edit_category_cancel_button_locator = (By.ID, "btnBACEdCancel")
    category_header_locator = (By.XPATH, "//h3[text()='Categories']")
    first_available_category_locator = (By.XPATH, "//select[@id='from_lstBACEdCategoryAA']/descendant::option")
    first_category_list = []
    assigned_categories_selection_id = "to_lstBACEdCategoryAA"
    # End: Categories page locators

    # Start: Categories tab locators
    category_scope_kendo_dropdown_locator = (By.XPATH, "//label[contains(text(), 'Category Scope')]/../descendant::div[@class='k-multiselect-wrap k-floatwrap k-multiselectbox-wrap']")
    category_type_kendo_dropdown_locator = (By.XPATH, "//label[contains(text(), 'Category Type')]/../descendant::div[@class='k-multiselect-wrap k-floatwrap k-multiselectbox-wrap']")
    new_category_button_locator = (By.XPATH, "//a[contains(@id, 'btnBACNewCategory') and text()='New Category']")
    categories_data_grid_name = "BusinessAdminCategoriesGrid"
    categories_grid_delete_button_locator = (By.XPATH, "//a[contains(@id, 'btnBACDelete') and text()='Delete']")
    categories_grid_checkbox_column_number = 2

    # Start: New category pop up locators
    new_category_category_scope_kendo_dropdown_locator = (By.XPATH, "//div[@id='NewCategoryContent']/descendant::label[text()='Category Scope']/../descendant::span")
    new_category_category_type_kendo_dropdown_locator = (By.XPATH, "//div[@id='NewCategoryContent']/descendant::label[text()='Category Type']/../descendant::span")
    category_name_textbox_locator = (By.ID, "txtCategory")
    category_abbreviation_textbox_locator = (By.ID, "txtAbbreviation")
    new_category_save_button_locator = (By.ID, "categorySave")
    # End: New category pop up locators

    # Start: View/Edit Category pop up locators
    view_edit_category_type_dropdown_arrow_locator = (By.XPATH, "//div[@id='divBACEdMain']/descendant::label/strong[text()='Category Type']/../../descendant::span[@class='k-icon k-i-arrow-s']")
    view_edit_category_number_plan_type_dropdown_arrow_locator = (By.XPATH, "//div[@id='divBACEdMain']/descendant::label/strong[text()='Number Plan Type']/../../descendant::span[@class='k-icon k-i-arrow-s']")
    view_edit_category_number_plan_dropdown_arrow_locator = (By.XPATH, "//div[@id='divBACEdMain']/descendant::label/strong[text()='Number Plan']/../../descendant::span[@class='k-icon k-i-arrow-s']")
    # End: View/Edit Category pop up locators
    # End: Categories tab locators

    # Start: Currency and Exchange Rates tab locators
    exchange_rates_grid_div_id = "divExchangeRatesGrid"
    exchange_rates_data_grid_name = "ExchangeRatesGrid"
    exchange_rate_column_name = "Exchange Rate"
    new_exchange_rate_button_locator = (By.XPATH, "//a[contains(@id, 'btnNewExchangeRates') and text()='New Exchange Rate']")
    search_exchange_rate_types_dropdown_locator = (By.XPATH, "//label[contains(text(), 'Exchange Rate Types')]/../descendant::div[@class='k-multiselect-wrap k-floatwrap k-multiselectbox-wrap']")
    search_currency_dropdown_locator = (By.XPATH, "//label[contains(text(), 'Currency')]/../descendant::div[@class='k-multiselect-wrap k-floatwrap k-multiselectbox-wrap']")
    exchange_rate_type_kendo_dropdown_locator = (By.ID, "ddlNewExchangeRateType_")
    currency_kendo_dropdown_locator = (By.ID, "ddlNewExchangeRateCurrency_")
    exchange_rate_textbox_locator = (By.ID, 'txtExchangeRate_')
    exchange_rate_begin_date_inputbox_locator = (By.ID, "dtpNewExchangeRateBeginDate_")
    add_exchange_rate_save_button_locator = (By.ID, "btnNewExchangeRateSave")
    exchange_rates_grid_inline_column_number = 2
    delete_inline_item = "Delete"
    exchange_rate_delete_confirmation_message_locator = (By.XPATH, "//p[text()='Are you sure you want to delete Exchange Rate?']")
    exchange_rate_delete_success_message_locator = (By.XPATH, "//p[text()='Exchange Rate Deleted Successfully.']")
    exchange_rates_grid_row_count_locator = (By.XPATH, "//div[contains(@id, 'divExchangeRatesBar')]/descendant::span[contains(text(), 'records selected')]")
    exchange_rates_grid_row_count = 0
    currency_button_locator = (By.XPATH, "//a[@id='btnCurrency_1' and text()='Currency']")
    currency_grid_div_id = "divCurrencyGrid"
    currency_grid_data_grid_name = "CurrencyGrid"
    currency_grid_row_count_locator = (By.XPATH, "//div[contains(@id, 'divCurrencyBar')]/descendant:span")
    currency_grid_row_count = 0
    new_currency_button_locator = (By.XPATH, "//a[contains(@id, 'btnNewCurrency')]")
    currency_name_input_field_locator = (By.XPATH, "//input[contains(@id, 'txtCurrency')]")
    currency_abbreviation_input_field_locator = (By.XPATH, "//input[contains(@id, 'txtCurrencyAbbrv')]")
    currency_symbol_input_field_locator = (By.XPATH, "//input[contains(@id, 'txtCurrencySymbol')]")
    new_currency_save_button_locator = (By.ID, "btnNewCurrencySave")
    currency_grid_count_span_locator = (By.XPATH, "//div[contains(@id, 'divCurrencyBar')]/span")
    currency_symbol_column_name = "Currency Symbol"
    currency_column_name = "Currency"
    currency_column_position = 3
    currency_name_already_exists_error_message_locator = (By.XPATH, "//p[text()='Currency Name already exist.']")
    begin_date_is_required_error_message_locator = (By.XPATH, "//p[text()='Begin Date is required.']")
    # End: Currency and Exchange Rates tab locators

    # Start: Route Class page locators
    route_class_grid_row_data = {}
    route_class_grid_div_id = "divRouteClassGrid"
    route_class_name_input_field_locator = (By.XPATH, "//label[text()='Route Class Name']/../descendant::input")
    route_class_abbreviation_input_field_locator = (By.XPATH, "//label[text()='Route Class Abbrv']/../descendant::input")
    target_fulfillment_order_input_field_locator = (By.XPATH, "//label[text()='Target Fulfillment Order']/../descendant::input")
    capacity_saturation_order_input_field_locator = (By.XPATH, "//label[text()='Capacity Saturation Order']/../descendant::input")
    minimum_direct_percent_input_field_locator = (By.XPATH, "//label[text()='Minimum Direct Percent']/../descendant::input")
    add_edit_route_class_save_button_locator = (By.ID, "btnBANewRouteClassSave")
    duplicate_route_class_error_message_locator = (By.XPATH, "//p[contains(text(), 'Duplicate Route Class')]")
    duplicate_traget_fulfillment_order_error_message_locator = (By.XPATH, "//p[contains(text(), 'Duplicate Route Class Target Fulfillment Order')]")
    duplicate_capacity_saturation_order_error_message_locator = (By.XPATH, "//p[contains(text(), 'Duplicate Route Class Capacity Saturation Order')]")
    minimum_direct_percent_error_message_locator = (By.XPATH, "//p[contains(text(), 'Minimum Direct Percent must be less than 100.01')]")
    add_edit_route_class_cancel_button_locator = (By.ID, "btnBANewRouteClassCancel")
    auto_suggest_checkbox_locator = (By.XPATH, "//label[text()='Auto Suggest']/../descendant::input")
    add_route_class_button_locator = (By.XPATH, "//a[contains(@id, 'btnAddRouteClass')]")
    route_class_data_grid_name = "RouteClassGrid"
    aep_distribution_group_dropdown_locator = (By.XPATH, "//label[text()='AEP Distribution Group']/../descendant::input")
    cdr_route_class_input_field_locator = (By.XPATH, "//label[text()='CDR Route Class']/../descendant::input")
    selected_for_routing_checkbox_locator = (By.XPATH, "//label[text()='Selected for Routing']/../descendant::input")
    cli_guarantee_checkbox_locator = (By.XPATH, "//label[text()='CLI Guarantee']/../descendant::input")
    new_route_class_data = {}
    route_class_grid_checkbox_column_number = 1
    route_class_export_to_excel_button_locator = (By.XPATH, "//div[contains(@id, 'divRouteClassGrid')]/descendant::span[@class='k-icon k-i-arrow-s']")
    minimum_direct_percent_column_name = "Minimum Direct Percent"
    route_classes_grid_row_count_locator = (By.XPATH, "//div[contains(@id, 'divBARouteClassBar')]/descendant::span")
    route_classes_grid_row_count = 0
    available_destinations_selectbox_id = "from_CLIDestinations_1"
    route_class_initialize_button_locator = (By.ID, "btnBARouteClassInitialize")
    initialize_route_class_message_locator = (By.XPATH, "//p[text()='This will Initialize the Route Class. Do you want to proceed?']")
    route_class_success_message_locator = (By.XPATH, "//p[text()='Route Class Initialized successfully.']")
    wholesale_type_dropdown_locator = (By.XPATH, "//label[text()='Wholesale Type']/../descendant::input")
    route_class_grid_count_span_locator = (By.XPATH, "//div[contains(@id, 'divBARouteClassBar')]/span")
    custom_rc_checkbox_locator = (By.ID, "rdoRouteclassCustomField")
    # End: Route Class page locators

    # Start: Network Codes tab locators
    network_destinations_grid_div_id = "divNetworkDestinationsGrid"
    network_destinations_grid_inline_action_column_number = 3
    network_destinations_data_grid_name = "NetworkDestinationsGrid"
    add_network_destination_button_locator = (By.XPATH, "//a[contains(@id, 'btnNewNetworkDestination') and text()='Add Network Destination']")
    network_destination_textbox_locator = (By.ID, "txtNetworkDestination")
    destination_abbreviation_textbox_locator = (By.ID, "txtDestinationAbbrv")
    call_char_kendo_dropdown_locator = (By.XPATH, "//label[text()='Call Char']/../descendant::input")
    network_destination_begin_date_inputbox_locator = (By.XPATH, "//input[contains(@id, 'NdBeginDate')]")
    network_destination_end_date_inputbox_locator = (By.XPATH, "//input[contains(@id, 'NdEndDate')]")
    internal_code_inputbox_locator = (By.ID, "txtInternalCode")
    external_code_inputbox_locator = (By.ID, "txtExternalCode")
    network_destination_country_kendo_dropdown_locator = (By.XPATH, "//input[contains(@id, 'ddlNetworkCountries')]/../descendant::span[@class='k-icon k-i-arrow-s']")
    network_destination_grid_row_data = {}
    add_network_destination_save_button_locator = (By.ID, "btnNewNetworkDestinationSave")
    error_popup_title_locator = (By.XPATH, "//span[@id='messagingPopup_wnd_title' and text()='Error']")
    network_destination_first_country_locator = (By.XPATH, "//ul[@aria-hidden='false']/li[@data-offset-index='0']")
    network_destination_search_kendo_dropdown_locator = (By.XPATH, "//label[text()='Network Destination']/../descendant::input")
    network_destination_column_name = "Network Destination"
    network_destination_begin_date = ""

    # Start: Network Code Popup locators
    add_network_code_button_locator = (By.XPATH, "//a[contains(@id, 'btnNewNetworkCode')]")
    network_codes_grid_div_id = "divNetworkCodesGrid"
    network_codes_destination_grid_div_id = "divNetworkDestinationsGrid"
    network_codes_grid_data_grid_name = "NetworkDestinationsGrid"
    network_code_column_name = "Network Code"
    begin_date_column_name = "Begin Date"
    end_date_column_name = "End Date"
    network_code_begin_date = ""
    network_code_save_changes_button_locator = (By.XPATH, "//div[contains(@id, 'divNetworkCodesGrid')]/descendant::a[text()='Save changes']")
    network_code_delete_confirmation_message_locator = (By.XPATH, "//p[text()='Are you sure you want to delete the selected rows? Deleting a Network Code will delete all CDR Matches under it.']")
    network_code_delete_success_message_locator = (By.XPATH, "//p[text()='Network Code(s) deleted successfully.']")
    network_codes_grid_inline_action_column_number = 2
    network_codes_popup_title_locator = (By.XPATH, "//span[contains(@id, 'NetworkCodesModal')]")
    network_codes_grid_row_count_span_locator = (By.XPATH, "//div[contains(@id, 'divBarNetworkDestinations')]/descendant::span")
    network_codes_grid_row_count = 0
    network_code_cancel_changes_button_locator = (By.XPATH, "//div[contains(@id, 'divNetworkCodesGrid')]/descendant::a[text()='Cancel changes']")

    # End: Network Code Popup locators

    # Start: CDR Matches Popup locators
    add_cdr_match_button_locator = (By.XPATH, "//a[contains(@id, 'btnNewCDRMatch')]")
    cdr_matches_grid_div_id = "divNetworkCodeCDRMatchesGrid"
    cdr_match_column_name = "CDR Match"
    cdr_match_begin_date = ""
    cdr_matches_grid_inline_action_column_number = 2
    cdr_match_save_changes_button_locator = (By.XPATH, "//div[contains(@id, 'divNetworkCodeCDRMatchesGrid')]/descendant::a[text()='Save changes']")
    cdr_match_delete_confirmation_message_locator = (By.XPATH, "//p[text()='Are you sure you want to delete the selected rows?']")
    cdr_match_delete_success_message_locator = (By.XPATH, "//p[text()='CDR Match(s) deleted successfully.']")
    cdr_matches_popup_title_locator = (By.XPATH, "//span[contains(@id, 'CDRMatchesModal')]")
    cdr_match_cancel_changes_button_locator = (By.XPATH, "//div[contains(@id, 'divNetworkCodeCDRMatchesGrid')]/descendant::a[text()='Cancel changes']")
    # End: CDR Matches Popup locators

    # End: Network Codes tab locators

    # Start: Calendar provisioning management screen locators
    calendar_provisioning_management_screen_header_locator = (By.XPATH, "//h3[text()='Calendar Provisioning Management']")
    # End: Calendar provisioning management screen locators

    # Start: Buy and sell management page locators
    start_date_inputbox_locator = (By.XPATH, "//label[text()='Start Date']/../descendant::input")
    buy_and_sell_management_grid_div_id = "DealManagementGrid"
    buy_and_sell_management_grid_count_span_locator = (By.XPATH, "//div[contains(@id, 'divDealManagementBar')]/span")
    buy_and_sell_management_grid_checkbox_column_number = 2
    buy_and_sell_deal_bulk_edit_button_lcoator = (By.ID, "btnBulkEdit")
    bulk_edit_end_date_inputbox_locator = (By.ID, "Edit-EndDate")
    buy_and_sell_management_grid_inline_action_column_number = 3
    account_manager_label_locator = (By.XPATH, "//input[@id='txtDDAccountManager']/../../span")
    account_label_locator = (By.XPATH, "//input[@id='txtDDAccount']/../../span")
    account_label = "Account:"
    account_manager_label = "Account Manager:"
    request_new_deal_button_locator = (By.ID, "btnRequestNewDeal")
    buy_and_sell_deal_textbox_locator = (By.ID, "txtDDDealName")
    buy_sell_deal_account_dropdown_locator = (By.XPATH, "//span[contains(text(), 'Account')]/../descendant::input")
    vendor_dropdown_locator = (By.XPATH, "//span[contains(text(), 'Vendor')]/../descendant::input")
    customer_dropdown_locator = (By.XPATH, "//span[contains(text(), 'Customer')]/../descendant::input")
    vendor_grid_add_destination_locator = (By.ID, "btnVendorAddDestination")
    source_kendo_dropdown_arrow_locator = (By.XPATH, "//label[contains(text(), 'Source')]/../descendant::span[@class='k-icon k-i-arrow-s']")
    route_class_multiple_kendo_dropdown_locator = (By.XPATH, "//label[contains(text(), 'Route Class')]/../descendant::input")
    new_destination_header_locator = (By.ID, "NewDestinationPopup_wnd_title")
    destination_multiple_kendo_dropdown_locator = (By.XPATH, "//div[@id='divNewDestination']/descendant::label[contains(text(), 'Destination')]/../descendant::input")
    deal_rate_textbox_locator = (By.XPATH, "//label[contains(text(), 'Deal Rate')]/../descendant::input[1]")
    deal_volume_textbox_locator = (By.XPATH, "//label[contains(text(), 'Deal Volume')]/../descendant::input[1]")
    customer_grid_add_destination_locator = (By.ID, "btnCustomerAddDestination")
    request_deal_button_locator = (By.ID, "btnRequest")
    add_destination_save_button_locator = (By.XPATH, "//div[@id='divNewDestination']/descendant::button[@id='btnSave']")
    # End: Buy and sell management page locators

    # Start: Internal cost adjustments page locators
    add_new_adjustment_button_locator = (By.ID, "btnCreate")
    cost_adjustment_route_class_dropdown_locator = (By.XPATH, "//label[text()='Route Class']/../descendant::span[@class='k-input']")
    routing_product_dropdown_locator = (By.XPATH, "//label[contains(text(), 'Routing Product')]/../descendant::span[@class='k-input']")
    cost_per_minute_inputbox_locator = (By.XPATH, "//label[contains(text(), 'Cost Per Minute')]/../descendant::input")
    internal_cost_adjustments_grid_div_id = "InternalCostAdjustmentGrid"
    internal_cost_adjustments_grid_checkbox_column_number = 2
    internal_cost_adjustment_delete_button_locator = (By.ID, "btnDelete")
    route_class_kendo_dropdown_locator = (By.ID, "ddlRouteClass")
    first_dropdown_item_locator = (By.XPATH, "//ul[@aria-hidden='false' and @role='listbox']/li[@data-offset-index='0']")
    internal_cost_adjustments_grid_row_count_locator = (By.XPATH, "//div[contains(@id, 'divInternalCostAdjustmentBar')]/span")
    percentage_inputbox_locator = (By.XPATH, "//label[contains(text(), 'Percentage')]/../descendant::input")
    # End: Internal cost adjustments page locators

    # Start: Accounting codes page locators
    accounting_codes_grid_div_id = "divbillAuditAccountingCodeGrid"
    accounting_codes_grid_inline_action_column_number = 3
    assign_accounting_codes_header_locator = (By.XPATH, "//h3[text()='Accounting Code']")
    # End: Accounting codes page locators

    ixaudit_dotnetpage_frame_locator = (By.NAME, "DotNetPage")
    cycle_and_settlement_management_screen_title_locator = (By.XPATH, "//div[@id='titlePage']/descendant::div[contains(text(), 'Cycle And Settlement')]")
    ixtrade_custrrcont_frame_locator = (By.NAME, "CustRRCont")
    customer_rounding_rule_definition_screen_title_locator = (By.XPATH, "//span[text()='Customer Rounding Rule Definition ']")
    # End: Business Admin page locators

    def switch_to_business_admin(self):
        """
        Implementing switch to business admin functionality
        :return:
        """
        self.switch_to_window()
        self.accept_ssl_certificate()

    def get_business_admin_page_title(self):
        """
        Implementing get business admin page title functionality
        :return: business admin page title
        """
        self.wait().until(EC.visibility_of_element_located(self.default_tab_header_locator), 'default tab header not found before specified time out')
        return self.page_title()

    def is_business_admin_dashboard_tab_present(self):
        """
        Implementing business admin dashboard tab present functionality
        :return: True/False
        """
        is_present = self.is_element_present(self.business_admin_dashboard_tab_locator)
        return is_present

    def expand_number_plan_menu(self):
        """
        Implementing expand number plan menu functionality
        :return:
        """
        number_plan_menu_element = self.wait().until(EC.element_to_be_clickable(self.number_plan_menu_locator), 'number plan menu locator not found before specified time out')
        number_plan_menu_element.click()
        self.wait_for_ajax_spinner_load()

    def click_origin_set_submenu(self):
        """
        Implementing click origin set submenu functionality
        :return:
        """
        origin_set_submenu_element = self.wait().until(EC.element_to_be_clickable(self.origin_set_submenu_locator), 'origin set submenu locator not found before specified time out')
        origin_set_submenu_element.click()
        self.wait_for_ajax_spinner_load()

    def click_add_dialed_digits_button(self):
        """
        Implementing click add dialed digits button functionality
        :return:
        """
        add_dialed_digits_button_element = self.wait().until(EC.element_to_be_clickable(self.add_dialed_digits_button_locator), 'add dialed digits button locator not found before specified time out')
        add_dialed_digits_button_element.click()
        self.wait_for_ajax_spinner_load()

    def set_begin_date(self, begin_date):
        """
        Implementing set begin date functionality
        :param begin_date:
        :return:
        """
        self.set_value_into_input_field(self.begin_date_locator, begin_date)
        self.click_element(self.business_admin_page_title_locator)

    def set_end_date(self, end_date):
        """
        Implementing set end date functionality
        :param end_date:
        :return:
        """
        self.set_value_into_input_field(self.end_date_locator, end_date)
        self.click_element(self.business_admin_page_title_locator)

    def click_begin_date_label(self):
        """
        Implementing click begin date label functionality
        :return:
        """
        begin_date_label_element = self.wait().until(EC.visibility_of_element_located(self.begin_date_label_locator), 'begin date label locator not found before specified time out')
        begin_date_label_element.click()
        self.wait_for_ajax_spinner_load()

    def set_dialed_digit_type(self, dial_digit_type):
        """
        Implementing set dialed digit type functionality
        :param dial_digit_type:
        :return:
        """
        try:
            dialed_digit_type_dropdown_element = self.wait().until(EC.presence_of_element_located(self.dialed_digit_type_locator), 'dialed digit type dropdown locator not found before specified time out')
            self.script_executor_click(dialed_digit_type_dropdown_element)
            self.wait_for_ajax_spinner_load()
            dropdown_item_locator = (By.XPATH, "//ul[@id='newDDDDType_listbox']/descendant::li[text()='%s']" % dial_digit_type)
            dropdown_item_element = self.wait().until(EC.presence_of_element_located(dropdown_item_locator), 'dropdown item locator not found before specified time out')
            self.script_executor_click(dropdown_item_element)
            self.wait_for_ajax_spinner_load()
        except:
            pass

    def set_digit_1_value(self):
        """
        Implementing set digit 1 value functionality
        :return: dialed_digit
        """
        dialed_digit = self.random_string_generator(4, string.digits)
        self.set_value_into_input_field(self.digit_1_locator, dialed_digit)
        self.click_begin_date_label()
        return dialed_digit

    def select_origin_sets(self, list_of_origin_sets):
        """
        Implementing select origin sets functionality
        :param list_of_origin_sets:
        :return:
        """
        self.move_available_items_to_destination(self.origin_sets_source_id, list_of_origin_sets, self.origin_sets_move_button_locator)

    def select_settlement_origins(self, settlement_origin_list):
        """
        Implementing select settlement origin functionality
        :param settlement_origin_list:
        :return:
        """
        self.move_available_items_to_destination(self.settlement_origins_source_id, settlement_origin_list, self.settlement_origins_move_button_locator)

    def click_add_dialed_digits_ok_button(self):
        """
        Implementing click add dialed digits ok button functionality
        :return:
        """
        add_dialed_digits_ok_button_element = self.wait().until(EC.element_to_be_clickable(self.add_dialed_digits_ok_button_locator), 'add dialed digits ok button locator not found before specified time out')
        self.hover(add_dialed_digits_ok_button_element)
        add_dialed_digits_ok_button_element.click()
        try:
            self.wait().until(EC.visibility_of_element_located(self.add_dialed_digits_success_message_locator), 'add dialed digits success message not found before specified time out')
            self.wait_for_ajax_spinner_load()
            self.click_element(self.ok_button_locator, True)
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def set_origin_set_for_search(self, origin_set):
        """
        Implementing set origin set for search functionality
        :param origin_set:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.origin_set_locator, origin_set)
        self.wait_for_ajax_spinner_load()

    def set_settlement_origin_for_search(self, settlement_origin):
        """
        Implementing set settlement origin for search functionality
        :param settlement_origin:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.settlement_origin_locator, settlement_origin)
        self.wait_for_ajax_spinner_load()

    def set_dialed_digit_for_search(self, dialed_digit):
        """
        Implementing set dialed digit for search functionality
        :param dialed_digit:
        :return:
        """
        self.set_value_into_input_field(self.dialed_digit_input_field_locator, dialed_digit)

    def click_origin_set_search_button(self):
        """
        Implementing click origin set search button functionality
        :return:
        """
        origin_set_search_button_element = self.wait().until(EC.presence_of_element_located(self.origin_set_search_button_locator), 'origin sets search button locator not found before specified time out')
        self.script_executor_click(origin_set_search_button_element)
        self.wait_for_ajax_spinner_load()

    def get_origin_set_grid_row_details(self):
        """
        Implementing get origin set grid row details functionality
        :return: origin_sets_grid_row_data
        """
        origin_set_grid_row_data = self.get_grid_row_details(self.origin_set_grid_div_id, self.origin_set_grid_row_details)
        return origin_set_grid_row_data

    def set_origin_set(self, origin_set, new_origin):
        """
        Implementing set origin set functionality
        :param origin_set:
        :param new_origin:
        :return:
        """
        global origin_set_name
        if new_origin is not True:
            origin_set_name = origin_set
        else:
            origin_set_name = origin_set + self.random_string_generator(6)
        self.set_value_into_input_field(self.origin_set_input_field_locator, origin_set_name)

    def click_origin_set_grid_inline_action_button(self, origin_set):
        """
        Implementing click origin set grid inline action button functionality
        :param origin_set:
        :return:
        """
        self.click_inline_action_button(self.origin_set_grid_div_id, origin_set, self.origin_set_grid_inline_action_button_column_position)

    def set_rule_of_missing_a(self, dropdown_item):
        """
        Implementing set rule of missing a functionality
        :param dropdown_item:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.rule_for_missing_kendo_dropdown_locator, dropdown_item)
        self.wait_for_ajax_spinner_load()

    def click_edit_origin_set_ok_button(self):
        """
        Implementing click edit origin set ok button functionality
        :return:
        """
        edit_origin_set_ok_button_locator = self.wait().until(EC.element_to_be_clickable(self.origin_set_ok_button_locator), 'origin set ok button locator not found before specified time out')
        edit_origin_set_ok_button_locator.click()
        self.wait_for_ajax_spinner_load()
        try:
            self.wait().until(EC.visibility_of_element_located(self.origin_set_save_success_message_locator), 'origin set save success message not found before specified time out')
            self.wait_for_ajax_spinner_load()
            self.click_element(self.ok_button_locator, True)
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def click_new_origin_set_button(self):
        """
        Implementing click new origin set button functionality
        :return:
        """
        new_origin_set_button_element = self.wait().until(EC.element_to_be_clickable(self.new_origin_set_button_locator), 'new origin set button locator not found before specified time out')
        new_origin_set_button_element.click()
        self.wait_for_ajax_spinner_load()

    def click_number_plan_submenu(self):
        """
        Implementing click number plan submenu functionality
        :return:
        """
        number_plan_submenu_element = self.wait().until(EC.element_to_be_clickable(self.number_plan_submenu_locator), 'number plan submenu locator not found before specified time out')
        number_plan_submenu_element.click()
        self.wait_for_ajax_spinner_load()

    def click_upload_number_plan_button(self):
        """
        Implementing click upload number plan button functionality
        :return:
        """
        upload_number_plan_button_element = self.wait().until(EC.element_to_be_clickable(self.upload_number_plan_button_locator), 'upload number plan button locator not found before specified time out')
        upload_number_plan_button_element.click()
        self.wait_for_ajax_spinner_load()

    def click_number_plan_uploads_button(self):
        """
        Implementing click number plan uploads button functionality
        :return:
        """
        number_plan_uploads_button_element = self.wait().until(EC.presence_of_element_located(self.number_plan_uploads_button_locator), 'number plan uploads button locator not found before specified time out')
        self.script_executor_click(number_plan_uploads_button_element)
        self.wait_for_ajax_spinner_load()

    def set_upload_number_plan_type(self, number_plan_type):
        """
        Implementing set upload number plan type functionality
        :param number_plan_type:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.upload_number_plan_type_kendo_dropdown_arrow_locator, number_plan_type)
        self.wait_for_ajax_spinner_load()

    def set_upload_number_plan(self, number_plan):
        """
        Implementing set upload number plan functionality
        :param number_plan:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.upload_number_plan_kendo_dropdown_locator, number_plan)
        self.wait_for_ajax_spinner_load()

    def set_upload_number_plan_note(self, note_prefix):
        """
        Implementing set upload number plan note functionality
        :param note_prefix:
        :return:
        """
        upload_number_plan_note = note_prefix+self.random_string_generator()
        self.set_value_into_input_field(self.upload_number_plan_note_textarea_locator, upload_number_plan_note)

    def click_number_plan_upload_browse_button(self):
        """
        Implementing click number plan upload browse button functionality
        :return:
        """
        self.kill_all_opened_file_browsing_dialogs()
        number_plan_upload_browse_button_element = self.wait().until(EC.element_to_be_clickable(self.number_plan_upload_browse_button_locator), 'number plan upload browse button locator not found before specified time out')
        number_plan_upload_browse_button_element.click()
        self.wait_for_ajax_spinner_load()

    def click_number_plan_upload_button(self):
        """
        Implementing click number plan upload button functionality
        :return:
        """
        self.click_element(self.number_plan_upload_button_locator)
        try:
            self.wait().until(EC.presence_of_element_located(self.upload_success_message_locator), 'upload success message locator not found before specified time out')
            self.click_element(self.ok_button_locator, True)
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def set_number_plan_uploads_number_plan_type(self, number_plan_type):
        """
        Implementing set number plan uploads number plan type functionality
        :param number_plan_type:
        :return:
        """
        number_plan_uploads_number_plan_type_dropdown_arrow_element = self.wait().until(EC.element_to_be_clickable(self.number_plan_uploads_number_plan_type_dropdown_arrow_locator), 'number plan uploads number plan type dropdown arrow locator not found before specified time out')
        number_plan_uploads_number_plan_type_dropdown_arrow_element.click()
        self.wait_for_ajax_spinner_load()
        self.single_selection_from_kendo_dropdown(self.number_plan_uploads_number_plan_type_kendo_dropdown_locator, number_plan_type)
        self.wait_for_ajax_spinner_load()

    def set_number_plan_uploads_number_plan(self, number_plan_list):
        """
        Implementing set number plan uploads number plan functionality
        :param number_plan_list:
        :return:
        """
        kendo_dropdown_element = self.wait().until(EC.element_to_be_clickable(self.number_plan_uploads_number_plan_kendo_dropdown_locator), 'number plan uploads number plan kendo dropdown locator not found before specified time out')
        kendo_dropdown_element.click()
        self.wait_for_ajax_spinner_load()
        for item in number_plan_list:
            dropdown_item_locator = (By.XPATH, "//ul[@id='msBANPUNumberPlan_1_listbox']/descendant::li[text()='%s']" % item)
            dropdown_item_element = self.wait().until(EC.element_to_be_clickable(dropdown_item_locator), 'dropdown item locator not found before specified time out')
            self.script_executor_click(dropdown_item_element)
        business_admin_page_title_element = self.wait().until(EC.element_to_be_clickable(self.business_admin_page_title_locator), 'business admin page title locator not found before specified time out')
        business_admin_page_title_element.click()

    def set_multiple_status(self, status_list):
        """
        Implementing set multiple status functionality
        :param status_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.status_kendo_dropdown_locator, status_list)
        self.wait_for_ajax_spinner_load()
        business_admin_page_title_element = self.wait().until(EC.element_to_be_clickable(self.business_admin_page_title_locator), 'business admin page title locator not found before specified time out')
        business_admin_page_title_element.click()

    def click_number_plan_uploads_search_button(self):
        """
        Implementing click number plan uploads search button functionality
        :return:
        """
        self.click_element(self.number_plan_uploads_search_button_locator, True)

    def is_pending_status_record_found(self):
        """
        Implementing is pending status record found functionality
        :return: True/False
        """
        status = None
        number_plan_uploads_grid_row_count_span_element = self.wait().until(EC.visibility_of_element_located(self.number_plan_uploads_grid_row_count_span_locator), 'number plan uploads grid row count span locator nor found before specified time out')
        count_span_text = number_plan_uploads_grid_row_count_span_element.text
        count_span_text = count_span_text.split()
        if int(count_span_text[1]) > 0:
            status = True
        else:
            status = False
        return status

    def analyze_pending_status_if_exists(self):
        """
        Implementing analyze pending status if exists functionality
        :return:
        """
        if self.is_pending_status_record_found():
            self.click_number_plan_uploads_grid_inline_action_button(self.pending_status)
            self.select_inline_action_item(self.analyze_inline_item_name, self.business_admin_module_name)
            try:
                self.wait().until(EC.presence_of_element_located(self.analyze_success_message_locator), 'analyze success message locator not found before specified time out')
                self.click_element(self.ok_button_locator, True)
            except:
                raise
            self.wait_for_ajax_spinner_load()

    def click_number_plan_uploads_grid_inline_action_button(self, row_identifier_text):
        """
        Implementing click number plan uploads grid inline action button functionality
        :param row_identifier_text:
        :return:
        """
        self.click_inline_action_button(self.number_plan_uploads_grid_div_id, row_identifier_text, self.number_plan_uploads_grid_inline_action_column_number)

    def click_number_plan_upload_cancel_button(self):
        """
        Implementing click number plan upload cancel button functionality
        :return:
        """
        number_plan_upload_cancel_button_element = self.wait().until(EC.element_to_be_clickable(self.number_plan_upload_cancel_button_locator), 'number plan upload cancel button locator not found before specified time out')
        number_plan_upload_cancel_button_element.click()
        self.wait_for_ajax_spinner_load()

    def click_origin_set_upload_button(self):
        """
        Implementing click origin set upload button functionality
        :return:
        """
        origin_set_upload_button_element = self.wait().until(EC.element_to_be_clickable(self.origin_set_upload_button_locator), 'origin set upload button locator not found before specified time out')
        origin_set_upload_button_element.click()
        self.wait_for_ajax_spinner_load()

    def set_origin_set_for_upload(self, origin_set):
        """
        Implementing set origin set for upload functionality
        :param origin_set:
        :return:
        """
        origin_set_dropdown_element = self.wait().until(EC.presence_of_element_located(self.origin_set_dropdown_locator), 'origin set dropdown locator not found before specified time out')
        self.script_executor_click(origin_set_dropdown_element)
        self.wait_for_ajax_spinner_load()
        dropdown_item_locator = (By.XPATH, "//ul[@id='txtOSName_listbox']/descendant::li[text()='%s']" % origin_set)
        dropdown_item_element = self.wait().until(EC.presence_of_element_located(dropdown_item_locator), 'dropdown item locator not found before specified time out')
        self.script_executor_click(dropdown_item_element)
        self.wait_for_ajax_spinner_load()

    def set_effective_date_for_upload_origin_set(self, effective_date):
        """
        Implementing set effective date for upload origin set functionality
        :param effective_date:
        :return:
        """
        self.set_value_into_input_field(self.upload_origin_set_effective_date_locator, effective_date)

    def click_upload_origin_set_browse_button(self):
        """
        Implementing click upload origin set browse button functionality
        :return:
        """
        self.kill_all_opened_file_browsing_dialogs()
        upload_origin_set_browse_button_element = self.wait().until(EC.element_to_be_clickable(self.upload_origin_set_browse_button_locator), 'upload origin set browse button locator not found before specified time out')
        upload_origin_set_browse_button_element.click()
        self.wait_for_ajax_spinner_load()

    def click_upload_origin_set_upload_button(self):
        """
        Implementing click upload origin set upload button functionality
        :return:
        """
        upload_origin_set_upload_button_element = self.wait().until(EC.element_to_be_clickable(self.upload_button_locator), 'upload button locator not found before specified time out')
        upload_origin_set_upload_button_element.click()
        self.wait_for_ajax_spinner_load()
        try:
            self.wait().until(EC.presence_of_element_located(self.upload_success_message_locator), 'upload success message locator not found before specified time out')
            self.wait_for_ajax_spinner_load()
            self.click_element(self.ok_button_locator, True)
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def click_new_settlement_origin_button(self):
        """
        Implementing click new settlement origin button functionality
        :return:
        """
        self.click_element(self.new_settlement_origin_button_locator, True)

    def set_settlement_origin(self, settlement_origin_prefix, random_string):
        """
        Implementing set settlement origin functionality
        :param settlement_origin_prefix:
        :param random_string:
        :return:
        """
        global settlement_origin
        if random_string is not True:
            settlement_origin = settlement_origin_prefix
        else:
            settlement_origin = settlement_origin_prefix + self.random_string_generator(6)
        self.set_value_into_input_field(self.settlement_origin_input_field_locator, settlement_origin)
        self.click_begin_date_label()

    def click_add_row_button(self):
        """
        Implementing click add row button functionality
        :return:
        """
        add_row_button_element = self.wait().until(EC.element_to_be_clickable(self.add_row_button_locator), 'add row button locator not found before specified time out')
        add_row_button_element.click()
        self.wait_for_ajax_spinner_load()

    def set_digit_2_value(self):
        """
        Implementing set digit 2 value functionality
        :return: dialed_digit
        """
        dialed_digit = self.random_string_generator(4, string.digits)
        self.set_value_into_input_field(self.digit_2_locator, dialed_digit)
        self.click_begin_date_label()
        return dialed_digit

    def search_results_displayed_in_the_grid(self):
        """
        Implementing search results displayed in the grid functionality
        :return: search results status- True/False
        """
        data_found = None
        try:
            self.wait(5).until(EC.presence_of_element_located(self.no_data_found_locator))
            data_found = False
        except:
            data_found = True
        finally:
            return data_found

    def click_new_settlement_origin_ok_button(self):
        """
        Implementing click new settlement origin ok button functionality
        :return:
        """
        new_settlement_origin_ok_button_element = self.wait().until(EC.element_to_be_clickable(self.add_dialed_digits_ok_button_locator), 'new settlement origin ok button locator not found before specified time out')
        self.hover(new_settlement_origin_ok_button_element)
        new_settlement_origin_ok_button_element.click()
        try:
            self.wait().until(EC.visibility_of_element_located(self.new_settlement_origin_success_message_locator), 'new settlement origin success message not found before specified time out')
            self.wait_for_ajax_spinner_load()
            self.click_element(self.ok_button_locator, True)
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def generate_settlement_origin(self, origin_set):
        """
        Implementing generate settlement origin functionality
        :param origin_set:
        :return: new_settlement_origin
        """
        global settlement_origin
        settlement_origin = settlement_origin + " (" + origin_set + ")"
        return settlement_origin

    def is_available_origin_set_fetched(self):
        """
        Implementing available origin set values are fetched functionality
        :return: True/False
        """
        available_origin_sets_element = self.wait().until(EC.presence_of_element_located(self.available_origin_sets_locator), 'available origin sets locator not found before specified time out')
        number_of_available_origin_sets = (available_origin_sets_element.text).replace("(", "").replace(")", "")
        if int(number_of_available_origin_sets) > 0:
            return True
        else:
            return False

    def click_new_settlement_origin_popup_cancel_button(self):
        """
        Implementing click new settlement origin popup cancel button functionality
        :return:
        """
        new_settlement_origin_cancel_button_element = self.wait().until(EC.element_to_be_clickable(self.new_settlement_origin_cancel_button_locator), 'new settlement origin cancel button locator not found before specified time out')
        new_settlement_origin_cancel_button_element.click()
        self.wait_for_ajax_spinner_load()

    def select_business_admin_module_inline_action_item(self, inline_item):
        """
        Implementing select business admin module inline action item functionality
        :param inline_item:
        :return:
        """
        self.select_inline_action_item(inline_item, self.business_admin_module_name)
        self.wait_for_ajax_spinner_load()

    def click_show_summary_link(self):
        """
        Implementing click show summary link functionality
        :return:
        """
        show_summary_link_element = self.wait().until(EC.element_to_be_clickable(self.show_summary_link_locator), 'show summary link locator not found before specified time out')
        show_summary_link_element.click()
        self.wait_for_ajax_spinner_load()

    def get_number_plan_uploads_grid_row_details(self):
        """
        Implementing get number plan uploads grid row details functionality
        :return: number_plan_uploads_grid_row_data
        """
        self.grid_row_data.clear()
        self.grid_row_data = {"Status": "", "Number Plan Type": "", "Number Plan": "", "Upload Name": "", "Upload Date": ""}
        number_plan_uploads_grid_row_data = self.get_grid_row_details(self.number_plan_uploads_grid_div_id, self.grid_row_data)
        return number_plan_uploads_grid_row_data

    def verify_upload_details_information(self, row_details):
        """
        Implementing verify upload details information functionality
        :param row_details: row details dictionary
        :return: True/False
        """
        is_verified = self.verify_page_labelwise_details(row_details)
        return is_verified

    def is_dial_digits_tab_loaded_properly(self):
        """
        Implementing dial digits tab loaded functionality
        :return: True/False
        """
        is_present = self.is_element_present(self.dial_digits_grid_dialed_digit_column_locator)
        return is_present

    def is_csnp_analysis_tab_loaded_properly(self):
        """
        Implementing csnp analysis tab loaded functionality
        :return: True/False
        """
        is_present = self.is_element_present(self.csnp_analysis_grid_csd_origin_column_locator)
        return is_present

    def is_number_plan_uploads_grid_inline_item_available(self, inline_item):
        """
        Implementing number plan uploads grid inline item available functionality
        :param inline_item:
        :return: True/False
        """
        inline_item_locator = (By.XPATH, self.inline_item_locator_string + "[text()='%s']" % inline_item)
        is_available = self.is_element_present(inline_item_locator)
        return is_available

    def expand_trading_menu(self):
        """
        Implementing expand trading menu functionality
        :return:
        """
        trading_menu_element = self.wait().until(EC.element_to_be_clickable(self.trading_menu_locator), 'trading menu locator not found before specified time out')
        self.hover(trading_menu_element)
        self.script_executor_click(trading_menu_element)
        self.wait_for_ajax_spinner_load()

    def click_source_and_polices_submenu(self):
        """
        Implementing click source and polices submenu functionality
        :return:
        """
        source_and_policies_submenu_element = self.wait().until(EC.presence_of_element_located(self.source_and_policies_submenu_locator), 'source and policies submenu locator not found before specified time out')
        self.hover(source_and_policies_submenu_element)
        self.script_executor_click(source_and_policies_submenu_element)
        self.wait_for_ajax_spinner_load()

    def set_source_type_for_search(self, source_type):
        """
        Implementing set source type for search functionality
        :param source_type:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.source_type_dropdown_locator, source_type)
        self.wait_for_ajax_spinner_load()

    def click_sources_search_button(self):
        """
        Implementing click sources search button functionality
        :return:
        """
        self.click_element(self.search_button_locator, True)
        self.wait_for_ajax_spinner_load(300)

    def click_bulk_edit_button(self):
        """
        Implementing click bulk edit button functionality
        :return:
        """
        self.grid_row_data.clear()
        bulk_edit_button_element = self.wait().until(EC.element_to_be_clickable(self.bulk_edit_button_locator), 'bulk edit button locator not found before specified time out')
        self.script_executor_click(bulk_edit_button_element)
        self.wait_for_ajax_spinner_load()

    def select_source_policies_grid_multiple_rows(self, list_of_sources):
        """
        Implementing select source policies grid multiple rows functionality
        :param list_of_sources:
        :return:
        """
        for row_identifier_text in list_of_sources:
            self.select_grid_row_checkbox(self.source_policies_grid_div_id, row_identifier_text, self.source_policies_grid_checkbox_column_number)

    def set_bulk_edit_number_plan(self, number_plan):
        """
        Implementing set bulk edit number plan functionality
        :param number_plan:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.bulk_edit_number_plan_dropdown_arrow_locator, number_plan)
        self.bulk_edited_data["Number Plan"] = number_plan
        self.grid_row_data["Number Plan"] = ""

    def set_bulk_edit_call_type(self, call_type):
        """
        Implementing set bulk edit call type functionality
        :param call_type:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.bulk_edit_call_type_dropdown_arrow_locator, call_type)
        self.bulk_edited_data["Call Type"] = call_type
        self.grid_row_data["Call Type"] = ""

    def set_bulk_edit_reference_price_list(self, reference_price_list):
        """
        Implementing set bulk edit reference price list functionality
        :param reference_price_list:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.bulk_edit_reference_price_list_dropdown_arrow_locator, reference_price_list)
        self.bulk_edited_data["Reference Price List:"] = reference_price_list
        self.grid_row_data["Reference Price List:"] = ""

    def set_bulk_edit_quality_of_service(self, quality_of_service):
        """
        Implementing set bulk edit quality of service functionality
        :param quality_of_service:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.bulk_edit_quality_of_service_dropdown_arrow_locator, quality_of_service)
        self.bulk_edited_data["Quality of Service"] = quality_of_service
        self.grid_row_data["Quality of Service"] = ""

    def set_bulk_edit_origin_reference_price_list(self, origin_reference_price_list):
        """
        Implementing set bulk edit origin reference price list functionality
        :param origin_reference_price_list:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.bulk_edit_origin_reference_price_list_dropdown_arrow_locator, origin_reference_price_list)
        self.bulk_edited_data["Origin Reference Price List"] = origin_reference_price_list
        self.grid_row_data["Origin Reference Price List"] = ""

    def set_bulk_edit_note(self, note_prefix):
        """
        Implementing set bulk edit note functionality
        :param note_prefix:
        :return:
        """
        bulk_edit_note = note_prefix + self.random_string_generator()
        self.set_value_into_input_field(self.bulk_edit_note_textarea_locator, bulk_edit_note)
        self.bulk_edited_data["Note"] = bulk_edit_note
        self.grid_row_data["Note"] = ""

    def click_bulk_edit_submit_button(self):
        """
        Implementing click bulk edit submit button functionality
        :return:
        """
        bulk_edit_submit_button_element = self.wait().until(EC.element_to_be_clickable(self.bulk_edit_submit_button_locator), 'bulk edit submit button locator not found before specified time out')
        bulk_edit_submit_button_element.click()
        self.wait_for_ajax_spinner_load()

    def verify_edited_sources_grid_row_details(self, list_of_source):
        """
        Implementing verify edited sources grid row details functionality
        :param list_of_source:
        :return: True/False
        """
        is_verified = True
        for source in list_of_source:
            self.grid_row_data = self.get_grid_row_details_with_unique_identifier(self.source_policies_grid_div_id, self.grid_row_data, source)
            if "A-Z Min Selection Threshold" in self.grid_row_data:
                if "," in self.grid_row_data["A-Z Min Selection Threshold"]:
                    self.grid_row_data["A-Z Min Selection Threshold"] = self.grid_row_data["A-Z Min Selection Threshold"].replace("," , "")
            if self.grid_row_data != self.bulk_edited_data:
                is_verified = False
                break
        return is_verified

    def click_save_changes_button(self):
        """
        Implementing click save changes button functionality
        :return:
        """
        self.click_element(self.save_changes_button_locator, True)
        try:
            self.wait().until(EC.visibility_of_element_located(self.success_message_locator), 'success message locator not found before specified time out')
            self.click_element(self.ok_button_locator, True)
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def click_export_to_excel_button(self):
        """
        Implementing click export to excel button functionality
        :return:
        """
        export_to_excel_button_element = self.wait().until(EC.element_to_be_clickable(self.export_to_excel_button_locator), 'export to excel button locator not found befor specified time out')
        self.script_executor_click(export_to_excel_button_element)
        try:
            self.wait().until(EC.visibility_of_element_located(self.export_to_excel_success_message_locator), 'export to excel success message not found before specified time out')
            ok_button_element = self.wait().until(EC.presence_of_element_located(self.ok_button_locator), 'ok button locator not found before specified time out')
            self.script_executor_click(ok_button_element)
            self.wait_for_ajax_spinner_load()
        except:
            raise

    def is_view_origin_set_details_available(self):
        """
        Implementing is view origin set details available functionality
        :return: True/False
        """
        return self.is_element_present(self.view_origin_set_details_inline_item_locator)

    def is_edit_origin_set_popup_available(self):
        """
        Implementing is edit origin set popup available functionality
        :return: True/False
        """
        return self.is_element_present(self.edit_origin_set_popup_locator)

    def click_edit_origin_set_popup_cancel_button(self):
        """
        Implementing click edit origin set popup cancel button functionality
        :return:
        """
        cancel_button_element = self.wait().until(EC.element_to_be_clickable(self.edit_origin_set_popup_cancel_button_locator), 'edit origin set popup locator not found before specified time out')
        cancel_button_element.click()
        self.wait_for_ajax_spinner_load()

    def get_number_plan_uploads_grid_row_details_for_workflow(self):
        """
        Implementing get number plan uploads grid row details for workflow functionality
        :return: number_plan_uploads_grid_row_data
        """
        self.grid_row_data.clear()
        self.grid_row_data = {"Status": "", "Modified By": ""}
        number_plan_uploads_grid_row_data = self.get_grid_row_details(self.number_plan_uploads_grid_div_id, self.grid_row_data)
        return number_plan_uploads_grid_row_data

    def click_show_workflow_link(self):
        """
        Implementing click show workflow link functionality
        :return:
        """
        show_workflow_link_element = self.wait().until(EC.element_to_be_clickable(self.show_workflow_link_locator), 'show workflow link locator not found before specified time out')
        show_workflow_link_element.click()
        self.wait_for_ajax_spinner_load()

    def get_workflow_grid_row_details(self):
        """
        Implementing get workflow grid row details functionality
        :return: workflow_grid_row_data
        """
        self.grid_row_data.clear()
        self.grid_row_data = {"Status": "", "Modified By": ""}
        for key in self.grid_row_data.keys():
            column_locator = (By.XPATH, "//div[contains(@id,'%s')]/descendant::th[@data-title='%s']" % (self.workflow_grid_div_id, str(key)))
            column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
            column_index = int(column_element.get_attribute("data-index"))+1
            column_value_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::tbody[@role='rowgroup']/tr/td[%s]/span" % (self.workflow_grid_div_id, str(column_index)))
            column_value_element = self.wait().until(EC.presence_of_element_located(column_value_locator), 'column value not found before specified time out')
            column_value = column_value_element.text
            self.grid_row_data[key] = str(column_value)
        return self.grid_row_data

    def set_from_date(self, from_date):
        """
        Implementing set from date functionality
        :param from_date:
        :return:
        """
        self.set_value_into_input_field(self.from_date_textbox_locator, from_date)

    def click_add_origin_set_ok_button(self):
        """
        Implementing click add origin set ok button functionality
        :return:
        """
        edit_origin_set_ok_button_locator = self.wait().until(EC.element_to_be_clickable(self.origin_set_ok_button_locator), 'origin set ok button locator not found before specified time out')
        edit_origin_set_ok_button_locator.click()
        self.wait_for_ajax_spinner_load()
        try:
            self.wait().until(EC.visibility_of_element_located(self.add_origin_set_error_message_locator), 'origin set error message not found before specified time out')
            self.wait_for_ajax_spinner_load()
            self.click_element(self.ok_button_locator, True)
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def click_add_origin_set_cancel_button(self):
        """
        Implementing click add origin set cancel button functionality
        :return:
        """
        add_origin_set_cancel_button_element = self.wait().until(EC.element_to_be_clickable(self.add_origin_set_cancel_button_locator), 'add origin set cancel button locator not found before specified time out')
        add_origin_set_cancel_button_element.click()
        self.wait_for_ajax_spinner_load()

    def click_source_and_policies_submenu(self):
        """
        Implementing click source and policies submenu functionality
        :return:
        """
        source_and_policies_submenu_element = self.wait().until(EC.presence_of_element_located(self.source_and_policies_submenu_locator), 'source and policies submenu locator not found before specified time out')
        self.hover(source_and_policies_submenu_element)
        self.script_executor_click(source_and_policies_submenu_element)
        self.wait_for_ajax_spinner_load()

    def click_add_new_source_button(self):
        """
        Implementing click add new source button functionality
        :return:
        """
        add_new_source_button_element = self.wait().until(EC.element_to_be_clickable(self.add_new_source_button_locator), 'add new source button locator not found before specified time out')
        add_new_source_button_element.click()
        self.wait_for_ajax_spinner_load()

    def set_source(self, source_prefix):
        """
        Implementing set source functionality
        :param source_prefix:
        :return: source_name
        """
        global source_name
        source_name = source_prefix + self.random_string_generator(6)
        self.set_value_into_input_field(self.create_new_customer_source_locator, source_name)
        return source_name

    def set_abbreviation(self, abbreviation_prefix, with_random_string):
        """
        Implementing set abbreviation functionality
        :param abbreviation_prefix:
        :param with_random_string:
        :return:
        """
        if with_random_string is True:
            abbreviation = abbreviation_prefix + self.random_string_generator(6)
        else:
            abbreviation = abbreviation_prefix
        self.set_value_into_input_field(self.abbreviation_locator, abbreviation)
        return abbreviation

    def set_status(self, status):
        """
        Implementing set status functionality
        :param status:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.status_kendo_dropdown_locator, status)
        self.wait_for_ajax_spinner_load()

    def set_account(self, account):
        """
        Implementing set account functionality
        :param account:
        :return:
        """
        account_dropdown_element = self.wait().until(EC.presence_of_element_located(self.account_dropdown_locator), 'account dropdown locator not found before specified time out')
        self.script_executor_click(account_dropdown_element)
        self.wait_for_ajax_spinner_load()
        dropdown_item_locator = (By.XPATH, "//ul[@id='ddlAccount_listbox']/descendant::li[text()='%s']" % account)
        dropdown_item_element = self.wait().until(EC.presence_of_element_located(dropdown_item_locator), 'dropdown item locator not found before specified time out')
        self.script_executor_click(dropdown_item_element)
        self.wait_for_ajax_spinner_load()

    def set_rate_plan(self, rate_plan):
        """
        Implementing set rate plan functionality
        :param rate_plan:
        :return:
        """
        self.wait_for_ajax_spinner_load()
        self.single_selection_from_kendo_dropdown(self.rate_plan_dropdown_locator, rate_plan)
        self.wait_for_ajax_spinner_load()

    def set_call_type(self, call_type):
        """
        Implementing set call type functionality
        :param call_type:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.call_type_dropdown_locator, call_type)
        self.wait_for_ajax_spinner_load()

    def set_number_plan(self, number_plan):
        """
        Implementing set number plan functionality
        :param number_plan:
        :return:
        """
        try:
            self.single_selection_from_static_kendo_dropdown(self.number_plan_dropdown_locator, number_plan)
        except:
            self.click_element(self.first_number_plan_li_locator)
        self.wait_for_ajax_spinner_load()

    def set_reference_price_list(self, reference_price_list):
        """
        Implementing set reference price list functionality
        :param reference_price_list:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.reference_price_list_dropdown_locator, reference_price_list)
        self.wait_for_ajax_spinner_load()

    def click_create_new_customer_save_button(self):
        """
        Implementing click create new customer save button functionality
        :return:
        """
        create_new_customer_save_button_element = self.wait().until(EC.element_to_be_clickable(self.create_new_customer_save_button_locator), 'create new customer save button locator not found before specified time out')
        self.hover(create_new_customer_save_button_element)
        self.script_executor_click(create_new_customer_save_button_element)
        self.wait_for_ajax_spinner_load()
        try:
            self.wait().until(EC.presence_of_element_located(self.success_message_locator), 'success message locator not found before specified time out')
            self.wait_for_ajax_spinner_load()
            self.click_element(self.ok_button_locator, True)
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def set_source_for_search(self, source):
        """
        Implementing set source for search functionality
        :param source:
        :return:
        """
        self.set_value_into_input_field(self.source_input_field_locator, source)

    def get_source_grid_row_details(self):
        """
        Implementing get source grid row details functionality
        :return: source_grid_row_data
        """
        self.grid_row_data.clear()
        self.grid_row_data = {"Source": "", "Abbreviation": "", "Status": "", "Account": "", "Rate Plan": "", "Call Type": "", "Number Plan": "", "Customer Type": "", "Reference Price List": ""}
        source_grid_row_data = self.get_grid_row_details(self.source_grid_div_id, self.grid_row_data)
        return source_grid_row_data

    def set_source_status(self, status):
        """
        Implementing set source status functionality
        :param status:
        :return:
        """
        self.single_selection_from_kendo_in_grid(self.source_grid_div_id, self.status_column_name, status)
        self.click_element(self.page_header_locator)
        self.wait_for_ajax_spinner_load()

    def click_source_grid_save_changes_button(self):
        """
        Implementing click source grid save changes button functionality
        :return:
        """
        self.click_element(self.save_changes_button_locator, True)
        try:
            self.wait().until(EC.presence_of_element_located(self.success_message_locator), 'success message locator not found before specified time out')
            self.wait_for_ajax_spinner_load()
            self.click_element(self.ok_button_locator, True)
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def select_created_source_checkbox(self, source_name):
        """
        Implementing select created source checkbox functionality
        :param source_name:
        :return:
        """
        self.select_grid_row_checkbox(self.source_grid_div_id, source_name, self.sources_grid_checkbox_column_number)
        self.wait_for_ajax_spinner_load()

    def click_delete_button(self):
        """
        Implementing click delete button functionality
        :return:
        """
        self.click_element(self.delete_button_locator, True)
        try:
            self.wait().until(EC.presence_of_element_located(self.source_delete_success_message_locator), 'source delete success message locator not found before specified time out')
            self.wait_for_ajax_spinner_load()
            ok_button_element = self.wait().until(EC.element_to_be_clickable(self.ok_button_locator), 'ok button locator not found before specified time out')
            self.script_executor_click(ok_button_element)
            self.wait_for_ajax_spinner_load()
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def select_source_grid_multiple_checkbox(self, source_list):
        """
        Implementing select source grid multiple checkbox functionality
        :param source_list:
        :return:
        """
        for source in source_list:
            self.select_grid_row_checkbox(self.source_grid_div_id, source, self.sources_grid_checkbox_column_number)
        self.wait_for_ajax_spinner_load()

    def get_vendor_source_grid_row_details(self):
        """
        Implementing get vendor source grid row details functionality
        :return: vendor_grid_row_data
        """
        vendor_grid_row_data = self.get_grid_row_details(self.source_grid_div_id, self.vendor_grid_row_details)
        return vendor_grid_row_data

    def set_bulk_edit_route_class(self, route_class):
        """
        Implementing set bulk edit route class functionality
        :param route_class:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.bulk_edit_route_class_dropdown_arrow_locator, route_class)
        self.bulk_edited_data["Route Class"] = route_class
        self.grid_row_data["Route Class"] = ""

    def set_bulk_edit_reference_pricing_policy(self, reference_pricing_policy):
        """
        Implementing set bulk edit reference pricing policy functionality
        :param reference_pricing_policy:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.bulk_edit_reference_pricing_policy_dropdown_arrow_locator, reference_pricing_policy)
        self.bulk_edited_data["Reference Pricing Policy"] = reference_pricing_policy
        self.grid_row_data["Reference Pricing Policy"] = ""

    def set_bulk_edit_az_min_selection_threshold(self, threshold):
        """
        Implementing set bulk edit az min selection threshold functionality
        :param threshold:
        :return:
        """
        self.set_value_into_input_field(self.bulk_edit_az_min_selection_threshold_textbox_locator, threshold)
        self.bulk_edited_data["A-Z Min Selection Threshold"] = threshold
        self.grid_row_data["A-Z Min Selection Threshold"] = ""

    def check_bulk_edit_compound_rpl_checkbox(self):
        """
        Implementing check bulk edit compound rpl checkbox functionality
        :return:
        """
        bulk_edit_compound_rpl_checkbox_element = self.wait().until(EC.element_to_be_clickable(self.bulk_edit_compound_rpl_checkbox_locator), 'bulk edit compound rpl checkbox locator not found before specified time out')
        bulk_edit_compound_rpl_checkbox_element.click()
        self.wait_for_ajax_spinner_load()

    def is_source_policies_grid_compound_rpl_checkbox_checked(self, source_list):
        """
        Implementing is source policies grid compound rpl checkbox checked functionality
        :param source_list:
        :return: True/False
        """
        is_checked = True
        for source in source_list:
            column_locator = (By.XPATH, "//div[@id='%s']/descendant::th[@data-title='%s']" % (self.source_policies_grid_div_id, str(self.compound_rpl_column_name)))
            column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
            column_index = int(column_element.get_attribute("data-index")) + 1
            column_input_locator = (By.XPATH, "//div[@id='%s']/descendant::span[text()='%s']/../../td[%s]/input" % (self.source_policies_grid_div_id, source, str(column_index)))
            column_input_element = self.wait().until(EC.presence_of_element_located(column_input_locator), 'column input locator not found before specified time out')
            checkbox_status = column_input_element.get_attribute('checked')
            if checkbox_status.lower() != "true":
                is_checked = False
                break
        return is_checked

    def set_route_class(self, route_class, static_kendo):
        """
        Implementing set route class functionality
        :param route_class:
        :param static_kendo:
        :return:
        """
        if static_kendo is True:
            self.single_selection_from_static_kendo_dropdown(self.bulk_edit_route_class_locator, route_class)
        else:
            self.single_selection_from_kendo_dropdown(self.route_class_dropdown_locator, route_class)
            self.wait_for_ajax_spinner_load()

    def select_source_policies_screen_checkboxes(self, label_name):
        """
        Implementing select source policies screen checkboxes functionality
        :param label_name:
        :return:
        """
        checkbox_element = None
        if label_name.lower() == "refresh from job":
            checkbox_element = self.wait().until(EC.presence_of_element_located(self.refresh_from_job_checkbox_locator), 'refresh from job checkbox locator not found before specified time out')
        elif label_name.lower() == "automate generation":
            checkbox_element = self.wait().until(EC.presence_of_element_located(self.automate_generation_checkbox_locator), 'automate generation checkbox locator not found before specified time out')
        elif label_name.lower() == "include cli":
            checkbox_element = self.wait().until(EC.presence_of_element_located(self.include_cli_checkbox_locator), 'include cli checkbox locator not found before specified time out')
        elif label_name.lower() == "compound rpl":
            checkbox_element = self.wait().until(EC.presence_of_element_located(self.compound_rpl_checkbox_locator), 'compound rpl checkbox locator not found before specified time out')
        self.script_executor_click(checkbox_element)
        self.wait_for_ajax_spinner_load()

    def set_reference_account_bulk_edit_number_plan(self, number_plan):
        """
        Implementing set reference account bulk edit number plan functionality
        :param number_plan:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.reference_account_number_plan_dropdown_locator, number_plan)

    def set_note(self, note):
        """
        Implementing set note functionality
        :param note:
        :return:
        """
        self.set_value_into_input_field(self.note_textarea_locator, note)

    def get_switch_grid_row_details(self):
        """
        Implementing get switch grid row details functionality
        :return: switch_grid_row_data
        """
        self.grid_row_data.clear()
        self.grid_row_data = {"Source": "", "Abbreviation": "", "Status": "", "Call Type": "", "Note": ""}
        switch_grid_row_data = self.get_grid_row_details(self.source_grid_div_id, self.grid_row_data)
        return switch_grid_row_data

    def get_reference_account_grid_row_details(self):
        """
        Implementing get reference account grid row details functionality
        :return: reference_account_grid_row_data
        """
        self.grid_row_data.clear()
        self.grid_row_data = {"Source": "", "Abbreviation": "", "Status": "", "NumberPlan": "", "Note": ""}
        reference_account_grid_row_data = self.get_grid_row_details(self.source_grid_div_id, self.grid_row_data)
        return reference_account_grid_row_data

    def get_target_buy_list_grid_row_details(self):
        """
        Implementing get target buy list grid row details functionality
        :return: target_buy_list_grid_row_data
        """
        self.grid_row_data.clear()
        self.grid_row_data = {"Source": "", "Abbreviation": "", "Status": "", "Route Class": "", "Call Type": "", "Note": ""}
        target_buy_list_grid_row_data = self.get_grid_row_details(self.source_grid_div_id, self.grid_row_data)
        return target_buy_list_grid_row_data

    def is_grid_checkbox_checked(self, column_name, checkbox_status):
        """
        Implementing is grid checkbox checked functionality
        :param column_name:
        :param checkbox_status:
        :return: True/False
        """
        status = True
        if checkbox_status is True:
            column_locator = (By.XPATH, "//div[@id='%s']/descendant::th[@data-title='%s']" % (self.source_grid_div_id, str(column_name)))
            column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
            column_index = int(column_element.get_attribute("data-index")) + 1
            column_value_locator = (By.XPATH, "//div[@id='%s']/descendant::div[@class='k-grid-content']/descendant::tr/td[%s]/input" % (self.source_grid_div_id, str(column_index)))
            column_value_element = self.wait().until(EC.presence_of_element_located(column_value_locator), 'column value locator not found before specified time out')
            if str(column_value_element.get_attribute("checked")) != "true":
                status = False
        else:
            pass
        return status

    def get_price_cost_basis_grid_row_details(self):
        """
        Implementing get price cost basis grid row details functionality
        :return: price_cost_basis_grid_row_data
        """
        self.grid_row_data.clear()
        self.grid_row_data = {"Source": "", "Abbreviation": "", "Status": "", "Route Class": "", "Call Type": "", "Note": ""}
        price_cost_basis_grid_row_data = self.get_grid_row_details(self.source_grid_div_id, self.grid_row_data)
        return price_cost_basis_grid_row_data

    def get_origin_reference_price_list_grid_row_details(self):
        """
        Implementing get origin reference price list grid row details functionality
        :return: origin_reference_price_list_grid_row_data
        """
        self.grid_row_data.clear()
        self.grid_row_data = {"Source": "", "Abbreviation": "", "Status": "", "Call Type": "", "Note": ""}
        origin_reference_price_list_grid_row_data = self.get_grid_row_details(self.source_grid_div_id, self.grid_row_data)
        return origin_reference_price_list_grid_row_data

    def get_quality_of_service_grid_row_details(self):
        """
        Implementing get quality of service grid row details functionality
        :return: quality_of_service_grid_row_data
        """
        self.grid_row_data.clear()
        self.grid_row_data = {"Source": "", "Abbreviation": "", "Status": "", "Note": ""}
        quality_of_service_grid_row_data = self.get_grid_row_details(self.source_grid_div_id, self.grid_row_data)
        return quality_of_service_grid_row_data

    def set_reference_pricing_policy(self, reference_pricing_policy):
        """
        Implementing set reference pricing policy functionality
        :param reference_pricing_policy:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.reference_pricing_policy_dropdown_locator, reference_pricing_policy)
        self.wait_for_ajax_spinner_load()

    def set_az_min_selection_threshold(self, threshold):
        """
        Implementing set az min selection threshold functionality
        :param threshold:
        :return:
        """
        az_min_selection_threshold_textbox_element = self.wait().until(EC.element_to_be_clickable(self.az_min_selection_threshold_textbox_locator), 'az min selection threshold textbox locator not found before specified time out')
        az_min_selection_threshold_textbox_element.click()
        self.wait_for_ajax_spinner_load()
        az_min_selection_threshold = client.Dispatch("WScript.Shell")
        az_min_selection_threshold.SendKeys("^a")
        az_min_selection_threshold.SendKeys("{DEL}")
        az_min_selection_threshold.SendKeys(str(threshold))
        self.wait_for_ajax_spinner_load()

    def get_reference_price_list_grid_row_details(self):
        """
        Implementing get reference price list grid row details functionality
        :return: reference_price_list_grid_row_data
        """
        self.grid_row_data.clear()
        self.grid_row_data = {"Source": "", "Abbreviation": "", "Status": "", "Call Type": "", "Reference Pricing Policy": "", "A-Z Min Selection Threshold": "", "Route Class": "", "Note": ""}
        reference_price_list_grid_row_data = self.get_grid_row_details(self.source_grid_div_id, self.grid_row_data)
        return reference_price_list_grid_row_data

    def get_reference_pricing_policy_grid_row_details(self):
        """
        Implementing get reference pricing policy grid row details functionality
        :return: reference_pricing_policy_grid_row_data
        """
        self.grid_row_data.clear()
        self.grid_row_data = {"Source": "", "Abbreviation": "", "Status": "", "Route Class": "", "Call Type": "", "Note": ""}
        reference_pricing_policy_grid_row_data = self.get_grid_row_details(self.source_grid_div_id, self.grid_row_data)
        return reference_pricing_policy_grid_row_data

    def expand_groups_and_categories_menu(self):
        """
        Implementing expand groups and categories menu functionality
        :return:
        """
        self.click_element(self.groups_and_categories_menu_locator)

    def click_categories_submenu(self):
        """
        Implementing click categories submenu functionality
        :return:
        """
        self.click_element(self.categories_submenu_locator)

    def click_categories_grid_inline_action_button(self, row_identifier_text):
        """
        Implementing click categories grid inline action button functionality
        :param row_identifier_text:
        :return:
        """
        self.click_inline_action_button(self.categories_grid_div_id, row_identifier_text, self.categories_grid_inline_action_column_number)

    def move_countries_to_destination(self, country_list):
        """
        Implementing move available countries to destination functionality
        :param country_list:
        :return:
        """
        self.move_available_items_to_destination(self.available_countries_selection_id, country_list)

    def reassign_countries_to_source(self):
        """
        Implementing reassign countries to source functionality
        :return:
        """
        self.click_element(self.remove_all_countries_button_locator)

    def click_edit_category_save_button(self):
        """
        Implementing click edit category save button functionality
        :return:
        """
        self.click_element(self.edit_category_save_button_locator, False, True)
        try:
            self.wait().until(EC.presence_of_element_located(self.success_message_locator), 'success message locator not found before specified time out')
            self.click_element(self.ok_button_locator, True)
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def set_category_scope_for_search(self, category_scope):
        """
        Implementing set category scope for search functionality
        :param category_scope:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.category_scope_dropdown_locator, category_scope)
        self.wait_for_ajax_spinner_load()
        self.click_element(self.category_header_locator)

    def click_categories_search_button(self):
        """
        Implementing click categories search button functionality
        :return:
        """
        self.click_element(self.categories_search_button_locator, True)

    def get_assigned_countries_list(self):
        """
        Implementing get assigned countries list functionality
        :return: assigned_countries_list
        """
        assigned_countries_list = []
        assigned_countries_span_element = self.wait().until(EC.visibility_of_element_located(self.assigned_countries_span_locator))
        number_of_countries_assigned = assigned_countries_span_element.text.replace("(", "").replace(")", "")
        for number in range(1, int(number_of_countries_assigned)+1):
            country_name_locator = (By.XPATH, "//select[@id='to_lstBACEdCategoryAA']/descendant::option[%s]" % str(number))
            country_name_element = self.wait().until(EC.presence_of_element_located(country_name_locator))
            assigned_countries_list.append(str(country_name_element.text))
        return assigned_countries_list

    def is_all_countries_moved_to_available(self):
        """
        Implementing is all countries moved to available functionality
        :return: True/False
        """
        assigned_countries_span_element = self.wait().until(EC.visibility_of_element_located(self.assigned_countries_span_locator))
        number_of_countries_assigned = assigned_countries_span_element.text.replace("(", "").replace(")", "")
        if int(number_of_countries_assigned) == 0:
            return True
        else:
            return False

    def click_edit_category_cancel_button(self):
        """
        Implementing click edit category cancel button functionality
        :return:
        """
        self.click_element(self.edit_category_cancel_button_locator, False, True)

    def click_country_submenu(self):
        """
        Implementing click country submenu functionality
        :return:
        """
        self.click_element(self.country_submenu_locator)

    def click_country_groups_button(self):
        """
        Implementing click country groups button functionality
        :return:
        """
        self.click_element(self.country_groups_button_locator, False, False)

    def click_create_country_group_button(self):
        """
        Implementing click create country groups button functionality
        :return:
        """
        self.click_element(self.create_country_group_button_locator, False, False)

    def set_country_group_scope(self, dropdown_item):
        """
        Implementing set country group scope functionality
        :param dropdown_item:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.country_group_scope_kendo_dropdown_locator, dropdown_item)
        self.wait_for_ajax_spinner_load()

    def set_country_group(self, country_group_prefix, country_group):
        """
        Implementing set country group functionality
        :param country_group_prefix:
        :param country_group:
        :return:
        """
        if country_group != "":
            self.set_value_into_input_field(self.country_group_input_field_locator, country_group, False)
        elif country_group_prefix != "":
            random_string = self.random_string_generator(3)
            self.country_group_name = country_group_prefix + random_string
            self.set_value_into_input_field(self.country_group_input_field_locator, self.country_group_name, False)
        else:
            pass
        return self.country_group_name

    def move_available_countries_to_destination(self):
        """
        Implementing move available countries to destination functionality
        :return:
        """
        move_all_countries_to_destination_element = self.wait().until(EC.visibility_of_element_located(self.move_all_countries_to_destination_locator), 'move all countries to destination locator not found before specified time out')
        self.script_executor_click(move_all_countries_to_destination_element)
        self.wait_for_ajax_spinner_load()

    def click_save_country_group(self):
        """
        Implementing click save country group functionality
        :return:
        """
        self.click_element(self.save_country_group_button_locator, False, False)
        try:
            self.wait().until(EC.visibility_of_element_located(self.success_message_locator), 'success message locator not found before specified time out')
            self.click_element(self.ok_button_locator, False, False)
        except:
            raise

    def select_country_group(self, country_group):
        """
        Implementing select country group functionality
        :param country_group:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.country_group_kendo_dropdown_locator, country_group)

    def close_country_group_tab(self):
        """
        Implementing close country group tab functionality
        :return:
        """
        self.close_current_tab(self.country_group_tab_name)

    def click_country_group_search_button(self):
        """
        Implementing click country group search button functionality
        :return:
        """
        self.click_element(self.country_group_search_button_locator, True)

    def get_country_group_grid_row_details(self):
        """
        Implementing get country group grid row details functionality
        :return: country group grid row details
        """
        self.grid_row_data.clear()
        self.grid_row_data = {"Country Group Scope": "", "Country Group": "", "Countries": ""}
        country_group_grid_row_data = self.get_grid_row_details(self.country_group_grid_div_id, self.grid_row_data, self.country_group_data_grid_name)
        return country_group_grid_row_data

    def click_country_group_grid_inline_action_button(self, country_group):
        """
        Implementing click country group grid inline action button functionality
        :param country_group:
        :return:
        """
        self.click_inline_action_button(self.country_group_grid_div_id, country_group, self.country_group_grid_inline_action_button_column_position)

    def select_country_group_grid_inline_action_item(self, inline_item):
        """
        Implementing select country group grid inline action item functionality
        :param inline_item:
        :return:
        """
        self.select_inline_action_item(inline_item)
        self.wait_for_ajax_spinner_load()

    def select_created_country_group_checkbox(self, country_group):
        """
        Implementing select created country_group checkbox functionality
        :param country_group:
        :return:
        """
        self.select_grid_row_checkbox(self.country_group_grid_div_id, country_group, self.country_group_grid_checkbox_column_number)
        self.wait_for_ajax_spinner_load()

    def click_country_group_delete_button(self):
        """
        Implementing click country group delete button functionality
        :return:
        """
        self.click_element(self.country_group_delete_button_locator, False, False)
        try:
            self.wait().until(EC.presence_of_element_located(self.delete_selected_rows_confirmation_message_locator), 'delete selected rows confirmation message locator not found before specified time out')
            ok_button_element = self.wait().until(EC.visibility_of_element_located(self.ok_button_locator), 'ok button locator not found before specified time out')
            ok_button_element.click()
            self.wait_for_ajax_spinner_load()
            self.wait().until(EC.visibility_of_element_located(self.delete_country_group_success_message_locator), 'delete country group success message locator not found before specified time out')
            ok_button_element = self.wait().until(EC.visibility_of_element_located(self.ok_button_locator), 'ok button locator not found before specified time out')
            ok_button_element.click()
            self.wait_for_ajax_spinner_load()
        except:
            raise

    def click_new_country_button(self):
        """
        Implementing click new country button functionality
        :return:
        """
        self.click_element(self.new_country_button_locator)

    def set_new_country_region(self, region):
        """
        Implementing set new country region functionality
        :param region:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.new_country_region_kendo_dropdown_locator, region)
        self.wait_for_ajax_spinner_load()

    def click_regions_button(self):
        """
        Implementing click regions button functionality
        :return:
        """
        self.click_element(self.regions_button_locator)

    def click_new_region_button(self):
        """
        Implementing click new region button functionality
        :return:
        """
        self.click_element(self.new_region_button_locator)

    def set_value_in_regions_grid_first_row_column(self, column_name, column_value):
        """
        Implementing set value in regions grid first row column functionality
        :param column_name:
        :param column_value:
        :return:
        """
        if column_name == self.region_column_name:
            global region_name
            column_value = column_value + self.random_string_generator(4)
            region_name = column_value
        else:
            column_value = column_value + self.random_string_generator(4)
        self.set_value_in_grid_column(self.regions_grid_div_id, column_name, column_value)

    def select_regions_grid_row_checkbox(self, row_identifier_text):
        """
        Implementing select regions grid row checkbox functionality
        :param row_identifier_text:
        :return:
        """
        self.select_grid_row_checkbox(self.regions_grid_div_id, row_identifier_text, self.regions_grid_checkbox_column_number)

    def click_regions_save_changes_button(self):
        """
        Implementing click regions save changes button functionality
        :return:
        """
        self.click_element(self.regions_save_changes_button_locator, False, False)
        try:
            self.wait().until(EC.visibility_of_element_located(self.success_message_locator), 'success message locator not found before specified time out')
            self.click_element(self.ok_button_locator, False, False)
        except:
            raise

    def set_region(self, region_list):
        """
        Implementing set region functionality
        :param region_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.region_kendo_dropdown_locator, region_list)
        self.click_element(self.page_header_locator)

    def click_generic_search_button(self):
        """
        Implementing click generic search button functionality
        :return:
        """
        self.click_element(self.generic_search_button_locator, True)

    def click_delete_region_button(self):
        """
        Implementing click delete region button functionality
        :return:
        """
        self.click_element(self.delete_region_button_locator)
        try:
            self.wait().until(EC.presence_of_element_located(self.delete_selected_rows_confirmation_message_locator), 'delete selected rows confirmation message locator not found before specified time out')
            ok_button_element = self.wait().until(EC.visibility_of_element_located(self.ok_button_locator), 'ok button locator not found before specified time out')
            ok_button_element.click()
            self.wait_for_ajax_spinner_load()
            self.wait().until(EC.visibility_of_element_located(self.delete_country_group_success_message_locator), 'delete country group success message locator not found before specified time out')
            ok_button_element = self.wait().until(EC.visibility_of_element_located(self.ok_button_locator), 'ok button locator not found before specified time out')
            ok_button_element.click()
            self.wait_for_ajax_spinner_load()
        except:
            raise

    def get_regions_grid_row_details(self):
        """
        Implementing get regions grid row details functionality
        :return: regions_grid_row_data
        """
        self.grid_row_data.clear()
        self.grid_row_data = {"Region": ""}
        regions_grid_row_data = self.get_grid_row_details(self.regions_grid_div_id, self.grid_row_data, self.regions_data_grid_name)
        return regions_grid_row_data

    def set_new_country_country_type(self, country_type):
        """
        Implementing set new country country type functionality
        :param country_type:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.new_country_country_type_kendo_dropdown_locator, country_type)
        self.wait_for_ajax_spinner_load()

    def set_new_country_buy_country_group(self, buy_country_group):
        """
        Implementing set new country buy country group functionality
        :param buy_country_group:
        :return:
        """
        try:
            self.single_selection_from_kendo_dropdown(self.new_country_buy_country_group_kendo_dropdown_locator, buy_country_group)
            self.wait_for_ajax_spinner_load()
        except:
            pass

    def set_new_country_sell_country_group(self, sell_country_group):
        """
        Implementing set new country sell country group functionality
        :param sell_country_group:
        :return:
        """
        try:
            self.single_selection_from_kendo_dropdown(self.new_country_sell_country_group_kendo_dropdown_locator, sell_country_group)
            self.wait_for_ajax_spinner_load()
        except:
            pass

    def set_new_country_country_name(self, country_name_prefix, country_name):
        """
        Implementing set new country country name functionality
        :param country_name_prefix:
        :param country_name:
        :return: full_country_name
        """
        global full_country_name

        full_country_name = country_name_prefix + self.random_string_generator(3, string.digits) + "_" + country_name
        self.set_value_into_input_field(self.new_country_country_textbox_locator, full_country_name)
        return full_country_name

    def set_new_country_country_abbreviation(self, country_abbreviation_prefix):
        """
        Implementing set new country country abbreviation functionality
        :param country_abbreviation_prefix:
        :return: country_abbreviation
        """
        country_abbreviation = country_abbreviation_prefix+self.random_string_generator(3, string.digits)
        self.set_value_into_input_field(self.new_country_country_abbreviation_textbox_locator, country_abbreviation)
        return country_abbreviation

    def set_new_country_country_code(self):
        """
        Implementing set new country country code functionality
        :return:
        """
        global country_code
        country_code = self.random_string_generator(4, string.digits)
        self.set_value_into_input_field(self.new_country_country_code_textbox_locator, country_code)

    def set_new_country_mobile_country_code(self, existing_mcc):
        """
        Implementing set new country mobile country code functionality
        :param existing_mcc:
        :return: mobile_country_code
        """
        mobile_country_code = existing_mcc
        if existing_mcc == "":
            mobile_country_code = self.random_string_generator(4, string.digits)
        self.set_value_into_input_field(self.new_country_mobile_country_code_textbox_locator, mobile_country_code)
        return mobile_country_code

    def click_new_country_save_button(self):
        """
        Implementing click new country save button functionality
        :return:
        """
        new_country_save_button_element = self.wait().until(EC.element_to_be_clickable(self.new_country_save_button_locator), 'new country save button locator not found before specified time out')
        new_country_save_button_element.click()
        self.wait_for_ajax_spinner_load()
        try:
            self.wait().until(EC.visibility_of_element_located(self.success_message_locator), 'success message locator not found before specified time out')
            self.wait_for_ajax_spinner_load()
            ok_button_element = self.wait().until(EC.element_to_be_clickable(self.ok_button_locator), 'ok button locator not found before specified time out')
            self.script_executor_click(ok_button_element)
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def set_country(self, country_name):
        """
        Implementing set country functionality
        :param country_name:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.country_kendo_dropdown_locator, country_name)
        self.wait_for_ajax_spinner_load()

    def click_search_button(self):
        """
        Implementing click search button functionality
        :return:
        """
        self.click_element(self.generic_search_button_locator, script_executor=True)

    def get_countries_grid_row_details(self):
        """
        Implementing get countries grid row details functionality
        :return: countries_grid_row_data
        """
        self.grid_row_data.clear()
        self.grid_row_data = {"Country": "", "Country Abbreviation": "", "Country Type:": "", "Region": ""}
        countries_grid_row_data = self.get_grid_row_details(self.countries_grid_div_id, self.grid_row_data)
        return countries_grid_row_data

    def select_countries_grid_row_checkbox(self, unique_identifier):
        """
        Implementing select countries grid row checkbox functionality
        :param unique_identifier:
        :return:
        """
        self.select_grid_row_checkbox(self.countries_grid_div_id, unique_identifier, self.countries_grid_checkbox_column_number)

    def click_country_bulk_edit_button(self):
        """
        Implementing click country bulk edit button functionality
        :return:
        """
        self.click_element(self.country_bulk_edit_button_locator, True)

    def set_bulk_edit_buy_country_group(self):
        """
        Implementing set bulk edit buy country group functionality
        :return:
        """
        self.click_element(self.bulk_edit_buy_country_group_kendo_dropdown_locator, True)
        self.click_element(self.first_index_item_locator, script_executor=True)

    def set_bulk_edit_sell_country_group(self):
        """
        Implementing set bulk edit sell country group functionality
        :return:
        """
        self.click_element(self.bulk_edit_sell_country_group_kendo_dropdown_locator, True)
        self.click_element(self.first_index_item_locator, script_executor=True)

    def click_new_category_button(self):
        """
        Implementing click new category button functionality
        :return:
        """
        self.click_element(self.new_category_button_locator)

    def set_new_category_category_scope(self, category_scope):
        """
        Implementing set new category category scope functionality
        :param category_scope:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.new_category_category_scope_kendo_dropdown_locator, category_scope)
        self.wait_for_ajax_spinner_load()

    def set_new_category_category_type(self, category_type):
        """
        Implementing set new category category type functionality
        :param category_type:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.new_category_category_type_kendo_dropdown_locator, category_type)
        self.wait_for_ajax_spinner_load()

    def set_category_name(self, category_name):
        """
        Implementing set category name functionality
        :param category_name:
        :return:
        """
        global category
        category = category_name + self.random_string_generator(size=4)
        self.set_value_into_input_field(self.category_name_textbox_locator, category)

    def get_category_name(self):
        """
        Implementing get category name functionality
        :return: category_name
        """
        global category
        return category

    def set_category_abbreviation(self, category_abbreviation):
        """
        Implementing set category abbreviation functionality
        :param category_abbreviation:
        :return:
        """
        self.set_value_into_input_field(self.category_abbreviation_textbox_locator, category_abbreviation)

    def click_new_category_save_button(self):
        """
        Implementing click new category save button functionality
        :return:
        """
        self.click_element(self.new_category_save_button_locator)
        try:
            self.wait().until(EC.visibility_of_element_located(self.success_message_locator), 'success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise

    def set_category_scope(self, category_scope_list):
        """
        Implementing set category scope functionality
        :param category_scope_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.category_scope_kendo_dropdown_locator, category_scope_list)
        self.wait_for_ajax_spinner_load()

    def set_category_type(self, category_type_list):
        """
        Implementing set category type functionality
        :param category_type_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.category_type_kendo_dropdown_locator, category_type_list)
        self.wait_for_ajax_spinner_load()

    def select_categories_grid_row_checkbox(self, row_identifier_text):
        """
        Implementing select categories grid row checkbox functionality
        :param row_identifier_text:
        :return:
        """
        self.select_grid_row_checkbox(self.categories_grid_div_id, row_identifier_text, self.categories_grid_checkbox_column_number)

    def get_categories_grid_row_details(self):
        """
        Implementing get categories grid row details functionality
        :return: categories_grid_row_data
        """
        self.grid_row_data.clear()
        self.grid_row_data = {"Category Scope": "", "Category Type": "", "Category": "", "Abbreviation": ""}
        categories_grid_row_data = self.get_grid_row_details(self.categories_grid_div_id, self.grid_row_data, self.categories_data_grid_name)
        return categories_grid_row_data

    def click_categories_grid_delete_button(self):
        """
        Implementing click categories grid delete button functionality
        :return:
        """
        self.click_element(self.categories_grid_delete_button_locator, True)
        try:
            self.wait().until(EC.presence_of_element_located(self.delete_selected_rows_confirmation_message_locator), 'delete selected rows confirmation message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
            self.wait().until(EC.visibility_of_element_located(self.delete_success_message_locator), 'delete success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise

    def expand_currency_and_exchange_rates_menu(self):
        """
        Implementing expand currency and exchange rates menu functionality
        :return:
        """
        self.click_element(self.currency_and_exchange_rates_menu_locator)

    def click_currency_and_exchange_rates_submenu(self):
        """
        Implementing click currency and exchange rates submenu functionality
        :return:
        """
        self.click_element(self.currency_and_exchange_rates_submenu_locator)

    def click_new_exchange_rate_button(self):
        """
        Implementing click new exchange rate button functionality
        :return:
        """
        self.click_element(self.new_exchange_rate_button_locator)

    def set_exchange_rate_types_for_search(self, exchange_rate_type_list):
        """
        Implementing set exchange rate types for search functionality
        :param exchange_rate_type_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.search_exchange_rate_types_dropdown_locator, exchange_rate_type_list)

    def set_currency_for_search(self, currency_list):
        """
        Implementing set currency for search functionality
        :param currency_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.search_currency_dropdown_locator, currency_list)

    def set_exchange_rate_type(self, exchange_rate_type):
        """
        Implementing set exchange rate type functionality
        :param exchange_rate_type:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.exchange_rate_type_kendo_dropdown_locator, exchange_rate_type)

    def set_currency(self, currency):
        """
        Implementing set currency functionality
        :param currency:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.currency_kendo_dropdown_locator, currency)

    def set_exchange_rate(self, exchange_rate):
        """
        Implementing set exchange rate functionality
        :param exchange_rate:
        :return: new exchange rate
        """
        if exchange_rate == "":
            exchange_rate = (self.random_string_generator(4, string.digits) + ".0000").lstrip("0")
        self.set_value_into_input_field(self.exchange_rate_textbox_locator, exchange_rate, True)
        return exchange_rate

    def set_exchange_rate_begin_date(self, begin_date):
        """
        Implementing set exchange rate begin date functionality
        :param begin_date:
        :return: new begin date
        """
        if begin_date == "":
            begin_date = self.get_date(current_date=True)
        self.set_value_into_input_field(self.exchange_rate_begin_date_inputbox_locator, begin_date)
        return begin_date

    def click_add_exchange_rate_save_button(self):
        """
        Implementing click add exchange rate save button functionality
        :return:
        """
        self.click_element(self.add_exchange_rate_save_button_locator)
        try:
            self.wait().until(EC.visibility_of_element_located(self.success_message_locator), 'success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def get_exchange_rates_grid_row_details(self):
        """
        Implementing get exchange rates grid row details functionality
        :return: exchange_rates_grid_row_data
        """
        self.grid_row_data.clear()
        self.grid_row_data = {"Exchange Rate": "", "Exchange Rate Type": "", "Currency": "", "Begin Date": ""}
        exchange_rates_grid_row_data = self.get_grid_row_details(self.exchange_rates_grid_div_id, self.grid_row_data, self.exchange_rates_data_grid_name)
        exchange_rate_from_grid = str(exchange_rates_grid_row_data["Exchange Rate"]).replace(",", "")
        exchange_rates_grid_row_data["Exchange Rate"] = exchange_rate_from_grid
        return exchange_rates_grid_row_data

    def click_exchange_rates_grid_inline_action_button(self, row_identifier_text):
        """
        Implementing click exchange rates grid inline action button functionality
        :param row_identifier_text:
        :return:
        """
        self.click_inline_action_button(self.exchange_rates_grid_div_id, row_identifier_text, self.exchange_rates_grid_inline_column_number)

    def click_exchange_rate_delete_inline_item(self):
        """
        Implementing click exchange rate delete inline item functionality
        :return:
        """
        self.select_inline_action_item(self.delete_inline_item)
        try:
            self.wait().until(EC.presence_of_element_located(self.exchange_rate_delete_confirmation_message_locator), 'exchange rate delete confirmation message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
            self.wait().until(EC.presence_of_element_located(self.exchange_rate_delete_success_message_locator), 'exchange rate delete success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def expand_routing_menu(self):
        """
        Implementing expand routing menu functionality
        :return:
        """
        self.click_element(self.routing_menu_locator, False, True)

    def click_route_class_submenu(self):
        """
        Implementing click route class submenu functionality
        :return:
        """
        self.click_element(self.route_class_submenu_locator, False, True)

    def get_route_class_grid_first_row_data(self):
        """
        Implementing get route class grid first row data functionality
        :return:
        """
        self.grid_row_data.clear()
        self.grid_row_data = {"Route Class": "", "Route Class Abbrv" : "", "Target Fulfillment Order": "", "Capacity Saturation Order": "", "Minimum Direct Percent": ""}
        self.route_class_grid_row_data = self.get_grid_row_details(self.route_class_grid_div_id, self.grid_row_data, self.route_class_data_grid_name)

    def set_route_class_name(self, route_class_name_prefix):
        """
        Implementing set route class name functionality
        :param route_class_name_prefix:
        :return: route_class_name
        """
        global route_class_name
        route_class_name = None
        if route_class_name_prefix != "":
            route_class_name = route_class_name_prefix + self.random_string_generator(6)
        else:
            route_class_name = str(self.route_class_grid_row_data["Route Class"])
        self.set_value_into_input_field(self.route_class_name_input_field_locator, route_class_name)
        self.new_route_class_data["Route Class"] = route_class_name
        self.grid_row_data["Route Class"] = ""
        return route_class_name

    def set_route_class_abbreviation(self, route_class_abbreviation_prefix):
        """
        Implementing set route class abbreviation functionality
        :param route_class_abbreviation_prefix:
        :return:
        """
        route_class_abbreviation = None
        if route_class_abbreviation_prefix != "":
            route_class_abbreviation = route_class_abbreviation_prefix + self.random_string_generator(6)
        else:
            route_class_abbreviation = str(self.route_class_grid_row_data["Route Class Abbrv"])
        self.set_value_into_input_field(self.route_class_abbreviation_input_field_locator, route_class_abbreviation)
        self.new_route_class_data["Route Class Abbrv"] = route_class_abbreviation
        self.grid_row_data["Route Class Abbrv"] = ""

    def set_target_fulfillment_order(self, duplicate):
        """
        Implementing set target fulfillment order functionality
        :param duplicate:
        :return:
        """
        target_fulfillment_order = None
        if duplicate is not True:
            target_fulfillment_order = self.random_string_generator(4, string.digits)
        else:
            target_fulfillment_order = str(self.route_class_grid_row_data["Target Fulfillment Order"])
        self.set_value_into_input_field(self.target_fulfillment_order_input_field_locator, target_fulfillment_order, True)
        self.new_route_class_data["Target Fulfillment Order"] = str(int(target_fulfillment_order))
        self.grid_row_data["Target Fulfillment Order"] = ""

    def set_capacity_saturation_order(self, duplicate):
        """
        Implementing set capacity saturation order functionality
        :param duplicate:
        :return:
        """
        capacity_saturation_order = None
        if duplicate is not True:
            capacity_saturation_order = self.random_string_generator(4, string.digits)
        else:
            capacity_saturation_order = str(self.route_class_grid_row_data["Capacity Saturation Order"])
        self.set_value_into_input_field(self.capacity_saturation_order_input_field_locator, capacity_saturation_order, True)
        self.new_route_class_data["Capacity Saturation Order"] = str(int(capacity_saturation_order))
        self.grid_row_data["Capacity Saturation Order"] = ""

    def set_minimum_direct_percent(self, value):
        """
        Implementing set minimum direct percent functionality
        :param value:
        :return:
        """
        minimum_direct_percent = None
        if value != "":
            minimum_direct_percent = value
        else:
            minimum_direct_percent = str(self.route_class_grid_row_data["Minimum Direct Percent"])
        self.set_value_into_input_field(self.minimum_direct_percent_input_field_locator, minimum_direct_percent, True)
        self.new_route_class_data["Minimum Direct Percent"] = minimum_direct_percent
        self.grid_row_data["Minimum Direct Percent"] = ""

    def click_add_edit_route_class_save_button(self, field_label):
        """
        Implementing click add edit route class save button functionality
        :param field_label:
        :return:
        """
        self.click_element(self.add_edit_route_class_save_button_locator, False, True)
        if field_label.lower() == 'success':
            self.wait().until(EC.visibility_of_element_located(self.success_message_locator))
            pass
        elif field_label.lower() == 'route class':
            self.wait().until(EC.visibility_of_element_located(self.duplicate_route_class_error_message_locator))
            pass
        elif field_label.lower() == 'target fulfillment order':
            self.wait().until(EC.visibility_of_element_located(self.duplicate_traget_fulfillment_order_error_message_locator))
            pass
        elif field_label.lower() == 'capacity saturation order':
            self.wait().until(EC.visibility_of_element_located(self.duplicate_capacity_saturation_order_error_message_locator))
            pass
        elif field_label.lower() == 'minimum direct percent':
            self.wait().until(EC.visibility_of_element_located(self.minimum_direct_percent_error_message_locator))
            pass
        ok_button_element = self.wait().until(EC.element_to_be_clickable(self.ok_button_locator), 'ok button locator not found before specified time out')
        self.script_executor_click(ok_button_element)
        self.wait_for_ajax_spinner_load()

    def select_auto_suggest_checkbox(self):
        """
        Implementing select auto suggest checkbox functionality
        :return:
        """
        self.click_element(self.auto_suggest_checkbox_locator, True)
        self.new_route_class_data["Auto Suggest"] = "Yes"
        self.grid_row_data["Auto Suggest"] = ""

    def is_auto_suggested_value_field_disabled(self, field_label):
        """
        Implementing is auto suggested value field disabled functionality
        :param field_label:
        :return: True/False
        """
        field_element = None
        is_disabled = None
        if field_label.lower() == 'target fulfillment order':
            field_element = self.wait().until(EC.presence_of_element_located(self.target_fulfillment_order_input_field_locator))
        elif field_label.lower() == 'capacity saturation order':
            field_element = self.wait().until(EC.presence_of_element_located(self.capacity_saturation_order_input_field_locator))
        elif field_label.lower() == 'minimum direct percent':
            field_element = self.wait().until(EC.presence_of_element_located(self.minimum_direct_percent_input_field_locator))
        if field_element.get_attribute("disabled").lower() == 'true':
                is_disabled = True
        return is_disabled

    def click_add_route_class_button(self):
        """
        Implementing click add route class button functionality
        :return:
        """
        self.click_element(self.add_route_class_button_locator)
        self.new_route_class_data.clear()

    def click_add_edit_route_class_cancel_button(self):
        """
        Implementing click add edit route class cancel button functionality
        :return:
        """
        self.click_element(self.add_edit_route_class_cancel_button_locator, False, True)

    def get_auto_suggested_value(self, field_label):
        """
        Implementing get auto suggested value functionality
        :param field_label:
        :return: auto_suggested_value
        """
        field_element = None
        auto_suggested_value = None
        if field_label.lower() == 'target fulfillment order':
            field_element = self.wait().until(EC.presence_of_element_located(self.target_fulfillment_order_input_field_locator))
        elif field_label.lower() == 'capacity saturation order':
            field_element = self.wait().until(EC.presence_of_element_located(self.capacity_saturation_order_input_field_locator))
        elif field_label.lower() == 'minimum direct percent':
            field_element = self.wait().until(EC.presence_of_element_located(self.minimum_direct_percent_input_field_locator))
        auto_suggested_value = field_element.get_attribute("value")
        return auto_suggested_value

    def set_aep_distribution_group(self, dropdown_item):
        """
        Implementing set aep distribution group functionality
        :param dropdown_item:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.aep_distribution_group_dropdown_locator, dropdown_item)
        self.wait_for_ajax_spinner_load()
        self.new_route_class_data["AEP Distribution Group"] = dropdown_item
        self.grid_row_data["AEP Distribution Group"] = ""

    def select_selected_for_routing_checkbox(self):
        """
        Implementing select selected for routing checkbox functionality
        :return:
        """
        self.click_element(self.selected_for_routing_checkbox_locator, True)
        self.new_route_class_data["Selected for Routing"] = "Yes"
        self.grid_row_data["Selected for Routing"] = ""

    def select_cli_guarantee_checkbox(self):
        """
        Implementing select cli guarantee checkbox functionality
        :return:
        """
        self.click_element(self.cli_guarantee_checkbox_locator, True)
        self.new_route_class_data["CLI Guarantee"] = "Yes"
        self.grid_row_data["CLI Guarantee"] = ""

    def set_cdr_route_class(self, cdr_route_class):
        """
        Implementing set cdr route class functionality
        :param cdr_route_class:
        :return:
        """
        self.set_value_into_input_field(self.cdr_route_class_input_field_locator, cdr_route_class)
        self.new_route_class_data["CDR Route Class"] = cdr_route_class
        self.grid_row_data["CDR Route Class"] = ""

    def get_new_route_class_data(self):
        """
        Implementing get new route class data functionality
        :return: new_route_class_data
        """
        return self.new_route_class_data

    def get_route_class_grid_row_data(self):
        """
        Implementing get route class grid row data functionality
        :return: route_class_grid_row_data
        """
        self.route_class_grid_row_data = self.get_grid_row_details(self.route_class_grid_div_id, self.grid_row_data, self.route_class_data_grid_name)
        return self.route_class_grid_row_data

    def filter_route_class_grid(self, column_name, column_value):
        """
        Implementing filter route class grid functionality
        :param column_name:
        :param column_value:
        :return:
        """
        self.grid_filter_with_textbox(self.route_class_grid_div_id, column_name, column_value)
        self.wait_for_ajax_spinner_load()

    def click_route_class_grid_inline_action_button(self, route_class):
        """
        Implementing click route class grid inline action button functionality
        :param route_class:
        :return:
        """
        self.click_inline_action_button(self.route_class_grid_div_id, route_class, self.route_class_grid_checkbox_column_number)

    def click_network_codes_submenu(self):
        """
        Implementing click network codes submenu functionality
        :return:
        """
        self.click_element(self.network_codes_submenu_locator)

    def click_network_destinations_grid_first_row_inline_action_button(self):
        """
        Implementing click network destinations grid first row inline action button functionality
        :return:
        """
        self.click_inline_action_button(self.network_destinations_grid_div_id, None, self.network_destinations_grid_inline_action_column_number, True)

    def click_add_network_code_button(self):
        """
        Implementing click add network code button functionality
        :return:
        """
        self.click_element(self.add_network_code_button_locator)

    def click_add_cdr_match_button(self):
        """
        Implementing click add cdr match button functionality
        :return:
        """
        self.click_element(self.add_cdr_match_button_locator)

    def set_network_code(self, network_code_prefix):
        """
        Implementing set network code functionality
        :param network_code_prefix:
        :return: network_code
        """
        network_code = network_code_prefix + self.random_string_generator(4)
        self.set_value_in_grid_column(self.network_codes_grid_div_id, self.network_code_column_name, network_code, True)
        return network_code

    def set_network_code_begin_date(self, begin_date):
        """
        Implementing set network code begin date functionality
        :param begin_date:
        :return:
        """
        if begin_date == "":
            begin_date = self.get_current_date()
        self.set_value_in_grid_column(self.network_codes_grid_div_id, self.begin_date_column_name, begin_date)
        self.network_code_begin_date = begin_date

    def set_network_code_end_date(self, end_date):
        """
        Implementing set network code end date functionality
        :param end_date:
        :return:
        """
        begin_date = datetime.datetime.strptime(self.network_code_begin_date, '%m/%d/%Y')
        if end_date != "" and datetime.datetime.strptime(end_date, "%m/%d/%Y") > begin_date:
            self.set_value_in_grid_column(self.network_codes_grid_div_id, self.end_date_column_name, end_date)
        elif end_date == "":
            current_date = datetime.date.today()
            next_month = current_date.replace(day=28) + datetime.timedelta(days=4)
            end_date = next_month - datetime.timedelta(days=next_month.day)
            end_date = "%d/%d/%d" % (end_date.month, end_date.day, end_date.year)
            if datetime.datetime.strptime(end_date, "%m/%d/%Y") < begin_date:
                end_date = begin_date + datetime.timedelta(days=7)
                end_date = "%d/%d/%d" % (end_date.month, end_date.day, end_date.year)
            self.set_value_in_grid_column(self.network_codes_grid_div_id, self.end_date_column_name, end_date)
        else:
            end_date = begin_date + datetime.timedelta(days=7)
            end_date = "%d/%d/%d" % (end_date.month, end_date.day, end_date.year)
            self.set_value_in_grid_column(self.network_codes_grid_div_id, self.end_date_column_name, end_date)
        self.click_element(self.network_codes_popup_title_locator)

    def click_network_code_save_changes_button(self):
        """
        Implementing click network code save changes button functionality
        :return:
        """
        self.click_element(self.network_code_save_changes_button_locator)
        try:
            self.wait().until(EC.presence_of_element_located(self.success_message_locator), 'success message locator not found before specified time out')
            self.click_element(self.ok_button_locator, True)
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def click_network_codes_grid_inline_action_button(self, row_identifier_text):
        """
        Implementing click network codes grid inline action button functionality
        :param row_identifier_text:
        :return:
        """
        self.click_inline_action_button(self.network_codes_grid_div_id, row_identifier_text, self.network_codes_grid_inline_action_column_number)

    def select_network_code_delete_inline_item(self):
        """
        Implementing select network code delete inline item functionality
        :return:
        """
        self.select_inline_action_item(self.delete_inline_item)
        try:
            self.wait().until(EC.presence_of_element_located(self.network_code_delete_confirmation_message_locator), 'network code delete confirmation message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
            self.wait().until(EC.presence_of_element_located(self.network_code_delete_success_message_locator), 'network code delete success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def set_cdr_match(self, cdr_match):
        """
        Implementing set cdr match functionality
        :param cdr_match:
        :return:
        """
        self.set_value_in_grid_column(self.cdr_matches_grid_div_id, self.cdr_match_column_name, cdr_match, True)

    def set_cdr_match_begin_date(self, begin_date):
        """
        Implementing set cdr match begin date functionality
        :param begin_date:
        :return:
        """
        if begin_date == "":
            begin_date = self.get_current_date()
        self.set_value_in_grid_column(self.cdr_matches_grid_div_id, self.begin_date_column_name, begin_date)
        self.cdr_match_begin_date = begin_date

    def set_cdr_match_end_date(self, end_date):
        """
        Implementing set cdr match end date functionality
        :param end_date:
        :return:
        """
        begin_date = datetime.datetime.strptime(self.cdr_match_begin_date, '%m/%d/%Y')
        if end_date != "" and datetime.datetime.strptime(end_date, "%m/%d/%Y") > begin_date:
            self.set_value_in_grid_column(self.cdr_matches_grid_div_id, self.end_date_column_name, end_date)
        elif end_date == "":
            current_date = datetime.date.today()
            next_month = current_date.replace(day=28) + datetime.timedelta(days=4)
            end_date = next_month - datetime.timedelta(days=next_month.day)
            end_date = "%d/%d/%d" % (end_date.month, end_date.day, end_date.year)
            if datetime.datetime.strptime(end_date, "%m/%d/%Y") < begin_date:
                end_date = begin_date + datetime.timedelta(days=7)
                end_date = "%d/%d/%d" % (end_date.month, end_date.day, end_date.year)
            self.set_value_in_grid_column(self.cdr_matches_grid_div_id, self.end_date_column_name, end_date)
        else:
            end_date = begin_date + datetime.timedelta(days=7)
            end_date = "%d/%d/%d" % (end_date.month, end_date.day, end_date.year)
            self.set_value_in_grid_column(self.cdr_matches_grid_div_id, self.end_date_column_name, end_date)
        self.click_element(self.cdr_matches_popup_title_locator)

    def click_cdr_match_save_changes_button(self):
        """
        Implementing click cdr match save changes button functionality
        :return:
        """
        self.click_element(self.cdr_match_save_changes_button_locator)
        try:
            self.wait().until(EC.presence_of_element_located(self.success_message_locator), 'success message locator not found before specified time out')
            self.click_element(self.ok_button_locator, True)
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def click_cdr_matches_grid_inline_action_button(self, row_identifier_text):
        """
        Implementing click cdr matches grid inline action button functionality
        :param row_identifier_text:
        :return:
        """
        self.click_inline_action_button(self.cdr_matches_grid_div_id, row_identifier_text, self.cdr_matches_grid_inline_action_column_number)

    def select_cdr_match_delete_inline_item(self):
        """
        Implementing select cdr match delete inline item functionality
        :return:
        """
        self.select_inline_action_item(self.delete_inline_item)
        try:
            self.wait().until(EC.presence_of_element_located(self.cdr_match_delete_confirmation_message_locator), 'cdr match delete confirmation message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
            self.wait().until(EC.presence_of_element_located(self.cdr_match_delete_success_message_locator), 'cdr match delete success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def click_save_changes_button_without_confirmation(self):
        """
        Implementing click save changes button without confirmation functionality
        :return:
        """
        self.click_element(self.save_changes_button_locator, True)

    def click_add_network_destination_button(self):
        """
        Implementing click add network destination button functionality
        :return:
        """
        self.click_element(self.add_network_destination_button_locator)

    def set_network_destination(self, network_destination_prefix):
        """
        Implementing set network destination functionality
        :param network_destination_prefix:
        :return: network_destination
        """
        global network_destination
        network_destination = network_destination_prefix + self.random_string_generator(4)
        self.set_value_into_input_field(self.network_destination_textbox_locator, network_destination)
        return network_destination

    def set_destination_abbreviation(self, destination_abbreviation):
        """
        Implementing set destination abbreviation functionality
        :param destination_abbreviation:
        :return:
        """
        self.set_value_into_input_field(self.destination_abbreviation_textbox_locator, destination_abbreviation)

    def set_network_destination_country(self, country):
        """
        Implementing set network destination country functionality
        :param country:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.network_destination_country_kendo_dropdown_locator, country)

    def set_call_char(self, call_char):
        """
        Implementing set call char functionality
        :param call_char:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.call_char_kendo_dropdown_locator, call_char)

    def set_network_destination_begin_date(self, begin_date):
        """
        Implementing set network destination begin date functionality
        :param begin_date:
        :return: begin_date
        """
        if begin_date == "":
            begin_date = datetime.date.today()
            begin_date = "%d/%d/%d" % (begin_date.month, begin_date.day, begin_date.year)
        self.set_value_into_input_field(self.network_destination_begin_date_inputbox_locator, begin_date)
        self.network_destination_begin_date = begin_date
        return begin_date

    def set_network_destination_end_date(self, end_date):
        """
        Implementing set network destination end date functionality
        :param end_date:
        :return: end_date
        """
        begin_date = datetime.datetime.strptime(self.network_destination_begin_date, '%m/%d/%Y')
        if end_date != "" and datetime.datetime.strptime(end_date, "%m/%d/%Y") > begin_date:
            self.set_value_into_input_field(self.network_destination_end_date_inputbox_locator, end_date)
        elif end_date == "":
            current_date = datetime.date.today()
            next_month = current_date.replace(day=28) + datetime.timedelta(days=4)
            end_date = next_month - datetime.timedelta(days=next_month.day)
            end_date = "%d/%d/%d" % (end_date.month, end_date.day, end_date.year)
            if datetime.datetime.strptime(end_date, "%m/%d/%Y") < begin_date:
                end_date = begin_date + datetime.timedelta(days=7)
                end_date = "%d/%d/%d" % (end_date.month, end_date.day, end_date.year)
            self.set_value_into_input_field(self.network_destination_end_date_inputbox_locator, end_date)
        else:
            end_date = begin_date + datetime.timedelta(days=7)
            end_date = "%d/%d/%d" % (end_date.month, end_date.day, end_date.year)
            self.set_value_into_input_field(self.network_destination_end_date_inputbox_locator, end_date)
        return end_date

    def set_internal_code(self, internal_code):
        """
        Implementing set internal code functionality
        :param internal_code:
        :return:
        """
        self.set_value_into_input_field(self.internal_code_inputbox_locator, internal_code)

    def set_external_code(self, external_code):
        """
        Implementing set external code functionality
        :param external_code:
        :return:
        """
        self.set_value_into_input_field(self.external_code_inputbox_locator, external_code)

    def get_network_destinations_grid_first_row_details(self):
        """
        Implementing get network destinations grid first row details functionality
        :return: network_destination_grid_row_data
        """
        self.grid_row_data.clear()
        self.grid_row_data = {"Network Destination": "", "Destination Abbreviation": "", "Call Char": "", "Country": "", "Begin Date": "", "End Date": "", "Internal Code": "", "External Code": ""}
        self.network_destination_grid_row_data = self.get_grid_row_details(self.network_destinations_grid_div_id, self.grid_row_data, self.network_destinations_data_grid_name)
        return self.network_destination_grid_row_data

    def add_duplicate_network_destination(self):
        """
        Implementing add duplicate network destination functionality
        :return:
        """
        self.set_value_into_input_field(self.network_destination_textbox_locator, self.network_destination_grid_row_data["Network Destination"])
        self.set_value_into_input_field(self.destination_abbreviation_textbox_locator, self.network_destination_grid_row_data["Destination Abbreviation"])
        if self.network_destination_grid_row_data["Country"] == "":
            self.click_element(self.network_destination_country_kendo_dropdown_locator)
            self.click_element(self.network_destination_first_country_locator)
        else:
            self.single_selection_from_static_kendo_dropdown(self.network_destination_country_kendo_dropdown_locator, self.network_destination_grid_row_data["Country"])
        self.single_selection_from_kendo_dropdown(self.call_char_kendo_dropdown_locator, self.network_destination_grid_row_data["Call Char"])
        self.set_value_into_input_field(self.network_destination_begin_date_inputbox_locator, self.network_destination_grid_row_data["Begin Date"])
        self.set_value_into_input_field(self.network_destination_end_date_inputbox_locator, self.network_destination_grid_row_data["End Date"])
        self.click_element(self.add_network_destination_save_button_locator)
        try:
            self.wait().until(EC.visibility_of_element_located(self.error_popup_title_locator), 'error popup title locator not found before specified time out')
            self.click_element(self.ok_button_locator, True)
        except:
            raise

    def click_add_network_destination_save_button(self):
        """
        Implementing click add network destination save button functionality
        :return:
        """
        self.click_element(self.add_network_destination_save_button_locator)
        try:
            self.wait().until(EC.visibility_of_element_located(self.success_message_locator), 'success message locator not found before specified time out')
            self.click_element(self.ok_button_locator, True)
        except:
            raise

    def set_country_for_search(self, country_list):
        """
        Implementing set country for search functionality
        :param country_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.country_kendo_dropdown_locator, country_list)
        self.wait_for_ajax_spinner_load()

    def set_network_destination_for_search(self, network_destination_list):
        """
        Implementing set network destination for search functionality
        :param network_destination_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.network_destination_search_kendo_dropdown_locator, network_destination_list)
        self.click_element(self.page_header_locator)

    def set_value_in_network_destinations_grid_first_row_column(self, column_name, column_value):
        """
        Implementing set value in network destinations grid first row column functionality
        :param column_name:
        :param column_value:
        :return:
        """
        if column_name == self.network_destination_column_name:
            column_value = column_value + self.random_string_generator(4)
        self.set_value_in_grid_column(self.network_destinations_grid_div_id, column_name, column_value)
        self.click_element(self.page_header_locator)

    def click_route_class_export_to_excel_button(self):
        """
        Implementing click route class export to excel button functionality
        :return:
        """
        self.click_element(self.route_class_export_to_excel_button_locator, True)

    def compare_number_plan_uploads_grid_row_count_after_upload(self):
        """
        Implementing compare number plan uploads grid row count after upload functionality
        :return: True/False
        """
        timeout = 180
        comparison_result = False
        try:
            end_time = time.time() + timeout
            while time.time() < end_time:
                self.wait(5)
                self.click_number_plan_uploads_search_button()
                self.wait_for_ajax_spinner_load()
                number_plan_uploads_grid_row_count_span_element = self.wait().until(EC.visibility_of_element_located(self.number_plan_uploads_grid_row_count_span_locator), 'number plan uploads grid row count span locator not found before specified timeout')
                current_count = number_plan_uploads_grid_row_count_span_element.text
                current_count = current_count.split()
                if int(current_count[1]) == 1:
                    comparison_result = True
                    break
        except:
            raise
        return comparison_result

    def is_countries_grid_total_number_of_records_returned(self):
        """
        Implementing is countries grid total number of records returned functionality
        :return: True/False
        """
        return self.is_element_present(self.countries_grid_total_number_of_records_count_locator)

    def is_source_policies_grid_total_number_of_records_returned(self):
        """
        Implementing is source policies grid total number of records returned functionality
        :return: True/False
        """
        return self.is_element_present(self.source_policies_grid_total_number_of_records_count_locator)

    def expand_rating_menu(self):
        """
        Implementing expand rating menu functionality
        :return:
        """
        self.click_element(self.rating_menu_locator)

    def click_daylight_saving_zone_submenu(self):
        """
        Implementing click daylight saving zone submenu functionality
        :return:
        """
        self.set_existing_handles()
        self.click_element(self.daylight_saving_zone_submenu_locator, hover=True)

    def click_bill_cycle_and_settlement_management_submenu(self):
        """
        Implementing click bill cycle and settlement management submenu functionality
        :return:
        """
        self.set_existing_handles()
        self.click_element(self.cycle_and_settlement_management_submenu_locator)

    def expand_bill_and_audit_menu(self):
        """
        Implementing expand bill and audit menu functionality
        :return:
        """
        self.click_element(self.bill_and_audit_menu_locator)

    def click_statement_numbering_templates_submenu(self):
        """
        Implementing click statement numbering templates submenu functionality
        :return:
        """
        self.set_existing_handles()
        self.click_element(self.statement_numbering_templates_submenu_locator)

    def click_categories_grid_first_row_inline_action_button(self):
        """
        Implementing click categories grid first row inline action button functionality
        :return:
        """
        self.click_inline_action_button(self.categories_grid_div_id, None, self.categories_grid_inline_action_column_number, True)

    def set_view_edit_category_type(self, category_type):
        """
        Implementing set view edit category type functionality
        :param category_type:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.view_edit_category_type_dropdown_arrow_locator, category_type)

    def set_view_edit_category_number_plan_type(self, number_plan_type):
        """
        Implementing set view edit category number plan type functionality
        :param number_plan_type:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.view_edit_category_number_plan_type_dropdown_arrow_locator, number_plan_type)

    def set_view_edit_category_number_plan(self, number_plan):
        """
        Implementing set view edit category number plan functionality
        :param number_plan:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.view_edit_category_number_plan_dropdown_arrow_locator, number_plan)

    def is_exchange_rates_search_successful(self):
        """
        Implementing is exchange rates search successful functionality
        :return: True/False
        """
        return self.is_element_present(self.exchange_rates_grid_row_count_locator)

    def is_country_groups_search_successful(self):
        """
        Implementing is country groups search successful functionality
        :return: True/False
        """
        return self.is_element_present(self.country_groups_grid_row_count_locator)

    def click_rating_method_submenu(self):
        """
        Implementing click rating method submenu functionality
        :return:
        """
        self.set_existing_handles()
        self.click_element(self.rating_method_submenu_locator)

    def get_country_grid_last_modified_date_column_value(self):
        """
        Implementing get country grid last modified date column value functionality
        :return:
        """
        self.country_grid_row_count = self.get_grid_row_count(self.countries_grid_total_number_of_records_count_locator, count_text_index=2)
        return self.get_specific_column_value_from_grid(self.countries_grid_div_id, self.country_grid_row_count, self.last_modified_column_name, self.country_grid_data_grid_name)

    def get_country_group_management_grid_last_modified_date_column_value(self):
        """
        Implementing get country group management grid last modified date column value functionality
        :return:
        """
        self.country_group_management_grid_row_count = self.get_grid_row_count(self.country_groups_grid_row_count_locator, count_text_index=2)
        return self.get_specific_column_value_from_grid(self.country_group_management_grid_div_id, self.country_group_management_grid_row_count, self.last_modified_column_name, self.country_group_management_grid_data_grid_name)

    def select_business_admin_dashboard_tab(self):
        """
        Implementing select business admin dashboard tab functionality
        :return:
        """
        self.select_static_tab(self.business_admin_dashboard_tab_locator, message='business admin dashboard tab locator not found before specified time out')

    def get_number_plan_grid_last_modified_date_column_value(self):
        """
        Implementing get number plan grid last modified date column value functionality
        :return:
        """
        self.number_plan_grid_row_count = self.get_grid_row_count(self.number_plan_grid_row_count_span_locator, count_text_index=1)
        return self.get_specific_column_value_from_grid(self.number_plan_grid_div_id, self.number_plan_grid_row_count, self.last_modified_column_name, self.number_plan_grid_data_grid_name)

    def get_number_plan_uploads_from_date(self):
        """
        Implementing get number plan from date functionality
        :return:
        """
        return self.get_text_from_element(self.from_date_locator, is_a_input_field=True)

    def get_number_plan_uploads_to_date(self):
        """
        Implementing get number plan to date functionality
        :return:
        """
        return self.get_text_from_element(self.to_date_locator, is_a_input_field=True)

    def get_number_plan_uploads_grid_upload_date(self):
        """
        Implementing get number plan uploads grid upload date functionality
        :return:
        """
        try:
            self.number_plan_uploads_grid_row_count = self.get_grid_row_count(self.number_plan_uploads_grid_row_count_span_locator, count_text_index=1)
        except:
            self.number_plan_uploads_grid_row_count = 2
            pass
        return self.get_specific_column_value_from_grid(self.number_plan_uploads_grid_div_id, self.number_plan_uploads_grid_row_count, self.upload_date_column_name, self.number_plan_uploads_grid_data_grid_name)

    def get_number_plan_uploads_grid_modified_date(self):
        """
        Implementing get number plan uploads grid modified date functionality
        :return:
        """
        try:
            self.number_plan_uploads_grid_row_count = self.get_grid_row_count(self.number_plan_uploads_grid_row_count_span_locator, count_text_index=1)
        except:
            self.number_plan_uploads_grid_row_count = 2
            pass
        return self.get_specific_column_value_from_grid(self.number_plan_uploads_grid_div_id, self.number_plan_uploads_grid_row_count, self.modified_date_column_name, self.number_plan_uploads_grid_data_grid_name)

    def get_network_codes_begin_date(self):
        """
        Implementing get network codes begin date functionality
        :return:
        """
        return self.get_text_from_element(self.begin_date_locator, is_a_input_field=True)

    def get_network_codes_grid_begin_date_column_value(self):
        """
        Implementing get network codes grid begin date column value functionality
        :return:
        """
        try:
            self.network_codes_grid_row_count = self.get_grid_row_count(self.network_codes_grid_row_count_span_locator, count_text_index=2)
        except:
            self.network_codes_grid_row_count = 2
            pass
        return self.get_specific_column_value_from_grid(self.network_codes_destination_grid_div_id, self.network_codes_grid_row_count, self.begin_date_column_name, self.network_codes_grid_data_grid_name)

    def get_network_codes_grid_modified_date_column_value(self):
        """
        Implementing get network codes grid modified date column value functionality
        :return:
        """
        try:
            self.network_codes_grid_row_count = self.get_grid_row_count(self.network_codes_grid_row_count_span_locator, count_text_index=2)
        except:
            self.network_codes_grid_row_count = 2
            pass
        return self.get_specific_column_value_from_grid(self.network_codes_destination_grid_div_id, self.network_codes_grid_row_count, self.modified_date_column_name, self.network_codes_grid_data_grid_name)

    def get_origin_set_management_select_date(self):
        """
        Implementing get origin set management select date functionality
        :return:
        """
        return self.get_text_from_element(self.select_date_locator, is_a_input_field=True)

    def get_origin_set_management_grid_begin_date_column_value(self):
        """
        Implementing get origin set management grid begin date column value functionality
        :return:
        """
        try:
            self.origin_set_management_grid_row_count = self.get_grid_row_count(self.origin_set_management_grid_row_count_span_locator, count_text_index=2)
        except:
            self.origin_set_management_grid_row_count = 2
            pass
        return self.get_specific_column_value_from_grid(self.origin_set_management_grid_div_id, self.origin_set_management_grid_row_count, self.begin_date_column_name)

    def get_origin_set_management_grid_modified_date_column_value(self):
        """
        Implementing get origin set management grid modified date column value functionality
        :return:
        """
        try:
            self.origin_set_management_grid_row_count = self.get_grid_row_count(self.origin_set_management_grid_row_count_span_locator, count_text_index=2)
        except:
            self.origin_set_management_grid_row_count = 2
            pass
        return self.get_specific_column_value_from_grid(self.origin_set_management_grid_div_id, self.origin_set_management_grid_row_count, self.modified_date_column_name)

    def expand_company_menu(self):
        """
        Implementing expand company menu functionality
        :return:
        """
        self.click_element(self.company_menu_locator, script_executor=True)

    def click_company_submenu(self):
        """
        Implementing click company submenu functionality
        :return:
        """
        self.click_element(self.company_submenu_locator, script_executor=True)

    def get_company_grid_last_modified_column_value(self):
        """
        Implementing get company grid last modified column value functionality
        :return:
        """
        try:
            self.company_grid_row_count = self.get_grid_row_count(self.company_grid_row_count_span_locator, count_text_index=1)
        except:
            self.company_grid_row_count = 2
            pass
        return self.get_specific_column_value_from_grid(self.company_grid_div_id, self.company_grid_row_count, self.last_modified_column_name, self.company_grid_data_grid_name)

    def get_currency_and_exchange_rates_begin_date(self):
        """
        Implementing get currency and exchange rates begin date functionality
        :return:
        """
        return self.get_text_from_element(self.begin_date_locator, is_a_input_field=True)

    def get_exchange_rate_column_value(self):
        """
        Implementing get exchange rate column value functionality
        :return:
        """
        try:
            self.exchange_rates_grid_row_count = self.get_grid_row_count(self.exchange_rates_grid_row_count_locator, count_text_index=2)
        except:
            self.exchange_rates_grid_row_count = 2
            pass
        return self.get_specific_column_value_from_grid(self.exchange_rates_grid_div_id, self.exchange_rates_grid_row_count, self.exchange_rate_column_name, self.exchange_rates_data_grid_name)

    def get_exchange_rates_begin_date_column_value(self):
        """
        Implementing get exchange rate begin date column value functionality
        :return:
        """
        try:
            self.exchange_rates_grid_row_count = self.get_grid_row_count(self.exchange_rates_grid_row_count_locator, count_text_index=2)
        except:
            self.exchange_rates_grid_row_count = 2
            pass
        return self.get_specific_column_value_from_grid(self.exchange_rates_grid_div_id, self.exchange_rates_grid_row_count, self.begin_date_column_name, self.exchange_rates_data_grid_name)

    def get_exchange_rates_last_modified_column_value(self):
        """
        Implementing get exchange rate last modified column value functionality
        :return:
        """
        try:
            self.exchange_rates_grid_row_count = self.get_grid_row_count(self.exchange_rates_grid_row_count_locator, count_text_index=2)
        except:
            self.exchange_rates_grid_row_count = 2
            pass
        return self.get_specific_column_value_from_grid(self.exchange_rates_grid_div_id, self.exchange_rates_grid_row_count, self.last_modified_column_name, self.exchange_rates_data_grid_name)

    def click_currency_button(self):
        """
        Implementing click currency button functionality
        :return:
        """
        self.click_element(self.currency_button_locator, script_executor=True)

    def get_currency_grid_last_modified_column_value(self):
        """
        Implementing get currency grid last modified column value functionality
        :return:
        """
        try:
            self.currency_grid_row_count = self.get_grid_row_count(self.currency_grid_row_count_locator, count_text_index=2)
        except:
            self.currency_grid_row_count = 2
            pass
        return self.get_specific_column_value_from_grid(self.currency_grid_div_id, self.currency_grid_row_count, self.last_modified_column_name, self.currency_grid_data_grid_name)

    def get_categories_grid_modified_date(self):
        """
        Implementing get categories grid modified date column value functionality
        :return:
        """
        try:
            self.categories_grid_row_count = self.get_grid_row_count(self.categories_grid_row_count_locator, count_text_index=2)
        except:
            self.categories_grid_row_count = 2
            pass
        return self.get_specific_column_value_from_grid(self.categories_grid_div_id, self.categories_grid_row_count, self.modified_date_column_name, self.categories_data_grid_name)

    def get_route_classes_minimum_direct_percent_column_value(self):
        """
        Implementing get route classes minimum direct percent column value functionality
        :return:
        """
        try:
            self.route_classes_grid_row_count = self.get_grid_row_count(self.route_classes_grid_row_count_locator, count_text_index=1)
        except:
            self.route_classes_grid_row_count = 2
            pass
        return self.get_specific_column_value_from_grid(self.route_class_grid_div_id, self.route_classes_grid_row_count, self.minimum_direct_percent_column_name, self.route_class_data_grid_name)


    def get_source_and_policy_grid_modified_date_column_value(self):
        """
        Implementing get source and policy grid modified date column value functionality
        :return:
        """
        try:
            self.source_and_policy_grid_row_count = self.get_grid_row_count(self.source_and_policy_grid_row_count_locator, count_text_index=4)
        except:
            self.source_and_policy_grid_row_count = 2
            pass
        return self.get_specific_column_value_from_grid(self.source_grid_div_id, self.source_and_policy_grid_row_count, self.modified_date_column_name, self.source_grid_data_grid_name)

    def click_destination_submenu(self):
        """
        Implementing click destination submenu functionality
        :return:
        """
        self.set_existing_handles()
        self.click_element(self.destination_submenu_locator, script_executor=True)

    def get_origin_set_name(self):
        """
        Implementing get origin set name functionality
        :return: origin_set_name
        """
        global origin_set_name
        return origin_set_name

    def get_settlement_origin_name(self):
        """
        Implementing get settlement origin name functionality
        :return: settlement_origin
        """
        global settlement_origin
        return settlement_origin

    def set_rule_of_invalid_a(self, dropdown_item):
        """
        Implementing set rule of invalid a functionality
        :param dropdown_item:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.rule_for_invalid_kendo_dropdown_locator, dropdown_item)
        self.wait_for_ajax_spinner_load()

    def click_next_button(self):
        """
        Implementing click next button functionality
        :return:
        """
        self.click_element(self.next_button_locator, True)

    def click_new_csnp_button(self):
        """
        Implementing click new csnp button functionality
        :return:
        """
        self.click_element(self.new_csnp_button_locator, True)

    def set_csnp_type(self, csnp_type):
        """
        Implementing set csnp type functionality
        :param csnp_type:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.csnp_type_dropdown_locator, csnp_type)

    def set_csnp_number_plan(self, number_plan_prefix):
        """
        Implementing set csnp number plan functionality
        :param number_plan_prefix:
        :return:
        """
        global csnp_number_plan
        csnp_number_plan = number_plan_prefix + self.random_string_generator(6)
        self.set_value_into_input_field(self.csnp_number_plan_textbox_locator, csnp_number_plan)

    def get_csnp_number_plan(self):
        """
        Implementing get csnp number plan functionality
        :return: csnp_number_plan
        """
        global csnp_number_plan
        return csnp_number_plan

    def set_csnp_number_plan_abbreviation(self, number_plan_abbreviation_prefix):
        """
        Implementing set csnp number plan abbreviation functionality
        :param number_plan_abbreviation_prefix:
        :return:
        """
        csnp_number_plan_abbreviation = number_plan_abbreviation_prefix + self.random_string_generator(6)
        self.set_value_into_input_field(self.number_plan_abbreviation_inputbox_locator, csnp_number_plan_abbreviation)

    def set_services(self, services_list):
        """
        Implementing set services functionality
        :param services_list:
        :return:
        """
        try:
            self.multiple_items_selection_from_kendo_dropdown(self.services_dropdown_locator, services_list)
        except:
            self.click_element(self.first_dropdown_item_locator, True)

    def set_default_primary_blending_method(self, default_primary_blending_method):
        """
        Implementing set default primary blending method functionality
        :param default_primary_blending_method:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.default_primary_blending_method_dropdown_locator, default_primary_blending_method)

    def set_default_destination_type(self, default_destination_type):
        """
        Implementing set default destination type functionality
        :param default_destination_type:
        :return:
        """
        try:
            self.click_element(self.default_destination_type_dropdown_locator, True)
            dropdown_item_locator = (By.XPATH, "//ul[@aria-hidden='false' and @role='listbox']/descendant::li[contains(text(), '%s')]" % default_destination_type)
            self.click_element(dropdown_item_locator, script_executor=True)
        except:
            self.click_element(self.first_dropdown_item_locator, True)

    def set_default_call_char(self, default_call_char):
        """
        Implementing set default call char functionality
        :param default_call_char:
        :return:
        """
        try:
            self.single_selection_from_static_kendo_dropdown(self.default_call_char_dropdown_locator, default_call_char)
        except:
            self.click_element(self.first_dropdown_item_locator, True)

    def set_default_rating_method(self, default_rating_method):
        """
        Implementing set default rating method functionality
        :param default_rating_method:
        :return:
        """
        try:
            self.single_selection_from_static_kendo_dropdown(self.default_rating_method_dropdown_locator, default_rating_method)
        except:
            self.click_element(self.first_dropdown_item_locator, True)

    def set_enter_min(self, enter_min):
        """
        Implementing set enter min functionality
        :param enter_min:
        :return:
        """
        self.click_element(self.enter_min_textbox_locator)
        self.set_value_into_input_field(self.enter_min_textfield_locator, enter_min)

    def set_enter_max(self, enter_max):
        """
        Implementing set enter max functionality
        :param enter_max:
        :return:
        """
        self.click_element(self.enter_max_textbox_locator)
        self.set_value_into_input_field(self.enter_max_textfield_locator, enter_max)

    def set_define_fixed_blending_security(self, fixed_blending_security):
        """
        Implementing set define fixed blending security functionality
        :param fixed_blending_security:
        :return:
        """
        self.click_element(self.define_fixed_blending_security_inputbox_locator)
        self.set_value_into_input_field(self.define_fixed_blending_security_inputfield_locator, fixed_blending_security)

    def set_define_minmax_blending_security(self, minmax_blending_security):
        """
        Implementing set define minmax blending security functionality
        :param minmax_blending_security:
        :return:
        """
        self.click_element(self.define_minmax_blending_security_inputbox_locator)
        self.set_value_into_input_field(self.define_minmax_blending_security_inputfield_locator, minmax_blending_security)

    def click_new_csnp_save_button(self):
        """
        Implementing click new csnp save button functionality
        :return:
        """
        self.click_element(self.add_dialed_digits_ok_button_locator, True)
        try:
            self.wait().until(EC.visibility_of_element_located(self.success_message_locator), 'success message locator not found before specified time out')
            self.click_element(self.ok_button_locator, True)
        except:
            raise

    def get_network_destination(self):
        """
        Implementing get network destination functionality
        :return: network destination
        """
        global network_destination
        return network_destination

    def get_region_name(self):
        """
        Implementing get region name functionality
        :return: region_name
        """
        global region_name
        return region_name

    def get_country_name(self):
        """
        Implementing get country name functionality
        :return: country name
        """
        global full_country_name
        return full_country_name

    def click_country_bulk_edit_save_changes_button(self):
        """
        Implementing click country bulk edit save changes button functionality
        :return:
        """
        self.click_element(self.save_changes_button_locator, True)
        try:
            self.wait().until(EC.visibility_of_element_located(self.success_message_locator), 'success message locator not found before specified time out')
            self.click_element(self.ok_button_locator, True)
        except:
            pass
        self.wait_for_ajax_spinner_load()

    def get_source_name(self):
        """
        Implementing get source name functionality
        :return: source_name
        """
        global source_name
        return source_name

    def set_qos_number_plan(self, number_plan):
        """
        Implementing set qos number plan functionality
        :param number_plan:
        :return:
        """
        try:
            self.single_selection_from_static_kendo_dropdown(self.number_plan_dropdown_locator, number_plan)
            self.wait_for_ajax_spinner_load()
        except:
            pass

    def set_qos_call_type(self, call_type):
        """
        Implementing set qos call type functionality
        :param call_type:
        :return:
        """
        try:
            self.single_selection_from_kendo_dropdown(self.call_type_dropdown_locator, call_type)
            self.wait_for_ajax_spinner_load()
        except:
            pass

    def set_wholesale_solution_type(self, solution_type):
        """
        Implementing set wholesale solution type functionality
        :param solution_type:
        :return:
        """
        try:
            self.single_selection_from_kendo_dropdown(self.wholesale_solution_type_dropdown_locator, solution_type)
            self.wait_for_ajax_spinner_load()
        except:
            pass

    def set_settlement_origin_dialed_digit_type(self, dial_digit_type):
        """
        Implementing set settlement origin dialed digit type functionality
        :param dial_digit_type:
        :return:
        """
        try:
            self.single_selection_from_static_kendo_dropdown(self.settlement_origin_dialed_digit_type_dropdown_locator, dial_digit_type)
        except:
            pass

    def click_new_currency_button(self):
        """
        Implementing click new currency button functionality
        :return:
        """
        self.click_element(self.new_currency_button_locator, script_executor=True)

    def set_currency_name(self, currency_name_prefix, without_random_data):
        """
        Implementing set currency name functionality
        :param currency_name_prefix:
        :return:
        """
        global currency_name
        if without_random_data:
            currency_name = currency_name_prefix
        else:
            currency_name = currency_name_prefix + self.random_string_generator(5)
        self.set_value_into_input_field(self.currency_name_input_field_locator, currency_name)

    def set_currency_abbreviation(self, currency_abbreviation_prefix):
        """
        Implementing set currency abbreviation functionality
        :param currency_abbreviation_prefix:
        :return:
        """
        currency_abbreviation = currency_abbreviation_prefix + self.random_string_generator(5)
        self.set_value_into_input_field(self.currency_abbreviation_input_field_locator, currency_abbreviation)

    def set_currency_symbol(self):
        """
        Implementing set currency symbol functionality
        :return:
        """
        currency_symbol = self.random_string_generator(4)
        self.set_value_into_input_field(self.currency_symbol_input_field_locator, currency_symbol)

    def click_new_currency_save_button(self):
        """
        Implementing click new currency save button functionality
        :return:
        """
        self.click_element(self.new_currency_save_button_locator)
        try:
            self.wait().until(EC.visibility_of_element_located(self.success_message_locator), 'success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise

    def get_currency_name(self):
        """
        Implementing get currency name functionality
        :return: currency_name
        """
        global currency_name
        return currency_name

    def move_available_destinations_to_destination(self, destination_list):
        """
        Implementing move available destinations to destination functionality
        :param destination_list:
        :return:
        """
        if len(destination_list) > 0:
            self.move_available_items_to_destination(self.available_destinations_selectbox_id, destination_list)
        else:
            move_all_countries_to_destination_element = self.wait().until(EC.visibility_of_element_located(self.move_all_countries_to_destination_locator), 'move all countries to destination locator not found before specified time out')
            move_all_countries_to_destination_element.click()
            self.wait_for_ajax_spinner_load()

    def click_initialize_button(self):
        """
        Implementing click initialize button functionality
        :return:
        """
        self.click_element(self.route_class_initialize_button_locator)
        try:
            self.wait().until(EC.visibility_of_element_located(self.initialize_route_class_message_locator), 'warning message not found before specified time out')
            self.wait_for_ajax_spinner_load()
            self.click_element(self.ok_button_locator, True)
            self.wait().until(EC.visibility_of_element_located(self.route_class_success_message_locator), 'success message not found before specified time out')
            self.wait_for_ajax_spinner_load()
            self.click_element(self.ok_button_locator, True)
        except:
            pass
        self.wait_for_ajax_spinner_load()

    def get_route_class_name(self):
        """
        Implementing get route class name functionality
        :return route_class_name:
        """
        global route_class_name
        return route_class_name

    def set_wholesale_type(self, dropdown_item):
        """
        Implementing set wholesale type functionality
        :param dropdown_item:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.wholesale_type_dropdown_locator, dropdown_item)
        self.wait_for_ajax_spinner_load()

    def move_first_category_to_destination(self):
        """
        Implementing move first category to destination functionality
        :return:
        """
        first_available_category_element = self.wait().until(EC.presence_of_element_located(self.first_available_category_locator), 'first available category locator not found before specified time out')
        self.first_category_list = [first_available_category_element.text]
        self.move_available_items_to_destination(self.available_countries_selection_id, self.first_category_list)

    def reassign_category_to_source(self):
        """
        Implementing reassign category to source functionality
        :return:
        """
        self.move_destination_items_to_source(self.assigned_categories_selection_id, self.first_category_list)

    def click_internal_cost_adjustment_submenu(self):
        """
        Implementing click internal cost adjustment submenu functionality
        :return:
        """
        internal_cost_adjustment_submenu_element = self.wait().until(EC.presence_of_element_located(self.internal_cost_adjustment_submenu_locator), 'internal cost adjustment submenu locator not found before specified time out')
        self.hover(internal_cost_adjustment_submenu_element)
        self.script_executor_click(internal_cost_adjustment_submenu_element)
        self.wait_for_ajax_spinner_load()

    def is_network_codes_screen_loaded(self):
        """
        Implementing is network codes screen loaded functionality
        :return: True/False
        """
        return self.is_element_present(self.add_network_destination_button_locator)

    def expand_translate_menu(self):
        """
        Implementing expand translate menu functionality
        :return:
        """
        translate_menu_element = self.wait().until(EC.presence_of_element_located(self.translate_menu_locator), 'translate menu locator not found before specified time out')
        self.script_executor_click(translate_menu_element)

    def click_calendar_provisioning_submenu(self):
        """
        Implementing click calendar provisioning submenu functionality
        :return:
        """
        calendar_provisioning_submenu_element = self.wait().until(EC.presence_of_element_located(self.calendar_provisioning_submenu_locator), 'calendar provisioning submenu locator not found before specified time out')
        self.script_executor_click(calendar_provisioning_submenu_element)
        self.wait_for_ajax_spinner_load()

    def is_calendar_provisioning_management_screen_loaded(self):
        """
        Implementing is calendar provisioning management screen loaded functionality
        :return:
        """
        return self.is_element_present(self.calendar_provisioning_management_screen_header_locator)

    def click_rate_dimension_template_submenu(self):
        """
        Implementing click rate dimension template submenu functionality
        :return:
        """
        self.set_existing_handles()
        self.click_element(self.rate_dimension_template_submenu_locator, script_executor=True)

    def click_audit_cycle_and_settlement_management_submenu(self):
        """
        Implementing click audit cycle and settlement management submenu functionality
        :return:
        """
        self.set_existing_handles()
        self.click_element(self.audit_cycle_and_settlement_management_submenu_locator, script_executor=True)

    def is_cycle_and_settlement_management_screen_loaded(self):
        """
        Implementing is cycle and settlement management screen loaded functionality
        :return:
        """
        self.switch_to_window()
        self.switch_to_frame(self.ixaudit_dotnetpage_frame_locator)
        status = self.is_element_present(self.cycle_and_settlement_management_screen_title_locator)
        self.switch_to_default_content()
        return status

    def click_customer_rounding_rule_definition_submenu(self):
        """
        Implementing click customer rounding rule definition submenu functionality
        :return:
        """
        self.set_existing_handles()
        self.click_element(self.customer_rounding_rule_definition_submenu_locator, script_executor=True)

    def is_customer_rounding_rule_definition_screen_loaded(self):
        """
        Implementing is customer rounding rule definition screen loaded functionality
        :return:
        """
        self.switch_to_window()
        self.switch_to_frame(self.ixtrade_custrrcont_frame_locator)
        status = self.is_element_present(self.customer_rounding_rule_definition_screen_title_locator)
        self.switch_to_default_content()
        return status

    def click_adjustment_folder_approval_submenu(self):
        """
        Implementing click adjustment folder approval submenu functionality
        :return:
        """
        self.set_existing_handles()
        self.click_element(self.adjustment_folder_approval_submenu_locator)
        self.switch_to_window()

    def is_adjustment_folder_approval_page_loaded_properly(self):
        """
        Implementing is adjustment folder approval page loaded properly functionality
        :return: True/False
        """
        loaded_properly = False
        self.switch_to_frame(self.dot_net_page_frame_locator)
        if self.is_element_present(self.adjustment_folder_approval_page_title_locator) is True:
            loaded_properly = True
        self.switch_to_default_content()
        self.close_browser()
        self.switch_to_previous_window()
        return loaded_properly

    def click_audit_statement_fields_submenu(self):
        """
        Implementing click audit statement fields submenu functionality
        :return:
        """
        self.set_existing_handles()
        self.click_element(self.audit_statement_fields_submenu_locator)
        self.switch_to_window()

    def is_audit_statement_fields_page_loaded_properly(self):
        """
        Implementing is audit statement fields page loaded properly functionality
        :return: True/False
        """
        loaded_properly = False
        self.switch_to_frame(self.header_frame_locator)
        if self.is_element_present(self.statements_menu_locator) is True:
            loaded_properly = True
        self.switch_to_default_content()
        self.close_browser()
        self.switch_to_previous_window()
        return loaded_properly

    def click_bill_statement_fields_submenu(self):
        """
        Implementing click bill statement fields submenu functionality
        :return:
        """
        self.set_existing_handles()
        self.click_element(self.bill_statement_fields_submenu_locator)
        self.switch_to_window()

    def is_bill_statement_fields_page_loaded_properly(self):
        """
        Implementing is bill statement fields page loaded properly functionality
        :return: True/False
        """
        loaded_properly = False
        self.switch_to_frame(self.list_frame_locator)
        if self.is_element_present(self.statement_fields_title_locator) is True:
            loaded_properly = True
        self.switch_to_default_content()
        self.close_browser()
        self.switch_to_previous_window()
        return loaded_properly

    def click_charge_categories_submenu(self):
        """
        Implementing click charge categories submenu functionality
        :return:
        """
        self.set_existing_handles()
        self.click_element(self.charge_categories_submenu_loctor)
        self.switch_to_window()

    def is_charge_categories_page_loaded_properly(self):
        """
        Implementing is charge categories page loaded properly functionality
        :return: True/False
        """
        loaded_properly = False
        self.switch_to_frame(self.list_frame_locator)
        if self.is_element_present(self.charge_categories_title_locator) is True:
            loaded_properly = True
        self.switch_to_default_content()
        self.close_browser()
        self.switch_to_previous_window()
        return loaded_properly

    def click_cover_letter_templates_submenu(self):
        """
        Implementing click cover letter templates submenu functionality
        :return:
        """
        self.set_existing_handles()
        self.click_element(self.cover_letter_templates_submenu_locator)
        self.switch_to_window()

    def is_cover_letter_templates_page_loaded_properly(self):
        """
        Implementing is cover letter templates page loaded properly functionality
        :return: True/False
        """
        loaded_properly = False
        self.switch_to_frame(self.list_frame_locator)
        if self.is_element_present(self.cover_letter_templates_title_locator) is True:
            loaded_properly = True
        self.switch_to_default_content()
        self.close_browser()
        self.switch_to_previous_window()
        return loaded_properly

    def click_discrepancy_source_submenu(self):
        """
        Implementing click discrepancy source submenu functionality
        :return:
        """
        self.set_existing_handles()
        self.click_element(self.discrepancy_source_submenu_locator)
        self.switch_to_window()

    def is_discrepancy_source_page_loaded_properly(self):
        """
        Implementing is discrepancy source page loaded properly functionality
        :return: True/False
        """
        loaded_properly = False
        self.switch_to_frame(self.detail_frame_locator)
        if self.is_element_present(self.discrepancy_source_page_title_locator) is True:
            loaded_properly = True
        self.switch_to_default_content()
        self.close_browser()
        self.switch_to_previous_window()
        return loaded_properly

    def click_dispute_grades_submenu(self):
        """
        Implementing click dispute grades submenu functionality
        :return:
        """
        self.set_existing_handles()
        self.click_element(self.dispute_grades_submenu_locator)
        self.switch_to_window()

    def is_dispute_grades_page_loaded_properly(self):
        """
        Implementing is dispute grades page loaded properly functionality
        :return: True/False
        """
        loaded_properly = False
        self.switch_to_frame(self.list_frame_locator)
        if self.is_element_present(self.dispute_grades_page_title_locator) is True:
            loaded_properly = True
        self.switch_to_default_content()
        self.close_browser()
        self.switch_to_previous_window()
        return loaded_properly

    def click_dispute_letter_submenu(self):
        """
        Implementing click dispute letter submenu functionality
        :return:
        """
        self.set_existing_handles()
        self.click_element(self.dispute_letter_submenu_locator)
        self.switch_to_window()

    def is_dispute_letter_page_loaded_properly(self):
        """
        Implementing is dispute letter page loaded properly functionality
        :return: True/False
        """
        loaded_properly = False
        self.switch_to_frame(self.detail_frame_locator)
        if self.is_element_present(self.dispute_letter_page_title_locator) is True:
            loaded_properly = True
        self.switch_to_default_content()
        self.close_browser()
        self.switch_to_previous_window()
        return loaded_properly

    def is_statement_numbering_template_page_loaded_properly(self):
        """
        Implementing is statement numbering template loaded properly functionality
        :return: True/False
        """
        loaded_properly = False
        self.switch_to_window()
        self.switch_to_frame(self.list_frame_locator)
        if self.is_element_present(self.statement_numbering_templates_page_title_locator) is True:
            loaded_properly = True
        self.switch_to_default_content()
        self.close_browser()
        self.switch_to_previous_window()
        return loaded_properly

    def click_statement_templates_submenu(self):
        """
        Implementing click statement templates submenu functionality
        :return:
        """
        self.set_existing_handles()
        self.click_element(self.statement_templates_submenu_locator)
        self.switch_to_window()

    def is_statement_templates_page_loaded_properly(self):
        """
        Implementing is statement templates page loaded properly functionality
        :return: True/False
        """
        loaded_properly = False
        self.switch_to_frame(self.list_frame_locator)
        if self.is_element_present(self.statement_template_page_title_locator) is True:
            loaded_properly = True
        self.switch_to_default_content()
        self.close_browser()
        self.switch_to_previous_window()
        return loaded_properly

    def click_accounting_codes_submenu(self):
        """
        Implementing click accounting codes submenu functionality
        :return:
        """
        self.click_element(self.accounting_codes_submenu_locator)

    def is_accounting_codes_page_loaded_properly(self):
        """
        Implementing is accounting codes page loaded properly functionality
        :return: True/False
        """
        return self.is_element_present(self.accounting_codes_header_locator)

    def click_summarization_level_submenu(self):
        """
        Implementing click summarization level submenu functionality
        :return:
        """
        self.click_element(self.summarization_level_submenu_locator)

    def is_summarization_level_page_loaded_properly(self):
        """
        Implementing is summarization level page loaded properly functionality
        :return: True/False
        """
        loaded_properly = False
        if self.is_element_present(self.summarization_level_header_locator) is True:
            loaded_properly = True
        return loaded_properly

    def filter_source_and_policies_grid(self, column_name, column_value):
        """
        Implementing filter source and policies grid functionality
        :param column_name:
        :param column_value:
        :return:
        """
        self.grid_filter_with_textbox(self.source_grid_div_id, column_name, column_value)
        self.wait_for_ajax_spinner_load()

    def select_source_and_policies_first_row_crpl_checkbox(self):
        """
        Implementing select source and policies first row crpl checkbox functionality
        :return:
        """
        self.select_grid_row_checkbox(self.source_grid_div_id, None, column_number=self.source_and_policies_grid_checkbox_column_number, first_row=True)

    def expand_switch_translation_mappings_menu(self):
        """
        Implementing expand switch translation mappings menu functionality
        :return:
        """
        self.click_element(self.switch_translation_mappings_menu_locator, script_executor=True, hover=True)

    def click_submenu_of_switch_translation_mappings_menu(self, submenu_name):
        """
        Implementing click submenu of switch translation mappings menu functionality
        :param submenu_name:
        :return:
        """
        self.set_existing_handles()
        submenu_locator = (By.XPATH, "//span[text()='Switch Translation Mappings']/../../descendant::button[text()='%s']" % submenu_name)
        self.click_element(submenu_locator, script_executor=True, hover=True)

    def verify_translate_page_title(self, expected_title):
        """
        Implementing verify translate page title functionality
        :param expected_title:
        :return: True/False
        """
        is_verified = False
        self.switch_to_window()
        self.switch_to_frame(self.detail_frame_locator)
        translate_page_title_locator = (By.XPATH, "//div[@id='titlePage']/div[contains(text(), '%s')]" % expected_title)
        if self.is_element_present(translate_page_title_locator) is True:
            is_verified = True
        self.switch_to_default_content()
        return is_verified

    def verify_translate_page_filter_frame_title(self, expected_title):
        """
        Implementing verify translate page filter frame title functionality
        :param expected_title:
        :return: True/False
        """
        is_verified = False
        self.switch_to_window()
        self.switch_to_frame(self.detail_frame_locator)
        self.switch_to_frame(self.filter_frame_locator)
        translate_page_detail_frame_title_locator = (By.XPATH, "//span[@id='DetailTitle' and contains(text(), '%s')]" % expected_title)
        if self.is_element_present(translate_page_detail_frame_title_locator) is True:
            is_verified = True
        self.switch_to_default_content()
        self.switch_to_default_content()
        return is_verified

    def expand_subscribers_and_calling_plans_menu(self):
        """
        Implementing expand subscribers and calling plans menu functionality
        :return:
        """
        self.click_element(self.subscribers_and_calling_plans_menu_locator, script_executor=True, hover=True)

    def click_submenu_of_subscribers_and_calling_plans_menu(self, submenu_name):
        """
        Implementing click submenu of subscribers and calling plans menu functionality
        :param submenu_name:
        :return:
        """
        submenu_locator = (By.XPATH, "//span[text()='Subscribers & Calling plans']/../../descendant::button[text()='%s']" % submenu_name)
        self.click_element(submenu_locator, script_executor=True, hover=True)

    def verify_tab_header(self, tab_header):
        """
        Implementing verify tab header functionality
        :param tab_header:
        :return: True/False
        """
        is_verified = False
        tab_header_locator = (By.XPATH, "//h3[contains(text(), '%s')]" % tab_header)
        if self.is_element_present(tab_header_locator) is True:
            is_verified = True
        return is_verified

    def set_generate_rpl_records_for(self, dropdown_item):
        """
        Implementing set generate rpl records for functionality
        :param dropdown_item:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.generate_rpl_records_for_dropdown_locator, dropdown_item)

    def set_automated_rpl_generation(self, dropdown_item):
        """
        Implementing set automated rpl generation functionality
        :param dropdown_item:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.automated_rpl_generation_dropdown_locator, dropdown_item)

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

    def set_network_codes_grid_settings(self, grid_settings):
        """
        Implementing set network codes grid settings functionality
        :param grid_settings:
        :return:
        """
        self.set_grid_settings(self.network_codes_destination_grid_div_id, grid_settings)

    def sort_network_codes_grid_column(self, column_name, descending_order):
        """
        Implementing sort network codes grid column functionality
        :param column_name:
        :param descending_order:
        :return:
        """
        self.sort_grid_column(self.network_codes_destination_grid_div_id, column_name, descending_order)

    def get_all_rows_of_specific_column_from_network_codes_grid(self, column_name):
        """
        Implementing get all rows of specific column from network codes grid functionality
        :param column_name:
        :return: all_row_data
        """
        self.all_row_data = self.get_all_rows_of_specific_column_from_grid(self.network_codes_destination_grid_div_id, column_name, self.get_grid_row_count(self.network_codes_grid_row_count_span_locator, 2))
        return self.all_row_data

    def drag_network_codes_grid_column(self, source_column, destination_column):
        """
        Implementing drag network codes grid column functionality
        :param source_column:
        :param destination_column:
        :return:
        """
        self.drag_grid_column(self.network_codes_destination_grid_div_id, source_column, destination_column)

    def get_network_codes_grid_column_names_by_order(self):
        """
        Implementing get network codes grid column names by order functionality
        :return: column_name_list
        """
        self.column_name_list = self.get_grid_column_names_by_order(self.network_codes_destination_grid_div_id)
        return self.column_name_list

    def click_network_codes_grid_export_to_excel_button(self):
        """
        Implementing click network codes grid export to excel button functionality
        :return:
        """
        self.click_grid_export_to_excel_button(self.network_codes_destination_grid_div_id)

    def is_route_class_page_loaded_properly(self):
        """
        Implementing is route class page loaded properly functionality
        :return: True/False
        """
        return self.is_element_present(self.add_route_class_button_locator)

    def click_product_submenu(self):
        """
        Implementing click product submenu functionality
        :return:
        """
        self.set_existing_handles()
        self.click_element(self.product_submenu_locator)
        self.switch_to_window()

    def is_product_page_loaded_properly(self):
        """
        Implementing is product page loaded properly functionality
        :return: True/False
        """
        loaded_properly = False
        self.switch_to_frame(self.list_frame_locator)
        if self.is_element_present(self.product_page_title_locator) is True:
            loaded_properly = True
        self.switch_to_default_content()
        self.close_browser()
        self.switch_to_previous_window()
        return loaded_properly

    def is_create_country_group_button_not_present(self):
        """
        Implementing is create country groups button not present functionality
        :return:
        """
        is_not_present = None
        try:
            self.wait(5).until(EC.presence_of_element_located(self.create_country_group_button_locator))
            is_not_present = False
        except:
            is_not_present = True
        finally:
            return is_not_present

    def is_delete_country_group_button_not_present(self):
        """
        Implementing is delete country groups button not present functionality
        :return:
        """
        is_not_present = None
        try:
            self.wait(5).until(EC.presence_of_element_located(self.country_group_delete_button_locator))
            is_not_present = False
        except:
            is_not_present = True
        finally:
            return is_not_present

    def get_countries_grid_existing_mcc(self):
        """
        Implementing get countries grid existing mcc functionality
        :return: existing_mcc
        """
        existing_mcc = ""
        column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::th[@data-title='%s']" % (self.countries_grid_div_id, "Mobile Country Code"))
        column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) + 1
        row_count = self.get_grid_row_count(self.countries_grid_total_number_of_records_count_locator, 2)
        row = 1
        try:
            while row < row_count + 1:
                column_value_locator = (By.XPATH, "(//div[contains(@id, '%s')]/descendant::div[@class='k-grid-content']/descendant::tr/td[%s]/span)[%s]" % (self.countries_grid_div_id, str(column_index), row))
                column_value_element = self.wait().until(EC.presence_of_element_located(column_value_locator), 'column value locator not found before specified time out')
                existing_mcc = str(column_value_element.get_attribute("innerHTML"))
                if existing_mcc is not "":
                    break
                if row % 50 == 0:
                    next_page_button_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::span[@class='k-icon k-i-arrow-e']" % self.countries_grid_div_id)
                    self.click_element(next_page_button_locator, True)
                    row = 0
                    row_count -= 50
                row += 1
        except:
            raise
        finally:
            return existing_mcc

    def set_countries_grid_column_value(self, column_name, column_value):
        """
        Implementing set countries grid column value functionality
        :param column_name:
        :param column_value:
        :return:
        """
        self.set_value_in_grid_column(self.countries_grid_div_id, column_name, column_value)
        self.click_element(self.page_header_locator)

    def move_first_available_country_to_destination(self):
        """
        Implementing move first available country to destination functionality
        :return:
        """
        self.click_element(self.first_country_locator)
        self.click_element(self.move_single_item_button_locator)

    def set_country_for_country_group_search(self, country_list):
        """
        Implementing set country for country group search functionality
        :param country_list:
        :return:
        """
        self.click_element(self.country_kendo_dropdown_locator)
        for item in country_list:
            dropdown_item_locator = (By.XPATH, "//ul[contains(@id, 'ddlBACountry')]/li[text()='%s']" % item)
            self.click_element(dropdown_item_locator, True)
        self.script_executor("var elements = document.getElementsByClassName('k-list-container k-popup k-group k-reset multiselect'); for (var i = 0, len = elements.length; i < len; i++) { elements[i].style.display = 'none';}")
        self.script_executor("var elements = document.getElementsByClassName('k-list k-reset'); for (var i = 0, len = elements.length; i < len; i++) { elements[i].setAttribute('aria-hidden', 'true');}")

    def verify_country_group_grid_loaded_with_selected_country(self, country_list):
        """
        Implementing verify country group grid loaded with selected country functionality
        :param country_list:
        :return: True/False
        """
        is_verified = True
        country_group_grid_country_column_data = self.get_all_rows_of_specific_column_from_grid(self.country_group_grid_div_id, self.countries_column_name, self.get_grid_row_count(self.country_groups_grid_row_count_locator, 2))
        for country in country_group_grid_country_column_data:
            selected_country_is_present = False
            for item in country_list:
                if item in country:
                    selected_country_is_present = True
                    break
            if selected_country_is_present is False:
                is_verified = False
                break
        return is_verified

    def click_buy_and_sell_deal_management_submenu(self):
        """
        Implementing click buy and sell deal management submenu functionality
        :return:
        """
        self.click_element(self.buy_and_sell_deal_management_submenu_locator, True, True)

    def set_start_date(self, start_date):
        """
        Implementing set start date functionality
        :param start_date:
        :return:
        """
        self.set_value_into_input_field(self.start_date_inputbox_locator, start_date)

    def set_buy_and_sell_management_grid_settings(self, grid_settings):
        """
        Implementing set buy and sell management grid settings functionality
        :param grid_settings:
        :return:
        """
        self.set_grid_settings(self.buy_and_sell_management_grid_div_id, grid_settings)

    def sort_buy_and_sell_management_grid_column(self, column_name, descending_order):
        """
        Implementing sort buy and sell management grid column functionality
        :param column_name:
        :param descending_order:
        :return:
        """
        self.sort_grid_column(self.buy_and_sell_management_grid_div_id, column_name, descending_order)

    def get_all_rows_of_specific_column_from_buy_and_sell_management_grid(self, column_name):
        """
        Implementing get all rows of specific column from buy and sell management grid functionality
        :param column_name:
        :return: all_row_data
        """
        self.all_row_data = self.get_all_rows_of_specific_column_from_grid(self.buy_and_sell_management_grid_div_id, column_name, self.get_grid_row_count(self.buy_and_sell_management_grid_count_span_locator, 2))
        return self.all_row_data

    def drag_buy_and_sell_management_grid_column(self, source_column, destination_column):
        """
        Implementing drag buy and sell management grid column functionality
        :param source_column:
        :param destination_column:
        :return:
        """
        self.drag_grid_column(self.buy_and_sell_management_grid_div_id, source_column, destination_column)

    def get_buy_and_sell_management_grid_column_names_by_order(self):
        """
        Implementing get buy and sell management grid column names by order functionality
        :return: column_name_list
        """
        self.column_name_list = self.get_grid_column_names_by_order(self.buy_and_sell_management_grid_div_id)
        return self.column_name_list

    def click_buy_and_sell_management_grid_export_to_excel_button(self):
        """
        Implementing click buy and sell management grid export to excel button functionality
        :return:
        """
        self.click_grid_export_to_excel_button(self.buy_and_sell_management_grid_div_id)

    def select_buy_and_sell_deal_management_grid_first_row_checkbox(self):
        """
        Implementing select buy and sell deal management grid first row checkbox functionality
        :return:
        """
        self.select_grid_row_checkbox(self.buy_and_sell_management_grid_div_id, None, self.buy_and_sell_management_grid_checkbox_column_number, True)

    def click_buy_and_sell_deal_bulk_edit_button(self):
        """
        Implementing click buy and sell deal bulk edit button functionality
        :return:
        """
        self.click_element(self.buy_and_sell_deal_bulk_edit_button_lcoator, True)

    def set_bulk_edit_end_date(self, end_date, future_date):
        """
        Implementing set bulk edit end date functionality
        :param end_date:
        :param future_date:
        :return:
        """
        if future_date is True:
            end_date = self.get_date(future_date=True, number_of_days_to_add=30)
        self.set_value_into_input_field(self.bulk_edit_end_date_inputbox_locator, end_date)

    def set_route_class_grid_settings(self, grid_settings):
        """
        Implementing set route class grid settings functionality
        :param grid_settings:
        :return:
        """
        self.set_grid_settings(self.route_class_grid_div_id, grid_settings)

    def sort_route_class_grid_column(self, column_name, descending_order):
        """
        Implementing sort route class grid column functionality
        :param column_name:
        :param descending_order:
        :return:
        """
        self.sort_grid_column(self.route_class_grid_div_id, column_name, descending_order)

    def get_all_rows_of_specific_column_from_route_class_grid(self, column_name):
        """
        Implementing get all rows of specific column from route class grid functionality
        :param column_name:
        :return: all_row_data
        """
        self.all_row_data = self.get_all_rows_of_specific_column_from_grid(self.route_class_grid_div_id, column_name, self.get_grid_row_count(self.route_class_grid_count_span_locator, 1))
        return self.all_row_data

    def drag_route_class_grid_column(self, source_column, destination_column):
        """
        Implementing drag route class grid column functionality
        :param source_column:
        :param destination_column:
        :return:
        """
        self.drag_grid_column(self.route_class_grid_div_id, source_column, destination_column)

    def get_route_class_grid_column_names_by_order(self):
        """
        Implementing get route class grid column names by order functionality
        :return: column_name_list
        """
        self.column_name_list = self.get_grid_column_names_by_order(self.route_class_grid_div_id)
        return self.column_name_list

    def click_route_class_grid_export_to_excel_button(self):
        """
        Implementing click route class grid export to excel button functionality
        :return:
        """
        self.click_grid_export_to_excel_button(self.route_class_grid_div_id)

    def set_currency_grid_settings(self, grid_settings):
        """
        Implementing set currency grid settings functionality
        :param grid_settings:
        :return:
        """
        self.set_grid_settings(self.currency_grid_div_id, grid_settings)

    def sort_currency_grid_column(self, column_name, descending_order):
        """
        Implementing sort currency grid column functionality
        :param column_name:
        :param descending_order:
        :return:
        """
        self.sort_grid_column(self.currency_grid_div_id, column_name, descending_order)

    def get_all_rows_of_specific_column_from_currency_grid(self, column_name):
        """
        Implementing get all rows of specific column from currency grid functionality
        :param column_name:
        :return: all_row_data
        """
        self.all_row_data = self.get_all_rows_of_specific_column_from_grid(self.currency_grid_div_id, column_name, self.get_grid_row_count(self.currency_grid_count_span_locator, 2))
        return self.all_row_data

    def drag_currency_grid_column(self, source_column, destination_column):
        """
        Implementing drag currency grid column functionality
        :param source_column:
        :param destination_column:
        :return:
        """
        self.drag_grid_column(self.currency_grid_div_id, source_column, destination_column)

    def get_currency_grid_column_names_by_order(self):
        """
        Implementing get currency grid column names by order functionality
        :return: column_name_list
        """
        self.column_name_list = self.get_grid_column_names_by_order(self.currency_grid_div_id)
        return self.column_name_list

    def click_currency_grid_export_to_excel_button(self):
        """
        Implementing click currency grid export to excel button functionality
        :return:
        """
        self.click_grid_export_to_excel_button(self.currency_grid_div_id)

    def set_currency_grid_first_row_currency_symbol(self):
        """
        Implementing set currency grid first row currency symbol functionality
        :return:
        """
        currency_symbol = self.random_string_generator(4)
        self.set_value_in_grid_column(self.currency_grid_div_id, self.currency_symbol_column_name, currency_symbol)
        self.click_element(self.page_header_locator)

    def set_source_policies_grid_settings(self, grid_settings):
        """
        Implementing set source policies grid settings functionality
        :param grid_settings:
        :return:
        """
        self.set_grid_settings(self.source_grid_div_id, grid_settings)

    def sort_source_policies_grid_column(self, column_name, descending_order):
        """
        Implementing sort source policies grid column functionality
        :param column_name:
        :param descending_order:
        :return:
        """
        self.sort_grid_column(self.source_grid_div_id, column_name, descending_order)

    def get_all_rows_of_specific_column_from_source_policies_grid(self, column_name):
        """
        Implementing get all rows of specific column from source policies grid functionality
        :param column_name:
        :return: all_row_data
        """
        self.all_row_data = []
        next_page = False
        column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::th[@data-title='%s']" % (self.source_grid_div_id, column_name))
        column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) + 1
        row = 1
        row_count = self.get_grid_row_count(self.source_and_policy_grid_row_count_locator, 4)
        try:
            while row < row_count + 1:
                column_value_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::div[@class='k-grid-content']/descendant::tbody[@role='rowgroup']/tr[%s]/td[%s]/descendant::span" % (self.source_grid_div_id, row, str(column_index)))
                column_value_element = self.wait(10).until(EC.presence_of_element_located(column_value_locator), 'column value locator not found before specified time out')
                column_value = str(column_value_element.get_attribute("innerHTML"))
                if column_value not in self.all_row_data:
                    self.all_row_data.append(column_value)
                else:
                    row_count += 1
                if row % 20 == 0:
                    next_page = True
                    next_page_button_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::span[@class='k-icon k-i-arrow-e']" % self.source_grid_div_id)
                    self.click_element(next_page_button_locator, True)
                    row = 0
                    row_count -= 20
                row += 1
        except WebDriverException:
            pass
        if next_page is True:
            first_page_button_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::span[@class='k-icon k-i-seek-w']" % self.source_grid_div_id)
            self.click_element(first_page_button_locator, True)
        return self.all_row_data

    def drag_source_policies_grid_column(self, source_column, destination_column):
        """
        Implementing drag source policies grid column functionality
        :param source_column:
        :param destination_column:
        :return:
        """
        self.drag_grid_column(self.source_grid_div_id, source_column, destination_column)

    def get_source_policies_grid_column_names_by_order(self):
        """
        Implementing get source policies grid column names by order functionality
        :return: column_name_list
        """
        self.column_name_list = self.get_grid_column_names_by_order(self.source_grid_div_id)
        return self.column_name_list

    def click_source_policies_grid_export_to_excel_button(self):
        """
        Implementing click source policies grid export to excel button functionality
        :return:
        """
        self.click_grid_export_to_excel_button(self.source_grid_div_id)

    def click_source_policies_grid_first_row_inline_action_button(self):
        """
        Implementing click source policies grid first row inline action button functionality
        :return:
        """
        self.click_inline_action_button(self.source_grid_div_id, None, self.source_and_policies_grid_inline_action_column_number, True)

    def is_copy_source_pop_up_opened_properly(self):
        """
        Implementing is copy source pop up opened properly functionality
        :return: True/False
        """
        return self.is_element_present(self.copy_source_pop_up_title_locator)

    def click_copy_source_cancel_button(self):
        """
        Implementing click copy source cancel button functionality
        :return:
        """
        self.click_element(self.copy_source_cancel_button_locator)

    def set_categories_grid_settings(self, grid_settings):
        """
        Implementing set categories grid settings functionality
        :param grid_settings:
        :return:
        """
        self.set_grid_settings(self.categories_grid_div_id, grid_settings)

    def sort_categories_grid_column(self, column_name, descending_order):
        """
        Implementing sort categories grid column functionality
        :param column_name:
        :param descending_order:
        :return:
        """
        self.sort_grid_column(self.categories_grid_div_id, column_name, descending_order)

    def get_all_rows_of_specific_column_from_categories_grid(self, column_name):
        """
        Implementing get all rows of specific column from categories grid functionality
        :param column_name:
        :return: all_row_data
        """
        self.all_row_data = self.get_all_rows_of_specific_column_from_grid(self.categories_grid_div_id, column_name, self.get_grid_row_count(self.categories_grid_row_count_locator, 2))
        return self.all_row_data

    def drag_categories_grid_column(self, source_column, destination_column):
        """
        Implementing drag categories grid column functionality
        :param source_column:
        :param destination_column:
        :return:
        """
        self.drag_grid_column(self.categories_grid_div_id, source_column, destination_column)

    def get_categories_grid_column_names_by_order(self):
        """
        Implementing get categories grid column names by order functionality
        :return: column_name_list
        """
        self.column_name_list = self.get_grid_column_names_by_order(self.categories_grid_div_id)
        return self.column_name_list

    def click_categories_grid_export_to_excel_button(self):
        """
        Implementing click categories grid export to excel button functionality
        :return:
        """
        self.click_grid_export_to_excel_button(self.categories_grid_div_id)

    def set_exchange_rates_grid_settings(self, grid_settings):
        """
        Implementing set exchange rates grid settings functionality
        :param grid_settings:
        :return:
        """
        self.set_grid_settings(self.exchange_rates_grid_div_id, grid_settings)

    def sort_exchange_rates_grid_column(self, column_name, descending_order):
        """
        Implementing sort exchange rates grid column functionality
        :param column_name:
        :param descending_order:
        :return:
        """
        self.sort_grid_column(self.exchange_rates_grid_div_id, column_name, descending_order)

    def get_all_rows_of_specific_column_from_exchange_rates_grid(self, column_name):
        """
        Implementing get all rows of specific column from exchange rates grid functionality
        :param column_name:
        :return: all_row_data
        """
        self.all_row_data = self.get_all_rows_of_specific_column_from_grid(self.exchange_rates_grid_div_id, column_name, self.get_grid_row_count(self.exchange_rates_grid_row_count_locator, 2))
        return self.all_row_data

    def drag_exchange_rates_grid_column(self, source_column, destination_column):
        """
        Implementing drag exchange rates grid column functionality
        :param source_column:
        :param destination_column:
        :return:
        """
        self.drag_grid_column(self.exchange_rates_grid_div_id, source_column, destination_column)

    def get_exchange_rates_grid_column_names_by_order(self):
        """
        Implementing get exchange rates grid column names by order functionality
        :return: column_name_list
        """
        self.column_name_list = self.get_grid_column_names_by_order(self.exchange_rates_grid_div_id)
        return self.column_name_list

    def click_exchange_rates_grid_export_to_excel_button(self):
        """
        Implementing click exchange rates grid export to excel button functionality
        :return:
        """
        self.click_grid_export_to_excel_button(self.exchange_rates_grid_div_id)

    def set_exchange_rates_grid_first_row_exchange_rate(self):
        """
        Implementing set exchange rates grid first row exchange rate functionality
        :return:
        """
        exchange_rate = (self.random_string_generator(4, string.digits) + ".0000").lstrip("0")
        self.set_value_in_grid_column(self.exchange_rates_grid_div_id, self.exchange_rate_column_name, exchange_rate)
        self.click_element(self.page_header_locator)

    def click_add_new_adjustment_button(self):
        """
        Implementing click add new adjustment button functionality
        :return:
        """
        self.click_element(self.add_new_adjustment_button_locator)
        self.wait_for_ajax_spinner_load(timeout=120)

    def set_route_class_for_cost_adjustment(self, route_class=None):
        """
        Implementing set route class for cost adjustment functionality
        :param route_class:
        :return:
        """
        if route_class is None or route_class.strip()== '' or route_class=='None':
            self.click_element(self.cost_adjustment_route_class_dropdown_locator, True, True)
            self.click_element(self.first_dropdown_item_locator, script_executor=True)
        else:
            self.single_selection_from_kendo_dropdown(self.route_class_dropdown_locator, route_class)

    def set_routing_product(self):
        """
        Implementing set routing product functionality
        :return:
        """
        self.click_element(self.routing_product_dropdown_locator)
        self.click_element(self.first_dropdown_item_locator, script_executor=True)

    def set_cost_per_minute(self):
        """
        Implementing set cost per minute functionality
        :return:
        """
        cost_per_minute = self.random_string_generator(1, string.digits) + "." + self.random_string_generator(6, string.digits)
        self.set_value_into_input_field(self.cost_per_minute_inputbox_locator, cost_per_minute, True)
        self.wait_for_ajax_spinner_load()

    def select_internal_cost_adjustments_grid_first_row_checkbox(self, route_class=None):
        """
        Implementing select internal cost adjustments grid first row checkbox functionality
        :param route_class:
        :return:
        """
        if route_class is None or route_class.strip() == '' or route_class == 'None':
            self.select_grid_row_checkbox(self.internal_cost_adjustments_grid_div_id, None, self.internal_cost_adjustments_grid_checkbox_column_number, True)
        else:
            self.select_grid_row_checkbox(self.internal_cost_adjustments_grid_div_id, route_class, self.internal_cost_adjustments_grid_checkbox_column_number, True)

    def click_internal_cost_adjustment_delete_button(self):
        """
        Implementing click internal cost adjustment delete button functionality
        :return:
        """
        self.click_element(self.internal_cost_adjustment_delete_button_locator, True)
        try:
            self.wait().until(EC.presence_of_element_located(self.cdr_match_delete_confirmation_message_locator), 'delete confirmation message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
            self.wait().until(EC.presence_of_element_located(self.delete_country_group_success_message_locator), 'success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def click_accounting_codes_grid_first_row_inline_action_button(self):
        """
        Implementing click accounting codes grid first row inline action button functionality
        :return:
        """
        self.click_inline_action_button(self.accounting_codes_grid_div_id, None, self.accounting_codes_grid_inline_action_column_number, True)

    def is_assign_accounting_codes_page_title_available(self):
        """
        Implementing is accounting codes page loaded properly functionality
        :return: True/False
        """
        return self.is_element_present(self.assign_accounting_codes_header_locator)

    def get_source_grid_cpl_prev_date_override(self):
        """
        Implementing get source grid cpl prev date override functionality
        :return: cpl_prev_date_override
        """
        source_grid_row_data = {self.cpl_prev_date_override_column_name: ""}
        source_grid_row_data = self.get_grid_row_details(self.source_grid_div_id, source_grid_row_data)
        return source_grid_row_data[self.cpl_prev_date_override_column_name]

    def set_source_grid_cpl_prev_date_override(self, cpl_prev_date_override):
        """
        Implementing set source grid cpl prev date override functionality
        :param cpl_prev_date_override:
        :return:
        """
        if cpl_prev_date_override == "Config Value":
            cpl_prev_date_override = "Config"
        self.single_selection_from_kendo_in_grid(self.source_grid_div_id, self.cpl_prev_date_override_column_name, cpl_prev_date_override, self.source_grid_data_grid_name)
        self.click_element(self.page_header_locator)

    def set_company_grid_settings(self, grid_settings):
        """
        Implementing set company grid settings functionality
        :param grid_settings:
        :return:
        """
        self.set_grid_settings(self.company_grid_div_id, grid_settings)

    def get_all_rows_of_specific_column_from_company_grid(self, column_name):
        """
        Implementing get all rows of specific column from company grid functionality
        :param column_name:
        :return: all_row_data
        """
        self.all_row_data = self.get_all_rows_of_specific_column_from_grid(self.company_grid_div_id, column_name, self.get_grid_row_count(self.company_grid_row_count_span_locator, 1))
        return self.all_row_data

    def sort_company_grid_column(self, column_name, descending_order):
        """
        Implementing sort company grid column functionality
        :param column_name:
        :param descending_order:
        :return:
        """
        self.sort_grid_column(self.company_grid_div_id, column_name, descending_order)

    def get_company_grid_column_names_by_order(self):
        """
        Implementing get company grid column names by order functionality
        :return: column_name_list
        """
        self.column_name_list = self.get_grid_column_names_by_order(self.company_grid_div_id)
        return self.column_name_list

    def drag_company_grid_column(self, source_column, destination_column):
        """
        Implementing drag company grid column functionality
        :param source_column:
        :param destination_column:
        :return:
        """
        self.drag_grid_column(self.company_grid_div_id, source_column, destination_column)

    def click_new_company_button(self):
        """
        Implementing click new company button functionality
        :return:
        """
        self.click_element(self.new_company_button_locator)

    def set_business_admin_company_name(self, company_prefix):
        """
        Implementing set business admin company name functionality
        :return:
        """
        global company
        company = company_prefix + self.random_string_generator(size=4)
        self.set_value_into_input_field(self.company_name_textbox_locator, company)

    def click_company_save_button(self):
        """
        Implementing click company save button functionality
        :return:
        """
        self.click_element(self.company_save_button_locator)
        try:
            self.wait().until(EC.presence_of_element_located(self.success_message_locator), 'success message locator not found before specified time out')
            self.click_element(self.ok_button_locator, True)
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def filter_company_grid(self, column_name, column_value):
        """
        Implementing filter company grid functionality
        :param column_name:
        :param column_value:
        :return:
        """
        self.grid_filter_with_textbox(self.company_grid_div_id, column_name, column_value)
        self.wait_for_ajax_spinner_load()

    def get_business_admin_company_name(self):
        """
        Implementing get business admin company name functionality
        :return: company
        """
        global company
        global company
        return company

    def get_duplicate_company(self, server, database, user, password):
        """
        Implementing get duplicate company from database functionality
        :param server:
        :param database:
        :param user:
        :param password:
        :return: duplicate company
        """
        try:
            Database.open_mssql(server=server, database=database, user=user, password=password)
            sql=("""
                SELECT TOP 1 C.Company FROM iXCore_Main.dbo.tbCompany AS C 
                INNER JOIN iXCore_Main.dbo.tbCompanyDetail AS CD 
                ON C.CompanyID = CD.CompanyID WHERE C.CompanyID = 1;
            """)
            cursor = Database.get_cursor(sql)
            row = cursor.fetchone()
            cursor.close()
            return str(row.Company).strip()
        except:
            raise
        finally:
            Database.close()

    def set_company_for_search(self, company_name):
        """
        Implementing set company for search functionality
        :param company_name:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.company_multiple_kendo_dropdown_locator, company_name)
        self.wait_for_ajax_spinner_load()

    def set_company_code(self, company_code_prefix):
        """
        Implementing set company code functionality
        :param company_code_prefix:
        :return: network_code
        """
        company_code = company_code_prefix + self.random_string_generator(4)
        self.set_value_in_grid_column(self.company_grid_div_id, self.company_code_column_name, company_code)
        self.click_element(self.company_header_locator)

    def get_pending_jobs_count(self):
        """
        Implementing get pending jobs count
        :return: pending_jobs_count
        """
        global pending_jobs_count
        pending_jobs_count = self.get_grid_row_count(self.number_plan_uploads_grid_row_count_span_locator, 1)
        return pending_jobs_count

    def compare_number_plan_uploads_grid_row_count_after_upload_for_pending_job(self):
        """
        Implementing compare number plan uploads grid row count after upload for pending job functionality
        :return: True/False
        """
        timeout = 900
        comparison_result = False
        global pending_jobs_count
        try:
            end_time = time.time() + timeout
            while time.time() < end_time:
                self.wait(5)
                self.click_number_plan_uploads_search_button()
                self.wait_for_ajax_spinner_load()
                current_count = self.get_grid_row_count(self.number_plan_uploads_grid_row_count_span_locator, 1)
                if ((int(current_count)) > (int(pending_jobs_count))):
                    comparison_result = True
                    break
        except:
            raise
        return comparison_result

    def set_number_plan_upload_multiple_status(self, status_list):
        """
        Implementing set number plan upload multiple status functionality
        :param status_list:
        :return:
        """
        kendo_dropdown_element = self.wait().until(EC.element_to_be_clickable(self.number_plan_upload_status_kendo_dropdown_locator), 'kendo dropdown locator not found before specified time out')
        self.script_executor_click(kendo_dropdown_element)
        kendo_dropdown_element.click()
        self.wait_for_ajax_spinner_load()
        for item in status_list:
            dropdown_item_locator = (By.XPATH, "//ul[contains(@id, 'msReferenceNumberPlanStatus_')]/descendant::li[text()='%s']" % item)
            self.click_element(dropdown_item_locator)
        self.wait_for_ajax_spinner_load()
        self.click_element(self.business_admin_page_title_locator)

    def set_static_number_plan_uploads_number_plan_type(self, number_plan_type):
        """
        Implementing set static number plan uploads number plan type functionality
        :param number_plan_type:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.number_plan_uploads_number_plan_type_dropdown_arrow_locator, number_plan_type)
        self.click_element(self.business_admin_page_title_locator)

    def is_reference_number_plan_template_download_link_present(self):
        """
        Implementing is reference number plan template download link present functionality
        :return:
        """
        return self.is_element_present(self.reference_number_plan_template_link_locator)

    def set_internal_cost_adjustments_grid_settings(self, grid_settings):
        """
        Implementing set internal cost adjustments grid settings functionality
        :param grid_settings:
        :return:
        """
        self.set_grid_settings(self.internal_cost_adjustments_grid_div_id, grid_settings)

    def sort_internal_cost_adjustments_grid_column(self, column_name, descending_order):
        """
        Implementing sort internal cost adjustments grid column functionality
        :param column_name:
        :param descending_order:
        :return:
        """
        self.sort_grid_column(self.internal_cost_adjustments_grid_div_id, column_name, descending_order)

    def get_all_rows_of_specific_column_from_internal_cost_adjustments_grid(self, column_name):
        """
        Implementing get all rows of specific column from internal cost adjustments grid functionality
        :param column_name:
        :return: all_row_data
        """
        self.all_row_data = self.get_all_rows_of_specific_column_from_grid(self.internal_cost_adjustments_grid_div_id, column_name, self.get_grid_row_count(self.internal_cost_adjustments_grid_row_count_locator, 2))
        return self.all_row_data

    def drag_internal_cost_adjustments_grid_column(self, source_column, destination_column):
        """
        Implementing drag internal cost adjustments grid column functionality
        :param source_column:
        :param destination_column:
        :return:
        """
        self.drag_grid_column(self.internal_cost_adjustments_grid_div_id, source_column, destination_column)

    def get_internal_cost_adjustments_grid_column_names_by_order(self):
        """
        Implementing get internal cost adjustments grid column names by order functionality
        :return: column_name_list
        """
        self.column_name_list = self.get_grid_column_names_by_order(self.internal_cost_adjustments_grid_div_id)
        return self.column_name_list

    def click_internal_cost_adjustments_grid_export_to_excel_button(self):
        """
        Implementing click internal cost adjustments grid export to excel button functionality
        :return:
        """
        self.click_grid_export_to_excel_button(self.internal_cost_adjustments_grid_div_id)

    def set_regions_grid_settings(self, grid_settings):
        """
        Implementing set regions grid settings functionality
        :param grid_settings:
        :return:
        """
        self.set_grid_settings(self.regions_grid_div_id, grid_settings)

    def sort_regions_grid_column(self, column_name, descending_order):
        """
        Implementing sort regions grid column functionality
        :param column_name:
        :param descending_order:
        :return:
        """
        self.sort_grid_column(self.regions_grid_div_id, column_name, descending_order)

    def get_all_rows_of_specific_column_from_regions_grid(self, column_name):
        """
        Implementing get all rows of specific column from regions grid functionality
        :param column_name:
        :return: all_row_data
        """
        self.all_row_data = self.get_all_rows_of_specific_column_from_grid(self.regions_grid_div_id, column_name, self.get_grid_row_count(self.regions_grid_row_count_locator, 1))
        return self.all_row_data

    def drag_regions_grid_column(self, source_column, destination_column):
        """
        Implementing drag regions grid column functionality
        :param source_column:
        :param destination_column:
        :return:
        """
        self.drag_grid_column(self.regions_grid_div_id, source_column, destination_column)

    def get_regions_grid_column_names_by_order(self):
        """
        Implementing get regions grid column names by order functionality
        :return: column_name_list
        """
        self.column_name_list = self.get_grid_column_names_by_order(self.regions_grid_div_id)
        return self.column_name_list

    def click_regions_grid_export_to_excel_button(self):
        """
        Implementing click regions grid export to excel button functionality
        :return:
        """
        self.click_grid_export_to_excel_button(self.regions_grid_div_id)

    def set_country_groups_grid_settings(self, grid_settings):
        """
        Implementing set country groups grid settings functionality
        :param grid_settings:
        :return:
        """
        self.set_grid_settings(self.country_group_management_grid_div_id, grid_settings)

    def sort_country_groups_grid_column(self, column_name, descending_order):
        """
        Implementing sort country groups grid column functionality
        :param column_name:
        :param descending_order:
        :return:
        """
        self.sort_grid_column(self.country_group_management_grid_div_id, column_name, descending_order)

    def get_all_rows_of_specific_column_from_country_groups_grid(self, column_name):
        """
        Implementing get all rows of specific column from country groups grid functionality
        :param column_name:
        :return: all_row_data
        """
        self.all_row_data = self.get_all_rows_of_specific_column_from_grid(self.country_group_management_grid_div_id, column_name, self.get_grid_row_count(self.country_groups_grid_row_count_locator, 2))
        return self.all_row_data

    def drag_country_groups_grid_column(self, source_column, destination_column):
        """
        Implementing drag country groups grid column functionality
        :param source_column:
        :param destination_column:
        :return:
        """
        self.drag_grid_column(self.country_group_management_grid_div_id, source_column, destination_column)

    def get_country_groups_grid_column_names_by_order(self):
        """
        Implementing get country groups grid column names by order functionality
        :return: column_name_list
        """
        self.column_name_list = self.get_grid_column_names_by_order(self.country_group_management_grid_div_id)
        return self.column_name_list

    def click_country_groups_grid_export_to_excel_button(self):
        """
        Implementing click country groups grid export to excel button functionality
        :return:
        """
        self.click_grid_export_to_excel_button(self.country_group_management_grid_div_id)

    def compare_country_group_grid_modified_by_column_value(self, user_name):
        """
        Implementing get country group grid modified by column value functionality
        :param user_name:
        :return: True/False
        """
        is_matched = False
        self.grid_row_data.clear()
        self.grid_row_data = {"Modified By": ""}
        country_group_grid_row_data = self.get_grid_row_details(self.country_group_grid_div_id, self.grid_row_data, self.country_group_data_grid_name)
        if user_name.lower() == str(country_group_grid_row_data["Modified By"]).lower():
            is_matched = True
        return is_matched

    def get_currency_grid_currency_column_value(self):
        """
        Implementing get currency grid currency column value functionality
        :return:
        """
        return self.get_specific_column_value_from_grid(self.currency_grid_div_id, 1, self.currency_column_name, self.currency_grid_data_grid_name)

    def is_error_message_displayed_for_duplicate_currency(self):
        """
        Implementing is error message displayed for duplicate currency functionality
        :return:
        """
        self.click_element(self.new_currency_save_button_locator)
        status = self.is_element_visible(self.currency_name_already_exists_error_message_locator)
        try:
            if status is True:
                self.click_element(self.ok_button_locator)
        except:
            status = False
        finally:
            return status

    def is_country_code_displayed_with_country_name(self):
        """
        Implementing is country code displayed with country name functionality
        :return: True/False
        """
        is_displayed = None
        try:
            first_country_element = self.wait().until(EC.presence_of_element_located(self.first_country_locator), 'first country locator not found before specified time out')
            first_country_name = str(first_country_element.text).split("(")
            country_code_text = first_country_name[1].split(")")
            int(country_code_text[0])
            is_displayed = True
        except:
            is_displayed = False
        return is_displayed

    def move_assigned_countries_to_source(self):
        """
        Implementing move assigned countries to source functionality
        :return:
        """
        try:
            self.click_element(self.move_all_countries_to_source_locator, True)
        except:
            pass

    def verify_save_country_group_error_message(self):
        """
        Implementing click save country group error message functionality
        :return:
        """
        self.click_element(self.save_country_group_button_locator, False, False)
        try:
            self.wait().until(EC.visibility_of_element_located(self.duplicate_country_group_error_message_locator), 'duplicate country group error message locator not found before specified time out')
            self.click_element(self.ok_button_locator, False, False)
        except:
            raise

    def click_country_group_cancel_button(self):
        """
        Implementing click country group cancel button functionality
        :return:
        """
        country_group_cancel_button_element = self.wait().until(EC.presence_of_element_located(self.country_group_cancel_button_locator), 'country group cancel button locator not found before specified time out')
        country_group_cancel_button_element.click()
        time.sleep(5)
        self.accept_alert_pop_up()

    def set_number_plan_type(self, number_plan_type):
        """
        Implementing set number plan type functionality
        :param number_plan_type:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.number_plan_type_kendo_dropdown_locator, number_plan_type)
        self.wait_for_ajax_spinner_load()

    def is_number_plan_search_result_matched(self, number_plan_type):
        """
        Implementing is number plan search result matched functionality
        :param number_plan_type:
        :return: True/False
        """
        is_matched = False
        actual_column_value = self.get_specific_column_value_from_grid(self.number_plan_grid_div_id, self.get_grid_row_count(self.number_plan_grid_row_count_span_locator, 1), self.number_plan_type_column_name, self.number_plan_grid_data_grid_name)
        if actual_column_value.lower() == number_plan_type.lower():
            is_matched = True
        return is_matched

    def click_buy_and_sell_deal_management_grid_first_row_inline_action_button(self):
        """
        Implementing click buy and sell deal management grid first row inline action button functionality
        :return:
        """
        self.click_inline_action_button(self.buy_and_sell_management_grid_div_id, None, self.buy_and_sell_management_grid_inline_action_column_number, True)

    def is_account_label_displayed_correctly(self):
        """
        Implementing is account label displayed correctly functionality
        :return: True/False
        """
        is_displayed_correctly = False
        if self.get_text_from_element(self.account_label_locator) == self.account_label:
            is_displayed_correctly = True
        return is_displayed_correctly

    def is_account_manager_label_displayed_correctly(self):
        """
        Implementing is account manager label displayed correctly functionality
        :return: True/False
        """
        is_displayed_correctly = False
        if self.get_text_from_element(self.account_manager_label_locator) == self.account_manager_label:
            is_displayed_correctly = True
        return is_displayed_correctly

    def set_country_group_management_grid_settings(self, grid_settings):
        """
        Implementing set country group management grid settings functionality
        :param grid_settings:
        :return:
        """
        self.set_grid_settings(self.country_group_grid_div_id, grid_settings)

    def get_all_rows_of_specific_column_from_country_group_management_grid(self, column_name):
        """
        Implementing get all rows of specific column from country group management grid functionality
        :param column_name:
        :return: all_row_data
        """
        self.all_row_data = self.get_all_rows_of_specific_column_from_grid(self.country_group_grid_div_id, column_name, self.get_grid_row_count(self.country_groups_grid_row_count_locator, 2))
        return self.all_row_data

    def sort_country_group_management_grid_column(self, column_name, descending_order):
        """
        Implementing sort country group management grid column functionality
        :param column_name:
        :param descending_order:
        :return:
        """
        self.sort_grid_column(self.country_group_grid_div_id, column_name, descending_order)

    def get_country_group_management_grid_column_names_by_order(self):
        """
        Implementing get country group management grid column names by order functionality
        :return: column_name_list
        """
        self.column_name_list = self.get_grid_column_names_by_order(self.country_group_grid_div_id)
        return self.column_name_list

    def drag_country_group_management_grid_column(self, source_column, destination_column):
        """
        Implementing drag country group management grid column functionality
        :param source_column:
        :param destination_column:
        :return:
        """
        self.drag_grid_column(self.country_group_grid_div_id, source_column, destination_column)

    def click_country_group_submenu(self):
        """
        Implementing click country group submenu functionality
        :return:
        """
        self.click_element(self.country_group_submenu_locator, True)

    def filter_source_and_policies_grid_column_with_checkbox(self, column_name, checked_status):
        """
        Implementing filter source and policies grid column with checkbox functionality
        :param column_name:
        :param checked_status:
        :return:
        """
        self.grid_filter_with_checkbox(self.source_policies_grid_div_id, column_name, checked_status)

    def select_source_and_policies_first_row_automate_export_checkbox(self, source):
        """
        Implementing select source and policies first row automate export checkbox functionality
        :param source:
        :return:
        """
        column_locator = (By.XPATH, "//div[@id='%s']/descendant::th[@data-title='%s']" % (self.source_policies_grid_div_id, str(self.automate_export_column_name)))
        column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) + 1
        column_input_locator = (By.XPATH, "//div[@id='%s']/descendant::span[text()='%s']/../../td[%s]/input" % (self.source_policies_grid_div_id, source, str(column_index)))
        column_input_element = self.wait().until(EC.presence_of_element_located(column_input_locator), 'column input locator not found before specified time out')
        self.script_executor_click(column_input_element)
        self.click_element(self.page_header_locator)

    def is_source_policies_grid_automate_export_checkbox_checked(self, source_list):
        """
        Implementing is source policies grid automate export checkbox checked functionality
        :param source_list:
        :return: True/False
        """
        is_checked = True
        for source in source_list:
            column_locator = (By.XPATH, "//div[@id='%s']/descendant::th[@data-title='%s']" % (self.source_policies_grid_div_id, str(self.automate_export_column_name)))
            column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
            column_index = int(column_element.get_attribute("data-index")) + 1
            column_input_locator = (By.XPATH, "//div[@id='%s']/descendant::span[text()='%s']/../../td[%s]/input" % (self.source_policies_grid_div_id, source, str(column_index)))
            column_input_element = self.wait().until(EC.presence_of_element_located(column_input_locator), 'column input locator not found before specified time out')
            checkbox_status = column_input_element.get_attribute('checked')
            if checkbox_status.lower() == "true":
                is_checked = False
                break
        return is_checked

    def click_origin_set_search_button_for_new_tab(self):
        """
        Implementing click origin set search button for new tab functionality
        :return:
        """
        self.click_element(self.new_tab_origin_set_search_button_locator, True)

    def get_origin_set_grid_row_count(self):
        """
        Implementing get origin set grid row count functionality
        :return: grid_row_count
        """
        return self.get_grid_row_count(self.origin_set_grid_count_span_locator, 4)

    def get_new_tab_origin_set_grid_row_count(self):
        """
        Implementing get new tab origin set grid row count functionality
        :return: grid_row_count
        """
        return self.get_grid_row_count(self.new_tab_origin_set_grid_count_span_locator, 4)

    def is_country_bulk_edit_pop_up_present(self):
        """
        Implementing is country bulk edit pop up present functionality
        :return: True/False
        """
        return self.is_element_present(self.bulk_edit_popup_locator)

    def select_countries_grid_first_row_checkbox(self):
        """
        Implementing select countries grid first row checkbox functionality
        :return:
        """
        self.select_grid_row_checkbox(self.countries_grid_div_id, row_identifier_text=None, column_number=self.countries_grid_checkbox_column_number, first_row=True)

    def is_network_code_save_changes_button_present(self):
        """
        Implementing is network code save changes button present functionality
        :return: True/False
        """
        return self.is_element_present(self.network_code_save_changes_button_locator)

    def is_network_code_cancel_changes_button_present(self):
        """
        Implementing is network code cancel changes button present functionality
        :return: True/False
        """
        return self.is_element_present(self.network_code_cancel_changes_button_locator)

    def is_cdr_match_save_changes_button_present(self):
        """
        Implementing is cdr match save changes button present functionality
        :return: True/False
        """
        return self.is_element_present(self.cdr_match_save_changes_button_locator)

    def is_cdr_match_cancel_changes_button_present(self):
        """
        Implementing is cdr match cancel changes button present functionality
        :return: True/False
        """
        return self.is_element_present(self.cdr_match_cancel_changes_button_locator)

    def is_network_code_save_changes_button_not_present(self):
        """
        Implementing is network code save changes button not present functionality
        :return:
        """
        is_not_present = None
        try:
            self.wait(5).until(EC.presence_of_element_located(self.network_code_save_changes_button_locator))
            is_not_present = False
        except:
            is_not_present = True
        finally:
            return is_not_present

    def is_network_code_cancel_changes_button_not_present(self):
        """
        Implementing is network code cancel changes button not present functionality
        :return:
        """
        is_not_present = None
        try:
            self.wait(5).until(EC.presence_of_element_located(self.network_code_cancel_changes_button_locator))
            is_not_present = False
        except:
            is_not_present = True
        finally:
            return is_not_present

    def is_cdr_match_save_changes_button_not_present(self):
        """
        Implementing is cdr match save changes button not present functionality
        :return:
        """
        is_not_present = None
        try:
            self.wait(5).until(EC.presence_of_element_located(self.cdr_match_save_changes_button_locator))
            is_not_present = False
        except:
            is_not_present = True
        finally:
            return is_not_present

    def is_cdr_match_cancel_changes_button_not_present(self):
        """
        Implementing is cdr match cancel changes button not present functionality
        :return:
        """
        is_not_present = None
        try:
            self.wait(5).until(EC.presence_of_element_located(self.cdr_match_cancel_changes_button_locator))
            is_not_present = False
        except:
            is_not_present = True
        finally:
            return is_not_present

    def click_request_new_deal_button(self):
        """
        Implementing click request new deal button functionality
        :return:
        """
        self.click_element(self.request_new_deal_button_locator)

    def set_buy_and_sell_deal_name(self, buy_and_sell_deal_prefix):
        """
        Implementing set buy and sell deal name functionality
        :return:
        """
        global buy_and_sell_deal
        buy_and_sell_deal = buy_and_sell_deal_prefix + self.random_string_generator(size=4)
        self.set_value_into_input_field(self.buy_and_sell_deal_textbox_locator, buy_and_sell_deal)

    def set_buy_sell_deal_account(self, account_list):
        """
        Implementing set buy sell deal account functionality
        :param account_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.buy_sell_deal_account_dropdown_locator, account_list)
        self.wait_for_ajax_spinner_load()

    def set_vendor(self, vendor_list):
        """
        Implementing set vendor functionality
        :param vendor_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.vendor_dropdown_locator, vendor_list)
        self.wait_for_ajax_spinner_load()

    def set_customer(self, customer_list):
        """
        Implementing set customer functionality
        :param customer_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.customer_dropdown_locator, customer_list)
        self.wait_for_ajax_spinner_load()

    def click_buy_and_sell_deal_create_button(self):
        """
        Implementing click buy and sell deal create button functionality
        :return:
        """
        self.click_element(self.add_dialed_digits_ok_button_locator)

    def get_buy_and_sell_deal_name(self):
        """
        Implementing get buy and sell deal name functionality
        :return: buy and sell deal
        """
        global buy_and_sell_deal
        return buy_and_sell_deal

    def click_vendor_grid_add_destination_button(self):
        """
        Implementing click vendor grid add destination button functionality
        :return:
        """
        self.click_element(self.vendor_grid_add_destination_locator)

    def set_source_to_add_destination(self, source_name):
        """
        Implementing set source to add destination functionality
        :param source_name:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.source_kendo_dropdown_arrow_locator, source_name)

    def set_route_class_to_add_destination(self, route_class):
        """
        Implementing set route class to add destination functionality
        :param route_class:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.route_class_multiple_kendo_dropdown_locator, route_class)
        self.click_element(self.new_destination_header_locator)

    def set_destination_to_add_destination(self, destination):
        """
        Implementing set destination to add destination functionality
        :param destination:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.destination_multiple_kendo_dropdown_locator, destination)
        self.click_element(self.new_destination_header_locator)

    def set_deal_rate_to_add_destination(self, deal_rate):
        """
        Implementing set deal rate to add destination functionality
        :param deal_rate:
        :return:
        """
        self.set_value_into_input_field(self.deal_rate_textbox_locator, deal_rate, use_win32com=True)
        self.click_element(self.new_destination_header_locator)

    def set_deal_volume_to_add_destination(self, deal_volume):
        """
        Implementing set deal rate to add destination functionality
        :param deal_volume:
        :return:
        """
        self.set_value_into_input_field(self.deal_volume_textbox_locator, deal_volume, use_win32com=True)
        self.click_element(self.new_destination_header_locator)

    def click_customer_grid_add_destination_button(self):
        """
        Implementing click customer grid add destination button functionality
        :return:
        """
        self.click_element(self.customer_grid_add_destination_locator)

    def click_request_deal_button(self):
        """
        Implementing click request deal button functionality
        :return:
        """
        self.click_element(self.request_deal_button_locator)
        try:
            self.wait().until(EC.visibility_of_element_located(self.success_message_locator), 'success message locator not found before specified time out')
            self.click_element(self.ok_button_locator, True)
        except:
            raise

    def click_add_destination_save_button(self):
        """
        Implementing click add destination save button functionality
        :return:
        """
        self.click_element(self.add_destination_save_button_locator, True)
        try:
            self.wait().until(EC.visibility_of_element_located(self.success_message_locator), 'success message locator not found before specified time out')
            self.click_element(self.ok_button_locator, True)
        except:
            raise

    def click_network_destinations_grid_row_inline_action_button(self, network_destination):
        """
        Implementing click network destinations grid row inline action button functionality
        :param network_destination:
        :return:
        """
        self.click_inline_action_button(self.network_destinations_grid_div_id, network_destination, self.network_destinations_grid_inline_action_column_number)

    def is_internal_cost_adjustment_submenu_not_present(self):
        """
        Implementing is internal cost adjustment submenu not present functionality
        :return:
        """
        status = True
        if self.is_element_visible(self.internal_cost_adjustment_submenu_locator):
            status = False
        return status

    def set_country_grid_settings(self, grid_settings):
        """
        Implementing set country grid settings functionality
        :param grid_settings:
        :return:
        """
        self.set_grid_settings(self.countries_grid_div_id, grid_settings)

    def drag_country_grid_column(self, source_column, destination_column):
        """
        Implementing drag country grid column functionality
        :param source_column:
        :param destination_column:
        :return:
        """
        self.drag_grid_column(self.countries_grid_div_id, source_column, destination_column)

    def get_country_grid_column_names_by_order(self):
        """
        Implementing get country grid column names by order functionality
        :return: column_name_list
        """
        self.column_name_list = self.get_grid_column_names_by_order(self.countries_grid_div_id)
        return self.column_name_list

    def get_all_rows_of_specific_column_from_country_grid(self, column_name):
        """
        Implementing get all rows of specific column from country grid functionality
        :param column_name:
        :return: all_row_data
        """
        self.all_row_data = self.get_all_rows_of_specific_column_from_grid(self.countries_grid_div_id, column_name, self.get_grid_row_count(self.countries_grid_total_number_of_records_count_locator, 2))
        return self.all_row_data

    def sort_country_grid_column(self, column_name, descending_order):
        """
        Implementing sort country grid column functionality
        :param column_name:
        :param descending_order:
        :return:
        """
        self.sort_grid_column(self.countries_grid_div_id, column_name, descending_order)

    def click_my_price_list_submenu(self):
        """
        Implementing click my price list submenu functionality
        :return:
        """
        self.set_existing_handles()
        my_price_list_submenu_element = self.wait().until(EC.presence_of_element_located(self.my_price_list_submenu_locator), 'my price list submenu locator not found before specified time out')
        self.hover(my_price_list_submenu_element)
        self.script_executor_click(my_price_list_submenu_element)
        self.wait_for_ajax_spinner_load()
        self.switch_to_window()

    def is_my_price_list_page_loaded_properly(self):
        """
        Implementing is audit statement fields page loaded properly functionality
        :return: True/False
        """
        loaded_properly = False
        if self.is_element_present(self.my_price_list_title_locator) is True:
            loaded_properly = True
        self.close_browser()
        self.switch_to_previous_window()
        return loaded_properly

    def set_number_plan_grid_settings(self, grid_settings):
        """
        Implementing set number plan grid settings functionality
        :param grid_settings:
        :return:
        """
        self.set_grid_settings(self.number_plan_grid_div_id, grid_settings)

    def get_number_plan_grid_column_names_by_order(self):
        """
        Implementing get number plan grid column names by order functionality
        :return: column_name_list
        """
        self.column_name_list = self.get_grid_column_names_by_order(self.number_plan_grid_div_id)
        return self.column_name_list

    def drag_number_plan_grid_column(self, source_column, destination_column):
        """
        Implementing drag number plan grid column functionality
        :param source_column:
        :param destination_column:
        :return:
        """
        self.drag_grid_column(self.number_plan_grid_div_id, source_column, destination_column)

    def get_all_rows_of_specific_column_from_number_plan_grid(self, column_name):
        """
        Implementing get all rows of specific column from number plan grid functionality
        :param column_name:
        :return: all_row_data
        """
        self.all_row_data = self.get_all_rows_of_specific_column_from_grid(self.number_plan_grid_div_id, column_name, self.get_grid_row_count(self.number_plan_grid_row_count_span_locator, 1))
        return self.all_row_data

    def sort_number_plan_grid_column(self, column_name, descending_order):
        """
        Implementing sort number plan grid column functionality
        :param column_name:
        :param descending_order:
        :return:
        """
        self.sort_grid_column(self.number_plan_grid_div_id, column_name, descending_order)

    def set_percentage(self):
        """
        Implementing set percentage functionality
        :return:
        """
        percentage = self.random_string_generator(2, string.digits)
        self.set_value_into_input_field(self.percentage_inputbox_locator, percentage, True)

    def click_save_button_and_pass_the_error_message(self):
        """
        Implementing click save button and pass the error message functionality
        :return:
        """
        self.click_element(self.add_dialed_digits_ok_button_locator, True)
        try:
            self.wait().until(EC.visibility_of_element_located(self.error_message_locator), 'error message locator not found before specified time out')
            self.click_element(self.ok_button_locator, True)
        except:
            raise

    def is_specific_error_message_present(self, label_name, error_message):
        """
        Implementing is specific error message present functionality
        :param label_name:
        :param error_message:
        :return: True/False
        """
        mandatory_field_error_message_locator = (By.XPATH, "//label[contains(text(), '%s')]/../descendant::span[contains(text(), '%s')]" % (label_name, error_message))
        return self.is_element_present(mandatory_field_error_message_locator)

    def is_route_class_grid_column_present(self, column_name):
        """
        Implementing is route class grid column present functionality
        :param column_name:
        :return: True/False
        """
        column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::th[@data-title='%s']" % (self.route_class_grid_div_id, column_name))
        return self.is_element_present(column_locator)

    def is_custom_field_alias_present(self, field_alias_name):
        """
        Implementing is custom field alias present functionality
        :param field_alias_name:
        :return: True/False
        """
        custom_field_inputbox_locator = (By.XPATH, "//label[contains(text(), '%s')]/../descendant::input" % field_alias_name)
        return self.is_element_present(custom_field_inputbox_locator)

    def is_duplicate_cost_adjustment_error_message_pop_up_present(self):
        """
        Implementing is duplicate cost adjustment error message pop up present functionality
        :return:
        """
        self.click_element(self.add_dialed_digits_ok_button_locator, True)
        is_present = None
        try:
            is_present = self.is_element_present(self.duplicate_cost_ajdustment_error_message_locator)
            if is_present is True:
                self.click_element(self.ok_button_locator, True)
        except:
            raise
        finally:
            return is_present

    def click_number_plan_upload_job_notifier(self):
        """
        Implementing click number plan upload job notifier functionality
        :return:
        """
        self.click_element(self.number_plan_upload_job_notifier_locator)

    def get_jobs_grid_row_count(self):
        """
        Implementing get jobs grid row count functionality
        :return:
        """
        self.jobs_grid_row_count = self.get_grid_row_count(self.jobs_grid_count_span_locator, 2)

    def compare_jobs_grid_row_count(self):
        """
        Implementing compare jobs grid row count functionality
        :return:
        """
        timeout = 900
        comparison_result = False
        try:
            end_time = time.time() + timeout
            while time.time() < end_time:
                self.wait(5)
                self.click_generic_search_button()
                self.wait_for_ajax_spinner_load()
                current_count = self.get_grid_row_count(self.jobs_grid_count_span_locator, 2)
                if (int(current_count)) > (int(self.jobs_grid_row_count)):
                    comparison_result = True
                    break
        except:
            raise
        finally:
            return comparison_result

    def is_expected_button_not_visible(self, button):
        """
        Implementing is expected button not visible functionality
        :param button:
        :return: True/False
        """
        status = None
        button_locator = (By.XPATH, "//button[text()='%s']" %(button))
        try:
            self.wait(10).until(EC.visibility_of_element_located(button_locator))
            status = False
        except:
            status = True
        finally:
            return status

    def click_country_grid_first_row_inline_action_button(self):
        """
        Implementing click country grid first row inline action button functionality
        :return:
        """
        self.click_inline_action_button(self.country_grid_div_id, None, self.country_grid_inline_action_button_column_position, True)

    def click_country_delete_inline_item(self):
        """
        Implementing click country delete inline item functionality
        :return:
        """
        self.select_inline_action_item(self.delete_inline_item)
        try:
            self.wait().until(EC.visibility_of_element_located(self.delete_selected_rows_confirmation_message_locator), 'country delete confirmation message locator not found before specified time out')
            self.wait_for_ajax_spinner_load(timeout=5)
            self.click_element(self.ok_button_locator)
            self.wait().until(EC.visibility_of_element_located(self.delete_success_message_locator), 'country delete success message locator not found before specified time out')
            self.wait_for_ajax_spinner_load(timeout=5)
            self.click_element(self.ok_button_locator)
        except:
            raise

    def is_specific_column_present_in_source_and_policy_grid(self, column_name):
        """
        Implementing is specific column present in source and policy grid functionality
        :param column_name:
        :return: True/False
        """
        column_locator = (By.XPATH, "//div[@id='grdSource']/descendant::div[@class='k-grid-header']/descendant::th[@data-title='%s']" % column_name)
        return self.is_element_present(column_locator)

    def set_specific_textbox_column_in_source_and_policy_grid(self, column_name, prefix):
        """
        Implementing set specific textbox column in source and policy grid functionality
        :param column_name:
        :param prefix:
        :return:
        """
        column_value = prefix + self.random_string_generator(4)
        self.set_value_in_grid_column(self.source_grid_div_id, column_name, column_value)
        self.click_element(self.business_admin_page_title_locator)

    def set_specific_dropdown_column_in_source_and_policy_grid(self, column_name, item_name):
        """
        Implementing set specific dropdown column in source and policy grid functionality
        :param column_name:
        :param item_name:
        :return:
        """
        self.single_selection_from_kendo_in_grid(self.source_grid_div_id, column_name, item_name)
        self.click_element(self.business_admin_page_title_locator)
        self.wait_for_ajax_spinner_load()

    def check_custom_rc_checkbox(self):
        """
        Implementing check custom rc checkbox functionality
        :return:
        """
        self.click_element(self.custom_rc_checkbox_locator)

    def is_error_message_displayed_for_empty_search_criteria(self):
        """
        Implementing is error message displayed for empty search criteria functionality
        :return: True/False
        """
        status = self.is_element_visible(self.begin_date_is_required_error_message_locator)
        if status is True:
            self.click_element(self.ok_button_locator)
        return status

    def compare_begin_date_with_given_date(self, begin_date):
        """
        Implementing compare begin date with given date functionality
        :param begin_date: 
        :return: 
        """
        is_matched = True
        expected_date = time.strptime(begin_date, "%m/%d/%Y")
        if self.get_grid_row_count(self.exchange_rates_grid_row_count_locator, 2) > 0:
            all_begin_date = self.get_all_rows_of_specific_column_from_grid(self.exchange_rates_grid_div_id, self.begin_date_column_name, self.get_grid_row_count(self.exchange_rates_grid_row_count_locator, 2))
            for date in all_begin_date:
                actual_date = time.strptime(date, "%m/%d/%Y")
                if expected_date > actual_date:
                    is_matched = False
                    break
        return is_matched

    def compare_end_date_with_given_date(self, end_date):
        """
        Implementing compare end date with given date functionality
        :param end_date: 
        :return: 
        """
        is_matched = True
        if end_date == '':
            end_date = self.get_date(current_date=True)
        expected_date = time.strptime(end_date, "%m/%d/%Y")
        if self.get_grid_row_count(self.exchange_rates_grid_row_count_locator, 2) > 0:
            all_end_date = self.get_all_rows_of_specific_column_from_grid(self.exchange_rates_grid_div_id, self.begin_date_column_name, self.get_grid_row_count(self.exchange_rates_grid_row_count_locator, 2))
            for date in all_end_date:
                actual_date = time.strptime(date, "%m/%d/%Y")
                if expected_date < actual_date:
                    is_matched = False
                    break
        return is_matched
