"""Implementing Sell screen page objects"""

from TestFramework.Libraries.Pages.base_page import BasePage
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC
import TestFramework.Libraries.Modules.database as Database
import datetime
import time
from TestFramework.Libraries.RobotTests.Carrier import Carrier


class SellPage(BasePage):
    """
    Contains Sell UI page locators
    Switch to sell function
    Get sell page title function
    Is sell dashboard tab present function
    Is customer tab present function
    Is country groups link present function
    Select customer tab function
    Is create customer present function
    Is customer price lists present function
    Is create customer price lists present function
    Is price exceptions present function
    Is customer grid displayed function
    Click customer grid inline action button
    Set customer profile status
    Click save customer profile button
    Verify customer grid row data
    Click customer price lists button function
    Is customer price lists screen displayed function
    Click sell page inline action button function
    Is customer profile present function
    Is customer rates present function
    Is customer digits present function
    Is price exceptions performance present function
    Is upload price exceptions present function
    Is customer destination present function
    Click create customer price lists button function
    Is create customer price lists screen loaded function
    Set apply increase notice period function
    Set apply digit change notice period function
    Set apply decrease notice period function
    Select customers for price lists function
    Select all countries for price lists function
    Click preview button function
    Is preview page displayed function
    Close preview page function
    Click on generate customer price lists button function
    Is customer price lists generation successful function
    Click customer grid information button function
    Get customer grid row details function
    Verify customer details in information pop up function
    Set Reference Price List function
    Set Offer Content function
    Set Offer Date function
    Set from date function
    Click customer price lists search button function
    Click customer price lists inline action button function
    Is delete inline action item present function
    Is issue inline action item present function
    Is issue for manual distribution inline action item present function
    Is view price list detail inline action item present function
    Filter customer price lists grid function
    Get selected price list function
    Clear filter of customer price list function
    Clear all table filters of customer price list function
    Verify customer price list grid row details function
    Accept price list processed pop up function
    Click on create customer button function
    Set customer name function
    Set abbreviation function
    Set ixtools account function
    Set rate plan function
    Set number plan function
    Set call type function
    Click on save customer profile for create function
    Is status inactive function
    Verify customer profile details in database function
    Verify customer status in database function
    Set number plan for create customer function
    Click price exceptions button function
    Set number plan for price exceptions function
    Set status function
    Set customers function
    Set select date function
    Set destination function
    Click price exceptions search button function
    Search results displayed in the grid function
    Select customer price lists checkbox function
    Click compare price lists button function
    Verify selected price lists details function
    Verify rates grid columns function
    Select dial digits tab function
    Verify dialed digits columns function
    Close compare price lists pop up function
    Set customer profile status for edit customer functionality function
    Is customers field not editable function
    Select pricing exception grid first row function
    Set first row requested price function
    Set first row begin date function
    Set first row approval type function
    Click price exceptions page header function
    Get price exceptions grid first row data function
    Is price exceptions status entered function
    Click save changes button function
    Check price exceptions grid first row data function
    Set price exceptions performance begin date function
    Click price exception performance submit button function
    Verify price exceptions performance begin date function
    Verify price exceptions performance customer function
    Click copy price list exceptions button function
    Select customers for price lists function
    Click copy price exceptions submit button function
    Is copy price exceptions successful functionality function
    Click save changes button after copy price exceptions function
    Set price exceptions grid first row status function
    Price exceptions grid has data function
    Set begin date for status updation function
    Set select date for status updation function
    Get price exceptions first grid first row details function
    Click pricing exception grid first row inline action button function
    Verify price exceptions details function
    Click bulk edit button function
    Set begin date function
    Set end date function
    Click bulk edit submit button function
    Set bulk edit status function
    Set bulk edit approval type function
    Set requested price function
    Set estimated value function
    Select pricing exception grid multiple row function
    Click upload price exceptions button function
    Click upload price exceptions browse button function
    Set customer for upload price exceptions function
    Click price exceptions upload button function
    Click price exception upload link function
    Set status for pricing exception search function
    Click pricing exceptions upload search button function
    Get upload price exceptions number of rows function
    Get price exceptions number of rows from grid function
    Compare price exceptions number of rows from grid function
    Is price exceptions page loaded properly function
    Is price exceptions total number of records displayed function
    Get created carrier name function
    Get created rate plan name function
    Get created customer name function
    Get revenue from customers grid function
    Get margin from customers grid function
    Get last modified time from customer profile information function
    Get customer rates begin date function
    Get column value of table inside grid function
    Get rate1 from customer rates grid function
    Get rate2 from customer rates grid function
    Get rate3 from customer rates grid function
    Get begin date from customer rates grid function
    Get last modified from customer rates grid function
    Select dialed digit tab function
    Select rates tab function
    Select destinations tab function
    Get customer dialed digit begin date function
    Get begin date from customer dialed digit grid function
    Get modified date from customer dialed digit grid function
    Get customer destinations begin date function
    Get begin date from customer destinations grid function
    Get last modified from customer destinations grid function
    Get customer price list from date function
    Get customer price list to date function
    Get price list date from customer price list grid function
    Get modified date from customer price list grid function
    Get price list date from selected price list grid function
    Get offer date function
    Get select date function
    Click customer grid first row inline action button function
    Set pricing exceptions select date function
    Click upload customer price lists button function
    Click upload customer price list browse button function
    Set customer name for upload customer price list function
    Get customer price list grid number of rows function
    Compare customer price lists number of rows after upload function
    Set customer grid settings function
    Get all rows of specific column from customers grid function
    Sort customers grid column function
    Compare sorted data function
    Get customers grid column names by order function
    Drag customers grid column function
    Compare grid column position after altering function
    Click customer grid export to excel button function
    Get all rows of specific column from customer rates grid function
    Sort customer rates grid column function
    Get customer rates grid column names by order function
    Drag customer rates grid column function
    Click customer rates search button function
    Is customer rates grid filtered properly function
    Get all rows of specific column from customer digits grid function
    Sort customer digits grid column function
    Get customer digits grid column names by order function
    Drag customer digits grid column function
    Click search button function
    Is customer digits grid filtered properly function
    Get all rows of specific column from customer destinations grid function
    Sort customer destinations grid column function
    Get customer destinations grid column names by order function
    Drag customer destinations grid column function
    Is customer destinations grid filtered properly function
    Filter customer destinations grid function
    Set customer price lists grid settings function
    Get all rows of specific column from customer price lists grid function
    Sort customer price lists grid column function
    Get customer price lists grid column names by order function
    Drag customer price lists grid column function
    Is customer price lists grid filtered properly function
    Click customer price lists grid export to excel button function
    Click customer price lists grid first row inline action button function
    Set customer price list detail grid settings function
    Get all rows of specific column from customer price list detail grid function
    Sort customer price list detail grid column function
    Get customer price list detail grid column names by order function
    Drag customer price list detail grid column function
    Is customer price list detail grid filtered properly function
    Click customer price list detail grid export to excel button function
    Filter customer price list detail grid function
    Set price exceptions grid settings function
    Get all rows of specific column from price exceptions grid function
    Sort price exceptions grid column function
    Get price exceptions grid column names by order function
    Drag price exceptions grid column function
    Is price exceptions grid filtered properly function
    Click price exceptions grid export to excel button function
    Filter price exceptions grid function
    Click price exceptions performance report button function
    Select upload to requested radio button function
    Click create cpe bundle button function
    Click create cpe bundle save button function
    Select sell dashboard tab function
    Click cpe bundle button function
    Click cpe bundle create cpe bundle button  function
    Set customer source  function
    Select all customer of pricing exceptions  function
    Select price exception request grid multiple row  function
    Is bulk edit error pop up displayed  function
    Is save customer profile button not present function
    Is specific tab on customer profile page present function
    Is specific column on customer profile grid present function
    Is upload customer price list button not present function
    Click show summary form button to expand function
    Is error log message tab present function
    Get cpl prev date override function
    Set cpl prev date override function
    Get customers grid first row customer name function
    Click my price list button function
    Is my price list screen loaded function
    Click new my price list button function
    Is create my price list screen loaded function
    Set my price list name function
    Get my price list name function
    Move all available customers to destination to create my price list function
    Move all available countries to destination to create my price list function
    Click save my price list button function
    Set my price list into search input field function
    Click my price list management grid first row inline action button function
    Select my price list management grid inline action item function
    Is error message displayed for duplicate my price list function
    Select item from my price list drop down function
    Click customer price list preview export to excel button function
    Select my price list management grid first row checkbox function
    Click delete button function
    Click country group link function
    Click choose template type to download customer price list link function
    Set reference price list first item function
    Set number plan first item function
    Are countries selected function
    Select first customer for price lists function
    Validate country dropdown does not show country having no country code function
    Get countries from tbcountry having no mobile country code function
    Is warnings message tab present function
    Is errors message tab present function
    Is warning tab present function
    Select warning tab function
    Is warning tab loaded function
    Is pricing exception error message displayed for approved or request status function
    Is sorting options are displayed in customer price list preview screen function
    Is search rate present function
    Is country multiselect field disabled function
    Set offer content for mypricelist function
    Set mypricelist to create cpl function
    Is country multiselect field enabled function
    Get all items from my pricelist dropdown function
    Is grid empty function
    Is deleted mypricelist removed from mypricelist dropdown function
    Is future price list action column name not present function
    Is future price list action column name present function
    Is pricing exception bulk edit pop up not present function
    Set first row note function
    Click auto generate management button function
    Is auto generate management screen present function
    Is specific column present in auto generate management screen function
    Click new template button function
    Set new template name function
    Get created template name function
    Set begin of range period date to add function
    Set begin of range period time function
    Set end of range period date to add function
    Set end of range period time function
    Filter auto template management grid function
    Get auto template management grid row details function
    Verify number plan field value function
    Get offer content field value function
    Get my price list name from mpl management grid function
    Set scope for mypricelist function
    Set select date to mypricelist grid function
    Set mypricelist from kendo dropdown function
    Compare select date in mypricelist function
    Set offer date to mypricelist grid function
    Compare offer date in mypricelist function
    Is preview summary grid column displayed function
    Click customer price list job notifier title function
    Click first row job msg info icon function
    Does jobs grid have data function
    Is generate offers for filter option present function
    Is generate offers for filter option not present function
    Click Show search form link function
    Set value into destination input box function
    Compare customer price lists number of rows after upload for one upload function
    Set value into pricing exception destination input box function
    Is price exception grid begin date field auto populated function
    Click quality of service link function
    Set quality of service function
    Is qos grid column_present function
    Check ixlink customer checkbox function
    Get available number of countries for price lists function
    Click buy and sell deal management link function
    Verify deal management grid column display thousand separators function
    Is pricing exception grid error message appeared function
    Is qos screen filter option present function
    Click clear button function
    Is qos filter option selection cleared function
    Get source name from source customer table function
    Check exclude own home country checkbox function
    Assign available country to source function
    Get cost policy status from database function
    Is homecountry not displayed in preview grid function
    Uncheck exclude own home country checkbox function
    Is homecountry displayed in preview grid function
    Get source name from source customer table where countryid is not null functionality function
    Click import button function
    Click qos browse button function
    Click upload files button function
    Compare cpl count after creating a new one function
    Is dialed digits mcc mnc tab present function
    Is first row future offer actions disabled  function
    Is second row future offer actions enabled function
    Click second row future offer actions dropdown function
    Does future offer actions dropdown have proper options function
    Set to date function
    Click price exception excel template download button function
    Is specific column present in mypricelist grid function
    Is specific field present in mypricelist page function
    Is field present function
    Is button displayed function
    Click auto generate template grid first row inline action button function
    Is inline action item present function
    Check require cpl approval checkbox function
    Select customer price list grid first row function
    Click issue price lists button with cpl approval function
    Select destinations checkbox function
    Set price exception grid begin date function
    Set reference price list for for create customer function
    Click price exception grid first row info icon function
    Verify date range error message function
    Select customers for mypricelist function
    Select countries for mypricelist function
    """
    # Start: Sell page locators
    default_tab_header_locator = (By.XPATH, "//div[@id='SellTabStrip-1']/descendant::h3")
    sell_dashboard_tab_locator = (By.XPATH, "//div[@id='SellTabStrip']/descendant::li[@aria-controls='SellTabStrip-1']/descendant::a")
    customers_tab_locator = (By.XPATH, "//div[@id='SellTabStrip']/descendant::li[@aria-controls='SellTabStrip-2']/descendant::a")
    country_groups_locator = (By.ID, "btnCountryGroups")
    carrier_page = Carrier()
    search_button_locator = (By.XPATH, "//button[text()='Search']")
    sell_header_locator = (By.XPATH, "//label[@class='page-title' and text()='Sell']")
    quality_of_service_link_locator = (By.ID, "btnQoS")

    # Start: Customer page locators
    column_name_list = []
    all_row_data = []
    grid_column_number = 3
    customers_grid_inline_action_column_number = 3
    customers_div_id = "divCustomers"
    customers_grid_info_button_column_number = 2
    customer_information_dict = {"Customer": "", "Carrier": "", "Status": "", "Link Code": "", "Receiving Member": ""}
    create_customer_locator = (By.ID, "btnCreateCustomer")
    customer_price_lists_locator = (By.ID, "btnPriceLists")
    create_customer_price_lists_locator = (By.ID, "btnCustomerOffer")
    price_exceptions_locator = (By.ID, "btnPriceExceptions")
    customer_column_locator = (By.XPATH, "//div[@id='tblCustomers']/descendant::a[text()='Customer']")
    customer_profile_locator = (By.XPATH, "//div[@id='Actions-list']/descendant::li[text()='Customer Profile']")
    customer_rates_locator = (By.XPATH, "//div[@id='Actions-list']/descendant::li[text()='Customer Rates']")
    customer_digits_locator = (By.XPATH, "//div[@id='Actions-list']/descendant::li[text()='Customer Digits']")
    price_exceptions_performance_locator = (By.XPATH, "//div[@id='Actions-list']/descendant::li[text()='Price Exceptions Performance']")
    upload_price_exceptions_locator = (By.XPATH, "//div[@id='Actions-list']/descendant::li[text()='Upload Price Exceptions']")
    customer_destination_locator = (By.XPATH, "//div[@id='Actions-list']/descendant::li[text()='Customer Destination']")
    price_exceptions_performance_begin_date_locator = (By.ID, "PEPStartDate")
    price_exceptions_performance_submit_button_locator = (By.ID, "PEPRequestSubmit")
    report_selections_begin_date_locator = (By.XPATH, "//td[text()='Begin Date:']/../descendant::td[2]")
    report_selections_customer_locator = (By.XPATH, "//td[text()='Customer:']/../descendant::td[2]")
    price_exceptions_number_of_records_count_locator = (By.XPATH, "//div[@id='divSelectCount']/descendant::span[contains(text(), 'Pricing Exceptions selected out of')]")
    revenue_column_name = "Revenue"
    margin_column_name = "Margin"
    customers_data_grid_name = "CustomersGrid"
    customers_grid_count_span_locator = (By.XPATH, "//div[@id='divBar']/span")
    price_exceptions_performance_report_button_locator = (By.ID, "btnCPEReport")
    ixlink_customer_checkbox_locator = (By.XPATH, "//input[contains(@id, 'rdoYesiXLinkCustomer_add_')]")
    exclude_own_home_country_checkbox_locator = (By.XPATH, "//input[contains(@id, 'rdoYesOwnHomeCountry_')]")
    country_single_selection_locator = (By.XPATH, "//input[contains(@id, 'btnMoveDest_cogCountry_')]")

    # Start: Customer Profile locators under Customer page
    customer_profile_status_kendo_dropdown_locator = (By.ID, "StatusId")
    save_customer_profile_button_locator = (By.ID, "btnSave")
    last_modified_locator = (By.XPATH, "//label[text()='Last Modified']/../descendant::span")
    rates_tab_locator = (By.XPATH, "//a[text()='Rates']")
    destinations_tab_locator = (By.XPATH, "//a[text()='Destinations']")
    cpl_prev_date_override_dropdown_locator = (By.XPATH, "//input[contains(@id, 'ddlCplPreviewDateOverride')]")
    cpl_prev_date_override_dropdown_locator_for_value = (By.XPATH, "//label[text()='CPL Prev. Date Override']/../descendant::span[@class='k-input']")
    choose_template_type_to_download_customer_price_list_link_locator = (By.XPATH, "//a[@id='lnkPriceListExcelTemplate' and contains(text(), 'Choose Template Type above and click')]")
    number_plan_field_locator = (By.XPATH, "//label[text()='Number Plan']/../descendant::span[@class='k-input']")
    # End: Customer Profile locators under Customer page
    # End: Customer page locators

    # Start: Customer Rates tab locators
    customer_rates_grid_div_id = "divCustomerRates"
    customer_rates_count_span_locator = (By.XPATH, "//div[contains(@id, 'divCPRBar')]/span")
    customer_rates_begin_date_inputbox_locator = (By.XPATH, "//label[contains(text(), 'Begin Date')]/../descendant::input")
    rate1_column_name = "Rate1"
    rate2_column_name = "Rate2"
    rate3_column_name = "Rate3"
    begin_date_column_name = "Begin Date"
    last_modified_column_name = "Last Modified"
    customer_rates_search_button_locator = (By.ID, "searchCustProfRate")
    # End: Customer Rates tab locators

    # Start: Customer Destinations tab locators
    customer_destinations_grid_div_id = "divCustomerProfileDestination"
    customer_destinations_count_span_locator = (By.XPATH, "//div[contains(@id, 'divCPDestBar')]/span")
    customer_destinations_begin_date_inputbox_locator = (By.XPATH, "//input[contains(@id, 'custProfDestinationBeginDates')]")
    # End: Customer Destinations tab locators

    # Start: Customer Dialed Digit tab locators
    dialed_digit_tab_locator = (By.XPATH, "//a[text()='Dialed Digit']")
    customer_dialed_digit_grid_div_id = "divCustomerDialedDigit"
    customer_dialed_digit_count_span_locator = (By.XPATH, "//div[contains(@id, 'divCPDBar')]/span")
    modified_date_column_name = "Modified Date"
    customer_dialed_digit_begin_date_inputbox_locator = (By.XPATH, "//input[contains(@id, 'custProfDialBeginDate')]")
    # End: Customer Destinations tab locators

    # Start: Customer Price Lists page locators
    customer_price_lists_inline_action_column_number = 2
    customer_price_lists_div_id = "divCustomerPriceList"
    selected_price_list = ""
    customer_unique_id = ""
    customer_status_column_number = 6
    customer_price_lists_checkbox_column_number = 1
    compare_price_lists_list = []
    future_price_list_actions_column_name = "Future Price List(s) Actions"

    customer_price_lists_page_header_locator = (By.XPATH, "//span[@class='page-title' and text()='Customer Price Lists ']")
    from_date_locator = (By.ID, "OfferDateFrom")
    customer_price_lists_search_button_locator = (By.ID, "searchCustomerPriceList")
    price_list_processed_popup_locator = (By.XPATH, "//p[text()='Price Lists have been processed.']")
    delete_inline_action_item_locator = (By.XPATH, "//ul[@id='Actions_listbox']/li[text()='Delete']")
    issue_inline_action_item_locator = (By.XPATH, "//ul[@id='Actions_listbox']/li[text()='Issue']")
    issue_for_manual_distribution_inline_action_item_locator = (By.XPATH, "//ul[@id='Actions_listbox']/li[text()='Issue for Manual Distribution']")
    view_price_list_detail_inline_action_item_locator = (By.XPATH, "//ul[@id='Actions_listbox']/li[text()='View Price List Detail']")
    compare_price_lists_button_locator = (By.ID, "btnComparePriceList")
    price_list_column_locator = (By.XPATH, "//div[@id='divSelectedPriceLists']/descendant::th[@data-title='Price List']")
    rates_grid_destination_column_locator = (By.XPATH, "//div[@id='divComaprePriceListRate']/descendant::th[@data-title='Destination']")
    dial_digits_tab_locator = (By.XPATH, "//a[text()='Dial Digits']")
    dialed_digits_grid_destination_column_locator = (By.XPATH, "//div[@id='divComparePriceListDialedDigit']/descendant::th[@data-title='Destination']")
    dialed_digits_grid_dialed_digit_column_locator = (By.XPATH, "//div[@id='divComparePriceListDialedDigit']/descendant::th[@data-title='Dialed Digit']")
    close_compare_price_list_pop_up_locator = (By.XPATH, "//h4[@class='priceListTitle']/../../../../descendant::span[text()='Close']")
    to_date_locator = (By.ID, "OfferDateTo")
    customer_price_list_count_span_locator = (By.ID, "divCustomerPriceListBar")
    price_list_date_column_name = "Price List Date"
    selected_price_list_grid_div_id = "tblSelectedPriceLists"
    customer_price_lists_grid_count_span_locator = (By.XPATH, "//div[@id='divCustomerPriceListBar']/descendant::span")
    upload_customer_price_list_button_locator = (By.ID, "btnUploadCustomerPriceLists")
    upload_customer_price_list_browse_button_locator = (By.XPATH, "//input[@id='UPEFile']/..")
    upload_customer_price_list_customer_field_locator = (By.XPATH, "//div[@id='divCustomerDetail']/descendant::span[text()='Customer']/../../descendant::input")
    price_list_content_dropdown_locator = (By.XPATH, "//label[text()='Price List Content']/../descendant::input")
    area_job_status_menu_button_locator = (By.XPATH, "//ul[contains(@id, 'areaJobStatusMenu')]")
    customer_price_list_job_notifier_locator = (By.XPATH, "//span[@class='jobNotifierTitle' and text()='Customer Price List Creation']")
    first_row_job_msg_info_icon_locator = (By.XPATH, "//span[@class='sajInfoImg infoIcon']")
    customer_offer_preview_grid_no_record_found_message_locator = (By.XPATH, "//div[@data-grid-name='CustomerOfferPreviewGrid']/descendant::span[text()='No records found.']")
    customer_price_lists_county_count_span_locator = (By.XPATH, "//span[contains(@id, 'count_from_cogCountry_')]")
    dialed_digit_mcc_mnc_tab_locator = (By.XPATH, "//div[contains(@id, 'ViewPriceListDetailTabStrip_')]/descendant::a[contains(text(), 'Dialed Digits/MCC-MNC')]")
    issue_price_lists_button_locator = (By.ID, "generatePriceList")
    approval_error_message_locator = (By.XPATH, "//p[text()='Issue Price Lists may only be executed for Created or Approved price lists. Please review your selections.']")
    destinations_checkbox_locator = (By.XPATH, "//input[contains(@id, 'rbDestination')]")

    # Start: Customer price list detail page locators
    customer_price_list_detail_div_id = "divRates"
    # End: Customer price list detail page locators

    # End: Customer Price Lists page locators

    # Start: Create Customer page locators
    customer_profile = {"Source": "", "Account": "", "ActiveStatusID": "", "RatePlan": "", "CallType": ""}
    customer_profile_data_from_database = {"Source": "", "Account": "", "ActiveStatusID": "", "RatePlan": "", "CallType": ""}
    customer_name_textbox_locator = (By.XPATH, "//label[text()='Customer Name']/../descendant::input")
    abbreviation_textbox_locator = (By.XPATH, "//label[text()='Abbreviation']/../descendant::input")
    ixtools_account_kendo_dropdown_locator = (By.XPATH, "//label[text()='iXTools Account']/../descendant::input")
    rate_plan_kendo_dropdown_locator = (By.XPATH, "//label[text()='Rate Plan']/../descendant::input")
    call_type_kendo_dropdown_locator = (By.XPATH, "//label[text()='Call Type']/../descendant::input")
    number_plan_kendo_dropdown_locator = (By.XPATH, "//label[text()='Number Plan']/../descendant::input")
    save_customer_profile_locator_for_create = (By.XPATH, "//input[@value='Save Customer Profile']")
    ok_button_locator = (By.ID, "btnOk")
    confirmation_popup_locator = (By.XPATH, "//p[text()='Data has been saved successfully']")
    bulk_edit_error_popup_locator = (By.XPATH, "//p[text()='These Pricing Exceptions cannot be batch edited as they does not belong to same Status']")
    my_price_list_button_locator = (By.XPATH, "//button[text()='myPriceList']")
    generate_offers_for_filter_locator = (By.XPATH, "//label[text()='Generate offer(s) for']")
    require_cpl_approval_checkbox_locator = (By.XPATH, "//label[text()='Require CPL Approval']/../descendant::input")
    reference_price_list_kendo_dropdown_locator = (By.XPATH, "//label[text()='Reference Price List']/../descendant::input")
    # End: Create Customer page locators

    # Start: Create Customer Price Lists page locator
    create_customer_price_lists_page_header_locator = (By.XPATH, "//h2[text()='Create Customer Price Lists']")
    preview_page_header_locator = (By.XPATH, "//h3[text()='Customer Price List Preview ']")
    apply_increase_notice_period_dropdown_locator = (By.XPATH, "//label[text()='Apply Increase Notice Period']/../descendant::input")
    apply_digit_change_notice_period_dropdown_locator = (By.XPATH, "//label[text()='Apply Digit Change Notice Period']/../descendant::input")
    apply_decrease_notice_period_dropdown_locator = (By.XPATH, "//label[text()='Apply Decrease Notice Period']/../descendant::input")
    select_customer_button_locator = (By.XPATH, "//div[@class='multi-select-list-title' and text()='Customers ']/../../descendant::div[@class='multi-select-adjust']/input[@value='>']")
    select_all_countries_button_locator = (By.XPATH, "//div[@class='multi-select-list-title' and text()='Countries ']/../../descendant::div[@class='multi-select-adjust']/input[@value='>>']")
    preview_button_locator = (By.XPATH, "//button[contains(@id, 'btnPreview')]")
    preview_page_close_button_locator = (By.XPATH, "//span[@id='CustomerOfferPreviewWindow_wnd_title']/../descendant::span[text()='Close']")
    generate_customer_price_lists_button_locator = (By.ID, "btnGenerate_1")
    customer_price_lists_generation_success_message_locator = (By.XPATH, "//p[text()='The Price List(s) have been saved successfully.']")
    referenece_price_list_dropdown_locator = (By.XPATH, "//label[text()='Reference Price List']/../descendant::input")
    referenece_price_list_dropdown_arrow_locator = (By.XPATH, "//label[text()='Reference Price List']/../descendant::span[text()='select']")
    number_plan_dropdown_locator = (By.XPATH, "//a[@class='CustomerOffer-HelpTextLink']/../../descendant::input")
    number_plan_dropdown_arrow_locator = (By.XPATH, "//a[@class='CustomerOffer-HelpTextLink']/../../descendant::span[text()='select']")
    number_plan_dropdown_box_locator = (By.XPATH, "//label[contains(text(), 'Number Plan')]/a[@class='CustomerOffer-HelpTextLink']/../../descendant::span[@class='k-input']")
    offer_content_dropdown_locator = (By.XPATH, "//label[text()='Offer Content']/../descendant::input")
    offer_date_textbox_locator = (By.XPATH, "//label[text()='Offer Date']/../descendant::input")
    show_summary_form_button_locator = (By.XPATH, "//span[text()='Customer Price List Summary']/../descendant::a[text()='Show Summary Form']")
    error_lag_message_locator = (By.XPATH, "//a[text()='Log Message(s)']")
    available_countries_count_locator = (By.XPATH, "//span[contains(@id, 'count_from_cogCountry')]")
    first_customer_locator = (By.XPATH, "//select[contains(@id, 'from_cogCustomer')]/option")
    warnings_message_locator = (By.XPATH, "//a[text()='Warnings']")
    errors_message_locator = (By.XPATH, "//a[text()='Errors']")
    warning_tab_locator = (By.XPATH, "//a[text()='Warnings']")
    warning_message_column_locator = (By.XPATH, "//th[@data-title='Warning Messages']/a[text()='Warning Messages']")
    search_rate_text_locator = (By.XPATH, "//span[text()='Search Rates']")
    country_multiselection_to_field_locator = (By.XPATH, "//select[contains(@id, 'to_lstCountries_mpld_')]")
    mypricelist_offer_content_dropdown_arrow_locator = (By.XPATH, "//form[contains(@id, 'frmMyPriceListDetails_mpld_')]/descendant::label[text()='Offer Content']/../descendant::span[@class='k-icon k-i-arrow-s']")
    mypricelist_kendo_dropdown_arrow_locator = (By.XPATH, "//form[contains(@id, 'createCustomerPrice_')]/descendant::label[text()='myPriceList']/../descendant::span[@class='k-icon k-i-arrow-s']")
    future_price_list_action_column_name_locator = (By.XPATH, "//div[@id='divCustomerPriceList']/descendant::th[@data-title='Future Price List(s) Actions']")
    bulk_edit_popup_locator = (By.XPATH, "//span[text()='Bulk Edit']")
    mypricelist_offer_content_field_locator = (By.XPATH, "//form[contains(@id, 'frmMyPriceListDetails_mpld_')]/descendant::label[text()='Offer Content']/../descendant::span[@class='k-input']")
    mypricelist_scope_dropdown_arrow_locator = (By.XPATH, "//form[contains(@id, 'frmMyPriceListDetails_mpld_')]/descendant::label[text()='myPricelist Scope']/../descendant::span[@class='k-icon k-i-arrow-s']")
    mypricelist_dropdown_arrow_locator = (By.XPATH, "//form[contains(@id, 'createCustomerPrice_')]/descendant::label[text()='myPriceList']/../descendant::span[@class='k-icon k-i-arrow-s']")
    show_search_form_locator = (By.XPATH, "//a[text()='Show Search Form']")

    # Start: My Price List Management Page Locator
    my_price_list_management_screen_title_locator = (By.XPATH, "//h3[text()='myPriceList Management']")
    new_my_price_list_button_locator = (By.ID, "btnCreate")
    create_my_price_list_screen_title_locator = (By.XPATH, "//h2[text()='Create myPriceList']")
    my_price_list_input_field_locator = (By.XPATH, "//input[contains(@id, 'txtMyPriceList_mpld_')]")
    create_my_price_list_move_all_customers_arrow_button_locator = (By.XPATH, "//input[contains(@id, 'btnMoveAllDest_lstCustomers_mpld_')]")
    create_my_price_list_move_all_countries_arrow_button_locator = (By.XPATH, "//input[contains(@id, 'btnMoveAllDest_lstCountries_mpld_')]")
    save_my_price_list_button_locator = (By.XPATH, "//button[contains(@id, 'btnSave_mpld_')]")
    my_price_list_search_input_field_locator = (By.XPATH, "//input[contains(@id, 'txtMyPriceList_')]")
    my_price_list_grid_div_id = "MyPriceListGrid"
    my_price_list_grid_inline_action_button_column_position = 3
    my_price_list_already_exists_error_message_locator = (By.XPATH, "//div[@id='messagingPopup']/descendant::p[contains(text(), 'name already exists.')]")
    my_price_list_kendo_drop_down_locator = (By.XPATH, "//label[text()='myPriceList']/../descendant::span[@role='listbox']")
    customer_price_list_preview_export_to_excel_button_locator = (By.ID, "exportToExcel")
    my_price_list_grid_checkbox_column_position = 2
    delete_button_locator = (By.ID, "btnDelete")
    delete_successful_message_locator = (By.XPATH, "//p[text()='Data has been deleted successfully']")
    my_pricelist_dropdown_arrow_locator = (By.XPATH, "//label[text()='myPriceList']/../descendant::span[text()='select']")
    mypricelist_column_name = "myPriceList"
    select_date_column_name = "Select Date"
    my_price_list_data_drid_name = "MyPriceListGrid"
    offer_date_column_name = "Offer Date"
    mypricelist_available_customers_selectbox_id = "from_lstCustomers_mpld_0"
    mypricelist_customer_move_single_item_button_locator = (By.XPATH, "//input[contains(@id, 'btnMoveDest_lstCustomers_mpld')]")
    mypricelist_available_countries_selectbox_id = "from_lstCountries_mpld_0"
    mypricelist_country_move_single_item_button_locator = (By.XPATH, "//input[contains(@id, 'btnMoveDest_lstCountries_mpld')]")
    # End: My Price List Management Page Locator

    # End: Create Customer Price Lists page locator

    # Start: Price Exceptions page locators
    price_exception_grid_checkbox_column_number = 2
    price_exceptions_inline_action_column_number = 3
    price_exceptions_grid_first_row_data = {"Requested Price [A]": "", "Begin Date": "", "Approval Type": ""}
    price_exceptions_first_grid_first_row_details = {"Status": "", "Customer": "", "Destination": ""}
    price_exceptions_grid_row_count_div_id = "divSelectCount"
    future_date = ""
    available_customers_selectbox_id = "from_Customers"
    date_to_set = ""
    pricing_exception_move_all_customers_arrow_button_locator = (By.XPATH, "//input[contains(@id, 'btnMoveAllDest_lstExceptions')]")
    pricing_exception_destination_input_box_locator = (By.XPATH, "//input[contains(@id, 'priceExceptionDestinations')]")

    status_kendo_dropdown_locator = (By.XPATH, "//label[contains(text(), 'Status')]/../descendant::input")
    customers_kendo_dropdown_locator = (By.XPATH, "//label[contains(text(), 'Customer')]/../descendant::input")
    number_plan_in_price_exception_dropdown_arrow_locator = (By.XPATH, "//label[contains(text(), 'Number Plan')]/../descendant::span[@class='k-input']")
    select_date_locator = (By.XPATH, "//label[contains(text(), 'Select Date')]/../descendant::input")
    set_destination_locator = (By.XPATH, "//label[contains(text(), 'Destination')]/../descendant::input")
    price_exceptions_search_button_locator = (By.ID, "searchCustomerPriceExceptions")
    no_data_found_locator = (By.XPATH, "//span[text()='No records found.']")
    price_exceptions_grid_checkbox_locator = (By.XPATH, "//div[contains(@id, 'divPricingExp')]/descendant::div[@class='k-grid-content-locked']/descendant::input[@type='checkbox']")
    requested_price_a_column_locator = (By.XPATH, "//th[@data-title='Requested Price [A]']")
    begin_date_column_locator = (By.XPATH, "//th[@data-title='Begin Date']")
    approval_type_column_locator = (By.XPATH, "//th[@data-title='Approval Type']")
    price_exceptions_grid_status_column_locator = (By.XPATH, "//div[contains(@id, 'divPricingExp')]/descendant::th[@data-title='Status']")
    price_exceptions_page_header_locator = (By.XPATH, "//span[@class='page-title']")
    approval_type_kendo_dropdown_locator = (By.ID, "ApprovedType")
    save_change_button_locator = (By.XPATH, "//a[text()='Save changes']")
    delete_status_filter_locator = (By.XPATH, "//label[contains(text(), 'Status')]/../descendant::span[text()='delete']")
    price_exceptions_grid_div_id = "divPricingExp"
    copy_price_list_exceptions_button_locator = (By.ID, "CopyPriceExceptions_1")
    copy_price_list_exceptions_submit_button_locator = (By.ID, "CPESubmit")
    copy_price_list_success_popup_locator = (By.XPATH, "//p[text()='Pricing exceptions copied successfully.']")
    price_exceptions_grid_status_kendo_dropdown_locator = (By.ID, "Status")
    bulk_edit_button_locator = (By.XPATH, "//a[contains(@id, 'BatchEditPriceExceptions')]")
    begin_date_inputbox_locator = (By.XPATH, "//label[contains(text(), 'Begin Date')]/../descendant::input")
    end_date_inputbox_locator = (By.XPATH, "//label[contains(text(), 'End Date')]/../descendant::input")
    requested_price_inputbox_locator = (By.XPATH, "//label[contains(text(), 'Requested Price')]/../descendant::input")
    estimated_value_inputbox_locator = (By.XPATH, "//label[contains(text(), 'Estimated Volume')]/../descendant::input")
    bulk_edit_submit_button_locator = (By.ID, "BulkEditSubmit")
    bulk_edit_status_dropdown_locator = (By.XPATH, "//label[@id='lblStatus']/../descendant::span")
    bulk_edit_approvaltype_dropdown_locator = (By.XPATH, "//label[@id='lblApprovedType']/../descendant::span")
    price_exceptions_filter_column_position = 6
    upload_to_requested_radio_button_locator = (By.ID, "UPEUploadToSubmitted")
    create_cpe_bundle_button_locator = (By.XPATH, "//a[contains(@id, 'btnCreateCPEBundle')]")
    create_cpe_bundle_save_button_locator = (By.ID, "btnCPEBundleSave")
    cpe_bundle_button_locator = (By.XPATH, "//a[contains(@id, 'btnCPEBundle')]")
    cpe_bundle_create_cpe_bundle_button_locator = (By.ID, "btnCreateBundle")
    customer_source_dropdown_arrow_locator = (By.XPATH, "//label[text()='Customer Source']/../descendant::span[@class='k-icon k-i-arrow-s']")
    pricing_exception_cannot_be_batch_error_message_locator = (By.XPATH, "//p[text()='Pricing Exception cannot be batch edited as it is not in Entered status or Not Entered status.']")
    note_column_locator = (By.XPATH, "//th[@data-title='Note']")
    offer_date_locator = (By.XPATH, "//label[contains(text(), 'Offer Date')]/../descendant::input")
    destination_input_box_locator = (By.XPATH, "//input[@id='txtDestination']")
    correct_the_error_message_locator = (By.XPATH, "//p[text()='Please correct the error(s) and try again.']")
    price_exception_excel_template_download_button_locator = (By.XPATH, "//a[@id='lnkPEExcelTemplate']")
    first_row_info_icon_locator = (By.XPATH, "//div[@class='RowStatusError']")
    date_range_error_message_locator = (By.XPATH, "//div[contains(@title, 'does not fall within the allowed range. The Begin Date must be between')]")
    # End: Price Exceptions page locators

    # Start: Upload Price Exceptions page locators
    upload_price_exceptions_button_locator = (By.XPATH, "//a[text()='Upload Price Exceptions']")
    upload_price_exceptions_browse_button_locator = (By.XPATH, "//input[@id='UPEFile']/..")
    upload_price_exceptions_customer_locator = (By.XPATH, "//span[text()='Customer']/../../descendant::input[@id='UPECustomer']")
    price_exceptions_upload_button_locator = (By.ID, "UPEUpload")
    upload_success_message_locator = (By.XPATH, "//span[@id='messagingPopup_wnd_title']")
    pricing_exception_upload_link_locator = (By.XPATH, "//span[text()='Pricing Exception Upload']")
    number_of_rows = ""
    price_exceptions_div_bar_id = "divSelectCount"
    price_exceptions_grid_search_button_locator = (By.ID, "btnSearch")
    price_exceptions_row_count_div_bar_id = "divSAJBar"
    pricing_exception_upload_status_locator = (By.XPATH, "//label[text()='Status ']/../descendant::input")
    pricing_exception_row_count_locator = (By.XPATH, "//div[contains(@id,'divSAJBar')]/span")
    # End: Upload Price Exceptions page locators

    # Start: Country Group Page Locators
    country_dropdown_locator = (By.XPATH, "//label[text()='Country']/../descendant::input")
    countries_locator = (By.XPATH, "//ul[contains(@id, 'ddlBACountry_')]/li")
    # End: Country Group Page Locators

    # Start: Auto generate template management Page Locators
    auto_generate_management_button_locator = (By.ID, "btnAutoGenerationTemplateMngmnt")
    auto_generate_management_screen_locator = (By.XPATH, "//h3[text()='Auto Generate Template Management']")
    new_template_button_locator = (By.XPATH, "//a[text()='New Template']")
    new_template_textbox_locator = (By.ID, "txtTemplateName")
    begin_of_range_period_textbox_locator = (By.XPATH, "//label[text()='Begin of Range Period:']/../descendant::input[@class='k-formatted-value k-input']")
    begin_of_range_period_time_textbox_locator = (By.ID, "tmBeginDateRangeTime")
    end_of_range_period_textbox_locator = (By.XPATH, "//label[text()='End of Range Period:']/../descendant::input[@class='k-formatted-value k-input']")
    end_of_range_period_time_textbox_locator = (By.ID, "tmEndDateRangeTime")
    auto_generate_template_grid_div_id = "AutoGenerateTemplateGrid"
    auto_generate_template_grid_div_inline_action_column_number = "3"
    auto_generate_template_grid_row_data = {"Template Name": "", "Cycle Type": ""}
    template_detail_pop_up_locator = (By.ID, "AutoGenerationTemplateDetailsPopup_wnd_title")
    auto_generate_template_popup_title_locator = (By.ID, "AutoGenerationTemplateDetailsPopup_wnd_title")
    # End: Auto generate template management Page Locators

    # Start: Quality of Service page locators
    qos_dropdown_locator = (By.XPATH, "//label[contains(text(), 'Quality of Service')]/../descendant::input")
    qos_dropdown_text_locator = (By.XPATH, "//label[contains(text(), 'Quality of Service')]/../descendant::span[@class='k-input']")
    clear_button_locator = (By.XPATH, "//a[text()='Clear']")
    import_button_locator = (By.XPATH, "//a[text()='Import']")
    qos_browse_button_locator = (By.XPATH, "//input[@id='UploadFile']/..")
    upload_files_button_locator = (By.XPATH, "//button[text()='Upload files']")
    # End: Quality of Service page locators

    # Start: Buy and Sell Deal Management page locators
    buy_and_sell_deal_management_link_locator = (By.ID, "btnDealManagement")
    deal_management_grid_div_id = "DealManagementGrid"
    deal_management_grid_count_span_locator = (By.XPATH, "//div[contains(@id, 'divDealManagementBar')]/span")
    # End: Buy and Sell Deal Management page locators

    # End: Sell page locators

    def switch_to_sell(self):
        """
        Implementing switch to sell functionality
        :return:
        """
        self.switch_to_window()
        self.accept_ssl_certificate()

    def get_sell_page_title(self):
        """
        Implementing get sell page title functionality
        :return: Sell page title
        """
        self.wait().until(EC.visibility_of_element_located(self.default_tab_header_locator), 'default tab header not found before specified time out')
        return self.page_title()

    def is_sell_dashboard_tab_present(self):
        """
        Implementing is sell dashboard tab present functionality
        :return: True/False
        """
        return self.is_element_present(self.sell_dashboard_tab_locator)

    def is_customer_tab_present(self):
        """
        Implementing is customer tab present functionality
        :return: True/False
        """
        return self.is_element_present(self.customers_tab_locator)

    def is_country_groups_link_present(self):
        """
        Implementing is country groups link present functionality
        :return: True/False
        """
        return self.is_element_present(self.country_groups_locator)

    def select_customer_tab(self):
        """
        Implementing select customer tab functionality
        :return:
        """
        self.select_static_tab(self.customers_tab_locator, 'customers tab locator not found before specified time out')

    def is_create_customer_present(self):
        """
        Implementing is create customer present functionality
        :return: True/False
        """
        return self.is_element_present(self.create_customer_locator)

    def is_customer_price_lists_present(self):
        """
        Implementing is customer price lists present functionality
        :return: True/False
        """
        return self.is_element_present(self.customer_price_lists_locator)

    def is_create_customer_price_lists_present(self):
        """
        Implementing is create customer price lists present functionality
        :return: True/False
        """
        return self.is_element_present(self.create_customer_price_lists_locator)

    def is_price_exceptions_present(self):
        """
        Implementing is price exceptions present functionality
        :return: True/False
        """
        return self.is_element_present(self.price_exceptions_locator)

    def is_customer_grid_displayed(self):
        """
        Implementing is customer grid displayed functionality
        :return: True/False
        """
        return self.is_element_present(self.customer_column_locator)

    def click_sell_page_inline_action_button(self, customer):
        """
        Implementing click sell page inline action button functionality
        :param customer:
        :return:
        """
        self.click_inline_action_button(self.customers_div_id, customer, self.grid_column_number)

    def is_customer_profile_present(self):
        """
        Implementing is customer profile present functionality
        :return: True/False
        """
        return self.is_element_present(self.customer_profile_locator)

    def is_customer_rates_present(self):
        """
        Implementing is customer rates present functionality
        :return: True/False
        """
        return self.is_element_present(self.customer_rates_locator)

    def is_customer_digits_present(self):
        """
        Implementing is customer digits present functionality
        :return: True/False
        """
        return self.is_element_present(self.customer_digits_locator)

    def is_price_exceptions_performance_present(self):
        """
        Implementing is price exceptions performance present functionality
        :return: True/False
        """
        return self.is_element_present(self.price_exceptions_performance_locator)

    def is_upload_price_exceptions_present(self):
        """
        Implementing is upload price exceptions present functionality
        :return: True/False
        """
        return self.is_element_present(self.upload_price_exceptions_locator)

    def is_customer_destination_present(self):
        """
        Implementing is customer destination present functionality
        :return: True/False
        """
        return self.is_element_present(self.customer_destination_locator)

    def click_customer_price_lists_button(self):
        """
        Implementing click customer price lists button functionality
        :return:
        """
        self.click_element(self.customer_price_lists_locator, True)

    def is_customer_price_lists_screen_displayed(self):
        """
        Implementing is customer price lists screen displayed functionality
        :return: True/False
        """
        return self.is_element_present(self.customer_price_lists_page_header_locator)

    def click_customer_grid_inline_action_button(self, customer):
        """
        Implementing click customer grid inline action button functionality
        :param customer: customer name
        :return:
        """
        self.click_inline_action_button(self.customers_div_id, customer, self.customers_grid_inline_action_column_number)
        self.wait_for_ajax_spinner_load()

    def set_customer_profile_status(self, item_name):
        """
        Implementing set customer profile status functionality
        :param item_name:
        :return:
        """
        if item_name.lower() == 'active':
            self.customer_profile["ActiveStatusID"] = str(1)
        elif item_name.lower() == 'inactive':
            self.customer_profile["ActiveStatusID"] = str(2)
            self.single_selection_from_kendo_dropdown(self.customer_profile_status_kendo_dropdown_locator, item_name)
        self.wait_for_ajax_spinner_load()

    def click_save_customer_profile_button(self):
        """
        Implementing click save customer profile button functionality
        :return:
        """
        self.click_element(self.auto_generate_template_popup_title_locator)
        self.click_element(self.save_customer_profile_button_locator)
        try:
            self.wait().until(EC.presence_of_element_located(self.confirmation_popup_locator), 'confirmation popup locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise

    def verify_customer_grid_row_data(self, row_data):
        """
        Implement verify customer grid row data functionality
        :param row_data:
        :return: True/False
        """
        return self.verify_grid_row_details(self.customers_div_id, row_data)

    def click_create_customer_price_lists_button(self):
        """
        Implementing click create customer price lists button functionality
        :return:
        """
        self.click_element(self.create_customer_price_lists_locator, script_executor=True)

    def is_create_customer_price_lists_screen_loaded(self):
        """
        Implementing is create customer price lists screen loaded functionality
        :return: True/False
        """
        return self.is_element_present(self.create_customer_price_lists_page_header_locator)

    def set_apply_increase_notice_period(self, item_name):
        """
        Implementing set apply increase notice period functionality
        :param item_name:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.apply_increase_notice_period_dropdown_locator, item_name)

    def set_apply_digit_change_notice_period(self, item_name):
        """
        Implementing set apply digit change notice period functionality
        :param item_name:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.apply_digit_change_notice_period_dropdown_locator, item_name)

    def set_apply_decrease_notice_period(self, item_name):
        """
        Implementing set apply decrease notice period functionality
        :param item_name:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.apply_decrease_notice_period_dropdown_locator, item_name)

    def select_customers_for_price_lists(self, customers_list):
        """
        Implementing select customers for price lists functionality
        :param customers_list:
        :return:
        """
        for customer in customers_list:
            customer_selection_locator = (By.XPATH, "//option[text()='%s']" % customer)
            self.click_element(customer_selection_locator)
            self.click_element(self.select_customer_button_locator, True)

    def select_all_countries_for_price_lists(self):
        """
        Implementing select all countries for price lists functionality
        :return:
        """
        self.click_element(self.select_all_countries_button_locator, True)

    def click_preview_button(self):
        """
        Implementing click preview button functionality
        :return:
        """
        self.click_element(self.preview_button_locator)
        self.wait_for_ajax_spinner_load(timeout=180)

    def is_preview_page_displayed(self):
        """
        Implementing is preview page displayed functionality
        :return: True/False
        """
        return self.is_element_present(self.preview_page_header_locator)

    def close_preview_page(self):
        """
        Implementing close preview page functionality
        :return:
        """
        self.click_element(self.preview_page_close_button_locator, hover=True, script_executor=True)

    def click_on_generate_customer_price_lists_button(self):
        """
        Implementing click on generate customer price lists button functionality
        :return:
        """
        self.click_element(self.generate_customer_price_lists_button_locator)

    def is_customer_price_lists_generation_successful(self):
        """
        Implementing is customer price lists generation successful functionality
        :return:
        """
        try:
            self.wait().until(EC.presence_of_element_located(self.customer_price_lists_generation_success_message_locator), 'customer price lists generation success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def click_customer_grid_information_button(self, customer):
        """
        Implementing click customer grid information button functionality
        :param customer: customer name
        :return:
        """
        self.click_row_information_button(self.customers_div_id, customer, self.customers_grid_info_button_column_number)
        self.wait_for_ajax_spinner_load()

    def get_customer_grid_row_details(self):
        """
        Implementing get customer grid row details functionality
        :return: True/False
        """
        status = None
        try:
            self.customer_information_dict = self.get_grid_row_details(self.customers_div_id, self.customer_information_dict)
            status = True
        except:
            status = False
        finally:
            return status

    def verify_customer_details_in_information_pop_up(self):
        """
        Implementing verify customer details in information pop up functionality
        :return: True/False
        """
        self.customer_information_dict["Customer Name"] = self.customer_information_dict.pop("Customer")
        self.customer_information_dict["iXTools Account"] = self.customer_information_dict.pop("Carrier")
        self.customer_information_dict["Receiving Member:"] = self.customer_information_dict.pop("Receiving Member")
        return self.verify_page_labelwise_details(self.customer_information_dict)

    def set_reference_price_list(self, item_name):
        """
        Implementing set reference price list functionality
        :param item_name:
        :return:
        """
        self.click_element(self.referenece_price_list_dropdown_arrow_locator, True)
        self.single_selection_from_kendo_dropdown(self.referenece_price_list_dropdown_locator, item_name)
        self.click_element(self.referenece_price_list_dropdown_arrow_locator)

    def set_number_plan(self, item_name):
        """
        Implementing set number plan functionality
        :param item_name:
        :return:
        """
        self.click_element(self.number_plan_dropdown_arrow_locator, True)
        self.single_selection_from_kendo_dropdown(self.number_plan_dropdown_locator, item_name)
        self.click_element(self.number_plan_dropdown_arrow_locator)

    def set_offer_content(self, item_name):
        """
        Implementing set offer content functionality
        :param item_name:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.offer_content_dropdown_locator, item_name)

    def set_offer_date(self, offer_date, future_date, number_of_days_to_add):
        """
        Implementing set offer date functionality
        :param offer_date:
        :param future_date:
        :param number_of_days_to_add:
        :return:
        """
        if future_date is True:
            self.set_value_into_input_field(self.offer_date_textbox_locator, self.get_date(future_date=True, number_of_days_to_add=number_of_days_to_add))
        else:
            self.set_value_into_input_field(self.offer_date_textbox_locator, offer_date)

    def set_from_date(self, date):
        """
        Implementing set from date functionality
        :param date: From date
        :return:
        """
        self.set_value_into_input_field(self.from_date_locator, date)

    def click_customer_price_lists_search_button(self):
        """
        Implementing click customer price lists search button functionality
        :return:
        """
        self.click_element(self.customer_price_lists_search_button_locator, True)

    def click_customer_price_lists_inline_action_button(self, row_identifier_text):
        """
        Implementing click customer price lists inline action button functionality
        :param row_identifier_text:
        :return:
        """
        temp_price_list_dict = {"Price List": ""}
        temp_price_list_dict = self.get_grid_row_details(self.customer_price_lists_div_id, temp_price_list_dict)
        self.selected_price_list = temp_price_list_dict["Price List"]
        self.click_inline_action_button(self.customer_price_lists_div_id, row_identifier_text, self.customer_price_lists_inline_action_column_number)

    def is_delete_inline_action_item_present(self):
        """
        Implementing is delete inline action item present functionality
        :return: True/False
        """
        return self.is_element_present(self.delete_inline_action_item_locator)

    def is_issue_inline_action_item_present(self):
        """
        Implementing is issue inline action item present functionality
        :return: True/False
        """
        return self.is_element_present(self.issue_inline_action_item_locator)

    def is_issue_for_manual_distribution_inline_action_item_present(self):
        """
        Implementing is issue for manual distribution inline action item present functionality
        :return: True/False
        """
        return self.is_element_present(self.issue_for_manual_distribution_inline_action_item_locator)

    def is_view_price_list_detail_inline_action_item_present(self):
        """
        Implementing is view price list detail inline action item present functionality
        :return: True/False
        """
        return self.is_element_present(self.view_price_list_detail_inline_action_item_locator)

    def filter_customer_price_lists_grid(self, column_name, filter_item_list):
        """
        Implementing filter customer price lists grid functionality
        :param column_name:
        :param filter_item_list:
        :return:
        """
        self.grid_filter_details(column_name, filter_item_list, self.customer_price_lists_div_id)

    def get_selected_price_list(self):
        """
        Implementing get selected price list functionality
        :return: selected_price_list
        """
        return self.selected_price_list

    def clear_filter_of_customer_price_list(self, column_name):
        """
        Implementing clear filter of customer price list functionality
        :param column_name:
        :return:
        """
        self.clear_filter(column_name, self.customer_price_lists_div_id)

    def clear_all_table_filters_of_customer_price_list(self, column_name):
        """
        Implementing clear all table filters of customer price list functionality
        :param column_name:
        :return:
        """
        self.clear_all_table_filters(column_name, self.customer_price_lists_div_id)

    def verify_customer_price_list_grid_row_details(self, row_data):
        """
        Implement verify customer price list grid row data functionality
        :param row_data:
        :return: True/False
        """
        return self.verify_grid_row_details(self.customer_price_lists_div_id, row_data)

    def accept_price_list_processed_pop_up(self):
        """
        Implementing accept price list processed pop up functionality
        :return:
        """
        try:
            self.wait().until(EC.presence_of_element_located(self.price_list_processed_popup_locator), 'price list processed popup locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise

    def click_on_create_customer_button(self):
        """
        Implementing click on create customer button
        :return:
        """
        self.click_element(self.create_customer_locator)

    def set_customer_name(self, customer_name_prefix):
        """
        Implementing set customer name functionality
        :param customer_name_prefix:
        :return: customer name
        """
        global customer_name
        try:
            self.customer_unique_id = self.random_string_generator(6)
            customer_name = customer_name_prefix + self.customer_unique_id
            self.set_value_into_input_field(self.customer_name_textbox_locator, customer_name)
            self.customer_profile["Source"] = customer_name
            return customer_name
        except:
            raise

    def set_abbreviation(self, abbreviation_name_prefix):
        """
        Implementing set abbreviation functionality
        :param abbreviation_name_prefix:
        :return: abbreviation name
        """
        try:
            abbreviation_name = abbreviation_name_prefix + self.customer_unique_id
            self.set_value_into_input_field(self.abbreviation_textbox_locator, abbreviation_name)
            return abbreviation_name
        except:
            raise

    def set_ixtools_account(self, item_name):
        """
        Implementing set ixtools account functionality
        :param item_name:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.ixtools_account_kendo_dropdown_locator, item_name)
        self.customer_profile["Account"] = item_name
        self.wait_for_ajax_spinner_load()

    def set_rate_plan(self, item_name):
        """
        Implementing set rate plan functionality
        :param item_name:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.rate_plan_kendo_dropdown_locator, item_name)
        self.wait_for_ajax_spinner_load()
        self.customer_profile["RatePlan"] = item_name

    def set_call_type(self, item_name):
        """
        Implementing set call type functionality
        :param item_name:
        :return:
        """
        is_set = False
        call_type_kendo_dropdown_element_disabled = ""
        call_type_kendo_dropdown_element = self.wait().until(EC.presence_of_element_located(self.call_type_kendo_dropdown_locator), 'call type kendo dropdown locator not found before specified time out')
        try:
            call_type_kendo_dropdown_element_disabled = call_type_kendo_dropdown_element.get_attribute("disabled")
        except:
            pass
        if call_type_kendo_dropdown_element_disabled != "disabled":
            call_type_dropdown_element_id = call_type_kendo_dropdown_element.get_attribute("id")
            call_type_dropdown_li_locator = (By.XPATH, "//ul[@id='%s_listbox']/li" % str(call_type_dropdown_element_id))
            call_type_dropdown_li_elements = self.wait().until(EC.presence_of_all_elements_located(call_type_dropdown_li_locator), 'call type kendo dropdown li locator not found before specified time out')
            for i in range(len(call_type_dropdown_li_elements)):
                if item_name == call_type_dropdown_li_elements[i].get_attribute("textContent"):
                    self.single_selection_from_kendo_dropdown(self.call_type_kendo_dropdown_locator, item_name)
                    is_set = True
                    break
            if is_set is False:
                self.single_selection_from_kendo_dropdown(self.call_type_kendo_dropdown_locator, call_type_dropdown_li_elements[0].get_attribute("textContent"))
            self.wait_for_ajax_spinner_load()
        self.customer_profile["CallType"] = item_name

    def click_on_save_customer_profile_for_create(self):
        """
        Implementing click on save customer profile for create functionality
        :return:
        """
        self.click_element(self.save_customer_profile_locator_for_create)
        try:
            self.wait().until(EC.presence_of_element_located(self.confirmation_popup_locator), 'confirmation popup locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise

    def is_status_inactive(self, customer_name):
        """
        Implementing is status inactive functionality
        :param customer_name:
        :return: True/False
        """
        customer_status_locator = (By.XPATH, "//div[@id='%s']/descendant::span[text()='%s']/../../td[%s]/span" % (self.customers_div_id, customer_name, str(self.customer_status_column_number)))
        customer_status_element = self.wait().until(EC.element_to_be_clickable(customer_status_locator), 'customer status locator not found before specified time out')
        customer_status = customer_status_element.text
        if customer_status == "Inactive":
            return True
        else:
            return False

    def verify_customer_profile_details_in_database(self, server, database, user, password):
        """
        Implementing verify customer profile details in database functionality
        :param server:
        :param database:
        :param user:
        :param password:
        :return: True/False
        """
        status = True
        try:
            Database.open_mssql(server=server, database=database, user=user, password=password)
            sql = ("""
            SELECT c.Source, s.ActiveStatusID, ct.CallType, r.RatePlan, a.Account
            FROM iXTrade_Main.dbo.tbsourcecustomer AS c
            INNER JOIN iXTrade_Main.dbo.tbsource AS s ON (s.SourceID = c.SourceID)
            INNER JOIN ixcore_main.dbo.tbCallType AS ct ON (ct.CallTypeID = c.CallTypeID)
            INNER JOIN ixcore_main.dbo.tbRatePlan AS r ON (r.RatePlanID = c.RatePlanID)
            INNER JOIN ixcore_main.dbo.tbAccount AS a ON (a.AccountID = c.AccountID)
            WHERE c.Source = ?
            """)
            cursor = Database.get_cursor(sql, [self.customer_profile["Source"]])
            row = cursor.fetchone()
            while row:
                self.customer_profile_data_from_database["Source"] = row.Source
                self.customer_profile_data_from_database["Account"] = str(row.Account)
                self.customer_profile_data_from_database["RatePlan"] = str(row.RatePlan)
                self.customer_profile_data_from_database["CallType"] = str(row.CallType)
                self.customer_profile_data_from_database["ActiveStatusID"] = str(row.ActiveStatusID)
                row = cursor.fetchone()
            for key in self.customer_profile.keys():
                if self.customer_profile[key] != self.customer_profile_data_from_database[key]:
                    status = False
                    break
            cursor.close()
            Database.close()
            return status
        except:
            raise

    def verify_customer_status_in_database(self, server, database, user, password):
        """
        Implementing verify customer status in database functionality
        :param server:
        :param database:
        :param user:
        :param password:
        :return: True/False
        """
        status = None
        try:
            Database.open_mssql(server=server, database=database, user=user, password=password)
            sql = ("""
            SELECT c.Source, s.ActiveStatusID
            FROM iXTrade_Main.dbo.tbsourcecustomer AS c
            INNER JOIN iXTrade_Main.dbo.tbsource AS s ON (s.SourceID = c.SourceID)
            WHERE c.Source = ?
            """)
            cursor = Database.get_cursor(sql, [self.customer_profile["Source"]])
            row = cursor.fetchone()
            while row:
                self.customer_profile_data_from_database["ActiveStatusID"] = str(row.ActiveStatusID)
                row = cursor.fetchone()
            if self.customer_profile["ActiveStatusID"] == self.customer_profile_data_from_database["ActiveStatusID"]:
                status = True
            else:
                status = False
            cursor.close()
            Database.close()
            return status
        except:
            raise

    def set_number_plan_for_create_customer(self, item_name):
        """
        Implementing set number plan for create customer functionality
        :param item_name:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.number_plan_kendo_dropdown_locator, item_name)
        self.wait_for_ajax_spinner_load()

    def click_price_exceptions_button(self):
        """
        Implementing click price exceptions button functionality
        :return:
        """
        self.click_element(self.price_exceptions_locator)

    def set_number_plan_for_price_exceptions(self, item_name, first_item=False):
        """
        Implementing set number plan for price exceptions functionality
        :param item_name:
        :return:
        """
        self.click_element(self.number_plan_in_price_exception_dropdown_arrow_locator, True)
        if first_item is True:
            number_plan_item_locator = (By.XPATH, "//ul[@id='numberPlanLists_1_listbox']/li[1]")
        else:
            number_plan_item_locator = (By.XPATH, "//li[text()='%s']" % item_name)
        self.click_element(number_plan_item_locator)

    def set_status(self, list_of_status):
        """
        Implementing set status functionality
        :param list_of_status:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.status_kendo_dropdown_locator, list_of_status)
        self.wait_for_ajax_spinner_load()

    def set_customers(self, list_of_customers):
        """
        Implementing set customers functionality
        :param list_of_customers:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.customers_kendo_dropdown_locator, list_of_customers, False)
        self.wait_for_ajax_spinner_load()

    def set_select_date(self, date):
        """
        Implementing set select date functionality
        :param date:
        :return:
        """
        if date != "":
            self.set_value_into_input_field(self.select_date_locator, date)
        else:
            self.set_value_into_input_field(self.select_date_locator, self.get_current_date())

    def set_destination(self, destination):
        """
        Implementing set destination functionality
        :param destination:
        :return:
        """
        self.set_value_into_input_field(self.set_destination_locator, destination)

    def click_price_exceptions_search_button(self):
        """
        Implementing click price exceptions search button functionality
        :return:
        """
        self.click_element(self.price_exceptions_search_button_locator, True)

    def search_results_displayed_in_the_grid(self):
        """
        Implementing search results displayed in the grid
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

    def is_customers_field_not_editable(self):
        """
        Implementing is customers field not editable functionality
        :return: True/False
        """
        customers_kendo_dropdown_element = self.wait().until(EC.presence_of_element_located(self.customers_kendo_dropdown_locator), 'customers kendo dropdown locator not found before specified time out')
        not_editable = customers_kendo_dropdown_element.get_attribute("aria-disabled")
        if not_editable.lower() == "true":
            return True
        else:
            return False

    def select_pricing_exception_grid_first_row(self):
        """
        Implementing select pricing exception grid first row functionality
        :return:
        """
        self.click_element(self.price_exceptions_grid_checkbox_locator)

    def set_first_row_requested_price(self, price):
        """
        Implementing set first row requested price functionality
        :param price:
        :return:
        """
        requested_price_a_column_element = self.wait().until(EC.presence_of_element_located(self.requested_price_a_column_locator), 'requested price column locator not found before specified time out')
        column_index = int(requested_price_a_column_element.get_attribute("data-index")) - 6
        first_row_requested_price_a_column_locator = (By.XPATH, "//div[contains(@id, 'divPricingExp')]/descendant::div[@class='k-grid-content']/descendant::td[%s]/span" % str(column_index))
        self.set_value_into_input_field(first_row_requested_price_a_column_locator, str(price), use_win32com=True)
        self.click_price_exceptions_page_header()

    def set_first_row_begin_date(self, date, future_date=False):
        """
        Implementing set first row begin date functionality
        :param date:
        :param future_date:
        :return:
        """
        if future_date is True:
            self.date_to_set = self.get_date(future_date=True, number_of_days_to_add=60)
        elif date == "":
            self.date_to_set = self.get_date(current_date=True)
        else:
            self.date_to_set = date
        begin_date_column_element = self.wait().until(EC.presence_of_element_located(self.begin_date_column_locator), 'begin date column locator not found before specified time out')
        column_index = int(begin_date_column_element.get_attribute("data-index")) - 6
        first_row_begin_date_column_locator = (By.XPATH, "//div[contains(@id, 'divPricingExp')]/descendant::div[@class='k-grid-content']/descendant::td[%s]/span[@class='k-grid-cell']" % str(column_index))
        self.set_value_into_input_field(first_row_begin_date_column_locator, self.date_to_set, use_win32com=True)
        self.click_price_exceptions_page_header()

    def set_first_row_approval_type(self, approval_type):
        """
        Implementing set first row approval type functionality
        :param approval_type:
        :return:
        """
        approval_type_column_element = self.wait().until(EC.presence_of_element_located(self.approval_type_column_locator), 'approval type column locator not found before specified time out')
        column_index = int(approval_type_column_element.get_attribute("data-index")) + 1 - 6
        first_row_approval_type_column_locator = (By.XPATH, "//div[contains(@id, 'divPricingExp')]/descendant::div[@class='k-grid-content']/descendant::td[%s]" % str(column_index))
        self.click_element(first_row_approval_type_column_locator, True)
        self.single_selection_from_kendo_dropdown(self.approval_type_kendo_dropdown_locator, approval_type)
        self.click_price_exceptions_page_header()

    def click_price_exceptions_page_header(self):
        """
        Implementing click price exceptions page header functionality
        :return:
        """
        self.click_element(self.price_exceptions_page_header_locator)

    def get_price_exceptions_grid_first_row_data(self):
        """
        Implementing get price exceptions grid first row data functionality
        :return:
        """
        for key in self.price_exceptions_grid_first_row_data:
            column_locator = (By.XPATH, "//th[@data-title='%s']" % key)
            column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
            column_index = int(column_element.get_attribute("data-index")) + 1 - 6
            first_row_column_locator = (By.XPATH, "//div[contains(@id, 'divPricingExp')]/descendant::div[@class='k-grid-content']/descendant::td[%s]/span[@class='k-grid-cell']" % str(column_index))
            first_row_column_element = self.wait().until(EC.element_to_be_clickable(first_row_column_locator), 'first row column locator not found before specified time out')
            first_row_column_value = first_row_column_element.text
            self.price_exceptions_grid_first_row_data[key] = str(first_row_column_value)

    def is_price_exceptions_status_entered(self):
        """
        Implementing is price exceptions status entered functionality
        :return: True/False
        """
        status_column_element = self.wait().until(EC.presence_of_element_located(self.price_exceptions_grid_status_column_locator), 'status column locator not found before specified time out')
        column_index = int(status_column_element.get_attribute("data-index")) + 1
        first_row_status_column_locator = (By.XPATH, "//div[contains(@id, 'divPricingExp')]/descendant::div[@class='k-grid-content-locked']/descendant::td[%s]/span[@class='k-grid-cell']" % str(column_index))
        first_row_status_column_element = self.wait().until(EC.element_to_be_clickable(first_row_status_column_locator), 'first row status column locator not found before specified time out')
        first_row_status_column_value = first_row_status_column_element.text
        if first_row_status_column_value.lower() == "entered":
            return True
        else:
            return False

    def click_save_changes_button(self):
        """
        Implementing click save changes button functionality
        :return:
        """
        self.click_element(self.save_change_button_locator, True)
        try:
            self.wait().until(EC.presence_of_element_located(self.confirmation_popup_locator), 'confirmation popup locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise

    def check_price_exceptions_grid_first_row_data(self):
        """
        Implementing check price exceptions grid first row data functionality
        :return: True/False
        """
        self.set_status(["Entered"])
        self.set_select_date(self.price_exceptions_grid_first_row_data["Begin Date"])
        self.set_destination(self.price_exceptions_first_grid_first_row_details["Destination"])
        self.click_price_exceptions_search_button()
        for key in self.price_exceptions_grid_first_row_data:
            column_locator = (By.XPATH, "//th[@data-title='%s']" % key)
            column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
            column_index = int(column_element.get_attribute("data-index")) + 1 - 7
            first_row_column_locator = (By.XPATH, "//div[contains(@id, 'divPricingExp')]/descendant::div[@class='k-grid-content']/descendant::td[%s]/span" % str(column_index))
            first_row_column_element = self.wait().until(EC.element_to_be_clickable(first_row_column_locator), 'first row column locator not found before specified time out')
            first_row_column_value = first_row_column_element.text
            if self.price_exceptions_grid_first_row_data[key] != str(first_row_column_value):
                return False
        return True

    def select_customer_price_lists_checkbox(self):
        """
        Implementing select customer price lists checkbox functionality
        :return:
        """
        for i in range(2):
            price_exceptions_grid_checkbox_locator = (By.XPATH, "//div[@id='divCustomerPriceList']/descendant::div[@class='k-grid-content']/descendant::tbody/tr[%s]/descendant::td/input" % str(i + 1))
            self.click_element(price_exceptions_grid_checkbox_locator, script_executor=True)

    def click_compare_price_lists_button(self):
        """
        Implementing click compare price lists button
        :return:
        """
        self.click_element(self.compare_price_lists_button_locator, True)

    def verify_selected_price_lists_details(self):
        """
        Implement verify selected price lists details functionality
        :return: True/False
        """
        price_list_column_element = self.wait().until(EC.presence_of_element_located(self.price_list_column_locator), 'price list column locator not found before specified time out')
        price_list_column_index = int(price_list_column_element.get_attribute("data-index")) + 1
        row_data_length = len(self.compare_price_lists_list)
        for i in range(row_data_length):
            column_value_locator = (By.XPATH, "//div[@id='divSelectedPriceLists']/descendant::div[@class='k-grid-content']/descendant::tr[%s]/td[%s]/span" % (str(i + 1), str(price_list_column_index)))
            column_value_element = self.wait().until(EC.presence_of_element_located(column_value_locator), 'column value locator not found before specified time out')
            column_value = column_value_element.text
            if self.compare_price_lists_list[row_data_length - 1 - i] != column_value:
                return False
        return True

    def verify_rates_grid_columns(self):
        """
        Implementing verify rates grid columns functionality
        :return: True/False
        """
        is_verified = True
        if self.is_element_present(self.rates_grid_destination_column_locator) == False:
            is_verified = False
        if is_verified != False:
            for column_name in self.compare_price_lists_list:
                rates_grid_new_column_locator = (By.XPATH, "//div[@id='divComaprePriceListRate']/descendant::a[contains(text(),'%s')]" % column_name)
                if self.is_element_present(rates_grid_new_column_locator) == False:
                    is_verified = False
                    break
        return is_verified

    def select_dial_digits_tab(self):
        """
        Implementing select dial digits tab functionality
        :return:
        """
        self.click_element(self.dial_digits_tab_locator, True, True)

    def verify_dialed_digits_columns(self):
        """
        Implementing verify dialed digits columns functionality
        :return: True/False
        """
        is_verified = True
        if (self.is_element_present(self.dialed_digits_grid_destination_column_locator) == False or self.is_element_present(self.dialed_digits_grid_dialed_digit_column_locator) == False):
            is_verified = False
        if (is_verified != False):
            for column_name in self.compare_price_lists_list:
                dialed_digits_grid_new_column_locator = (By.XPATH, "//div[@id='divComparePriceListDialedDigit']/descendant::a[contains(text(),'%s')]" % column_name)
                if (self.is_element_present(dialed_digits_grid_new_column_locator) == False):
                    is_verified = False
                    break
        return is_verified

    def close_compare_price_lists_pop_up(self):
        """
        Implementing close compare price lists pop up functionality
        :return:
        """
        self.click_element(self.close_compare_price_list_pop_up_locator)

    def set_customer_profile_status_for_edit_customer(self, item_name):
        """
        Implementing set customer profile status for edit customer functionality
        :param item_name:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.customer_profile_status_kendo_dropdown_locator, item_name)
        self.wait_for_ajax_spinner_load()

    def click_copy_price_list_exceptions_button(self):
        """
        Implementing click copy price list exceptions button functionality
        :return:
        """
        self.click_element(self.copy_price_list_exceptions_button_locator)

    def select_customers_for_copy_price_exceptions(self, customers_list):
        """
        Implementing select customers for price lists functionality
        :param customers_list:
        :return:
        """
        self.move_available_items_to_destination(self.available_customers_selectbox_id, customers_list)

    def click_copy_price_exceptions_submit_button(self):
        """
        Implementing click copy price exceptions submit button functionality
        :return:
        """
        self.click_element(self.copy_price_list_exceptions_submit_button_locator)

    def is_copy_price_exceptions_successful(self):
        """
        Implementing is copy price exceptions successful functionality
        :return: True/False
        """
        is_successful = self.is_element_present(self.copy_price_list_success_popup_locator)
        if is_successful == True:
            self.click_element(self.ok_button_locator)
            return is_successful
        else:
            return is_successful

    def click_save_changes_button_for_copy_price_exceptions(self):
        """
        Implementing click save changes button after copy price exceptions functionality
        :return:
        """
        self.click_element(self.save_change_button_locator, True)

    def set_price_exceptions_performance_begin_date(self, begin_date):
        """
        Implementing set price exceptions performance begin date functionality
        :param begin_date:
        :return:
        """
        global price_exceptions_performance_begin_date
        price_exceptions_performance_begin_date_element = self.wait().until(EC.visibility_of_element_located(self.price_exceptions_performance_begin_date_locator), 'price exceptions performance begin date locator not found before specified time out')
        self.wait_for_ajax_spinner_load()
        if (begin_date != ""):
            price_exceptions_performance_begin_date_element.clear()
            price_exceptions_performance_begin_date_element.send_keys(begin_date)
            price_exceptions_performance_begin_date = begin_date
        else:
            price_exceptions_performance_begin_date = price_exceptions_performance_begin_date_element.get_attribute("value")
        self.wait_for_ajax_spinner_load()

    def click_price_exceptions_performance_submit_button(self):
        """
        Implementing click price exception performance submit button functionality
        :return:
        """
        self.click_element(self.price_exceptions_performance_submit_button_locator)

    def verify_price_exceptions_performance_begin_date(self):
        """
        Implementing verify price exceptions performance begin date functionality
        :return: True/False
        """
        report_selections_begin_date_element = self.wait().until(EC.visibility_of_element_located(self.report_selections_begin_date_locator), 'report selections begin date locator not found before specified time out')
        saved_begin_date = report_selections_begin_date_element.text
        if (saved_begin_date.strip(' \t\n\r') == price_exceptions_performance_begin_date):
            return True
        else:
            return False

    def verify_customer_in_price_exceptions_performance_report(self):
        """
        Implementing verify price exceptions performance customer functionality
        :return: True/False
        """
        report_selections_customer_element = self.wait().until(EC.visibility_of_element_located(self.report_selections_customer_locator), 'report selections customer locator not found before specified time out')
        saved_customer = report_selections_customer_element.text.strip(' \t\n\r')
        return saved_customer

    def set_price_exceptions_grid_first_row_status(self, status):
        """
        Implementing set price exceptions grid first row status functionality
        :param status:
        :return:
        """
        price_exceptions_grid_status_column_element = self.wait().until(EC.presence_of_element_located(self.price_exceptions_grid_status_column_locator), 'price exceptions grid status column locator not found before specified time out')
        column_index = int(price_exceptions_grid_status_column_element.get_attribute("data-index")) + 1
        first_row_status_column_locator = (By.XPATH, "//div[contains(@id, 'divPricingExp')]/descendant::div[@class='k-grid-content-locked']/descendant::td[%s]" % str(column_index))
        self.click_element(first_row_status_column_locator, True)
        self.single_selection_from_kendo_dropdown(self.price_exceptions_grid_status_kendo_dropdown_locator, status)
        self.click_price_exceptions_page_header()

    def price_exceptions_grid_has_data(self):
        """
        Implementing set first row status functionality
        :return: True/False
        """
        row_count = int(self.get_number_of_rows_from_grid(self.price_exceptions_grid_row_count_div_id))
        if row_count > 0:
            return True
        else:
            return False

    def set_begin_date_for_status_updation(self):
        """
        Implementing set begin date for status updation functionality
        :return:
        """
        current_date = self.get_current_date()
        modified_date = datetime.datetime.strptime(current_date, "%m/%d/%Y")
        new_date = modified_date + datetime.timedelta(days=7)
        self.future_date = str(new_date)
        self.set_first_row_begin_date(self.future_date)

    def set_select_date_for_status_updation(self):
        """
        Implementing set select date for status updation functionality
        :return:
        """
        self.set_select_date(self.future_date)

    def get_price_exceptions_first_grid_first_row_details(self):
        """
        Implementing get price exceptions first grid first row details functionality
        :return:
        """
        for key in self.price_exceptions_first_grid_first_row_details:
            column_locator = (By.XPATH, "//div[contains(@id, 'divPricingExp')]/descendant::div[@class='k-grid-header-locked']/descendant::th[@data-title='%s']" % key)
            column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
            column_index = int(column_element.get_attribute("data-index")) + 1
            first_row_column_locator = (By.XPATH, "//div[contains(@id, 'divPricingExp')]/descendant::td[%s]/span[@class='k-grid-cell']" % str(column_index))
            first_row_column_element = self.wait().until(EC.element_to_be_clickable(first_row_column_locator), 'first row column locator not found before specified time out')
            first_row_column_value = first_row_column_element.text
            self.price_exceptions_first_grid_first_row_details[key] = str(first_row_column_value)

    def click_pricing_exception_grid_first_row_inline_action_button(self):
        """
        Implementing click pricing exception grid first row inline action button functionality
        :return:
        """
        self.click_inline_action_button(self.price_exceptions_grid_div_id, self.price_exceptions_first_grid_first_row_details["Customer"], self.price_exceptions_inline_action_column_number)

    def verify_price_exceptions_details(self):
        """
        Implementing verify price exceptions details functionality
        :return: True/False
        """
        self.price_exceptions_first_grid_first_row_details["Status:"] = self.price_exceptions_first_grid_first_row_details.pop("Status")
        self.price_exceptions_first_grid_first_row_details["Customer Name:"] = self.price_exceptions_first_grid_first_row_details.pop("Customer")
        self.price_exceptions_first_grid_first_row_details["Selling Destination:"] = self.price_exceptions_first_grid_first_row_details.pop("Destination")
        for key in self.price_exceptions_first_grid_first_row_details:
            details_span_locator = (By.XPATH, "//span[text()='%s']/../span[contains(@id, 'spnPricingException')]" % key)
            details_span_element = self.wait().until(EC.visibility_of_element_located(details_span_locator), 'details span locator not found before specified time out')
            if (self.price_exceptions_first_grid_first_row_details[key] != str(details_span_element.text)):
                return False
        return True

    def click_bulk_edit_button(self):
        """
        Implementing click bulk edit button functionality
        :return:
        """
        self.click_element(self.bulk_edit_button_locator, True)

    def set_begin_date(self, date):
        """
        Implementing set begin date functionality
        :param date:
        :return:
        """
        if date == "" or time.strptime(date, "%m/%d/%Y") < time.strptime(self.get_current_date(), "%m/%d/%Y"):
            self.set_value_into_input_field(self.begin_date_inputbox_locator, self.get_current_date())
        else:
            self.set_value_into_input_field(self.begin_date_inputbox_locator, str(date))

    def set_end_date(self, date):
        """
        Implementing set end date functionality
        :param date:
        :return:
        """
        if date == "":
            self.set_value_into_input_field(self.end_date_inputbox_locator, str(self.get_future_date()))
        else:
            self.set_value_into_input_field(self.end_date_inputbox_locator, str(date))

    def click_bulk_edit_submit_button(self):
        """
        Implementing click bulk edit submit button functionality
        :return:
        """
        self.click_element(self.bulk_edit_submit_button_locator, True)

    def set_bulk_edit_status(self, item_name):
        """
        Implementing set bulk edit status functionality
        :param item_name:
        :return:
        """
        bulk_edit_status_dropdown_element = self.wait().until(EC.presence_of_element_located(self.bulk_edit_status_dropdown_locator), 'bulk edit status dropdown locator not found before specified time out')
        self.script_executor_click(bulk_edit_status_dropdown_element)
        item_div_id = bulk_edit_status_dropdown_element.get_attribute("aria-activedescendant")
        self.wait_for_ajax_spinner_load()
        bulk_edit_status_item_locator = (By.XPATH, "//div[@id='%s']/../descendant::li[text()='%s']" % (str(item_div_id), item_name))
        self.click_element(bulk_edit_status_item_locator)

    def set_bulk_edit_approvaltype(self, item_name):
        """
        Implementing set bulk edit approval type functionality
        :param item_name:
        :return:
        """
        bulk_edit_approvaltype_dropdown_element = self.wait().until(EC.presence_of_element_located(self.bulk_edit_approvaltype_dropdown_locator), 'bulk edit approval type dropdown locator not found before specified time out')
        bulk_edit_approvaltype_dropdown_element.click()
        item_div_id = bulk_edit_approvaltype_dropdown_element.get_attribute("aria-activedescendant")
        self.wait_for_ajax_spinner_load()
        bulk_edit_approvaltype_item_locator = (By.XPATH, "//div[@id='%s']/../descendant::li[text()='%s']" % (str(item_div_id), item_name))
        self.click_element(bulk_edit_approvaltype_item_locator)

    def set_requested_price(self, requested_price):
        """
        Implementing set requested price functionality
        :param requested_price:
        :return:
        """
        self.set_value_into_input_field(self.requested_price_inputbox_locator, str(requested_price))

    def set_estimated_value(self, estimated_value):
        """
        Implementing set estimated value functionality
        :param estimated_value:
        :return:
        """
        self.set_value_into_input_field(self.estimated_value_inputbox_locator, str(estimated_value))

    def select_pricing_exception_grid_multiple_row(self):
        """
        Implementing select pricing exception grid multiple row functionality
        :return:
        """
        for i in range(2):
            price_exceptions_grid_checkbox_locator = (By.XPATH, "(//div[contains(@id, 'divPricingExp')]/descendant::div[@class='k-grid-content-locked']/descendant::input[@type='checkbox'])[%s]" % str(i + 1))
            self.click_element(price_exceptions_grid_checkbox_locator)

    def click_upload_price_exceptions_button(self):
        """
        Implementing click upload price exceptions button functionality
        :return:
        """
        self.click_element(self.upload_price_exceptions_button_locator, True)

    def click_upload_price_exceptions_browse_button(self):
        """
        Implementing click upload price exceptions browse button functionality
        :return:
        """
        self.kill_all_opened_file_browsing_dialogs()
        self.click_element(self.upload_price_exceptions_browse_button_locator)

    def set_customer_for_upload_price_exceptions(self, customer_name):
        """
        Implementing set customer for upload price exceptions functionality
        :param customer_name:
        :return:
        """
        self.set_value_into_input_field(self.upload_price_exceptions_customer_locator, customer_name)

    def click_price_exceptions_upload_button(self):
        """
        Implementing click price exceptions upload button functionality
        :return:
        """
        self.click_element(self.price_exceptions_upload_button_locator)
        try:
            self.wait().until(EC.presence_of_element_located(self.upload_success_message_locator), 'upload success message locator not found before specified time')
            self.click_element(self.ok_button_locator)
        except:
            raise

    def click_pricing_exception_upload_link(self):
        """
        Implementing click price exception upload link functionality
        :return:
        """
        link_element = self.wait().until(EC.presence_of_element_located(self.pricing_exception_upload_link_locator), 'pricing exception upload link locator not found before specified time')
        self.script_executor_click(link_element)
        self.wait_for_ajax_spinner_load()

    def set_status_for_pricing_exception_search(self, status_list):
        """
        Implementing set status for pricing exception search functionality
        :param status_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.pricing_exception_upload_status_locator, status_list)

    def click_pricing_exceptions_upload_search_button(self):
        """
        Implementing click pricing exceptions upload search button functionality
        :return:
        """
        self.click_element(self.price_exceptions_grid_search_button_locator, True)

    def get_upload_price_exceptions_number_of_rows(self):
        """
        Implementing get upload price exceptions number of rows functionality
        :return: number of rows
        """
        row_count_element = self.wait().until(EC.visibility_of_element_located(self.pricing_exception_row_count_locator), 'row count locator not found before specified time out')
        span_text = row_count_element.text
        splited_text = span_text.split()
        return splited_text[2]

    def get_price_exceptions_number_of_rows_from_grid(self):
        """
        Implementing get price exceptions number of rows from grid functionality
        :return:
        """
        self.number_of_rows = self.get_upload_price_exceptions_number_of_rows()

    def compare_price_exceptions_number_of_rows_from_grid(self):
        """
        Implementing compare price exceptions number of rows from grid functionality
        :return: True/False
        """
        is_completed = False
        timeout = 900
        try:
            end_time = time.time() + timeout
            while time.time() < end_time:
                self.wait_for_ajax_spinner_load()
                self.click_pricing_exceptions_upload_search_button()
                self.wait_for_ajax_spinner_load()
                current_number_of_rows = int(self.get_upload_price_exceptions_number_of_rows())
                if current_number_of_rows > int(self.number_of_rows):
                    is_completed = True
                    break
        except:
            raise
        return is_completed

    def is_price_exceptions_page_loaded_properly(self):
        """
        Implementing is price exceptions page loaded properly functionality
        :return: True/False
        """
        return self.is_element_present(self.price_exceptions_page_header_locator)

    def is_price_exceptions_total_number_of_records_displayed(self):
        """
        Implementing is price exceptions total number of records displayed functionality
        :return: True/False
        """
        return self.is_element_present(self.price_exceptions_number_of_records_count_locator)

    def get_created_carrier_name(self):
        """
        Implementing get created carrier name functionality
        :return: created_carrier_name
        """
        return self.carrier_page.get_created_carrier_name()

    def get_created_rate_plan_name(self):
        """
        Implementing get created rate plan name functionality
        :return: created_rate_plan_name
        """
        return self.carrier_page.get_created_rate_plan_name()

    def get_created_customer_name(self):
        """
        Implementing get created customer name functionality
        :return: created_customer_name
        """
        global customer_name
        return customer_name

    def get_revenue_from_customers_grid(self):
        """
        Implementing get revenue from customers grid functionality
        :return: revenue value
        """
        return self.get_specific_column_value_from_grid(self.customers_div_id, self.get_grid_row_count(self.customers_grid_count_span_locator, 5), self.revenue_column_name, self.customers_data_grid_name)

    def get_margin_from_customers_grid(self):
        """
        Implementing get margin from customers grid functionality
        :return: margin value
        """
        return self.get_specific_column_value_from_grid(self.customers_div_id, self.get_grid_row_count(self.customers_grid_count_span_locator, 5), self.margin_column_name, self.customers_data_grid_name)

    def get_last_modified_time_from_customer_profile_information(self):
        """
        Implementing get last modified time from customer profile information functionality
        :return: last_modified_time
        """
        return self.get_text_from_element(self.last_modified_locator)

    def get_customer_rates_begin_date(self):
        """
        Implementing get customer rates begin date functionality
        :return: begin_date
        """
        return self.get_text_from_element(self.customer_rates_begin_date_inputbox_locator, is_a_input_field=True)

    def get_column_value_of_table_inside_grid(self, grid_div_id, grid_row_count, column_name):
        """
        Implementing get column value of table inside grid functionality
        Return the value of a table column which(table) is inside a grid
        :return: column value
        """
        column_value = None
        column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::th[@data-title='%s']" % (grid_div_id, column_name))
        column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) + 1

        if grid_row_count > 0:
            if grid_row_count > 10:
                grid_row_count = 10
            for row in range(0, grid_row_count):
                column_value_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::tbody/tr[%s]/td[%s]/descendant::tr/td" % (grid_div_id, str(row + 1), str(column_index)))
                column_value_element = self.wait().until(EC.presence_of_element_located(column_value_locator), 'column value locator not found before specified time out')
                column_value = str(column_value_element.text)
                if column_value is not "":
                    break
        else:
            column_value = "the grid is empty"

        return column_value

    def get_rate1_from_customer_rates_grid(self):
        """
        Implementing get rate1 from customer rates grid functionality
        :return: rate1 column value
        """
        return self.get_column_value_of_table_inside_grid(self.customer_rates_grid_div_id, self.get_grid_row_count(self.customer_rates_count_span_locator, 1), self.rate1_column_name)

    def get_rate2_from_customer_rates_grid(self):
        """
        Implementing get rate2 from customer rates grid functionality
        :return: rate2 column value
        """
        return self.get_column_value_of_table_inside_grid(self.customer_rates_grid_div_id, self.get_grid_row_count(self.customer_rates_count_span_locator, 1), self.rate2_column_name)

    def get_rate3_from_customer_rates_grid(self):
        """
        Implementing get rate3 from customer rates grid functionality
        :return: rate3 column value
        """
        return self.get_column_value_of_table_inside_grid(self.customer_rates_grid_div_id, self.get_grid_row_count(self.customer_rates_count_span_locator, 1), self.rate3_column_name)

    def get_begin_date_from_customer_rates_grid(self):
        """
        Implementing get begin date from customer rates grid functionality
        :return: begin date
        """
        return self.get_specific_column_value_from_grid(self.customer_rates_grid_div_id, self.get_grid_row_count(self.customer_rates_count_span_locator, 1), self.begin_date_column_name)

    def get_last_modified_from_customer_rates_grid(self):
        """
        Implementing get last modified from customer rates grid functionality
        :return: last modified date
        """
        return self.get_specific_column_value_from_grid(self.customer_rates_grid_div_id, self.get_grid_row_count(self.customer_rates_count_span_locator, 1), self.last_modified_column_name)

    def select_dialed_digit_tab(self):
        """
        Implementing select dialed digit tab functionality
        :return:
        """
        self.click_element(self.dialed_digit_tab_locator, True, True)

    def select_rates_tab(self):
        """
        Implementing select rates tab functionality
        :return:
        """
        self.click_element(self.rates_tab_locator, True, True)

    def select_destinations_tab(self):
        """
        Implementing select destinations tab functionality
        :return:
        """
        self.click_element(self.destinations_tab_locator, True, True)

    def get_customer_dialed_digit_begin_date(self):
        """
        Implementing get customer dialed digit begin date functionality
        :return: begin_date
        """
        return self.get_text_from_element(self.customer_dialed_digit_begin_date_inputbox_locator, is_a_input_field=True)

    def get_begin_date_from_customer_dialed_digit_grid(self):
        """
        Implementing get begin date from customer dialed digit grid functionality
        :return: begin date
        """
        return self.get_specific_column_value_from_grid(self.customer_dialed_digit_grid_div_id, self.get_grid_row_count(self.customer_dialed_digit_count_span_locator, 1), self.begin_date_column_name)

    def get_modified_date_from_customer_dialed_digit_grid(self):
        """
        Implementing get modified date from customer dialed digit grid functionality
        :return: modified date
        """
        return self.get_specific_column_value_from_grid(self.customer_dialed_digit_grid_div_id, self.get_grid_row_count(self.customer_dialed_digit_count_span_locator, 1), self.modified_date_column_name)

    def get_customer_destinations_begin_date(self):
        """
        Implementing get customer destinations begin date functionality
        :return: begin_date
        """
        return self.get_text_from_element(self.customer_destinations_begin_date_inputbox_locator, is_a_input_field=True)

    def get_begin_date_from_customer_destinations_grid(self):
        """
        Implementing get begin date from customer destinations grid functionality
        :return: begin date
        """
        return self.get_specific_column_value_from_grid(self.customer_destinations_grid_div_id, self.get_grid_row_count(self.customer_destinations_count_span_locator, 1), self.begin_date_column_name)

    def get_last_modified_from_customer_destinations_grid(self):
        """
        Implementing get last modified from customer destinations grid functionality
        :return: last modified date
        """
        return self.get_specific_column_value_from_grid(self.customer_destinations_grid_div_id, self.get_grid_row_count(self.customer_destinations_count_span_locator, 1), self.last_modified_column_name)

    def get_customer_price_list_from_date(self):
        """
        Implementing get customer price list from date functionality
        :return: from date
        """
        return self.get_text_from_element(self.from_date_locator, is_a_input_field=True)

    def get_customer_price_list_to_date(self):
        """
        Implementing get customer price list to date functionality
        :return: to date
        """
        return self.get_text_from_element(self.to_date_locator, is_a_input_field=True)

    def get_price_list_date_from_customer_price_list_grid(self):
        """
        Implementing get price list date from customer price list grid functionality
        :return: price list date
        """
        return self.get_specific_column_value_from_grid(self.customer_price_lists_div_id, self.get_grid_row_count(self.customer_price_list_count_span_locator, 7), self.price_list_date_column_name)

    def get_modified_date_from_customer_price_list_grid(self):
        """
        Implementing get modified date from customer price list grid functionality
        :return: modified date
        """
        return self.get_specific_column_value_from_grid(self.customer_price_lists_div_id, self.get_grid_row_count(self.customer_price_list_count_span_locator, 7), self.modified_date_column_name)

    def get_price_list_date_from_selected_price_list_grid(self):
        """
        Implementing get price list date from selected price list grid functionality
        :return: price list date
        """
        return self.get_specific_column_value_from_grid(self.selected_price_list_grid_div_id, 2, self.price_list_date_column_name)

    def get_offer_date(self):
        """
        Implementing get offer date functionality
        :return: offer_date
        """
        return self.get_text_from_element(self.offer_date_textbox_locator, is_a_input_field=True)

    def get_select_date(self):
        """
        Implementing get select date functionality
        :return: select_date
        """
        return self.get_text_from_element(self.select_date_locator, is_a_input_field=True)

    def click_customer_grid_first_row_inline_action_button(self):
        """
        Implementing click customer grid first row inline action button functionality
        :return:
        """
        self.click_inline_action_button(self.customers_div_id, None, self.grid_column_number, first_row=True)

    def set_pricing_exceptions_select_date(self):
        """
        Implementing set pricing exceptions select date functionality
        :return:
        """
        self.set_value_into_input_field(self.select_date_locator, self.get_date(current_date=True))

    def click_upload_customer_price_lists_button(self):
        """
        Implementing click upload customer price lists button functionality
        :return:
        """
        self.click_element(self.upload_customer_price_list_button_locator, True)

    def click_upload_customer_price_list_browse_button(self):
        """
        Implementing click upload customer price list browse button functionality
        :return:
        """
        self.kill_all_opened_file_browsing_dialogs()
        self.click_element(self.upload_customer_price_list_browse_button_locator, hover=True)

    def set_customer_name_for_upload_customer_price_list(self, customer):
        """
        Implementing set customer name for upload customer price list functionality
        :param customer:
        :return:
        """
        self.set_value_into_input_field(self.upload_customer_price_list_customer_field_locator, customer)

    def get_customer_price_list_grid_number_of_rows(self):
        """
        Implementing get customer price list grid number of rows functionality
        :return: customer price list grid row count
        """
        global cpl_row_count
        cpl_row_count = self.get_grid_row_count(self.customer_price_lists_grid_count_span_locator, 7)
        return cpl_row_count

    def compare_customer_price_lists_number_of_rows_after_upload(self):
        """
        Implementing compare customer price lists number of rows after upload functionality
        :return: True/False
        """
        is_completed = False
        timeout = 900
        try:
            end_time = time.time() + timeout
            while time.time() < end_time:
                self.wait_for_ajax_spinner_load()
                self.click_customer_price_lists_search_button()
                self.wait_for_ajax_spinner_load()
                current_number_of_rows = int(self.get_customer_price_list_grid_number_of_rows())
                if current_number_of_rows == 2:
                    is_completed = True
                    break
        except:
            raise
        return is_completed

    def set_customers_grid_settings(self, grid_settings):
        """
        Implementing set customers grid settings functionality
        :param grid_settings:
        :return:
        """
        self.set_grid_settings(self.customers_div_id, grid_settings)

    def get_all_rows_of_specific_column_from_customers_grid(self, column_name):
        """
        Implementing get all rows of specific column from customers grid functionality
        :param column_name:
        :return: all_row_data
        """
        self.all_row_data = self.get_all_rows_of_specific_column_from_grid(self.customers_div_id, column_name)
        return self.all_row_data

    def sort_customers_grid_column(self, column_name, descending_order):
        """
        Implementing sort customers grid column functionality
        :param column_name:
        :param descending_order:
        :return:
        """
        self.sort_grid_column(self.customers_div_id, column_name, descending_order)

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

    def get_customers_grid_column_names_by_order(self):
        """
        Implementing get customers grid column names by order functionality
        :return: column_name_list
        """
        self.column_name_list = self.get_grid_column_names_by_order(self.customers_div_id)
        return self.column_name_list

    def drag_customers_grid_column(self, source_column, destination_column):
        """
        Implementing drag customers grid column functionality
        :param source_column:
        :param destination_column:
        :return:
        """
        self.drag_grid_column(self.customers_div_id, source_column, destination_column)

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

    def click_customers_grid_export_to_excel_button(self):
        """
        Implementing click customer grid export to excel button functionality
        :return:
        """
        self.click_grid_export_to_excel_button(self.customers_div_id)

    def get_all_rows_of_specific_column_from_customer_rates_grid(self, column_name):
        """
        Implementing get all rows of specific column from customer rates grid functionality
        :param column_name:
        :return: all_row_data
        """
        self.all_row_data = self.get_all_rows_of_specific_column_from_grid(self.customer_rates_grid_div_id, column_name, self.get_grid_row_count(self.customer_rates_count_span_locator, 1))
        return self.all_row_data

    def sort_customer_rates_grid_column(self, column_name, descending_order):
        """
        Implementing sort customer rates grid column functionality
        :param column_name:
        :param descending_order:
        :return:
        """
        self.sort_grid_column(self.customer_rates_grid_div_id, column_name, descending_order)

    def get_customer_rates_grid_column_names_by_order(self):
        """
        Implementing get customer rates grid column names by order functionality
        :return: column_name_list
        """
        self.column_name_list = self.get_grid_column_names_by_order(self.customer_rates_grid_div_id)
        return self.column_name_list

    def drag_customer_rates_grid_column(self, source_column, destination_column):
        """
        Implementing drag customer rates grid column functionality
        :param source_column:
        :param destination_column:
        :return:
        """
        self.drag_grid_column(self.customer_rates_grid_div_id, source_column, destination_column)

    def click_customer_rates_search_button(self):
        """
        Implementing click customer rates search button functionality
        :return:
        """
        self.click_element(self.customer_rates_search_button_locator)

    def is_customer_rates_grid_filtered_properly(self, column_name, filter_item_list):
        """
        Implementing is customer rates grid filtered properly functionality
        :param column_name:
        :param filter_item_list:
        :return: True/False
        """
        filtered_properly = False
        filtered_list = self.get_all_rows_of_specific_column_from_grid(self.customer_rates_grid_div_id, column_name, self.get_grid_row_count(self.customer_rates_count_span_locator, 1))
        if filter_item_list == filtered_list:
            filtered_properly = True
        return filtered_properly

    def get_all_rows_of_specific_column_from_customer_digits_grid(self, column_name):
        """
        Implementing get all rows of specific column from customer digits grid functionality
        :param column_name:
        :return: all_row_data
        """
        self.all_row_data = self.get_all_rows_of_specific_column_from_grid(self.customer_dialed_digit_grid_div_id, column_name, self.get_grid_row_count(self.customer_dialed_digit_count_span_locator, 1))
        return self.all_row_data

    def sort_customer_digits_grid_column(self, column_name, descending_order):
        """
        Implementing sort customer digits grid column functionality
        :param column_name:
        :param descending_order:
        :return:
        """
        self.sort_grid_column(self.customer_dialed_digit_grid_div_id, column_name, descending_order)

    def get_customer_digits_grid_column_names_by_order(self):
        """
        Implementing get customer digits grid column names by order functionality
        :return: column_name_list
        """
        self.column_name_list = self.get_grid_column_names_by_order(self.customer_dialed_digit_grid_div_id)
        return self.column_name_list

    def drag_customer_digits_grid_column(self, source_column, destination_column):
        """
        Implementing drag customer digits grid column functionality
        :param source_column:
        :param destination_column:
        :return:
        """
        self.drag_grid_column(self.customer_dialed_digit_grid_div_id, source_column, destination_column)

    def click_search_button(self):
        """
        Implementing click customer digits search button functionality
        :return:
        """
        search_button_element = self.wait().until(EC.visibility_of_element_located(self.search_button_locator), 'search button locator not found before specified time out')
        self.script_executor_click(search_button_element)
        self.wait_for_ajax_spinner_load()

    def is_customer_digits_grid_filtered_properly(self, column_name, filter_item_list):
        """
        Implementing is customer digits grid filtered properly functionality
        :param column_name:
        :param filter_item_list:
        :return: True/False
        """
        filtered_properly = False
        filtered_list = self.get_all_rows_of_specific_column_from_grid(self.customer_dialed_digit_grid_div_id, column_name, self.get_grid_row_count(self.customer_dialed_digit_count_span_locator, 1))
        if list(filter_item_list) == filtered_list:
            filtered_properly = True
        return filtered_properly

    def get_all_rows_of_specific_column_from_customer_destinations_grid(self, column_name):
        """
        Implementing get all rows of specific column from customer destinations grid functionality
        :param column_name:
        :return: all_row_data
        """
        self.all_row_data = self.get_all_rows_of_specific_column_from_grid(self.customer_destinations_grid_div_id, column_name, self.get_grid_row_count(self.customer_destinations_count_span_locator, 1))
        return self.all_row_data

    def sort_customer_destinations_grid_column(self, column_name, descending_order):
        """
        Implementing sort customer destinations grid column functionality
        :param column_name:
        :param descending_order:
        :return:
        """
        self.sort_grid_column(self.customer_destinations_grid_div_id, column_name, descending_order)

    def get_customer_destinations_grid_column_names_by_order(self):
        """
        Implementing get customer destinations grid column names by order functionality
        :return: column_name_list
        """
        self.column_name_list = self.get_grid_column_names_by_order(self.customer_destinations_grid_div_id)
        return self.column_name_list

    def drag_customer_destinations_grid_column(self, source_column, destination_column):
        """
        Implementing drag customer destinations grid column functionality
        :param source_column:
        :param destination_column:
        :return:
        """
        self.drag_grid_column(self.customer_destinations_grid_div_id, source_column, destination_column)

    def is_customer_destinations_grid_filtered_properly(self, column_name, filter_item_list):
        """
        Implementing is customer destinations grid filtered properly functionality
        :param column_name:
        :param filter_item_list:
        :return: True/False
        """
        filtered_properly = False
        filtered_list = self.get_all_rows_of_specific_column_from_grid(self.customer_destinations_grid_div_id, column_name, self.get_grid_row_count(self.customer_destinations_count_span_locator, 1))
        if list(filter_item_list) == filtered_list:
            filtered_properly = True
        return filtered_properly

    def filter_customer_destinations_grid(self, column_name, filter_item_list):
        """
        Implementing filter customer destinations grid functionality
        :param column_name:
        :param filter_item_list:
        :return:
        """
        self.grid_filter_details(column_name, filter_item_list, self.customer_destinations_grid_div_id)

    def set_customer_price_lists_grid_settings(self, grid_settings):
        """
        Implementing set customer price lists grid settings functionality
        :param grid_settings:
        :return:
        """
        self.set_grid_settings(self.customer_price_lists_div_id, grid_settings)

    def get_all_rows_of_specific_column_from_customer_price_lists_grid(self, column_name):
        """
        Implementing get all rows of specific column from customer price lists grid functionality
        :param column_name:
        :return: all_row_data
        """
        self.all_row_data = self.get_all_rows_of_specific_column_from_grid(self.customer_price_lists_div_id, column_name, self.get_grid_row_count(self.customer_price_list_count_span_locator, 7))
        return self.all_row_data

    def sort_customer_price_lists_grid_column(self, column_name, descending_order):
        """
        Implementing sort customer price lists grid column functionality
        :param column_name:
        :param descending_order:
        :return:
        """
        self.sort_grid_column(self.customer_price_lists_div_id, column_name, descending_order)

    def get_customer_price_lists_grid_column_names_by_order(self):
        """
        Implementing get customer price lists grid column names by order functionality
        :return: column_name_list
        """
        self.column_name_list = self.get_grid_column_names_by_order(self.customer_price_lists_div_id)
        return self.column_name_list

    def drag_customer_price_lists_grid_column(self, source_column, destination_column):
        """
        Implementing drag customer price lists grid column functionality
        :param source_column:
        :param destination_column:
        :return:
        """
        self.drag_grid_column(self.customer_price_lists_div_id, source_column, destination_column)

    def is_customer_price_lists_grid_filtered_properly(self, column_name, filter_item_list):
        """
        Implementing is customer price lists grid filtered properly functionality
        :param column_name:
        :param filter_item_list:
        :return: True/False
        """
        filtered_properly = False
        filtered_list = self.get_all_rows_of_specific_column_from_grid(self.customer_price_lists_div_id, column_name, self.get_grid_row_count(self.customer_price_list_count_span_locator, 7))
        if list(filter_item_list) == filtered_list:
            filtered_properly = True
        return filtered_properly

    def click_customer_price_lists_grid_export_to_excel_button(self):
        """
        Implementing click customer price lists grid export to excel button functionality
        :return:
        """
        self.click_grid_export_to_excel_button(self.customer_price_lists_div_id)

    def click_customer_price_lists_grid_first_row_inline_action_button(self):
        """
        Implementing click customer price lists grid first row inline action button functionality
        :return:
        """
        self.click_inline_action_button(self.customer_price_lists_div_id, None, self.customer_price_lists_inline_action_column_number, first_row=True)

    def set_customer_price_list_detail_grid_settings(self, grid_settings):
        """
        Implementing set customer price list detail grid settings functionality
        :param grid_settings:
        :return:
        """
        self.set_grid_settings(self.customer_price_list_detail_div_id, grid_settings)

    def get_all_rows_of_specific_column_from_customer_price_list_detail_grid(self, column_name):
        """
        Implementing get all rows of specific column from customer price list detail grid functionality
        :param column_name:
        :return: all_row_data
        """
        self.all_row_data = self.get_all_rows_of_specific_column_from_grid(self.customer_price_list_detail_div_id, column_name)
        return self.all_row_data

    def sort_customer_price_list_detail_grid_column(self, column_name, descending_order):
        """
        Implementing sort customer price list detail grid column functionality
        :param column_name:
        :param descending_order:
        :return:
        """
        self.sort_grid_column(self.customer_price_list_detail_div_id, column_name, descending_order)

    def get_customer_price_list_detail_grid_column_names_by_order(self):
        """
        Implementing get customer price list detail grid column names by order functionality
        :return: column_name_list
        """
        self.column_name_list = self.get_grid_column_names_by_order(self.customer_price_list_detail_div_id)
        return self.column_name_list

    def drag_customer_price_list_detail_grid_column(self, source_column, destination_column):
        """
        Implementing drag customer price list detail grid column functionality
        :param source_column:
        :param destination_column:
        :return:
        """
        self.drag_grid_column(self.customer_price_list_detail_div_id, source_column, destination_column)

    def is_customer_price_list_detail_grid_filtered_properly(self, column_name, filter_item_list):
        """
        Implementing is customer price list detail grid filtered properly functionality
        :param column_name:
        :param filter_item_list:
        :return: True/False
        """
        filtered_properly = False
        filtered_list = self.get_all_rows_of_specific_column_from_grid(self.customer_price_list_detail_div_id, column_name)
        if list(filter_item_list) == filtered_list:
            filtered_properly = True
        return filtered_properly

    def click_customer_price_list_detail_grid_export_to_excel_button(self):
        """
        Implementing click customer price list detail grid export to excel button functionality
        :return:
        """
        self.click_grid_export_to_excel_button(self.customer_price_list_detail_div_id)

    def filter_customer_price_list_detail_grid(self, column_name, item_name):
        """
        Implementing filter customer price list detail grid functionality
        :param column_name:
        :param item_name:
        :return:
        """
        self.grid_filter_with_textbox(self.customer_price_list_detail_div_id, column_name, item_name)

    def set_price_exceptions_grid_settings(self, grid_settings):
        """
        Implementing set price exceptions grid settings functionality
        :param grid_settings:
        :return:
        """
        self.set_grid_settings(self.price_exceptions_grid_div_id, grid_settings)

    def get_all_rows_of_specific_column_from_price_exceptions_grid(self, column_name):
        """
        Implementing get all rows of specific column from price exceptions grid functionality
        :param column_name:
        :return: all_row_data
        """
        self.all_row_data = self.get_all_rows_of_specific_column_from_grid(self.price_exceptions_grid_div_id, column_name)
        return self.all_row_data

    def sort_price_exceptions_grid_column(self, column_name, descending_order):
        """
        Implementing sort price exceptions grid column functionality
        :param column_name:
        :param descending_order:
        :return:
        """
        self.sort_grid_column(self.price_exceptions_grid_div_id, column_name, descending_order)

    def get_price_exceptions_grid_column_names_by_order(self):
        """
        Implementing get price exceptions grid column names by order functionality
        :return: column_name_list
        """
        self.column_name_list = self.get_grid_column_names_by_order(self.price_exceptions_grid_div_id)
        return self.column_name_list

    def drag_price_exceptions_grid_column(self, source_column, destination_column):
        """
        Implementing drag price exceptions grid column functionality
        :param source_column:
        :param destination_column:
        :return:
        """
        self.drag_grid_column(self.price_exceptions_grid_div_id, source_column, destination_column)

    def is_price_exceptions_grid_filtered_properly(self, column_name, filter_item_list):
        """
        Implementing is price exceptions grid filtered properly functionality
        :param column_name:
        :param filter_item_list:
        :return: True/False
        """
        filtered_properly = False
        filtered_list = self.get_all_rows_of_specific_column_from_grid(self.price_exceptions_grid_div_id, column_name)
        if list(filter_item_list) == filtered_list:
            filtered_properly = True
        return filtered_properly

    def click_price_exceptions_grid_export_to_excel_button(self):
        """
        Implementing click price exceptions grid export to excel button functionality
        :return:
        """
        self.click_grid_export_to_excel_button(self.price_exceptions_grid_div_id)

    def filter_price_exceptions_grid(self, column_name, filter_item_list):
        """
        Implementing filter price exceptions grid functionality
        :param column_name:
        :param filter_item_list:
        :return:
        """
        self.grid_filter_details(column_name, filter_item_list, self.price_exceptions_grid_div_id, self.price_exceptions_filter_column_position)

    def click_price_exceptions_performance_report_button(self):
        """
        Implementing click price exceptions performance report button functionality
        :return:
        """
        self.click_element(self.price_exceptions_performance_report_button_locator)

    def select_upload_to_requested_radio_button(self):
        """
        Implementing select upload to requested radio button functionality
        :return:
        """
        self.click_element(self.upload_to_requested_radio_button_locator, True)

    def click_create_cpe_bundle_button(self):
        """
        Implementing click create cpe bundle button functionality
        :return:
        """
        self.click_element(self.create_cpe_bundle_button_locator)

    def click_create_cpe_bundle_save_button(self):
        """
        Implementing click create cpe bundle save button functionality
        :return:
        """
        self.click_element(self.create_cpe_bundle_save_button_locator)
        try:
            self.wait().until(EC.presence_of_element_located(self.confirmation_popup_locator), 'confirmation popup locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise

    def click_cpe_bundle_button(self):
        """
        Implementing click cpe bundle button functionality
        :return:
        """
        self.click_element(self.cpe_bundle_button_locator)

    def click_cpe_bundle_create_cpe_bundle_button(self):
        """
        Implementing click cpe bundle create cpe bundle button functionality
        :return:
        """
        self.click_element(self.cpe_bundle_create_cpe_bundle_button_locator)

    def set_customer_source(self, item):
        """
        Implementing set customer source functionality
        :param item:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.customer_source_dropdown_arrow_locator, item)
        self.wait_for_ajax_spinner_load()

    def select_all_customers_of_pricing_exceptions(self):
        """
        Implementing select all customers of pricing exception functionality
        :return:
        """
        self.click_element(self.pricing_exception_move_all_customers_arrow_button_locator, True)

    def select_price_exception_request_grid_multiple_row(self):
        """
        Implementing select price exception request grid multiple row functionality
        :return:
        """
        self.click_element(self.price_exceptions_grid_checkbox_locator)

    def is_bulk_edit_error_pop_up_displayed(self):
        """
        Implementing is bulk edit error pop up displayed functionality
        :return: True/False
        """
        try:
            self.wait().until(EC.presence_of_element_located(self.bulk_edit_error_popup_locator), 'bulk edit error popup locator not found before specified time out')
            is_present = True
            self.click_element(self.ok_button_locator)
        except:
            is_present = False
        return is_present

    def select_sell_dashboard_tab(self):
        """
        Implementing select sell dashboard tab functionality
        :return:
        """
        self.select_static_tab(self.sell_dashboard_tab_locator, 'sell dashboard tab locator not found before specified time out')

    def is_save_customer_profile_button_not_present(self):
        """
        Implementing is save customer profile button not present functionality
        :return: True/False
        """
        try:
            self.wait(30).until(EC.visibility_of_element_located(self.save_customer_profile_locator_for_create), 'locator not found before specified time out')
            is_present = False
        except:
            is_present = True
        return is_present

    def is_specific_tab_on_customer_profile_page_present(self, tab_name):
        """
        Implementing is specific tab on customer profile page present functionality
        :param tab_name:
        :return:
        """
        tab_locator = (By.XPATH, "//div[contains(@id, 'SourceProfileTabStrip')]/descendant::a[text()='%s']" % tab_name)
        return self.is_element_present(tab_locator)

    def is_specific_column_on_customer_profile_grid_present(self, column_name):
        """
        Implementing is specific column on customer profile grid present functionality
        :param column_name:
        :return:
        """
        column_locator = (By.XPATH, "//div[contains(@id, 'divCustomerDialedDigit')]/descendant::a[text()='%s']" % column_name)
        return self.is_element_present(column_locator)

    def is_upload_customer_price_list_button_not_present(self):
        """
        Implementing is upload customer price list button not present functionality
        :return: True/False
        """
        try:
            self.wait(30).until(EC.visibility_of_element_located(self.upload_customer_price_list_button_locator), 'locator not found before specified time out')
            is_present = False
        except:
            is_present = True
        return is_present

    def click_show_summary_form_button_to_expand(self):
        """
        Implementing click show summary form button to expand functionality
        :return:
        """
        self.click_element(self.show_summary_form_button_locator)

    def is_error_log_message_tab_present(self):
        """
        Implementing is error log message tab present functionality
        :return:
        """
        return self.is_element_present(self.error_lag_message_locator)

    def get_cpl_prev_date_override(self):
        """
        Implementing get cpl prev date override functionality
        :return: previous_cpl_prev_date_override_value
        """
        cpl_prev_date_override_dropdown_element = self.wait().until(EC.presence_of_element_located(self.cpl_prev_date_override_dropdown_locator_for_value), 'cpl prev date override dropdown locator for value not found before specified time out')
        self.hover(cpl_prev_date_override_dropdown_element)
        previous_cpl_prev_date_override_value = str(cpl_prev_date_override_dropdown_element.get_attribute("innerHTML")).strip()
        return previous_cpl_prev_date_override_value

    def set_cpl_prev_date_override(self, cpl_prev_date_override):
        """
        Implementing set cpl prev date override functionality
        :param cpl_prev_date_override:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.cpl_prev_date_override_dropdown_locator, cpl_prev_date_override)
        self.wait_for_ajax_spinner_load()

    def get_customers_grid_first_row_customer_name(self):
        """
        Implementing get customers grid first row customer name functionality
        :return: customer_name
        """
        return self.customer_information_dict["Customer"]

    def click_my_price_list_button(self):
        """
        Implementing click my price list button functionality
        :return:
        """
        self.click_element(self.my_price_list_button_locator, error_message='my price list button locator not found before specified time out')

    def is_my_price_list_screen_loaded(self):
        """
        Implementing is my price list screen loaded functionality
        :return: True/False
        """
        return self.is_element_present(self.my_price_list_management_screen_title_locator)

    def click_new_my_price_list_button(self):
        """
        Implementing click new my price list button functionality
        :return:
        """
        self.click_element(self.new_my_price_list_button_locator)

    def is_create_my_price_list_screen_loaded(self):
        """
        Implementing is create my price list screen loaded functionality
        :return:
        """
        return self.is_element_present(self.create_my_price_list_screen_title_locator)

    def set_my_price_list(self, my_price_list_prefix, with_random_data):
        """
        Implementing set my price list name functionality
        :return:
        """
        global my_pirce_list

        if with_random_data:
            my_pirce_list = my_price_list_prefix + str(self.random_string_generator(size=4))
            self.set_value_into_input_field(self.my_price_list_input_field_locator, value=my_pirce_list)
        else:
            my_pirce_list = my_price_list_prefix
            self.set_value_into_input_field(self.my_price_list_input_field_locator, value=my_pirce_list)

    def get_my_price_list(self):
        """
        Implementing get my price list functionality
        :return:
        """
        global my_pirce_list
        return my_pirce_list

    def move_all_available_customers_to_destination_to_create_my_price_list(self):
        """
        Implementing move all available customers to destination to create my price list functionality
        :return:
        """
        self.click_element(self.create_my_price_list_move_all_customers_arrow_button_locator, True)

    def move_all_available_countries_to_destination_to_create_my_price_list(self):
        """
        Implementing move all available countries to destination to create my price list functionality
        :return:
        """
        self.click_element(self.create_my_price_list_move_all_countries_arrow_button_locator, True)

    def click_save_my_price_list_button(self):
        """
        Implementing click save my price list button functionality
        :return:
        """
        self.click_element(self.save_my_price_list_button_locator)
        try:
            self.wait(30).until(EC.visibility_of_element_located(self.confirmation_popup_locator))
            self.click_element(self.ok_button_locator)
        except:
            pass

    def set_my_price_list_into_search_input_field(self, my_price_list):
        """
        Implementing set my price list into search input field functionality
        :param my_price_list:
        :return:
        """
        self.set_value_into_input_field(self.my_price_list_search_input_field_locator, my_price_list)

    def click_my_price_list_management_grid_first_row_inline_action_button(self):
        """
        Implementing click my price list management grid first row inline action button functionality
        :return:
        """
        self.click_inline_action_button(self.my_price_list_grid_div_id, None, self.my_price_list_grid_inline_action_button_column_position, first_row=True)

    def select_my_price_list_management_grid_inline_action_item(self, item_name):
        """
        Implementing select my price list management grid inline action item functionality
        :return:
        """
        self.select_inline_action_item(item_name, module_name="Sell")

    def is_error_message_displayed_for_duplicate_my_price_list(self):
        """
        Implementing is error message displayed for duplicate my price list functionality
        :return:
        """
        status = self.is_element_present(self.my_price_list_already_exists_error_message_locator)
        self.click_element(self.ok_button_locator, script_executor=True)
        return status

    def select_item_from_my_price_list_drop_down(self, my_price_list):
        """
        Implementing select item from my price list drop down functionality
        :param my_price_list:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.my_price_list_kendo_drop_down_locator, my_price_list)

    def click_customer_price_list_preview_export_to_excel_button(self):
        """
        Implementing click customer price list preview export to excel button functionality
        :return:
        """
        self.click_element(self.customer_price_list_preview_export_to_excel_button_locator, error_message='customer price list preview export to excel button locator not found before specified time out')

    def select_my_price_list_management_grid_first_row_checkbox(self):
        """
        Implementing select my price list management grid first row checkbox functionality
        :return:
        """
        select_grid_row_checkbox_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::td[%s]/input" % (self.my_price_list_grid_div_id, str(self.my_price_list_grid_checkbox_column_position)))
        self.click_element(select_grid_row_checkbox_locator, True)

    def click_delete_button(self):
        """
        Implementing click delete button functionality
        :return:
        """
        self.click_element(self.delete_button_locator, error_message='delete button locator not found before specified time out')
        self.click_element(self.ok_button_locator)
        self.wait().until(EC.visibility_of_element_located(self.delete_successful_message_locator), 'delete successful message locator not found before specified time out')
        self.click_element(self.ok_button_locator)

    def click_country_group_link(self):
        """
        Implementing click country group link functionality
        :return:
        """
        self.click_element(self.country_groups_locator)

    def click_choose_template_type_to_download_customer_price_list_link(self):
        """
        Implementing click choose template type to download customer price list link functionality
        :return:
        """
        self.click_element(self.choose_template_type_to_download_customer_price_list_link_locator, script_executor=True)

    def set_reference_price_list_first_item(self):
        """
        Implementing set reference price list first item functionality
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.referenece_price_list_dropdown_arrow_locator, None, first_item=True)

    def set_number_plan_first_item(self):
        """
        Implementing set number plan first item functionality
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.number_plan_dropdown_box_locator, None, first_item=True)

    def are_countries_selected(self):
        """
        Implementing are countries selected functionality
        :return: True/False
        """
        are_selected = False
        country_count = self.get_text_from_element(self.available_countries_count_locator)
        country_count_splitted = country_count.split("(")
        country_count_splitted = country_count_splitted[1].split(")")
        if int(country_count_splitted[0]) == 0:
            are_selected = True
        return are_selected

    def select_first_customer_for_price_lists(self):
        """
        Implementing select first customer for price lists functionality
        :return:
        """
        self.click_element(self.first_customer_locator)
        self.click_element(self.select_customer_button_locator)

    def validate_country_dropdown_does_not_show_country_having_no_country_code(self, countries):
        """
        Implementing validate country dropdown does not show country having no country code functionality
        :param countries:
        :return:
        """
        invalid_country = ""

        countries_from_dropdown = []
        try:
            self.click_element(self.country_dropdown_locator)
            countries_element = self.wait().until(EC.presence_of_all_elements_located(self.countries_locator), 'drop down item locator not found before specified time out')
            for element in countries_element:
                countries_from_dropdown.append((element.text).strip())
            for country in countries:
                if country in countries_from_dropdown:
                    invalid_country = country
                    break
        except:
            raise
        finally:
            return invalid_country

    def get_countries_from_tbcountry_having_no_mobile_country_code(self, server, database, user, password):
        """
        Implementing get countries from tbcountry having no mobile country code functionality
        :param server:
        :param database:
        :param user:
        :param password:
        :return: countries
        """
        countries = []
        try:
            Database.open_mssql(server=server, database=database, user=user, password=password)
            sql = ("""SELECT Country FROM iXCore_Main.dbo.tbCountry WHERE mobilecountrycode IS NULL""")
            cursor = Database.get_cursor(sql)
            row = cursor.fetchone()
            while row:
                countries.append(str(row.Country))
                row = cursor.fetchone()
            cursor.close()
        except:
            raise
        finally:
            Database.close()
            return countries

    def is_warning_tab_present(self):
        """
        Implementing is warning tab present functionality
        :return:
        """
        return self.is_element_present(self.warning_tab_locator)

    def select_warning_tab(self):
        """
        Implementing select warning tab functionality
        :return:
        """
        self.click_element(self.warning_tab_locator, script_executor=True)

    def is_warning_tab_loaded(self):
        """
        Implementing is warning tab loaded functionality
        :return:
        """
        return self.is_element_present(self.warning_message_column_locator)

    def is_warnings_message_tab_present(self):
        """
        Implementing is warnings message tab present functionality
        :return:
        """
        return self.is_element_present(self.warnings_message_locator)

    def is_errors_message_tab_present(self):
        """
        Implementing is errors message tab present functionality
        :return:
        """
        return self.is_element_present(self.errors_message_locator)

    def get_all_items_from_my_pricelist_dropdown(self):
        """
        Implementing get all items from my pricelist dropdown functionality
        :return:
        """
        global all_items_from_mypricelist
        all_items_from_mypricelist = []

        self.click_element(self.my_pricelist_dropdown_arrow_locator)
        items_locator = (By.XPATH, "//ul[@id='cogMyPriceList_1_listbox']/li")
        items_elements = self.wait().until(EC.presence_of_all_elements_located(items_locator))
        for element in items_elements:
            all_items_from_mypricelist.append(str(element.text))
        return all_items_from_mypricelist

    def is_grid_empty(self):
        """
        Implementing is grid empty functionality
        :return: True/False
        """
        return self.is_element_present(self.no_data_found_locator)

    def is_deleted_mypricelist_removed_from_mypricelist_dropdown(self, mypricelist):
        """
        Implementing is deleted mypricelist removed from mypricelist dropdown functionality
        :param mypricelist:
        :return:
        """
        status = True
        global all_items_from_mypricelist
        if mypricelist in all_items_from_mypricelist:
            status = False
        return status

    def is_pricing_exception_error_message_displayed_for_approved_or_request_status(self):
        """
        Implementing is pricing exception error message displayed for approved or request status functionality
        :return:
        """
        status = self.is_element_present(self.pricing_exception_cannot_be_batch_error_message_locator)
        self.click_element(self.ok_button_locator, script_executor=True)
        return status

    def is_sorting_options_are_displayed_in_customer_price_list_preview_screen(self, column_name, sort_descending):
        """
        Implementing is sorting options are displayed in customer price list preview screen functionality
        :param column_name:
        :param sort_descending:
        :return:
        """
        column_name_locator = (By.XPATH, "//div[@id='divCPLGenerateSummary']/descendant::th[@data-title='%s']" % column_name)
        self.click_element(column_name_locator)
        sort_descending_icon_locator = (By.XPATH, "//div[@id='divCPLGenerateSummary']/descendant::th[@data-title='%s']/descendant::span[@class='k-icon k-i-arrow-s']" % column_name)
        sort_ascending_icon_locator = (By.XPATH, "//div[@id='divCPLGenerateSummary']/descendant::th[@data-title='%s']/descendant::span[@class='k-icon k-i-arrow-n']" % column_name)
        if sort_descending:
            status = self.is_element_present(sort_descending_icon_locator)
        else:
            status = self.is_element_present(sort_ascending_icon_locator)
        return status

    def is_search_rate_present(self):
        """
        Implementing is search rate present functionality
        :return:
        """
        return self.is_element_present(self.search_rate_text_locator)

    def is_country_multiselect_field_disabled(self):
        """
        Implementing is country multiselect field disabled functionality
        :return: True/False
        """
        is_disabled = False
        try:
            country_multiselection_to_field_element = self.wait().until(EC.presence_of_element_located(self.country_multiselection_to_field_locator), 'edit contract name textbox locator not found before specified time out')
            disabled_status = country_multiselection_to_field_element.get_attribute("disabled")
            if disabled_status == "true":
                is_disabled = True
        except:
            raise
        finally:
            return is_disabled

    def set_offer_content_for_mypricelist(self, item_name):
        """
        Implementing set offer content for mypricelist functionality
        :param item_name:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.mypricelist_offer_content_dropdown_arrow_locator, item_name)

    def set_mypricelist_to_create_cpl(self, item_name):
        """
        Implementing set mypricelist to create cpl functionality
        :param item_name:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.mypricelist_kendo_dropdown_arrow_locator, item_name)

    def is_country_multiselect_field_enabled(self):
        """
        Implementing is country multiselect field enabled functionality
        :return: True/False
        """
        is_disabled = True
        try:
            country_multiselection_to_field_element = self.wait().until(EC.presence_of_element_located(self.country_multiselection_to_field_locator), 'edit contract name textbox locator not found before specified time out')
            disabled_status = country_multiselection_to_field_element.get_attribute("disabled")
            if disabled_status == "true":
                is_disabled = False
        except:
            raise
        finally:
            return is_disabled

    def is_future_price_list_action_column_name_not_present(self):
        """
        Implementing is future price list action column name not present functionality
        :return: True/False
        """
        try:
            self.wait(10).until(EC.presence_of_element_located(self.future_price_list_action_column_name_locator), 'future price list action column locator not found before specified time out')
            is_present = False
        except:
            is_present = True
        return is_present

    def is_future_price_list_action_column_name_present(self):
        """
        Implementing is future price list action column name present functionality
        :return: True/False
        """
        return self.is_element_present(self.future_price_list_action_column_name_locator)

    def is_pricing_exception_bulk_edit_pop_up_not_present(self):
        """
        Implementing is pricing exception bulk edit pop up not present functionality
        :return: True/False
        """
        try:
            self.wait(10).until(EC.visibility_of_element_located(self.bulk_edit_popup_locator), 'bulk edit pop up locator not found before specified time out')
            is_present = False
        except:
            is_present = True
        return is_present

    def set_first_row_note(self, note_prefix):
        """
        Implementing set first row begin date functionality
        :param note_prefix:
        :return:
        """
        note_text = note_prefix + str(self.random_string_generator(size=4))
        note_column_element = self.wait().until(EC.presence_of_element_located(self.note_column_locator), 'note column locator not found before specified time out')
        column_index = int(note_column_element.get_attribute("data-index")) + 1 - 7
        first_row_note_column_locator = (By.XPATH, "//div[contains(@id, 'divPricingExp')]/descendant::div[@class='k-grid-content']/descendant::td[%s]/span[@class='k-grid-cell']" % str(column_index))
        self.set_value_into_input_field(first_row_note_column_locator, note_text, use_win32com=True)
        self.click_price_exceptions_page_header()

    def click_auto_generate_management_button(self):
        """
        Implementing click auto generate management button functionality
        :return:
        """
        self.click_element(self.auto_generate_management_button_locator, True)

    def is_auto_generate_management_screen_present(self):
        """
        Implementing is auto generate management screen present functionality
        :return:
        """
        return self.is_element_present(self.auto_generate_management_screen_locator)

    def is_specific_column_present_in_auto_generate_management_screen(self, column_name):
        """
        Implementing is specific column present in auto generate management screen functionality
        :param column_name:
        :return:
        """
        column_locator = (By.XPATH, "//div[@id='AutoGenerateTemplateGrid']/descendant::th[@data-title='%s']" % column_name)
        return self.is_element_present(column_locator)

    def click_new_template_button(self):
        """
        Implementing click new template button functionality
        :return:
        """
        self.click_element(self.new_template_button_locator)

    def set_new_template_name(self, template_name_prefix):
        """
        Implementing set new template name functionality
        :param template_name_prefix:
        """
        global template_name
        template_name = template_name_prefix + self.random_string_generator(6)
        self.set_value_into_input_field(self.new_template_textbox_locator, template_name)

    def get_created_template_name(self):
        """
        Implementing get created template name functionality
        :return: template_name
        """
        global template_name
        return template_name

    def set_begin_of_range_period_date_to_add(self, day_to_add):
        """
        Implementing set begin of range period date to add functionality
        :param day_to_add:
        """
        self.set_value_into_input_field(self.begin_of_range_period_textbox_locator, day_to_add, use_win32com=True)
        self.click_element(self.template_detail_pop_up_locator)

    def set_begin_of_range_period_time(self, time):
        """
        Implementing set begin of range period time functionality
        :param time:
        """
        self.set_value_into_input_field(self.begin_of_range_period_time_textbox_locator, time)

    def set_end_of_range_period_date_to_add(self, day_to_add):
        """
        Implementing set end of range period date to add functionality
        :param day_to_add:
        """
        self.set_value_into_input_field(self.end_of_range_period_textbox_locator, day_to_add, use_win32com=True)
        self.click_element(self.template_detail_pop_up_locator)

    def set_end_of_range_period_time(self, time):
        """
        Implementing set end of range period time functionality
        :param time:
        """
        self.set_value_into_input_field(self.end_of_range_period_time_textbox_locator, time)

    def filter_auto_template_management_grid(self, column_name, item_name):
        """
        Implementing filter auto template management grid functionality
        :param column_name:
        :param item_name:
        :return:
        """
        self.grid_filter_with_textbox(self.auto_generate_template_grid_div_id, column_name, item_name)

    def get_auto_template_management_grid_row_details(self):
        """
        Implementing get auto template management grid row details functionality
        :return: grid_row_data
        """
        grid_row_data = self.get_grid_row_details(self.auto_generate_template_grid_div_id, self.auto_generate_template_grid_row_data)
        return grid_row_data

    def verify_number_plan_field_value(self):
        """
        Implementing verify number plan field value functionality
        :return: True/False
        """
        is_verified = False
        number_plan_field_value = self.get_text_from_element(self.number_plan_field_locator)
        try:
            int(number_plan_field_value)
        except ValueError:
            is_verified = True
        finally:
            return is_verified

    def get_offer_content_field_value(self):
        """
        Implementing get offer content field value functionality
        :return: offer content
        """
        return self.get_text_from_element(self.mypricelist_offer_content_field_locator)

    def get_my_price_list_name_from_mpl_management_grid(self):
        """
        Implementing get my price list name from mpl management grid functionality
        :return: price list date
        """
        return self.get_specific_column_value_from_grid(self.my_price_list_grid_div_id, 2, self.mypricelist_column_name)

    def set_scope_for_mypricelist(self, item_name):
        """
        Implementing set scope for mypricelist functionality
        :param item_name:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.mypricelist_scope_dropdown_arrow_locator, item_name)

    def set_select_date_for_mypricelist_grid(self, selete_date_item):
        """
        Implementing set select date for mypricelist grid functionality
        :param selete_date_item:
        :return:
        """
        self.single_selection_from_kendo_in_grid(self.my_price_list_grid_div_id, self.select_date_column_name, selete_date_item, data_grid_name=self.my_price_list_data_drid_name)
        self.click_element(self.sell_header_locator)

    def set_mypricelist_from_kendo_dropdown(self, mypricelist_name):
        """
        Implementing set mypricelist from kendo dropdown functionality
        :param mypricelist_name:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.mypricelist_dropdown_arrow_locator, mypricelist_name)

    def compare_select_date_in_mypricelist(self, selete_date_item):
        """
        Implementing compare select date in mypricelist functionality
        :return: selete_date_item
        :return: True/False
        """
        is_compared = False
        expected_date = None
        if selete_date_item == "Last Day of Month":
            expected_date = self.get_date(last_day_of_current_month=True)
        elif selete_date_item == "First Day of Month":
            expected_date = self.get_date(first_day_of_current_month=True)
        actual_date = self.get_text_from_element(self.select_date_locator, is_a_input_field=True)
        if str(expected_date) == str(actual_date):
            is_compared = True
        return is_compared

    def set_offer_date_to_mypricelist_grid(self, offer_date_item):
        """
        Implementing set offer date to mypricelist grid functionality
        :param offer_date_item:
        :return:
        """
        self.single_selection_from_kendo_in_grid(self.my_price_list_grid_div_id, self.offer_date_column_name, offer_date_item, data_grid_name=self.my_price_list_data_drid_name)
        self.click_element(self.sell_header_locator)

    def compare_offer_date_in_mypricelist(self, offer_date_item):
        """
        Implementing compare offer date in mypricelist functionality
        :return: offer_date_item
        :return: True/False
        """
        is_compared = False
        expected_date = None
        if offer_date_item == "Last Day of Month":
            expected_date = self.get_date(last_day_of_current_month=True)
        elif offer_date_item == "First Day of Month":
            expected_date = self.get_date(first_day_of_current_month=True)
        actual_date = self.get_text_from_element(self.offer_date_locator, is_a_input_field=True)
        if str(expected_date) == str(actual_date):
            is_compared = True
        return is_compared

    def is_preview_summary_grid_column_displayed(self, column_name):
        """
        Implementing is preview summary grid column displayed functionality
        :param column_name:
        :return: True/False
        """
        column_name_locator = (By.XPATH, "//div[@id='divCPLGenerateSummary']/descendant::th[@data-title='%s']" % column_name)
        return self.is_element_visible(column_name_locator)

    def click_customer_price_list_job_notifier_title(self):
        """
        Implementing click customer price list job notifier title functionality
        :return:
        """
        self.click_element(self.area_job_status_menu_button_locator)
        self.click_element(self.customer_price_list_job_notifier_locator)

    def click_first_row_job_msg_info_icon(self):
        """
        Implementing click first row job msg info icon functionality
        :return:
        """
        self.click_element(self.first_row_job_msg_info_icon_locator)

    def does_jobs_grid_have_data(self):
        """
        Implementing does jobs grid have data functionality
        :return: True/False
        """
        has_data = False
        timeout = 300
        try:
            end_time = time.time() + timeout
            while time.time() < end_time:
                self.click_element(self.price_exceptions_grid_search_button_locator)
                if int(self.get_upload_price_exceptions_number_of_rows()) > 0:
                    has_data = True
                    break
        except:
            raise
        return has_data

    def is_generate_offers_for_filter_option_present(self):
        """
        Implementing is generate offers for filter option present functionality
        :return: True/False
        """
        return self.is_element_present(self.generate_offers_for_filter_locator)

    def is_generate_offers_for_filter_option_not_present(self):
        """
        Implementing is generate offers for filter option not present functionality
        :return: True/False
        """
        is_not_present = None
        try:
            self.wait(5).until(EC.presence_of_element_located(self.generate_offers_for_filter_locator))
            is_not_present = False
        except:
            is_not_present = True
        finally:
            return is_not_present

    def click_show_search_form_link(self):
        """
        Implementing click show search form link functionality
        :return:
        """
        self.click_element(self.show_search_form_locator, script_executor=True)

    def is_no_record_found_message_displayed_in_customer_offer_preview_grid(self):
        """
        Implementing is no record found message displayed in customer offer preview grid functionality
        :return:
        """
        return self.is_element_present(self.customer_offer_preview_grid_no_record_found_message_locator)

    def is_rates_tab_loaded_properly(self):
        """
        Implementing is rates tab loaded properly functionality
        :return: True/False
        """
        return self.is_element_present(self.rates_tab_locator)

    def set_value_into_destination_input_box(self, destination):
        """
        Implementing set value into destination input box functionality
        :param destination:
        :return:
        """
        self.set_value_into_input_field(self.destination_input_box_locator, destination)

    def set_value_into_pricing_exception_destination_input_box(self, destination):
        """
        Implementing set value into pricing exception destination input box functionality
        :param destination:
        :return:
        """
        self.set_value_into_input_field(self.pricing_exception_destination_input_box_locator, destination)

    def is_price_exception_grid_begin_date_field_auto_populated(self, backdatepricingexceptiondays=False):
        """
        Implementing is price exception grid begin date field auto populated functionality
        :return:
        """
        status = True
        begin_date_column_element = self.wait().until(EC.presence_of_element_located(self.begin_date_column_locator), 'begin date column locator not found before specified time out')
        column_index = int(begin_date_column_element.get_attribute("data-index")) + 1 - 7
        first_row_begin_date_column_locator = (By.XPATH, "//div[contains(@id, 'divPricingExp')]/descendant::div[@class='k-grid-content']/descendant::td[%s]/span[@class='k-grid-cell']" % str(column_index))
        first_row_begin_date_column_element = self.wait().until(EC.presence_of_element_located(first_row_begin_date_column_locator))
        if backdatepricingexceptiondays is True:
            if first_row_begin_date_column_element.text != self.get_date(future_date=True, number_of_days_to_add=1):
                status = True
        else:
            if first_row_begin_date_column_element.text != self.get_date(future_date=True, number_of_days_to_add=1):
                status = False
        return status

    def compare_customer_price_lists_number_of_rows_after_upload_for_one_upload(self):
        """
        Implementing compare customer price lists number of rows after upload for one upload functionality
        :return: True/False
        """
        is_completed = False
        timeout = 900
        try:
            end_time = time.time() + timeout
            while time.time() < end_time:
                self.wait_for_ajax_spinner_load()
                self.click_customer_price_lists_search_button()
                self.wait_for_ajax_spinner_load()
                current_number_of_rows = int(self.get_customer_price_list_grid_number_of_rows())
                if current_number_of_rows == 1:
                    is_completed = True
                    break
        except:
            raise
        return is_completed

    def click_quality_of_service_link(self):
        """
        Implementing click quality of service link functionality
        :return:
        """
        self.click_element(self.quality_of_service_link_locator)

    def set_quality_of_service(self, quality_of_service):
        """
        Implementing set quality of service functionality
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.qos_dropdown_locator, quality_of_service)

    def is_qos_grid_column_present(self, column_name):
        """
        Implementing is qos grid column present functionality
        :return: True/False
        """
        qos_grid_column_locator = (By.XPATH, "//div[contains(@id, 'grdQoS')]/descendant::th[@data-title='%s']" % column_name)
        return self.is_element_present(qos_grid_column_locator)

    def check_ixlink_customer_checkbox(self):
        """
        Implementing check ixlink customer checkbox functionality
        :return:
        """
        self.click_element(self.ixlink_customer_checkbox_locator)

    def get_available_number_of_countries_for_price_lists(self):
        """
        Implementing get available number of countries for price lists functionality
        :return: number_of_countries
        """
        count_span_text = self.get_text_from_element(self.customer_price_lists_county_count_span_locator)
        return ((count_span_text.split("("))[1].split(")"))[0]

    def click_buy_and_sell_deal_management_link(self):
        """
        Implementing click buy and sell deal management link functionality
        :return:
        """
        self.click_element(self.buy_and_sell_deal_management_link_locator)

    def verify_deal_management_grid_column_display_thousand_separators(self, column_name):
        """
        Implementing verify deal management grid column display thousand separators functionality
        :param column_name:
        :return: True/False
        """
        is_verified = False
        column_value = self.get_specific_column_value_from_grid(self.deal_management_grid_div_id, self.get_grid_row_count(self.deal_management_grid_count_span_locator, 2), column_name)
        if "," in column_value:
            is_verified = True
        elif int(column_value) < 1000:
            is_verified = True
        return is_verified

    def is_pricing_exception_grid_error_message_appeared(self):
        """
        Implementing is pricing exception grid error message appeared functionality
        :return:
        """
        self.click_element(self.save_change_button_locator, True)
        is_present = self.is_element_visible(self.correct_the_error_message_locator)
        if is_present is True:
            self.click_element(self.ok_button_locator)
        return is_present

    def is_qos_screen_filter_option_present(self, filter_option_name):
        """
        Implementing is qos screen filter option present functionality
        :param filter_option_name:
        :return: True/False
        """
        qos_screen_filter_option_locator = (By.XPATH, "//label[contains(text(), '%s')]/../descendant::input" % filter_option_name)
        return self.is_element_present(qos_screen_filter_option_locator)

    def click_clear_button(self):
        """
        Implementing click clear button functionality
        :return:
        """
        self.click_element(self.clear_button_locator)

    def is_qos_filter_option_selection_cleared(self):
        """
        Implementing is qos filter option selection cleared functionality
        :return: True/False
        """
        is_cleared = False
        qos_filter_text = self.get_text_from_element(self.qos_dropdown_text_locator)
        if qos_filter_text.lower() == "select":
            is_cleared = True
        return is_cleared

    def get_source_name_from_source_customer_table(self, server, database, user, password):
        """
        Implementing get source name from source customer table functionality
        :param server:
        :param database:
        :param user:
        :param password:
        :return: source_name
        """
        source_name = ""
        try:
            Database.open_mssql(server=server, database=database, user=user, password=password)
            sql=("""
            SELECT TOP 1 S.Source
            FROM ixTrade_MAin..tbSourceCustomer S
            INNER JOIN ixCore_Main..tbAccount A ON A.AccountID = S.AccountID
            INNER JOIN ixCore_Main..tbCompany C ON C.CompanyID = A.CompanyID
            WHERE C.CountryID IS NULL;
            """)
            cursor = Database.get_cursor(sql)
            row = cursor.fetchone()
            cursor.close()
            Database.close()
            source_name = str(row.Source).strip()
        except:
            raise
        finally:
            return source_name

    def check_exclude_own_home_country_checkbox(self):
        """
        Implementing check exclude own home country checkbox functionality
        :return:
        """
        checkbox_element = self.wait().until(EC.presence_of_element_located(self.exclude_own_home_country_checkbox_locator), 'checkbox locator not found before specified time out')
        status = checkbox_element.is_selected()
        if status is False:
            self.click_element(self.exclude_own_home_country_checkbox_locator)

    def assign_available_country_to_source(self, country_name):
        """
        Implementing assign available country to source functionality
        :return:
        """
        for country in country_name:
            country_selection_locator = (By.XPATH, "//select[contains(@id, 'from_cogCountry_')]/option[text()='%s']" % country)
            self.click_element(country_selection_locator)
            self.click_element(self.country_single_selection_locator, True)

    def get_country_name_from_database(self, config_variable_value, server, database, user, password):
        """
        Implementing get country name from database functionality
        :param config_variable_value:
        :param server:
        :param database:
        :param user:
        :param password:
        :return: country name from database
        """
        country = None
        try:
            Database.open_mssql(server=server, database=database, user=user, password=password)
            sql = ("""
            SELECT Country FROM iXCore_Main.dbo.tbcountry 
            WHERE countryid = ?;
            """)
            cursor = Database.get_cursor(sql, [config_variable_value])
            row = cursor.fetchone()
            cursor.close()
            Database.close()
            country = str(row.Country).strip()
        except:
            raise
        finally:
            return country

    def is_homecountry_not_displayed_in_preview_grid(self, homecountry):
        """
        Implementing is homecountry not displayed in preview grid functionality
        :param homecountry:
        :return: True/False
        """
        homecountry_locator = (By.XPATH, "//div[@id='PreviewGrid']/descendant::/div[@class='k-grid-content']/descendant::span[text()='%s']" % homecountry)
        is_not_present = True
        try:
            self.wait(5).until(EC.presence_of_element_located(homecountry_locator))
            is_not_present = False
        except:
            raise
        finally:
            return is_not_present

    def uncheck_exclude_own_home_country_checkbox(self):
        """
        Implementing uncheck exclude own home country checkbox functionality
        :return:
        """
        checkbox_element = self.wait().until(EC.presence_of_element_located(self.exclude_own_home_country_checkbox_locator), 'checkbox locator not found before specified time out')
        status = checkbox_element.is_selected()
        if status is True:
            self.click_element(self.exclude_own_home_country_checkbox_locator)

    def is_homecountry_displayed_in_preview_grid(self, homecountry):
        """
        Implementing is homecountry displayed in preview grid functionality
        :param homecountry:
        :return: True/False
        """
        homecountry_locator = (By.XPATH, "//div[@id='PreviewGrid']/descendant::/div[@class='k-grid-content']/descendant::span[text()='%s']" % homecountry)
        return self.is_element_present(homecountry_locator)

    def get_source_name_from_source_customer_table_where_countryid_is_not_null(self, server, database, user, password):
        """
        Implementing get source name from source customer table where countryid is not null functionality
        :param server:
        :param database:
        :param user:
        :param password:
        :return: source_name
        """
        source_name = ""
        try:
            Database.open_mssql(server=server, database=database, user=user, password=password)
            sql=("""
            SELECT TOP 1 S.Source
            FROM ixTrade_MAin..tbSourceCustomer S
            INNER JOIN ixCore_Main..tbAccount A ON A.AccountID = S.AccountID
            INNER JOIN ixCore_Main..tbCompany C ON C.CompanyID = A.CompanyID
            WHERE C.CountryID IS NOT NULL;
            """)
            cursor = Database.get_cursor(sql)
            row = cursor.fetchone()
            cursor.close()
            Database.close()
            source_name = str(row.Source).strip()
        except:
            raise
        finally:
            return source_name

    def click_import_button(self):
        """
        Implementing click import button functionality
        :return:
        """
        self.click_element(self.import_button_locator)

    def click_qos_browse_button(self):
        """
        Implementing click qos browse button functionality
        :return:
        """
        self.click_element(self.qos_browse_button_locator)

    def click_upload_files_button(self):
        """
        Implementing click upload files button functionality
        :return:
        """
        self.click_element(self.upload_files_button_locator)
        try:
            self.wait().until(EC.presence_of_element_located(self.upload_success_message_locator), 'upload success message locator not found before specified time')
            self.click_element(self.ok_button_locator)
        except:
            raise

    def compare_cpl_count_after_creating_a_new_one(self):
        """
        Implementing compare cpl count after creating a new one functionality
        :return: True/False
        """
        global cpl_row_count
        timeout = 900
        try:
            end_time = time.time() + timeout
            while (time.time() < end_time):
                self.wait(5)
                self.click_customer_price_lists_search_button()
                current_count = self.get_grid_row_count(self.customer_price_lists_grid_count_span_locator, 7)
                if (int(current_count) > (int(cpl_row_count))):
                    return True
        except:
            raise
        return False

    def is_dialed_digits_mcc_mnc_tab_present(self):
        """
        Implementing is sdialed digits mcc mnc tab present functionality
        :return: True/False
        """
        return self.is_element_present(self.dialed_digit_mcc_mnc_tab_locator)

    def is_first_row_future_offer_actions_disabled(self):
        """
        Implementing is first row future offer actions disabled functionality
        :return: True/False
        """
        column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::th[@data-title='%s']" % (self.customer_price_lists_div_id, self.future_price_list_actions_column_name))
        column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) + 1
        first_row_disabled_future_offer_actions_column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::div[@class='k-grid-content']/descendant::td[%s]/span[@class='k-grid-cell k-state-disabled']" % (self.customer_price_lists_div_id, str(column_index)))
        return self.is_element_present(first_row_disabled_future_offer_actions_column_locator)

    def is_second_row_future_offer_actions_enabled(self):
        """
        Implementing is second row future offer actions enabled functionality
        :return: True/False
        """
        column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::th[@data-title='%s']" % (self.customer_price_lists_div_id, self.future_price_list_actions_column_name))
        column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) + 1
        second_row_enabled_future_offer_actions_column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::div[@class='k-grid-content']/descendant::tbody/tr[2]/td[%s]/span[text()='Please Select']" % (self.customer_price_lists_div_id, str(column_index)))
        return self.is_element_present(second_row_enabled_future_offer_actions_column_locator)

    def click_second_row_future_offer_actions_dropdown(self):
        """
        Implementing click second row future offer actions dropdown functionality
        :return:
        """
        column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::th[@data-title='%s']" % (self.customer_price_lists_div_id, self.future_price_list_actions_column_name))
        column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) + 1
        second_row_enabled_future_offer_actions_column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::div[@class='k-grid-content']/descendant::tbody/tr[2]/td[%s]/span[text()='Please Select']" % (self.customer_price_lists_div_id, str(column_index)))
        self.click_element(second_row_enabled_future_offer_actions_column_locator)

    def does_future_offer_actions_dropdown_have_proper_options(self, option_name):
        """
        Implementing does future offer actions dropdown have proper options functionality
        :param option_name:
        :return: True/False
        """
        option_locator = (By.XPATH, "//ul[@id='FutureAction_listbox']/li[contains(text(), '%s')]" % option_name)
        return self.is_element_present(option_locator)

    def set_to_date(self, to_date, future_date, number_of_days_to_add):
        """
        Implementing set from date functionality
        :param to_date:
        :param future_date:
        :param number_of_days_to_add:
        :return:
        """
        if future_date is True:
            self.set_value_into_input_field(self.to_date_locator, self.get_date(future_date=True, number_of_days_to_add=number_of_days_to_add))
        else:
            self.set_value_into_input_field(self.to_date_locator, to_date)

    def click_price_exception_excel_template_download_button_button(self):
        """
        Implementing click price exception excel template download button functionality
        :return:
        """
        self.click_element(self.price_exception_excel_template_download_button_locator, True)

    def is_specific_column_present_in_mypricelist_grid(self, column_name):
        """
        Implementing is specific column present in mypricelist grid functionality
        :param column_name:
        :return:
        """
        column_locator = (By.XPATH, "//div[contains(@id, 'MyPriceListGrid')]/descendant::th[@data-title='%s']" % column_name)
        return self.is_element_present(column_locator)

    def is_specific_field_present_in_mypricelist_page(self, field_name):
        """
        Implementing is specific column present in mypricelist page functionality
        :param field_name:
        :return:
        """
        specific_field_locator = (By.XPATH, "//form[contains(@id, 'frmMyPriceListDetails_mpld_')]/descendant::label[text()='%s']" % field_name)
        return self.is_element_present(specific_field_locator)

    def is_field_present(self, field_name):
        """
        Implementing is field present functionality
        :param field_name:
        :return: True/False
        """
        field_locator = (By.XPATH, "//label[contains(text(), '%s')]/../descendant::input" % field_name)
        return self.is_element_present(field_locator)

    def is_button_displayed(self, button_name):
        """
        Implementing is button displayed functionality
        :param button_name:
        :return: True/False
        """
        button_locator = (By.XPATH, "//a[contains(@class, 'k-button') and contains(text(), '%s')]" % button_name)
        return self.is_element_visible(button_locator)

    def click_auto_generate_template_grid_first_row_inline_action_button(self):
        """
        Implementing click auto generate template grid first row inline action button functionality
        :return:
        """
        self.click_inline_action_button(self.auto_generate_template_grid_div_id, None, self.auto_generate_template_grid_div_inline_action_column_number, first_row=True)

    def is_inline_action_item_present(self, item_name):
        """
        Implementing is inline action item present functionality
        :param item_name:
        :return: True/False
        """
        inline_action_item_locator = (By.XPATH, "//ul[@id='Action_listbox']/li[text()='%s']" % item_name)
        return self.is_element_present(inline_action_item_locator)

    def check_require_cpl_approval_checkbox(self):
        """
        Implementing check require cpl approval checkbox functionality
        :return:
        """
        self.click_element(self.require_cpl_approval_checkbox_locator)

    def select_customer_price_list_grid_first_row(self):
        """
        Implementing select customer price list grid first row functionality
        :return:
        """
        self.select_grid_row_checkbox(self.customer_price_lists_div_id, None, self.customer_price_lists_checkbox_column_number, first_row=True)

    def click_issue_price_lists_button_with_cpl_approval(self):
        """
        Implementing click issue price lists button with cpl approval functionality
        :return:
        """
        self.click_element(self.issue_price_lists_button_locator, True)
        try:
            self.wait().until(EC.presence_of_element_located(self.approval_error_message_locator), 'approval error message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise

    def select_destinations_checkbox(self):
        """
        Implementing select destinations checkbox functionality
        :return:
        """
        self.click_element(self.destinations_checkbox_locator)

    def set_price_exception_grid_begin_date(self, previous_date, future_date, current_date):
        """
        Implementing set price exception grid begin date functionality
        :param previous_date:
        :param future_date:
        :param current_date:
        :return:
        """
        begin_date_column_element = self.wait().until(EC.presence_of_element_located(self.begin_date_column_locator), 'begin date column locator not found before specified time out')
        column_index = int(begin_date_column_element.get_attribute("data-index")) + 1 - 7
        first_row_begin_date_column_locator = (By.XPATH, "//div[contains(@id, 'divPricingExp')]/descendant::div[@class='k-grid-content']/descendant::td[%s]/span[@class='k-grid-cell']" % str(column_index))
        if future_date is True:
            self.set_value_into_input_field(first_row_begin_date_column_locator, self.get_date(future_date=True, number_of_days_to_add=1), use_win32com=True)
        elif previous_date is True:
            self.set_value_into_input_field(first_row_begin_date_column_locator, self.get_date(past_date=True, number_of_days_to_back=1), use_win32com=True)
        elif current_date is True:
            self.set_value_into_input_field(first_row_begin_date_column_locator, self.get_date(current_date=True), use_win32com=True)

    def set_reference_price_list_for_create_customer(self, item_name):
        """
        Implementing set reference price list for for create customer functionality
        :param item_name:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.reference_price_list_kendo_dropdown_locator, item_name)
        self.wait_for_ajax_spinner_load()

    def click_price_exception_grid_first_row_info_icon(self):
        """
        Implementing click price exception grid first row info icon functionality
        :return:
        """
        self.click_element(self.first_row_info_icon_locator, hover=True)

    def is_date_range_error_message_present(self):
        """
        Implementing is date range error message present functionality
        :return:
        """
        return self.is_element_present(self.date_range_error_message_locator)

    def select_customers_for_mypricelist(self, customers_list):
        """
        Implementing select customers for mypricelist functionality
        :param customers_list:
        :return:
        """
        self.move_available_items_to_destination(self.mypricelist_available_customers_selectbox_id, customers_list, move_button_locator=self.mypricelist_customer_move_single_item_button_locator)

    def select_countries_for_mypricelist(self, countries_list):
        """
        Implementing select countries for mypricelist functionality
        :param countries_list:
        :return:
        """
        self.move_available_items_to_destination(self.mypricelist_available_countries_selectbox_id, countries_list, move_button_locator=self.mypricelist_country_move_single_item_button_locator)
