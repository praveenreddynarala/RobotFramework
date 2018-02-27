"""Implementing Carrier screen page objects"""

from TestFramework.Libraries.Pages.base_page import BasePage
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC
import string
import time
import win32com.client as client
import datetime
import TestFramework.Libraries.Modules.database as Database


class CarrierPage(BasePage):
    """
    Contains Carrier UI page locators
    Switch to carrier function
    Get carrier page title function
    Is carrier dashboard tab present function
    Is carrier tab present function
    Is credit management tab present function
    Select carrier tab function
    Get carriers tab header function
    Select credit management tab function
    Get credit management tab header
    Click carrier page inline action button functionality
    Select carrier page inline action item functionality
    Set business type for dialed digits search functionality
    Set number plan type for dialed digits search functionality
    Set number plan for dialed digits search functionality
    Set destination for dialed digits search functionality
    Set dial digits for dialed digits search functionality
    Set begin date for dialed digits search functionality
    Set end date for dialed digits search functionality
    Click dialed digits search button functionality
    Is data loaded in the grid functionality
    Click destination tab functionality
    Set country for destinations search functionality
    Set destination for destinations search functionality
    Set number plan for destinations search functionality
    Set begin date for destinations search functionality
    Set end date for destinations search functionality
    Click destinations search button functionality
    Contains Carrier UI page locators
    Switch to carrier function
    Get carrier page title function
    Is carrier dashboard tab present function
    Is carrier tab present function
    Is credit management tab present function
    Select carrier tab function
    Get carriers tab header function
    Select credit management tab function
    Get credit management tab header
    Click carrier page inline action button
    Set multiple status
    Set price list type
    Set destinations
    Set from date
    Set to date
    Click price lists history search button
    Click price lists history grid inline action button
    Click export to excel button
    Is commercial trunks section displayed
    Is service level assignments section displayed
    Is rate plans section displayed
    Is scenarios section displayed
    Is number plans section displayed
    Is customers and vendors section displayed
    Is bill audit accounts section displayed
    Select price lists history grid multiple rows
    Click compare price lists button
    Verify selected price lists details
    Verify rates grid columns
    Select dial digits tab
    Verify dialed digits columns
    Close compare price lists pop up
    Click carrier relationships tab functionality
    Click dialed digits tab functionality
    Click rates tab functionality
    Is carrier relationships tab loaded functionality
    Is dialed digits tab loaded functionality
    Is rates tab loaded functionality
    Is destinations tab loaded functionality
    Click create carrier button
    Set carrier name
    Set carrier abbreviation
    Set carrier legal name
    Set status
    Set company
    Set carrier number
    Click create carrier save button
    Get carriers grid row details
    Click save carrier profile button
    Expand customers and vendors section
    Click create customer button
    Set customer name
    Set abbreviation
    Click add new rates button
    Set rate plan for add new rate
    Set begin date for add new rate
    Set end date for add new rate
    Set product for add new rate
    Set rating method for add new rate
    Set cli for add new rate
    Click add new rate page title
    Set grid value for add new rate
    Click add new rate save button
    Set rate plan
    Set call type
    Click save customer profile button
    Filter trade source grid
    Click trade source grid inline action button
    Get trade source grid row details
    Set vendor for view price list detail
    Set price list for view price list detail
    Set product name
    Set begin date
    Click rates page search button
    Expand commercial trunks section
    Click create trunk button
    Set trunk name
    Set clli
    Set effective date
    Set description
    Set direction
    Click save button
    Filter trunks grid
    Click trunks grid inline action button
    Get trunks grid row details
    Click create vendor button
    Set vendor name
    Click save vendor profile button
    Expand rate plans section
    Filter rate plan grid
    Click rate plan grid inline action button
    Get rate plan grid row details
    Click create rate plan button
    Set rate plan name
    Set rate plan abbreviation
    Set increase notice period days
    Set decrease notice period days
    Set dial digit change notice period days
    Set business type
    Set traffic direction
    Set tariff type
    Set service level
    Set currency
    Set product catalog
    Set rate plan scope
    Toggle Cost Pricing Indicator
    Set rating method
    Set rate plan category 1
    Set rate plan category 2
    Set begin date for add new rate plan
    Set end date
    Set note
    Set select date
    Click carrier relationships search button
    Contains Carrier UI page locators
    Switch to carrier function
    Get carrier page title function
    Is carrier dashboard tab present function
    Is carrier tab present function
    Is credit management tab present function
    Select carrier tab function
    Get carriers tab header function
    Select credit management tab function
    Get credit management tab header
    Click carrier page inline action button
    Set multiple status
    Set price list type
    Set destinations
    Set from date
    Set to date
    Click price lists history search button
    Click price lists history grid inline action button
    Click export to excel button
    Select price lists history tab
    Expand bill and audit account section
    Click create bill account
    Set bill account
    Set bill account abbreviation
    Set legal name
    Set billing method
    Set billing terms number
    Set billing terms base period
    Set billing terms date type
    Set payment terms number
    Set payment terms base period
    Set payment terms date type
    Set paying account
    Set receiving account
    Set usage time zone
    Set accounting code
    Set origin based rating
    Expand current cycles section
    Set billing cycle template
    Set settlement cycle template
    Set billing cycle begin date
    Set billing cycle end date
    Set settlement cycle begin date
    Set settlement cycle end date
    Set residual traffic window number
    Expand additional fields section
    Set analyst
    Set manager
    Expand statement section
    Set cover letter template
    Set statement template
    Set statement number template
    Set positive adjustment statement template
    Set negative adjustment statement template
    Set residual traffic treatment
    Set shortfall approval method
    Click create bill account save button
    Close add new bill account popup
    Click bill and audit accounts grid inline action button
    Filter bill and audit accounts grid
    Get bill and audit accounts grid row details
    Close edit bill account popup
    Filter credit management grid
    Select credit management grid row checkbox
    Click credit management bulk edit button
    Set trunk provisioning status
    Click bulk edit submit button
    Click save changes button
    Click credit management page inline action button
    Click monitoring details tab
    Click add new transaction button
    Set transaction date
    Set transaction id
    Set transaction type
    Set transaction account type
    Set transaction account
    Set transaction amount
    Set transaction currency
    Set external reference 1
    Set external reference 2
    Set statement begin date
    Set statement end date
    Click add new transaction save button
    Filter transaction history grid
    Get transaction history grid row details
    Click activate credit limit button
    Set carrier name for activate credit limit
    Set credit management status
    Set pre paid customer
    Set credit limit
    Set threshold values
    Set credit limit monitoring
    Set tarrif type assignment
    Click save credit profile button
    Get credit management grid row details
    Is credit management grid inline items visible
    Set credit limit for edit credit profile
    Set user activation approval required
    Set user shutoff approval required
    Click create in audit account
    Set dispute terms number
    Set dispute terms base period
    Set dispute terms date type
    Set default dispute grade
    Set audit account status
    Close add in audit account pop up
    Close edit in audit account pop up
    Click create out audit account
    Set bill account for out audit account
    Close add out audit account pop up
    Close edit out audit account pop up
    Expand scenarios section
    Click create scenario button
    Set scenario type
    Set commercial trunk
    Set country
    Set service
    Filter scenarios grid
    Click scenarios grid inline action button
    Get scenarios grid row details
    Click add new event settlement button
    Click delete event settlement button
    Select event settlement grid row checkbox
    Select scenarios grid row checkbox
    Click delete scenario button
    Click threshold button
    Select threshold grid row checkbox
    Click threshold grid bulk edit button
    Set threshold type for bulk edit
    Set warning levels for bulk edit
    Get threshold grid row details
    Click threshold grid save changes button
    Set monitoring details note
    Click save monitoring details button
    Get trunk provisioning status value
    Get monitoring details note
    Get carrier profile page grid row details function
    Compare carrier dialed digit with excel data function
    Compare carrier rates with excel data function
    Compare carrier destination with excel data function
    Expand number plans section function
    Click add number plan button function
    Set number plan function
    Get number plans grid row details function
    Set begin date for add number plan function
    Click carriers page first row inline action button function
    Is carrier profile page loaded properly function
    Is price list history page loaded properly function
    Is dialed digits search successful function
    Is rates search successful function
    Is destinations search successful function
    Is price list history search successful function
    Click create intercompany button function
    Click price lists history grid first row inline action button function
    Get created carrier name function
    Get created rate plan name function
    Set rates product function
    Get carriers grid column value function
    Get carrier relationships select date function
    Expand service level assignments section function
    Get carrier relationships sections grid row count function
    Get commercial trunks grid effective date function
    Get effective date function
    Get begin date function
    Get end date function
    Get service level grid begin date function
    Get service level grid end date function
    Get rate plans grid begin date function
    Get rate plans grid end date function
    Get number plans grid begin date function
    Get number plans grid end date function
    Click add service level button function
    Get rates tab begin date function
    Get rates tab end date function
    Get destinations tab begin date function
    Get destinations tab end date function
    Get dialed digits grid begin date function
    Get dialed digits grid end date function
    Get rates grid begin date function
    Get rates grid end date function
    Get destinations grid begin date function
    Get destinations grid end date function
    Get credit management grid column value function
    Click credit management grid first row inline action button function
    Get credit profile credit limit function
    Get credit limit last modified date function
    Get transactions history grid column value function
    Get add new transaction date function
    Get statement begin date function
    Get trunk name function
    Set trunk dropdown value function
    Set destination dropdown value function
    Set service level begin date function
    Set service level end date function
    Get rate plan name function
    Set carrier type for carriers search function
    Expand show search form link function
    Click carriers page search button function
    Is inter opco scenarios section present function
    Expand inter opco scenarios section function
    Click inter opco create scenario button function
    Set inter opco name function
    Set in opco function
    Set out opco function
    Click inter opco save button function
    Click inter opco add new event settlement button function
    Single selection from kendo in new event settlement grid function
    Set new event paying account function
    Set new event receiving account function
    Set new event rate plan function
    Set new event direction function
    Select carrier dashboard tab function
    Click network codes link function
    Is network codes link present function
    Is network codes link not present function
    Click number plans inline action button function
    Get agreement from agreement table function
    Get all values from lookup table function
    Is bidirectional available in direction dropdown function
    Compare carrier grid first row data function
    Is create carrier button present function
    Compare sorted data function
    Compare grid column position after altering function
    Set carriers grid settings function
    Sort carriers grid column function
    Get all rows of specific column from carriers grid function
    Drag carriers grid column function
    Get carriers grid column names by order function
    Click carriers grid export to excel button function
    Select rates grid first row checkbox function
    Click bulk edit button function
    Set bulk edit end date function
    Click save changes button with confirmation function
    Is add network destination button not present function
    Click network codes search button function
    Set carrier profile rates grid begin date function
    Check inactive user is not present in seller dropdown function
    Is credit profile tab focused properly in credit profile page function
    Is specific error message is displayed in credit profile page function
    Set remaining credit amount threshold values function
    Is add new transaction pop up present function
    Select deactivate credit limit inline action item function
    Set trunk provisioning status in grid function
    Get created bill account name function
    Set create carrier window carrier category function
    Set rate record for add new rate function
    Is add service level button not present function
    Is add service level inline action button not present function
    Is service level change work order section present function
    Expand service level change work order section function
    Click add_new service level change work order button function
    Select service level commercial trunk function
    Click next button function
    Select service level country function
    Select service level destination function
    Select create service level change work order grid first row checkbox function
    Click submit button function
    Filter service level change work order grid function
    Set service level change work order grid status function
    Click service level change work order grid save changes button function
    Filter service level assignments grid function
    Gt service level assignments grid first row column value function
    Click service level change work order grid first row work order name function
    Click service level change work order report first row work order function
    Get service level change work order report first row end date function
    Sort service level change work order grid column in descending order function
    Click service level assignments first row inline action button function
    Click service level assignments first row inline action button function
    Is service level change work order section not present function
    Click cancel button function
    Get service level change work order grid first row work order name function
    Verify slwo got end dated in database function
    Get credit management enable status function
    Close credit profile tab without saving function
    Is specific column present in service level work order section function
    Click service level work order first row info icon function
    Is service order report pop up page present function
    Is service level change work order grid save changes button present function
    Is service level change work order grid cancel changes button present function
    Is add new service level change work order button present function
    Get service level change work order grid first row column value function
    Click submit button and verify error message function
    Expand bill account recurrent charges section
    Click recurrent charges add new record button function
    Select recurrent charges charge product function
    Select recurrent charges grid active checkbox function
    Set recurrent charges recurring charge name function
    Get grid column position function
    Set recurrent charges recurring charge name function
    Set recurrent charges recurring amount function
    Set recurrent charges recurring charge method function
    Select recurrent charges accounting code function
    Click recurrent charges save changes button function
    """
    # Start: Carrier page locators
    page_header_locator = (By.XPATH, "//div[@id='outercontainer']/descendant::label[@class='page-title']")
    default_tab_header_locator = (By.XPATH, "//div[@id='CarrierTabStrip-2']/descendant::h2")
    carrier_dashboard_tab_locator = (By.XPATH, "//div[@id='CarrierTabStrip']/descendant::li[@aria-controls='CarrierTabStrip-1']/descendant::a")
    carriers_tab_locator = (By.XPATH, "//div[@id='CarrierTabStrip']/descendant::li[@aria-controls='CarrierTabStrip-2']/descendant::a")
    credit_management_tab_locator = (By.XPATH, "//div[@id='CarrierTabStrip']/descendant::li[@aria-controls='CarrierTabStrip-3']/descendant::a")
    carrier_page_title_locator = (By.XPATH, "//label[@class='page-title' and text()='Carrier']")
    grid_row_data = {}
    carrier_page_excel_data_dictionary = {}
    create_carrier_dropdown_arrow_locator = (By.XPATH, "//div[@id='CarriersToolbar']/descendant::span[@class='k-icon k-i-arrow-s']")
    create_intercompany_button_locator = (By.ID, "btnCreateInterCompany")
    price_list_column_name = "Price List"
    carriers_grid_row_count_locator = (By.XPATH, "//div[@id='divBar']/span")
    carrier_type_kendo_dropdown_locator = (By.XPATH, "//label[contains(text(), 'Carrier Type')]/../descendant::input")
    show_search_form_link_locator = (By.XPATH, "//a[text()='Show Search Form']")
    search_button_locator = (By.ID, "btnSearch")
    network_codes_link_locator = (By.ID, "btnCarrierNetworkCodes")
    all_row_data = []
    column_name_list = []
    add_network_destination_button_locator = (By.XPATH, "//a[contains(@id, 'btnNewNetworkDestination') and text()='Add Network Destination']")
    network_codes_search_button_locator = (By.XPATH, "//div[contains(@id, 'networkDestinationList_')]/descendant::button[contains(text(), 'Search') and @class='submitBtn gridSearch']")
    cancel_button_locator = (By.ID, "btnCancel")
    # Start: Carriers tab locators
    carriers_tab_header_locator = (By.XPATH, "//div[@id='CarrierTabStrip-2']/descendant::h2")
    create_carrier_locator = (By.ID, "btnCreateCarrier")
    carriers_grid_div_id = "CarriersGrid"
    carriers_grid_inline_action_button_column_number = 1
    carriers_grid_row_data = {"Carrier Name": "", "Carrier Status": "", "Company": "", "Carrier Type": ""}
    carrier_column_name = "Carrier Name"

    # Start: Create Carrier pop up locators
    carrier_name_textbox_locator = (By.XPATH, "//label[text()='Carrier Name']/../descendant::input")
    carrier_abbreviation_textbox_locator = (By.XPATH, "//label[text()='Carrier Abbreviation']/../descendant::input")
    carrier_legal_name_textbox_locator = (By.XPATH, "//label[text()='Legal Name']/../descendant::input")
    company_kendo_dropdown_locator = (By.XPATH, "//label[text()='Company']/../descendant::input")
    carrier_number_textbox_locator = (By.XPATH, "//label[text()='Carrier Number']/../descendant::input")
    create_carrier_save_button_locator = (By.ID, "btnCCSCAOk")
    create_carrier_success_message_locator = (By.XPATH, "//p[text()='Carrier has been successfully created']")
    carrier_category1_kendo_dropdown_locator = (By.XPATH, "//label[text()='Carrier Category #1']/../descendant::input")
    carrier_category2_kendo_dropdown_locator = (By.XPATH, "//label[text()='Carrier Category #2']/../descendant::input")
    # End: Create Carrier pop up locators

    # Start: Carrier Profile tab locators
    save_carrier_profile_button_locator = (By.XPATH, "//input[@value='Save Carrier Profile' and @id='btnSave']")
    save_carrier_profile_success_message_locator = (By.XPATH, "//p[text()='Carrier Profile has been saved successfully']")
    ok_button_locator = (By.ID, "btnOk")
    carrier_relationships_tab_locator = (By.XPATH, "//a[text()='Carrier Relationships']")
    dialed_digits_tab_locator = (By.XPATH, "//a[text()='Dialed Digits']")
    rates_tab_locator = (By.XPATH, "//a[text()='Rates']")
    destination_tab_locator = (By.XPATH, "//a[text()='Destinations']")
    carrier_profile_information_locator = (By.XPATH, "//div[text()='Carrier Profile Information']")
    # End: Carrier Profile tab locators

    # Start: Carrier Relationships tab locators
    carrier_relationships_tab_header_locator = (By.XPATH, "//h3[text()='Carrier Relationships']")
    trade_source_grid_div_id = "TabContentCarrierRelationship"
    trade_source_grid_inline_action_column_number = "1"
    trade_source_grid_row_data = {"Name": "", "Rate Plan": "", "Call Type": ""}
    create_customer_locator = (By.XPATH, "//a[contains(@id, 'btnCRCreateCustomer')]")
    rate_plan_grid_div_id = "divCRRatePlanGrid"
    rate_plan_data_grid_name = "CarrierRelationshipRatePlansGrid"
    rate_plan_grid_inline_action_column_number = "2"
    rate_plan_grid_row_data = {"Rate Plan": "", "Currency": "", "Business Type": "", "Traffic Direction": "", "Tariff Type": "", "Begin Date": ""}
    create_rate_plan_button_locator = (By.XPATH, "//a[contains(@id, 'btnCRRatePlanCreate')]")
    carrier_relationships_search_button_locator = (By.XPATH, "//div[contains(@id, 'carrierRelationships')]/descendant::button[@class='submitBtn gridSearch']")
    select_date_textbox_locator = (By.XPATH, "//label[text()='Select Date']/../descendant::input")
    commercial_trunks_section_locator = (By.XPATH, "//a[@class='sectionVisibiltyHandler link' and text()='Commercial Trunks']")
    service_level_assignments_section_locator = (By.XPATH, "//a[@class='sectionVisibiltyHandler link' and text()='Service Level Assignments']")
    rate_plans_section_locator = (By.XPATH, "//a[@class='sectionVisibiltyHandler link' and text()='Rate Plans']")
    scenarios_section_locator = (By.XPATH, "//a[@class='sectionVisibiltyHandler link' and text()='Scenarios']")
    number_plans_section_locator = (By.XPATH, "//a[@class='sectionVisibiltyHandler link' and text()='Number Plans']")
    customers_and_vendors_section_locator = (By.XPATH, "//a[@class='sectionVisibiltyHandler link' and text()='Customers and Vendors']")
    bill_audit_accounts_section_locator = (By.XPATH, "//a[@class='sectionVisibiltyHandler link' and text()='Bill & Audit Accounts']")
    create_trunk_button_locator = (By.XPATH, "//a[contains(@id, 'btnCRTrunkCreate')]")
    trunks_grid_div_id = "divCRTrunksGrid"
    trunks_data_grid_name = "CarrierRelationshipTrunksGrid"
    trunks_grid_inline_action_column_number = "1"
    trunks_grid_row_data = {"Name": "", "Effective Date": ""}
    create_vendor_locator = (By.XPATH, "//a[contains(@id, 'btnCRCreateVendor')]")
    price_lists_history_tab_locator = (By.XPATH, "//li[contains(@title, 'Price Lists History')]")
    create_scenario_locator = (By.XPATH, "//a[contains(@id, 'btnCRScenario')]")
    scenarios_grid_div_id = "div_CRScenariosGrid"
    scenarios_data_grid_name = "CarrierRelationshipDestinationScenarioGrid"
    scenarios_grid_inline_action_column_number = 2
    scenarios_grid_checkbox_column_number = 1
    scenarios_grid_row_data = {"Scenario Type": "", "Direction": "", "Commercial Trunk": "", "Country":"", "Service":"", "Start Date":""}
    delete_scenario_button_locator = (By.XPATH, "//a[contains(@id, 'btnDeleteScenario')]")
    add_number_plan_button_locator = (By.XPATH, "//a[contains(@id, 'btnCRNumberPlanAdd') and text()='Add Number Plan']")
    customer_and_vendors_grid_div_id = "TabContentCarrierRelationship"
    customer_and_vendor_grid_count_locator = (By.XPATH, "//div[contains(@id, 'divCRTradeSourceBar')]/descendant::span")
    name_column_name = "Name"
    effective_date_column_name = "Effective Date"
    begin_date_column_name = "Begin Date"
    end_date_column_name = "End Date"
    rate_column_name = "Rate"
    commercial_trunks_grid_div_id = "divCRTrunksGrid"
    service_level_grid_div_id = "divCRServiceLevelGrid"
    commercial_trunks_grid_row_count_locator = (By.XPATH, "//div[contains(@id, 'divCRTrunksBar')]/span")
    service_level_grid_row_count_locator = (By.XPATH, "//div[contains(@id, 'divCRServiceLevelBar')]/span")
    rate_plans_grid_row_count_locator = (By.XPATH, "//div[contains(@id, 'divCRRatePlanBar')]/span")
    number_plans_grid_row_count_locator = (By.XPATH, "//div[contains(@id, 'divCRNumberPlanBar')]/span")
    add_service_level_button_locator = (By.XPATH, "//a[contains(@id, 'btnCRAgreementSLCreate')]")
    inter_opco_scenarios_section_locator = (By.XPATH, "//a[@class='sectionVisibiltyHandler link' and text()='Inter OpCo Scenarios']")
    create_scenario_button_locator = (By.XPATH, "//a[contains(@id, 'btnOpCoScenario')]")
    add_service_level_inline_action_button_locator = (By.XPATH, "//div[contains(@id, 'divCRServiceLevelGrid')]/descendant::div[@class='k-grid-content']/descendant::tbody/tr[1]/td[1]/descendant::span[@class='k-icon k-i-arrow-s']")
    service_level_change_work_order_section_locator = (By.XPATH, "//a[@class='sectionVisibiltyHandler link' and text()='Service Level Change Work Order']")
    service_level_assignments_inline_action_button_column_number = 1
    # Start: Number Plan pop up locator
    number_plan_dropdown_locator = (By.XPATH, "//label[text()='Number Plan']/../descendant::span[@class='k-input']")
    first_number_plan_li_locator = (By.XPATH, "//ul[contains(@id, 'NumberPlan')]/li")
    number_plans_grid_div_id = "divCRNumberPlanGrid"
    number_plans_data_grid_name = "CarrierRelationshipNumberPlanGrid"
    begin_date_inputbox_locator = (By.XPATH, "//label[text()='Begin Date']/../descendant::input")
    direction_dropdown_locator = (By.XPATH, "//label[text() = 'Direction']/../descendant::span[@class='k-input']")
    bidirectional_item_locator = (By.XPATH, "//ul[@aria-hidden='false' and @role='listbox']/descendant::li[text()='Bidirectional']")
    # End: Number Plan pop up locator

    # Start: Create Customer pop up locators
    customer_name_textbox_locator = (By.XPATH, "//label[text()='Customer Name']/../descendant::input")
    abbreviation_textbox_locator = (By.XPATH, "//label[text()='Abbreviation']/../descendant::input")
    ixtools_account_kendo_dropdown_locator = (By.XPATH, "//label[text()='iXTools Account']/../descendant::input")
    rate_plan_kendo_dropdown_locator = (By.XPATH, "//label[contains(text(),'Rate Plan')]/../descendant::input")
    call_type_kendo_dropdown_locator = (By.XPATH, "//label[text()='Call Type']/../descendant::input")
    number_plan_create_kendo_dropdown_locator = (By.XPATH, "//label[text()='Number Plan']/../descendant::input")
    save_customer_profile_button_locator = (By.XPATH, "//input[@value='Save Customer Profile']")
    confirmation_popup_locator = (By.XPATH, "//p[text()='Data has been saved successfully']")
    credit_limit_deactivated_confirmation_popup_locator = (By.XPATH, "//p[text()='Credit Limit was deactivated successfully.']")
    # End: Create Customer pop up locators

    # Start: Commercial trunk pop up locators
    trunk_name_textbox_locator = (By.XPATH, "//label[text() = 'Trunk Name']/../descendant::input")
    clli_textbox_locator = (By.XPATH, "//label[text() = 'CLLI']/../descendant::input")
    effective_date_inputbox_locator = (By.XPATH, "//label[text() = 'Effective Date']/../descendant::input")
    description_textbox_locator = (By.XPATH, "//label[text() = 'Description']/../descendant::textarea")
    direction_kendo_dropdown_locator = (By.XPATH, "//label[text() = 'Direction']/../descendant::input")
    save_button_locator = (By.XPATH, "//button[text() = 'Save']")
    # End: Commercial trunk pop up locators

    # Start: Create Vendor pop up locators
    vendor_name_textbox_locator = (By.XPATH, "//label[text()='Vendor Name']/../descendant::input")
    save_vendor_profile_button_locator = (By.XPATH, "//input[@value='Save Vendor Profile']")
    # End: Create Vendor pop up locators

    # Start: Create Rate Plan pop up locators
    rate_plan_name_textbox_locator = (By.XPATH, "//label[text()='Rate Plan']/../descendant::input")
    rate_plan_abbreviation_textbox_locator = (By.XPATH, "//label[text()='Rate Plan Abbreviation']/../descendant::input")
    increase_notice_period_days_textbox_locator = (By.XPATH, "//label[text()='Increase Notice Period days']/../descendant::input")
    decrease_notice_period_days_textbox_locator = (By.XPATH, "//label[text()='Decrease Notice Period days']/../descendant::input")
    dial_digit_change_notice_period_days_textbox_locator = (By.XPATH, "//label[text()='Dialed Digit Change Notice Period Days']/../descendant::input")
    traffic_direction_kendo_dropdown_locator = (By.XPATH, "//label[text()='Traffic Direction']/../descendant::input")
    tariff_type_kendo_dropdown_locator = (By.XPATH, "//label[text()='Tariff Type']/../descendant::input")
    service_level_kendo_dropdown_locator = (By.XPATH, "//label[text()='Service Level']/../descendant::input")
    currency_kendo_dropdown_locator = (By.XPATH, "//label[text()='Currency']/../descendant::input")
    product_catalog_kendo_dropdown_locator = (By.XPATH, "//label[text()='Product Catalog']/../descendant::input")
    rate_plan_scope_kendo_dropdown_locator = (By.XPATH, "//label[text()='Rate Plan Scope']/../descendant::input")
    cost_pricing_indicator_locator = (By.XPATH, "//label[text()='Cost + Pricing Indicator']/../descendant::input")
    rating_method_kendo_dropdown_locator = (By.XPATH, "//label[text()='Rating Method']/../descendant::input")
    search_rating_method_input_field_locator = (By.XPATH, "//input[@class='k-textbox' and @aria-owns='RSRatingMethod_listbox']")
    rating_method_kendo_dropdown_arrow_locator = (By.XPATH, "//label[text()='Rating Method']/../descendant::span[@class='k-icon k-i-arrow-s']")
    rate_plan_category_1_kendo_dropdown_locator = (By.XPATH, "//label[text()='Rate Plan Category #1']/../descendant::input")
    rate_plan_category_2_kendo_dropdown_locator = (By.XPATH, "//label[text()='Rate Plan Category #2']/../descendant::input")
    begin_date_textbox_locator = (By.XPATH, "//label[contains(text(), 'Begin Date')]/../descendant::input")
    end_date_textbox_locator = (By.XPATH, "//label[contains(text(), 'End Date')]/../descendant::input")
    note_textarea_locator = (By.XPATH, "//label[text()='Note']/../descendant::textarea")
    # End: Create Rate Plan pop up locators

    # Start: Create Scenario pop up locators
    scenario_type_kendo_dropdown_locator = (By.XPATH, "//label[text()='Scenario Type']/../descendant::input")
    commercial_trunk_kendo_dropdown_locator = (By.XPATH, "//label[text()='Commercial Trunk']/../descendant::input")
    service_kendo_dropdown_locator = (By.XPATH, "//label[text()='Service']/../descendant::input")
    event_settlement_country_kendo_dropdown_locator = (By.XPATH, "//label[text()='Country']/../descendant::input")
    add_new_event_settlement_button_locator = (By.ID, "btnAddSettlement")
    event_settlement_grid_div_id = "divCREventSettlementGrid"
    event_settlement_grid_checkbox_column_number = 2
    event_settlement_grid_inline_action_column_number = 3
    delete_event_settlement_button_locator = (By.ID, "btnDeleteSettlement")
    delete_confirmation_message_locator = (By.XPATH, "//p[text()='Are you sure you want to delete the selected rows?']")
    delete_success_message_locator = (By.XPATH, "//p[text()='Data has been deleted successfully']")
    # End: Create Scenario pop up locators

    # Start: Create service level pop up locators
    trunk_kendo_dropdown_locator = (By.XPATH, "//label[contains(text(), 'Trunk')]/../descendant::input")
    destination_kendo_dropdown_locator = (By.XPATH, "//label[contains(text(), 'Destination')]/../descendant::input")
    # End: Create service level pop up locators

    # End: Carrier Relationships tab locators

    # Start: Dialed Digits page locators
    business_type_kendo_dropdown_locator = (By.XPATH, "//label[contains(text(), 'Business Type')]/../descendant::input")
    number_plan_type_kendo_dropdown_locator = (By.XPATH, "//label[text()='Number Plan Type ']/../descendant::input")
    number_plan_kendo_dropdown_locator = (By.XPATH, "//span[@id='selNumberPlan_1']/../../descendant::input")
    dialed_digits_destination_input_field_locator = (By.XPATH, "//input[@id='txtCAPDDDestination_1']")
    dialed_digits_input_field_locator = (By.XPATH, "//input[contains(@id, 'txtCAPDDDialedDigits')]")
    dialed_digits_begin_date_locator = (By.XPATH, "//label[text()='Begin Date']/../descendant::input")
    dialed_digits_end_date_locator = (By.XPATH, "//label[text()='End Date']/../descendant::input")
    dialed_digits_grid_search_button_locator = (By.XPATH, "//div[contains(@id, 'carrierDialedDigits')]/descendant::button[@class='submitBtn gridSearch']")
    no_data_found_locator = (By.XPATH, "//div[@id='tblCustomerPriceList']/descendant::span[text()='No records found.']")
    dialed_digits_grid_div_id = "divCarrierDialedDigits"
    dialed_digits_grid_row_count_locator = (By.XPATH, "//div[contains(@id, 'divCAPDDBar_')]/descendant::span")
    # End: Dialed Digits page locators

    # Start: Rates tab locators
    rate_plan_label_locator = (By.XPATH, "//label[text()='Rate Plan ']")
    rates_grid_div_id = "divCarrierRate"
    rates_grid_row_count_locator = (By.XPATH, "//div[contains(@id, 'divCAPRBar_')]/descendant::span")
    rates_tab_product_textbox_locator = (By.XPATH, "//input[contains(@id, 'txtCAPRProduct')]")
    rates_tab_begin_date_textbox_locator = (By.XPATH, "//input[contains(@id, 'dtpCAPRBeginDate')]")
    rates_tab_end_date_textbox_locator = (By.XPATH, "//input[contains(@id, 'dtpCAPREndDate')]")
    rates_grid_checkbox_column_number = 2
    bulk_edit_button_locator = (By.XPATH, "//a[text()='Bulk Edit']")
    bulk_edit_end_date_inputbox_locator = (By.ID, "Edit-EndDate")
    rates_grid_first_row_begin_date_calendar_icon_locator = (By.XPATH, "//div[contains(@id, 'divCarrierRate') and @data-grid-name='CarrierRatesGrid']/descendant::tbody/tr[1]/td[9]/span[@class='k-grid-cell']")
    # End: Rates tab locators

    # Start: Destinations page locators
    country_kendo_dropdown_locator = (By.XPATH, "//label[text()='Country ']/../descendant::input")
    destinations_input_field_locator = (By.XPATH, "//input[contains(@id, 'txtCAPDDestination')]")
    destinations_number_plan_kendo_dropdown_locator = (By.XPATH, "//span[@id='selCAPDNumberPlan_1']/../../descendant::input")
    destinations_search_button_locator = (By.XPATH, "//div[contains(@id, 'carrierDestinations')]/descendant::button[@class='submitBtn gridSearch']")
    destinations_begin_date_locator = (By.XPATH, "//input[contains(@id, 'dtpCAPDBeginDate')]")
    destinations_end_date_locator = (By.XPATH, "//input[contains(@id, 'dtpCAPDEndDate')]")
    destinations_grid_div_id = "divCarrierDestinations"
    destinations_grid_row_count_locator = (By.XPATH, "//div[contains(@id, 'divCAPDBar_')]/descendant::span")
    # End: Destinations page locators

    # Start: Carrier Rates page locators
    add_new_rate_locator = (By.XPATH, "//a[text()='Add New Rate']")
    product_input_field_locator = (By.XPATH, "//label[text()='Product ']/../descendant::input")
    begin_date_locator = (By.XPATH, "//label[text()='Begin Date']/../descendant::input")
    rates_page_search_button_locator = (By.XPATH, "//div[contains(@id, 'carrierRates')]/descendant::button[@class='submitBtn gridSearch']")

    # Start: Add New Rate page locators
    rate_plan_dropdown_locator = (By.XPATH, "//input[@id='ddlCPNRRatePlan']")
    rate_record_dropdown_locator = (By.XPATH, "//input[@id='RSRateRecord']")
    add_new_rate_begin_date_locator = (By.XPATH, "//input[@id='dpCPNRBeginDate']")
    add_new_rate_end_date_locator = (By.XPATH, "//input[@id='dpCPNREndDate']")
    add_new_rate_product_dropdown_locator = (By.XPATH, "//input[@id='ddlCPNRProduct']")
    rating_method_dropdown_locator = (By.XPATH, "//input[@id='ddlCPNRRatingMethod']")
    cli_dropdown_locator = (By.XPATH, "//input[@id='ddlCPNRCli']")
    add_new_rate_row_element_locator = (By.XPATH, "//div[@id='divCPNRRateItemGrid']/table/descendant::tbody/tr")
    rate_column_locator = (By.XPATH, "//div[@id='divCPNRRateItemGrid']/descendant::th[@data-title='Rate']")
    add_new_rate_page_title_locator = (By.XPATH, "//span[text()='Add New Rate']")
    add_new_rate_save_button_locator = (By.ID, "btnCPNRSave")
    success_message_locator = (By.XPATH, "//p[text()='Data has been saved successfully']")
    # End: Add New Rate page locators
    # End: Carrier Rates page locators
    # End: Carriers tab locators

    # Start: Credit Management tab locators
    credit_management_tab_header_locator = (By.XPATH, "//div[@id='CarrierTabStrip-3']/descendant::h2")
    bulk_edit_locator = (By.ID, "btnBatchEditCreditMgmt")
    threshold_button_locator = (By.ID, "btnThresholds")

    # Start: Threshold page locators
    threshold_grid_div_id = "divCMTGrid"
    threshold_grid_checkbox_column_number = 2
    threshold_grid_bulk_edit_button_locator = (By.ID, "btnCMTBulkEdit")
    threshold_grid_row_details = {"Threshold Type": "", "Level 1 Warning": "", "Level 2 Warning": "", "Level 3 Warning": "", "Shut-off Recommended": ""}
    threshold_grid_save_changes_button = (By.XPATH, "//div[@id='divCMTGrid']/descendant::a[text()='Save changes']")
    # Start: Bulk edit pop up locators
    threshold_type_dropdown_locator = (By.XPATH, "//label[text()='Threshold Type']/../descendant::input")
    level_1_warning_input_field_locator = (By.ID, "Edit-Level1Setting")
    level_2_warning_input_field_locator = (By.ID, "Edit-Level2Setting")
    level_3_warning_input_field_locator = (By.ID, "Edit-Level3Setting")
    shutoff_recommended_input_field_locator = (By.ID, "Edit-ShutOffSetting")
    # End: Bulk edit pop up locators
    # End: Threshold page locators

    # End: Credit Management tab locators

    # Start: Price Lists History page locators
    price_lists_history_grid_div_id = "divCarrierPriceList_1"
    price_lists_history_grid_inline_action_column_number = "2"
    status_kendo_dropdown_locator = (By.XPATH, "//label[contains(text(), 'Status')]/../descendant::input")
    price_list_type_kendo_dropdown_locator = (By.XPATH, "//label[contains(text(), 'Price List Type')]/../descendant::input")
    destinations_textbox_locator = (By.XPATH, "//label[contains(text(), 'Destinations')]/../descendant::input")
    from_date_textbox_locator = (By.XPATH, "//label[contains(text(), 'From')]/../descendant::input")
    to_date_textbox_locator = (By.XPATH, "//label[contains(text(), 'To')]/../descendant::input")
    price_lists_history_search_button_locator = (By.XPATH, "//button[contains(@id, 'searchPriceList')]")
    export_to_excel_button_locator = (By.ID, "ExportToExcel")
    compare_price_lists_list = []
    compare_price_lists_button_locator = (By.XPATH, "//a[contains(@id, 'btnComparePriceList')]")
    price_list_column_locator = (By.XPATH, "//div[@id='divSelectedPriceLists']/descendant::th[@data-title='Price List']")
    rates_grid_destination_column_locator = (By.XPATH, "//div[@id='divComaprePriceListRate']/descendant::th[@data-title='Destination']")
    dial_digits_tab_locator = (By.XPATH, "//a[text()='Dial Digits']")
    dialed_digits_grid_destination_column_locator = (By.XPATH, "//div[@id='divComparePriceListDialedDigit']/descendant::th[@data-title='Destination']")
    dialed_digits_grid_dialed_digit_column_locator = (By.XPATH, "//div[@id='divComparePriceListDialedDigit']/descendant::th[@data-title='Dialed Digit']")
    close_compare_price_list_pop_up_locator = (By.XPATH, "//h4[@class='priceListTitle']/../../../../descendant::span[text()='Close']")
    price_lists_history_grid_checkbox_column_number = 1
    price_list_history_grid_row_count_locator = (By.XPATH, "//div[contains(@id, 'divCarrierPriceListBar_')]/descendant::span")
    price_list_history_page_header_locator = (By.XPATH, "//div[contains(@id, 'priceListHistory')]/descendant::span[contains(text(), 'Price Lists History')]")
    price_list_history_grid_div_generic_id = "divCarrierPriceList"
    # End: Price Lists History page locators

    # Start: View Price List Detail page locators
    vendor_dropdown_locator = (By.XPATH, "//label[text()='Vendor']/../descendant::input")
    price_list_dropdown_locator = (By.XPATH, "//label[text()='Price List']/../descendant::input")
    # End: View Price List Detail page locators

    # Start: Carrier Relationships tab locators
    create_bill_account_button_locator = (By.XPATH, "//a[contains(@id, 'btnCRCreateBillAccount')]")
    bill_and_audit_accounts_grid_div_id = "divBillAuditAccountGrid"
    bill_and_audit_data_grid_name = "CarrierRelationshipBillAuditAccountsGrid"
    bill_and_audit_accounts_grid_inline_action_column_number = "1"
    create_in_audit_account_button_locator = (By.XPATH, "//a[contains(@id, 'btnCRCreateInAuditAccount')]")
    create_out_audit_account_button_locator = (By.XPATH, "//a[contains(@id, 'btnCRCreateOutAuditAccount')]")

    # Start: Create Bill Account pop up locators
    bill_account_textbox_locator = (By.XPATH, "//label[text()='Bill Account']/../descendant::input")
    bill_account_abbreviation_locator = (By.XPATH, "//label[text()='Bill Account Abbreviation']/../descendant::input")
    legal_name_locator = (By.XPATH, "//label[text()='Legal Name']/../descendant::input")
    billing_method_dropdown_locator = (By.XPATH, "//label[text()='Billing Method']/../descendant::input")
    billing_terms_value_locator = (By.XPATH, "//label[text()='Billing Terms']/../descendant::input")
    billing_terms_base_period_locator = (By.XPATH, "//label[text()='Billing Terms']/../descendant::input[@id='BillingTermBasePeriodId']")
    billing_terms_date_type_locator = (By.XPATH, "//label[text()='Billing Terms']/../descendant::input[@id='BillingTermDateTypeId']")
    payment_terms_value_locator = (By.XPATH, "//label[text()='Payment Terms']/../descendant::input")
    payment_terms_base_period_locator = (By.XPATH, "//label[text()='Payment Terms']/../descendant::input[@id='PaymentTermBasePeriodId']")
    payment_terms_date_type_locator = (By.XPATH, "//label[text()='Payment Terms']/../descendant::input[@id='PaymentTermDateTypeId']")
    paying_account_dropdown_locator = (By.XPATH, "//label[text()='Paying Account']/../descendant::input")
    receiving_account_dropdown_locator = (By.XPATH, "//label[text()='Receiving Account']/../descendant::input")
    usage_time_zone_dropdown_locator = (By.XPATH, "//label[text()='Usage Time Zone']/../descendant::input")
    accounting_code_dropdown_locator = (By.XPATH, "//label[text()='Accounting Code']/../descendant::input")
    origin_based_rating_dropdown_locator = (By.XPATH, "//label[text()='Origin Based Rating']/../descendant::input")

    current_cycles_locator = (By.XPATH, "//a[text()='Current Cycles']")
    billing_cycle_template_dropdown_locator = (By.XPATH, "//label[text()='Billing Cycle Template']/../descendant::input")
    settlement_cycle_template_dropdown_locator = (By.XPATH, "//label[text()='Settlement Cycle Template']/../descendant::input")
    billing_cycle_begin_date_locator = (By.XPATH, "//input[@id='BillingCycle_BeginDate']")
    billing_cycle_end_date_locator = (By.XPATH, "//input[@id='BillingCycle_EndDate']")
    settlement_cycle_begin_date_locator = (By.XPATH, "//input[@id='SettlementCycle_BeginDate']")
    settlement_cycle_end_date_locator = (By.XPATH, "//input[@id='SettlementCycle_EndDate']")
    residual_traffic_window_locator = (By.XPATH, "//label[text()='Residual Traffic Window']/../descendant::input")

    additional_fields_locator = (By.XPATH, "//a[text()='Additional Fields']")
    billing_analyst_dropdown_locator = (By.XPATH, "//label[text()='Billing Analyst']/../descendant::input")
    billing_manager_dropdown_locator = (By.XPATH, "//label[text()='Billing Manager']/../descendant::input")

    statement_section_locator = (By.XPATH, "//a[text()='Statement']")
    cover_letter_template_locator = (By.XPATH, "//label[text()='Cover Letter Template']/../descendant::span[@class='k-icon k-i-arrow-s']")
    statement_template_locator = (By.XPATH, "//label[text()='Statement Template']/../descendant::span[@class='k-icon k-i-arrow-s']")
    statement_number_template_locator = (By.XPATH, "//label[text()='Statement Number Template']/../descendant::span[@class='k-icon k-i-arrow-s']")
    positive_adjustment_statement_template_locator = (By.XPATH, "//label[text()='Adjustment Statement Template (+Amounts)']/../descendant::span[@class='k-icon k-i-arrow-s']")
    negative_adjustment_statement_template_locator = (By.XPATH, "//label[text()='Adjustment Statement Template (-Amounts)']/../descendant::span[@class='k-icon k-i-arrow-s']")
    residual_traffic_treatment_locator = (By.XPATH, "//label[text()='Residual Traffic Treatment']/../descendant::span[@class='k-icon k-i-arrow-s']")
    shortfall_approval_method_locator = (By.XPATH, "//label[text()='Shortfall Approval Method']/../descendant::span[@class='k-icon k-i-arrow-s']")

    create_bill_account_save_button_locator = (By.ID, "btnSave")
    create_bill_account_success_message_locator = (By.XPATH, "//span[text()='Success']")
    popup_close_button_locator = (By.XPATH, "//span[text()='Add Bill Account']/../descendant::span[text()='Close']")
    bill_and_audit_grid_row = {"Name": "", "Billing Method": "", "Paying Account": "", "Receiving Account": ""}
    edit_popup_close_button_locator = (By.XPATH, "//span[text()='Edit Bill Account']/../descendant::span[text()='Close']")

    recurrent_charges_locator = (By.XPATH, "//div[@id='divBillRecurringChargesContainer']/descendant::a[text()='Recurrent Charges']")
    recurrent_charges_add_new_record_button_locator = (By.ID, "btnAddNewBillRecurringCharge")
    recurrent_charges_grid_div_id = "divBillAccountRecurrentCharges"
    charge_product_column_name = "Charge Product"
    recurrent_charges_data_grid_name = "BillRecurringChargeGrid"
    recurrent_charges_grid_active_column_name = "Active"
    recurrent_charges_recurring_charge_name_column_name = "Recurring Charge Name"
    recurrent_charges_recurring_begin_date_column_name = "Begin Date"
    recurrent_charges_amount_column_name = "Amount"
    recurrent_charges_charge_method_column_name = "Charge Method"
    recurrent_charges_accounting_code_column_name = "Accounting Code"
    recurrent_charges_save_changes_button_locator = (By.XPATH, "//div[@id='divBillAccountRecurrentCharges']/descendant::a[@class='k-button k-button-icontext k-grid-save-changes']")
    # End: Create Bill Account pop up locators
    # End: Carrier Relationships tab locators

    # Start: Credit Management tab locators
    credit_management_grid_div_id = "divCreditManagementGrid"
    credit_management_grid_checkbox_column_number = 2
    credit_management_bulk_edit_button_locator = (By.ID, "btnBatchEditCreditMgmt")
    trunk_provisioning_status_dropdown_locator = (By.XPATH, "//label[text()='Trunk Provisioning Status']/../descendant::input")
    bulk_edit_submit_button_locator = (By.ID, "BulkEditSubmit")
    save_changes_button_locator = (By.XPATH, "//a[text()='Save changes']")
    credit_management_grid_inline_action_column_number = 3
    activate_credit_limit_button_locator = (By.ID, "btnActivateCreditLimit")
    credit_management_grid_row_details = {"Carrier Name": "", "Currency": "", "Credit Limit": ""}
    credit_profile_inline_item_locator = (By.XPATH, "//ul[@id='Actions_listbox']/descendant::li[text()='Credit Profile']")
    monitoring_details_inline_item_locator = (By.XPATH, "//ul[@id='Actions_listbox']/descendant::li[text()='Monitoring Details']")
    enter_transactions_inline_item_locator = (By.XPATH, "//ul[@id='Actions_listbox']/descendant::li[text()='Enter Transactions']")
    deactivate_credit_limit_inline_item_locator = (By.XPATH, "//ul[@id='Actions_listbox']/descendant::li[text()='Deactivate Credit Limit']")
    monitoring_details_note_textarea_locator = (By.ID, "txtNotes_")
    save_monitoring_details_button_loctor = (By.ID, "btnEdit")
    trunk_provisioning_status_value_locator = (By.XPATH, "//div[@id='CommercialTrunkstatus']/descendant::span[@class='k-input']")
    credit_management_grid_row_count_locator = (By.XPATH, "//div[@id='divBarCreditMgmt']/span")
    trunk_provisioning_status_column_name = "Trunk Provisioning Status"
    credit_management_data_grid_name = "CreditManagementGrid"
    # Start: Credit Profile page locators
    monitoring_details_tab_locator = (By.XPATH, "//a[text()='Monitoring Details']")
    add_new_transaction_button_locator = (By.ID, "btnAddNewTransaction")

    transaction_date_locator = (By.XPATH, "//label[text()='Transaction Date']/../descendant::input")
    transaction_id_locator = (By.XPATH, "//label[text()='Transaction ID']/../descendant::input")
    transaction_type_locator = (By.XPATH, "//label[text()='Transaction Type']/../descendant::input")
    transaction_account_type_locator = (By.XPATH, "//label[text()='Transaction Account Type']/../descendant::input")
    transaction_account_locator = (By.XPATH, "//label[text()='Transaction Account']/../descendant::input")
    transaction_amount_locator = (By.XPATH, "//label[text()='Transaction Amount']/../descendant::input")
    transaction_currency_locator = (By.XPATH, "//label[text()='Transaction Currency']/../descendant::input")
    external_reference_1_locator = (By.XPATH, "//label[text()='External Reference 1']/../descendant::input")
    external_reference_2_locator = (By.XPATH, "//label[text()='External Reference 2']/../descendant::input")
    statement_begin_date_locator = (By.XPATH, "//label[text()='Statement Begin Date ']/../descendant::input")
    statement_end_date_locator = (By.XPATH, "//label[text()='Statement End Date ']/../descendant::input")
    new_transaction_save_button_locator = (By.ID, "btnCMTransactionSave")
    transaction_history_grid_div_id = "divTransactionsHistoryGrid"
    transaction_history_grid_row_details = {"Transaction Type": "", "Transaction Currency": "", "Transaction Amount": "", "Transaction Id": "", "Transaction Date": ""}
    carrier_name_dropdown_locator = (By.XPATH, "//label[text()='Carrier Name']/../descendant::input")
    credit_management_enabled_locator = (By.XPATH, "//label[text()='Credit Management Enabled']/../descendant::input")
    pre_paid_customer_locator = (By.XPATH, "//label[text()='Pre-Paid Customer']/../descendant::input")
    credit_limit_locator = (By.XPATH, "//label[text()='Credit Limit']/../descendant::input")
    level_1_threshold_locator = (By.ID, "txtLevel1Percentage")
    level_2_threshold_locator = (By.ID, "txtLevel2Percentage")
    level_3_threshold_locator = (By.ID, "txtLevel3Percentage")
    shutoff_threshold_locator = (By.ID, "txtShutoffPercentage")
    credit_limit_monitoring_locator = (By.XPATH, "//label[text()='Credit Limit Monitoring:']/../descendant::input")
    tarrif_type_assignment_locator = (By.XPATH, "//label[text()='Tarrif Type Assignment']/../descendant::input")
    save_credit_profile_button_locator = (By.ID, "btnSave")
    user_activation_approval_required_locator = (By.XPATH, "//label[text()='User Activation Approval Required']/../descendant::input")
    user_shutoff_approval_required_locator = (By.XPATH, "//label[text()='User Shutoff Approval Required']/../descendant::input")
    credit_limit_last_modified_date_locator = (By.XPATH, "//label[text()='Credit Limit Last Modified']/../descendant::div[@class='field-wrapper']")
    credit_limit_history_grid_div_id = "divCreditLimitHistoryGrid"
    date_time_column_name = "Date/Time"
    transaction_history_grid_count_locator = (By.XPATH, "//div[@id='divTHGCountSingle']/span")
    level_1_remaining_credit_amount_threshold_locator = (By.ID, "txtLevel1Amount")
    level_2_remaining_credit_amount_threshold_locator = (By.ID, "txtLevel2Amount")
    level_3_remaining_credit_amount_threshold_locator = (By.ID, "txtLevel3Amount")
    shutoff_remaining_credit_amount_threshold_locator = (By.ID, "txtShutoffAmount")
    add_new_transaction_pop_up_locator = (By.XPATH, "//span[@id='SaveCMTransaction_wnd_title']")
    credit_management_enabled_text_locator = (By.XPATH, "//label[text()='Credit Management Enabled']/../descendant::span[@class='k-input']")
    credit_profile_close_tab_img_locator = (By.XPATH, "//ul[contains(@class, 'k-reset k-tabstrip-items')]/descendant::span[contains(text(),'Credit Profile')]/../img")
    # End: Credit Profile page locators
    # End: Credit Management tab locators

    # Start: Create In Audit Account pop up locators
    audit_account_textbox_locator = (By.XPATH, "//label[text()='Audit Account ']/../descendant::input")
    audit_account_abbreviation_locator = (By.XPATH, "//label[text()='Audit Account Abbreviation']/../descendant::input")
    dispute_terms_value_locator = (By.XPATH, "//label[text()='Dispute Terms']/../descendant::input")
    dispute_terms_base_period_locator = (By.XPATH, "//label[text()='Dispute Terms']/../descendant::input[@id='DisputeTermBasePeriodId']")
    dispute_terms_date_type_locator = (By.XPATH, "//label[text()='Dispute Terms']/../descendant::input[@id='DisputeTermDateTypeId']")

    default_dispute_grade_locator = (By.XPATH, "//label[text()='Default Dispute Grade']/../descendant::input")
    audit_account_status_locator = (By.XPATH, "//label[text()='Audit Account Status']/../descendant::input")
    add_in_audit_account_close_button_locator = (By.XPATH, "//span[text()='Add In Audit Account']/../descendant::span[text()='Close']")
    edit_in_audit_account_close_button_locator = (By.XPATH, "//span[text()='Edit In Audit Account']/../descendant::span[text()='Close']")
    audit_analyst_dropdown_locator = (By.XPATH, "//label[text()='Audit Analyst']/../descendant::input")
    audit_manager_dropdown_locator = (By.XPATH, "//label[text()='Audit Manager']/../descendant::input")
    add_out_audit_account_close_button_locator = (By.XPATH, "//span[text()='Add Out Audit Account']/../descendant::span[text()='Close']")
    edit_out_audit_account_close_button_locator = (By.XPATH, "//span[text()='Edit Out Audit Account']/../descendant::span[text()='Close']")
    # End: Create In Audit Account pop up locators

    # Start: Create Out Audit Account pop up locators
    bill_account_dropdown_locator = (By.XPATH, "//label[text()='Bill Account']/../descendant::input")
    # End: Create Out Audit Account pop up locators

    # Start: Create Inter Opco Scenario pop up locators
    inter_opco_scenario_name_textfield_locator = (By.XPATH, "//label[text()='Name']/../descendant::input")
    in_opco_kendo_dropdown_locator = (By.XPATH, "//label[text()='In OpCo']/../descendant::input")
    out_opco_kendo_dropdown_locator = (By.XPATH, "//label[text()='Out OpCo']/../descendant::input")
    inter_opco_save_button_locator = (By.ID, "btnNewOpCoScenarioSave")
    inter_opco_add_new_event_settlement_button_locator = (By.ID, "btnOpCoAddSettlement")
    new_event_settlement_grid_div_id = "divOpCoEventSettlementGrid"
    paying_account_column_name = "Paying Account"
    receiving_account_column_name = "Receiving Account"
    rate_plan_column_name = "Rate Plan"
    direction_column_name = "Direction"
    paying_account_ul_id = "PayingAccountId_listbox"
    receiving_account_ul_id = "ReceivingAccountId_listbox"
    rate_plan_ul_id = "RatePlanId_listbox"
    direction_ul_id = "DirectionId_listbox"
    # End: Create Inter Opco Scenario pop up locators

    # Start: Service level change work order section locators
    add_new_service_level_change_work_order_button_locator = (By.XPATH, "//a[contains(@id, 'btnCRServiceLevelWOCreate')]")
    next_button_locator = (By.XPATH, "//button[text()='Next']")
    service_level_country_select_id = "from_slwoCountry"
    service_level_destinations_select_id = "from_slwoDestination"
    destination_move_button_locator = (By.ID, "btnMoveDest_slwoDestination")
    submit_button_locator = (By.XPATH, "//button[text()='Submit']")
    create_service_level_change_work_order_grid_first_row_checkbox_locator = (By.XPATH, "//div[@id='divNewServiceLevelChangeWorkOrderGrid']/descendant::tbody/tr/descendant::input[@type='checkbox']")
    service_level_change_work_order_grid_div_id = "divCRServiceLvelChangeWorkOrderGrid"
    status_column_name = "Status"
    service_level_change_work_order_grid_save_changes_button_locator = (By.XPATH, "//div[contains(@id, 'divCRServiceLvelChangeWorkOrderGrid')]/descendant::a[text()='Save changes']")
    service_level_change_work_order_data_grid_name = "CarrierRelationshipServiceLevelChangeWorkOrderGrid"
    work_order_name_column_name = "Work Order Name"
    work_order_report_iframe_locator = (By.XPATH, "//div[@id='ServiceLevelWorkOrderReport']/iframe")
    level_2_iframe_locator = (By.NAME, "Level2Detail_Row1")
    service_level_work_order_report_first_row_work_order_name_locator = (By.ID, "WorkOrder_Row1")
    service_level_work_order_report_first_row_end_date_locator = (By.ID, "EndDate_Row1")
    service_level_grid_first_row_work_order_name_locator = (By.XPATH, "//a[@data-role='serviceLevel-workOrder']")
    service_level_work_order_grid_first_row_info_icon_locator = (By.XPATH, "//div[contains(@id, 'divCRServiceLvelChangeWorkOrderGrid_')]/descendant::div[@class='k-grid-content']/descendant::tr[1]/td[2]")
    service_order_pop_up_page_header_locator = (By.XPATH, "//span[@class='k-window-title' and contains(text(), 'Carrier Profile')]")
    service_level_change_work_order_grid_cancel_changes_button_locator = (By.XPATH, "//div[contains(@id, 'divCRServiceLvelChangeWorkOrderGrid')]/descendant::a[text()='Cancel changes']")
    move_all_item_button_locator = (By.XPATH, "//input[contains(@id, 'btnMoveAllDest')]")
    custom_rc_error_message_locator = (By.XPATH, "//p[contains(text(), 'Cannot select Any as a destination for Custom Route Class')]")
    # End: Service level change work order section locators

    # Start: Service level change work order section locators
    service_level_assignments_grid_div_id = "divCRServiceLevelGrid"
    # End: Service level change work order section locators
    # End: Carrier Relationships tab locators
    # End: Carrier page locators

    def switch_to_carrier(self):
        """
        Implementing switch to carrier functionality
        :return:
        """
        self.switch_to_window()
        self.accept_ssl_certificate()

    def get_carrier_page_title(self):
        """
        Implementing get carrier page title functionality
        :return: carrier page title
        """
        self.wait().until(EC.visibility_of_element_located(self.default_tab_header_locator), 'default tab header not found before specified time')
        return self.page_title()

    def is_carrier_dashboard_tab_present(self):
        """
        Implementing is carrier dashboard tab present functionality
        :return: True/False
        """
        is_present = self.is_element_present(self.carrier_dashboard_tab_locator)
        return is_present

    def is_carriers_tab_present(self):
        """
        Implementing is carriers tab present functionality
        :return: True/False
        """
        is_present = self.is_element_present(self.carriers_tab_locator)
        return is_present

    def is_credit_management_tab_present(self):
        """
        Implementing is credit management tab present functionality
        :return: True/False
        """
        is_present = self.is_element_present(self.credit_management_tab_locator)
        return is_present

    def select_carriers_tab(self):
        """
        Implementing select carriers tab functionality
        :return:
        """
        self.select_static_tab(self.carriers_tab_locator, 'carriers tab not found before specified time')

    def get_carriers_tab_header(self):
        """
        Implementing get carriers tab header functionality
        :return: carriers tab header
        """
        carriers_tab_header_element = self.wait(30).until(EC.visibility_of_element_located(self.carriers_tab_header_locator), 'carriers tab header not found before specified time')
        return carriers_tab_header_element.text

    def select_credit_management_tab(self):
        """
        Implementing select credit management tab functionality
        :return:
        """
        self.select_static_tab(self.credit_management_tab_locator, 'credit management tab not found before specified time')

    def get_credit_management_tab_header(self):
        """
        Implementing get credit management tab header functionality
        :return: credit management tab header
        """
        credit_management_tab_header_element = self.wait(30).until(EC.visibility_of_element_located(self.credit_management_tab_header_locator), 'credit management tab header not found before specified time')
        return credit_management_tab_header_element.text

    def click_carrier_page_inline_action_button(self, carrier):
        """
        Implementing click carrier page inline action button functionality
        :param carrier: carrier name
        :return:
        """
        self.click_inline_action_button(self.carriers_grid_div_id, carrier, self.carriers_grid_inline_action_button_column_number)
        self.wait_for_ajax_spinner_load()

    def set_business_type_for_dialed_digits_search(self, business_type):
        """
        Implementing set business type for dialed digits search functionality
        :param business_type:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.business_type_kendo_dropdown_locator, business_type)
        self.wait_for_ajax_spinner_load()

    def set_number_plan_type_for_dialed_digits_search(self, number_plan_type):
        """
        Implementing set number plan type for dialed digits search functionality
        :param number_plan_type:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.number_plan_type_kendo_dropdown_locator, number_plan_type)
        self.wait_for_ajax_spinner_load()

    def set_number_plan_for_dialed_digits_search(self, number_plan_list):
        """
        Implementing set number plan for dialed digits search functionality
        :param number_plan_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.number_plan_kendo_dropdown_locator, number_plan_list)
        self.wait_for_ajax_spinner_load()

    def set_destination_for_dialed_digits_search(self, destination):
        """
        Implementing set destination for dialed digits search functionality
        :param destination:
        :return:
        """
        self.set_value_into_input_field(self.dialed_digits_destination_input_field_locator, destination)

    def set_dialed_digits_for_dialed_digits_search(self, dialed_digits):
        """
        Implementing set dial digits for dialed digits search functionality
        :param dialed_digits:
        :return:
        """
        self.set_value_into_input_field(self.dialed_digits_input_field_locator, dialed_digits)

    def set_begin_date_for_dialed_digits_search(self, begin_date):
        """
        Implementing set begin date for dialed digits search functionality
        :param begin_date:
        :return:
        """
        self.set_value_into_input_field(self.dialed_digits_begin_date_locator, begin_date)

    def set_end_date_for_dialed_digits_search(self, end_date):
        """
        Implementing set end date for dialed digits search functionality
        :param end_date:
        :return:
        """
        self.set_value_into_input_field(self.dialed_digits_end_date_locator, end_date)

    def click_dialed_digits_search_button(self):
        """
        Implementing click dialed digits search button functionality
        :return:
        """
        search_button_element = self.wait().until(EC.element_to_be_clickable(self.dialed_digits_grid_search_button_locator), 'search button not found before specified time')
        search_button_element.click()
        self.wait_for_ajax_spinner_load()

    def is_data_loaded_in_the_grid(self):
        """
        Implementing is data loaded in the grid functionality
        :return: True/False
        """
        data_found = None
        try:
            self.wait(5).until(EC.presence_of_element_located(self.no_data_found_locator))
            data_found = False
        except:
            data_found = True
        finally:
            return data_found

    def click_destinations_tab(self):
        """
        Implementing click destination tab functionality
        :return:
        """
        destination_tab_element = self.wait().until(EC.presence_of_element_located(self.destination_tab_locator), 'destination tab locator not found before specified time')
        self.script_executor_click(destination_tab_element)
        self.wait_for_ajax_spinner_load()

    def set_country_for_destinations_search(self, country_list):
        """
        Implementing set country for destinations search functionality
        :param country_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.country_kendo_dropdown_locator, country_list)
        self.wait_for_ajax_spinner_load()

    def set_destination_for_destinations_search(self, destination):
        """
        Implementing set destination for destinations search functionality
        :param destination:
        :return:
        """
        self.set_value_into_input_field(self.destinations_input_field_locator, destination)

    def set_number_plan_for_destinations_search(self, number_plan_list):
        """
        Implementing set number plan for destinations search functionality
        :param number_plan_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.destinations_number_plan_kendo_dropdown_locator, number_plan_list)
        self.wait_for_ajax_spinner_load()

    def set_begin_date_for_destinations_search(self, begin_date):
        """
        Implementing set begin date for destinations search functionality
        :param begin_date:
        :return:
        """
        self.set_value_into_input_field(self.destinations_begin_date_locator, begin_date)

    def set_end_date_for_destinations_search(self, end_date):
        """
        Implementing set end date for destinations search functionality
        :param end_date:
        :return:
        """
        self.set_value_into_input_field(self.destinations_end_date_locator, end_date)

    def click_destinations_search_button(self):
        """
        Implementing click destinations search button functionality
        :return:
        """
        search_button_element = self.wait().until(EC.element_to_be_clickable(self.destinations_search_button_locator), 'destinations search button locator not found before specified time')
        self.script_executor_click(search_button_element)
        self.wait_for_ajax_spinner_load()

    def set_multiple_status(self, status_list):
        """
        Implementing set multiple status functionality
        :param status_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.status_kendo_dropdown_locator, status_list)
        carrier_page_title_element = self.wait().until(EC.visibility_of_element_located(self.carrier_page_title_locator), 'carrier page title locator not found before specified time out')
        carrier_page_title_element.click()
        self.wait_for_ajax_spinner_load()

    def set_price_list_type(self, price_list_type):
        """
        Implementing set price list type functionality
        :param price_list_type:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.price_list_type_kendo_dropdown_locator, price_list_type)
        self.wait_for_ajax_spinner_load()

    def set_destinations(self, destinations):
        """
        Implementing set destinations functionality
        :param destinations:
        :return:
        """
        self.set_value_into_input_field(self.destinations_textbox_locator, destinations)

    def set_from_date(self, from_date):
        """
        Implementing set from date functionality
        :param from_date:
        :return:
        """
        self.set_value_into_input_field(self.from_date_textbox_locator, from_date)

    def set_to_date(self, to_date):
        """
        Implementing set from date functionality
        :param to_date:
        :return:
        """
        self.set_value_into_input_field(self.to_date_textbox_locator, to_date)

    def click_price_lists_history_search_button(self):
        """
        Implementing click price lists history search button
        :return:
        """
        price_lists_history_search_button_element = self.wait().until(EC.element_to_be_clickable(self.price_lists_history_search_button_locator), 'price lists history search button locator not found before specified time out')
        price_lists_history_search_button_element.click()
        self.wait_for_ajax_spinner_load()

    def click_price_lists_history_grid_inline_action_button(self, price_list_name):
        """
        Implementing click carriers page inline action button functionality
        :param price_list_name:
        :return:
        """
        self.click_inline_action_button(self.price_lists_history_grid_div_id, price_list_name, self.price_lists_history_grid_inline_action_column_number)
        self.wait_for_ajax_spinner_load()

    def click_export_to_excel_button(self):
        """
        Implementing click export to excel button
        :return:
        """
        export_to_excel_button_element = self.wait().until(EC.element_to_be_clickable(self.export_to_excel_button_locator), 'export to excel button locator not found before specified time out')
        self.script_executor_click(export_to_excel_button_element)
        self.wait_for_ajax_spinner_load()
        self.switch_to_default_window()

    def is_commercial_trunks_section_displayed(self):
        """
        Implementing is commercial trunks section displayed functionality
        :return: True/False
        """
        is_displayed = self.is_element_present(self.commercial_trunks_section_locator)
        return is_displayed

    def is_service_level_assignments_section_displayed(self):
        """
        Implementing is service level assignments section displayed functionality
        :return: True/False
        """
        is_displayed = self.is_element_present(self.service_level_assignments_section_locator)
        return is_displayed

    def is_rate_plans_section_displayed(self):
        """
        Implementing is rate plans section displayed functionality
        :return: True/False
        """
        is_displayed = self.is_element_present(self.rate_plans_section_locator)
        return is_displayed

    def is_scenarios_section_displayed(self):
        """
        Implementing is scenarios section displayed functionality
        :return: True/False
        """
        is_displayed = self.is_element_present(self.scenarios_section_locator)
        return is_displayed

    def is_number_plans_section_displayed(self):
        """
        Implementing is number plans section displayed functionality
        :return: True/False
        """
        is_displayed = self.is_element_present(self.number_plans_section_locator)
        return is_displayed

    def is_customers_and_vendors_section_displayed(self):
        """
        Implementing is customers and vendors section displayed functionality
        :return: True/False
        """
        is_displayed = self.is_element_present(self.customers_and_vendors_section_locator)
        return is_displayed

    def is_bill_audit_accounts_section_displayed(self):
        """
        Implementing is bill audit accounts section displayed functionality
        :return: True/False
        """
        is_displayed = self.is_element_present(self.bill_audit_accounts_section_locator)
        return is_displayed

    def select_price_lists_history_grid_multiple_rows(self):
        """
        Implementing select price lists history grid multiple rows functionality
        :return:
        """
        self.compare_price_lists_list = []
        column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::th[@data-title='%s']" % (self.price_list_history_grid_div_generic_id, self.price_list_column_name))
        column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) + 1
        for row in range(0, 2):
            column_value_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::tbody/descendant::tr[%s]/td[%s]/span" % (self.price_list_history_grid_div_generic_id, (row + 1), str(column_index)))
            column_value_element = self.wait().until(EC.presence_of_element_located(column_value_locator), 'column value locator not found before specified time out')
            self.compare_price_lists_list.append(column_value_element.text)
            self.select_grid_row_checkbox(self.price_list_history_grid_div_generic_id, column_value_element.text, self.price_lists_history_grid_checkbox_column_number)

    def click_compare_price_lists_button(self):
        """
        Implementing click compare price lists button
        :return:
        """
        compare_price_lists_button_element = self.wait().until(EC.element_to_be_clickable(self.compare_price_lists_button_locator), 'compare price lists button locator not found before specified time out')
        compare_price_lists_button_element.click()
        self.wait_for_ajax_spinner_load()

    def verify_selected_price_lists_details(self):
        """
        Implement verify selected price lists details functionality
        :return: True/False
        """
        is_verified = True
        for price_list in self.compare_price_lists_list:
            column_value_locator = (By.XPATH, "//div[@id='divSelectedPriceLists']/descendant::div[@class='k-grid-content']/descendant::span[text()='%s']" % price_list)
            is_column_present = self.is_element_present(column_value_locator)
            if is_column_present is False:
                is_verified = False
                break
        return is_verified

    def verify_rates_grid_columns(self):
        """
        Implement verify rates grid columns functionality
        :return: True/False
        """
        return self.is_element_present(self.rates_grid_destination_column_locator)

    def select_dial_digits_tab(self):
        """
        Implement select dial digits tab functionality
        :return:
        """
        self.click_element(self.dial_digits_tab_locator, True)

    def verify_dialed_digits_columns(self):
        """
        Implement verify dialed digits columns functionality
        :return: True/False
        """
        is_verified = True
        if self.is_element_present(self.dialed_digits_grid_destination_column_locator) is False or self.is_element_present(self.dialed_digits_grid_dialed_digit_column_locator) is False:
            is_verified = False
        return is_verified

    def close_compare_price_lists_pop_up(self):
        """
        Implement close compare price lists pop up functionality
        :return:
        """
        close_compare_price_list_pop_up_element = self.wait().until(EC.element_to_be_clickable(self.close_compare_price_list_pop_up_locator), 'close compare price list pop up locator not found before specified time')
        close_compare_price_list_pop_up_element.click()

    def click_carrier_relationships_tab(self):
        """
        Implementing click carrier relationships tab functionality
        :return:
        """
        carrier_relationships_tab_element = self.wait().until(EC.presence_of_element_located(self.carrier_relationships_tab_locator), 'carrier relationships tab locator not found before specified time')
        self.script_executor_click(carrier_relationships_tab_element)
        self.wait_for_ajax_spinner_load()

    def click_dialed_digits_tab(self):
        """
        Implementing click dialed digits tab functionality
        :return:
        """
        dialed_digits_tab_element = self.wait().until(EC.presence_of_element_located(self.dialed_digits_tab_locator), 'dialed digits tab locator not found before specified time')
        self.script_executor_click(dialed_digits_tab_element)
        self.wait_for_ajax_spinner_load()

    def click_rates_tab(self):
        """
        Implementing click rates tab functionality
        :return:
        """
        rates_tab_element = self.wait().until(EC.presence_of_element_located(self.rates_tab_locator), 'rates tab locator not found before specified time')
        self.script_executor_click(rates_tab_element)
        self.wait_for_ajax_spinner_load()

    def is_carrier_relationships_tab_loaded(self):
        """
        Implementing is carrier relationships tab loaded functionality
        :return: True/False
        """
        is_loaded = self.is_element_present(self.carrier_relationships_tab_header_locator)
        return is_loaded

    def is_dialed_digits_tab_loaded(self):
        """
        Implementing is dialed digits tab loaded functionality
        :return: True/False
        """
        is_loaded = self.is_element_present(self.dialed_digits_input_field_locator)
        return is_loaded

    def is_rates_tab_loaded(self):
        """
        Implementing is rates tab loaded functionality
        :return: True/False
        """
        is_loaded = self.is_element_present(self.rate_plan_label_locator)
        return is_loaded

    def is_destinations_tab_loaded(self):
        """
        Implementing is destinations tab loaded functionality
        :return: True/False
        """
        is_loaded = self.is_element_present(self.destinations_input_field_locator)
        return is_loaded

    def click_create_carrier_button(self):
        """
        Implementing click create carrier button functionality
        :return:
        """
        create_carrier_button_element = self.wait().until(EC.element_to_be_clickable(self.create_carrier_locator), 'create carrier locator not found before specified time out')
        create_carrier_button_element.click()
        self.wait_for_ajax_spinner_load()

    def set_carrier_name(self, carrier_name_prefix):
        """
        Implementing set carrier name functionality
        :param carrier_name_prefix:
        :return: carrier name
        """
        global carrier_name
        carrier_name = carrier_name_prefix + self.random_string_generator(6)
        self.set_value_into_input_field(self.carrier_name_textbox_locator, carrier_name)
        return carrier_name

    def set_carrier_abbreviation(self, carrier_abbreviation_prefix):
        """
        Implementing set carrier abbreviation functionality
        :param carrier_abbreviation_prefix:
        :return: carrier abbreviation
        """
        carrier_abbreviation = carrier_abbreviation_prefix + self.random_string_generator(6)
        self.set_value_into_input_field(self.carrier_abbreviation_textbox_locator, carrier_abbreviation)
        return carrier_abbreviation

    def set_carrier_legal_name(self, carrier_legal_name_prefix):
        """
        Implementing set carrier legal name functionality
        :param carrier_legal_name_prefix:
        :return: carrier legal name
        """
        carrier_legal_name = carrier_legal_name_prefix + self.random_string_generator(6)
        self.set_value_into_input_field(self.carrier_legal_name_textbox_locator, carrier_legal_name)
        return carrier_legal_name

    def set_status(self, status):
        """
        Implementing set status functionality
        :param status:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.status_kendo_dropdown_locator, status)
        self.wait_for_ajax_spinner_load()

    def set_company(self, company):
        """
        Implementing set company functionality
        :param company:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.company_kendo_dropdown_locator, company)
        self.wait_for_ajax_spinner_load()

    def set_carrier_number(self):
        """
        Implementing set carrier number functionality
        :return: carrier number
        """
        carrier_number = self.random_string_generator(6, string.digits)
        self.set_value_into_input_field(self.carrier_number_textbox_locator, carrier_number)
        return carrier_number

    def click_create_carrier_save_button(self):
        """
        Implementing click create carrier save button functionality
        :return:
        """
        create_carrier_save_button_element = self.wait().until(EC.element_to_be_clickable(self.create_carrier_save_button_locator), 'create carrier save button locator not found before specified time out')
        create_carrier_save_button_element.click()
        self.wait_for_ajax_spinner_load()
        try:
            self.wait().until(EC.visibility_of_element_located(self.create_carrier_success_message_locator), 'create carrier success message locator not found before specified time')
            ok_button_element = self.wait().until(EC.element_to_be_clickable(self.ok_button_locator), 'ok button locator not found before specified time')
            self.wait_for_ajax_spinner_load()
            ok_button_element.click()
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def get_carriers_grid_row_details(self):
        """
        Implementing get carriers grid row details functionality
        :return: grid_row_data
        """
        grid_row_data = self.get_grid_row_details(self.carriers_grid_div_id, self.carriers_grid_row_data)
        return grid_row_data

    def click_save_carrier_profile_button(self):
        """
        Implementing click save carrier profile button functionality
        :return:
        """
        save_carrier_profile_button_element = self.wait().until(EC.element_to_be_clickable(self.save_carrier_profile_button_locator), 'save carrier profile button locator not found before specified time out')
        save_carrier_profile_button_element.click()
        self.wait_for_ajax_spinner_load()
        try:
            self.wait().until(EC.visibility_of_element_located(self.save_carrier_profile_success_message_locator), 'save carrier profile success message locator not found before specified time')
            ok_button_element = self.wait().until(EC.element_to_be_clickable(self.ok_button_locator), 'ok button locator not found before specified time')
            self.wait_for_ajax_spinner_load()
            ok_button_element.click()
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def expand_customers_and_vendors_section(self):
        """
        Implementing expand customers and vendors section functionality
        :return:
        """
        customers_and_vendors_section_element = self.wait().until(EC.element_to_be_clickable(self.customers_and_vendors_section_locator), 'customers and vendors section locator not found before specified time out')
        customers_and_vendors_section_element.click()
        self.wait_for_ajax_spinner_load()

    def click_create_customer_button(self):
        """
        Implementing click create customer button
        :return:
        """
        create_customer_button_element = self.wait().until(EC.presence_of_element_located(self.create_customer_locator), 'create customer locator not found before specified time')
        self.hover(create_customer_button_element)
        self.script_executor_click(create_customer_button_element)
        self.wait_for_ajax_spinner_load()

    def set_customer_name(self, customer_name_prefix):
        """
        Implementing set customer name functionality
        :param customer_name_prefix:
        :return: customer name
        """
        try:
            customer_name = customer_name_prefix + self.random_string_generator(6)
            self.set_value_into_input_field(self.customer_name_textbox_locator, customer_name)
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
            abbreviation_name = abbreviation_name_prefix + self.random_string_generator(6)
            self.set_value_into_input_field(self.abbreviation_textbox_locator, abbreviation_name)
            return abbreviation_name
        except:
            raise

    def set_rate_plan(self, item_name):
        """
        Implementing set rate plan functionality
        :param item_name:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.rate_plan_kendo_dropdown_locator, item_name)
        self.wait_for_ajax_spinner_load()

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

    def click_save_customer_profile_button(self):
        """
        Implementing click save customer profile button functionality
        :return:
        """
        save_customer_profile_button_element = self.wait().until(EC.element_to_be_clickable(self.save_customer_profile_button_locator), 'save customer profile button locator not found before specified time')
        save_customer_profile_button_element.click()
        self.wait_for_ajax_spinner_load()
        try:
            self.wait().until(EC.presence_of_element_located(self.confirmation_popup_locator), 'confirmation popup locator not found before specified time')
            ok_button_element = self.wait().until(EC.element_to_be_clickable(self.ok_button_locator), 'ok button locator not found before specified time')
            ok_button_element.click()
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def filter_trade_source_grid(self, column_name, filter_item_list):
        """
        Implementing filter trade source grid functionality
        :param column_name:
        :param filter_item_list:
        :return:
        """
        self.grid_filter_details(column_name, filter_item_list, self.trade_source_grid_div_id)

    def click_trade_source_grid_inline_action_button(self, name):
        """
        Implementing click trade source grid inline action button functionality
        :param name:
        :return:
        """
        bill_and_audit_accounts_section_element = self.wait().until(EC.presence_of_element_located(self.bill_audit_accounts_section_locator))
        self.hover(bill_and_audit_accounts_section_element)
        self.click_inline_action_button(self.trade_source_grid_div_id, name, self.trade_source_grid_inline_action_column_number)

    def get_trade_source_grid_row_details(self):
        """
        Implementing get trade source grid row details functionality
        :return: grid_row_data
        """
        grid_row_data = self.get_grid_row_details(self.trade_source_grid_div_id, self.trade_source_grid_row_data)
        return grid_row_data

    def set_vendor_for_view_price_list_detail(self, vendor):
        """
        Implementing set vendor for view price list detail functionality
        :param vendor:
        :return:
        """
        is_set = False
        vendor_dropdown_element = self.wait().until(EC.presence_of_element_located(self.vendor_dropdown_locator), 'vendor dropdown locator not found before specified time out')
        vendor_dropdown_element_id = vendor_dropdown_element.get_attribute("id")
        vendor_dropdown_li_locator = (By.XPATH, "//ul[@id='%s_listbox']/li" % str(vendor_dropdown_element_id))
        vendor_dropdown_li_elements = self.wait().until(EC.presence_of_all_elements_located(vendor_dropdown_li_locator), 'vendor dropdown li locator not found before specified time out')
        for i in range(len(vendor_dropdown_li_elements)):
            if vendor == vendor_dropdown_li_elements[i].get_attribute("textContent"):
                self.single_selection_from_kendo_dropdown(self.vendor_dropdown_locator, vendor)
                is_set = True
                break
        if is_set is False:
            self.single_selection_from_kendo_dropdown(self.vendor_dropdown_locator, vendor_dropdown_li_elements[0].get_attribute("textContent"))
        self.wait_for_ajax_spinner_load()

    def set_price_list_for_view_price_list_detail(self, price_list):
        """
        Implementing set price list for view price list detail functionality
        :param price_list:
        :return:
        """
        is_set = False
        price_list_dropdown_element_disabled = ""
        price_list_dropdown_element = self.wait().until(EC.presence_of_element_located(self.price_list_dropdown_locator), 'price list dropdown locator not found before specified time out')
        try:
            price_list_dropdown_element_disabled = price_list_dropdown_element.get_attribute("disabled")
        except:
            pass
        if price_list_dropdown_element_disabled != "disabled":
            price_list_dropdown_element_id = price_list_dropdown_element.get_attribute("id")
            price_list_dropdown_li_locator = (By.XPATH, "//ul[@id='%s_listbox']/li" % str(price_list_dropdown_element_id))
            price_list_dropdown_li_elements = self.wait().until(EC.presence_of_all_elements_located(price_list_dropdown_li_locator), 'price list dropdown li locator not found before specified time out')
            for i in range(len(price_list_dropdown_li_elements)):
                if price_list == price_list_dropdown_li_elements[i].get_attribute("textContent"):
                    self.single_selection_from_kendo_dropdown(self.price_list_dropdown_locator, price_list)
                    is_set = True
                    break
            if is_set is False:
                self.single_selection_from_kendo_dropdown(self.price_list_dropdown_locator, price_list_dropdown_li_elements[0].get_attribute("textContent"))
            self.wait_for_ajax_spinner_load()

    def click_add_new_rates_button(self):
        """
        Implementing click add new rates button functionality
        :return:
        """
        add_new_rates_element = self.wait().until(EC.element_to_be_clickable(self.add_new_rate_locator), 'add new rate locator not found before specified time')
        add_new_rates_element.click()
        self.wait_for_ajax_spinner_load()

    def set_rate_plan_for_add_new_rate(self, rate_plan):
        """
        Implementing set rate plan for add new rate functionality
        :param rate_plan:
        :return:
        """
        rate_plan_element = self.wait().until(EC.presence_of_element_located(self.rate_plan_dropdown_locator), 'rate plan dropdown locator not found before specified time')
        self.script_executor_click(rate_plan_element)
        self.wait_for_ajax_spinner_load()
        dropdown_item_locator = (By.XPATH, "//ul[@id='ddlCPNRRatePlan_listbox']/descendant::li[text()='%s']" % rate_plan)
        dropdown_item_element = self.wait().until(EC.presence_of_element_located(dropdown_item_locator), 'dropdown item locator not found before specified time')
        self.script_executor_click(dropdown_item_element)
        self.wait_for_ajax_spinner_load()

    def set_rate_record_to_add_new_rate(self, rate_record=None):
        """
        Implementing set rate record for add new rate functionality
        :param rate_record:
        :return:
        """
        if rate_record is not None:
            dropdown_item_locator = (By.XPATH, "//ul[@id='RSRateRecord_listbox']/descendant::li[text()='%s']" % rate_record)
        else:
            dropdown_item_locator = (By.XPATH, "//ul[@id='RSRateRecord_listbox']/descendant::li[1]")
        rate_record_element = self.wait().until(EC.presence_of_element_located(self.rate_record_dropdown_locator), 'rate record dropdown locator not found before specified time')
        self.script_executor_click(rate_record_element)
        self.wait_for_ajax_spinner_load()
        dropdown_item_element = self.wait().until(EC.presence_of_element_located(dropdown_item_locator), 'dropdown item locator not found before specified time')
        self.script_executor_click(dropdown_item_element)
        self.wait_for_ajax_spinner_load()

    def set_begin_date_for_add_new_rate(self):
        """
        Implementing set begin date for add new rate functionality
        :return: begin date
        """
        self.wait_for_ajax_spinner_load()
        begin_date = self.get_current_date()
        self.set_value_into_input_field(self.add_new_rate_begin_date_locator, begin_date)
        return begin_date

    def set_end_date_for_add_new_rate(self, end_date):
        """
        Implementing set end date for add new rate functionality
        :param: end_date:
        :return:
        """
        end_date_element = self.wait().until(EC.presence_of_element_located(self.add_new_rate_end_date_locator), 'add new rate end date locator not found before specified time out')
        self.script_executor_click(end_date_element)
        end_date_element.clear()
        if (end_date == "" or time.strptime(end_date, "%m/%d/%Y") < time.strptime(self.get_current_date(), "%m/%d/%Y")):
            end_date_element.send_keys(self.get_future_date())
        else:
            end_date_element.send_keys(end_date)
        end_date_element.send_keys()
        self.wait_for_ajax_spinner_load()

    def set_product_for_add_new_rate(self, product):
        """
        Implementing set product for add new rate functionality
        :param product:
        :return:
        """
        is_product_matched = True
        product_dropdown_element = self.wait().until(EC.presence_of_element_located(self.add_new_rate_product_dropdown_locator), 'product dropdown locator not found before specified time')
        self.script_executor_click(product_dropdown_element)
        self.wait_for_ajax_spinner_load()
        product_dropdown_item_locator = (By.XPATH, "//ul[@id='ddlCPNRProduct_listbox']/descendant::li")
        product_dropdown_item_elements = self.wait().until(EC.presence_of_all_elements_located(product_dropdown_item_locator), 'dropdown item locator not found before specified time')

        for product_item in product_dropdown_item_elements:
            if (product_item.text == product):
                dropdown_item_locator = (By.XPATH, "//ul[@id='ddlCPNRProduct_listbox']/descendant::li[text()='%s']" % product)
                dropdown_item_element = self.wait().until(EC.presence_of_element_located(dropdown_item_locator), 'dropdown item locator not found before specified time')
                self.script_executor_click(dropdown_item_element)
                is_product_matched = False
                break
        if is_product_matched is True:
            product_dropdown_first_item_locator = (By.XPATH, "//ul[@id='ddlCPNRProduct_listbox']/descendant::li[1]")
            product_dropdown_first_item_element = self.wait().until(EC.presence_of_element_located(product_dropdown_first_item_locator), 'product dropdown locator not found before specified time')
            self.script_executor_click(product_dropdown_first_item_element)
        self.wait_for_ajax_spinner_load()

    def set_rating_method_for_add_new_rate(self, rating_method):
        """
        Implementing set rating method for add new rate functionality
        :param rating_method:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.rating_method_dropdown_locator, rating_method)
        self.wait_for_ajax_spinner_load()

    def set_cli_for_add_new_rate(self, cli):
        """
        Implementing set cli for add new rate functionality
        :param cli:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.cli_dropdown_locator, cli)
        self.wait_for_ajax_spinner_load()

    def click_add_new_rate_page_title(self):
        """
        Implementing click add new rate page title functionality
        :return:
        """
        page_title_element = self.wait().until(EC.visibility_of_element_located(self.add_new_rate_page_title_locator), 'add new rate page title locator not found before specified time out')
        page_title_element.click()

    def set_grid_value_for_add_new_rate(self):
        """
        Implementing set grid value for add new rate functionality
        :return:
        """
        number_of_rows = len(self.wait().until(EC.presence_of_all_elements_located(self.add_new_rate_row_element_locator), 'add new rate row element locator not found before specified time'))
        for row in range(1, number_of_rows + 1):
            column_element = self.wait().until(EC.presence_of_element_located(self.rate_column_locator), 'rate column locator not found before specified time out')
            column_index = int(column_element.get_attribute("data-index")) + 1
            input_item_locator = (By.XPATH, "//div[@id='divCPNRRateItemGrid']/descendant::tbody/descendant::tr[%s]/descendant::td[%s]/span[@class='k-grid-cell']" % (str(row), str(column_index)))
            input_item_element = self.wait().until(EC.presence_of_element_located(input_item_locator), 'input item locator not found before specified time out')
            self.script_executor_click(input_item_element)
            self.wait_for_ajax_spinner_load()
            first_row_column = client.Dispatch("WScript.Shell")
            first_row_column.SendKeys("^a")
            first_row_column.SendKeys("{DEL}")
            first_row_column.SendKeys(self.random_string_generator(2, string.digits))
            self.click_add_new_rate_page_title()
        self.wait_for_ajax_spinner_load()

    def click_add_new_rate_save_button(self):
        """
        Implementing click add new rate save button functionality
        :return:
        """
        save_button_element = self.wait().until(EC.presence_of_element_located(self.add_new_rate_save_button_locator), 'add new rate save button locator not found before specified time out')
        self.script_executor_click(save_button_element)
        try:
            self.wait().until(EC.visibility_of_element_located(self.success_message_locator), 'success message locator not found before specified time out')
            ok_button_element = self.wait().until(EC.element_to_be_clickable(self.ok_button_locator), 'ok button locator not found before specified time out')
            self.wait_for_ajax_spinner_load()
            ok_button_element.click()
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def set_product_name(self, product):
        """
        Implementing set product name functionality
        :param product:
        :return:
        """
        self.set_value_into_input_field(self.product_input_field_locator, product)

    def set_begin_date(self, date):
        """
        Implementing set begin date functionality
        :param date:
        :return:
        """
        self.set_value_into_input_field(self.begin_date_locator, date)

    def click_rates_page_search_button(self):
        """
        Implementing click rates page search button functionality
        :return:
        """
        self.click_element(self.page_header_locator)
        self.click_element(self.rates_page_search_button_locator, True)
        self.wait_for_ajax_spinner_load()

    def expand_commercial_trunks_section(self):
        """
        Implementing expand commercial trunks section functionality
        :return:
        """
        commercial_trunks_section_element = self.wait().until(EC.element_to_be_clickable(self.commercial_trunks_section_locator), 'commercial trunks section locator not found before specified time out')
        commercial_trunks_section_element.click()
        self.wait_for_ajax_spinner_load()

    def click_create_trunk_button(self):
        """
        Implementing click create trunk button
        :return:
        """
        self.click_element(self.create_trunk_button_locator, True)

    def set_trunk_name(self, trunk_name_prefix):
        """
        Implementing set trunk name functionality
        :param trunk_name_prefix:
        :return: trunk name
        """
        global trunk_name
        try:
            trunk_name = trunk_name_prefix + self.random_string_generator(6)
            self.set_value_into_input_field(self.trunk_name_textbox_locator, trunk_name)
            return trunk_name
        except:
            raise

    def set_clli(self, clli):
        """
        Implementing set clli functionality
        :param clli:
        :return:
        """
        self.set_value_into_input_field(self.clli_textbox_locator, clli)

    def set_effective_date(self, effective_date):
        """
        Implementing set effective date functionality
        :param effective_date:
        :return:
        """
        effective_date_inputbox_element = self.wait().until(EC.visibility_of_element_located(self.effective_date_inputbox_locator), 'effective date inputbox locator not found before specified time out')
        effective_date_inputbox_element.clear()
        if effective_date != "":
            effective_date_inputbox_element.send_keys(effective_date)
        else:
            effective_date_inputbox_element.send_keys(self.get_current_date())
        self.wait_for_ajax_spinner_load()

    def set_description(self, description):
        """
        Implementing set description functionality
        :param description:
        :return:
        """
        self.set_value_into_input_field(self.description_textbox_locator, description)

    def set_direction(self, direction):
        """
        Implementing set direction functionality
        :param direction:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.direction_kendo_dropdown_locator, direction)
        self.wait_for_ajax_spinner_load()

    def click_save_button(self):
        """
        Implementing click save button functionality
        :return:
        """
        save_button_element = self.wait().until(EC.element_to_be_clickable(self.save_button_locator), 'save button locator not found before specified time out')
        save_button_element.click()
        self.wait_for_ajax_spinner_load()
        try:
            self.wait().until(EC.presence_of_element_located(self.confirmation_popup_locator), 'confirmation popup locator not found before specified time')
            ok_button_element = self.wait().until(EC.element_to_be_clickable(self.ok_button_locator), 'ok button locator not found before specified time')
            ok_button_element.click()
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def filter_trunks_grid(self, column_name, filter_item_list):
        """
        Implementing filter trunks grid functionality
        :param column_name:
        :param filter_item_list:
        :return:
        """
        self.grid_filter_details(column_name, filter_item_list)

    def click_trunks_grid_inline_action_button(self, name):
        """
        Implementing click trunks grid inline action button functionality
        :param name:
        :return:
        """
        self.click_inline_action_button(self.trunks_grid_div_id, name, self.trunks_grid_inline_action_column_number)

    def get_trunks_grid_row_details(self):
        """
        Implementing get trunks grid row details functionality
        :return: grid_row_data
        """
        grid_row_data = self.get_grid_row_details(self.trunks_grid_div_id, self.trunks_grid_row_data, self.trunks_data_grid_name)
        return grid_row_data

    def click_create_vendor_button(self):
        """
        Implementing click create vendor button functionality
        :return:
        """
        create_vendor_button_element = self.wait().until(EC.visibility_of_element_located(self.create_vendor_locator), 'create vendor locator not found before specified time')
        self.hover(create_vendor_button_element)
        self.script_executor_click(create_vendor_button_element)
        self.wait_for_ajax_spinner_load()

    def set_vendor_name(self, vendor_name_prefix):
        """
        Implementing set vendor name functionality
        :param vendor_name_prefix:
        :return: vendor name
        """
        try:
            vendor_name = vendor_name_prefix + self.random_string_generator(6)
            self.set_value_into_input_field(self.vendor_name_textbox_locator, vendor_name)
            return vendor_name
        except:
            raise

    def click_save_vendor_profile_button(self):
        """
        Implementing click save vendor profile button functionality
        :return:
        """
        save_vendor_profile_button_element = self.wait().until(EC.element_to_be_clickable(self.save_vendor_profile_button_locator), 'save vendor profile button locator not found before specified time')
        save_vendor_profile_button_element.click()
        self.wait_for_ajax_spinner_load()
        try:
            self.wait().until(EC.presence_of_element_located(self.confirmation_popup_locator), 'confirmation popup locator not found before specified time')
            ok_button_element = self.wait().until(EC.element_to_be_clickable(self.ok_button_locator), 'ok button locator not found before specified time')
            ok_button_element.click()
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def expand_rate_plans_section(self):
        """
        Implementing expand rate plans section functionality
        :return:
        """
        self.click_element(self.rate_plans_section_locator, script_executor=True, hover=True)

    def filter_rate_plan_grid(self, column_name, filter_item_list):
        """
        Implementing filter rate plan grid functionality
        :param column_name:
        :param filter_item_list:
        :return:
        """
        self.grid_filter_details(column_name, filter_item_list)

    def click_rate_plan_grid_inline_action_button(self, name):
        """
        Implementing click rate plan grid inline action button functionality
        :param name:
        :return:
        """
        self.click_inline_action_button(self.rate_plan_grid_div_id, name, self.rate_plan_grid_inline_action_column_number)

    def get_rate_plan_grid_row_details(self):
        """
        Implementing get rate plan grid row details functionality
        :return: grid_row_data
        """
        grid_row_data = self.get_grid_row_details(self.rate_plan_grid_div_id, self.rate_plan_grid_row_data, self.rate_plan_data_grid_name)
        return grid_row_data

    def click_create_rate_plan_button(self):
        """
        Implementing click create rate plan button
        :return:
        """
        self.click_element(self.create_rate_plan_button_locator, True, True)
        self.wait_for_ajax_spinner_load()

    def set_rate_plan_name(self, rate_plan_name_prefix):
        """
        Implementing set rate plan name functionality
        :param rate_plan_name_prefix:
        :return: rate plan name
        """
        global rate_plan_name
        try:
            rate_plan_name = rate_plan_name_prefix + self.random_string_generator(6)
            self.set_value_into_input_field(self.rate_plan_name_textbox_locator, rate_plan_name)
            return rate_plan_name
        except:
            raise

    def set_rate_plan_abbreviation(self, rate_plan_abbreviation_prefix):
        """
        Implementing set rate plan abbreviation functionality
        :param rate_plan_abbreviation_prefix:
        :return: rate plan abbreviation name
        """
        try:
            rate_plan_abbreviation = rate_plan_abbreviation_prefix + self.random_string_generator(6)
            rate_plan_abbreviation_textbox_element = self.wait().until(EC.visibility_of_element_located(self.rate_plan_abbreviation_textbox_locator), "rate plan abbreviation textbox locator not found before specified time out")
            rate_plan_abbreviation_textbox_element.clear()
            rate_plan_abbreviation_textbox_element.send_keys(rate_plan_abbreviation)
            self.wait_for_ajax_spinner_load()
            return rate_plan_abbreviation
        except:
            raise

    def set_increase_notice_period_days(self, increase_notice_period_days):
        """
        Implementing set increase notice period days functionality
        :param increase_notice_period_days:
        :return:
        """
        self.set_value_into_input_field(self.increase_notice_period_days_textbox_locator, increase_notice_period_days)

    def set_decrease_notice_period_days(self, decrease_notice_period_days):
        """
        Implementing set decrease notice period days functionality
        :param decrease_notice_period_days:
        :return:
        """
        self.set_value_into_input_field(self.decrease_notice_period_days_textbox_locator, decrease_notice_period_days)

    def set_dial_digit_change_notice_period_days(self, dial_digit_change_notice_period_days):
        """
        Implementing set dial digit change notice period days functionality
        :param dial_digit_change_notice_period_days:
        :return:
        """
        self.set_value_into_input_field(self.dial_digit_change_notice_period_days_textbox_locator, dial_digit_change_notice_period_days)

    def set_business_type(self, item_name):
        """
        Implementing set business type functionality
        :param item_name:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.business_type_kendo_dropdown_locator, item_name)
        self.wait_for_ajax_spinner_load()

    def set_traffic_direction(self, item_name):
        """
        Implementing set traffic direction functionality
        :param item_name:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.traffic_direction_kendo_dropdown_locator, item_name)
        self.wait_for_ajax_spinner_load()

    def set_tariff_type(self, item_name):
        """
        Implementing set tariff type functionality
        :param item_name:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.tariff_type_kendo_dropdown_locator, item_name)
        self.wait_for_ajax_spinner_load()

    def set_service_level(self, item_name):
        """
        Implementing set service level functionality
        :param item_name:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.service_level_kendo_dropdown_locator, item_name)
        self.wait_for_ajax_spinner_load()

    def set_currency(self, item_name):
        """
        Implementing set currency functionality
        :param item_name:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.currency_kendo_dropdown_locator, item_name)
        self.wait_for_ajax_spinner_load()

    def set_product_catalog(self, item_name):
        """
        Implementing set product catalog functionality
        :param item_name:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.product_catalog_kendo_dropdown_locator, item_name)
        self.wait_for_ajax_spinner_load()

    def set_rate_plan_scope(self, item_name):
        """
        Implementing set rate plan scope functionality
        :param item_name:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.rate_plan_scope_kendo_dropdown_locator, item_name)
        self.wait_for_ajax_spinner_load()

    def toggle_cost_pricing_indicator(self):
        """
        Implementing toggle cost pricing indicator functionality
        :return:
        """
        cost_pricing_indicator_element = self.wait().until(EC.element_to_be_clickable(self.cost_pricing_indicator_locator), 'cost pricing indicator locator not found before specified time out')
        cost_pricing_indicator_element.click()

    def set_rating_method(self, item_name):
        """
        Implementing set rating method functionality
        :param item_name:
        :return:
        """
        self.click_element(self.rating_method_kendo_dropdown_arrow_locator)
        self.set_value_into_input_field(self.search_rating_method_input_field_locator, value=item_name)
        self.wait_for_ajax_spinner_load()
        rating_method_locator = (By.XPATH, "//ul[@id='RSRatingMethod_listbox']/li[text()='%s']" % (item_name))
        self.click_element(rating_method_locator)

    def set_rate_plan_category_1(self, item_name):
        """
        Implementing set rate plan category 1 functionality
        :param item_name:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.rate_plan_category_1_kendo_dropdown_locator, item_name)
        self.wait_for_ajax_spinner_load()

    def set_rate_plan_category_2(self, item_name):
        """
        Implementing set rate plan category 2 functionality
        :param item_name:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.rate_plan_category_2_kendo_dropdown_locator, item_name)
        self.wait_for_ajax_spinner_load()

    def set_begin_date_for_add_new_rate_plan(self, begin_date):
        """
        Implementing set begin date for add new rate plan functionality
        :param begin_date:
        :return:
        """
        begin_date_textbox_element = self.wait().until(EC.presence_of_element_located(self.begin_date_textbox_locator), 'begin date textbox locator not found before specified time out')
        begin_date_textbox_element.clear()
        if begin_date == "":
            begin_date = self.get_current_date()
        begin_date_textbox_element.send_keys(begin_date)
        global current_begin_date
        current_begin_date = datetime.datetime.strptime(begin_date, "%m/%d/%Y")

    def set_end_date(self, end_date):
        """
        Implementing set end date functionality
        :param end_date:
        :return:
        """
        global current_begin_date
        end_date_textbox_element = self.wait().until(EC.presence_of_element_located(self.end_date_textbox_locator), 'end date textbox locator not found before specified time out')
        end_date_textbox_element.clear()
        if end_date == "":
            current_date = self.get_current_date()
            modified_date = datetime.datetime.strptime(current_date, "%m/%d/%Y")
            new_date = str(modified_date + datetime.timedelta(days=7))
            end_date_textbox_element.send_keys(new_date)
        else:
            end_date = datetime.datetime.strptime(end_date, "%m/%d/%Y")
            if end_date < current_begin_date:
                new_date = str(current_begin_date + datetime.timedelta(days=1))
                end_date_textbox_element.send_keys(new_date)
            else:
                end_date_textbox_element.send_keys(end_date)

    def set_note(self, note):
        """
        Implementing set note functionality
        :param note:
        :return:
        """
        self.set_value_into_input_field(self.note_textarea_locator, note)

    def set_select_date(self, select_date):
        """
        Implementing set select date functionality
        :param select_date:
        :return:
        """
        self.set_value_into_input_field(self.select_date_textbox_locator, select_date)

    def click_carrier_relationships_search_button(self):
        """
        Implementing click carrier relationships search button functionality
        :return:
        """
        search_button_element = self.wait().until(EC.element_to_be_clickable(self.carrier_relationships_search_button_locator), 'carrier relationships search button not found before specified time')
        self.script_executor_click(search_button_element)
        self.wait_for_ajax_spinner_load()

    def select_price_lists_history_tab(self):
        """
        Implementing select price lists history tab
        :return:
        """
        price_lists_history_tab_element = self.wait().until(EC.element_to_be_clickable(self.price_lists_history_tab_locator), 'price lists history tab locator not found before specified time out')
        price_lists_history_tab_element.click()
        self.wait_for_ajax_spinner_load()

    def expand_bill_and_audit_account_section(self):
        """
        Implementing expand bill and audit account section functionality
        :return:
        """
        bill_and_audit_account_section_element = self.wait().until(EC.presence_of_element_located(self.bill_audit_accounts_section_locator), 'bill and audit account section locator not found before specified time out')
        self.hover(bill_and_audit_account_section_element)
        self.script_executor_click(bill_and_audit_account_section_element)
        self.wait_for_ajax_spinner_load()

    def click_create_bill_account(self):
        """
        Implementing click create bill account functionality
        :return:
        """
        self.click_element(self.create_bill_account_button_locator, True, True)

    def set_bill_and_audit_account_name(self, account_type, account_name_prefix):
        """
        Implementing set bill and audit account name functionality
        :param account_type:
        :param account_name_prefix:
        :return: account_name
        """
        global account_name
        account_name_textbox_element = None
        try:
            account_name = account_name_prefix + self.random_string_generator(6)
            if account_type.lower() == "bill":
                account_name_textbox_element = self.wait().until(EC.visibility_of_element_located(self.bill_account_textbox_locator), 'bill account textbox locator not found before specified time out')
            elif account_type.lower() == "audit":
                account_name_textbox_element = self.wait().until(EC.visibility_of_element_located(self.audit_account_textbox_locator), 'audit account textbox locator not found before specified time out')
            account_name_textbox_element.clear()
            account_name_textbox_element.send_keys(account_name)
            self.wait_for_ajax_spinner_load()
            return account_name
        except:
            raise

    def set_bill_and_audit_account_abbreviation(self, account_type, abbreviation_prefix):
        """
        Implementing set bill account abbreviation functionality
        :param abbreviation_prefix:
        :param account_type:
        :return: abbreviation_text
        """
        abbreviation_textbox_element = None
        try:
            abbreviation_text = abbreviation_prefix + self.random_string_generator(6)
            if account_type.lower() == "bill":
                abbreviation_textbox_element = self.wait().until(EC.visibility_of_element_located(self.bill_account_abbreviation_locator), "bill account abbreviation locator not found before specified time out")
            elif account_type.lower() == "audit":
                abbreviation_textbox_element = self.wait().until(EC.visibility_of_element_located(self.audit_account_abbreviation_locator), "audit account abbreviation locator not found before specified time out")
            abbreviation_textbox_element.clear()
            abbreviation_textbox_element.send_keys(abbreviation_text)
            self.wait_for_ajax_spinner_load()
            return abbreviation_text
        except:
            raise

    def set_legal_name(self, legal_name_prefix):
        """
        Implementing set legal name functionality
        :param legal_name_prefix:
        :return: legal_name
        """
        try:
            legal_name = legal_name_prefix + self.random_string_generator(6)
            legal_name_textbox_element = self.wait().until(EC.visibility_of_element_located(self.legal_name_locator), "legal name locator not found before specified time out")
            legal_name_textbox_element.clear()
            legal_name_textbox_element.send_keys(legal_name)
            self.wait_for_ajax_spinner_load()
            return legal_name
        except:
            raise

    def set_billing_method(self, billing_method):
        """
        Implementing set billing method functionality
        :param billing_method:
        :return:
        """
        kendo_dropdown_element = self.wait().until(EC.presence_of_element_located(self.billing_method_dropdown_locator), 'billing method kendo dropdown locator not found before specified time out')
        self.script_executor_click(kendo_dropdown_element)
        self.wait_for_ajax_spinner_load()
        dropdown_item_locator = (By.XPATH, "//ul[@id='BillingMethod_listbox']/li[text()='%s']" % billing_method)
        dropdown_item_element = self.wait().until(EC.presence_of_element_located(dropdown_item_locator), 'dropdown item locator not found before specified time')
        self.script_executor_click(dropdown_item_element)
        self.wait_for_ajax_spinner_load()

    def set_billing_terms_number(self, number):
        """
        Implementing set billing terms number functionality
        :param number:
        :return:
        """
        self.set_value_into_input_field(self.billing_terms_value_locator, str(number), use_win32com=True)

    def set_billing_terms_base_period(self, base_period):
        """
        Implementing set billing terms base period functionality
        :param base_period:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.billing_terms_base_period_locator, base_period)
        self.wait_for_ajax_spinner_load()

    def set_billing_terms_date_type(self, date_type):
        """
        Implementing set billing terms date type functionality
        :param date_type:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.billing_terms_date_type_locator, date_type)
        self.wait_for_ajax_spinner_load()

    def set_payment_terms_number(self, number):
        """
        Implementing set payment terms number functionality
        :param number:
        :return:
        """
        self.set_value_into_input_field(self.payment_terms_value_locator, str(number), use_win32com=True)

    def set_payment_terms_base_period(self, base_period):
        """
        Implementing set payment terms base period functionality
        :param base_period:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.payment_terms_base_period_locator, base_period)
        self.wait_for_ajax_spinner_load()

    def set_payment_terms_date_type(self, date_type):
        """
        Implementing set payment terms date type functionality
        :param date_type:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.payment_terms_date_type_locator, date_type)
        self.wait_for_ajax_spinner_load()

    def set_paying_account(self, account):
        """
        Implementing set paying account functionality
        :param account:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.paying_account_dropdown_locator, account)
        self.wait_for_ajax_spinner_load()

    def set_receiving_account(self, account):
        """
        Implementing set receiving account functionality
        :param account:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.receiving_account_dropdown_locator, account)
        self.wait_for_ajax_spinner_load()

    def set_usage_time_zone(self, usage_time_zone):
        """
        Implementing set usage time zone functionality
        :param usage_time_zone:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.usage_time_zone_dropdown_locator, usage_time_zone)
        self.wait_for_ajax_spinner_load()

    def set_accounting_code(self, code):
        """
        Implementing set accounting code functionality
        :param code:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.accounting_code_dropdown_locator, code)
        self.wait_for_ajax_spinner_load()

    def set_origin_based_rating(self, rating):
        """
        Implementing set origin based rating functionality
        :param rating:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.origin_based_rating_dropdown_locator, rating)
        self.wait_for_ajax_spinner_load()

    def expand_current_cycles_section(self):
        """
        Implementing expand current cycles section functionality
        :return:
        """
        current_cycles_element = self.wait().until(EC.element_to_be_clickable(self.current_cycles_locator), 'current cycles locator not found before specified time out')
        current_cycles_element.click()
        self.wait_for_ajax_spinner_load()

    def set_billing_cycle_template(self, billing_cycle_template):
        """
        Implementing set billing cycle template functionality
        :param billing_cycle_template:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.billing_cycle_template_dropdown_locator, billing_cycle_template)
        self.wait_for_ajax_spinner_load()

    def set_settlement_cycle_template(self, settlement_cycle_template):
        """
        Implementing set settlement cycle template functionality
        :param settlement_cycle_template:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.settlement_cycle_template_dropdown_locator, settlement_cycle_template)
        self.wait_for_ajax_spinner_load()

    def set_billing_cycle_begin_date(self, date):
        """
        Implementing set billing cycle begin date functionality
        :param date:
        :return:
        """
        if date == "":
            date = self.get_date(first_day_of_current_month=True)
        self.set_value_into_input_field(self.billing_cycle_begin_date_locator, date)

    def set_billing_cycle_end_date(self, date):
        """
        Implementing set billing cycle end date functionality
        :param date:
        :return:
        """
        end_date_element = self.wait().until(EC.visibility_of_element_located(self.billing_cycle_end_date_locator), 'billing cycle end date locator not found before specified time')
        end_date_element.clear()
        if (date == "" or time.strptime(date, "%m/%d/%Y") < time.strptime(self.get_current_date(), "%m/%d/%Y")):
            end_date_element.send_keys(self.get_future_date())
        else:
            end_date_element.send_keys(date)
        self.wait_for_ajax_spinner_load()

    def set_settlement_cycle_begin_date(self, date):
        """
        Implementing set settlement cycle begin date functionality
        :param date:
        :return:
        """
        if date == "":
            date = self.get_date(first_day_of_current_month=True)
        self.set_value_into_input_field(self.settlement_cycle_begin_date_locator, date)

    def set_settlement_cycle_end_date(self, date):
        """
        Implementing set settlement cycle end date functionality
        :param date:
        :return:
        """
        end_date_element = self.wait().until(EC.visibility_of_element_located(self.settlement_cycle_end_date_locator), 'settlement cycle end date locator not found before specified time')
        end_date_element.clear()
        if (date == "" or time.strptime(date, "%m/%d/%Y") < time.strptime(self.get_current_date(), "%m/%d/%Y")):
            end_date_element.send_keys(self.get_future_date())
        else:
            end_date_element.send_keys(date)
        self.wait_for_ajax_spinner_load()

    def set_residual_traffic_window_number(self, number):
        """
        Implementing set residual traffic window number functionality
        :param number:
        :return:
        """
        residual_traffic_window_element = self.wait().until(EC.presence_of_element_located(self.residual_traffic_window_locator))
        residual_traffic_window_element.click()
        first_row_column = client.Dispatch("WScript.Shell")
        first_row_column.SendKeys("^a")
        first_row_column.SendKeys("{DEL}")
        first_row_column.SendKeys(number)
        self.wait_for_ajax_spinner_load()

    def expand_additional_fields_section(self):
        """
        Implementing expand additional fields section functionality
        :return:
        """
        additional_fields_element = self.wait().until(EC.presence_of_element_located(self.additional_fields_locator), 'additional fields locator not found before specified time out')
        self.hover(additional_fields_element)
        self.script_executor_click(additional_fields_element)
        self.wait_for_ajax_spinner_load()

    def set_analyst(self, account_type, first_name, last_name):
        """
        Implementing set analyst functionality
        :param account_type:
        :param first_name:
        :param last_name:
        :return:
        """
        analyst = first_name + " " + last_name
        if account_type.lower() == "bill":
            self.single_selection_from_kendo_dropdown(self.billing_analyst_dropdown_locator, analyst)
        elif account_type.lower() == "audit":
            self.single_selection_from_kendo_dropdown(self.audit_analyst_dropdown_locator, analyst)
        self.wait_for_ajax_spinner_load()

    def set_manager(self, account_type, first_name, last_name):
        """
        Implementing set manager functionality
        :param account_type:
        :param first_name:
        :param last_name:
        :return:
        """
        manager = first_name + " " + last_name
        if account_type.lower() == "bill":
            self.single_selection_from_kendo_dropdown(self.billing_manager_dropdown_locator, manager)
        elif account_type.lower() == "audit":
            self.single_selection_from_kendo_dropdown(self.audit_manager_dropdown_locator, manager)
        self.wait_for_ajax_spinner_load()

    def expand_statement_section(self):
        """
        Implementing expand statement section functionality
        :return:
        """
        statement_element = self.wait().until(EC.presence_of_element_located(self.statement_section_locator), 'statement section locator not found before specified time')
        self.hover(statement_element)
        self.script_executor_click(statement_element)
        self.wait_for_ajax_spinner_load()

    def set_cover_letter_template(self, cover_letter_template):
        """
        Implementing set cover letter template functionality
        :param cover_letter_template:
        :return:
        """
        try:
            self.single_selection_from_static_kendo_dropdown(self.cover_letter_template_locator, cover_letter_template)
            self.wait_for_ajax_spinner_load()
        except:
            try:
                drobdown_first_item_locator = (By.XPATH, "//ul[@id='CoverLetterTemplateId_listbox']/descendant::li[1]")
                self.click_element(drobdown_first_item_locator)
            except:
                raise

    def set_statement_template(self, statement_template):
        """
        Implementing set statement template functionality
        :param statement_template:
        :return:
        """
        try:
            self.click_element(self.statement_template_locator, True, True)
            dropdown_item_locator = (By.XPATH, "//ul[@id='StatementTemplateId_listbox']/descendant::li[contains(text(), '%s')]" % statement_template)
            self.click_element(dropdown_item_locator, script_executor=True)
            self.wait_for_ajax_spinner_load()
        except:
            try:
                drobdown_first_item_locator = (By.XPATH, "//ul[@id='StatementTemplateId_listbox']/descendant::li[1]")
                self.click_element(drobdown_first_item_locator)
            except:
                raise

    def set_statement_number_template(self, statement_number_template):
        """
        Implementing set statement number template functionality
        :param statement_number_template:
        :return:
        """
        try:
            self.single_selection_from_static_kendo_dropdown(self.statement_number_template_locator, statement_number_template)
            self.wait_for_ajax_spinner_load()
        except:
            try:
                drobdown_first_item_locator = (By.XPATH, "//ul[@id='NumberingTemplateId_listbox']/descendant::li[1]")
                self.click_element(drobdown_first_item_locator)
            except:
                raise

    def set_positive_adjustment_statement_template(self, template):
        """
        Implementing set positive adjustment statement template functionality
        :param template:
        :return:
        """
        try:
            self.single_selection_from_static_kendo_dropdown(self.positive_adjustment_statement_template_locator, template)
            self.wait_for_ajax_spinner_load()
        except:
            try:
                drobdown_first_item_locator = (By.XPATH, "//ul[@id='PositiveAdjustmentNumberingTemplateId_listbox']/descendant::li[1]")
                self.click_element(drobdown_first_item_locator)
            except:
                raise

    def set_negative_adjustment_statement_template(self, template):
        """
        Implementing set negative adjustment statement template functionality
        :param template:
        :return:
        """
        try:
            self.single_selection_from_static_kendo_dropdown(self.negative_adjustment_statement_template_locator, template)
            self.wait_for_ajax_spinner_load()
        except:
            try:
                drobdown_first_item_locator = (By.XPATH, "//ul[@id='NegativeAdjustmentNumberingTemplateId_listbox']/descendant::li[1]")
                self.click_element(drobdown_first_item_locator)
            except:
                raise

    def set_residual_traffic_treatment(self, residual_traffic_treatment):
        """
        Implementing set residual traffic treatment functionality
        :param residual_traffic_treatment:
        :return:
        """
        try:
            self.single_selection_from_static_kendo_dropdown(self.residual_traffic_treatment_locator, residual_traffic_treatment)
            self.wait_for_ajax_spinner_load()
        except:
            try:
                drobdown_first_item_locator = (By.XPATH, "//ul[@id='ResidualTrafficAsAdjustment_listbox']/descendant::li[1]")
                self.click_element(drobdown_first_item_locator)
            except:
                raise

    def set_shortfall_approval_method(self, shortfall_approval_method):
        """
        Implementing set shortfall approval method functionality
        :param shortfall_approval_method:
        :return:
        """
        try:
            self.single_selection_from_static_kendo_dropdown(self.shortfall_approval_method_locator, shortfall_approval_method)
            self.wait_for_ajax_spinner_load()
        except:
            try:
                drobdown_first_item_locator = (By.XPATH, "//ul[@id='ShortfallApprovalMethodId_listbox']/descendant::li[1]")
                self.click_element(drobdown_first_item_locator)
            except:
                raise

    def click_create_bill_account_save_button(self):
        """
        Implementing click create bill account save button functionality
        :return:
        """
        save_button_element = self.wait().until(EC.presence_of_element_located(self.create_bill_account_save_button_locator), 'create bill account save button locator not found before specified time out')
        self.hover(save_button_element)
        self.wait_for_ajax_spinner_load()
        save_button_element.click()
        self.wait_for_ajax_spinner_load()
        try:
            self.wait().until(EC.presence_of_element_located(self.create_bill_account_success_message_locator), 'create bill account success message locator not found before specified time out')
            self.wait_for_ajax_spinner_load()
            ok_button_element = self.wait().until(EC.element_to_be_clickable(self.ok_button_locator), 'ok button locator not found before specified time out')
            ok_button_element.click()
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def close_add_new_bill_account_popup(self):
        """
        Implementing close add new bill account popup functionality
        :return:
        """
        close_button_element = self.wait().until(EC.element_to_be_clickable(self.popup_close_button_locator), 'popup close button locator not found before specified time out')
        close_button_element.click()
        self.wait_for_ajax_spinner_load()
        self.refresh_window()
        self.wait_for_ajax_spinner_load()

    def click_bill_and_audit_accounts_grid_inline_action_button(self, name):
        """
        Implementing click bill and audit accounts grid inline action button functionality
        :param name:
        :return:
        """
        self.click_inline_action_button(self.bill_and_audit_accounts_grid_div_id, name, self.bill_and_audit_accounts_grid_inline_action_column_number)

    def filter_bill_and_audit_accounts_grid(self, column_name, filter_item_list):
        """
        Implementing filter bill and audit accounts grid functionality
        :param column_name:
        :param filter_item_list:
        :return:
        """
        self.grid_filter_details(column_name, filter_item_list, self.bill_and_audit_accounts_grid_div_id)

    def get_bill_and_audit_accounts_grid_row_details(self):
        """
        Implementing get bill and audit accounts grid row details functionality
        :return: grid_row_data
        """
        grid_row_data = self.get_grid_row_details(self.bill_and_audit_accounts_grid_div_id, self.bill_and_audit_grid_row, self.bill_and_audit_data_grid_name)
        return grid_row_data

    def close_edit_bill_account_popup(self):
        """
        Implementing close edit bill account popup functionality
        :return:
        """
        close_button_element = self.wait().until(EC.element_to_be_clickable(self.edit_popup_close_button_locator), 'edit popup close button locator not found before specified time')
        close_button_element.click()
        self.wait_for_ajax_spinner_load()

    def filter_credit_management_grid(self, column_name, filter_item_text):
        """
        Implementing filter credit management grid functionality
        :param column_name:
        :param filter_item_text:
        :return:
        """
        self.grid_filter_with_textbox(self.credit_management_grid_div_id, column_name, filter_item_text)
        self.wait_for_ajax_spinner_load()

    def select_credit_management_grid_row_checkbox(self, row_identifier_text):
        """
        Implementing select credit management grid row checkbox functionality
        :param row_identifier_text:
        :return:
        """
        self.select_grid_row_checkbox(self.credit_management_grid_div_id, row_identifier_text, self.credit_management_grid_checkbox_column_number)
        self.wait_for_ajax_spinner_load()

    def click_credit_management_bulk_edit_button(self):
        """
        Implementing click credit management bulk edit button functionality
        :return:
        """
        bulk_edit_button_element = self.wait().until(EC.element_to_be_clickable(self.credit_management_bulk_edit_button_locator), 'credit management bulk edit button locator not found before specified time out')
        bulk_edit_button_element.click()
        self.wait_for_ajax_spinner_load()

    def set_trunk_provisioning_status(self, status):
        """
        Implementing set trunk provisioning status functionality
        :param status:
        :return:
        """
        dropdown_element = self.wait().until(EC.presence_of_element_located(self.trunk_provisioning_status_dropdown_locator), 'trunk provisioning status dropdown locator not found before specified time out')
        self.script_executor_click(dropdown_element)
        self.wait_for_ajax_spinner_load()
        dropdown_item_locator = (By.XPATH, "//li[text()='%s']" % status)
        dropdown_item_element = self.wait().until(EC.presence_of_element_located(dropdown_item_locator), 'dropdown item locator not found before specified time out')
        self.script_executor_click(dropdown_item_element)
        self.wait_for_ajax_spinner_load()

    def click_bulk_edit_submit_button(self):
        """
        Implementing click bulk edit submit button functionality
        :return:
        """
        submit_button_element = self.wait().until(EC.element_to_be_clickable(self.bulk_edit_submit_button_locator), 'bulk edit submit button locator not found before specified time out')
        submit_button_element.click()
        self.wait_for_ajax_spinner_load()

    def click_save_changes_button(self):
        """
        Implementing click save changes button functionality
        :return:
        """
        save_changes_button_element = self.wait().until(EC.element_to_be_clickable(self.save_changes_button_locator), 'save chnages button locator not fond before specified time out')
        save_changes_button_element.click()
        self.wait_for_ajax_spinner_load()

    def click_credit_management_page_inline_action_button(self, row_identifier_text):
        """
        Implementing click credit management page inline action button functionality
        :param row_identifier_text:
        :return:
        """
        self.click_inline_action_button(self.credit_management_grid_div_id, row_identifier_text, self.credit_management_grid_inline_action_column_number)
        self.wait_for_ajax_spinner_load()

    def click_monitoring_details_tab(self):
        """
        Implementing click monitoring details tab functionality
        :return:
        """
        monitoring_details_tab_element = self.wait().until(EC.element_to_be_clickable(self.monitoring_details_tab_locator), 'monitoring details tab locator not found before specified time')
        monitoring_details_tab_element.click()
        self.wait_for_ajax_spinner_load()

    def click_add_new_transaction_button(self):
        """
        Implementing click add new transaction button functionality
        :return:
        """
        button_element = self.wait().until(EC.presence_of_element_located(self.add_new_transaction_button_locator), 'add new transaction locator not found before specified time')
        self.hover(button_element)
        self.script_executor_click(button_element)
        self.wait_for_ajax_spinner_load()

    def set_transaction_date(self, date):
        """
        Implementing set transaction date functionality
        :param date:
        :return:
        """
        self.set_value_into_input_field(self.transaction_date_locator, date)

    def set_transaction_id(self):
        """
        Implementing set transaction id functionality
        :return: unique_transaction_id
        """
        unique_transaction_id = self.random_string_generator(6, string.digits)
        self.set_value_into_input_field(self.transaction_id_locator, unique_transaction_id)
        return unique_transaction_id

    def set_transaction_type(self, type):
        """
        Implementing set transaction type functionality
        :param type:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.transaction_type_locator, type)
        self.wait_for_ajax_spinner_load()

    def set_transaction_account_type(self, type):
        """
        Implementing set transaction account type functionality
        :param type:
        :return:
        """
        transaction_account_type_element = self.wait().until(EC.presence_of_element_located(self.transaction_account_type_locator), 'transaction account type locator not found before specified time')
        self.script_executor_click(transaction_account_type_element)
        self.wait_for_ajax_spinner_load()
        dropdown_item_locator = (By.XPATH, "//li[text()='%s']" % type)
        dropdown_item_element = self.wait().until(EC.presence_of_element_located(dropdown_item_locator), 'dropdown item locator not found before specified time')
        self.script_executor_click(dropdown_item_element)
        self.wait_for_ajax_spinner_load()

    def set_transaction_account(self, account):
        """
        Implementing set transaction account functionality
        :param account:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.transaction_account_locator, account)
        self.wait_for_ajax_spinner_load()

    def set_transaction_amount(self, amount):
        """
        Implementing set transaction amount functionality
        :param amount:
        :return:
        """
        transaction_amount_element = self.wait().until(EC.visibility_of_element_located(self.transaction_amount_locator), 'transaction amount locator not found before specified time')
        transaction_amount_element.click()
        first_row_column = client.Dispatch("WScript.Shell")
        first_row_column.SendKeys("^a")
        first_row_column.SendKeys("{DEL}")
        first_row_column.SendKeys(amount)
        self.wait_for_ajax_spinner_load()

    def set_transaction_currency(self, currency):
        """
        Implementing set transaction currency functionality
        :param currency:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.transaction_currency_locator, currency)
        self.wait_for_ajax_spinner_load()

    def set_external_reference_1(self, reference):
        """
        Implementing set external reference 1 functionality
        :param reference:
        :return:
        """
        self.set_value_into_input_field(self.external_reference_1_locator, reference)

    def set_external_reference_2(self, reference):
        """
        Implementing set external reference 2 functionality
        :param reference:
        :return:
        """
        self.set_value_into_input_field(self.external_reference_2_locator, reference)

    def set_statement_begin_date(self, date):
        """
        Implementing set statement begin date functionality
        :param date:
        :return:
        """
        self.set_value_into_input_field(self.statement_begin_date_locator, date)

    def set_statement_end_date(self, date):
        """
        Implementing set statement end date functionality
        :param date:
        :return:
        """
        self.set_value_into_input_field(self.statement_end_date_locator, date)

    def click_add_new_transaction_save_button(self):
        """
        Implementing click add new transaction save button functionality
        :return:
        """
        save_button_element = self.wait().until(EC.element_to_be_clickable(self.new_transaction_save_button_locator), 'new transaction save button locator not found before specified time out')
        save_button_element.click()
        self.wait_for_ajax_spinner_load()
        try:
            self.wait().until(EC.presence_of_element_located(self.confirmation_popup_locator), 'confirmation popup locator not found before specified time out')
            self.wait_for_ajax_spinner_load()
            ok_button_element = self.wait().until(EC.element_to_be_clickable(self.ok_button_locator), 'ok button locator not found before specified time out')
            ok_button_element.click()
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def filter_transaction_history_grid(self, column_name, filter_text):
        """
        Implementing filter transaction history grid functionality
        :param column_name:
        :param filter_text:
        :return:
        """
        self.grid_filter_with_textbox(self.transaction_history_grid_div_id, column_name, filter_text)
        self.wait_for_ajax_spinner_load()

    def get_transaction_history_grid_row_details(self):
        """
        Implementing get transaction history grid row details functionality
        :return: grid_row_data
        """
        grid_row_data = self.get_grid_row_details(self.transaction_history_grid_div_id, self.transaction_history_grid_row_details)
        amount = grid_row_data["Transaction Amount"]
        if "," in amount:
            new_amount = str.replace(amount, ",", "")
            grid_row_data["Transaction Amount"] = new_amount
        else:
            pass
        return grid_row_data

    def click_activate_credit_limit_button(self):
        """
        Implementing click activate credit limit button functionality
        :return:
        """
        activate_credit_limit_button_element = self.wait().until(EC.element_to_be_clickable(self.activate_credit_limit_button_locator), 'activate credit limit button locator not found before specified time')
        activate_credit_limit_button_element.click()
        self.wait_for_ajax_spinner_load()

    def set_carrier_name_for_activate_credit_limit(self, carrier_name):
        """
        Implementing set carrier name for activate credit limit functionality
        :param carrier_name:
        :return:
        """
        carrier_name_element = self.wait().until(EC.presence_of_element_located(self.carrier_name_dropdown_locator), 'carrier name locator not found before specified time')
        self.script_executor_click(carrier_name_element)
        self.wait_for_ajax_spinner_load()
        dropdown_item_locator = (By.XPATH, "//li[text()='%s']" % carrier_name)
        dropdown_item_element = self.wait().until(EC.presence_of_element_located(dropdown_item_locator), 'dropdown item locator not found before specified time')
        self.script_executor_click(dropdown_item_element)
        self.wait_for_ajax_spinner_load()

    def set_credit_management_status(self, status):
        """
        Implementing set credit management status functionality
        :param status:
        :return:
        """
        credit_management_status_element = self.wait().until(EC.presence_of_element_located(self.credit_management_enabled_locator), 'credit management status locator not found before specified time')
        self.script_executor_click(credit_management_status_element)
        self.wait_for_ajax_spinner_load()
        dropdown_item_locator = (By.XPATH, "//li[text()='%s']" % status)
        dropdown_item_element = self.wait().until(EC.presence_of_element_located(dropdown_item_locator), 'dropdown item locator not found before specified time')
        self.script_executor_click(dropdown_item_element)
        self.wait_for_ajax_spinner_load()

    def set_pre_paid_customer(self, status):
        """
        Implementing set pre paid customer functionality
        :param status:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.pre_paid_customer_locator, status)
        self.wait_for_ajax_spinner_load()

    def set_credit_limit(self, amount):
        """
        Implementing set credit limit functionality
        :param amount:
        :return:
        """
        credit_limit_input_field_element = self.wait().until(EC.visibility_of_element_located(self.credit_limit_locator), 'credit limit locator not found before specified time')
        credit_limit_input_field_element.click()
        first_row_column = client.Dispatch("WScript.Shell")
        first_row_column.SendKeys("^a")
        first_row_column.SendKeys("{DEL}")
        first_row_column.SendKeys(amount)
        self.wait_for_ajax_spinner_load()

    def set_threshold_values(self, threshold, value):
        """
        Implementing set threshold values functionality
        :param threshold:
        :param value:
        :return:
        """
        input_field_element = None
        if threshold.lower() == "level 1":
            input_field_element = self.wait().until(EC.visibility_of_element_located(self.level_1_threshold_locator), 'threshold level 1 locator not found before specified time ')
        elif threshold.lower() == "level 2":
            input_field_element = self.wait().until(EC.visibility_of_element_located(self.level_2_threshold_locator), 'threshold level 2 locator not found before specified time ')
        elif threshold.lower() == "level 3":
            input_field_element = self.wait().until(EC.visibility_of_element_located(self.level_3_threshold_locator), 'threshold level 3 locator not found before specified time ')
        elif threshold.lower() == "shut-off":
            input_field_element = self.wait().until(EC.visibility_of_element_located(self.shutoff_threshold_locator), 'threshold shutoff locator not found before specified time ')
        input_field_element.clear()
        input_field_element.send_keys(value)
        self.wait_for_ajax_spinner_load()

    def set_credit_limit_monitoring(self, item):
        """
        Implementing set credit limit monitoring functionality
        :param item:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.credit_limit_monitoring_locator, item)
        self.wait_for_ajax_spinner_load()

    def set_tarrif_type_assignment(self, item):
        """
        Implementing set tarrif type assignment functionality
        :param item:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.tarrif_type_assignment_locator, item)
        self.wait_for_ajax_spinner_load()

    def click_save_credit_profile_button(self):
        """
        Implementing click save credit profile button functionality
        :return:
        """
        save_button_element = self.wait().until(EC.element_to_be_clickable(self.save_credit_profile_button_locator), 'save credit profile button locator not found before specified time')
        save_button_element.click()
        self.wait_for_ajax_spinner_load()
        try:
            self.wait().until(EC.presence_of_element_located(self.confirmation_popup_locator), 'confirmation popup locator not found before specified time')
            self.wait_for_ajax_spinner_load()
            ok_button_element = self.wait().until(EC.element_to_be_clickable(self.ok_button_locator), 'ok button locator not found before specified time')
            ok_button_element.click()
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def get_credit_management_grid_row_details(self):
        """
        Implementing get credit management grid row details functionality
        :return: grid_row_data
        """
        grid_row_data = self.get_grid_row_details(self.credit_management_grid_div_id, self.credit_management_grid_row_details)
        amount = grid_row_data["Credit Limit"]
        if "," in amount:
            new_amount = str.replace(amount, ",", "")
            grid_row_data["Credit Limit"] = new_amount
        else:
            pass
        return grid_row_data

    def is_credit_management_grid_inline_items_visible(self, inline_item):
        """
        Implementing credit management grid inline items presence functionality
        :param inline_item:
        :return: True/False
        """
        status = None
        if inline_item.lower() == "credit profile":
            status = self.is_element_present(self.credit_profile_inline_item_locator)
        elif inline_item.lower() == "monitoring details":
            status = self.is_element_present(self.monitoring_details_inline_item_locator)
        elif inline_item.lower() == "enter transactions":
            status = self.is_element_present(self.enter_transactions_inline_item_locator)
        elif inline_item.lower() == "deactivate credit limit":
            status = self.is_element_present(self.deactivate_credit_limit_inline_item_locator)
        return status

    def set_credit_limit_for_edit_credit_profile(self, amount):
        """
        Implementing set credit limit for edit credit profile functionality
        :param amount:
        :return: credit_limit
        """
        if amount != "":
            credit_limit = amount
        else:
            amount = self.random_string_generator(4, string.digits)
            credit_limit = ('%.2f' % int(amount))
        credit_limit_input_field_element = self.wait().until(EC.visibility_of_element_located(self.credit_limit_locator), 'credit limit locator not found before specified time')
        credit_limit_input_field_element.click()
        first_row_column = client.Dispatch("WScript.Shell")
        first_row_column.SendKeys("^a")
        first_row_column.SendKeys("{DEL}")
        first_row_column.SendKeys(credit_limit)
        self.wait_for_ajax_spinner_load()
        return credit_limit

    def set_user_activation_approval_required(self, status):
        """
        Implementing set user activation approval required functionality
        :param status:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.user_activation_approval_required_locator, status)
        self.wait_for_ajax_spinner_load()

    def set_user_shutoff_approval_required(self, status):
        """
        Implementing set user shutoff approval required functionality
        :param status:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.user_shutoff_approval_required_locator, status)
        self.wait_for_ajax_spinner_load()

    def click_create_in_audit_account(self):
        """
        Implementing click create in audit account functionality
        :return:
        """
        create_in_audit_account_element = self.wait().until(EC.presence_of_element_located(self.create_in_audit_account_button_locator), 'create in audit account button locator not found before specified time out')
        self.hover(create_in_audit_account_element)
        self.script_executor_click(create_in_audit_account_element)
        self.wait_for_ajax_spinner_load()

    def set_dispute_terms_number(self, number):
        """
        Implementing set dispute terms number functionality
        :param number:
        :return:
        """
        self.set_value_into_input_field(self.dispute_terms_value_locator, str(number), use_win32com=True)

    def set_dispute_terms_base_period(self, base_period):
        """
        Implementing set dispute terms base period functionality
        :param base_period:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.dispute_terms_base_period_locator, base_period)
        self.wait_for_ajax_spinner_load()

    def set_dispute_terms_date_type(self, date_type):
        """
        Implementing set dispute terms date type functionality
        :param date_type:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.dispute_terms_date_type_locator, date_type)
        self.wait_for_ajax_spinner_load()

    def set_default_dispute_grade(self, grade):
        """
        Implementing set default dispute grade functionality
        :param grade:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.default_dispute_grade_locator, grade)
        self.wait_for_ajax_spinner_load()

    def set_audit_account_status(self, status):
        """
        Implementing set audit account status functionality
        :param status:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.audit_account_status_locator, status)
        self.wait_for_ajax_spinner_load()

    def close_add_in_audit_account_pop_up(self):
        """
        Implementing close add in audit account pop up functionality
        :return:
        """
        close_button_element = self.wait().until(EC.element_to_be_clickable(self.add_in_audit_account_close_button_locator), 'add in audit account close button locator not found before specified time out')
        close_button_element.click()
        self.wait_for_ajax_spinner_load()
        self.refresh_window()
        self.wait_for_ajax_spinner_load()

    def close_edit_in_audit_account_pop_up(self):
        """
        Implementing close edit in audit account pop up functionality
        :return:
        """
        close_button_element = self.wait().until(EC.element_to_be_clickable(self.edit_in_audit_account_close_button_locator), 'edit in audit account close button locator not found before specified time out')
        close_button_element.click()
        self.wait_for_ajax_spinner_load()

    def click_create_out_audit_account(self):
        """
        Implementing click create out audit account functionality
        :return:
        """
        create_out_audit_account_element = self.wait().until(EC.presence_of_element_located(self.create_out_audit_account_button_locator), 'create out audit account button locator not found before specified time out')
        self.hover(create_out_audit_account_element)
        self.script_executor_click(create_out_audit_account_element)
        self.wait_for_ajax_spinner_load()

    def set_bill_account_for_out_audit_account(self, account):
        """
        Implementing set bill account for out audit account functionality
        :param account:
        :return:
        """
        bill_account_dropdown_element = self.wait().until(EC.presence_of_element_located(self.bill_account_dropdown_locator), 'bill account dropdown locator not found before specified time out')
        self.script_executor_click(bill_account_dropdown_element)
        self.wait_for_ajax_spinner_load()
        dropdown_item_locator = (By.XPATH, "//ul[@id='BillAccountId_listbox']/descendant::li[text()='%s']" % account)
        dropdown_item_element = self.wait().until(EC.presence_of_element_located(dropdown_item_locator), 'dropdown item locator not found before specified time out')
        self.script_executor_click(dropdown_item_element)
        self.wait_for_ajax_spinner_load()

    def close_add_out_audit_account_pop_up(self):
        """
        Implementing close add out audit account pop up functionality
        :return:
        """
        close_button_element = self.wait().until(EC.element_to_be_clickable(self.add_out_audit_account_close_button_locator), 'add out audit account close button locator not found before specified time out')
        close_button_element.click()
        self.wait_for_ajax_spinner_load()
        self.refresh_window()
        self.wait_for_ajax_spinner_load()

    def close_edit_out_audit_account_pop_up(self):
        """
        Implementing close edit out audit account pop up functionality
        :return:
        """
        close_button_element = self.wait().until(EC.element_to_be_clickable(self.edit_out_audit_account_close_button_locator), 'edit out audit account close button locator not found before specified time out')
        close_button_element.click()
        self.wait_for_ajax_spinner_load()

    def expand_scenarios_section(self):
        """
        Implementing expand scenarios section functionality
        :return:
        """
        scenarios_section_element = self.wait().until(EC.element_to_be_clickable(self.scenarios_section_locator), 'scenarios section locator not found before specified time out')
        scenarios_section_element.click()
        self.wait_for_ajax_spinner_load()

    def click_create_scenario_button(self):
        """
        Implementing click create scenario button
        :return:
        """
        create_scenario_button_element = self.wait().until(EC.presence_of_element_located(self.create_scenario_locator), 'create scenario locator not found before specified time')
        self.hover(create_scenario_button_element)
        self.script_executor_click(create_scenario_button_element)
        self.wait_for_ajax_spinner_load()

    def set_scenario_type(self, item_name):
        """
        Implementing set scenario type functionality
        :param item_name:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.scenario_type_kendo_dropdown_locator, item_name)
        self.wait_for_ajax_spinner_load()

    def set_commercial_trunk(self, item_name):
        """
        Implementing set commercial trunk functionality
        :param item_name:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.commercial_trunk_kendo_dropdown_locator, item_name)
        self.wait_for_ajax_spinner_load()

    def set_country(self, item_name):
        """
        Implementing set country functionality
        :param item_name:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.event_settlement_country_kendo_dropdown_locator, item_name)
        self.wait_for_ajax_spinner_load()

    def set_service(self, item_name):
        """
        Implementing set service functionality
        :param item_name:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.service_kendo_dropdown_locator, item_name)
        self.wait_for_ajax_spinner_load()

    def filter_scenarios_grid(self, column_name, filter_item_list):
        """
        Implementing filter scenarios grid functionality
        :param column_name:
        :param filter_item_list:
        :return:
        """
        self.grid_filter_details(column_name, filter_item_list)

    def click_scenarios_grid_inline_action_button(self, name):
        """
        Implementing click scenarios grid inline action button functionality
        :param name:
        :return:
        """
        self.click_inline_action_button(self.scenarios_grid_div_id, name, self.scenarios_grid_inline_action_column_number)

    def get_scenarios_grid_row_details(self):
        """
        Implementing get scenarios grid row details functionality
        :return: grid_row_data
        """
        grid_row_data = self.get_grid_row_details(self.scenarios_grid_div_id, self.scenarios_grid_row_data, self.scenarios_data_grid_name)
        return grid_row_data

    def click_add_new_event_settlement_button(self):
        """
        Implementing click add new event settlement button
        :return:
        """
        add_new_event_settlement_button_element = self.wait().until(EC.presence_of_element_located(self.add_new_event_settlement_button_locator), 'add new event settlement locator not found before specified time out')
        add_new_event_settlement_button_element.click()
        self.wait_for_ajax_spinner_load()

    def click_delete_event_settlement_button(self):
        """
        Implementing click delete event settlement button
        :return:
        """
        delete_event_settlement_button_element = self.wait().until(EC.presence_of_element_located(self.delete_event_settlement_button_locator), 'delete event settlement locator not found before specified time out')
        delete_event_settlement_button_element.click()
        self.wait_for_ajax_spinner_load()
        try:
            self.wait().until(EC.visibility_of_element_located(self.delete_confirmation_message_locator), 'delete confirmation message locator not found before specified time out')
            ok_button_element = self.wait().until(EC.element_to_be_clickable(self.ok_button_locator), 'ok button locator not found before specified time out')
            self.wait_for_ajax_spinner_load()
            ok_button_element.click()
            self.wait_for_ajax_spinner_load()
            self.wait().until(EC.visibility_of_element_located(self.delete_success_message_locator), 'delete success message locator not found before specified time out')
            ok_button_element = self.wait().until(EC.element_to_be_clickable(self.ok_button_locator), 'ok button locator not found before specified time out')
            self.wait_for_ajax_spinner_load()
            ok_button_element.click()
            self.wait_for_ajax_spinner_load()
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def select_event_settlement_grid_row_checkbox(self, paying_party):
        """
        Implementing select event settlement grid row checkbox
        :param paying_party:
        :return:
        """
        self.select_grid_row_checkbox(self.event_settlement_grid_div_id, paying_party, self.event_settlement_grid_checkbox_column_number)

    def select_scenarios_grid_row_checkbox(self, commercial_trunk):
        """
        Implementing select scenarios grid row checkbox
        :param commercial_trunk:
        :return:
        """
        self.select_grid_row_checkbox(self.scenarios_grid_div_id, commercial_trunk, self.scenarios_grid_checkbox_column_number)

    def click_delete_scenario_button(self):
        """
        Implementing click delete scenario button
        :return:
        """
        self.wait_for_ajax_spinner_load()
        delete_scenario_button_element = self.wait().until(EC.presence_of_element_located(self.delete_scenario_button_locator), 'delete scenario locator not found before specified time out')
        delete_scenario_button_element.click()
        self.wait_for_ajax_spinner_load()
        try:
            self.wait().until(EC.visibility_of_element_located(self.delete_confirmation_message_locator), 'delete confirmation message locator not found before specified time out')
            ok_button_element = self.wait().until(EC.element_to_be_clickable(self.ok_button_locator), 'ok button locator not found before specified time out')
            self.wait_for_ajax_spinner_load()
            ok_button_element.click()
            self.wait_for_ajax_spinner_load()
            self.wait().until(EC.visibility_of_element_located(self.delete_success_message_locator), 'delete success message locator not found before specified time out')
            ok_button_element = self.wait().until(EC.element_to_be_clickable(self.ok_button_locator), 'ok button locator not found before specified time out')
            self.wait_for_ajax_spinner_load()
            ok_button_element.click()
            self.wait_for_ajax_spinner_load()
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def click_threshold_button(self):
        """
        Implementing click threshold button functionality
        :return:
        """
        threshold_button_element = self.wait().until(EC.element_to_be_clickable(self.threshold_button_locator), 'threshold button locator not found before specified time')
        threshold_button_element.click()
        self.wait_for_ajax_spinner_load()

    def select_threshold_grid_row_checkbox(self, carrier_list):
        """
        Implementing select threshold grid row checkbox functionality
        :param carrier_list:
        :return:
        """
        for row_identifier_text in carrier_list:
            self.select_grid_row_checkbox(self.threshold_grid_div_id, row_identifier_text, self.threshold_grid_checkbox_column_number)
        self.wait_for_ajax_spinner_load()

    def click_threshold_grid_bulk_edit_button(self):
        """
        Implementing click threshold grid bulk edit button functionality
        :return:
        """
        threshold_grid_bulk_edit_button_element = self.wait().until(EC.element_to_be_clickable(self.threshold_grid_bulk_edit_button_locator), 'threshold grid bulk edit button locator not found before specified time out')
        threshold_grid_bulk_edit_button_element.click()
        self.wait_for_ajax_spinner_load()

    def set_threshold_type_for_bulk_edit(self, threshold_type):
        """
        Implementing set threshold type for bulk edit functionality
        :param threshold_type:
        :return:
        """
        threshold_type_dropdown_element = self.wait().until(EC.presence_of_element_located(self.threshold_type_dropdown_locator), 'threshold type dropdown locator not found before specified time out')
        self.script_executor_click(threshold_type_dropdown_element)
        self.wait_for_ajax_spinner_load()
        dropdown_item_locator = (By.XPATH, "//li[text()='%s']" % threshold_type)
        dropdown_item_element = self.wait().until(EC.presence_of_element_located(dropdown_item_locator), 'dropdown item locator not found before specified time out')
        self.script_executor_click(dropdown_item_element)
        self.wait_for_ajax_spinner_load()

    def set_warning_levels_for_bulk_edit(self, level, value):
        """
        Implementing set warning levels for bulk edit functionality
        :param level:
        :param value:
        :return:
        """
        input_field_element = None
        if level.lower() == "level 1":
            input_field_element = self.wait().until(EC.visibility_of_element_located(self.level_1_warning_input_field_locator), 'level 1 input field locator not found before specified time out')
        elif level.lower() == "level 2":
            input_field_element = self.wait().until(EC.visibility_of_element_located(self.level_2_warning_input_field_locator), 'level 2 input field locator not found before specified time out')
        elif level.lower() == "level 3":
            input_field_element = self.wait().until(EC.visibility_of_element_located(self.level_3_warning_input_field_locator), 'level 3 input field locator not found before specified time out')
        elif level.lower() == "shutoff":
            input_field_element = self.wait().until(EC.visibility_of_element_located(self.shutoff_recommended_input_field_locator), 'shutoff recommended input field locator not found before specified time out')
        input_field_element.clear()
        input_field_element.send_keys(value)
        self.wait_for_ajax_spinner_load()

    def get_threshold_grid_row_details(self):
        """
        Implementing get threshold grid row details functionality
        :return: grid_row_data
        """
        grid_row_data = self.get_grid_row_details(self.threshold_grid_div_id, self.threshold_grid_row_details)
        return grid_row_data

    def click_threshold_grid_save_changes_button(self):
        """
        Implementing click threshold grid save changes button functionality
        :return:
        """
        threshold_grid_save_changes_button_element = self.wait().until(EC.element_to_be_clickable(self.threshold_grid_save_changes_button), 'threshold grid save chnages button locator not fond before specified time')
        threshold_grid_save_changes_button_element.click()
        self.wait_for_ajax_spinner_load()

    def set_monitoring_details_note(self, note_prefix):
        """
        Implementing set monitoring details note functionality
        :param note_prefix:
        :return: monitoring_details_note
        """
        monitoring_details_note = note_prefix+self.random_string_generator()
        self.set_value_into_input_field(self.monitoring_details_note_textarea_locator, monitoring_details_note)
        return monitoring_details_note

    def click_save_monitoring_details_button(self):
        """
        Implementing click save monitoring details button functionality
        :return:
        """
        save_monitoring_details_button_element = self.wait().until(EC.element_to_be_clickable(self.save_monitoring_details_button_loctor), 'save monitoring details button not found before specified time')
        save_monitoring_details_button_element.click()
        self.wait_for_ajax_spinner_load()
        try:
            self.wait().until(EC.presence_of_element_located(self.confirmation_popup_locator), 'confirmation popup locator not found before specified time')
            ok_button_element = self.wait().until(EC.element_to_be_clickable(self.ok_button_locator), 'ok button locator not found before specified time')
            ok_button_element.click()
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def get_trunk_provisioning_status_value(self):
        """
        Implementing get trunk provisioning status value functionality
        :return: trunk_provisioning_status_value
        """
        trunk_provisioning_status_value_element = self.wait().until(EC.presence_of_element_located(self.trunk_provisioning_status_value_locator), 'trunk provisioning status value locator not found before specified time')
        return trunk_provisioning_status_value_element.text

    def get_monitoring_details_note(self):
        """
        Implementing get monitoring details note functionality
        :return: monitoring_details_note
        """
        monitoring_details_note_textarea_element = self.wait().until(EC.presence_of_element_located(self.monitoring_details_note_textarea_locator), 'monitoring details note textarea locator not found before specified time')
        return monitoring_details_note_textarea_element.text

    def get_carrier_profile_page_grid_row_details(self, div_id, row_data):
        """
        Implementing get carrier profile page grid row details functionality
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

    def compare_carrier_dialed_digit_with_excel_data(self):
        """
        Implementing compare carrier dialed digit with excel data functionality
        :return: True/False
        """
        self.carrier_page_excel_data_dictionary = self.get_excel_data_dictionary()
        is_compared = False
        self.grid_row_data.clear()
        self.grid_row_data.update({"Dialed Digits": "", "Begin Date": ""})
        dialed_digit_grid_row_data = self.get_carrier_profile_page_grid_row_details(self.dialed_digits_grid_div_id, self.grid_row_data)
        if self.carrier_page_excel_data_dictionary["Digits"] == dialed_digit_grid_row_data["Dialed Digits"] and self.carrier_page_excel_data_dictionary["EffectiveDate"] == dialed_digit_grid_row_data["Begin Date"]:
            is_compared = True
        return is_compared

    def compare_carrier_rates_with_excel_data(self):
        """
        Implementing compare carrier rates with excel data functionality
        :return: True/False
        """
        is_compared = True
        self.grid_row_data.clear()
        self.grid_row_data.update({"Rate": "", "Begin Date": "", "Rating Method": ""})
        self.carrier_page_excel_data_dictionary["Rating Method"] = self.carrier_page_excel_data_dictionary["RatingMethod"]
        self.carrier_page_excel_data_dictionary["Begin Date"] = self.carrier_page_excel_data_dictionary["EffectiveDate"]
        self.carrier_page_excel_data_dictionary["Rate"] = self.carrier_page_excel_data_dictionary["Rate1"]
        rates_grid_row_data = self.get_carrier_profile_page_grid_row_details(self.rates_grid_div_id, self.grid_row_data)
        for key in rates_grid_row_data:
            if rates_grid_row_data[key] != self.carrier_page_excel_data_dictionary[key]:
                is_compared = False
                break
        return is_compared

    def compare_carrier_destination_with_excel_data(self):
        """
        Implementing compare carrier destination with excel data functionality
        :return: True/False
        """
        is_compared = False
        self.grid_row_data.clear()
        self.grid_row_data.update({"Destination": "", "Begin Date": ""})
        destination_grid_row_data = self.get_carrier_profile_page_grid_row_details(self.destinations_grid_div_id, self.grid_row_data)
        if self.carrier_page_excel_data_dictionary["Destination"] == destination_grid_row_data["Destination"] and self.carrier_page_excel_data_dictionary["EffectiveDate"] == destination_grid_row_data["Begin Date"]:
            is_compared = True
        return is_compared

    def expand_number_plans_section(self):
        """
        Implementing expand number plans section functionality
        :return:
        """
        self.click_element(self.number_plans_section_locator)

    def click_add_number_plan_button(self):
        """
        Implementing click add number plan button functionality
        :return:
        """
        self.click_element(self.add_number_plan_button_locator)

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

    def get_number_plans_grid_row_details(self):
        """
        Implementing get number plans grid row details functionality
        :return: number_plans_grid_row_data
        """
        self.grid_row_data.clear()
        self.grid_row_data.update({"Trunk": "", "Call Type": "", "Direction": "", "Number Plan": ""})
        number_plans_grid_row_data = self.get_grid_row_details(self.number_plans_grid_div_id, self.grid_row_data, self.number_plans_data_grid_name)
        return number_plans_grid_row_data

    def set_begin_date_for_add_number_plan(self, begin_date):
        """
        Implementing set begin date for add number plan functionality
        :param begin_date:
        :return:
        """
        if begin_date == "":
            begin_date = datetime.date.today()
        begin_date = "%d/%d/%d" % (begin_date.month, begin_date.day, begin_date.year)
        self.set_value_into_input_field(self.begin_date_inputbox_locator, begin_date)

    def click_carriers_page_first_row_inline_action_button(self):
        """
        Implementing click carriers page first row inline action button functionality
        :return:
        """
        self.click_inline_action_button(self.carriers_grid_div_id, None, self.carriers_grid_inline_action_button_column_number, True)

    def is_carrier_profile_page_loaded_properly(self):
        """
        Implementing is carrier profile page loaded properly functionality
        :return: True/False
        """
        return self.is_element_present(self.carrier_profile_information_locator)

    def is_price_list_history_page_loaded_properly(self):
        """
        Implementing is price list history page loaded properly functionality
        :return: True/False
        """
        return self.is_element_present(self.price_list_history_page_header_locator)

    def is_dialed_digits_search_successful(self):
        """
        Implementing is dialed digits search successful functionality
        :return: True/False
        """
        return self.is_element_present(self.dialed_digits_grid_row_count_locator)

    def is_rates_search_successful(self):
        """
        Implementing is rates search successful functionality
        :return: True/False
        """
        return self.is_element_present(self.rates_grid_row_count_locator)

    def is_destinations_search_successful(self):
        """
        Implementing is destinations search successful functionality
        :return: True/False
        """
        return self.is_element_present(self.destinations_grid_row_count_locator)

    def is_price_list_history_search_successful(self):
        """
        Implementing is price list history search successful functionality
        :return: True/False
        """
        return self.is_element_present(self.price_list_history_grid_row_count_locator)

    def click_create_intercompany_button(self):
        """
        Implementing click create intercompany button functionality
        :return:
        """
        self.click_element(self.create_carrier_dropdown_arrow_locator)
        self.click_element(self.create_intercompany_button_locator, True)

    def click_price_lists_history_grid_first_row_inline_action_button(self):
        """
        Implementing click price lists history grid first row inline action button functionality
        :return:
        """
        self.click_inline_action_button(self.price_lists_history_grid_div_id, None, self.price_lists_history_grid_inline_action_column_number, first_row=True)
        self.wait_for_ajax_spinner_load()

    def get_created_carrier_name(self):
        """
        Implementing get created carrier name functionality
        :return: created_carrier_name
        """
        global carrier_name
        return carrier_name

    def get_created_rate_plan_name(self):
        """
        Implementing get created rate plan name functionality
        :return: created_rate_plan_name
        """
        global rate_plan_name
        return rate_plan_name

    def set_rates_product(self):
        """
        Implementing set rates product functionality
        :return:
        """
        self.set_value_into_input_field(self.rates_tab_product_textbox_locator, self.carrier_page_excel_data_dictionary["Destination"])

    def get_carriers_grid_column_value(self, column_name):
        """
        Implementing get carriers grid column value functionality
        :param column_name:
        :return: column value
        """
        return self.get_specific_column_value_from_grid(self.carriers_grid_div_id, self.get_grid_row_count(self.carriers_grid_row_count_locator, 5), column_name)

    def get_carrier_relationships_select_date(self):
        """
        Implementing get carrier relationships select date functionality
        :return: select date
        """
        return self.get_text_from_element(self.select_date_textbox_locator, is_a_input_field=True)

    def expand_service_level_assignments_section(self):
        """
        Implementing expand service level assignments section functionality
        :return:
        """
        self.click_element(self.service_level_assignments_section_locator)

    def get_carrier_relationships_sections_grid_row_count(self, count_span_locator):
        """
        Implementing get carrier relationships sections grid row count functionality
        :param count_span_locator:
        :return: row_count
        """
        count_span_element = self.wait().until(EC.presence_of_element_located(count_span_locator), 'count span locator not found before specified time out')
        row_count = count_span_element.text.strip("()")
        return int(row_count)

    def get_commercial_trunks_grid_effective_date(self):
        """
        Implementing get commercial trunks grid effective date functionality
        :return: effective date
        """
        return self.get_specific_column_value_from_grid(self.commercial_trunks_grid_div_id, self.get_carrier_relationships_sections_grid_row_count(self.commercial_trunks_grid_row_count_locator), self.effective_date_column_name)

    def get_effective_date(self):
        """
        Implementing get effective date functionality
        :return: effective date
        """
        return self.get_text_from_element(self.effective_date_inputbox_locator, is_a_input_field=True)

    def get_begin_date(self):
        """
        Implementing get begin date functionality
        :return: begin date
        """
        return self.get_text_from_element(self.begin_date_textbox_locator, is_a_input_field=True)

    def get_end_date(self):
        """
        Implementing get end date functionality
        :return: end date
        """
        return self.get_text_from_element(self.end_date_textbox_locator, is_a_input_field=True)

    def get_service_level_grid_begin_date(self):
        """
        Implementing get service level grid begin date functionality
        :return: begin date
        """
        return self.get_specific_column_value_from_grid(self.service_level_grid_div_id, self.get_carrier_relationships_sections_grid_row_count(self.service_level_grid_row_count_locator), self.begin_date_column_name)

    def get_service_level_grid_end_date(self):
        """
        Implementing get service level grid end date functionality
        :return: end date
        """
        return self.get_specific_column_value_from_grid(self.service_level_grid_div_id, self.get_carrier_relationships_sections_grid_row_count(self.service_level_grid_row_count_locator), self.end_date_column_name)

    def get_rate_plans_grid_begin_date(self):
        """
        Implementing get rate plans grid begin date functionality
        :return: begin date
        """
        return self.get_specific_column_value_from_grid(self.rate_plan_grid_div_id, self.get_carrier_relationships_sections_grid_row_count(self.rate_plans_grid_row_count_locator), self.begin_date_column_name)

    def get_rate_plans_grid_end_date(self):
        """
        Implementing get rate plans grid end date functionality
        :return: end date
        """
        return self.get_specific_column_value_from_grid(self.rate_plan_grid_div_id, self.get_carrier_relationships_sections_grid_row_count(self.rate_plans_grid_row_count_locator), self.end_date_column_name)

    def get_number_plans_grid_begin_date(self):
        """
        Implementing get number plans grid begin date functionality
        :return: begin date
        """
        return self.get_specific_column_value_from_grid(self.number_plans_grid_div_id, self.get_carrier_relationships_sections_grid_row_count(self.number_plans_grid_row_count_locator), self.begin_date_column_name)

    def get_number_plans_grid_end_date(self):
        """
        Implementing get number plans grid end date functionality
        :return: end date
        """
        return self.get_specific_column_value_from_grid(self.number_plans_grid_div_id, self.get_carrier_relationships_sections_grid_row_count(self.number_plans_grid_row_count_locator), self.end_date_column_name)

    def click_add_service_level_button(self):
        """
        Implementing click add service level button functionality
        :return:
        """
        self.click_element(self.add_service_level_button_locator)

    def get_rates_tab_begin_date(self):
        """
        Implementing get rates tab begin date functionality
        :return: begin date
        """
        return self.get_text_from_element(self.rates_tab_begin_date_textbox_locator, is_a_input_field=True)

    def get_rates_tab_end_date(self):
        """
        Implementing get rates tab end date functionality
        :return: end date
        """
        return self.get_text_from_element(self.rates_tab_end_date_textbox_locator, is_a_input_field=True)

    def get_destinations_tab_begin_date(self):
        """
        Implementing get destinations tab begin date functionality
        :return: begin date
        """
        return self.get_text_from_element(self.destinations_begin_date_locator, is_a_input_field=True)

    def get_destinations_tab_end_date(self):
        """
        Implementing get destinations tab end date functionality
        :return: end date
        """
        return self.get_text_from_element(self.destinations_end_date_locator, is_a_input_field=True)

    def get_dialed_digits_grid_begin_date(self):
        """
        Implementing get dialed digits grid begin date functionality
        :return: begin date
        """
        return self.get_specific_column_value_from_grid(self.dialed_digits_grid_div_id, self.get_grid_row_count(self.dialed_digits_grid_row_count_locator, 1), self.begin_date_column_name)

    def get_dialed_digits_grid_end_date(self):
        """
        Implementing get dialed digits grid end date functionality
        :return: end date
        """
        return self.get_specific_column_value_from_grid(self.dialed_digits_grid_div_id, self.get_grid_row_count(self.dialed_digits_grid_row_count_locator, 1), self.end_date_column_name)

    def get_rates_grid_begin_date(self):
        """
        Implementing get rates grid begin date functionality
        :return: begin date
        """
        return self.get_specific_column_value_from_grid(self.rates_grid_div_id, self.get_grid_row_count(self.rates_grid_row_count_locator, 1), self.begin_date_column_name)

    def get_rates_grid_end_date(self):
        """
        Implementing get rates grid end date functionality
        :return: end date
        """
        return self.get_specific_column_value_from_grid(self.rates_grid_div_id, self.get_grid_row_count(self.rates_grid_row_count_locator, 1), self.end_date_column_name)

    def get_destinations_grid_begin_date(self):
        """
        Implementing get destinations grid begin date functionality
        :return: begin date
        """
        return self.get_specific_column_value_from_grid(self.destinations_grid_div_id, self.get_grid_row_count(self.destinations_grid_row_count_locator, 1), self.begin_date_column_name)

    def get_destinations_grid_end_date(self):
        """
        Implementing get destinations grid end date functionality
        :return: end date
        """
        return self.get_specific_column_value_from_grid(self.destinations_grid_div_id, self.get_grid_row_count(self.destinations_grid_row_count_locator, 1), self.end_date_column_name)

    def get_credit_management_grid_column_value(self, column_name):
        """
        Implementing get credit management grid column value functionality
        :param column_name:
        :return: column value
        """
        return self.get_specific_column_value_from_grid(self.credit_management_grid_div_id, self.get_grid_row_count(self.credit_management_grid_row_count_locator, 2), column_name)

    def click_credit_management_grid_first_row_inline_action_button(self):
        """
        Implementing click credit management grid first row inline action button functionality
        :return:
        """
        self.click_inline_action_button(self.credit_management_grid_div_id, None, self.credit_management_grid_inline_action_column_number, first_row=True)
        self.wait_for_ajax_spinner_load()

    def get_credit_profile_credit_limit(self):
        """
        Implementing get credit profile credit limit functionality
        :return: credit limit
        """
        return self.get_text_from_element(self.credit_limit_locator, is_a_input_field=True)

    def get_credit_limit_last_modified_date(self):
        """
        Implementing get credit limit last modified date functionality
        :return: credit limit last modified date
        """
        return self.get_text_from_element(self.credit_limit_last_modified_date_locator)

    def get_transactions_history_grid_column_value(self, column_name):
        """
        Implementing get transactions history grid column value functionality
        :param column_name:
        :return: column value
        """
        return self.get_specific_column_value_from_grid(self.transaction_history_grid_div_id, self.get_grid_row_count(self.transaction_history_grid_count_locator, 1), column_name)

    def get_add_new_transaction_date(self):
        """
        Implementing get add new transaction date functionality
        :return: transaction date
        """
        return self.get_text_from_element(self.transaction_date_locator, is_a_input_field=True)

    def get_statement_begin_date(self):
        """
        Implementing get statement begin date functionality
        :return: statement begin date
        """
        return self.get_text_from_element(self.statement_begin_date_locator, is_a_input_field=True)

    def get_trunk_name(self):
        """
        Implementing get trunk name functionality
        :return:
        """
        global trunk_name
        return trunk_name

    def set_trunk_dropdown_value(self, trunk):
        """
        Implementing set trunk dropdown value functionality
        :param trunk:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.trunk_kendo_dropdown_locator, trunk)
        self.wait_for_ajax_spinner_load()

    def set_destination_dropdown_value(self, destination):
        """
        Implementing set destination dropdown value functionality
        :param destination:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.destination_kendo_dropdown_locator, destination)
        self.wait_for_ajax_spinner_load()

    def set_service_level_begin_date(self):
        """
        Implementing set service level begin date functionality
        :return:
        """
        self.set_value_into_input_field(self.begin_date_inputbox_locator, self.get_date(current_date=True))

    def set_service_level_end_date(self):
        """
        Implementing set service level end date functionality
        :return:
        """
        self.set_value_into_input_field(self.end_date_textbox_locator, self.get_date(future_date=True))

    def get_rate_plan_name(self):
        """
        Implementing get rate plan name functionality
        :return:
        """
        global rate_plan_name
        return rate_plan_name

    def set_company_carrier_name(self, carrier_name_prefix):
        """
        Implementing set company carrier name functionality
        :param carrier_name_prefix:
        :return: company carrier name
        """
        global company_carrier_name
        company_carrier_name = carrier_name_prefix + self.random_string_generator(6)
        self.set_value_into_input_field(self.carrier_name_textbox_locator, company_carrier_name)
        return company_carrier_name

    def get_created_company_carrier_name(self):
        """
        Implementing get created company carrier name functionality
        :return: company_carrier_name
        """
        global company_carrier_name
        return company_carrier_name

    def set_carrier_type_for_carriers_search(self, carrier_type):
        """
        Implementing set carrier type for carriers search functionality
        :param carrier_type:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.carrier_type_kendo_dropdown_locator, carrier_type)
        self.wait_for_ajax_spinner_load()

    def expand_show_search_form_link(self):
        """
        Implementing expand show search form link functionality
        :return:
        """
        self.click_element(self.show_search_form_link_locator, script_executor=True)

    def click_carriers_page_search_button(self):
        """
        Implementing click carriers page search button functionality
        :return:
        """
        self.click_element(self.search_button_locator, script_executor=True)

    def is_inter_opco_scenarios_section_present(self):
        """
        Implementing is inter opco scenarios section present functionality
        :return: True/False
        """
        is_present = self.is_element_present(self.inter_opco_scenarios_section_locator)
        return is_present

    def expand_inter_opco_scenarios_section(self):
        """
        Implementing expand inter opco scenarios section functionality
        :return:
        """
        self.click_element(self.inter_opco_scenarios_section_locator, script_executor=True)

    def click_inter_opco_create_scenario_button(self):
        """
        Implementing click inter opco create scenario button functionality
        :return:
        """
        self.click_element(self.create_scenario_button_locator, script_executor=True)

    def set_inter_opco_name(self, inter_opco_name_prefix):
        """
        Implementing set inter opco name functionality
        :param inter_opco_name_prefix:
        :return: inter_opco_name
        """
        global inter_opco_name
        try:
            inter_opco_name = inter_opco_name_prefix + self.random_string_generator(6)
            self.set_value_into_input_field(self.inter_opco_scenario_name_textfield_locator, inter_opco_name)
            return inter_opco_name
        except:
            raise

    def set_in_opco(self, item_name):
        """
        Implementing set in opco functionality
        :param item_name:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.in_opco_kendo_dropdown_locator, item_name)
        self.wait_for_ajax_spinner_load()

    def set_out_opco(self, item_name):
        """
        Implementing set out opco functionality
        :param item_name:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.out_opco_kendo_dropdown_locator, item_name)
        self.wait_for_ajax_spinner_load()

    def click_inter_opco_save_button(self):
        """
        Implementing click inter opco save button functionality
        :return:
        """
        self.click_element(self.inter_opco_save_button_locator, script_executor=True)
        try:
            self.wait().until(EC.visibility_of_element_located(self.success_message_locator), 'success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise

    def click_inter_opco_add_new_event_settlement_button(self):
        """
        Implementing click inter opco add new event settlement button functionality
        :return:
        """
        self.click_element(self.inter_opco_add_new_event_settlement_button_locator, script_executor=True)

    def single_selection_from_kendo_in_new_event_settlement_grid(self, div_id, column_name, column_value, column_ul_id):
        """
        Implementing single selection from kendo in new event settlement grid functionality
        :param div_id:
        :param column_name:
        :param column_value:
        :param column_value:
        :param column_ul_id:
        :return:
        """
        column_locator = (By.XPATH, "//div[@id='%s']/descendant::th[@data-title='%s']" % (div_id, column_name))
        column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) + 1
        first_row_column_locator = (By.XPATH, "//div[@id='%s']/descendant::div[@class='k-grid-content']/descendant::td[%s]/descendant::span[@class='k-grid-cell']" % (div_id, str(column_index)))
        self.click_element(first_row_column_locator, script_executor=True)
        dropdown_item_locator = (By.XPATH, "//ul[@id='%s']/descendant::li[text()='%s']" % (column_ul_id, column_value))
        self.click_element(dropdown_item_locator, script_executor = True)

    def set_new_event_paying_account(self, account):
        """
        Implementing set new event paying account functionality
        :param account:
        :return:
        """
        self.single_selection_from_kendo_in_new_event_settlement_grid(self.new_event_settlement_grid_div_id, self.paying_account_column_name, account, self.paying_account_ul_id)

    def set_new_event_receiving_account(self, account):
        """
        Implementing set new event receiving account functionality
        :param account:
        :return:
        """
        self.single_selection_from_kendo_in_new_event_settlement_grid(self.new_event_settlement_grid_div_id, self.receiving_account_column_name, account, self.receiving_account_ul_id)

    def set_new_event_rate_plan(self, rate_plan, account):
        """
        Implementing set new event rate plan functionality
        :param rate_plan:
        :param account:
        :return:
        """
        rate_plan_name = rate_plan + " - " + account
        self.single_selection_from_kendo_in_new_event_settlement_grid(self.new_event_settlement_grid_div_id, self.rate_plan_column_name, rate_plan_name, self.rate_plan_ul_id)

    def set_new_event_direction(self, direction):
        """
        Implementing set new event direction functionality
        :param direction:
        :return:
        """
        self.single_selection_from_kendo_in_new_event_settlement_grid(self.new_event_settlement_grid_div_id, self.direction_column_name, direction, self.direction_ul_id)

    def select_carrier_dashboard_tab(self):
        """
        Implementing select carrier dashboard tab functionality
        :return:
        """
        self.select_static_tab(self.carrier_dashboard_tab_locator, 'carrier dashboard tab not found before specified time')

    def click_network_codes_link(self):
        """
        Implementing click network codes link functionality
        :return:
        """
        self.click_element(self.network_codes_link_locator)

    def is_network_codes_link_present(self):
        """
        Implementing is network codes link present functionality
        :return: True/False
        """
        is_present = self.is_element_present(self.network_codes_link_locator)
        return is_present

    def is_network_codes_link_not_present(self):
        """
        Implementing is network codes link not present functionality
        :return: True/False
        """
        is_not_present = None
        try:
            self.wait(5).until(EC.presence_of_element_located(self.network_codes_link_locator))
            is_not_present = False
        except:
            is_not_present = True
        finally:
            return is_not_present

    def click_number_plans_inline_action_button(self):
        """
        Implementing click number plans inline action button functionality
        :return:
        """
        self.click_inline_action_button(self.number_plans_grid_div_id, None, self.scenarios_grid_checkbox_column_number, True)

    def get_agreement_from_agreement_table(self, server, database, user, password):
        """
        Implementing get agreement from agreement table functionality
        :param server:
        :param database:
        :param user:
        :param password:
        :return: agreement
        """
        agreement = ""
        try:
            Database.open_mssql(server=server, database=database, user=user, password=password)
            sql=("""
            SELECT TOP 1 ag.Agreement FROM iXCore_Main.dbo.tbAgreementNP AS agnp
            INNER JOIN [iXCore_Main].[dbo].[tbAgreement] AS ag
            ON agnp.AgreementNPID = ag.AgreementID
            WHERE agnp.DirectionID = 3;
            """)
            cursor = Database.get_cursor(sql)
            row = cursor.fetchone()
            cursor.close()
            Database.close()
            agreement = str(row.Agreement).strip()
        except:
            raise
        finally:
            return agreement

    def get_all_values_from_lookup_table(self, server, database, user, password):
        """
        Implementing get all values from lookup table functionality
        :param server:
        :param database:
        :param user:
        :param password:
        :return: True/False
        """
        record_found = None
        try:
            Database.open_mssql(server=server, database=database, user=user, password=password)
            sql = ("""
                    SELECT * FROM iXReport_Main.dbo.tbLookup 
                    WHERE Scope = 'Sales' AND [Lookup] = 'SummarizeBy' AND LookupValue = '%CustomFields%';
                    """)
            cursor = Database.get_cursor(sql)
            row = cursor.fetchone()
            if row.Lookup == 'SummarizeBy':
                record_found = True
            else:
                record_found = False
            cursor.close()
        except:
            raise
        finally:
            Database.close()
            return record_found

    def is_bidirectional_available_in_direction_dropdown(self):
        """
        Implementing is bidirectional available in direction dropdown functionality
        :return: True/False
        """
        is_available = False
        self.click_element(self.direction_dropdown_locator)
        if self.is_element_present(self.bidirectional_item_locator) is True:
            is_available = True
        self.click_element(self.direction_dropdown_locator)
        return is_available

    def compare_carrier_grid_first_row_data(self, carrier_name):
        """
        Implementing compare carrier grid first row data functionality
        :param carrier_name:
        :return: True/False
        """
        status = False
        grid_carrier_name = self.get_specific_column_value_from_grid(self.carriers_grid_div_id, 1, self.carrier_column_name)
        if carrier_name == grid_carrier_name:
            status = True
        return status

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

    def set_carriers_grid_settings(self, grid_settings):
        """
        Implementing set carriers grid settings functionality
        :param grid_settings:
        :return:
        """
        self.set_grid_settings(self.carriers_grid_div_id, grid_settings)

    def sort_carriers_grid_column(self, column_name, descending_order):
        """
        Implementing sort carriers grid column functionality
        :param column_name:
        :param descending_order:
        :return:
        """
        self.sort_grid_column(self.carriers_grid_div_id, column_name, descending_order)

    def get_all_rows_of_specific_column_from_carriers_grid(self, column_name):
        """
        Implementing get all rows of specific column from carriers grid functionality
        :param column_name:
        :return: all_row_data
        """
        self.all_row_data = self.get_all_rows_of_specific_column_from_grid(self.carriers_grid_div_id, column_name, self.get_grid_row_count(self.carriers_grid_row_count_locator, 5))
        return self.all_row_data

    def drag_carriers_grid_column(self, source_column, destination_column):
        """
        Implementing drag carriers grid column functionality
        :param source_column:
        :param destination_column:
        :return:
        """
        self.drag_grid_column(self.carriers_grid_div_id, source_column, destination_column)

    def get_carriers_grid_column_names_by_order(self):
        """
        Implementing get carriers grid column names by order functionality
        :return: column_name_list
        """
        self.column_name_list = self.get_grid_column_names_by_order(self.carriers_grid_div_id)
        return self.column_name_list

    def click_carriers_grid_export_to_excel_button(self):
        """
        Implementing click carriers grid export to excel button functionality
        :return:
        """
        self.click_grid_export_to_excel_button(self.carriers_grid_div_id)

    def is_create_carrier_button_present(self):
        """
        Implementing is create carrier button present functionality
        :return: True/False
        """
        return self.is_element_present(self.create_carrier_locator)

    def select_rates_grid_first_row_checkbox(self):
        """
        Implementing select rates grid first row checkbox
        :return:
        """
        self.select_grid_row_checkbox(self.rates_grid_div_id, None, self.rates_grid_checkbox_column_number, True)

    def click_bulk_edit_button(self):
        """
        Implementing click bulk edit button checkbox
        :return:
        """
        self.click_element(self.bulk_edit_button_locator)

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

    def click_save_changes_button_with_confirmation(self):
        """
        Implementing click save changes button with confirmation functionality
        :return:
        """
        self.click_element(self.save_changes_button_locator)
        try:
            self.wait().until(EC.presence_of_element_located(self.confirmation_popup_locator), 'confirmation popup locator not found before specified time')
            self.click_element(self.ok_button_locator)
        except:
            raise

    def set_carrier_profile_rates_grid_begin_date(self):
        """
        Implementing set carrier profile rates grid begin date functionality
        :return:
        """
        self.click_element(self.rates_grid_first_row_begin_date_calendar_icon_locator, error_message='begin date calendar icon locator not found before specified time out')
        input_field = client.Dispatch("WScript.Shell")
        input_field.SendKeys("^a")
        input_field.SendKeys("{DEL}")
        input_field.SendKeys(self.get_date(future_date=True, number_of_days_to_add=2) + " 12:00 AM")
        self.click_element(self.rates_grid_row_count_locator)
        self.wait_for_ajax_spinner_load()
        self.click_save_changes_button()
        self.wait().until(EC.visibility_of_element_located(self.success_message_locator))
        self.click_element(self.ok_button_locator)

    def is_add_network_destination_button_not_present(self):
        """
        Implementing is add network destination button not present functionality
        :return: True/False
        """
        is_not_present = None
        try:
            self.wait(5).until(EC.presence_of_element_located(self.add_network_destination_button_locator))
            is_not_present = False
        except:
            is_not_present = True
        finally:
            return is_not_present

    def click_network_codes_search_button(self):
        """
        Implementing click network codes search button functionality
        :return:
        """
        self.click_element(self.network_codes_search_button_locator, True)

    def check_inactive_user_is_not_present_in_seller_name_dropdown(self, user_name):
        """
        Implementing check inactive user is not present in seller dropdown functionality
        :param user_name:
        :return:
        """
        is_not_present = None
        try:
            seller_name_locator = (By.XPATH, "//li[text()='%s']" %(user_name))
            self.wait(30).until(EC.presence_of_element_located(seller_name_locator))
            is_not_present = False
        except:
            is_not_present = True
        finally:
            return is_not_present

    def is_specific_tab_focused_properly_in_credit_profile_page(self, tab_name):
        """
        Implementing is credit profile tab focused properly in credit profile page functionality
        :param tab_name:
        :return: True/False
        """
        tab_locator = (By.XPATH, "//li[contains(@id, 'CreditProfileTabStrip_')]/descendant::a[text()='%s']" % tab_name)
        return self.is_element_present(tab_locator)

    def is_specific_error_message_is_displayed_in_credit_profile_page(self, error_message):
        """
        Implementing is specific error message is displayed in credit profile page functionality
        :param error_message:
        :return: True/False
        """
        is_displayed = False
        self.click_element(self.save_credit_profile_button_locator)
        error_message_popup_locator = (By.XPATH, "//p[contains(text(), '%s')]" % error_message)
        if self.is_element_present(error_message_popup_locator) is True:
            self.click_element(self.ok_button_locator)
            is_displayed = True
        else:
            self.click_element(self.ok_button_locator)
        return is_displayed

    def set_remaining_credit_amount_threshold_values(self, threshold, value):
        """
        Implementing set remaining credit amount threshold values functionality
        :param threshold:
        :param value:
        :return:
        """
        input_field_element = None
        if threshold.lower() == "level 1":
            input_field_element = self.wait().until(EC.visibility_of_element_located(self.level_1_remaining_credit_amount_threshold_locator), 'threshold level 1 locator not found before specified time ')
        elif threshold.lower() == "level 2":
            input_field_element = self.wait().until(EC.visibility_of_element_located(self.level_2_remaining_credit_amount_threshold_locator), 'threshold level 2 locator not found before specified time ')
        elif threshold.lower() == "level 3":
            input_field_element = self.wait().until(EC.visibility_of_element_located(self.level_3_remaining_credit_amount_threshold_locator), 'threshold level 3 locator not found before specified time ')
        elif threshold.lower() == "shut-off":
            input_field_element = self.wait().until(EC.visibility_of_element_located(self.shutoff_remaining_credit_amount_threshold_locator), 'threshold shutoff locator not found before specified time ')
        input_field_element.clear()
        input_field_element.send_keys(value)
        self.wait_for_ajax_spinner_load()

    def is_add_new_transaction_pop_up_present(self):
        """
        Implementing is add new transaction pop up present functionality
        :return: True/False
        """
        return self.is_element_present(self.add_new_transaction_pop_up_locator)

    def select_deactivate_credit_limit_inline_action_item(self, item_name):
        """
        Implementing select deactivate credit limit inline action item functionality
        :param item_name:
        :return: 
        """
        self.select_inline_action_item(item_name)
        try:
            self.wait().until(EC.presence_of_element_located(self.credit_limit_deactivated_confirmation_popup_locator), 'confirmation popup locator not found before specified time')
            self.click_element(self.ok_button_locator)
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def set_trunk_provisioning_status_in_grid(self, status):
        """
        Implementing set trunk provisioning status in grid functionality
        :param status:
        :return:
        """
        column_locator = (By.XPATH, "//th[@data-title='%s']" % self.trunk_provisioning_status_column_name)
        column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) + 1
        first_row_column_locator = (By.XPATH, "//div[contains(@id, '%s') and @data-grid-name='%s']/descendant::div[@class='k-grid-content']/descendant::td[%s]/descendant::span[@class='k-grid-cell']" % (self.credit_management_grid_div_id, self.credit_management_data_grid_name, str(column_index)))
        self.click_element(first_row_column_locator)
        dropdown_item_locator = (By.XPATH, "//ul[@aria-hidden='false']/descendant::li[contains(text(), '%s')]" % status)
        self.click_element(dropdown_item_locator, script_executor=True)

    def get_created_bill_account_name(self):
        """
        Implementing get created bill account name functionality
        :return: created_bill_account_name
        """
        global account_name
        return account_name

    def set_create_carrier_window_carrier_category_1(self, category):
        """
        Implementing set create carrier window carrier category1 functionality
        :param category:
        :return: True/False
        """
        self.single_selection_from_kendo_dropdown(self.carrier_category1_kendo_dropdown_locator, category)
        self.wait_for_ajax_spinner_load()

    def set_create_carrier_window_carrier_category_2(self, category):
        """
        Implementing set create carrier window carrier category2 functionality
        :param category:
        :return: True/False
        """
        self.single_selection_from_kendo_dropdown(self.carrier_category2_kendo_dropdown_locator, category)
        self.wait_for_ajax_spinner_load()

    def is_add_service_level_button_not_present(self):
        """
        Implementing is add service level button not present functionality
        :return: True/False
        """
        is_not_present = None
        try:
            self.wait(5).until(EC.presence_of_element_located(self.add_service_level_button_locator))
            is_not_present = False
        except:
            is_not_present = True
        finally:
            return is_not_present

    def is_add_service_level_inline_action_button_not_present(self):
        """
        Implementing is add service level inline action button not present functionality
        :return: True/False
        """
        is_not_present = None
        try:
            self.wait(5).until(EC.presence_of_element_located(self.add_service_level_inline_action_button_locator))
            is_not_present = False
        except:
            is_not_present = True
        finally:
            return is_not_present

    def is_service_level_change_work_order_section_present(self):
        """
        Implementing is service level change work order section present functionality
        :return: True/False
        """
        return self.is_element_present(self.service_level_change_work_order_section_locator)

    def expand_service_level_change_work_order_section(self):
        """
        Implementing expand service level change work order section functionality
        :return:
        """
        self.click_element(self.service_level_change_work_order_section_locator)

    def click_add_new_service_level_change_work_order_button(self):
        """
        Implementing click add new service level change work order button functionality
        :return:
        """
        self.click_element(self.add_new_service_level_change_work_order_button_locator)

    def select_service_level_commercial_trunk(self, commercial_trunk_name):
        """
        Implementing select service level commercial trunk functionality
        :param commercial_trunk_name:
        :return:
        """
        service_level_commercial_trunk_locator = (By.XPATH, "//div[@id='divNewServiceLevelTrunkGrid']/descendant::span[text()='%s']/../../descendant::input[@type='checkbox']" % commercial_trunk_name)
        self.click_element(service_level_commercial_trunk_locator)

    def click_next_button(self):
        """
        Implementing click next button functionality
        :return:
        """
        self.click_element(self.next_button_locator)

    def select_service_level_country(self, country_name, all_countries):
        """
        Implementing select service level country functionality
        :param country_name:
        :param all_countries:
        :return:
        """
        if all_countries is True:
            self.click_element(self.move_all_item_button_locator)
        else:
            country_list = [country_name]
            self.move_available_items_to_destination(self.service_level_country_select_id, country_list)

    def select_service_level_destination(self, destination_name):
        """
        Implementing select service level destination functionality
        :param destination_name:
        :return:
        """
        destination_list = [destination_name]
        self.move_available_items_to_destination(self.service_level_destinations_select_id, destination_list, self.destination_move_button_locator)

    def select_create_service_level_change_work_order_grid_first_row_checkbox(self):
        """
        Implementing select create service level change work order grid first row checkbox functionality
        :return:
        """
        self.click_element(self.create_service_level_change_work_order_grid_first_row_checkbox_locator, True)

    def click_submit_button(self):
        """
        Implementing click submit button functionality
        :return:
        """
        self.click_element(self.submit_button_locator)
        try:
            self.wait().until(EC.presence_of_element_located(self.confirmation_popup_locator), 'confirmation popup locator not found before specified time')
            self.click_element(self.ok_button_locator)
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def filter_service_level_change_work_order_grid(self, column_name, filter_item_list):
        """
        Implementing filter service level change work order grid functionality
        :param column_name:
        :param filter_item_list:
        :return:
        """
        self.grid_filter_details(column_name, filter_item_list, self.service_level_change_work_order_grid_div_id)

    def set_service_level_change_work_order_grid_status(self, status):
        """
        Implementing set service level change work order grid status functionality
        :param status:
        :return:
        """
        column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::th[@data-title='%s']" % (self.service_level_change_work_order_grid_div_id, self.status_column_name))
        column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) + 1
        first_row_column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::div[@class='k-grid-content']/descendant::td[%s]/descendant::span[@class='k-grid-cell']" % (self.service_level_change_work_order_grid_div_id, str(column_index)))
        self.single_selection_from_static_kendo_dropdown(first_row_column_locator, status)
        self.click_element(self.page_header_locator)

    def click_service_level_change_work_order_grid_save_changes_button(self):
        """
        Implementing click service level change work order grid save changes button functionality
        :return:
        """
        self.click_element(self.service_level_change_work_order_grid_save_changes_button_locator)
        try:
            self.wait().until(EC.presence_of_element_located(self.confirmation_popup_locator), 'confirmation popup locator not found before specified time')
            self.click_element(self.ok_button_locator)
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def filter_service_level_assignments_grid(self, column_name, filter_item_list):
        """
        Implementing filter service level assignments grid functionality
        :param column_name:
        :param filter_item_list:
        :return:
        """
        self.grid_filter_details(column_name, filter_item_list, self.service_level_assignments_grid_div_id)

    def get_service_level_assignments_grid_first_row_column_value(self, column_name):
        """
        Implementing get service level assignments grid first row column value functionality
        :param  column_name:
        :return: column_value
        """
        return self.get_specific_column_value_from_grid(self.service_level_assignments_grid_div_id, 1, column_name)

    def click_service_level_change_work_order_grid_first_row_work_order_name(self):
        """
        Implementing click service level change work order grid first row work order name functionality
        :return:
        """
        column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::th[@data-title='%s']" % (self.service_level_change_work_order_grid_div_id, self.work_order_name_column_name))
        column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) + 1
        first_row_column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::div[@class='k-grid-content']/descendant::td[%s]/descendant::a" % (self.service_level_change_work_order_grid_div_id, str(column_index)))
        self.click_element(first_row_column_locator)

    def click_service_level_change_work_order_report_first_row_work_order(self):
        """
        Implementing click service level change work order report first row work order functionality
        :return:
        """
        self.switch_to_frame(self.work_order_report_iframe_locator)
        try:
            self.click_element(self.service_level_work_order_report_first_row_work_order_name_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def get_service_level_change_work_order_report_first_row_end_date(self):
        """
        Implementing get service level change work order report first row end date functionality
        :return: end_date
        """
        end_date = ""
        self.switch_to_frame(self.work_order_report_iframe_locator)
        self.switch_to_frame(self.level_2_iframe_locator)
        try:
            end_date = self.get_text_from_element(self.service_level_work_order_report_first_row_end_date_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()
            return end_date

    def sort_service_level_change_work_order_grid_column_in_descending_order(self, column_name):
        """
        Implementing sort service level change work order grid column in descending order functionality
        :param column_name:
        :return:
        """
        column_name_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::th[@data-title='%s']" % (self.service_level_change_work_order_grid_div_id, column_name))
        self.click_element(column_name_locator)
        self.click_element(column_name_locator)

    def is_add_service_level_button_present(self):
        """
        Implementing click service level assignments first row inline action button functionality
        :return: True/False
        """
        is_present = self.is_element_present(self.add_service_level_button_locator)
        return is_present

    def click_service_level_assignments_first_row_inline_action_button(self):
        """
        Implementing click service level assignments first row inline action button functionality
        :return:
        """
        self.click_inline_action_button(self.service_level_assignments_grid_div_id, None, self.service_level_assignments_inline_action_button_column_number, True)

    def is_service_level_change_work_order_section_not_present(self):
        """
        Implementing is service level change work order section not present functionality
        :return: True/False
        """
        is_not_present = None
        try:
            self.wait(5).until(EC.presence_of_element_located(self.service_level_change_work_order_section_locator))
            is_not_present = False
        except:
            is_not_present = True
        finally:
            return is_not_present

    def click_cancel_button(self):
        """
        Implementing click cancel button functionality
        :return:
        """
        self.click_element(self.cancel_button_locator)

    def get_service_level_change_work_order_grid_first_row_work_order_name(self):
        """
        Implementing get service level change work order grid first row work order name functionality
        :return: column_value
        """
        return self.get_text_from_element(self.service_level_grid_first_row_work_order_name_locator)

    def verify_slwo_got_end_dated_in_database(self, server, database, user, password, work_order_name):
        """
        Implementing verify slwo got end dated in database functionality
        :param server:
        :param database:
        :param user:
        :param password:
        :param work_order_name:
        :return: True/False
        """
        is_verified = False
        try:
            Database.open_mssql(server=server, database=database, user=user, password=password)
            sql = ("""
                    SELECT sl.EndDate
                    FROM ixcore_main.dbo.tbagreementsl AS sl
                    INNER JOIN ixcore_main.dbo.tbslworkorder AS wo ON (sl.TrunkID = wo.TrunkID)
                    WHERE wo.WorkOrder=?
                    ORDER BY sl.ModifiedDate DESC
                    """)
            cursor = Database.get_cursor(sql, work_order_name)
            row = cursor.fetchone()
            end_date = row.EndDate
            end_date_string = str(end_date).split(".")
            end_date_time = datetime.datetime.strptime(end_date_string[0], "%Y-%m-%d %H:%M:%S")
            current_time = datetime.datetime.now()
            difference = current_time - end_date_time
            if int(difference.days) > 0:
                is_verified = True
        except:
            raise
        finally:
            Database.close()
            return is_verified

    def expand_bill_account_recurrent_charges_section(self):
        """
        Implementing expand bill account recurrent charges section functionality
        :return:
        """
        self.click_element(self.recurrent_charges_locator, script_executor=True, error_message='bill account recurrent charges link locator not found before specified time out')

    def click_recurrent_charges_add_new_record_button(self):
        """
        Implementing click recurrent charges add new record button functionality
        :return:
        """
        self.click_element(self.recurrent_charges_add_new_record_button_locator, script_executor=True, error_message='recurrent charges add new record button locator not found before specified time out')

    def select_recurrent_charges_charge_product(self, charge_product):
        """
        Implementing select recurrent charges charge product functionality
        :param charge_product:
        :return:
        """
        if charge_product is None or charge_product == '':
            recurring_charge_product_td_locator = (By.XPATH, "//div[contains(@id, '%s') and @data-grid-name='%s']/descendant::div[@class='k-grid-content']/descendant::td[3]/span[@class='k-grid-cell']" % (self.recurrent_charges_grid_div_id, self.recurrent_charges_data_grid_name))
            self.click_element(recurring_charge_product_td_locator, script_executor=True)
            self.wait_for_ajax_spinner_load()
            recurrent_charges_charge_method_item_locator = (By.XPATH, "//ul[@id='RecurringChargeProductId_listbox']/li[1]")
            self.click_element(recurrent_charges_charge_method_item_locator, script_executor=True)
        else:
            self.single_selection_from_kendo_in_grid(div_id=self.recurrent_charges_grid_div_id, column_name=self.charge_product_column_name, column_value=charge_product, data_grid_name=self.recurrent_charges_data_grid_name)

    def get_grid_column_position(self, column_name):
        """
        Implementing get grid column position functionality
        :param column_name:
        :return:
        """
        column_locator = (By.XPATH, "//th[@data-title='%s']" % column_name)
        column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) + 1
        return column_index

    def select_recurrent_charges_grid_active_checkbox(self):
        """
        Implementing select recurrent charges grid active checkbox functionality
        :return:
        """
        column_index = self.get_grid_column_position(self.recurrent_charges_grid_active_column_name)
        checkbox_locator = (By.XPATH, "//div[contains(@id, '%s') and @data-grid-name='%s']/descendant::div[@class='k-grid-content']/descendant::td[%s]/descendant::input[@class='chkbx']" % (self.recurrent_charges_grid_div_id, self.recurrent_charges_data_grid_name, str(column_index)))
        self.click_element(checkbox_locator)

    def set_recurrent_charges_recurring_charge_name(self, prefix):
        """
        Implementing set recurrent charges recurring charge name functionality
        :param prefix:
        :return:
        """
        global recurring_charge_name
        recurring_charge_name = prefix+self.random_string_generator(size=2)

        recurring_charge_name_td_locator = (By.XPATH, "//div[contains(@id, '%s') and @data-grid-name='%s']/descendant::div[@class='k-grid-content']/descendant::td[11]" % (self.recurrent_charges_grid_div_id, self.recurrent_charges_data_grid_name))
        self.click_element(recurring_charge_name_td_locator, script_executor=True)
        recurring_charge_name_locator = (By.XPATH, "//div[contains(@id, '%s') and @data-grid-name='%s']/descendant::div[@class='k-grid-content']/descendant::td[11]/descendant::input[@id='Name']" % (self.recurrent_charges_grid_div_id, self.recurrent_charges_data_grid_name))
        self.set_value_into_input_field(recurring_charge_name_locator, value=recurring_charge_name)

    def get_recurrent_charges_recurring_charge_name(self):
        """
        Implementing set recurrent charges recurring charge name functionality
        :return:
        """
        global recurring_charge_name
        return recurring_charge_name

    def set_recurrent_charges_begin_date(self, begin_date):
        """
        Implementing set recurrent charges begin date functionality
        :param begin_date:
        :return:
        """
        recurring_charge_begin_date_cell_locator = (By.XPATH, "//div[contains(@id, '%s') and @data-grid-name='%s']/descendant::div[@class='k-grid-content']/descendant::td[17]" % (self.recurrent_charges_grid_div_id, self.recurrent_charges_data_grid_name))
        self.click_element(recurring_charge_begin_date_cell_locator)
        recurring_charge_begin_date_input_field_locator = (By.XPATH, "//div[contains(@id, '%s') and @data-grid-name='%s']/descendant::div[@class='k-grid-content']/descendant::td[17]/descendant::input[@id='BeginDate']" % (self.recurrent_charges_grid_div_id, self.recurrent_charges_data_grid_name))
        self.set_value_into_input_field(recurring_charge_begin_date_input_field_locator, value=begin_date)

    def set_recurrent_charges_amount(self, amount):
        """
        Implementing set recurrent charges recurring amount functionality
        :param amount:
        :return:
        """
        recurring_charge_name_td_locator = (By.XPATH, "//div[contains(@id, '%s') and @data-grid-name='%s']/descendant::div[@class='k-grid-content']/descendant::td[14]" % (self.recurrent_charges_grid_div_id, self.recurrent_charges_data_grid_name))
        self.click_element(recurring_charge_name_td_locator)
        recurring_charge_name_locator = (By.XPATH, "//div[contains(@id, '%s') and @data-grid-name='%s']/descendant::div[@class='k-grid-content']/descendant::td[14]/descendant::input[@id='ChargeAmount']" % (self.recurrent_charges_grid_div_id, self.recurrent_charges_data_grid_name))
        self.set_value_into_input_field(recurring_charge_name_locator, value=amount)

    def set_recurrent_charges_method(self):
        """
        Implementing set recurrent charges recurring charge method functionality
        :return:
        """
        recurring_charge_name_td_locator = (By.XPATH, "//div[contains(@id, '%s') and @data-grid-name='%s']/descendant::div[@class='k-grid-content']/descendant::td[15]/span[@class='k-grid-cell']" % (self.recurrent_charges_grid_div_id, self.recurrent_charges_data_grid_name))
        self.click_element(recurring_charge_name_td_locator, script_executor=True)
        self.wait_for_ajax_spinner_load()
        recurrent_charges_charge_method_item_locator = (By.XPATH, "//ul[@id='ChargeMethodId_listbox']/li[1]")
        self.click_element(recurrent_charges_charge_method_item_locator)

    def select_recurrent_charges_accounting_code(self):
        """
        Implementing select recurrent charges accounting code functionality
        :return:
        """
        recurring_charge_name_td_locator = (By.XPATH, "//div[contains(@id, '%s') and @data-grid-name='%s']/descendant::div[@class='k-grid-content']/descendant::td[13]/span[@class='k-grid-cell']" % (self.recurrent_charges_grid_div_id, self.recurrent_charges_data_grid_name))
        self.click_element(recurring_charge_name_td_locator)
        self.wait_for_ajax_spinner_load()
        recurrent_charges_charge_method_item_locator = (By.XPATH, "//ul[@id='AccountingCodeID_listbox']/li[1]")
        self.click_element(recurrent_charges_charge_method_item_locator, script_executor=True)

    def click_recurrent_charges_save_changes_button(self):
        """
        Implementing click recurrent charges save changes button functionality
        :return:
        """
        self.click_element(self.recurrent_charges_save_changes_button_locator)
        self.wait().until(EC.presence_of_element_located(self.success_message_locator))
        self.click_element(self.ok_button_locator)

    def get_credit_management_enable_status(self):
        """
        Implementing get credit management enable status functionality
        :return: status
        """
        return self.get_text_from_element(self.credit_management_enabled_text_locator)

    def close_credit_profile_tab_without_saving(self):
        """
        Implementing close credit profile tab without saving functionality
        :return:
        """
        close_tab_img_element = self.wait().until(EC.presence_of_element_located(self.credit_profile_close_tab_img_locator), 'credit profile close tab img locator not found before specified time out')
        close_tab_img_element.click()
        self.wait(5)
        self.accept_alert_pop_up()

    def is_specific_column_present_in_service_level_work_order_section(self, column_name):
        """
        Implementing is specific column present in service level work order section functionality
        :param column_name:
        :return: True/False
        """
        column_locator = (By.XPATH, "//div[contains(@id, 'divCRServiceLvelChangeWorkOrderGrid_')]/descendant::div[@class='k-grid-header']/descendant::th[@data-title='%s']" % column_name)
        return self.is_element_present(column_locator)

    def click_service_level_work_order_first_row_info_icon(self):
        """
        Implementing click service level work order first row info icon functionality
        :return:
        """
        self.click_element(self.service_level_work_order_grid_first_row_info_icon_locator)

    def is_service_order_report_pop_up_page_present(self):
        """
        Implementing is service order report pop up page present functionality
        :return: True/False
        """
        return self.is_element_present(self.service_order_pop_up_page_header_locator)

    def is_service_level_change_work_order_grid_save_changes_button_present(self):
        """
        Implementing is service level change work order grid save changes button present functionality
        :return: True/False
        """
        return self.is_element_present(self.service_level_change_work_order_grid_save_changes_button_locator)

    def is_service_level_change_work_order_grid_cancel_changes_button_present(self):
        """
        Implementing is service level change work order grid cancel changes button present functionality
        :return: True/False
        """
        return self.is_element_present(self.service_level_change_work_order_grid_cancel_changes_button_locator)

    def is_add_new_service_level_change_work_order_button_present(self):
        """
        Implementing is add new service level change work order button present functionality
        :return: True/False
        """
        return self.is_element_present(self.add_new_service_level_change_work_order_button_locator)

    def get_service_level_change_work_order_grid_first_row_column_value(self, column_name):
        """
        Implementing get service level change work order grid first row column value functionality
        :param  column_name:
        :return: column_value
        """
        return self.get_specific_column_value_from_grid(self.service_level_change_work_order_grid_div_id, 1, column_name)

    def click_submit_button_and_verify_error_message(self):
        """
        Implementing click submit button and verify error message functionality
        :return:
        """
        self.click_element(self.submit_button_locator)
        try:
            self.wait().until(EC.presence_of_element_located(self.custom_rc_error_message_locator), 'custom rc error message locator not found before specified time')
            self.click_element(self.ok_button_locator)
        except:
            raise
        self.wait_for_ajax_spinner_load()
