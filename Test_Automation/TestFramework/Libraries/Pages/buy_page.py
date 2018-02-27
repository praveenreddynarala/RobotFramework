"""Implementing Buy screen page objects"""

from TestFramework.Libraries.Pages.base_page import BasePage
from TestFramework.Libraries.Pages.carrier_page import CarrierPage
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC
import TestFramework.Libraries.Modules.database as Database
import time
from selenium.common.exceptions import WebDriverException


class BuyPage(BasePage):
    """
    Contains Buy UI page locators
    Switch to buy function
    Get buy page title function
    Is buy dashboard tab present function
    Is vendors tab present function
    Is country groups link present function
    Is re-analysis link present function
    Select vendors tab function
    Is create vendor present function
    Is vendor price lists present function
    Click buy page inline action button function
    Is vendor profile present function
    Is vendor rates present function
    Is vendor digits present function
    Is vendor destination present function
    Is upload vendor price list present function
    Is inline action popup loaded properly function
    Click on tab of vendor profile page function
    Is vendor profile page loaded properly function
    Is rates page loaded properly function
    Is dial digits page loaded properly function
    Is destinations page loaded properly function
    Click on vendor price lists function
    Set from date function
    Set to date function
    Click vendor price lists search button function
    Verify price list item function
    Click view price list detail page inline action button function
    Search results displayed in the grid function
    Click create vendor button function
    Set vendor name function
    Set abbreviation function
    Set ixtools account function
    Set rate plan function
    Set call type function
    Set vendor profile status function
    Click save vendor profile button function
    Get vendor name from price lists grid function
    Is view price list detail present function
    Is analyze and complete present function
    Verify selected vendor function
    Verify selected price list function
    Select tab of view price list detail page function
    Is rates tab loaded properly function
    Is dial digits tab loaded properly function
    Is reference rates tab loaded properly function
    Set vendor price list status function
    Click on analyze and complete inline action function
    Select vendor price list grid row checkbox function
    Click compare price lists button function
    Verify selected price lists details function
    Verify rates grid columns function
    Select dial digits tab function
    Verify dialed digits columns function
    Close compare price lists pop up function
    Verify grid row data function
    Click on browse button function
    Click on upload button function
    Click on vendor price list upload colored icon function
    Click on vendor price list upload search button function
    Set from date as current date function
    Price list modified by user function
    Price list status is pending function
    Get vendor price lists number of rows from grid function
    Compare vendor price lists number of rows from grid function
    Verify vendor price list details function
    Get vendor price list details function
    Verify vendor price list details on database function
    Click view price list detail page inline action button function
    Get vendor profile page grid row details function
    Check has network code checkbox function
    Compare dialed digit with excel data function
    Compare rates with excel data function
    Compare destination with excel data function
    Set rate catalog function
    Set begin date function
    Click search button function
    Click vendor price list upload failed red icon function
    Get jobs grid row count function
    Get jobs grid initial row count function
    Compare jobs grid number of rows function
    Sort reg time column in descending order function
    Click error icon function
    Is non numeric dd invalid message shown function
    Is has network code unchecked function
    Click vendors grid first row inline action button function
    Is upload vendor price list pop up available function
    Click vendor price list grid first row inline action button function
    Click export to excel button function
    Get last price list from vendor grid function
    Get created vendor name function
    Get created carrier name function
    Get created rate plan name function
    Set vendors function
    Validate vendors grid cost currency format
    Get vendors grid margin column value function
    Set rates destination function
    Get last modified value function
    Select rates tab function
    Get begin date function
    Get rates grid begin date function
    Get rates grid last modified date function
    Select dialed digits tab function
    Get dialed digits grid begin date function
    Get dialed digits grid last modified date function
    Select destinations tab function
    Get destinations grid begin date function
    Get destinations grid last modified date function
    Get vendor price list date function
    Click upload cancel button function
    Get vendor price lists from date value function
    Get vendor price lists to date value function
    Get price list date column value function
    Get price list modified date column value function
    Select buy dashboard tab function
    Click country group function
    Get country group grid last modified column value function
    Set vendor grid settings function
    Sort vendors grid column function
    Get all rows of specific column from vendors grid function
    Compare sorted data function
    Drag vendors grid column function
    Get vendors grid column names by order
    Compare grid column position after altering
    Set country group scope function
    Set country groups grid settings function
    Sort country groups grid column function
    Get all rows of specific column from country groups grid function
    Drag country groups grid column function
    Get country groups grid column names by order function
    Click re analysis link function
    Set re analysis grid settings function
    Sort re analysis grid column function
    Get all rows of specific column from re analysis grid function
    Drag re analysis grid column function
    Get re analysis grid column names by order function
    Click re analysis grid first row inline action button function
    Sort re analysis detail grid column function
    Get all rows of specific column from re analysis detail grid function
    Drag re analysis detail grid column function
    Get re analysis detail grid column names by order function
    Select inline action item with module name function
    Set vendor price lists grid settings function
    Sort vendor price lists grid column function
    Get all rows of specific column from vendor price lists grid function
    Drag vendor price lists grid column function
    Get vendor price lists grid column names by order function
    Sort rates grid column function
    Get all rows of specific column from rates grid function
    Drag rates grid column function
    Get rates grid column names by order function
    Sort destinations grid column function
    Get all rows of specific column from destinations grid function
    Drag destinations grid column function
    Get destinations grid column names by order function
    Sort dialed digits grid column function
    Get all rows of specific column from dialed digits grid function
    Drag dialed digits grid column function
    Get dialed digits grid column names by order function
    Set vendor price list detail grid settings function
    Sort vendor price list detail grid column function
    Get all rows of specific column from vendor price list detail grid function
    Drag vendor price list detail grid column function
    Get vendor price list detail grid column names by order function
    Compare digits tab name function
    Set vendor price list detail dial digits grid settings function
    Sort vendor price list detail dial digits grid column function
    Get all rows of specific column from vendor price list detail dial digits grid function
    Drag vendor price list detail dial digits grid column function
    Get vendor price list detail dial digits grid column names by order function
    Set vendor price list detail reference rates grid settings function
    Sort vendor price list detail reference rates grid column function
    Get all rows of specific column from vendor price list detail reference rates grid function
    Drag vendor price list detail reference rates grid column function
    Get vendor price list detail reference rates grid column names by order function
    Click vendor price list detail rates grid export to excel button function
    Click vendor price list detail dial digits grid export to excel button function
    Click vendor price list detail reference rates grid export to excel button function
    Click re analysis grid export to excel button function
    Compare upload failure message function
    Click failed upload info icon function
    Compare failed upload info function
    Select qos tab function
    Compare qos with excel data function
    Is mnp column present function
    Is comments column present function
    Get all rows of rate column from vendor price list detail grid function
    Get all rows of specific column only from vendor price list detail grid function
    Get all rows of rate increase violation column from vendor price list detail grid function
    Is sorting option not available in specific column function
    Is sorting option not available in destination column function
    Is ixtools account present function
    Is vendor price list not displayed in the grid function
    Click guarantee cli checkbox function
    Click exclude rating method from price list checkbox function
    Set price list content function
    Set country for search function
    Is specific tab on vendor profile page present function
    Is specific column on vendor profile grid present function
    Set jobs grid settings function
    Click reference rates show search form link function
    Is view dropdown visible function
    Is status dropdown visible function
    Is discrepancy dropdown visible function
    Is in routing flags dropdown visible function
    Is rate textbox visible function
    Is destination textbox visible function
    Is reference rates grid accept column checkbox function
    Is number plan changes grid header dialed digits mcc mnc function
    Is specific selection criteria filter present function
    Is specific selection column present function
    Is country selection criteria field present in re analysIs page function
    Is country column present in re analysIs page function
    Is country selection criteria field present in vendor profile page function
    Is country column present in vendor profile page function
    Is country selection criteria field present in vendor profile dialed digits page function
    Is country column present in vendor profile dialed digits page function
    Is country selection criteria field present in vendor profile destinations page function
    Is country column present in vendor profile destinations page function
    Click search rate arrow button function
    Is country selection criteria field present in view price lIst details rate page function
    Is country column present in view price lIst details rate page function
    Click search dialed digits arrow button function
    Is country selection criteria field present in view price lIst details dialed digits page function
    Is country column present in view price lIst details dialed digits page function
    Click search ref rates arrow button function
    Is country selection criteria field present in view price lIst ref rates digits page function
    Is country column present in view price lIst details ref rates page function
    Select reference rates tab function
    Is country selection criteria field present in compare price lIst pop up function
    Is country column present in compare price lIst pop up function
    Select mcc mnc tab function
    Click search mcc mnc arrow button function
    Verify status filter function
    Set re analysis status function
    Click buy and sell deal management link function
    Click request new buy and sell deal function
    Is buy and sell deal details screen status dropdown visible function
    Is end date date picker visible function
    Is auto expire checkbox visible function
    Proposed deal summary table column name verification function
    Click request new deal button function
    Set buy and sell deal name function
    Set buy sell deal account function
    Set vendor function
    Set customer function
    Click buy and sell deal create button function
    Get buy and sell deal name function
    Click buy and sell deal save button function
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
    Click bulk edit submit button function
    Click save changes button function
    Set multiple status function
    Click buy and sell deal management grid first row inline action button function
    Is account label displayed correctly function
    Is account manager label displayed correctly function
    Click vendor grid add destination button function
    Set source to add destination function
    Set route class to add destination function
    Set destination to add destination function
    Set deal rate to add destination function
    Set deal volume to add destination function
    Click customer grid add destination button function
    Click request deal button function
    Click add destination save button function
    Compare vendor price list detail rates grid destination function
    Compare vendor price list detail dial digits grid destination function
    Compare vendor price list detail rates grid rate function
    Get reference rates tab analyzed rate function
    Get reference rates tab effective date function
    Is target buy policies tab displayed function
    Select target buy policies tab function
    Is button displayed function
    Is target buy policies grid column present function
    Click target buy policies grid first row inline action button function
    Is inline action item present function
    Click create new target buy policy button function
    Set target buy policy name function
    Get target buy policy function
    Set target buy policy abbreviation function
    Set route class to create new target buy policy function
    Click include cli checkbox function
    Click automate generation checkbox function
    Click save target buy policy button function
    Is target buy details section present in vendor profile page function
    Is specific field on target buy details section present function
    Set target buy distribution link code function
    Set target buy distribution receiving member function
    Set target buy list function
    Set target buy list number plan function
    Click target buy overrides button function
    Is expected dropdown list control visible function
    Is destination input textbox visible function
    Is expected grid column present function
    Select target buy list overrides grid row checkbox function
    Click target buy list overrides bulk edit button function
    Set target buy policy type function
    Get target buy policy grid row details function
    Click edit target buy policy button function
    Click save edited target buy policy button function
    Click cancel edited target buy policy button function
    """
    # Start: Buy page locators
    default_tab_header_locator = (By.XPATH, "//div[@id='BuyTabStrip-1']/descendant::h3")
    buy_dashboard_tab_locator = (By.XPATH, "//div[@id='BuyTabStrip']/descendant::a[text()='Buy Dashboard']")
    vendors_tab_locator = (By.XPATH, "//div[@id='BuyTabStrip']/descendant::li[@aria-controls='BuyTabStrip-2']/descendant::a")
    country_groups_locator = (By.ID, "btnCountryGroups")
    re_analysis_locator = (By.ID, "btnReAnalysis")
    carrier_page = CarrierPage()
    all_row_data = []
    column_name_list = []
    buy_module_name = "buy"
    buy_page_sort_descending_option_locator = (By.XPATH, "//span[text()='Sort Descending']")
    buy_page_sort_ascending_option_locator = (By.XPATH, "//span[text()='Sort Ascending']")
    buy_and_sell_deal_management_locator = (By.ID, "btnDealManagement")
    buy_page_title_locator = (By.XPATH, "//label[@class='page-title' and text()='Buy']")
    destination_column_name = "Destination"
    rate_column_name = "Rate"
    target_buy_policies_tab_locator = (By.XPATH, "//div[@id='BuyTabStrip']/descendant::a[text()='Target Buy Policies']")

    # Start: Buy and Sell Deal Management Page Locators
    request_new_buy_and_sell_deal_locator = (By.ID, "btnRequestNewDeal")
    buy_and_sell_deal_details_screen_status_dropdown_locator = (By.ID, "ddlDDStatus")
    end_date_date_picker_locator = (By.XPATH, "//span[contains(text(), 'End Date')]/../descendant::input[@data-role='datepicker']")
    auto_expire_checkbox_locator = (By.ID, "rdoDDAutoExpireFlag")
    # End: Buy and Sell Deal Management Page Locators

    # Start: Country group page locators
    country_groups_grid_row_count_span_locator = (By.XPATH, "//div[contains(@id, 'divBACountryGroupBar')]/descendant::span")
    country_groups_grid_row_count = 0
    country_groups_grid_div_id = "divCountryGroupGrid"
    country_groups_data_grid_name = "CountryGroupManagementGrid"
    country_group_scope_dropdown_locator = (By.XPATH, "//label[text()='Country Group Scope']/../descendant::input")
    country_dropdown_locator = (By.XPATH, "//label[text()='Country']/../descendant::input")
    # End: Country group page locators

    # Start: Re analysis page locators
    re_analysis_grid_row_count_span_locator = (By.XPATH, "//div[contains(@id, 'divRABar')]/descendant::span")
    re_analysis_grid_div_id = "divRAGrid_"
    re_analysis_grid_inline_action_column_number = 2
    # End: Re analysis page locators

    # Start: Re analysis detail tab locators
    re_analysis_detail_grid_div_id = "divRANumberPlan"
    re_analysis_details_number_plan_changes_grid_dialed_digits_column_locator = (By.XPATH, "//div[contains(@id, 'divRANumberPlan')]/descendant::th[@data-title='Dialed Digits']")
    re_analysis_page_div_id = "divReAnalysisMain_"
    country_label_name = "Country"
    column_name_country = "Country"
    multiselect_status_dropdown_locator = (By.XPATH, "//label[text()='Status']/../descendant::input")
    # End: Re analysis detail tab locators

    # Start: Vendors page locators
    vendor_unique_id = ""
    vendors_div_id = "divCustomers"
    vendors_data_grid_name = "CustomersGrid"
    vendors_grid_div_bar_id = "divBar"
    vendors_grid_row_count_span_locator = (By.XPATH, "//div[contains(@id, 'TabContentCustomer')]/descendant::span")
    grid_column_number = 3
    vendor_column_number = 4
    vendor_locator_string = "//div[@id='divCustomerPriceList']/descendant::span"
    select_grid_row_checkbox_column_number = 1
    vendor_price_list_grid_div_id = "divCustomerPriceList"
    price_list_column_name = "Price List"
    last_price_list_column_name = "Last Price List"
    cost_column_name = "Cost"
    margin_column_name = "Margin"
    create_vendor_locator = (By.ID, "btnCreateCustomer")
    vendor_price_lists_locator = (By.ID, "btnPriceLists")
    vendor_profile_locator = (By.XPATH, "//ul[@id='Actions_listbox']/descendant::li[text()='Vendor Profile']")
    vendor_rates_locator = (By.XPATH, "//ul[@id='Actions_listbox']/descendant::li[text()='Vendor Rates']")
    vendor_digits_locator = (By.XPATH, "//ul[@id='Actions_listbox']/descendant::li[contains(text(), 'Vendor Dial')]")
    vendor_destination_locator = (By.XPATH, "//ul[@id='Actions_listbox']/descendant::li[text()='Vendor Destination']")
    upload_vendor_price_list_locator = (By.XPATH, "//ul[@id='Actions_listbox']/descendant::li[text()='Upload Vendor Price List']")
    vendor_profile_inline_item_locator = (By.XPATH, "//ul[@id='Actions_listbox']/li[text()='Vendor Profile']")
    grid_row_data = {}
    buy_page_excel_data_dictionary = {}
    upload_vendor_price_list_pop_up_locator = (By.ID, "UploadPriceListsWindow_wnd_title")
    export_to_excel_button_locator = (By.ID, "ExportToExcel")
    vendor_profile_page_div_id = "profileRates_"
    vendor_profile_dialed_digits_page_div_id = "profileDialDigits_"
    vendor_profile_destinations_page_div_id = "profileDestinations_"
    # End: Vendors page locators

    # Start: Vendor Profile page locators
    last_modified_value_locator = (By.XPATH, "//label[text()='Last Modified']/../descendant::span")
    vendor_profile_page_tab_locator_string = "//div[@id='BuyTabStrip-3']/descendant::a"
    save_vendor_profile_locator = (By.ID, "btnSave")
    vendor_profile_tab_locator = (By.XPATH, "//a[text()='Vendor Profile']")
    vendors_grid_row_count = 0
    guarantee_cli_checkbox_locator = (By.XPATH, "//label[text()='Guarantee CLI']/../descendant::input[contains(@id, 'rdoYesGuaranteeCli_add')]")
    exclude_rating_method_from_price_list_checkbox_locator = (By.XPATH, "//label[text()='Exclude Rating Method From Price List']/../descendant::input[contains(@id, 'rdoExcludeRatingMethodFromPL_add_')]")
    target_buy_details_section_locator = (By.XPATH, "//strong[text()='Target Buy Details']")
    target_buy_distribution_link_code_textbox_locator = (By.XPATH, "//label[text()='Target Buy Distribution Link Code']/../descendant::input")
    target_buy_distribution_receiving_member_textbox_locator = (By.XPATH, "//label[text()='Target Buy Distribution Receiving Member']/../descendant::input")
    target_buy_list_kendo_dropdown_arrow_locator = (By.XPATH, "//label[text()='Target Buy List']/../descendant::span[@class='k-icon k-i-arrow-s']")
    target_buy_list_number_plan_kendo_dropdown_arrow_locator = (By.XPATH, "//label[text()='Target Buy List Number Plan']/../descendant::span[@class='k-icon k-i-arrow-s']")

    # Start: Rates page locators under Vendor Profile page
    rate_catalog_locator = (By.XPATH, "//label[text()='Rate Catalog']")
    rates_grid_div_id = "divCustomerRates_"
    rate_catalog_kendo_dropdown_locator = (By.XPATH, "//label[text()='Rate Catalog']/../descendant::input")
    begin_date_inputbox_locator = (By.XPATH, "//label[text()='Begin Date']/../descendant::input")
    generic_search_button_locator = (By.XPATH, "//button[contains(text(), 'Search')]")
    rates_tab_locator = (By.XPATH, "//a[text()='Rates']")
    rates_tab_destination_textbox_locator = (By.XPATH, "//input[contains(@id, 'custProfRateDestination')]")
    begin_date_column_name = "Begin Date"
    rates_grid_row_count_span_locator = (By.XPATH, "//div[contains(@id, 'divCPRBar')]/descendant::span")
    last_modified_column_name = "Last Modified"
    rates_grid_row_count = 0
    # End: Rates page locators under Vendor Profile page

    # Start: Dial Digits page locators under Vendor Profile page
    dialed_digits_grid_row_count_span_locator = (By.XPATH, "//div[contains(@id, 'divCPDBar')]/descendant::span")
    dialed_digits_locator = (By.XPATH, "//label[contains(text(), 'Dialed Digit')]")
    dialed_digits_grid_div_id = "divCustomerDialedDigit_"
    dialed_digits_tab_locator = (By.XPATH, "//a[contains(text(), 'Dialed Digit')]")
    modified_date_column_name = "Modified Date"
    dialed_digits_grid_row_count = 0
    mcc_mnc_tab_locator = (By.XPATH, "//a[text()='MCC-MNC']")
    # End: Dial Digits page locators under Vendor Profile page

    # Start: Destinations page locators under Vendor Profile page
    destinations_grid_row_count_span_locator = (By.XPATH, "//div[contains(@id, 'divCPDestBar')]/descendant::span")
    search_destination_locator = (By.XPATH, "//label[text()='Destination']")
    destinations_grid_div_id = "divCustomerProfileDestination_"
    destinations_tab_locator = (By.XPATH, "//a[text()='Destinations']")
    destinations_grid_row_count = 0
    # End: Destinations page locators under Vendor Profile page
    # End: Vendor Profile page locators

    # Start: Create Vendor page locators
    vendor_name_textbox_locator = (By.XPATH, "//label[text()='Vendor Name']/../descendant::input")
    abbreviation_textbox_locator = (By.XPATH, "//label[text()='Abbreviation']/../descendant::input")
    ixtools_account_kendo_dropdown_locator = (By.XPATH, "//label[text()='iXTools Account']/../descendant::input")
    rate_plan_kendo_dropdown_locator = (By.XPATH, "//label[text()='Rate Plan']/../descendant::input")
    call_type_kendo_dropdown_locator = (By.XPATH, "//label[text()='Call Type']/../descendant::input")
    vendor_profile_status_kendo_dropdown_locator = (By.XPATH, "//label[text()='Status']/../descendant::input")
    save_vendor_profile_button_locator = (By.XPATH, "//input[@value='Save Vendor Profile']")
    ok_button_locator = (By.ID, "btnOk")
    confirmation_popup_locator = (By.XPATH, "//p[text()='Data has been saved successfully']")
    has_network_code_checkbox_locator = (By.XPATH, "//input[contains(@id, 'rdoHasNetworkCode_')]")
    ixtools_account_arrow_dropdown_locator = (By.XPATH, "//label[text()='iXTools Account']/../descendant::span[@class='k-icon k-i-arrow-s']")
    # End: Create Vendor page locators

    # Start: Vendor Price Lists page locators
    view_price_list_div_id = "divCustomerPriceList"
    price_list_date_column_name = "Price List Date"
    view_price_list_column_number = 2
    selected_vendor_locator_string = "//label[text()='Vendor']/../descendant::span"
    selected_price_list_locator_string = "//label[text()='Price List']/../descendant::span"
    customer_price_list_grid_div_id = "divCustomerPriceList"
    compare_price_lists_list = []
    status_column_number = 3
    vendors_price_lists_grid_div_bar_id = "divCustomerPriceListBar"
    number_of_rows = 0
    modified_by_user_column_number = 9
    vendor_price_lists_dict = {"Vendor": "", "Price List": "", "Status": ""}
    price_lists_grid_row_count = 0
    price_list_content_dropdown_locator = (By.ID, "vendorOffercontent")

    set_from_date_locator = (By.ID, "OfferDateFrom")
    set_to_date_locator = (By.ID, "OfferDateTo")
    search_button_locator = (By.ID, "searchCustomerPriceList")
    no_data_found_locator = (By.XPATH, "//div[@id='tblCustomerPriceList']/descendant::span[text()='No records found.']")
    view_price_list_detail_locator = (By.XPATH, "//ul[@id='Actions_listbox']/descendant::li[text()='View Price List Detail']")
    analyze_and_complete_locator = (By.XPATH, "//ul[@id='Actions_listbox']/descendant::li[text()='Analyze and Complete']")
    compare_price_lists_button_locator = (By.ID, "btnComparePriceList")
    price_list_column_locator = (By.XPATH, "//div[@id='divSelectedPriceLists']/descendant::th[@data-title='Price List']")
    close_compare_price_list_pop_up_locator = (By.XPATH, "//h4[@class='priceListTitle']/../../../../descendant::span[text()='Close']")
    vendor_price_list_status_kendo_dropdown_locator = (By.XPATH, "//input[@aria-owns='CPLStatus_taglist CPLStatus_listbox']")
    analyze_and_complete_confirmation_popup_locator = (By.XPATH, "//p[text()='Price List analyzed and completed successfully.']")
    browse_button_locator = (By.XPATH, "//input[@id='UPEFile']/..")
    upload_button_locator = (By.XPATH, "//button[text()='Upload']")
    success_message_popup_title = (By.XPATH, "//span[text()='Success']")
    vendor_price_list_upload_colored_status_completed_icon_locator = (By.XPATH, "//span[@class='page-title' and contains(text(), 'Vendor Price Lists')]/../../descendant::div[@class='statusWidget CompletedStatus']")
    vendor_price_list_upload_search_button_locator = (By.ID, "btnSearch")
    vendor_price_list_upload_red_icon_locator = (By.XPATH, "//span[@class='page-title' and text()='Vendor Price Lists ']/../../descendant::div[@class='statusWidget FailedStatus']")
    vendors_kendo_dropdown_locator = (By.XPATH, "//label[contains(text(), 'Vendor')]/../descendant::input")
    vendor_price_list_date_locator = (By.XPATH, "//label[text()='Price List Date']/../descendant::input[@id='vendorOfferDate']")
    upload_cancel_button_locator = (By.XPATH, "//button[@id='UPECancel' and text()='Cancel']")
    price_lists_grid_row_count_span_locator = (By.XPATH, "//div[contains(@id, 'divCustomerPriceListBar')]/descendant::span")
    qos_tab_locator = (By.XPATH, "//a[@class='k-link' and text()='QoS']")
    qos_grid_div_id = "divQoS"
    search_rate_arrow_button_locator = (By.XPATH, "//span[text()='Search Rates']/../descendant::a[text()='Show Search Form']")
    view_price_list_details_rate_page_div_id = "pldRates_"
    search_dialed_digits_arrow_button_locator = (By.XPATH, "//span[contains(text(), 'Search Dialed Digits')]/../descendant::a[text()='Show Search Form']")
    view_price_list_dialed_digits_page_div_id = "pldDialDigits_"
    search_ref_rates_arrow_button_locator = (By.XPATH, "//span[text()='Search Reference Rates']/../descendant::a[text()='Show Search Form']")
    view_price_list_ref_rates_page_div_id = "divVPLDRRMain_"
    compare_price_list_pop_up_div_id = "dvSelectedPriceListsForm"
    search_mcc_mnc_arrow_button_locator = (By.XPATH, "//span[text()='Search MCC-MNC']/../descendant::a[text()='Show Search Form']")
    # End: Vendor Price Lists page locators

    # Start: View Price List Detail page locators
    price_list_kendo_dropdown_locator = (By.XPATH, "//label[text()='Price List']/../descendant::input")
    dial_digits_tab_name = 'Dial Digits'
    dial_digits_tab_locator = (By.XPATH, "//a[text()='%s']" %dial_digits_tab_name)
    vendor_price_list_details_dial_digits_tab_locator = (By.XPATH, "//li[@data-role='dial_digits']/a[@class='k-link']")
    vendor_price_list_details_reference_rates_tab_locator = (By.XPATH, "//a[text()='Reference Rates']")
    search_rates_locator = (By.XPATH, "//span[text()='Search Rates']")
    search_dial_digits_locator = (By.XPATH, "//span[contains(text(), 'Search Dialed Digit')]")
    search_reference_rates_locator = (By.XPATH, "//span[text()='Search Reference Rates']")

    # Start: Rates page locators under View Price List Detail page
    rates_grid_destination_column_locator = (By.XPATH, "//div[@id='divComaprePriceListRate']/descendant::th[@data-title='Destination']")
    rates_grid_rate_column_locator = (By.XPATH, "//div[@data-grid-name='VPLDRatesGrid']/descendant::div[@class='k-grid-content']/descendant::table[@class='vpldrrCellTable']/descendant::td")
    vendor_price_list_detail_rates_grid_div_id = "divRates_"
    vendor_price_list_detail_dial_digits_grid_div_id = "divDialDigits_"
    vendor_price_list_detail_reference_rates_grid_div_id = "divVPLDRRGrid_"
    vendor_price_list_detail_row_locator = (By.XPATH, "//div[contains(@id, 'divRates')]/descendant::div[@class='k-grid-content']/descendant::table/descendant::tbody/tr")
    compare_price_list_rate_grid_div_id = "divComaprePriceListRate"
    # End: Rates page locators under View Price List Detail page

    # Start: Dial Digits page locators under View Price List Detail page
    dialed_digits_grid_destination_column_locator = (By.XPATH, "//div[@id='divComparePriceListDialedDigit']/descendant::th[@data-title='Destination']")
    # End: Dial Digits page locators under View Price List Detail page

    # Start: Reference Rates page locators under View Price List Detail page
    dialed_digits_grid_dialed_digit_column_locator = (By.XPATH, "//div[@id='divComparePriceListDialedDigit']/descendant::th[@data-title='Dialed Digit']")
    reference_rates_show_search_form_link_locator = (By.XPATH, "//div[contains(@id, 'divVPLDRRMain')]/descendant::a[@class='sectionVisibiltyHandler' and text()='Show Search Form']")
    view_dropdown_locator = (By.XPATH, "//label[text()='View']/../descendant::span[@class='k-input']")
    status_dropdown_locator = (By.XPATH, "//label[text()='Status']/../descendant::span[@class='k-input']")
    discrepancy_dropdown_locator = (By.XPATH, "//label[text()='Discrepancy']/../descendant::span[@class='k-input']")
    in_routing_flags_dropdown_locator = (By.XPATH, "//label[text()='In Routing Flags']/../descendant::span[@class='k-input']")
    reference_rates_rate_textbox_locator = (By.XPATH, "//input[contains(@id, 'txtVPLDRRRate')]")
    reference_rates_destination_textbox_locator = (By.XPATH, "//input[contains(@id, 'txtVPLDRRDestination')]")
    accept_column_name = "Accept"
    reference_rates_tab_locator = (By.XPATH, "//a[text()='Reference Rates']")
    reference_rates_tab_analyzed_tab_column_locator = (By.XPATH, "//span[contains(@rr-field-id, 'AnalyzedRate1_')]")
    effective_date_column_name = "Effective Date"
    # End: Reference Rates page locators under View Price List Detail page

    # Start: Jobs page locators
    jobs_grid_count_span_locator = (By.XPATH, "//div[contains(@id, 'divSAJBar')]/span")
    initial_jobs_count = 0
    excluded_destinations_grid_div_id = "ExcludedDestinations"
    error_icon_locator = (By.XPATH, "//span[@class='sajExcludedImg errorIcon']")
    failed_upload_info_icon_locator = (By.XPATH, "//span[@class='sajInfoImg infoIcon']")
    additional_info_grid_div_id = "divSAJAIGrid"
    reg_time_column_name_locator = (By.XPATH, "//th[@data-title='Reg Date/Time']/a[1]")
    sort_descending_option_locator = (By.XPATH, "//div[contains(@class, 'k-column-menu k-popup k-group k-reset k-state-border')]/descendant::span[text()='Filter']/../../li[2]")
    jobs_grid_div_id = "divSAJGrid"
    reset_all_grid_settings = "Reset All"
    # End: Jobs page locators
    # End: View Price List Detail page locators

    # Start: Buy and sell deal page locators
    request_new_deal_button_locator = (By.ID, "btnRequestNewDeal")
    buy_and_sell_deal_textbox_locator = (By.ID, "txtDDDealName")
    buy_sell_deal_account_dropdown_locator = (By.XPATH, "//span[contains(text(), 'Account')]/../descendant::input")
    vendor_dropdown_locator = (By.XPATH, "//span[contains(text(), 'Vendor')]/../descendant::input")
    customer_dropdown_locator = (By.XPATH, "//span[contains(text(), 'Customer')]/../descendant::input")
    start_date_inputbox_locator = (By.XPATH, "//label[text()='Start Date']/../descendant::input")
    buy_and_sell_management_grid_div_id = "DealManagementGrid"
    buy_and_sell_management_grid_count_span_locator = (By.XPATH, "//div[contains(@id, 'divDealManagementBar')]/span")
    buy_and_sell_management_grid_checkbox_column_number = 2
    buy_and_sell_deal_bulk_edit_button_lcoator = (By.ID, "btnBulkEdit")
    bulk_edit_end_date_inputbox_locator = (By.ID, "Edit-EndDate")
    buy_and_sell_management_grid_inline_action_column_number = 3
    bulk_edit_submit_button_locator = (By.ID, "BulkEditSubmit")
    save_changes_button_locator = (By.XPATH, "//a[text()='Save changes']")
    status_kendo_dropdown_locator = (By.XPATH, "//label[contains(text(), 'Status')]/../descendant::input")
    account_manager_label_locator = (By.XPATH, "//input[@id='txtDDAccountManager']/../../span")
    account_label_locator = (By.XPATH, "//input[@id='txtDDAccount']/../../span")
    account_label = "Account:"
    account_manager_label = "Account Manager:"
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
    # End: Buy and sell deal page locators

    # Start: Target buy policy page locators
    target_buy_policies_grid_div_id = "divPricePolicy_"
    target_buy_policy_data_grid_name = "CostPolicyGrid"
    target_buy_policies_grid_inline_action_column_number = "2"
    create_new_target_buy_policy_button_locator = (By.ID, "btnCreateCostPolicy")
    target_buy_policy_input_field_locator = (By.XPATH, "//input[@name='PricePolicy' and @id='PricePolicy']")
    target_buy_policy_abbreviation_input_field_locator = (By.XPATH, "//input[@name='Abbreviation' and @id='Abbreviation']")
    route_class_single_kendo_dropdown_arrow_locator = (By.XPATH, "//label[text()='Route Class']/../descendant::span[@class='k-input']")
    include_cli_checkbox_locator = (By.XPATH, "//input[@name='IncludeCLI' or @id='rdoIncludeCLI']")
    automate_generation_checkbox_locator = (By.XPATH, "//input[@name='AutomateGeneration' or @id='rdoAutomateGeneration']")
    save_target_buy_policy_button_locator = (By.XPATH, "//input[@value='Save Target Buy Policy']")
    target_buy_overrides_button_locator = (By.ID, 'btnPriceOverrides')
    target_buy_policy_type_kendo_dropdown_locator = (By.XPATH, "//label[text()='Target Buy List Type']/../descendant::input")
    edit_target_buy_policy_button_locator = (By.XPATH, "//div[@id='divButtons']/input[@value='Edit Target Buy Policy']")
    save_edited_target_buy_policy_button_locator = (By.XPATH, "//div[@id='divButtons']/input[@value='Save Target Buy Policy']")
    cancel_edited_target_buy_policy_button_locator = (By.XPATH, "//div[@id='divButtons']/input[@value='Cancel']")
    # End: Target buy policy page locators

    # Start: Target buy list overrides page locators
    target_buy_list_overrides_page_header_locator = (By.XPATH, "//h3[text()='Target Buy List Overrides']")
    destination_input_textbox_locator = (By.XPATH, "//label[text()='Destination']/../descendant::input")
    target_buy_list_kendo_dropdown_locator = (By.XPATH, "//span[@id='selCountPolicy_m1']/../descendant::input")
    target_buy_list_overrides_data_grid_name = "PricePoliciesOverridesGrid"
    target_buy_list_overrides_bulk_edit_button_locator = (By.ID, "btnPPOBulkEdit_m1")
    # End: Target buy list overrides page locators

    # End: Buy page locators
    
    def switch_to_buy(self):
        """
        Implementing switch to buy functionality
        :return:
        """
        self.switch_to_window()
        self.accept_ssl_certificate()

    def get_buy_page_title(self):
        """
        Implementing get buy page title functionality
        :return: buy page title
        """
        self.wait().until(EC.visibility_of_element_located(self.default_tab_header_locator), 'default tab header not found before specified time')
        return self.page_title()

    def is_buy_dashboard_tab_present(self):
        """
        Implementing is buy dashboard tab present functionality
        :return: True/False
        """
        return self.is_element_present(self.buy_dashboard_tab_locator)

    def is_vendors_tab_present(self):
        """
        Implementing is vendors tab present functionality
        :return: True/False
        """
        return self.is_element_present(self.vendors_tab_locator)

    def is_country_groups_link_present(self):
        """
        Implementing is country groups link present functionality
        :return: True/False
        """
        return self.is_element_present(self.country_groups_locator)

    def is_re_analysis_link_present(self):
        """
        Implementing is re-analysis link present functionality
        :return: True/False
        """
        return self.is_element_present(self.re_analysis_locator)

    def select_vendors_tab(self):
        """
        Implementing select vendors tab functionality
        :return:
        """
        self.select_static_tab(self.vendors_tab_locator, 'vendors tab not found before specified time')

    def is_create_vendor_present(self):
        """
        Implementing is create vendor present functionality
        :return: True/False
        """
        return self.is_element_present(self.create_vendor_locator)

    def is_vendor_price_lists_present(self):
        """
        Implementing is vendor price lists present functionality
        :return: True/False
        """
        return self.is_element_present(self.vendor_price_lists_locator)

    def click_buy_page_inline_action_button(self, vendor):
        """
        Implementing click buy page inline action button functionality
        :param vendor: vendor name
        :return:
        """
        self.click_inline_action_button(self.vendors_div_id, vendor, self.grid_column_number)

    def is_vendor_profile_present(self):
        """
        Implementing is vendor profile present functionality
        :return: True/False
        """
        return self.is_element_present(self.vendor_profile_locator)

    def is_vendor_rates_present(self):
        """
        Implementing is vendor rates present functionality
        :return: True/False
        """
        return self.is_element_present(self.vendor_rates_locator)

    def is_vendor_digits_present(self):
        """
        Implementing is vendor digits present functionality
        :return: True/False
        """
        return self.is_element_present(self.vendor_digits_locator)

    def is_vendor_destination_present(self):
        """
        Implementing is vendor destination present functionality
        :return: True/False
        """
        return self.is_element_present(self.vendor_destination_locator)

    def is_upload_vendor_price_list_present(self):
        """
        Implementing is upload vendor price list present functionality
        :return: True/False
        """
        return self.is_element_present(self.upload_vendor_price_list_locator)

    def is_inline_action_popup_loaded_properly(self):
        """
        Implementing is inline action popup loaded properly functionality
        :return: True/False
        """
        return self.is_element_present(self.vendor_profile_inline_item_locator)

    def click_on_tab_of_vendor_profile_page(self, tab_name):
        """
        Implementing click on tab of vendor profile page functionality
        :param tab_name: tab name
        :return:
        """
        vendor_profile_page_tab_locator = (By.XPATH, self.vendor_profile_page_tab_locator_string + "[text()='%s']" % tab_name)
        self.select_static_tab(vendor_profile_page_tab_locator, 'tab locator not found')

    def is_vendor_profile_page_loaded_properly(self):
        """
        Implementing is vendor profile page loaded properly functionality
        :return: True/False
        """
        return self.is_element_present(self.save_vendor_profile_locator)

    def is_rates_page_loaded_properly(self):
        """
        Implementing is rates page loaded properly functionality
        :return: True/False
        """
        return self.is_element_present(self.rate_catalog_locator)

    def is_dial_digits_page_loaded_properly(self):
        """
        Implementing is dial digits page loaded properly functionality
        :return: True/False
        """
        return self.is_element_present(self.dialed_digits_locator)

    def is_destinations_page_loaded_properly(self):
        """
        Implementing is destinations page loaded properly functionality
        :return: True/False
        """
        return self.is_element_present(self.search_destination_locator)

    def click_on_vendor_price_lists(self):
        """
        Implementing click on vendor price lists functionality
        :return:
        """
        vendor_price_lists_element = self.wait().until(EC.element_to_be_clickable(self.vendor_price_lists_locator), 'vendor price lists locator not found before specified time')
        self.script_executor_click(vendor_price_lists_element)
        self.wait_for_ajax_spinner_load()

    def set_from_date(self, date):
        """
        Implementing set from date functionality
        :param date: From date
        :return:
        """
        self.set_value_into_input_field(self.set_from_date_locator, date)

    def set_to_date(self):
        """
        Implementing set to date functionality
        :return:
        """
        self.set_value_into_input_field(self.set_to_date_locator, self.get_current_date())

    def click_vendor_price_lists_search_button(self):
        """
        Implementing click vendor price lists search button functionality
        :return:
        """
        search_button_element = self.wait().until(EC.element_to_be_clickable(self.search_button_locator), 'search button not found before specified time')
        self.script_executor_click(search_button_element)
        self.wait_for_ajax_spinner_load(300)

    def verify_price_list_item(self, price_list_item):
        """
        Implementing verify price list item functionality
        :param price_list_item:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.price_list_kendo_dropdown_locator, price_list_item)

    def click_view_price_list_detail_page_inline_action_button(self, price_list_item):
        """
        Implementing click view price list detail page inline action button functionality
        :param price_list_item:
        :return:
        """
        self.click_inline_action_button(self.view_price_list_div_id, price_list_item, self.view_price_list_column_number)
        self.wait_for_ajax_spinner_load()

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

    def click_create_vendor_button(self):
        """
        Implementing click create vendor button functionality
        :return:
        """
        create_vendor_element = self.wait().until(EC.element_to_be_clickable(self.create_vendor_locator), "create vendor locator not found before specified time out")
        create_vendor_element.click()
        self.wait_for_ajax_spinner_load()

    def set_vendor_name(self, vendor_name_prefix):
        """
        Implementing set vendor name functionality
        :param vendor_name_prefix:
        :return: vendor_name
        """
        global vendor_name
        self.vendor_unique_id = self.random_string_generator(6)
        vendor_name = vendor_name_prefix + self.vendor_unique_id
        self.set_value_into_input_field(self.vendor_name_textbox_locator, vendor_name)
        return vendor_name

    def set_abbreviation(self, abbreviation_name_prefix):
        """
        Implementing set abbreviation functionality
        :param abbreviation_name_prefix:
        :return: abbreviation_name
        """
        abbreviation_name = abbreviation_name_prefix + self.vendor_unique_id
        self.set_value_into_input_field(self.abbreviation_textbox_locator, abbreviation_name)
        self.wait_for_ajax_spinner_load()
        return abbreviation_name

    def set_ixtools_account(self, item_name):
        """
        Implementing set ixtools account functionality
        :param item_name:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.ixtools_account_kendo_dropdown_locator, item_name)
        self.wait_for_ajax_spinner_load()

    def set_rate_plan(self, item_name):
        """
        Implementing set rate plan functionality
        :param item_name:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.rate_plan_kendo_dropdown_locator, item_name)

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

    def set_vendor_profile_status(self, item_name):
        """
        Implementing set vendor profile status functionality
        :param item_name:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.vendor_profile_status_kendo_dropdown_locator, item_name)
        self.wait_for_ajax_spinner_load()

    def click_save_vendor_profile_button(self):
        """
        Implementing click save vendor profile button functionality
        :return:
        """
        save_vendor_profile_button_element = self.wait().until(EC.element_to_be_clickable(self.save_vendor_profile_button_locator), "save vendor profile button locator not found before spcified time out")
        save_vendor_profile_button_element.click()
        self.wait_for_ajax_spinner_load()
        try:
            self.wait().until(EC.presence_of_element_located(self.confirmation_popup_locator), 'confirmation popup locator not found before specified time')
            ok_button_element = self.wait().until(EC.element_to_be_clickable(self.ok_button_locator), 'ok button locator not found before specified time')
            ok_button_element.click()
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def get_first_row_item_from_price_lists_grid(self, column_name):
        """
        Implementing get first row item from price lists grid functionality
        :return: row item
        """
        column_locator = (By.XPATH, "//div[@id='%s']/descendant::th[@data-title='%s']" % (self.vendor_price_list_grid_div_id, column_name))
        column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) + 1
        column_value_locator = (By.XPATH, "//div[@id='%s']/descendant::tbody/descendant::tr[1]/td[%s]/span" % (self.vendor_price_list_grid_div_id, str(column_index)))
        column_value_element = self.wait().until(EC.presence_of_element_located(column_value_locator), 'column value locator not found before specified time out')
        return column_value_element.text

    def is_view_price_list_detail_present(self):
        """
        Implementing is view price list detail present functionality
        :return: True/False
        """
        return self.is_element_present(self.view_price_list_detail_locator)

    def is_analyze_and_complete_present(self):
        """
        Implementing is analyze and complete present functionality
        :return: True/False
        """
        return self.is_element_present(self.analyze_and_complete_locator)

    def verify_selected_vendor(self, vendor_name):
        """
        Implementing verify selected vendor functionality
        :param vendor_name:
        :return: True/False
        """
        is_present = None
        vendor_locator = (By.XPATH, self.selected_vendor_locator_string + "[text()='%s']" % vendor_name)
        try:
            self.wait().until(EC.presence_of_element_located(vendor_locator))
            is_present = True
        except:
            is_present = False
        finally:
            return is_present

    def verify_selected_price_list(self, price_list_item):
        """
        Implementing verify selected price list functionality
        :param price_list_item:
        :return: True/False
        """
        is_present = None
        price_list_locator = (By.XPATH, self.selected_price_list_locator_string + "[text()='%s']" % price_list_item)
        try:
            self.wait().until(EC.presence_of_element_located(price_list_locator))
            is_present = True
        except:
            is_present = False
        finally:
            return is_present

    def select_tab_of_view_price_list_detail_page(self, tab_name):
        """
        Implementing select tab of view price list detail page functionality
        :param tab_name:
        :return:
        """
        self.wait_for_ajax_spinner_load(300)
        view_price_list_detail_page_tab_locator = (By.XPATH, self.vendor_profile_page_tab_locator_string + "[text()='%s']" % tab_name)
        self.select_static_tab(view_price_list_detail_page_tab_locator, 'tab locator not found')

    def is_rates_tab_loaded_properly(self):
        """
        Implementing is rates tab loaded properly functionality
        :return: True/False
        """
        return self.is_element_present(self.search_rates_locator)

    def is_dial_digits_tab_loaded_properly(self):
        """
        Implementing is dial digits tab loaded properly functionality
        :return: True/False
        """
        return self.is_element_present(self.search_dial_digits_locator)

    def is_reference_rates_tab_loaded_properly(self):
        """
        Implementing is reference rates tab loaded properly functionality
        :return: True/False
        """
        return self.is_element_present(self.search_reference_rates_locator)

    def select_vendor_price_list_grid_row_checkbox(self):
        """
        Implementing select vendor price list grid row checkbox functionality
        :return:
        """
        for row in range(0,2):
            column_locator = (By.XPATH, "//div[@id='%s']/descendant::th[@data-title='%s']" % (self.vendor_price_list_grid_div_id, self.price_list_column_name))
            column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
            column_index = int(column_element.get_attribute("data-index")) + 1
            column_value_locator = (By.XPATH, "//div[@id='%s']/descendant::tbody/descendant::tr[%s]/td[%s]/span" % (self.vendor_price_list_grid_div_id, (row + 1), str(column_index)))
            column_value_element = self.wait().until(EC.presence_of_element_located(column_value_locator), 'column value locator not found before specified time out')
            price_list_item = column_value_element.text
            self.compare_price_lists_list.append(price_list_item)
            self.select_grid_row_checkbox(self.customer_price_list_grid_div_id, price_list_item, self.select_grid_row_checkbox_column_number)

    def click_compare_price_lists_button(self):
        """
        Implementing click compare price lists button functionality
        :return:
        """
        self.click_element(self.compare_price_lists_button_locator, True)

    def verify_selected_price_lists_details(self):
        """
        Implementing verify selected price lists details functionality
        :return: True/False
        """
        status = True
        row_data_length = len(self.compare_price_lists_list)
        for i in range(row_data_length):
            price_list_locator = (By.XPATH, "//div[@id='divSelectedPriceLists']/descendant::span[text()='%s']" % (str(self.compare_price_lists_list[i])))
            price_list_present = self.is_element_present(price_list_locator)
            if price_list_present is not True:
                status = False
                break
        return status

    def verify_rates_grid_columns(self):
        """
        Implementing verify rates grid columns functionality
        :return: True/False
        """
        is_verified = True
        if(self.is_element_present(self.rates_grid_destination_column_locator) == False):
            is_verified = False
        if (is_verified != False):
            for column_name in self.compare_price_lists_list:
                rates_grid_new_column_locator = (By.XPATH, "//div[@id='divComaprePriceListRate']/descendant::span[contains(text(),'%s')]" % column_name)
                if (self.is_element_present(rates_grid_new_column_locator) == False):
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
        if(self.is_element_present(self.dialed_digits_grid_destination_column_locator) == False or self.is_element_present(self.dialed_digits_grid_dialed_digit_column_locator) == False):
            is_verified = False
        if (is_verified != False):
            for column_name in self.compare_price_lists_list:
                dialed_digits_grid_new_column_locator = (By.XPATH, "//div[@id='divComparePriceListDialedDigit']/descendant::span[contains(text(),'%s')]" % column_name)
                if (self.is_element_present(dialed_digits_grid_new_column_locator) == False):
                    is_verified = False
                    break
        return is_verified

    def close_compare_price_lists_pop_up(self):
        """
        Implementing close compare price lists pop up functionality
        :return:
        """
        close_compare_price_list_pop_up_element = self.wait().until(EC.element_to_be_clickable(self.close_compare_price_list_pop_up_locator), 'close compare price list pop up locator not found before specified time')
        close_compare_price_list_pop_up_element.click()

    def set_vendor_price_list_status(self, status_items):
        """
        Implementing set vendor price list status functionality
        :param status_items:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.vendor_price_list_status_kendo_dropdown_locator, status_items)
        self.wait_for_ajax_spinner_load()

    def click_on_analyze_and_complete_inline_action(self, inline_item):
        """
        Implementing click on analyze and complete inline action functionality
        :param inline_item:
        :return:
        """
        self.select_inline_action_item(inline_item)
        self.wait_for_ajax_spinner_load(300)
        try:
            self.wait().until(EC.presence_of_element_located(self.analyze_and_complete_confirmation_popup_locator), 'analyze and complete confirmation popup locator not found before specified time out')
            self.wait_for_ajax_spinner_load()
            ok_button_element = self.wait().until(EC.element_to_be_clickable(self.ok_button_locator), 'ok button locator not found before specified time')
            ok_button_element.click()
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def verify_grid_row_data(self, row_data):
        """
        Implementing verify grid row data functionality
        :param row_data:
        :return: True/False
        """
        return self.verify_grid_row_details(self.vendors_div_id, row_data)

    def click_on_browse_button(self):
        """
        Implementing click on browse button functionality
        :return:
        """
        self.kill_all_opened_file_browsing_dialogs()
        browse_button_element = self.wait().until(EC.element_to_be_clickable(self.browse_button_locator), 'browse button not found before specified time')
        browse_button_element.click()
        self.wait_for_ajax_spinner_load()

    def click_on_upload_button(self):
        """
        Implementing click on upload button functionality
        :return:
        """
        upload_button_element = self.wait().until(EC.visibility_of_element_located(self.upload_button_locator), 'upload button not found before specified time')
        upload_button_element.click()
        self.wait_for_ajax_spinner_load()
        try:
            self.wait().until(EC.visibility_of_element_located(self.success_message_popup_title), 'success popup message not found before specified time')
            ok_button_element = self.wait().until(EC.element_to_be_clickable(self.ok_button_locator), 'ok button locator not found before specified time')
            ok_button_element.click()
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def click_on_vendor_price_list_upload_colored_icon(self):
        """
        Implementing click on vendor price list upload colored icon functionality
        :return:
        """
        vendor_price_list_upload_colored_icon_element = self.wait().until(EC.visibility_of_element_located(self.vendor_price_list_upload_colored_status_completed_icon_locator), 'vendor price list upload colored icon locator not found before specified time')
        vendor_price_list_upload_colored_icon_element.click()
        self.wait_for_ajax_spinner_load()

    def click_on_vendor_price_list_upload_search_button(self):
        """
        Implementing click on vendor price list upload search button functionality
        :return:
        """
        vendor_price_list_upload_search_button_element = self.wait().until(EC.element_to_be_clickable(self.vendor_price_list_upload_search_button_locator), 'vendor price list upload search button locator not found before specified time')
        vendor_price_list_upload_search_button_element.click()
        self.wait_for_ajax_spinner_load()

    def set_from_date_as_current_date(self):
        """
        Implementing set from date as current date functionality
        :return:
        """
        self.set_value_into_input_field(self.set_from_date_locator, self.get_current_date())

    def price_list_modified_by_user(self, vendor_name, user_name):
        """
        Implementing price list modified by user functionality
        :param vendor_name:
        :param user_name:
        :return: True/False
        """
        modified_by_user_locator = (By.XPATH, self.vendor_locator_string + "[text()='%s']/../../td[%s]/span" % (vendor_name, str(self.modified_by_user_column_number)))
        modified_by_user_element = self.wait().until(EC.presence_of_element_located(modified_by_user_locator), 'modified by user locator not found before specified time')
        modified_by_user =  modified_by_user_element.text
        if(modified_by_user == user_name):
            return True
        else:
            return False

    def price_list_status_is_pending(self, vendor_name):
        """
        Implementing price list status is pending functionality
        :param vendor_name:
        :return: True/False
        """
        price_list_status_locator = (By.XPATH, self.vendor_locator_string + "[text()='%s']/../../td[%s]/span" % (vendor_name, str(self.status_column_number)))
        price_list_status_element = self.wait().until(EC.presence_of_element_located(price_list_status_locator), 'price list status locator not found before specified time')
        price_list_status = price_list_status_element.text
        if(price_list_status == "Pending"):
            return True
        else:
            return False

    def get_vendor_price_lists_number_of_rows_from_grid(self):
        """
        Implementing get vendor price lists number of rows from grid functionality
        :return:
        """
        self.number_of_rows =  int(self.get_number_of_rows_from_grid(self.vendors_price_lists_grid_div_bar_id))

    def compare_vendor_price_lists_number_of_rows_from_grid(self):
        """
        Implementing compare vendor price lists grid number of rows functionality
        :return: True/False
        """
        is_matched = False
        timeout = 900
        try:
            self.set_from_date(str(self.get_current_date()))
            end_time = time.time() + timeout
            while (time.time() < end_time):
                self.wait(5)
                self.click_vendor_price_lists_search_button()
                self.wait_for_ajax_spinner_load()
                current_number_of_rows = int(self.get_number_of_rows_from_grid(self.vendors_price_lists_grid_div_bar_id))
                if (current_number_of_rows == (self.number_of_rows + 1)):
                    is_matched = True
                    break
        except:
            raise
        return is_matched

    def verify_vendor_price_lists_details(self, row_data):
        """
        Implementing verify vendor price list details functionality
        :param row_data:
        :return: True/False
        """
        return self.verify_grid_row_details(self.customer_price_list_grid_div_id, row_data)

    def get_vendor_price_lists_details(self):
        """
        Implementing get vendor price list details functionality
        :return: True/False
        """
        try:
            self.vendor_price_lists_dict = self.get_grid_row_details(self.customer_price_list_grid_div_id, self.vendor_price_lists_dict)
            return True
        except:
            return False

    def verify_vendor_price_lists_details_on_database(self, server, database, user, password):
        """
        Implementing verify vendor price list details on database functionality
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
                    SELECT src.Source, ofr.Offer, sts.Status
                    FROM iXTrade_Main.dbo.tbSourceVendor AS src
                    INNER JOIN iXTrade_Main.dbo.tbOffer AS ofr ON (ofr.SourceID = src.SourceID)
                    INNER JOIN iXAdmin_Main.dbo.tbStatus AS sts ON (sts.StatusID = ofr.StatusID)
                    WHERE ofr.Offer=?
                    """)
            cursor = Database.get_cursor(sql, [self.vendor_price_lists_dict["Price List"]])
            row = cursor.fetchone()
            vendor_price_lists_detail_from_database = {"Vendor": "", "Price List": "", "Status": ""}
            while row:
                vendor_price_lists_detail_from_database["Vendor"] = row.Source
                vendor_price_lists_detail_from_database["Price List"] = str(row.Offer)
                vendor_price_lists_detail_from_database["Status"] = str(row.Status)
                row = cursor.fetchone()
            for key in self.vendor_price_lists_dict.keys():
                if(self.vendor_price_lists_dict[key] != vendor_price_lists_detail_from_database[key]):
                    status = False
                    break
            cursor.close()
        except:
            raise
        finally:
            Database.close()
            return status

    def click_view_price_list_detail_first_row_inline_action_button(self):
        """
        Implementing click view price list detail page inline action button functionality
        :return:
        """
        self.click_inline_action_button(self.view_price_list_div_id, None, self.view_price_list_column_number, True)
        self.wait_for_ajax_spinner_load()

    def get_vendor_profile_page_grid_row_details(self, div_id, row_data):
        """
        Implementing get vendor profile page grid row details functionality
        :param div_id:
        :param row_data:
        :return: row_data
        """
        for key in row_data.keys():
            column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::th[@data-title='%s']" % (div_id, str(key)))
            column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
            column_index = int(column_element.get_attribute("data-index"))+1
            column_value_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::div[@class='k-grid-content']/descendant::tr/td[%s]" % (div_id, str(column_index)))
            column_value_element = self.wait().until(EC.presence_of_element_located(column_value_locator), 'column value not found before specified time out')
            column_value = column_value_element.text
            row_data[key] = str(column_value)
        return row_data

    def check_has_network_code_checkbox(self):
        """
        Implementing check has network code checkbox functionality
        :return:
        """
        self.click_element(self.has_network_code_checkbox_locator)

    def compare_dialed_digit_with_excel_data(self):
        """
        Implementing compare dialed digit with excel data functionality
        :return: True/False
        """
        self.buy_page_excel_data_dictionary = self.get_excel_data_dictionary()
        is_compared = False
        self.grid_row_data.clear()
        self.grid_row_data.update({"Dialed Digit": "", "Begin Date": ""})
        dialed_digit_grid_row_data = self.get_vendor_profile_page_grid_row_details(self.dialed_digits_grid_div_id, self.grid_row_data)
        if self.buy_page_excel_data_dictionary["Digits"] == dialed_digit_grid_row_data["Dialed Digit"] and self.buy_page_excel_data_dictionary["EffectiveDate"] == dialed_digit_grid_row_data["Begin Date"]:
            is_compared = True
        return is_compared

    def compare_rates_with_excel_data(self):
        """
        Implementing compare rates with excel data functionality
        :return: True/False
        """
        is_compared = True
        self.grid_row_data.clear()
        self.grid_row_data.update({"Rate1": "", "Rate2": "", "Rate3": "", "Begin Date": "", "Rating Method": ""})
        self.buy_page_excel_data_dictionary["Rating Method"] = self.buy_page_excel_data_dictionary["RatingMethod"]
        self.buy_page_excel_data_dictionary["Begin Date"] = self.buy_page_excel_data_dictionary["EffectiveDate"]
        rates_grid_row_data = self.get_vendor_profile_page_grid_row_details(self.rates_grid_div_id, self.grid_row_data)
        for key in rates_grid_row_data:
            if rates_grid_row_data[key] != self.buy_page_excel_data_dictionary[key]:
                is_compared = False
                break
        return is_compared

    def compare_destination_with_excel_data(self):
        """
        Implementing compare destination with excel data functionality
        :return: True/False
        """
        is_compared = False
        self.grid_row_data.clear()
        self.grid_row_data.update({"Destination": "", "Begin Date": ""})
        destination_grid_row_data = self.get_vendor_profile_page_grid_row_details(self.destinations_grid_div_id, self.grid_row_data)
        if self.buy_page_excel_data_dictionary["Destination"] == destination_grid_row_data["Destination"] and self.buy_page_excel_data_dictionary["EffectiveDate"] == destination_grid_row_data["Begin Date"]:
            is_compared = True
        return is_compared

    def set_rate_catalog(self, rate_catalog):
        """
        Implementing set rate catalog functionality
        :param rate_catalog:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.rate_catalog_kendo_dropdown_locator, rate_catalog)

    def set_begin_date(self, begin_date):
        """
        Implementing set begin date functionality
        :param begin_date:
        :return:
        """
        self.set_value_into_input_field(self.begin_date_inputbox_locator, begin_date)

    def click_search_button(self):
        """
        Implementing click search button functionality
        :return:
        """
        self.click_element(self.generic_search_button_locator)

    def click_vendor_price_list_upload_failed_red_icon(self):
        """
        Implementing click vendor price list upload failed red icon functionality
        :return:
        """
        self.click_element(self.vendor_price_list_upload_red_icon_locator)

    def get_jobs_grid_row_count(self):
        """
        Implementing get jobs grid row count functionality
        :return: jobs grid row count
        """
        jobs_grid_count_span_element = self.wait().until(EC.presence_of_element_located(self.jobs_grid_count_span_locator))
        span_text = jobs_grid_count_span_element.text
        split_text = span_text.split()
        return split_text[2]

    def get_jobs_grid_initial_row_count(self):
        """
        Implementing get jobs grid initial row count functionality
        :return:
        """
        self.initial_jobs_count = int(self.get_jobs_grid_row_count())

    def compare_jobs_grid_number_of_rows(self):
        """
        Implementing compare jobs grid number of rows functionality
        :return: True/False
        """
        is_matched = False
        timeout = 900
        try:
            end_time = time.time() + timeout
            while time.time() < end_time:
                self.wait(5)
                self.click_search_button()
                self.wait_for_ajax_spinner_load()
                current_number_of_rows = int(self.get_jobs_grid_row_count())
                if current_number_of_rows == (self.initial_jobs_count + 1):
                    self.initial_jobs_count = current_number_of_rows
                    is_matched = True
                    break
        except:
            raise
        return is_matched

    def sort_reg_time_column_in_descending_order(self):
        """
        Implementing sort reg time column in descending order functionality
        :return:
        """
        self.set_jobs_grid_settings(self.reset_all_grid_settings)
        try:
            ok_button_element = self.wait(10).until(EC.presence_of_element_located(self.ok_button_locator), 'ok button locator not found before specified time out')
            ok_button_element.click()
        except:
            pass
        column_name_element = self.wait().until(EC.presence_of_element_located(self.reg_time_column_name_locator), 'reg time column name locator not found before specified time out')
        self.hover(column_name_element)
        self.script_executor_click(column_name_element)
        self.click_element(self.sort_descending_option_locator)

    def click_error_icon(self):
        """
        Implementing click error icon functionality
        :return:
        """
        self.click_element(self.error_icon_locator)

    def is_non_numeric_dd_invalid_message_shown(self):
        """
        Implementing is non numeric dd invalid message shown functionality
        :return:
        """
        is_shown = False
        self.grid_row_data.clear()
        self.grid_row_data.update({"Description": ""})
        excluded_destinations_grid_row_data = self.get_grid_row_details(self.excluded_destinations_grid_div_id, self.grid_row_data)
        if "non-numeric dd" in excluded_destinations_grid_row_data["Description"].lower():
            is_shown = True
        return is_shown

    def is_has_network_code_unchecked(self):
        """
        Implementing is has network code unchecked functionality
        :return:
        """
        is_unchecked = True
        has_network_code_checkbox_element = self.wait().until(EC.element_to_be_clickable(self.has_network_code_checkbox_locator), 'has network code checkbox locator not found before specified time out')
        try:
            checked = has_network_code_checkbox_element.get_attribute("checked")
            if checked == "checked":
                is_unchecked = False
        except:
            pass
        return is_unchecked

    def click_vendors_grid_first_row_inline_action_button(self):
        """
        Implementing click vendors grid first row inline action button functionality
        :return:
        """
        self.click_inline_action_button(self.vendors_div_id, None, self.grid_column_number, True)

    def is_upload_vendor_price_list_pop_up_available(self):
        """
        Implementing is upload vendor price list pop up available functionality
        :return: True/False
        """
        return self.is_element_present(self.upload_vendor_price_list_pop_up_locator)

    def click_vendor_price_list_grid_first_row_inline_action_button(self):
        """
        Implementing click vendor price list grid first row inline action button functionality
        :return:
        """
        self.click_inline_action_button(self.vendor_price_list_grid_div_id, None, self.view_price_list_column_number, True)

    def click_export_to_excel_button(self):
        """
        Implementing click export to excel button functionality
        :return:
        """
        self.click_element(self.export_to_excel_button_locator, True)

    def get_last_price_list_from_vendors_grid(self):
        """
        Implementing get last price list from vendor grid functionality
        :return: last price list column value
        """
        return self.get_specific_column_value_from_grid(self.vendors_div_id, self.vendors_grid_row_count, self.last_price_list_column_name, self.vendors_data_grid_name)

    def get_vendors_grid_cost_currency_format(self):
        """
        Implementing validate vendors grid cost currency format functionality
        :return: True/False
        """
        self.vendors_grid_row_count = self.get_grid_row_count(self.vendors_grid_row_count_span_locator, 5)
        return self.get_specific_column_value_from_grid(self.vendors_div_id, self.vendors_grid_row_count, self.cost_column_name, self.vendors_data_grid_name)

    def get_created_vendor_name(self):
        """
        Implementing get created vendor name functionality
        :return: vendor_name
        """
        global vendor_name
        return vendor_name

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

    def set_vendors(self, vendors_list):
        """
        Implementing set vendors functionality
        :param vendors_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.vendors_kendo_dropdown_locator, vendors_list)
        self.wait_for_ajax_spinner_load()

    def get_vendors_grid_margin_column_value(self):
        """
        Implementing get vendors grid margin column value functionality
        :return: margin column value
        """
        return self.get_specific_column_value_from_grid(self.vendors_div_id, self.vendors_grid_row_count, self.margin_column_name, self.vendors_data_grid_name)

    def get_last_modified_value(self):
        """
        Implementing get last modified value
        :return: last modified time stamp
        """
        return self.get_text_from_element(self.last_modified_value_locator)

    def select_rates_tab(self):
        """
        Implementing select rates tab functionality
        :return:
        """
        self.select_static_tab(self.rates_tab_locator, True)

    def get_begin_date(self):
        """
        Implementing get begin date functionality
        :return:
        """
        return self.get_text_from_element(self.begin_date_inputbox_locator, is_a_input_field=True)

    def get_rates_grid_begin_date(self):
        """
        Implementing get rates grid begin date functionality
        :return: rates grid begin date
        """
        self.rates_grid_row_count = int(self.get_grid_row_count(self.rates_grid_row_count_span_locator, 1))
        return self.get_specific_column_value_from_grid(self.rates_grid_div_id, self.rates_grid_row_count, self.begin_date_column_name)

    def get_rates_grid_last_modified_date(self):
        """
        Implementing get rates grid last modified date functionality
        :return: rates grid last modified date
        """
        return self.get_specific_column_value_from_grid(self.rates_grid_div_id, self.rates_grid_row_count, self.last_modified_column_name)

    def select_dialed_digits_tab(self):
        """
        Implementing select dialed digits tab functionality
        :return:
        """
        self.select_static_tab(self.dialed_digits_tab_locator, True)

    def get_dialed_digits_grid_begin_date(self):
        """
        Implementing get dialed digits grid begin date functionality
        :return: dialed digits grid begin date
        """
        self.dialed_digits_grid_row_count = int(self.get_grid_row_count(self.dialed_digits_grid_row_count_span_locator, 1))
        return self.get_specific_column_value_from_grid(self.dialed_digits_grid_div_id, self.dialed_digits_grid_row_count, self.begin_date_column_name)

    def get_dialed_digits_grid_last_modified_date(self):
        """
        Implementing get dialed digits grid last modified date functionality
        :return: dialed digits grid last modified date
        """
        return self.get_specific_column_value_from_grid(self.dialed_digits_grid_div_id, self.dialed_digits_grid_row_count, self.modified_date_column_name)


    def select_destinations_tab(self):
        """
        Implementing select destinations tab functionality
        :return:
        """
        self.select_static_tab(self.destinations_tab_locator, True)

    def get_destinations_grid_begin_date(self):
        """
        Implementing get destinations digits grid begin date functionality
        :return: destinations grid begin date
        """
        self.destinations_grid_row_count = int(self.get_grid_row_count(self.destinations_grid_row_count_span_locator, 1))
        return self.get_specific_column_value_from_grid(self.destinations_grid_div_id, self.destinations_grid_row_count, self.begin_date_column_name)

    def get_destinations_grid_last_modified_date(self):
        """
        Implementing get destinations grid last modified date functionality
        :return: destinations grid last modified date
        """
        return self.get_specific_column_value_from_grid(self.destinations_grid_div_id, self.destinations_grid_row_count, self.last_modified_column_name)

    def get_vendor_price_list_date(self):
        """
        Implementing get vendor price list date functionality
        :return: vendor price list date
        """
        return self.get_text_from_element(self.vendor_price_list_date_locator, is_a_input_field=True)

    def click_upload_cancel_button(self):
        """
        Implement click upload cancel button functionality
        :return:
        """
        self.click_element(self.upload_cancel_button_locator, script_executor=True)

    def get_vendor_price_lists_from_date_value(self):
        """
        Implementing get vendor price lists from date value
        :return: vendor price lists from date
        """
        return self.get_text_from_element(self.set_from_date_locator, is_a_input_field=True)

    def get_vendor_price_lists_to_date_value(self):
        """
        Implementing get vendor price lists to date value
        :return: vendor price lists to date
        """
        return self.get_text_from_element(self.set_to_date_locator, is_a_input_field=True)

    def get_price_list_date_column_value(self):
        """
        Implementing get price list date column value functionality
        :return: price list date column value
        """
        self.price_lists_grid_row_count = int(self.get_grid_row_count(self.price_lists_grid_row_count_span_locator, 7))
        return self.get_specific_column_value_from_grid(self.vendor_price_list_grid_div_id, self.price_lists_grid_row_count, self.price_list_date_column_name)

    def get_price_list_modified_date_column_value(self):
        """
        Implementing get price list modified date column value functionality
        :return: price list modified date column value
        """
        return self.get_specific_column_value_from_grid(self.vendor_price_list_grid_div_id, self.price_lists_grid_row_count, self.modified_date_column_name)

    def select_buy_dashboard_tab(self):
        """
        Implementing select buy dashboard tab functionality
        :return:
        """
        self.select_static_tab(self.buy_dashboard_tab_locator, True)

    def click_country_group(self):
        """
        Implementing click country group functionality
        :return:
        """
        self.click_element(self.country_groups_locator, script_executor=True)

    def get_country_groups_grid_last_modified_column_value(self):
        """
        Implementing get country group grid last modified column value functionality
        :return:country groups grid last modified column value
        """
        self.country_groups_grid_row_count = int(self.get_grid_row_count(self.country_groups_grid_row_count_span_locator, 2))
        return self.get_specific_column_value_from_grid(self.country_groups_grid_div_id, self.country_groups_grid_row_count, self.last_modified_column_name, data_grid_name=self.country_groups_data_grid_name)

    def set_rates_destination(self):
        """
        Implementing set rates destination functionality
        :return:
        """
        self.set_value_into_input_field(self.rates_tab_destination_textbox_locator, self.buy_page_excel_data_dictionary["Destination"])

    def set_vendor_grid_settings(self, grid_settings):
        """
        Implementing set vendor grid settings functionality
        :param grid_settings:
        :return:
        """
        self.set_grid_settings(self.vendors_div_id, grid_settings)

    def sort_vendors_grid_column(self, column_name, descending_order):
        """
        Implementing sort vendors grid column functionality
        :param column_name:
        :param descending_order:
        :return:
        """
        self.sort_grid_column(self.vendors_div_id, column_name, descending_order)

    def get_all_rows_of_specific_column_from_vendors_grid(self, column_name):
        """
        Implementing get all rows of specific column from vendors grid functionality
        :param column_name:
        :return: all_row_data
        """
        self.all_row_data = self.get_all_rows_of_specific_column_from_grid(self.vendors_div_id, column_name, self.get_grid_row_count(self.vendors_grid_row_count_span_locator, 5))
        return self.all_row_data

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

    def drag_vendors_grid_column(self, source_column, destination_column):
        """
        Implementing drag vendors grid column functionality
        :param source_column:
        :param destination_column:
        :return:
        """
        self.drag_grid_column(self.vendors_div_id, source_column, destination_column)

    def get_vendors_grid_column_names_by_order(self):
        """
        Implementing get vendors grid column names by order functionality
        :return: column_name_list
        """
        self.column_name_list = self.get_grid_column_names_by_order(self.vendors_div_id)
        return self.column_name_list

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

    def set_country_group_scope(self, country_group_scope):
        """
        Implementing set country group scope functionality
        :param country_group_scope:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.country_group_scope_dropdown_locator, country_group_scope)

    def set_country_groups_grid_settings(self, grid_settings):
        """
        Implementing set country groups grid settings functionality
        :param grid_settings:
        :return:
        """
        self.set_grid_settings(self.country_groups_grid_div_id, grid_settings)

    def sort_country_groups_grid_column(self, column_name, descending_order):
        """
        Implementing sort country groups grid column functionality
        :param column_name:
        :param descending_order:
        :return:
        """
        self.sort_grid_column(self.country_groups_grid_div_id, column_name, descending_order)

    def get_all_rows_of_specific_column_from_country_groups_grid(self, column_name):
        """
        Implementing get all rows of specific column from country groups grid functionality
        :param column_name:
        :return: all_row_data
        """
        self.all_row_data = self.get_all_rows_of_specific_column_from_grid(self.country_groups_grid_div_id, column_name, self.get_grid_row_count(self.country_groups_grid_row_count_span_locator, 2))
        return self.all_row_data

    def drag_country_groups_grid_column(self, source_column, destination_column):
        """
        Implementing drag country groups grid column functionality
        :param source_column:
        :param destination_column:
        :return:
        """
        self.drag_grid_column(self.country_groups_grid_div_id, source_column, destination_column)

    def get_country_groups_grid_column_names_by_order(self):
        """
        Implementing get country groups grid column names by order functionality
        :return: column_name_list
        """
        self.column_name_list = self.get_grid_column_names_by_order(self.country_groups_grid_div_id)
        return self.column_name_list

    def click_re_analysis_link(self):
        """
        Implementing click re analysis link functionality
        :return:
        """
        self.click_element(self.re_analysis_locator, True)

    def set_re_analysis_grid_settings(self, grid_settings):
        """
        Implementing set re analysis grid settings functionality
        :param grid_settings:
        :return:
        """
        self.set_grid_settings(self.re_analysis_grid_div_id, grid_settings)

    def sort_re_analysis_grid_column(self, column_name, descending_order):
        """
        Implementing sort re analysis grid column functionality
        :param column_name:
        :param descending_order:
        :return:
        """
        self.sort_grid_column(self.re_analysis_grid_div_id, column_name, descending_order)

    def get_all_rows_of_specific_column_from_re_analysis_grid(self, column_name):
        """
        Implementing get all rows of specific column from re analysis grid functionality
        :param column_name:
        :return: all_row_data
        """
        self.all_row_data = self.get_all_rows_of_specific_column_from_grid(self.re_analysis_grid_div_id, column_name, self.get_grid_row_count(self.re_analysis_grid_row_count_span_locator, 2))
        return self.all_row_data

    def drag_re_analysis_grid_column(self, source_column, destination_column):
        """
        Implementing drag re analysis grid column functionality
        :param source_column:
        :param destination_column:
        :return:
        """
        self.drag_grid_column(self.re_analysis_grid_div_id, source_column, destination_column)

    def get_re_analysis_grid_column_names_by_order(self):
        """
        Implementing get re analysis grid column names by order functionality
        :return: column_name_list
        """
        self.column_name_list = self.get_grid_column_names_by_order(self.re_analysis_grid_div_id)
        return self.column_name_list

    def click_re_analysis_grid_first_row_inline_action_button(self):
        """
        Implementing click re analysis grid first row inline action button functionality
        :return:
        """
        self.click_inline_action_button(self.re_analysis_grid_div_id, None, self.re_analysis_grid_inline_action_column_number, True)

    def sort_re_analysis_detail_grid_column(self, column_name, descending_order):
        """
        Implementing sort re analysis detail grid column functionality
        :param column_name:
        :param descending_order:
        :return:
        """
        self.sort_grid_column(self.re_analysis_detail_grid_div_id, column_name, descending_order)

    def get_all_rows_of_specific_column_from_re_analysis_detail_grid(self, column_name):
        """
        Implementing get all rows of specific column from re analysis detail grid functionality
        :param column_name:
        :return: all_row_data
        """
        self.all_row_data = self.get_all_rows_of_specific_column_from_grid(self.re_analysis_detail_grid_div_id, column_name)
        return self.all_row_data

    def drag_re_analysis_detail_grid_column(self, source_column, destination_column):
        """
        Implementing drag re analysis detail grid column functionality
        :param source_column:
        :param destination_column:
        :return:
        """
        self.drag_grid_column(self.re_analysis_detail_grid_div_id, source_column, destination_column)

    def get_re_analysis_detail_grid_column_names_by_order(self):
        """
        Implementing get re analysis detail grid column names by order functionality
        :return: column_name_list
        """
        self.column_name_list = self.get_grid_column_names_by_order(self.re_analysis_detail_grid_div_id)
        return self.column_name_list

    def select_inline_action_item_with_module_name(self, inline_item):
        """
        Implementing select inline action item with module name functionality
        :param inline_item:
        :return:
        """
        self.select_inline_action_item(inline_item, self.buy_module_name)
        self.wait_for_ajax_spinner_load()

    def set_vendor_price_lists_grid_settings(self, grid_settings):
        """
        Implementing set vendor price lists grid settings functionality
        :param grid_settings:
        :return:
        """
        self.set_grid_settings(self.view_price_list_div_id, grid_settings)

    def sort_vendor_price_lists_grid_column(self, column_name, descending_order):
        """
        Implementing sort vendor price lists grid column functionality
        :param column_name:
        :param descending_order:
        :return:
        """
        self.sort_grid_column(self.view_price_list_div_id, column_name, descending_order)

    def get_all_rows_of_specific_column_from_vendor_price_lists_grid(self, column_name):
        """
        Implementing get all rows of specific column from vendor price lists grid functionality
        :param column_name:
        :return: all_row_data
        """
        self.all_row_data = self.get_all_rows_of_specific_column_from_grid(self.view_price_list_div_id, column_name, self.get_grid_row_count(self.price_lists_grid_row_count_span_locator, 7))
        return self.all_row_data

    def drag_vendor_price_lists_grid_column(self, source_column, destination_column):
        """
        Implementing drag vendor price lists grid column functionality
        :param source_column:
        :param destination_column:
        :return:
        """
        self.drag_grid_column(self.view_price_list_div_id, source_column, destination_column)

    def get_vendor_price_lists_grid_column_names_by_order(self):
        """
        Implementing get vendor price lists grid column names by order functionality
        :return: column_name_list
        """
        self.column_name_list = self.get_grid_column_names_by_order(self.view_price_list_div_id)
        return self.column_name_list

    def sort_rates_grid_column(self, column_name, descending_order):
        """
        Implementing sort rates grid column functionality
        :param column_name:
        :param descending_order:
        :return:
        """
        self.sort_grid_column(self.rates_grid_div_id, column_name, descending_order)

    def get_all_rows_of_specific_column_from_rates_grid(self, column_name):
        """
        Implementing get all rows of specific column from rates grid functionality
        :param column_name:
        :return: all_row_data
        """
        self.all_row_data = self.get_all_rows_of_specific_column_from_grid(self.rates_grid_div_id, column_name, self.get_grid_row_count(self.rates_grid_row_count_span_locator, 1))
        return self.all_row_data

    def drag_rates_grid_column(self, source_column, destination_column):
        """
        Implementing drag rates grid column functionality
        :param source_column:
        :param destination_column:
        :return:
        """
        self.drag_grid_column(self.rates_grid_div_id, source_column, destination_column)

    def get_rates_grid_column_names_by_order(self):
        """
        Implementing get rates grid column names by order functionality
        :return: column_name_list
        """
        self.column_name_list = self.get_grid_column_names_by_order(self.rates_grid_div_id)
        return self.column_name_list

    def sort_destinations_grid_column(self, column_name, descending_order):
        """
        Implementing sort destinations grid column functionality
        :param column_name:
        :param descending_order:
        :return:
        """
        self.sort_grid_column(self.destinations_grid_div_id, column_name, descending_order)

    def get_all_rows_of_specific_column_from_destinations_grid(self, column_name):
        """
        Implementing get all rows of specific column from destinations grid functionality
        :param column_name:
        :return: all_row_data
        """
        self.all_row_data = self.get_all_rows_of_specific_column_from_grid(self.destinations_grid_div_id, column_name, self.get_grid_row_count(self.destinations_grid_row_count_span_locator, 1))
        return self.all_row_data

    def drag_destinations_grid_column(self, source_column, destination_column):
        """
        Implementing drag destinations grid column functionality
        :param source_column:
        :param destination_column:
        :return:
        """
        self.drag_grid_column(self.destinations_grid_div_id, source_column, destination_column)

    def get_destinations_grid_column_names_by_order(self):
        """
        Implementing get destinations grid column names by order functionality
        :return: column_name_list
        """
        self.column_name_list = self.get_grid_column_names_by_order(self.destinations_grid_div_id)
        return self.column_name_list

    def sort_dialed_digits_grid_column(self, column_name, descending_order):
        """
        Implementing sort dialed digits grid column functionality
        :param column_name:
        :param descending_order:
        :return:
        """
        self.sort_grid_column(self.dialed_digits_grid_div_id, column_name, descending_order)

    def get_all_rows_of_specific_column_from_dialed_digits_grid(self, column_name):
        """
        Implementing get all rows of specific column from dialed digits grid functionality
        :param column_name:
        :return: all_row_data
        """
        self.all_row_data = self.get_all_rows_of_specific_column_from_grid(self.dialed_digits_grid_div_id, column_name, self.get_grid_row_count(self.dialed_digits_grid_row_count_span_locator, 1))
        return self.all_row_data

    def drag_dialed_digits_grid_column(self, source_column, destination_column):
        """
        Implementing drag dialed digits grid column functionality
        :param source_column:
        :param destination_column:
        :return:
        """
        self.drag_grid_column(self.dialed_digits_grid_div_id, source_column, destination_column)

    def get_dialed_digits_grid_column_names_by_order(self):
        """
        Implementing get dialed digits grid column names by order functionality
        :return: column_name_list
        """
        self.column_name_list = self.get_grid_column_names_by_order(self.dialed_digits_grid_div_id)
        return self.column_name_list

    def set_vendor_price_list_detail_grid_settings(self, grid_settings):
        """
        Implementing set vendor price list detail grid settings functionality
        :param grid_settings:
        :return:
        """
        self.wait_for_ajax_spinner_load(300)
        self.set_grid_settings(self.vendor_price_list_detail_rates_grid_div_id, grid_settings)

    def sort_vendor_price_list_detail_grid_column(self, column_name, descending_order):
        """
        Implementing sort vendor price list detail grid column functionality
        :param column_name:
        :param descending_order:
        :return:
        """
        self.wait_for_ajax_spinner_load(300)
        self.sort_grid_column(self.vendor_price_list_detail_rates_grid_div_id, column_name, descending_order)

    def get_all_rows_of_specific_column_from_vendor_price_list_detail_grid(self, column_name):
        """
        Implementing get all rows of specific column from vendor price list detail grid functionality
        :param column_name:
        :return: all_row_data
        """
        self.wait_for_ajax_spinner_load(300)
        self.all_row_data = self.get_all_rows_of_specific_column_from_grid(self.vendor_price_list_detail_rates_grid_div_id, column_name)
        return self.all_row_data

    def drag_vendor_price_list_detail_grid_column(self, source_column, destination_column):
        """
        Implementing drag vendor price list detail grid column functionality
        :param source_column:
        :param destination_column:
        :return:
        """
        self.wait_for_ajax_spinner_load(300)
        self.drag_grid_column(self.vendor_price_list_detail_rates_grid_div_id, source_column, destination_column)

    def get_vendor_price_list_detail_grid_column_names_by_order(self):
        """
        Implementing get vendor price list detail grid column names by order functionality
        :return: column_name_list
        """
        self.wait_for_ajax_spinner_load(300)
        self.column_name_list = self.get_grid_column_names_by_order(self.vendor_price_list_detail_rates_grid_div_id)
        return self.column_name_list

    def compare_digits_tab_name(self, expected_tab_name):
        """
        Implementing compare digits tab name functionality
        :param expected_tab_name:
        :return: True/False
        """
        digits_tab_element = self.wait().until(EC.presence_of_element_located(self.vendor_price_list_details_dial_digits_tab_locator), 'vendor price list detail dial digits tab locator not found before specified time out')
        actual_tab_name = digits_tab_element.text
        if actual_tab_name == expected_tab_name:
            return True
        else:
            return False

    def select_vendor_price_list_detail_dial_digits_tab(self):
        """
        Implementing select vendor price list detail dial digits tab functionality
        :return:
        """
        self.click_element(self.vendor_price_list_details_dial_digits_tab_locator, True)

    def select_vendor_price_list_detail_reference_rates_tab(self):
        """
        Implementing select vendor price list detail reference rates tab functionality
        :return:
        """
        self.click_element(self.vendor_price_list_details_reference_rates_tab_locator, True)

    def set_vendor_price_list_detail_dial_digits_grid_settings(self, grid_settings):
        """
        Implementing set vendor price list detail dial digits grid settings functionality
        :param grid_settings:
        :return:
        """
        self.wait_for_ajax_spinner_load(300)
        self.set_grid_settings(self.vendor_price_list_detail_dial_digits_grid_div_id, grid_settings)

    def sort_vendor_price_list_detail_dial_digits_grid_column(self, column_name, descending_order):
        """
        Implementing sort vendor price list detail dial digits grid column functionality
        :param column_name:
        :param descending_order:
        :return:
        """
        self.wait_for_ajax_spinner_load(300)
        self.sort_grid_column(self.vendor_price_list_detail_dial_digits_grid_div_id, column_name, descending_order)

    def get_all_rows_of_specific_column_from_vendor_price_list_detail_dial_digits_grid(self, column_name):
        """
        Implementing get all rows of specific column from vendor price list detail dial digits grid functionality
        :param column_name:
        :return: all_row_data
        """
        self.wait_for_ajax_spinner_load(300)
        self.all_row_data = self.get_all_rows_of_specific_column_from_grid(self.vendor_price_list_detail_dial_digits_grid_div_id, column_name)
        return self.all_row_data

    def drag_vendor_price_list_detail_dial_digits_grid_column(self, source_column, destination_column):
        """
        Implementing drag vendor price list detail dial digits grid column functionality
        :param source_column:
        :param destination_column:
        :return:
        """
        self.wait_for_ajax_spinner_load(300)
        self.drag_grid_column(self.vendor_price_list_detail_dial_digits_grid_div_id, source_column, destination_column)

    def get_vendor_price_list_detail_dial_digits_grid_column_names_by_order(self):
        """
        Implementing get vendor price list detail dial digits grid column names by order functionality
        :return: column_name_list
        """
        self.wait_for_ajax_spinner_load(300)
        self.column_name_list = self.get_grid_column_names_by_order(self.vendor_price_list_detail_dial_digits_grid_div_id)
        return self.column_name_list

    def set_vendor_price_list_detail_reference_rates_grid_settings(self, grid_settings):
        """
        Implementing set vendor price list detail reference rates grid settings functionality
        :param grid_settings:
        :return:
        """
        self.wait_for_ajax_spinner_load(300)
        self.set_grid_settings(self.vendor_price_list_detail_reference_rates_grid_div_id, grid_settings)

    def sort_vendor_price_list_detail_reference_rates_grid_column(self, column_name, descending_order):
        """
        Implementing sort vendor price list detail reference rates grid column functionality
        :param column_name:
        :param descending_order:
        :return:
        """
        self.wait_for_ajax_spinner_load(300)
        self.sort_grid_column(self.vendor_price_list_detail_reference_rates_grid_div_id, column_name, descending_order)

    def get_all_rows_of_specific_column_from_vendor_price_list_detail_reference_rates_grid(self, column_name):
        """
        Implementing get all rows of specific column from vendor price list detail reference rates grid functionality
        :param column_name:
        :return: all_row_data
        """
        self.wait_for_ajax_spinner_load(300)
        self.all_row_data = self.get_all_rows_of_specific_column_from_grid(self.vendor_price_list_detail_reference_rates_grid_div_id, column_name)
        return self.all_row_data

    def drag_vendor_price_list_detail_reference_rates_grid_column(self, source_column, destination_column):
        """
        Implementing drag vendor price list detail reference rates grid column functionality
        :param source_column:
        :param destination_column:
        :return:
        """
        self.wait_for_ajax_spinner_load(300)
        self.drag_grid_column(self.vendor_price_list_detail_reference_rates_grid_div_id, source_column, destination_column)

    def get_vendor_price_list_detail_reference_rates_grid_column_names_by_order(self):
        """
        Implementing get vendor price list detail reference rates grid column names by order functionality
        :return: column_name_list
        """
        self.wait_for_ajax_spinner_load(300)
        self.column_name_list = self.get_grid_column_names_by_order(self.vendor_price_list_detail_reference_rates_grid_div_id)
        return self.column_name_list

    def click_vendor_price_list_detail_rates_grid_export_to_excel_button(self):
        """
        Implementing click vendor price list detail rates grid export to excel button functionality
        :return:
        """
        self.click_grid_export_to_excel_button(self.vendor_price_list_detail_rates_grid_div_id)

    def click_vendor_price_list_detail_dial_digits_grid_export_to_excel_button(self):
        """
        Implementing click vendor price list detail dial digits grid export to excel button functionality
        :return:
        """
        self.click_grid_export_to_excel_button(self.vendor_price_list_detail_dial_digits_grid_div_id)

    def click_vendor_price_list_detail_reference_rates_grid_export_to_excel_button(self):
        """
        Implementing click vendor price list detail reference rates grid export to excel button functionality
        :return:
        """
        self.click_grid_export_to_excel_button(self.vendor_price_list_detail_reference_rates_grid_div_id)

    def click_country_groups_grid_export_to_excel_button(self):
        """
        Implementing click country groups grid export to excel button functionality
        :return:
        """
        self.click_grid_export_to_excel_button(self.country_groups_grid_div_id)

    def click_re_analysis_grid_export_to_excel_button(self):
        """
        Implementing click re analysis grid export to excel button functionality
        :return:
        """
        self.click_grid_export_to_excel_button(self.re_analysis_grid_div_id)

    def compare_upload_failure_message(self, message):
        """
        Implementing compare upload failure message functionality
        :param message:
        :return: True/False
        """
        is_compared = False
        upload_button_element = self.wait().until(EC.visibility_of_element_located(self.upload_button_locator), 'upload button not found before specified time')
        upload_button_element.click()
        self.wait_for_ajax_spinner_load()
        try:
            failure_message_locator = (By.XPATH, "//span[text()='Error']/../../descendant::p[contains(text(), '%s')]" % message)
            if self.is_element_present(failure_message_locator):
                is_compared = True
            self.click_element(self.ok_button_locator)
        except:
            raise
        return is_compared

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

    def select_qos_tab(self):
        """
        Implementing select qos tab functionality
        :return:
        """
        self.click_element(self.qos_tab_locator, True)

    def compare_qos_with_excel_data(self):
        """
        Implementing compare qos with excel data functionality
        :return: True/False
        """
        self.buy_page_excel_data_dictionary = self.get_excel_data_dictionary()
        is_compared = True
        self.grid_row_data.clear()
        self.grid_row_data.update({"MNP": "", "Comments": ""})
        qos_grid_row_data = self.get_vendor_profile_page_grid_row_details(self.qos_grid_div_id, self.grid_row_data)
        for key in qos_grid_row_data:
            if qos_grid_row_data[key] != self.buy_page_excel_data_dictionary[key]:
                is_compared = False
                break
        return is_compared

    def is_mnp_column_present(self):
        """
        Implementing is mnp column present functionality
        :return: True/False
        """
        is_present = False
        self.column_name_list = self.get_grid_column_names_by_order(self.qos_grid_div_id)
        for column_name in self.column_name_list:
            if column_name == "MNP":
                is_present = True
                break
        return is_present

    def is_comments_column_present(self):
        """
        Implementing is comments column present functionality
        :return: True/False
        """
        is_present = False
        self.column_name_list = self.get_grid_column_names_by_order(self.qos_grid_div_id)
        for column_name in self.column_name_list:
            if column_name == "Comments":
                is_present = True
                break
        return is_present

    def get_all_rows_of_rate_column_from_vendor_price_list_detail_grid(self, column_name):
        """
        Implementing get all rows of rate column from vendor price list detail grid functionality
        :param column_name:
        :return: all_row_data
        """
        self.wait_for_ajax_spinner_load()
        self.all_row_data = self.get_all_rows_of_specific_column_only_from_vendor_price_list_detail_grid(self.vendor_price_list_detail_rates_grid_div_id, column_name)
        return self.all_row_data

    def get_all_rows_of_specific_column_only_from_vendor_price_list_detail_grid(self, div_id, column_name):
        """
        Implementing get all rows of specific column only from vendor price list detail grid functionality
        :param div_id:
        :param column_name:
        :return: all_row_data
        """
        row_count = len(self.wait().until(EC.presence_of_all_elements_located(self.vendor_price_list_detail_row_locator), 'vendor price list details row element locator not found before specified time'))
        all_row_data = []
        next_page = False
        column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::th[@data-title='%s']" % (div_id, column_name))
        column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) + 1
        row = 1
        try:
            while row < row_count+1:
                column_value_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::div[@class='k-grid-content']/descendant::tbody[@role='rowgroup']/tr[%s]/td[%s]/descendant::td" % (div_id, row, str(column_index)))
                column_value_element = self.wait(10).until(EC.presence_of_element_located(column_value_locator), 'column value locator not found before specified time out')
                column_value = str(column_value_element.get_attribute("innerHTML"))
                if column_value not in all_row_data:
                    all_row_data.append(column_value)
                else:
                    row_count += 1
                if row % 50 == 0:
                    next_page = True
                    next_page_button_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::span[@class='k-icon k-i-arrow-e']" % div_id)
                    self.click_element(next_page_button_locator, True)
                    row = 0
                    row_count -= 50
                row += 1
        except WebDriverException:
            pass
        if next_page is True:
            first_page_button_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::span[@class='k-icon k-i-seek-w']" % div_id)
            self.click_element(first_page_button_locator, True)
        return all_row_data

    def get_all_rows_of_rate_increase_violation_column_from_vendor_price_list_detail_grid(self, column_name):
        """
        Implementing get all rows of rate increase violation column from vendor price list detail grid functionality
        :param column_name:
        :return: all_row_data
        """
        self.all_row_data = []
        self.wait_for_ajax_spinner_load()
        row_count = len(self.wait().until(EC.presence_of_all_elements_located(self.vendor_price_list_detail_row_locator), 'vendor price list details row element locator not found before specified time'))
        next_page = False
        column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::th[@data-title='%s']" % (self.vendor_price_list_detail_rates_grid_div_id, column_name))
        column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) + 1
        row = 1
        try:
            while row < row_count + 1:
                column_value_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::div[@class='k-grid-content']/descendant::tbody[@role='rowgroup']/tr[%s]/td[%s]" % (self.vendor_price_list_detail_rates_grid_div_id, row, str(column_index)))
                column_value_element = self.wait(10).until(EC.presence_of_element_located(column_value_locator), 'column value locator not found before specified time out')
                column_value = str(column_value_element.get_attribute("innerHTML"))
                if column_value not in self.all_row_data:
                    self.all_row_data.append(column_value)
                else:
                    row_count += 1
                if row % 50 == 0:
                    next_page = True
                    next_page_button_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::span[@class='k-icon k-i-arrow-e']" % self.vendor_price_list_detail_rates_grid_div_id)
                    self.click_element(next_page_button_locator, True)
                    row = 0
                    row_count -= 50
                row += 1
        except WebDriverException:
            pass
        if next_page is True:
            first_page_button_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::span[@class='k-icon k-i-seek-w']" % self.vendor_price_list_detail_rates_grid_div_id)
            self.click_element(first_page_button_locator, True)
        return self.all_row_data

    def is_sorting_option_not_available_in_specific_column(self, div_id, column_name, sort_descending=False):
        """
        Implementing is sorting option not available in specific column functionality
        :param div_id:
        :param column_name:
        :param sort_descending:
        :return: True/False
        """
        is_not_available = True
        column_name_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::th[@data-title='%s']/a[1]" % (div_id, column_name))
        column_name_element = self.wait().until(EC.presence_of_element_located(column_name_locator), 'column name locator not found before specified time out')
        self.hover(column_name_element)
        self.script_executor_click(column_name_element)
        self.wait_for_ajax_spinner_load()
        try:
            if sort_descending:
                self.wait(5).until(EC.presence_of_element_located(self.buy_page_sort_descending_option_locator), 'sort descending locator not found before specified time out')
            else:
                self.wait(5).until(EC.presence_of_element_located(self.buy_page_sort_ascending_option_locator), 'sort ascending locator not found before specified time out')
            is_not_available = False
        except:
            pass
        return is_not_available

    def is_sorting_option_not_available_in_destination_column(self, column_name, descending_order):
        """
        Implementing is sorting option not available in destination column functionality
        :param column_name: 
        :return: True/False
        """
        return self.is_sorting_option_not_available_in_specific_column(self.vendor_price_list_detail_rates_grid_div_id, column_name=column_name, sort_descending=descending_order)

    def is_ixtools_account_present(self, item_name):
        """
        Implementing is ixtools account present functionality
        :param item_name:
        :return:
        """
        self.click_element(self.ixtools_account_arrow_dropdown_locator)
        ixtools_account_locator = (By.XPATH, "//ul[contains(@id, 'ddlCustomerVendorAccount')]/li[text()='%s']" % item_name)
        return self.is_element_present(ixtools_account_locator)

    def is_vendor_price_list_not_displayed_in_the_grid(self):
        """
        Implementing is vendor price list not displayed in the grid functionality
        :return: True/False
        """
        is_displayed = True
        current_number_of_rows = int(self.get_number_of_rows_from_grid(self.vendors_price_lists_grid_div_bar_id))
        if (current_number_of_rows > self.number_of_rows):
            is_displayed = False
        return is_displayed

    def click_guarantee_cli_checkbox(self):
        """
        Implementing click guarantee cli checkbox functionality
        :return:
        """
        self.click_element(self.guarantee_cli_checkbox_locator)

    def click_exclude_rating_method_from_price_list_checkbox(self):
        """
        Implementing click exclude rating method from price list checkbox functionality
        :return:
        """
        self.click_element(self.exclude_rating_method_from_price_list_checkbox_locator)

    def set_price_list_content(self, price_list_content):
        """
        Implementing set price list content functionality
        :param price_list_content:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.price_list_content_dropdown_locator, price_list_content)
        self.wait_for_ajax_spinner_load()

    def set_country_for_search(self, country_name_list):
        """
        Implementing set country for search functionality
        :param country_name_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.country_dropdown_locator, country_name_list)
        self.wait_for_ajax_spinner_load()

    def is_specific_tab_on_vendor_profile_page_present(self, tab_name):
        """
        Implementing is specific tab on vendor profile page present functionality
        :param tab_name:
        :return: 
        """
        tab_locator = (By.XPATH, "//div[contains(@id, 'SourceProfileTabStrip')]/descendant::a[text()='%s']" % tab_name)
        return self.is_element_present(tab_locator)

    def is_specific_column_on_vendor_profile_grid_present(self, column_name):
        """
        Implementing is specific column on vendor profile grid present functionality
        :param column_name:
        :return: 
        """
        column_locator = (By.XPATH, "//div[contains(@id, 'divCustomerDialedDigit')]/descendant::a[text()='%s']" % column_name)
        return self.is_element_present(column_locator)

    def set_jobs_grid_settings(self, grid_settings):
        """
        Implementing set jobs grid settings functionality
        :param grid_settings:
        :return:
        """
        self.set_grid_settings(self.jobs_grid_div_id, grid_settings)

    def click_reference_rates_show_search_form_link(self):
        """
        Implementing click reference rates show search form link functionality
        :return:
        """
        self.click_element(self.reference_rates_show_search_form_link_locator)

    def is_view_dropdown_visible(self):
        """
        Implementing is view dropdown visible functionality
        :return: True/False
        """
        return self.is_element_visible(self.view_dropdown_locator)

    def is_status_dropdown_visible(self):
        """
        Implementing is status dropdown visible functionality
        :return: True/False
        """
        return self.is_element_visible(self.status_dropdown_locator)

    def is_discrepancy_dropdown_visible(self):
        """
        Implementing is discrepancy dropdown visible functionality
        :return: True/False
        """
        return self.is_element_visible(self.discrepancy_dropdown_locator)

    def is_in_routing_flags_dropdown_visible(self):
        """
        Implementing is in routing flags dropdown visible functionality
        :return: True/False
        """
        return self.is_element_visible(self.in_routing_flags_dropdown_locator)

    def is_rate_textbox_visible(self):
        """
        Implementing is rate textbox visible functionality
        :return: True/False
        """
        return self.is_element_visible(self.reference_rates_rate_textbox_locator)

    def is_destination_textbox_visible(self):
        """
        Implementing is destination textbox visible functionality
        :return: True/False
        """
        return self.is_element_visible(self.reference_rates_destination_textbox_locator)

    def is_reference_rates_grid_accept_column_checkbox(self):
        """
        Implementing is reference rates grid accept column checkbox functionality
        :return: True/False
        """
        is_checkbox = False
        column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::th[@data-title='%s']" % (self.vendor_price_list_detail_reference_rates_grid_div_id, self.accept_column_name))
        column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) + 1
        column_type_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::div[@class='k-grid-content']/descendant::tr/td[%s]/input" % (self.vendor_price_list_detail_reference_rates_grid_div_id, str(column_index)))
        column_type_element = self.wait().until(EC.presence_of_element_located(column_type_locator), 'column type locator not found before specified time out')
        column_type = column_type_element.get_attribute('type')
        if column_type == "checkbox":
            is_checkbox = True
        return is_checkbox

    def is_number_plan_changes_grid_header_dialed_digits_mcc_mnc(self):
        """
        Implementing is number plan changes grid header dialed digits mcc mnc functionality
        :return: True/False
        """
        return self.is_element_present(self.re_analysis_details_number_plan_changes_grid_dialed_digits_column_locator)

    def is_specific_column_present(self, grid_div_id, column_name):
        """
        Implementing is specific selection column present functionality
        :param grid_div_id: 
        :param column_name: 
        :return: True/False
        """
        specific_column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::th[@data-field='%s']" % (grid_div_id, column_name))
        return self.is_element_present(specific_column_locator)

    def is_specific_selection_criteria_filter_present(self, page_div_id, label_name):
        """
        Implementing is specific selection criteria filter present functionality
        :param page_div_id: 
        :param label_name: 
        :return: True/False
        """
        selection_criteria_filter_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::label[text()='%s']" % (page_div_id, label_name))
        return self.is_element_present(selection_criteria_filter_locator)

    def is_country_selection_criteria_field_present_in_re_analysis_page(self):
        """
        Implementing is country selection criteria field present in re analysis page functionality
        :return: True/False
        """
        return self.is_specific_selection_criteria_filter_present(self.re_analysis_page_div_id, self.country_label_name)

    def is_country_column_present_in_re_analysis_page(self):
        """
        Implementing is country column present in re analysis page functionality
        :return: True/False
        """
        return self.is_specific_column_present(self.re_analysis_grid_div_id, self.column_name_country)

    def is_country_selection_criteria_field_present_in_vendor_profile_page(self):
        """
        Implementing is country selection criteria field present in vendor profile page functionality
        :return: True/False
        """
        return self.is_specific_selection_criteria_filter_present(self.vendor_profile_page_div_id, self.country_label_name)

    def is_country_column_present_in_vendor_profile_page(self):
        """
        Implementing is country column present in vendor profile page functionality
        :return: True/False
        """
        return self.is_specific_column_present(self.rates_grid_div_id, self.column_name_country)

    def is_country_selection_criteria_field_present_in_vendor_profile_dialed_digits_page(self):
        """
        Implementing is country selection criteria field present in vendor profile dialed digits page functionality
        :return: True/False
        """
        return self.is_specific_selection_criteria_filter_present(self.vendor_profile_dialed_digits_page_div_id, self.country_label_name)

    def is_country_column_present_in_vendor_profile_dialed_digits_page(self):
        """
        Implementing is country column present in vendor profile dialed digits page functionality
        :return: True/False
        """
        return self.is_specific_column_present(self.dialed_digits_grid_div_id, self.column_name_country)

    def is_country_selection_criteria_field_present_in_vendor_profile_destinations_page(self):
        """
        Implementing is country selection criteria field present in vendor profile destinations page functionality
        :return: True/False
        """
        return self.is_specific_selection_criteria_filter_present(self.vendor_profile_destinations_page_div_id, self.country_label_name)

    def is_country_column_present_in_vendor_profile_destinations_page(self):
        """
        Implementing is country column present in vendor profile destinations page functionality
        :return: True/False
        """
        return self.is_specific_column_present(self.destinations_grid_div_id, self.column_name_country)

    def click_search_rate_arrow_button(self):
        """
        Implementing click search rate arrow button functionality
        :return:
        """
        self.click_element(self.search_rate_arrow_button_locator)

    def is_country_selection_criteria_field_present_in_view_price_list_details_rate_page(self):
        """
        Implementing is country selection criteria field present in view price list details rate page functionality
        :return: True/False
        """
        return self.is_specific_selection_criteria_filter_present(self.view_price_list_details_rate_page_div_id, self.country_label_name)

    def is_country_column_present_in_view_price_list_details_rate_page(self):
        """
        Implementing is country column present in view price list details rate page functionality
        :return: True/False
        """
        return self.is_specific_column_present(self.vendor_price_list_detail_rates_grid_div_id, self.column_name_country)

    def click_search_dialed_digits_arrow_button(self):
        """
        Implementing click search dialed digits arrow button functionality
        :return:
        """
        self.click_element(self.search_dialed_digits_arrow_button_locator)

    def is_country_selection_criteria_field_present_in_view_price_list_details_dialed_digits_page(self):
        """
        Implementing is country selection criteria field present in view price list details dialed digits page functionality
        :return: True/False
        """
        return self.is_specific_selection_criteria_filter_present(self.view_price_list_dialed_digits_page_div_id, self.country_label_name)

    def is_country_column_present_in_view_price_list_details_dialed_digits_page(self):
        """
        Implementing is country column present in view price list details dialed digits page functionality
        :return: True/False
        """
        return self.is_specific_column_present(self.vendor_price_list_detail_dial_digits_grid_div_id, self.column_name_country)

    def click_search_ref_rates_arrow_button(self):
        """
        Implementing click search ref rates arrow button functionality
        :return:
        """
        self.click_element(self.search_ref_rates_arrow_button_locator)

    def is_country_selection_criteria_field_present_in_view_price_list_details_ref_rates_page(self):
        """
        Implementing is country selection criteria field present in view price list details ref rates page functionality
        :return: True/False
        """
        return self.is_specific_selection_criteria_filter_present(self.view_price_list_ref_rates_page_div_id, self.country_label_name)

    def is_country_column_present_in_view_price_list_details_ref_rates_page(self):
        """
        Implementing is country column present in view price list details ref rates page functionality
        :return: True/False
        """
        return self.is_specific_column_present(self.vendor_price_list_detail_reference_rates_grid_div_id, self.column_name_country)

    def select_reference_rates_tab(self):
        """
        Implementing select reference rates tab functionality
        :return:
        """
        self.select_static_tab(self.reference_rates_tab_locator, True)

    def is_country_selection_criteria_field_present_in_compare_price_list_pop_up(self):
        """
        Implementing is country selection criteria field present in compare price list pop up functionality
        :return: True/False
        """
        return self.is_specific_selection_criteria_filter_present(self.compare_price_list_pop_up_div_id, self.country_label_name)

    def is_country_column_present_in_compare_price_list_pop_up(self):
        """
        Implementing is country column present in compare price list pop up functionality
        :return: True/False
        """
        return self.is_specific_column_present(self.compare_price_list_rate_grid_div_id, self.column_name_country)

    def select_mcc_mnc_tab(self):
        """
        Implementing select mcc mnc tab functionality
        :return:
        """
        self.select_static_tab(self.mcc_mnc_tab_locator, True)

    def click_search_mcc_mnc_arrow_button(self):
        """
        Implementing click search mcc mnc arrow button functionality
        :return:
        """
        self.click_element(self.search_mcc_mnc_arrow_button_locator)

    def verify_status_filter(self, status_list):
        """
        Implementing verify status filter functionality
        :param status_list:
        :return: True/False
        """
        is_verified = True
        self.click_element(self.multiselect_status_dropdown_locator)
        for item in status_list:
            dropdown_item_locator = (By.XPATH, "//li[text()='%s']" % item)
            if self.is_element_visible(dropdown_item_locator) is False:
                is_verified = False
                break
        self.script_executor("var elements = document.getElementsByClassName('k-list-container k-popup k-group k-reset multiselect'); for (var i = 0, len = elements.length; i < len; i++) { elements[i].style.display = 'none';}")
        self.script_executor("var elements = document.getElementsByClassName('k-list k-reset'); for (var i = 0, len = elements.length; i < len; i++) { elements[i].setAttribute('aria-hidden', 'true');}")
        return is_verified

    def set_re_analysis_status(self, status_list):
        """
        Implementing set re analysis status functionality
        :param status_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.multiselect_status_dropdown_locator, status_list)

    def click_buy_and_sell_deal_management_link(self):
        """
        Implementing click buy and sell deal management link functionality
        :return:
        """
        self.select_static_tab(self.buy_and_sell_deal_management_locator, message="buy and sell deal management locator not found before specified time out")

    def click_request_new_buy_and_sell_deal(self):
        """
        Implementing click request new buy and sell deal functionality
        :return:
        """
        self.click_element(self.request_new_buy_and_sell_deal_locator, error_message="request new buy and sell deal locator not found before specified time out")

    def is_buy_and_sell_deal_details_screen_status_dropdown_visible(self):
        """
        Implementing is buy and sell deal details screen status dropdown visible functionality
        :return: True/False
        """
        return self.is_element_present(self.buy_and_sell_deal_details_screen_status_dropdown_locator)

    def is_end_date_text_box_visible(self):
        """
        Implementing is end date date picker visible functionality
        :return: True/False
        """
        return self.is_element_visible(self.end_date_date_picker_locator)

    def is_auto_expire_checkbox_visible(self):
        """
        Implementing is auto expire checkbox visible functionality
        :return:
        """
        return self.is_element_visible(self.auto_expire_checkbox_locator)

    def verify_proposed_deal_summary_table_column_name(self, column_name):
        """
        Implementing proposed deal summary table column name verification functionality
        :param column_name:
        :return:
        """
        column_name_locator = (By.XPATH, "//div[@id='grdProposedDealSummary']/descendant::span[text()='%s']" %(column_name.strip()))
        return self.is_element_visible(column_name_locator)

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
        self.click_element(self.save_vendor_profile_locator)

    def get_buy_and_sell_deal_name(self):
        """
        Implementing get buy and sell deal name functionality
        :return: buy and sell deal
        """
        global buy_and_sell_deal
        return buy_and_sell_deal

    def click_buy_and_sell_deal_save_button(self):
        """
        Implementing click buy and sell deal save button functionality
        :return:
        """
        self.click_element(self.save_vendor_profile_locator, True)
        try:
            self.wait().until(EC.visibility_of_element_located(self.confirmation_popup_locator), 'confirmation popup locator not found before specified time out')
            self.click_element(self.ok_button_locator, True)
        except:
            raise

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

    def click_bulk_edit_submit_button(self):
        """
        Implementing click bulk edit submit button functionality
        :return:
        """
        self.click_element(self.bulk_edit_submit_button_locator)

    def click_save_changes_button(self):
        """
        Implementing click save changes button functionality
        :return:
        """
        self.click_element(self.save_changes_button_locator, True)
        try:
            self.wait().until(EC.visibility_of_element_located(self.confirmation_popup_locator), 'confirmation popup locator not found before specified time out')
            self.click_element(self.ok_button_locator, True)
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def set_multiple_status(self, status_list):
        """
        Implementing set multiple status functionality
        :param status_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.status_kendo_dropdown_locator, status_list)
        self.wait_for_ajax_spinner_load()
        buy_page_title_element = self.wait().until(EC.element_to_be_clickable(self.buy_page_title_locator), 'buy page title locator not found before specified time out')
        buy_page_title_element.click()

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
            self.wait().until(EC.visibility_of_element_located(self.confirmation_popup_locator), 'confirmation popup locator not found before specified time out')
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
            self.wait().until(EC.visibility_of_element_located(self.confirmation_popup_locator), 'confirmation popup locator not found before specified time out')
            self.click_element(self.ok_button_locator, True)
        except:
            raise

    def compare_vendor_price_list_detail_rates_grid_destination(self):
        """
        Implementing compare vendor price list detail rates grid destination functionality
        :return: True/False
        """
        self.buy_page_excel_data_dictionary = self.get_excel_data_dictionary()
        is_compared = False
        rates_grid_destination = self.get_specific_column_value_from_grid(self.vendor_price_list_detail_rates_grid_div_id, 1, self.destination_column_name)
        if self.buy_page_excel_data_dictionary["Destination"] == rates_grid_destination:
            is_compared = True
        return is_compared

    def compare_vendor_price_list_detail_dial_digits_grid_destination(self):
        """
        Implementing compare vendor price list detail dial digits grid destination functionality
        :return: True/False
        """
        self.buy_page_excel_data_dictionary = self.get_excel_data_dictionary()
        is_compared = False
        dial_digits_grid_destination = self.get_specific_column_value_from_grid(self.vendor_price_list_detail_dial_digits_grid_div_id, 1, self.destination_column_name)
        if self.buy_page_excel_data_dictionary["Destination"] == dial_digits_grid_destination:
            is_compared = True
        return is_compared

    def compare_vendor_price_list_detail_rates_grid_rate(self):
        """
        Implementing compare vendor price list detail rates grid rate functionality
        :return: True/False
        """
        self.buy_page_excel_data_dictionary = self.get_excel_data_dictionary()
        is_compared = False
        rates_grid_rate_column_element = self.wait().until(EC.presence_of_element_located(self.rates_grid_rate_column_locator))
        if self.buy_page_excel_data_dictionary["Rate1"] == (rates_grid_rate_column_element.text).strip():
            is_compared = True
        return is_compared

    def get_reference_rates_tab_analyzed_rate(self):
        """
        Implementing get reference rates tab analyzed rate functionality
        :return: analyzed_rate
        """
        return self.get_text_from_element(self.reference_rates_tab_analyzed_tab_column_locator)

    def get_reference_rates_tab_effective_date(self):
        """
        Implementing get reference rates tab effective date functionality
        :return: effective_date
        """
        return self.get_specific_column_value_from_grid(self.vendor_price_list_detail_reference_rates_grid_div_id, 1, column_name=self.effective_date_column_name)

    def is_target_buy_policies_tab_displayed(self):
        """
        Implementing is target buy policies tab displayed functionality
        :return: True/False
        """
        return self.is_element_visible(self.target_buy_policies_tab_locator)

    def select_target_buy_policies_tab(self):
        """
        Implementing select target buy policies tab functionality
        :return:
        """
        self.select_static_tab(self.target_buy_policies_tab_locator, 'target buy policies tab locator not found before specified time out')

    def is_button_displayed(self, button_name):
        """
        Implementing is button displayed functionality
        :param button_name:
        :return: True/False
        """
        button_locator = (By.XPATH, "//a[contains(@class, 'k-button') and contains(text(), '%s')]" % button_name)
        return self.is_element_visible(button_locator)

    def is_target_buy_policies_grid_column_present(self, column_name):
        """
        Implementing is target buy policies grid column present functionality
        :param column_name:
        :return: True/False
        """
        column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::th[@data-title='%s']" % (self.target_buy_policies_grid_div_id, column_name))
        return self.is_element_present(column_locator)

    def click_target_buy_policies_grid_first_row_inline_action_button(self):
        """
        Implementing click target buy policies grid first row inline action button functionality
        :return:
        """
        self.click_inline_action_button(self.target_buy_policies_grid_div_id, None, self.target_buy_policies_grid_inline_action_column_number, first_row=True)

    def is_inline_action_item_present(self, item_name):
        """
        Implementing is inline action item present functionality
        :param item_name:
        :return: True/False
        """
        inline_action_item_locator = (By.XPATH, "//ul[@id='Actions_listbox']/li[text()='%s']" % item_name)
        return self.is_element_present(inline_action_item_locator)

    def click_create_new_target_buy_policy_button(self):
        """
        Implementing click create new target buy policy button functionality
        :return:
        """
        self.click_element(self.create_new_target_buy_policy_button_locator, script_executor=True, error_message='create new target buy policy button locator not found before specified time out')

    def set_target_buy_policy_name(self, prefix):
        """
        Implementing set target buy policy name functionality
        :param prefix:
        :return:
        """
        global target_buy_policy
        target_buy_policy = (prefix + self.random_string_generator(size=4))
        self.set_value_into_input_field(self.target_buy_policy_input_field_locator, value=target_buy_policy)

    def get_target_buy_policy(self):
        """
        Implementing get target buy policy functionality
        :return:
        """
        global target_buy_policy
        return target_buy_policy

    def set_target_buy_policy_abbreviation(self, prefix):
        """
        Implementing set target buy policy abbreviation functionality
        :param prefix:
        :return:
        """
        self.set_value_into_input_field(self.target_buy_policy_abbreviation_input_field_locator, value=(prefix + self.random_string_generator(size=4)))

    def set_route_class_to_create_new_target_buy_policy(self, route_class):
        """
        Implementing set route class to create new target buy policy functionality
        :param route_class:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.route_class_single_kendo_dropdown_arrow_locator, route_class)

    def click_include_cli_checkbox(self):
        """
        Implementing click include cli checkbox functionality
        :return:
        """
        self.click_element(self.include_cli_checkbox_locator)

    def click_automate_generation_checkbox(self):
        """
        Implementing click automate generation checkbox functionality
        :return:
        """
        self.click_element(self.automate_generation_checkbox_locator)

    def click_save_target_buy_policy_button(self):
        """
        Implementing click save target buy policy button functionality
        :return:
        """
        self.click_element(self.save_target_buy_policy_button_locator, error_message='save target buy policy button locator not found before specified time out')
        self.click_element(self.confirmation_popup_locator, error_message='success message locator not found before specified time out')
        self.click_element(self.ok_button_locator, error_message='ok button locator not found before specified time out')
        self.wait_for_ajax_spinner_load()

    def click_target_buy_overrides_button(self):
        """
        Implementing click target buy overrides button functionality
        :return:
        """
        self.click_element(self.target_buy_overrides_button_locator, script_executor=True, error_message='target buy overrides button locator not found before specified time out')
        self.wait_for_ajax_spinner_load()

    def is_target_buy_list_overrides_screen_loaded(self):
        """
        Implementing is target buy list overrides screen loaded functionality
        :return:
        """
        return self.is_element_visible(self.target_buy_list_overrides_page_header_locator)

    def is_expected_dropdown_list_control_visible_in_target_buy_overrides_screen(self, expected_list_control_name):
        """
        Implementing is expected dropdown list control visible functionality
        :return:
        """
        list_control_locator = (By.XPATH, "//select[@name='%s']" %(expected_list_control_name))
        return self.is_element_present(list_control_locator)

    def is_destination_input_textbox_visible(self):
        """
        Implementing is destination input textbox visible functionality
        :return:
        """
        return self.is_element_visible(self.destination_input_textbox_locator)

    def is_expected_grid_column_present(self, expected_column_name):
        """
        Implementing is expected grid column present functionality
        :param expected_column_name:
        :return:
        """
        grid_column_locator = (By.XPATH, "//th[@data-title='%s']" %(expected_column_name))
        return self.is_element_present(grid_column_locator)

    def select_target_buy_list_overrides_grid_row_checkbox(self):
        """
        Implementing select target buy list overrides grid row checkbox functionality
        :return:
        """
        for i in range(2):
            target_buy_list_overrides_grid_checkbox_locator = (By.XPATH, "(//div[@data-grid-name='%s']/descendant::input[@type='checkbox'])[%s]" % (self.target_buy_list_overrides_data_grid_name, str(i + 2)))
            self.click_element(target_buy_list_overrides_grid_checkbox_locator, True)

    def click_target_buy_list_overrides_bulk_edit_button(self):
        """
        Implementing click target buy list overrides bulk edit button functionality
        :return:
        """
        self.click_element(self.target_buy_list_overrides_bulk_edit_button_locator, error_message='target buy list overrides bulk edit button locator not found before specified time out')

    def is_target_buy_details_section_present_in_vendor_profile_page(self):
        """
        Implementing is target buy details section present in vendor profile page functionality
        :return: True/False
        """
        return self.is_element_present(self.target_buy_details_section_locator)

    def is_specific_field_on_target_buy_details_section_present(self, field_name):
        """
        Implementing is specific field on target buy details section present functionality
        :param field_name:
        :return: 
        """
        field_locator = (By.XPATH, "//div[contains(@id, 'divcustomerProfileDetails_')]/descendant::label[text()='%s']" % field_name)
        return self.is_element_present(field_locator)

    def set_target_buy_distribution_link_code(self):
        """
        Implementing set target buy distribution link code functionality
        :return:
        """
        self.set_value_into_input_field(self.target_buy_distribution_link_code_textbox_locator, self.random_string_generator(6))
        self.wait_for_ajax_spinner_load()

    def set_target_buy_distribution_receiving_member(self, member_prefix):
        """
        Implementing set target buy distribution receiving member functionality
        :param member_prefix:
        :return:
        """
        member_name = member_prefix + self.random_string_generator(size=4)
        self.set_value_into_input_field(self.target_buy_distribution_receiving_member_textbox_locator, member_name)
        self.wait_for_ajax_spinner_load()

    def set_target_buy_list(self, item_name, is_first_item):
        """
        Implementing set target buy list functionality
        :param item_name:
        :param is_first_item
        :return:
        """
        if is_first_item is True:
            self.single_selection_from_static_kendo_dropdown(self.target_buy_list_kendo_dropdown_arrow_locator, first_item=True)
        else:
            self.single_selection_from_static_kendo_dropdown(self.target_buy_list_kendo_dropdown_arrow_locator, item_name)

    def set_target_buy_list_number_plan(self, item_name, is_first_item):
        """
        Implementing set target buy list number plan functionality
        :param item_name:
        :param is_first_item
        :return:
        """
        if is_first_item is True:
            self.single_selection_from_static_kendo_dropdown(self.target_buy_list_number_plan_kendo_dropdown_arrow_locator, first_item=True)
        else:
            self.single_selection_from_static_kendo_dropdown(self.target_buy_list_number_plan_kendo_dropdown_arrow_locator, item_name)

    def set_target_buy_policy_type(self, type):
        """
        Implementing set target buy policy type functionality
        :param type:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.target_buy_policy_type_kendo_dropdown_locator, type)

    def get_target_buy_policy_grid_row_details(self):
        """
        Implementing get target buy policy grid row details functionality
        :return:
        """
        self.grid_row_data.clear()
        self.grid_row_data = {"Status":"", "Target Buy Policy Type":"", "Call Type":"", "Route Class":""}
        return self.get_grid_row_details(self.target_buy_policies_grid_div_id, self.grid_row_data, data_grid_name=self.target_buy_policy_data_grid_name)

    def click_target_buy_policy_grid_first_row_inline_action_button(self):
        """
        Implementing click target buy policy grid first row inline action button functionality
        :return:
        """
        self.click_inline_action_button(self.target_buy_policies_grid_div_id, None, column_number=2, first_row=True)
        self.wait_for_ajax_spinner_load()

    def click_edit_target_buy_policy_button(self):
        """
        Implementing click edit target buy policy button functionality
        :return:
        """
        self.click_element(self.edit_target_buy_policy_button_locator)

    def click_save_edited_target_buy_policy_button(self):
        """
        Implementing click save edited target buy policy button functionality
        :return:
        """
        self.click_element(self.save_edited_target_buy_policy_button_locator)
        self.click_element(self.confirmation_popup_locator, error_message='success message locator not found before specified time out')
        self.click_element(self.ok_button_locator, error_message='ok button locator not found before specified time out')
        self.wait_for_ajax_spinner_load()

    def click_cancel_edited_target_buy_policy_button(self):
        """
        Implementing click cancel edited target buy policy button functionality
        :return:
        """
        self.click_element(self.cancel_edited_target_buy_policy_button_locator)
