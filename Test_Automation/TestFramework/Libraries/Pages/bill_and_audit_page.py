"""Implementing Bill And Audit screen page objects"""

from TestFramework.Libraries.Pages.base_page import BasePage
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC
import datetime
import string
import win32com.client as client
import time


class BillAndAuditPage(BasePage):
    """
    Contains Bill And Audit UI page locators
    Switch to Bill And Audit function
    Get Bill And Audit page title function
    Select outbound statements tab function
    Click adjustment folders button function
    Set adjustment folder status function
    Click adjustment folders search button function
    Filter adjustment folders grid function
    Click adjustment folders grid inline action button function
    Get adjustment folders calender year function
    Click add new adjustment charge button function
    Set charges grid adjustment statement function
    Set charge begin date function
    Set charge end date function
    Set charges grid charge name function
    Set charges grid currency function
    Set charges grid amount function
    Click charges tab save changes button function
    Select charges grid row checkbox function
    Filter charges grid function
    Click remove from this adjustment folder button function
    Set adjustment folder bill account function
    Set adjustment folder name function
    Click add related dispute button function
    Select add disputes grid row checkbox function
    Click add dispute save button function
    Click remove dispute button function
    Set charges grid accounting code functionality
    Click move to another adjustment folder button functionality
    Select disputes grid row checkbox function
    Click remove dispute button function
    Set add dispute statement number function
    Set add dispute dispute type function
    Set add dispute status function
    Set add dispute line item group function
    Set add dispute date function
    Click add disputes search button function
    Get add disputes grid row details function
    Get disputes grid row details function
    Filter disputes grid function
    Click move to another adjustment folder button function
    Set move charges adjustment folder name function
    Click move to adjustment folder save button function
    Get charges grid row details function
    Set statement type function
    Set bill account function
    Click outbound statement search button function
    Click add non recurring charge button function
    Click outbound statements grid inline action button function
    Set accounting code function
    Set non recurring charge begin date function
    Set non recurring charge end date function
    Set non recurring charge function
    Set charge category function
    Set currency function
    Set charge amount function
    Set tax template function
    Click non recurring charge save button function
    Filter non traffic charges grid function
    Get non traffic charges grid row details function
    Select non traffic charges grid row checkbox function
    Click non traffic charges delete button function
    Get non traffic charges grid row count function
    Compare non traffic charges grid row count function
    Is new non recurring charge deleted function
    Select inbound statement tab function
    Set audit account for search function
    Set statement status for search function
    Click inbound statement search button function
    Click create new statement button function
    Set audit account function
    Set statement number function
    Set statement currency function
    Set total amount function
    Set statement begin date function
    Set statement end date function
    Set statement issued date function
    Set statement received date function
    Set statement due date function
    Slick statement entry save button function
    Click statement entry cancel button function
    Is field mandatory function
    Set vat code function
    Set vat amount function
    Set total amount with taxes function
    Set base currency function
    Set exchange rate function
    Set exchange rate date function
    Set begin date for search function
    Set end date for search function
    Get inbound statement grid row details function
    Select inbound statement grid checkbox function
    Click delete button function
    Get inbound statement grid number of rows function
    Is new statement deleted successfully function
    Click inbound statement grid inline action button function
    Click bulk add button function
    Set tariff type function
    Set line item type function
    Set service group function
    Set product function
    Set time band function
    Set tier function
    Set rating unit function
    Set bulk add begin date function
    Set bulk add end date function
    Click bulk edit cancel button function
    Click bulk edit submit button function
    Click bulk edit undo reset button function
    Is bulk add pop up cancelled function
    Is input field reset function
    Set number of rows function
    Set value in received charges grid column function
    Select received charges grid new rows function
    Click received charges save changes button function
    Get received charges grid row details function
    Click bulk edit button function
    Click statement details grid delete button function
    Select received charges grid multiple rows checkbox function
    Set sms product function
    Get total mapped line items count function
    Map unmapped received line items function
    Map unmapped internal line items function
    Is all line items mapped function
    Click line item mapping grid save changes button function
    Click show summary link function
    Set statement summary status function
    Click statement summary save button function
    Select line item mapping tab function
    Click remove all mappings button function
    Is mapped statements validated function
    Is all line items unmapped function
    Filter inbound statements grid function
    Click inbound statement grid first row inline action button function
    Click documents tab function
    Click upload document button function
    Set document name function
    Set document keyword function
    Set document reference number function
    Set document date function
    Set document order function
    Click browse button function
    Click upload button function
    Get documents grid row details function
    Set value in documents grid function
    Click documents grid save changes button function
    Click documents grid cancel changes button function
    Select documents grid row checkbox function
    Click documents delete button function
    Click documents grid inline action button function
    Get documents grid number of rows function
    Select documents grid delete inline action function
    Is document deleted successfully function
    Set document name for search function
    Click document search button function
    Select transactions tab function
    Click add new record button function
    Set transactions grid first row transaction code function
    Set value in transactions grid first row column function
    Select transactions grid row checkbox function
    Click hide summary link function
    Set transactions grid dropdown value function
    Click transactions grid save changes button function
    Click transactions grid delete button function
    Get transactions grid row details function
    Filter transactions grid function
    Is tab present function
    Update received charges grid first row column function
    Select received charges grid row checkbox function
    Click received charges save changes button without changes function
    Click received charges cancel changes button function
    Set product in received charges grid function
    Click map unmapped line items button function
    Click map line items delete button function
    Click upload statement button function
    Click upload statement browse button function
    Click upload statement upload button function
    Click export to excel button function
    Click disputes tab function
    Click disputes grid first row inline action button function
    Click add new note button function
    Set dispute note function
    Click add new note save button function
    Click add new note cancel button function
    Filter disputes notes grid function
    Search results displayed in the grid function
    Select statement details disputes grid first row checkbox function
    Click win dispute button function
    Set discrepancy source function
    Set win dispute description function
    Click win dispute save button function
    Click win dispute cancel button function
    Filter disputes resolutions grid function
    Get resolutions grid row details function
    Click lose dispute button function
    Get inbound statement grid first row data function
    Get statement summary status function
    Select disputes tab function
    Click line item disputes grid first row inline action button function
    Click internal statement grid save changes button function
    Set value in internal statement grid function
    Select statement validation tab function
    Click add resolution button function
    Set action type function
    Set discrepancy source function
    Set credit amount function
    Set description function
    Click add resolution save button function
    Set value in resolution grid function
    Set description in resolution grid function
    Set value in resolution grid dropdown function
    Click resolution grid save changes button function
    Filter resolution grid function
    Click resolution grid first row inline action button function
    Select delete inline item function
    Select finalize resolution inline item function
    Click resolution grid cancel changes button function
    Click entry complete button function
    Select statement validation grid first row checkbox function
    Click statement validation grid first row inline action button function
    Select statement validation grid inline action item function
    Set value in disputes grid row function
    Click disputes grid save changes button function
    Click disputes grid first row inline action button function
    Get resolutions grid row data function
    Expand current cycles section function
    Expand dispute contact section function
    Set billing cycle template function
    Set billing cycle begin date function
    Set residual traffic window function
    Click audit account save button function
    Click audit account save button without firstname lastname function
    Set dispute contact first name function
    Set dispute contact last name function
    Set dispute contact state function
    Set dispute contact email function
    Click outbound statement grid first row inline action button function
    Is create non recurring charges button not present function
    Does usage charges grid have no records function
    Click view test statement file button function
    Is test statements error message given function
    Click add financial charges button function
    Set adjustment charge product function
    Set adjustment charge begin date function
    Set adjustment charge end date function
    Set adjustment charge amount function
    Set adjustment charge currency function
    Click create adjustment charge save button function
    Adjustment charges grid first row inline action button function
    Select adjustment charges reject inline item function
    Set suspect status function
    Select deselect suspect flag ignored checkbox function
    Click suspect flags grid save changes button function
    Select adjustments tab function
    Click add new adjustment statement button function
    Click adjustments grid first row inline action button function
    Select adjustments delete inline action item function
    Set account for search function
    Set value in outbound transactions grid amount column function
    Set value in non traffic charges grid column function
    Click non traffic charges save changes button function
    Click non recurring charge save button without statement dates function
    Set account function
    Set shortfall grid actions function
    Click shortfall grid save changes button function
    Get shortfall grid status column value function
    Click statement fields grid first row checkbox function
    Click statement fields bulk edit button function
    Set statement default value function
    Click statement fields save changes button function
    Get number of adjustment charges in the grid function
    Is new adjustment charge created function
    Get outbound statement grid row data function
    Select adjustment charge grid first row checkbox function
    Click assign to new folder button function
    Set assign adjustment charge folder name function
    Set adjustment type function
    Click assign adjustment charge save button function
    Set adjustment folder summary status function
    Click adjustment folder summary save button function
    Get number of financial charges in the grid function
    Is new financial charge created function
    Select bill and audit module grid inline item function
    Is line item mapping tab loaded properly function
    Is statement validation tab loaded properly function
    Is win dispute button present function
    Is lose dispute button present function
    Is non traffic charges tab loaded properly function
    Is statement details page loaded properly function
    Is usage charges tab loaded properly function
    Is adjustments tab loaded properly function
    Is bill account info pop up loaded properly function
    Is audit account info pop up loaded properly function
    Set received charges grid product name function
    Get outbound statements begin date function
    Get outbound statements end date function
    Get outbound statements grid begin date function
    Get outbound statements grid end date function
    Get outbound statements grid total volume function
    Get outbound statements grid amount idr function
    Get outbound statements grid amount billing currency function
    Click outbound statements grid first row inline action button function
    Get outbound statement summary begin date function
    Get outbound statement summary end date function
    Get outbound statement summary last modified date function
    Get inbound statements begin date function
    Get inbound statements end date function
    Get inbound statements grid won amount function
    Get inbound statements grid lost amount function
    Get inbound statements grid pending amount function
    Get inbound statements grid begin date function
    Get inbound statements grid end date function
    Get inbound statements grid total calls received function
    Get inbound statements grid total volume received function
    Get inbound statements grid total calls internal function
    Get inbound statements grid total volume internal function
    Get inbound statements grid amount function
    Get inbound statements grid total amount internal function
    Get inbound statements grid discrepancy function
    Get inbound statements grid raised dispute amount function
    Get inbound statements grid dispute by date functionality function
    Get inbound statements grid final payment due date function
    Get inbound statement details begin date function
    Get inbound statement details end date function
    Get inbound statement details final payment due date function
    Get inbound statement details vat amount function
    Get inbound statement details total amount function
    Get inbound statement details total amount with taxes function
    Get inbound statement details summarization discrepancy function
    Get inbound statement details issued date function
    Get inbound statement details statement received date function
    Get inbound statement details received due date function
    Get inbound statement details payment terms due date function
    Get inbound statement details exchange rate function
    Get inbound statement details created date function
    Get inbound statement details last modified date function
    Click create new adjustment folder button function
    Set adjustment folder name to create new one function
    Get created adjustment folder name function
    Set bill account from single selection kendo dropdown function
    Set calender year function
    Get created charge name function
    Set outbound statements grid dropdown value function
    Click outbound statements grid save changes button function
    Is delete checkbox enabled in transactions grid function
    Is specific column present in workflow tab function
    Is non recurring charge populated in the grid function
    Is statement status changes successfully function function
    Is statement status error message pop up present function
    Is non recurring charge populated in the grid
    Get outbound statement grid amount column value function
    Get non traffic charge specific column kendo dropdown first item name function
    Set first value in move to column in non traffic charge grid function
    Is specific workflow status in proper order based on transition function
    Is specific workflow status belonging to right user based on transition function
    Set inbound statement details vat code function
    """
    # Start: Bill And Audit page locators
    page_header_locator = (By.XPATH, "//div[@id='outercontainer']/descendant::label[@class='page-title']")
    outbound_statements_tab_locator = (By.XPATH, "//div[@id='BillAuditTabStrip']/descendant::li[@aria-controls='BillAuditTabStrip-2']/descendant::a")
    success_message_locator = (By.XPATH, "//p[text()='Data has been saved successfully']")
    do_you_wish_to_continue_locator = (By.XPATH, "//p[contains(text(), 'Do you wish to continue?')]")
    ok_button_locator = (By.ID, "btnOk")
    grid_row_details_dictionary = {}
    inbound_statement_tab_locator = (By.XPATH, "//a[text()='Inbound Statements']")

    # Start: Outbound Statements tab locators
    adjustment_folders_button_locator = (By.ID, "btnBOSAdjustmentFolders")
    statement_type_kendo_dropdown_locator = (By.XPATH, "//label[contains(text(), 'Statement Type')]/../descendant::input")
    bill_account_kendo_dropdown_locator = (By.XPATH, "//label[contains(text(), 'Bill Account')]/../descendant::input")
    outbound_statement_search_button_locator = (By.ID, "btnBOSSearch")
    outbound_statements_grid_div_id = "divBOSGrid"
    outbound_statement_grid_data_grid_name = "BillOutboundStatementGrid"
    outbound_statements_grid_inline_action_column_number = "3"
    suspect_status_kendo_dropdown_locator = (By.XPATH, "//label[contains(text(), 'Suspect Status')]/../descendant::input")
    suspect_flags_ignored_checkbox_locator = (By.XPATH, "//input[@class='SuspectFlagsIgnored']")
    suspect_flags_grid_save_changes_button_locator = (By.XPATH, "//div[@id='divSuspectFlagGrid_']/descendant::a[text()='Save changes']")
    account_kendo_dropdown_locator = (By.XPATH, "//label[contains(text(), 'Account')]/../descendant::input")
    number_of_adjustment_records_locator = (By.XPATH, "//div[@id='divBOABar']/descendant::span")
    number_of_adjustment_records_before_create = ""
    outbound_statement_grid_row_data = ""
    number_of_financial_charges_locator = (By.XPATH, "//div[@id='divUCBar']/descendant::span")
    number_of_financial_charges_before_create = ""
    bill_account_link_locator = (By.XPATH, "//div[@id='editBillAccount']/descendant::a[text()='Bill Account']")
    outbound_statements_begin_date_locator = (By.ID, "dtpBOSBeginDate")
    outbound_statements_end_date_locator = (By.ID, "dtpBOSEndDate")
    outbound_statements_grid_row_count_span_locator = (By.XPATH, "//div[@id='divBOSBar']/descendant::span")
    begin_date_column_name = "Begin Date"
    end_date_column_name = "End Date"
    total_volume_column_name = "Total Volume"
    amount_idr_column_name = "Amount ( IDR )"
    amount_billing_currency_column_name = "Amount (Billing Currency)"
    outbound_statements_summary_begin_date_locator = (By.XPATH, "//div[contains(@id, 'bosDetailsSummary')]/descendant::label[contains(text(), 'Begin Date')]/../descendant::span")
    outbound_statements_summary_end_date_locator = (By.XPATH, "//div[contains(@id, 'bosDetailsSummary')]/descendant::label[contains(text(), 'End Date')]/../descendant::span")
    outbound_statements_summary_last_modified_date_date_locator = (By.XPATH, "//div[contains(@id, 'bosDetailsSummary')]/descendant::label[contains(text(), 'Last Modified Date')]/../descendant::span")
    outbound_statement_summary_grid_div_id = "divUsageChargesGrid_"
    outbound_statements_grid_row_count = 0
    calender_year_kendo_dropdown_locator = (By.XPATH, "//label[contains(text(), 'Calender Year')]/../descendant::input")
    bill_account_single_selection_kendo_dropdown_locator = (By.XPATH, "//div[@id='CTDContent']/descendant::label[contains(text(), 'Bill Account')]/../descendant::input")
    outbound_statements_grid_save_changes_button_locator = (By.XPATH, "//div[@id='divBOSGrid']/descendant::a[text()='Save changes']")
    statement_status_message_locator = (By.XPATH, "//p[contains(text(), 'Statement Statuses have not been changed because of an Error')]")
    outbound_statement_grid_amount_column_name = "Amount ( EUR )"
    # Start: Adjustment Folders tab locators
    current_charge_begin_date = ""
    first_day_of_previous_month = ""
    charge_begin_date_column_name = "Charge Begin Date"
    charge_end_date_column = "Charge End Date"
    charge_name_column_name = "Charge Name"
    accounting_code_column_name = "Accounting Code"
    amount_column_name = "Amount"
    bill_audit_module_name = "bill and audit"
    adjustment_folders_column_position = 6
    adjustment_folders_grid_div_id = "divOAFListGrid"
    adjustment_folders_grid_inline_action_column_number = 1
    adjustment_folder_status_kendo_dropdown_locator = (By.XPATH, "//label[contains(text(), 'Adjustment Folder Status')]/../descendant::input")
    adjustment_folders_search_button_locator = (By.XPATH, "//button[contains(@id, 'btnAdjustmentFolderSearch')]")
    calender_year_text_locator = (By.XPATH, "//label[text()='Calender Year']/../descendant::span")
    add_new_adjustment_charge_button_locator = (By.XPATH, "//a[text()='Add New Adjustment Charge']")
    charges_grid_div_id = "divOAFChargesGrid"
    charges_grid_data_grid_name = "OAFChargesGrid"
    charges_grid_checkbox_column_number = 2
    charges_grid_adjustment_statement_kendo_dropdown_locator = (By.ID, "StatementId")
    charges_grid_adjustment_statement_kendo_dropdown_arrow_locator = (By.XPATH, "//input[@id='StatementId']/../descendant::span[@class='k-icon k-i-arrow-s']")
    charges_tab_save_changes_button_locator = (By.XPATH, "//div[contains(@id, 'divOAFChargesGrid')]/descendant::a[text()='Save changes']")
    last_pager_nav_locator = (By.XPATH, "//a[@class='k-link k-pager-nav k-state-disabled k-pager-last']")
    remove_from_this_adjustment_folder_button_locator = (By.ID, "btnRemoveFromAdjustmentFolder")
    remove_confirmation_message_locator = (By.XPATH, "//p[text()='Are you sure you want to remove selected charges?']")
    remove_success_message_locator = (By.XPATH, "//p[text()='Charge(s) removed successfully.']")
    adjustment_folder_name_kendo_dropdown_locator = (By.XPATH, "//label[contains(text(), 'Adjustment Folder Name')]/../descendant::input")
    adjustment_folder_bill_account_kendo_dropdown_locator = (By.XPATH, "//div[@id='divOAFList_1']/descendant::label[contains(text(), 'Bill Account')]/../descendant::input")
    add_related_dispute_button_locator = (By.ID, "btnAddRelatedDispute")
    add_disputes_grid_div_id = "divOAFAddDisputesGrid_"
    add_disputes_grid_checkbox_column_number = 1
    add_disputes_save_button_locator = (By.ID, "btnNewDisputeSave")
    confirmation_popup_locator = (By.XPATH, "//p[text()='Data has been saved successfully']")
    remove_dispute_button_locator = (By.ID, "btnRemoveDispute")
    error_message_locator = (By.XPATH, "//p[text()='At least one row must be selected!']")
    move_to_another_adjustment_folder_button_locator = (By.ID, "btnMoveToAdjustmentFolder")
    disputes_grid_div_id = "divOAFDisputesGrid_"
    disputes_grid_checkbox_column_number = 1
    remove_dispute_confirmation_message_locator = (By.XPATH, "//p[text()='Are you sure you want to delete the dispute?']")
    remove_dispute_success_message_locator = (By.XPATH, "//p[text()='Dispute(s) deleted successfully.']")
    add_dispute_statement_number_kendo_dropdown_locator = (By.ID, "ddlStatementNumber_")
    add_dispute_dispute_type_kendo_dropdown_locator = (By.ID, "ddlDisputeType_")
    add_dispute_status_kendo_dropdown_locator = (By.ID, "ddlDisputeStatus_")
    add_dispute_line_item_group_textbox_locator = (By.ID, "txtOAFLineItemGroup_")
    add_dispute_date_inputbox_locator = (By.ID, "dpOAFDate_")
    disputes_search_button_locator = (By.ID, "btnDisputesSearch_")
    move_charges_adjustment_folder_kendo_dropdown_locator = (By.ID, "ddlAdjustmentFolders")
    move_to_adjustment_folder_save_button_locator = (By.ID, "btnAdjustmentFolderSave")
    disputes_grid_inline_action_column_number = 3
    statement_details_dispute_grid_div_id = "divDisputeLineItemsGrid_"
    adjustment_folder_summary_status_dropdown_locator = (By.XPATH, "//label[text()='Status']/../descendant::input")
    adjustment_folder_summary_save_button_locator = (By.XPATH, "//button[contains(@id, 'btnAFSummarySave')]")
    adjustment_folder_summary_under_approval_status_confirmation_popup_locator = (By.XPATH, "//p[contains(text(), 'Under Approval')]")
    adjustment_folder_summary_approved_status_confirmation_popup_locator = (By.XPATH, "//p[contains(text(), 'Approved')]")
    create_new_adjustment_folder_button_locator = (By.XPATH, "//a[contains(@id, 'btnCreateAdjustmentFolder_')]")
    adjustment_folder_name_textbox_locator = (By.XPATH, "//div[@id='CTDContent']/descendant::label[contains(text(), 'Adjustment Folder Name')]/../descendant::input")
    # End: Adjustment Folders tab locators

    # Start: Non-Traffic Charges tab locators
    non_traffic_charges_tab_locator = (By.XPATH, "//a[text()='Non-Traffic Charges']")
    non_traffic_charges_grid_div_id = "divTrafficGrid_"
    non_traffic_charges_grid_filter_option_list_position = "4"
    non_traffic_charges_grid_checkbox_column_number = "2"
    non_traffic_charges_grid_row_count_span_locator = (By.XPATH, "//div[@id='divTrafficBar_']/span")
    charges_delete_success_message_locator = (By.XPATH, "//p[text()='Charge(s) deleted successfully.']")
    non_traffic_charges_delete_button_locator = (By.XPATH, "//div[@id='divTrafficGrid_']/descendant::a[text()='Delete']")
    statement_details_begin_date_locator = (By.XPATH, "//div[contains(@id,'bosDetailsSummary')]/descendant::label[text()='Begin Date']/../descendant::span")
    non_recurring_charge_begin_date_locator = (By.ID, "dpRBeginDate")
    statement_details_end_date_locator = (By.XPATH, "//div[contains(@id,'bosDetailsSummary')]/descendant::label[text()='End Date']/../descendant::span")
    non_recurring_charge_end_date_locator = (By.ID, "dpEndDate")
    add_non_recurring_charge_button_locator = (By.ID, "btnAddNonRecurringCharges")
    accounting_code_kendo_dropdown_locator = (By.XPATH, "//label[contains(text(), 'Accounting Code')]/../descendant::input")
    non_recurring_charge_textbox_locator = (By.XPATH, "//label[contains(text(), 'Non Recurring Charge')]/../descendant::input")
    charge_category_kendo_dropdown_locator = (By.XPATH, "//label[contains(text(), 'Charge Category')]/../descendant::input")
    currency_kendo_dropdown_locator = (By.XPATH, "//label[contains(text(), 'Currency')]/../descendant::input")
    charge_amount_textbox_locator = (By.XPATH, "//label[contains(text(), 'Charge Amount')]/../descendant::input")
    adjustment_charge_amount_textbox_locator = (By.ID, "txtAdjChargeAmount")
    charge_amount_textbox_id = "txtAdjChargeAmount"
    tax_template_kendo_dropdown_locator = (By.XPATH, "//label[contains(text(), 'Tax Template')]/../descendant::input")
    non_recurring_charge_save_button_locator = (By.ID, "btnChargesSave")
    filter_value_dropdown_locator = (By.XPATH, "//form[@class='k-filter-menu']/descendant::span[@class='k-input' and text()='-Select value-']")
    non_traffic_charges_grid_row_count = ""
    non_traffic_charges_save_changes_button_locator = (By.XPATH, "//div[@id='divTrafficGrid_']/descendant::a[text()='Save changes']")
    non_recurring_charge_date_warning_message_locator = (By.XPATH, "//p[contains(text(), 'Do you wish to continue?')]")
    info_pop_up_locator = (By.ID, "messagingPopup_wnd_title")
    non_traffic_charges_grid_data_grid_name = "NonUsageChargesGrid"
    # End: Non-Traffic Charges tab locators

    # Start: Adjustment Charges tab locators
    add_financial_charges_button_locator = (By.ID, "btnAddFinancialCharges")
    create_adjustment_charge_product_dropdown_arrow_locator = (By.XPATH, "//label[text()='Product:']/../descendant::span[@class='k-icon k-i-arrow-s']")
    create_adjustment_charge_save_button_locator = (By.ID, "btnAdjChargesSave")
    adjustment_charges_grid_div_id = "divUsageChargesGrid_"
    adjustment_charges_grid_inline_action_column_number = 3
    reject_charges_confirmation_message_locator = (By.XPATH, "//p[text()='Selected charge(s) will be rejected and their corresponding reversals will be rejected as well. Would you like to continue ?']")
    error_log_viewer_locator = (By.ID, "ErrorsDetailsWindow_wnd_title")
    error_log_viewer_close_button_locator = (By.XPATH, "//span[text()='Error Log Viewer']/../descendant::span[text()='Close']")
    charges_rejected_success_message_locator = (By.XPATH, "//p[contains(text(), 'Charge(s) were completely rejected.')]")
    adjustment_charges_module_name = "Adjustment Charges"
    adjustment_charges_grid_first_row_checkbox_locator = (By.XPATH, "//div[@id='divUsageChargesGrid_']/descendant::tbody/tr/descendant::td[2]/descendant::input")
    assign_to_new_folder_button_locator = (By.ID, "btnAssignNewFolder")
    adjustment_folder_name_locator = (By.XPATH, "//label[text()='Adjustment Folder Name']/../descendant::input")
    adjustment_type_dropdown_locator = (By.XPATH, "//label[text()='Adjustment Type']/../descendant::input")
    assign_adjustment_charge_save_button_locator = (By.ID, "btnAssignToFolder")
    create_adjustment_charge_product_textbox_locator = (By.XPATH, "//label[text()='Product']/../descendant::input")
    # End: Adjustment Charges tab locators

    # Start: Adjustments tab locators
    adjustments_tab_locator = (By.XPATH, "//a[@class='k-link' and text()='Adjustments']")
    add_new_adjustment_statement_button_locator = (By.ID, "btnAddAdjustStatement")
    adjustments_grid_div_id = "divAdjustmentsGrid"
    adjustments_grid_inline_action_column_number = 1
    adjustment_delete_success_message_locator = (By.XPATH, "//p[text()='Adjustment Statement Deleted Successfully']")
    # End: Adjustments tab locators

    # Start: Statement Details tab locators
    view_test_statement_file_button_locator = (By.ID, "btnViewTestStatement")
    usage_charges_grid_no_record_found_message_locator = (By.XPATH, "//div[@id='UsageCharges_']/descendant::span[@class='no-data-message' and text()='No records found.']")
    test_statements_error_message_locator = (By.XPATH, "//p[text()='Test Statements are only available for statements with charges.']")
    # End: Statement Details tab locators

    # Start: Shortfall tab locators
    shortfall_grid_div_id = "divShortfallOSDGrid"
    actions_column_name = "Actions"
    status_column_name = "Status"
    shortfall_save_changes_button_locator = (By.XPATH, "//div[@id='divShortfallOSDGrid']/descendant::a[text()='Save changes']")
    # End: Shortfall tab locators

    # Start: Statement fields page locators
    statement_fields_grid_div_id = "divOBStatementFieldsGrid"
    statement_fields_grid_first_row_checkbox_locator = (By.XPATH, "//div[@id='divOBStatementFieldsGrid']/descendant::tbody/tr/descendant::td[2]/descendant::input")
    statement_fields_bulk_edit_button_locator = (By.ID, "btnBatchEditStatementFields")
    statement_default_value_textbox_locator = (By.XPATH, "//label[text()='Statement Default Value']/../descendant::input")
    statement_fields_save_changes_button_locator = (By.XPATH, "//div[@id='divOBStatementFieldsGrid']/descendant::a[text()='Save changes']")
    statement_fields_bulk_edit_error_message_locator = (By.XPATH, "//p[text()='Error: Cannot Override Statement Value for this Statement Field']")
    statement_fields_bulk_edit_popup_title_locator = (By.ID, "StatementFieldsBulkEditWindowContainerWindow_wnd_title")
    # End: Statement fields page locators
    # End: Outbound Statements tab locators

    # Start: Inbound Statement Tab locators
    audit_account_dropdown_locator = (By.XPATH, "//label[contains(text(), 'Audit Account')]/../descendant::input")
    statement_status_dropdown_locator = (By.XPATH, "//label[contains(text(), 'Statement Status')]/../descendant::input")
    inbound_statement_search_button_locator = (By.ID, "btnBISSearch")
    create_new_statement_button_locator = (By.ID, "btnNewStatement")
    begin_date_locator = (By.XPATH, "//label[text()='Begin Date']/../descendant::input")
    end_date_locator = (By.XPATH, "//label[text()='End Date']/../descendant::input")
    inbound_statement_grid_div_id = "divBISGrid"
    inbound_statement_grid_row_data = {}
    inbound_statement_grid_checkbox_column_number = 2
    delete_button_locator = (By.ID, "btnDeleteStatement")
    statement_delete_confirmation_locator = (By.XPATH, "//p[text()='Are you sure you want to delete the selected rows?']")
    inbound_statement_grid_number_of_rows_locator = (By.XPATH, "//div[@id='divBISBar']/descendant::span")
    number_of_rows = ""
    statement_delete_success_message_locator = (By.XPATH, "//p[text()='Statement(s) deleted successfully.']")
    inbound_statement_grid_inline_action_column_number = 3
    inbound_statements_grid_filter_position = 6
    upload_statement_button_locator = (By.ID, "btnBISUpload")
    audit_account_link_locator = (By.XPATH, "//div[@id='editAuditAccount']/descendant::a[text()='Audit Account ']")
    inbound_statements_begin_date_locator = (By.XPATH, "//div[contains(@id, 'divBISMain')]/descendant::label[contains(text(), 'Begin Date')]/../descendant::input")
    inbound_statements_end_date_locator = (By.XPATH, "//div[contains(@id, 'divBISMain')]/descendant::label[contains(text(), 'End Date')]/../descendant::input")
    inbound_statements_grid_won_amount_column_name = "Won Amount"
    inbound_statements_grid_lost_amount_column_name = "Lost Amount"
    inbound_statements_grid_pending_amount_column_name = "Pending Amount"
    inbound_statements_grid_begin_date_column_name = "Begin Date"
    inbound_statements_grid_end_date_column_name = "End Date"
    inbound_statements_grid_total_calls_received_column_name = "Total Calls Received"
    inbound_statements_grid_total_volume_received_column_name = "Total Volume Received"
    inbound_statements_grid_total_calls_internal_column_name = "Total Calls Internal"
    inbound_statements_grid_total_volume_internal_column_name = "Total Volume Internal"
    inbound_statements_grid_amount_column_name = "Amount"
    inbound_statements_grid_total_amount_internal_column_name = "Total Amount Internal"
    inbound_statements_grid_discrepancy_column_name = "Discrepancy"
    inbound_statements_grid_raised_dispute_amount_column_name = "Raised Dispute Amount"
    inbound_statements_grid_dispute_by_date_column_name = "Dispute By Date"
    inbound_statements_grid_final_payment_due_date_column_name = "Final Payment Due Date"
    inbound_statements_details_begin_date_locator = (By.XPATH, "//div[contains(@id, 'bisDetailsSummary')]/descendant::label[contains(text(), 'Begin Date')]/../descendant::input")
    inbound_statements_details_end_date_locator = (By.XPATH, "//div[contains(@id, 'bisDetailsSummary')]/descendant::label[contains(text(), 'End Date')]/../descendant::input")
    inbound_statements_details_final_payment_due_date_locator = (By.XPATH, "//div[contains(@id, 'bisDetailsSummary')]/descendant::label[contains(text(), 'Final Payment Due Date')]/../descendant::input")
    inbound_statements_details_vat_amount_locator = (By.XPATH, "//div[contains(@id, 'bisDetailsSummary')]/descendant::label[contains(text(), 'VAT Amount')]/../descendant::input")
    inbound_statements_details_total_amount_locator = (By.XPATH, "//div[contains(@id, 'bisDetailsSummary')]/descendant::label[contains(text(), 'Total Amount')]/../descendant::input")
    inbound_statements_details_total_amount_with_taxes_locator = (By.XPATH, "//div[contains(@id, 'bisDetailsSummary')]/descendant::label[contains(text(), 'Total Amount with Taxes')]/../descendant::input")
    inbound_statements_details_summarization_discrepancy_locator = (By.XPATH, "//div[contains(@id, 'bisDetailsSummary')]/descendant::label[contains(text(), 'Summarization Discrepancy')]/../descendant::span")
    inbound_statements_details_issued_date_locator = (By.XPATH, "//div[contains(@id, 'bisDetailsSummary')]/descendant::label[contains(text(), 'Issued Date')]/../descendant::input")
    inbound_statements_details_statement_received_date_locator = (By.XPATH, "//div[contains(@id, 'bisDetailsSummary')]/descendant::label[contains(text(), 'Statement Received Date')]/../descendant::input")
    inbound_statements_details_received_due_date_locator = (By.XPATH, "//div[contains(@id, 'bisDetailsSummary')]/descendant::label[contains(text(), 'Received Due Date')]/../descendant::input")
    inbound_statements_details_payment_terms_due_date_locator = (By.XPATH, "//div[contains(@id, 'bisDetailsSummary')]/descendant::label[contains(text(), 'Payment Terms Due Date')]/../descendant::span")
    inbound_statements_details_exchange_rate_locator = (By.XPATH, "//div[contains(@id, 'bisDetailsSummary')]/descendant::label[contains(text(), 'Exchange Rate')]/../descendant::input")
    inbound_statements_details_created_date_locator = (By.XPATH, "//div[contains(@id, 'bisDetailsSummary')]/descendant::label[contains(text(), 'Created Date')]/../descendant::span")
    inbound_statements_details_last_modified_date_locator = (By.XPATH, "//div[contains(@id, 'bisDetailsSummary')]/descendant::label[contains(text(), 'Last Modified Date')]/../descendant::span")
    inbound_statements_grid_row_count = 0
    adjustment_begin_date_locator = (By.ID, "dpAdjChargeBeginDate")

    # Start: Statement Entry pop up locators
    statement_entry_audit_account_locator = (By.ID, "ddlBISEAuditAccount")
    statement_number_textbox_locator = (By.ID, "txtBISEStatementNumber")
    statement_currency_dropdown_locator = (By.XPATH, "//label[text()='Statement Currency']/../descendant::input")
    total_amount_textbox_locator = (By.XPATH, "//label[text()='Total Amount']/../descendant::input")
    statement_begin_date_locator = (By.XPATH, "//label[text()='Statement Begin Date']/../descendant::input")
    statement_end_date_locator = (By.XPATH, "//label[text()='Statement End Date']/../descendant::input")
    issued_date_locator = (By.XPATH, "//label[text()='Issued Date']/../descendant::input")
    received_date_locator = (By.XPATH, "//label[text()='Received Date']/../descendant::input")
    due_date_locator = (By.XPATH, "//label[text()='Due Date']/../descendant::input")
    vat_code_textbox_locator = (By.ID, "txtBISEVATCode")
    vat_amount_textbox_locator = (By.XPATH, "//label[text()='VAT Amount']/../descendant::input")
    total_amount_with_taxes_textbox_locator = (By.XPATH, "//label[text()='Total Amount with Taxes']/../descendant::input")
    base_currency_dropdown_locator = (By.XPATH, "//label[text()='Base Currency']/../descendant::input")
    exchange_rate_textbox_locator = (By.XPATH, "//label[text()='Exchange Rate']/../descendant::input")
    exchange_rate_date_locator = (By.XPATH, "//label[text()='Exchange Rate Date']/../descendant::input")
    statement_entry_cancel_button_locator = (By.ID, "btnBISECancel")
    statement_entry_save_button_locator = (By.ID, "btnBISESave")
    current_statement_begin_date = ""
    first_day_of_current_month = ""
    statement_overlaps_window_locator = (By.ID, "StatementOverlapConfirmDialog_wnd_title")
    yes_button_locator = (By.ID, "btnBISEOYes")
    # End: Statement Entry pop up locators

    # Start: Statement Details tab locators
    hide_summary_link_locator = (By.XPATH, "//a[@class='sectionVisibiltyHandler' and text()='Hide Summary']")
    bulk_add_button_locator = (By.XPATH, "//a[text()='Bulk Add']")
    received_charges_grid_div_id = "divInboundUsageChargesGrid"
    received_charges_save_changes_button_locator = (By.XPATH, "//div[contains(@id, 'divInboundUsageChargesGrid')]/descendant::a[text()='Save changes']")
    received_charges_data_grid_name = "InboundUsageChargesGrid"
    statement_details_grid_div_id = "BISDetailsTabStrip"
    statement_details_grid_checkbox_column_number = 2
    bulk_edit_button_locator = (By.XPATH, "//div[@id='BISDUCToolbar']/descendant::a[contains(@id,'btnBISDUCBulkEdit')]")
    received_charges_grid_all_rows_checkbox_locator = (By.XPATH, "//div[contains(@id, 'divInboundUsageChargesGrid')]/descendant::input[@type='checkbox']")
    statement_details_delete_button_locator = (By.XPATH, "//a[contains(@id,'btnBISDUCDelete')]")
    documents_tab_locator = (By.XPATH, "//a[text()='Documents']")
    upload_document_button_locator = (By.ID, "btnUploadDocument")
    received_charges_grid_checkbox_column_number = 2
    no_changes_to_save_message_locator = (By.XPATH, "//p[text()='No changes to save!']")
    received_charges_cancel_changes_button_locator = (By.XPATH, "//div[contains(@id, 'divInboundUsageChargesGrid')]/descendant::a[text()='Cancel changes']")
    product_column_name = "Product"
    export_to_excel_button_locator = (By.ID, "btnExport")
    statement_validation_tab_locator = (By.XPATH, "//a[@class='k-link' and text()='Statement Validation']")
    entry_complete_button_locator = (By.XPATH, "//a[contains(@id,'btnBISDUCEntryComplete_')]")
    statement_entry_success_message_locator = (By.XPATH, "//p[text()='Statement Entry has been Successfully Completed.']")
    statement_validation_grid_div_id = "StatementValidationGrid"
    statement_validation_grid_inline_action_column_number = 3
    statement_validation_grid_first_row_checkbox_locator = (By.XPATH, "//div[@id='StatementValidationGrid']/descendant::tbody/tr/descendant::td[2]/descendant::input")
    disputes_were_created_success_message_locator = (By.XPATH, "//p[text()='Disputes were created successfully.']")
    statement_validation_module_name = "Statement Validation"
    inbound_statement_disputes_grid_div_id = "divDisputeLineItemsGrid_"
    disputes_grid_save_changes_button_locator = (By.XPATH, "//div[@id='divDisputeLineItemsGrid_']/descendant::a[text()='Save changes']")

    # Start: Bulk Add/Edit pop up locators
    bulk_add_pop_up_title_locator = (By.ID, "BillAuditBulkEditWindowContainerWindow_wnd_title")
    tariff_type_kendo_dropdown_locator = (By.XPATH, "//label[text()='Tariff Type']/../descendant::span")
    line_item_type_kendo_dropdown_locator = (By.XPATH, "//label[text()='Line Item Type']/../descendant::span")
    service_group_kendo_dropdown_locator = (By.XPATH, "//label[text()='Service Group']/../descendant::span")
    product_kendo_dropdown_locator = (By.XPATH, "//label[text()='Product']/../descendant::span")
    time_band_kendo_dropdown_locator = (By.XPATH, "//label[text()='Time Band']/../descendant::span")
    tier_kendo_dropdown_locator = (By.XPATH, "//label[text()='Tier']/../descendant::span")
    rating_unit_kendo_dropdown_locator = (By.XPATH, "//label[text()='Rating Unit']/../descendant::span")
    number_of_rows_inputbox_locator = (By.XPATH, "//label[text()='Number of Rows']/../descendant::input")
    bulk_add_begin_date_inputbox_locator = (By.ID, "Edit-BeginDate")
    bulk_add_end_date_inputbox_locator = (By.ID, "Edit-EndDate")
    bulk_edit_cancel_button_locator = (By.ID, "BulkEditCancel")
    bulk_edit_submit_button_locator = (By.ID, "BulkEditSubmit")
    bulk_edit_undo_reset_button_locator = (By.ID, "BulkEditUndo")
    reset_text = "(edit this)"
    sms_product_kendo_dropdown_locator = (By.XPATH, "//label[text()='SMS Product']/../descendant::span")
    # End: Bulk Add/Edit pop up locators

    # Start: Document upload pop up locators
    document_name_text_field_locator = (By.XPATH, "//div[@id='divDocumentUploadMain']/descendant::label[text()='Document Name']/../descendant::input")
    keywords_text_field_locator = (By.XPATH, "//div[@id='divDocumentUploadMain']/descendant::label[text()='Keywords']/../descendant::input")
    reference_number_text_field_locator = (By.XPATH, "//label[text()='Reference Number']/../descendant::input")
    document_date_text_field_locator = (By.XPATH, "//label[text()='Document Date ']/../descendant::input")
    order_text_field_locator = (By.XPATH, "//label[text()='Order']/../descendant::input")
    browse_button_locator = (By.XPATH, "//label[text()='File']/../descendant::input[@id='DocumentsUpload']/..")
    upload_button_locator = (By.XPATH, "//button[contains(@id,'UDUpload')]")
    documents_grid_div_id = "divDocumentsSearchGrid"
    documents_grid_name = "DocumentsSearchGrid"
    documents_grid_save_changes_button_changes_locator = (By.XPATH, "//div[contains(@id,'divDocumentsSearchGrid')]/descendant::a[text()='Save changes']")
    documents_grid_cancel_changes_button_changes_locator = (By.XPATH, "//div[contains(@id,'divDocumentsSearchGrid')]/descendant::a[text()='Cancel changes']")
    documents_grid_checkbox_column_number = 2
    document_delete_button_locator = (By.ID, "btnDeleteDocument")
    documents_delete_success_message_locator = (By.XPATH, "//p[text()='Document(s) deleted successfully.']")
    documents_grid_inline_action_column_number = 3
    delete_inline_action_text = "Delete"
    number_of_documents_text_locator = (By.XPATH, "//div[contains(@id,'divDocNotBar')]/descendant::span")
    document_name_locator = (By.XPATH, "//label[text()='Document Name']/../descendant::input")
    document_search_button_locator = (By.ID, "btnBillAuditDocSearch")
    documents_module_name = "Documents"
    # End: Document upload pop up locators
    # End: Statement Details tab locators

    # Start: Map line items tab locators
    line_item_mapping_tab_locator = (By.XPATH, "//a[text()='Line Item Mapping']")
    target_locator = (By.XPATH, '//div[contains(@id, "mapping")]/descendant::span[@class="dragDropImage"]')
    line_item_mapping_grid_save_changes_button_locator = (By.XPATH, "//div[contains(@id, 'LineItemMappingGrid')]/descendant::a[text()='Save changes']")
    unmapped_received_grid_div_id = "UnmappedReceivedGrid"
    unmapped_received_grid_count_span_locator = (By.XPATH, "//div[@id='divSelectCountBarReceived']/span")
    unmapped_received_grid_count = 0
    unmapped_internal_grid_div_id = "UnmappedInternalGrid"
    unmapped_internal_grid_count_span_locator = (By.XPATH, "//div[@id='divSelectCountBarInternal']/span")
    unmapped_internal_grid_count = 0
    line_item_mapping_grid_count_span_locator = (By.XPATH, "//div[contains(@id, 'LineItemMappingGrid')]/descendant::span[@class='k-pager-info k-label']")
    unmapped_received_grid_footer_locator = (By.XPATH, "//div[@id='UnmappedReceivedGrid']/descendant::div[@class='k-grid-footer']")
    unmapped_internal_grid_footer_locator = (By.XPATH, "//div[@id='UnmappedInternalGrid']/descendant::div[@class='k-grid-footer']")
    show_summary_link_locator = (By.XPATH, "//a[@class='sectionVisibiltyHandler' and text()='Show Summary']")
    statement_summary_status_kendo_dropdown_locator = (By.XPATH, "//input[contains(@id, 'ddlBISDStatus')]")
    statement_summary_save_button_locator = (By.XPATH, "//button[contains(@id, 'btnBISDSummarySave')]")
    remove_all_mappings_button_locator = (By.ID, "btnRemoveAllMapppings")
    warning_message_locator = (By.XPATH, "//p[text()='Warning: All line item mappings will be removed for the current Statement.']")
    statement_validation_grid_count_span_locator = (By.XPATH, "//div[@id='divSelectCount']/span")
    actual_mapped_items_count = 0
    no_items_text = "No items to display"
    map_unmapped_line_items_button_locator = (By.ID, "btnRemap")
    map_line_items_delete_button_locator = (By.ID, "btnDelete")
    map_line_items_confirmation_message_locator = (By.XPATH, "//p[text()='Warning: The mapping algorithm will be applied to all unmapped line-items. It will NOT affect line-items that are already mapped. Do you wish to continue?']")
    delete_mappings_confirmation_message_locator = (By.XPATH, "//p[text()='There are unsaved mappings on the grid. Clicking OK will remove all the unsaved records too.']")
    statement_details_page_header_locator = (By.XPATH, "//span[@class='page-title' and contains(text(), 'Outbound Statement:')]")
    usage_charges_tab_locator = (By.XPATH, "//a[text()='Usage Charges']")
    # End: Map line items tab locators

    # Start: Transactions tab locators
    transactions_tab_locator = (By.XPATH, "//a[text()='Transactions']")
    add_new_record_button_locator = (By.ID, "btnOSDAddNewTransaction")
    transactions_grid_div_id = "divTransactions"
    transactions_grid_checkbox_column_number = 2
    transactions_data_grid_name = "TransactionsGrid"
    transactions_grid_save_changes_button_locator = (By.XPATH, "//div[contains(@id, 'divTransactions')]/descendant::a[text()='Save changes']")
    transactions_grid_delete_button_locator = (By.ID, "btnTransactionDelete")
    delete_success_message_locator = (By.XPATH, "//p[text()='Data has been deleted successfully']")
    transaction_code_column_name = "Transaction Code"
    transactions_grid_filter_position = 6
    transactions_grid_first_row_delete_checkbox_locator = (By.XPATH, "//div[contains(@id, 'divTransactions_')]/descendant::div[@class='k-grid-content']/descendant::tbody/tr[1]/td[2]")
    # End: Transactions tab locators

    # Start: Upload Statement pop up locators
    upload_statement_browse_button_locator = (By.XPATH, "//input[@id='UDFileStatement']/..")
    statement_upload_button_locator = (By.XPATH, "//button[contains(@id, 'UDUpload_')]")
    statement_upload_success_message_locator = (By.XPATH, "//span[text()='Success']")
    # End: Upload Statement pop up locators

    # Start: Disputes tab locators
    add_dispute_note_button_locator = (By.ID, "btnAddDisputeNote")
    new_note_text_field_locator = (By.ID, "NewDisputeNote")
    save_dispute_note_button_locator = (By.ID, "btnNewDisputeNoteSave")
    cancel_dispute_note_button_locator = (By.ID, "btnNewDisputeNoteCancel")
    disputes_notes_grid_div_id = "divDisputeNotesGrid"
    no_data_found_locator = (By.XPATH, "//div[@id='tblCustomerPriceList']/descendant::span[text()='No records found.']")
    statement_details_dispute_grid_first_row_checkbox_locator = (By.XPATH, "//div[@id='divDisputeLineItemsGrid_']/descendant::tbody/tr[1]/descendant::td[2]/descendant::input")
    win_dispute_button_locator = (By.ID, "btnwinDispute")
    discrepancy_source_dropdown_locator = (By.XPATH, "//label[text()='Discrepancy Source']/../descendant::input")
    description_textarea_locator = (By.XPATH, "//label[text()='Description']/../descendant::textarea[@id='Description']")
    win_dispute_save_button_locator = (By.ID, "btnWLDSave")
    win_dispute_cancel_button_locator = (By.ID, "btnWLDCancel")
    resolution_saved_success_message_locator = (By.XPATH, "//p[text()='Resolution saved successfully']")
    resolutions_grid_div_id = "divResolutionGrid_"
    resolution_data_grid_name = "ResolutionGrid"
    lose_dispute_button_locator = (By.ID, "btnLoseDispute")
    disputes_tab_locator = (By.XPATH, "//a[@class='k-link' and text()='Disputes']")
    line_item_disputes_grid_div_id = "divDisputeLineItems_"
    line_item_disputes_grid_inline_action_column_number = 3
    internal_statement_grid_save_changes_button_locator = (By.XPATH, "//div[@id='divInternalStatementGrid_']/descendant::a[text()='Save changes']")
    internal_statement_grid_div_id = "divInternalStatementGrid_"
    # End: Disputes tab locators

    # Start: Statement Validate page locators
    statement_summary_status_locator = (By.XPATH, "//label[text()='Status']/../descendant::span[@class='k-input']")
    # End: Statement Validate page locators

    # Start: Resolution tab locators
    resolution_module_name = "Resolution"
    add_resolution_button_locator = (By.ID, "btnAddResolution")
    action_type_kendo_dropdown_locator = (By.XPATH, "//label[text()='Action Type']/../descendant::input")
    discrepancy_source_kendo_dropdown_locator = (By.XPATH, "//label[text()='Discrepancy Source']/../descendant::input")
    credit_amount_textbox_locator = (By.XPATH, "//label[text()='Credit Amount']/../descendant::input")
    description_textbox_locator = (By.XPATH, "//label[text()='Description']/../descendant::input")
    add_resolution_save_button_locator = (By.ID, "btnAddResolutionSave")
    resolution_grid_div_id = "divResolutionMain"
    resolution_grid_save_changes_button_locator = (By.XPATH, "//div[@id='divResolutionMain']/descendant::a[text()='Save changes']")
    description_column_name = "Description"
    resolution_grid_inline_column_number = 3
    finalize_resolution_inline_item_text = "Finalize Resolution"
    resolution_delete_success_message_locator = (By.XPATH, "//p[text()='Resolution(s) deleted successfully.']")
    finalize_resolution_confirmation_message_locator = (By.XPATH, "//p[text()='Are you sure you want to transition the selected resolution(s) to Final status?']")
    finalize_resolution_success_message_locator = (By.XPATH, "//p[text()='Selected resolution(s) are succesfully transitioned to final status.']")
    resolution_grid_cancel_changes_button_locator = (By.XPATH, "//div[@id='divResolutionMain']/descendant::a[text()='Cancel changes']")
    # End: Resolution tab locators

    # Start: Audit Account Info pop up locators
    current_cycles_section_locator = (By.XPATH, "//a[@class='sectionVisibiltyHandler link' and text()='Current Cycles']")
    dispute_contact_section_locator = (By.XPATH, "//a[@class='sectionVisibiltyHandler link' and text()='Dispute Contact']")
    billing_cycle_template_kendo_dropdown_locator = (By.ID, "BillingCycle_AccountCycleTemplateId")
    billing_cycle_begin_date_inputbox_locator = (By.ID, "BillingCycle_BeginDate")
    residual_traffic_window_inputbox_locator = (By.XPATH, "//label[text()='Residual Traffic Window']/../descendant::input")
    audit_account_save_button_locator = (By.ID, "btnSave")
    audit_account_save_success_message_locator = (By.XPATH, "//p[text()='Data has been saved successfully. Please click OK to save any modified Rate Plans and Recurring Charge Products.']")
    audit_account_save_error_message_locator = (By.XPATH, "//p[text()='Please enter dispute contact firstname and lastname']")
    dispute_contact_first_name_textbox_locator = (By.NAME, "DisputeContact.FirstName")
    dispute_contact_last_name_textbox_locator = (By.NAME, "DisputeContact.LastName")
    dispute_contact_state_textbox_locator = (By.NAME, "DisputeContact.State")
    dispute_contact_email_textbox_locator = (By.NAME, "DisputeContact.EmailPrimary")
    # End: Audit Account Info pop up locators
    inbound_statement_details_vat_code_locator = (By.XPATH, "//label[text()='VAT Code']/../descendant::input")

    # End: Inbound Statement Tab locators
    # End: Bill And Audit page locators

    def switch_to_bill_and_audit(self):
        """
        Implementing switch to bill and audit functionality
        :return:
        """
        self.switch_to_window()
        self.accept_ssl_certificate()

    def get_bill_and_audit_page_title(self):
        """
        Implementing get bill and audit page title functionality
        :return: bill and audit page title
        """
        self.wait().until(EC.presence_of_element_located(self.page_header_locator), 'top logo frame not found before specified time out')
        return self.page_title()

    def select_outbound_statements_tab(self):
        """
        Implementing select outbound statements tab functionality
        :return:
        """
        self.select_static_tab(self.outbound_statements_tab_locator, 'outbound statements tab not found before specified time out')

    def click_adjustment_folders_button(self):
        """
        Implementing click adjustment folders button functionality
        :return:
        """
        adjustment_folders_button_element = self.wait().until(EC.element_to_be_clickable(self.adjustment_folders_button_locator), 'adjustment folders button locator not found before specified time out')
        adjustment_folders_button_element.click()
        self.wait_for_ajax_spinner_load()

    def set_adjustment_folder_status(self, adjustment_folder_status_list):
        """
        Implementing set adjustment folder status functionality
        :param adjustment_folder_status_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.adjustment_folder_status_kendo_dropdown_locator, adjustment_folder_status_list)
        self.wait_for_ajax_spinner_load()

    def click_adjustment_folders_search_button(self):
        """
        Implementing click adjustment folders search button functionality
        :return:
        """
        self.click_element(self.adjustment_folders_search_button_locator, True)

    def filter_adjustment_folders_grid(self, column_name, filter_item_text):
        """
        Implementing filter adjustment folders grid functionality
        :param column_name:
        :param filter_item_text:
        :return:
        """
        self.grid_filter_with_textbox(self.adjustment_folders_grid_div_id, column_name, filter_item_text, self.adjustment_folders_column_position)

    def click_adjustment_folders_grid_inline_action_button(self, adjustment_folder):
        """
        Implementing adjustment folders grid inline action button functionality
        :param adjustment_folder:
        :return:
        """
        self.click_inline_action_button(self.adjustment_folders_grid_div_id, adjustment_folder, self.adjustment_folders_grid_inline_action_column_number)

    def get_adjustment_folders_calender_year(self):
        """
        Implementing get adjustment folders calender year functionality
        :return:
        """
        calender_year_text_element = self.wait().until(EC.visibility_of_element_located(self.calender_year_text_locator), 'calender year text locator not found before specified time out')
        return calender_year_text_element.text

    def click_add_new_adjustment_charge_button(self):
        """
        Implementing click add new adjustment charge button functionality
        :return:
        """
        add_new_adjustment_charge_button_element = self.wait().until(EC.element_to_be_clickable(self.add_new_adjustment_charge_button_locator), 'add new adjustment button locator not found before specified time out')
        add_new_adjustment_charge_button_element.click()
        self.wait_for_ajax_spinner_load()

    def set_charges_grid_adjustment_statement(self, adjustment_statement):
        """
        Implementing set charges grid adjustment statement functionality
        :param adjustment_statement:
        :return:
        """
        last_pager_nav_element = self.wait().until(EC.presence_of_element_located(self.last_pager_nav_locator), 'last pager nav locator not found before specified time out')
        self.hover(last_pager_nav_element)
        column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::th[@data-title='Adjustment Statement']" % self.charges_grid_div_id)
        column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) + 1
        first_row_column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::div[@class='k-grid-content']/descendant::td[%s]/span[@class='k-grid-cell']" % (self.charges_grid_div_id, str(column_index)))
        first_row_column_element = self.wait().until(EC.presence_of_element_located(first_row_column_locator), 'first row column locator not found before specified time out')
        self.script_executor_click(first_row_column_element)
        self.wait_for_ajax_spinner_load()
        dropdown_item_locator = (By.XPATH, "//ul[@id='StatementId_listbox']/descendant::li[contains(text(), '%s')]" % adjustment_statement)
        dropdown_item_element = self.wait().until(EC.presence_of_element_located(dropdown_item_locator), 'dropdown item locator not found before specified time out')
        self.script_executor_click(dropdown_item_element)
        self.wait_for_ajax_spinner_load()

    def set_charge_begin_date(self, charge_begin_date, first_day_of_last_month):
        """
        Implementing set charge begin date functionality
        :param charge_begin_date:
        :param first_day_of_last_month:
        :return:
        """
        self.current_charge_begin_date = charge_begin_date
        if first_day_of_last_month is True:
            if charge_begin_date == "":
                self.first_day_of_previous_month = self.get_date(first_day_of_last_month=True)
                charge_begin_date = self.first_day_of_previous_month
        else:
            if charge_begin_date == "":
                charge_begin_date = self.get_date(current_date=True)
                self.current_charge_begin_date = datetime.datetime.strptime(charge_begin_date, "%m/%d/%Y")
        self.set_value_in_grid_column(self.charges_grid_div_id, self.charge_begin_date_column_name, charge_begin_date, True)
        page_header_element = self.wait().until(EC.element_to_be_clickable(self.page_header_locator), 'page header locator not found before specified time out')
        page_header_element.click()

    def set_charge_end_date(self, charge_end_date, last_day_of_last_month):
        """
        Implementing set charge end date functionality
        :param charge_end_date:
        :param last_day_of_last_month:
        :return:
        """
        if last_day_of_last_month is None:
            if charge_end_date == "":
                new_date = str(self.current_charge_begin_date + datetime.timedelta(days=1))
                charge_end_date = new_date
            else:
                end_date = datetime.datetime.strptime(charge_end_date, "%m/%d/%Y")
                if end_date < self.current_charge_begin_date:
                    new_date = str(self.current_charge_begin_date + datetime.timedelta(days=1))
                    charge_end_date = new_date
        else:
            if charge_end_date == "":
                charge_end_date = self.get_date(last_day_of_last_month=True)
        self.set_value_in_grid_column(self.charges_grid_div_id, self.charge_end_date_column, charge_end_date, True)
        page_header_element = self.wait().until(EC.element_to_be_clickable(self.page_header_locator), 'page header locator not found before specified time out')
        page_header_element.click()

    def set_charges_grid_charge_name(self, charges_name_prefix):
        """
        Implementing set charges grid charge name functionality
        :param charges_name_prefix:
        :return: charge name
        """
        global charge_name
        if charges_name_prefix is None:
            charge_name = self.random_string_generator()
        else:
            charge_name = charges_name_prefix + self.random_string_generator(6)
        self.set_value_in_grid_column(self.charges_grid_div_id, self.charge_name_column_name, charge_name, True)
        page_header_element = self.wait().until(EC.element_to_be_clickable(self.page_header_locator), 'page header locator not found before specified time out')
        page_header_element.click()
        return charge_name

    def set_charges_grid_currency(self, currency):
        """
        Implementing set charges grid currency functionality
        :param currency:
        :return:
        """
        column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::th[@data-title='Currency']" % self.charges_grid_div_id)
        column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) + 1
        first_row_column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::div[@class='k-grid-content']/descendant::td[%s]/span[@class='k-grid-cell']" % (self.charges_grid_div_id, str(column_index)))
        first_row_column_element = self.wait().until(EC.presence_of_element_located(first_row_column_locator), 'first row column locator not found before specified time out')
        self.script_executor_click(first_row_column_element)
        self.wait_for_ajax_spinner_load()
        dropdown_item_locator = (By.XPATH, "//ul[@id='CurrencyId_listbox']/descendant::li[contains(text(), '%s')]" % currency)
        dropdown_item_element = self.wait().until(EC.presence_of_element_located(dropdown_item_locator), 'dropdown item locator not found before specified time out')
        self.script_executor_click(dropdown_item_element)
        self.wait_for_ajax_spinner_load()

    def set_charges_grid_amount(self, amount):
        """
        Implementing set charges grid amount functionality
        :param amount:
        :return:
        """
        self.set_value_in_grid_column(self.charges_grid_div_id, self.amount_column_name, amount, True)
        page_header_element = self.wait().until(EC.element_to_be_clickable(self.page_header_locator), 'page header locator not found before specified time out')
        page_header_element.click()

    def click_charges_tab_save_changes_button(self):
        """
        Implementing click charges tab save changes button functionality
        :return:
        """
        charges_tab_save_changes_button_element = self.wait().until(EC.element_to_be_clickable(self.charges_tab_save_changes_button_locator), 'save changes button locator nor found before specified time out')
        charges_tab_save_changes_button_element.click()
        self.wait_for_ajax_spinner_load()
        try:
            self.wait().until(EC.visibility_of_element_located(self.success_message_locator), 'save changes success message locator not found before specified time out')
            ok_button_element = self.wait().until(EC.element_to_be_clickable(self.ok_button_locator), 'ok button locator not found before specified time out')
            self.wait_for_ajax_spinner_load()
            ok_button_element.click()
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def select_charges_grid_row_checkbox(self, charge_name):
        """
        Implementing select charges grid row checkbox functionality
        :param charge_name:
        :return:
        """
        self.select_grid_row_checkbox(self.charges_grid_div_id, charge_name, self.charges_grid_checkbox_column_number)

    def filter_charges_grid(self, column_name, filter_item_text):
        """
        Implementing filter charges grid functionality
        :param column_name:
        :param filter_item_text:
        :return:
        """
        self.grid_filter_with_textbox(self.charges_grid_div_id, column_name, filter_item_text, self.adjustment_folders_column_position)

    def click_remove_from_this_adjustment_folder_button(self, with_checkbox_selection):
        """
        Implementing click remove from this adjustment folder button functionality
        :param with_checkbox_selection:
        :return:
        """
        remove_from_this_adjustment_folder_button_element = self.wait().until(EC.element_to_be_clickable(self.remove_from_this_adjustment_folder_button_locator), 'remove from this adjustment folder button locator not found before specified time out')
        remove_from_this_adjustment_folder_button_element.click()
        self.wait_for_ajax_spinner_load()
        try:
            if with_checkbox_selection is True:
                self.wait().until(EC.visibility_of_element_located(self.remove_confirmation_message_locator), 'remove confirmation message locator not found before specified time out')
                ok_button_element = self.wait().until(EC.element_to_be_clickable(self.ok_button_locator), 'ok button locator not found before specified time out')
                self.wait_for_ajax_spinner_load()
                ok_button_element.click()
                self.wait_for_ajax_spinner_load()
                self.wait().until(EC.visibility_of_element_located(self.remove_success_message_locator), 'remove success message locator not found before specified time out')
                ok_button_element = self.wait().until(EC.element_to_be_clickable(self.ok_button_locator), 'ok button locator not found before specified time out')
                self.wait_for_ajax_spinner_load()
                ok_button_element.click()
                self.wait_for_ajax_spinner_load()
            else:
                self.wait().until(EC.visibility_of_element_located(self.error_message_locator), 'error message locator not found before specified time out')
                ok_button_element = self.wait().until(EC.element_to_be_clickable(self.ok_button_locator), 'ok button locator not found before specified time out')
                self.wait_for_ajax_spinner_load()
                ok_button_element.click()
                self.wait_for_ajax_spinner_load()
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def select_bill_and_audit_module_grid_inline_item(self, item_name):
        """
        Implementing select bill and audit module grid inline item
        :param item_name:
        :return:
        """
        self.select_inline_action_item(item_name, module_name = self.bill_audit_module_name)
        self.wait_for_ajax_spinner_load()

    def set_adjustment_folder_bill_account(self, bill_account_list):
        """
        Implementing set adjustment folder bill account functionality
        :param bill_account_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.adjustment_folder_bill_account_kendo_dropdown_locator, bill_account_list)
        self.wait_for_ajax_spinner_load()
        page_header_element = self.wait().until(EC.element_to_be_clickable(self.page_header_locator), 'page header locator not found before specified time out')
        page_header_element.click()

    def set_adjustment_folder_name(self, adjustment_folder_name_list):
        """
        Implementing set adjustment folder name functionality
        :param adjustment_folder_name_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.adjustment_folder_name_kendo_dropdown_locator, adjustment_folder_name_list)
        self.wait_for_ajax_spinner_load()
        page_header_element = self.wait().until(EC.element_to_be_clickable(self.page_header_locator), 'page header locator not found before specified time out')
        page_header_element.click()

    def click_add_related_dispute_button(self):
        """
        Implementing click add related dispute button functionality
        :return:
        """
        add_related_dispute_button_element = self.wait().until(EC.element_to_be_clickable(self.add_related_dispute_button_locator), 'add related dispute button locator not found before specified time out')
        add_related_dispute_button_element.click()
        self.wait_for_ajax_spinner_load()

    def select_add_disputes_grid_row_checkbox(self, list_of_audit_account):
        """
        Implementing select add disputes grid row checkbox functionality
        :param list_of_audit_account:
        :return:
        """
        self.select_grid_row_checkbox(self.add_disputes_grid_div_id, list_of_audit_account, self.add_disputes_grid_checkbox_column_number)
        self.wait_for_ajax_spinner_load()

    def click_add_dispute_save_button(self):
        """
        Implementing click add dispute save button functionality
        :return:
        """
        add_dispute_save_button_element = self.wait().until(EC.element_to_be_clickable(self.add_disputes_save_button_locator), 'add dispute save button locator not found before specified time out')
        add_dispute_save_button_element.click()
        self.wait_for_ajax_spinner_load()
        try:
            self.wait().until(EC.presence_of_element_located(self.confirmation_popup_locator), 'confirmation pop up locator not found before specified time out')
            self.wait_for_ajax_spinner_load()
            ok_button_element = self.wait().until(EC.element_to_be_clickable(self.ok_button_locator), 'ok button locator not found before specified time out')
            ok_button_element.click()
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def click_remove_dispute_button_without_selection(self):
        """
        Implementing click remove dispute button without selection functionality
        :return:
        """
        remove_dispute_button_element = self.wait().until(EC.element_to_be_clickable(self.remove_dispute_button_locator), 'remove dispute button locator not found before specified time out')
        remove_dispute_button_element.click()
        self.wait_for_ajax_spinner_load()
        try:
            self.wait().until(EC.presence_of_element_located(self.error_message_locator), 'error message locator not found before specified time out')
            self.wait_for_ajax_spinner_load()
            ok_button_element = self.wait().until(EC.element_to_be_clickable(self.ok_button_locator), 'ok button locator not found before specified time out')
            ok_button_element.click()
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def set_charges_grid_accounting_code(self, accounting_code):
        """
        Implementing set charges grid accounting code functionality
        :param accounting_code:
        :return:
        """
        column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::th[@data-title='Accounting Code']" % self.charges_grid_div_id)
        column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) + 1
        first_row_column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::div[@class='k-grid-content']/descendant::td[%s]/span[@class='k-grid-cell']" % ( self.charges_grid_div_id, str(column_index)))
        first_row_column_element = self.wait().until(EC.presence_of_element_located(first_row_column_locator), 'first row column locator not found before specified time out')
        self.script_executor_click(first_row_column_element)
        self.wait_for_ajax_spinner_load()
        dropdown_item_locator = (By.XPATH, "//ul[@id='AccountingCode_listbox']/descendant::li[contains(text(), '%s')]" % accounting_code)
        dropdown_item_element = self.wait().until(EC.presence_of_element_located(dropdown_item_locator), 'dropdown item locator not found before specified time out')
        self.script_executor_click(dropdown_item_element)
        self.wait_for_ajax_spinner_load()

    def click_move_to_another_adjustment_folder_button(self, with_checkbox_selection):
        """
        :param with_checkbox_selection:
        Implementing click move to another adjustment folder button functionality
        :return:
        """
        move_to_another_adjustment_folder_button_element = self.wait().until(EC.element_to_be_clickable(self.move_to_another_adjustment_folder_button_locator), 'move to another adjustment folder button locator not found before specified time out')
        move_to_another_adjustment_folder_button_element.click()
        self.wait_for_ajax_spinner_load()
        try:
            if with_checkbox_selection is not True:
                self.wait().until(EC.visibility_of_element_located(self.error_message_locator), 'error message locator not found before specified time out')
                ok_button_element = self.wait().until(EC.element_to_be_clickable(self.ok_button_locator), 'ok button locator not found before specified time out')
                self.wait_for_ajax_spinner_load()
                ok_button_element.click()
                self.wait_for_ajax_spinner_load()
            else:
                pass
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def select_disputes_grid_row_checkbox(self, statement_number):
        """
        Implementing select disputes grid row checkbox functionality
        :param statement_number:
        :return:
        """
        self.select_grid_row_checkbox(self.disputes_grid_div_id, statement_number, self.disputes_grid_checkbox_column_number)
        self.wait_for_ajax_spinner_load()

    def click_remove_dispute_button(self):
        """
        Implementing click remove dispute button functionality
        :return:
        """
        remove_dispute_button_element = self.wait().until(EC.element_to_be_clickable(self.remove_dispute_button_locator), 'remove dispute button locator not found before specified time out')
        remove_dispute_button_element.click()
        self.wait_for_ajax_spinner_load()
        try:
            self.wait().until(EC.visibility_of_element_located(self.remove_dispute_confirmation_message_locator), 'remove dispute confirmation message locator not found before specified time out')
            ok_button_element = self.wait().until(EC.element_to_be_clickable(self.ok_button_locator), 'ok button locator not found before specified time out')
            self.wait_for_ajax_spinner_load()
            ok_button_element.click()
            self.wait_for_ajax_spinner_load()
            self.wait().until(EC.visibility_of_element_located(self.remove_dispute_success_message_locator), 'remove dispute success message locator not found before specified time out')
            ok_button_element = self.wait().until(EC.element_to_be_clickable(self.ok_button_locator), 'ok button locator not found before specified time out')
            self.wait_for_ajax_spinner_load()
            ok_button_element.click()
            self.wait_for_ajax_spinner_load()
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def set_add_dispute_statement_number(self, statement_number):
        """
        Implementing set add dispute statement number functionality
        :param statement_number:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.add_dispute_statement_number_kendo_dropdown_locator, statement_number)
        self.wait_for_ajax_spinner_load()

    def set_add_dispute_dispute_type(self, dispute_type):
        """
        Implementing set add dispute dispute type functionality
        :param dispute_type:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.add_dispute_dispute_type_kendo_dropdown_locator, dispute_type)
        self.wait_for_ajax_spinner_load()

    def set_add_dispute_status(self, status):
        """
        Implementing set add dispute status functionality
        :param status:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.add_dispute_status_kendo_dropdown_locator, status)
        self.wait_for_ajax_spinner_load()

    def set_add_dispute_line_item_group(self, line_item_group):
        """
        Implementing set add dispute line item group functionality
        :param line_item_group:
        :return:
        """
        self.set_value_into_input_field(self.add_dispute_line_item_group_textbox_locator, line_item_group)

    def set_add_dispute_date(self, date):
        """
        Implementing set add dispute date functionality
        :param date:
        :return:
        """
        self.set_value_into_input_field(self.add_dispute_date_inputbox_locator, date)

    def click_add_disputes_search_button(self):
        """
        Implementing click add disputes search button
        :return:
        """
        self.click_element(self.disputes_search_button_locator, True)

    def get_add_disputes_grid_row_details(self):
        """
        Implementing get add disputes grid row details
        :return: grid_row_details_dictionary
        """
        self.grid_row_details_dictionary.clear()
        self.grid_row_details_dictionary.update({"Statement Begin Date": "", "Statement End Date": "", "Statement Number": "", "Dispute Type": "", "Dispute Amount": "", "Status": ""})
        return self.get_grid_row_details(self.add_disputes_grid_div_id, self.grid_row_details_dictionary)

    def get_disputes_grid_row_details(self):
        """
        Implementing get disputes grid row details
        :return: grid_row_details_dictionary
        """
        self.grid_row_details_dictionary.clear()
        self.grid_row_details_dictionary.update({"Statement Begin Date": "", "Statement End Date": "", "Statement Number": "", "Dispute Type": "", "Dispute Amount": "", "Status": ""})
        return self.get_grid_row_details(self.disputes_grid_div_id, self.grid_row_details_dictionary)

    def filter_disputes_grid(self, column_name, filter_item_text):
        """
        Implementing filter disputes grid functionality
        :param column_name:
        :param filter_item_text:
        :return:
        """
        self.grid_filter_with_textbox(self.disputes_grid_div_id, column_name, filter_item_text, self.adjustment_folders_column_position)

    def set_move_charges_adjustment_folder_name(self, adjustment_folder_name):
        """
        Implementing set move charges adjustment folder name functionality
        :param adjustment_folder_name:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.move_charges_adjustment_folder_kendo_dropdown_locator, adjustment_folder_name)
        self.wait_for_ajax_spinner_load()

    def click_move_to_adjustment_folder_save_button(self):
        """
        Implementing move to adjustment folder save button functionality
        :return:
        """
        move_to_adjustment_folder_save_button_element = self.wait().until(EC.element_to_be_clickable(self.move_to_adjustment_folder_save_button_locator), 'move to adjustment folder save button locator not found before specified time out')
        move_to_adjustment_folder_save_button_element.click()
        self.wait_for_ajax_spinner_load()
        try:
            self.wait().until(EC.presence_of_element_located(self.confirmation_popup_locator), 'confirmation pop up locator not found before specified time out')
            ok_button_element = self.wait().until(EC.element_to_be_clickable(self.ok_button_locator), 'ok button locator not found before specified time out')
            ok_button_element.click()
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def get_charges_grid_row_details(self):
        """
        Implementing get charges grid row details functionality
        :return: grid_row_details_dictionary
        """
        self.grid_row_details_dictionary.clear()
        self.grid_row_details_dictionary.update({"Charge Begin Date": "", "Charge End Date": "", "Statement Number": "", "Rate Type": "", "Rating Quantity": "", "Adjustment Statement": ""})
        return self.get_grid_row_details(self.charges_grid_div_id, self.grid_row_details_dictionary, self.charges_grid_data_grid_name)

    def select_inbound_statement_tab(self):
        """
        Implementing select inbound statement tab functionality
        :return:
        """
        self.select_static_tab(self.inbound_statement_tab_locator, 'inbound statement static tab not found before specified time out')
        self.wait_for_ajax_spinner_load()

    def set_audit_account_for_search(self, audit_account_list):
        """
        Implementing set audit account for search functionality
        :param audit_account_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.audit_account_dropdown_locator, audit_account_list)
        self.wait_for_ajax_spinner_load()

    def set_statement_status_for_search(self, status_list):
        """
        Implementing set statement status for search functionality
        :param status_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.statement_status_dropdown_locator, status_list)
        self.wait_for_ajax_spinner_load()

    def click_inbound_statement_search_button(self):
        """
        Implementing click inbound statement search button functionality
        :return:
        """
        self.click_element(self.page_header_locator)
        self.click_element(self.inbound_statement_search_button_locator, True)

    def click_create_new_statement_button(self):
        """
        Implementing click create new statement button functionality
        :return:
        """
        self.click_element(self.create_new_statement_button_locator)

    def set_audit_account(self, audit_account):
        """
        Implementing set audit account functionality
        :param audit_account:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.statement_entry_audit_account_locator, audit_account)
        self.wait_for_ajax_spinner_load()

    def set_statement_number(self):
        """
        Implementing set statement number functionality
        :return:
        """
        statement_number = self.random_string_generator(5, string.digits)
        self.set_value_into_input_field(self.statement_number_textbox_locator, statement_number)
        statement_number_label_locator = (By.XPATH, "//label[text()='Statement Number']")
        self.click_element(statement_number_label_locator)
        return statement_number

    def set_statement_currency(self, currency):
        """
        Implementing set statement currency functionality
        :param currency:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.statement_currency_dropdown_locator, currency)
        self.wait_for_ajax_spinner_load()

    def set_total_amount(self, total_amount):
        """
        Implementing set total amount functionality
        :param total_amount:
        :return:
        """
        self.set_value_into_input_field(self.total_amount_textbox_locator, total_amount, True)
        total_amount_label_locator = (By.XPATH, "//label[text()='Total Amount']")
        self.click_element(total_amount_label_locator)

    def set_statement_begin_date(self, begin_date):
        """
        Implementing set statement begin date functionality
        :param begin_date:
        :return: begin_date_to_set
        """
        begin_date_to_set = None
        if begin_date != "":
            begin_date_to_set = begin_date
        else:
            self.first_day_of_previous_month = self.get_date(first_day_of_last_month=True)
            begin_date_to_set = self.first_day_of_previous_month
        self.set_value_into_input_field(self.statement_begin_date_locator, begin_date_to_set)
        return begin_date_to_set

    def set_statement_end_date(self, end_date):
        """
        Implementing set statement end date functionality
        :param end_date:
        :return: end_date_to_set
        """
        end_date_to_set = None
        if end_date != "":
            end_date_to_set = end_date
        else:
            end_date_to_set = self.get_date(last_day_of_last_month=True)
        self.set_value_into_input_field(self.statement_end_date_locator, end_date_to_set)
        return end_date_to_set

    def set_statement_issued_date(self, issued_date):
        """
        Implementing set statement issued date functionality
        :param issued_date:
        :return:
        """
        if issued_date != "":
            issued_date_to_set = issued_date
        else:
            self.first_day_of_current_month = self.get_date(first_day_of_current_month=True)
            issued_date_to_set = self.first_day_of_current_month
        self.set_value_into_input_field(self.issued_date_locator, issued_date_to_set)

    def set_statement_received_date(self, received_date):
        """
        Implementing set statement received date functionality
        :param received_date:
        :return:
        """
        if received_date != "":
            self.set_value_into_input_field(self.received_date_locator, received_date)
        else:
            received_date_to_set = self.first_day_of_current_month
            self.set_value_into_input_field(self.received_date_locator, received_date_to_set)

    def set_statement_due_date(self, due_date):
        """
        Implementing set statement due date functionality
        :param due_date:
        :return: due_date_to_set
        """
        due_date_to_set = None
        if due_date != "":
            due_date_to_set = due_date
        else:
            due_date_to_set = self.get_date(last_day_of_current_month=True)
        self.set_value_into_input_field(self.due_date_locator, due_date_to_set)
        return due_date_to_set

    def click_statement_entry_save_button(self):
        """
        Implementing click statement entry save button functionality
        :return:
        """
        self.click_element(self.statement_entry_save_button_locator, False, True)
        if self.is_element_present(self.statement_overlaps_window_locator) is True:
            self.click_element(self.yes_button_locator)
        try:
            self.wait().until(EC.visibility_of_element_located(self.success_message_locator), 'success message locator not found before specified time out')
            ok_button_element = self.wait().until(EC.element_to_be_clickable(self.ok_button_locator), 'ok button locator not found before specified time out')
            self.wait_for_ajax_spinner_load()
            ok_button_element.click()
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def click_statement_entry_cancel_button(self):
        """
        Implementing click statement entry cancel button functionality
        :return:
        """
        self.click_element(self.statement_entry_cancel_button_locator, False, True)
        try:
            self.dismiss_alert_pop_up()
        except:
            pass

    def is_field_mandatory(self, label_text):
        """
        Implementing is field mandatory functionality
        :param label_text:
        :return:
        """
        field_locator = (By.XPATH, "//div[@id='BISEContent']/descendant::label[contains(text(), '%s')]" % label_text)
        field_element = self.wait().until(EC.presence_of_element_located(field_locator), 'field locator not found before specified time out')
        if str(field_element.get_attribute("class")) == "required-field":
            return True
        else:
            return False

    def set_vat_code(self, vat_code):
        """
        Implementing set vat code functionality
        :param vat_code:
        :return:
        """
        self.set_value_into_input_field(self.vat_code_textbox_locator, vat_code)

    def set_vat_amount(self, vat_amount):
        """
        Implementing set vat amount functionality
        :param vat_amount:
        :return:
        """
        self.set_value_into_input_field(self.vat_amount_textbox_locator, vat_amount, True)

    def set_total_amount_with_taxes(self, amount):
        """
        Implementing set total amount with taxes functionality
        :param amount:
        :return:
        """
        self.set_value_into_input_field(self.total_amount_with_taxes_textbox_locator, amount, True)

    def set_base_currency(self, base_currency):
        """
        Implementing set base currency functionality
        :param base_currency:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.base_currency_dropdown_locator, base_currency)
        self.wait_for_ajax_spinner_load()

    def set_exchange_rate(self, exchange_rate):
        """
        Implementing set exchange rate functionality
        :param exchange_rate:
        :return:
        """
        self.set_value_into_input_field(self.exchange_rate_textbox_locator, exchange_rate, True)

    def set_exchange_rate_date(self, exchange_rate_date):
        """
        Implementing set exchange rate date functionality
        :param exchange_rate_date:
        :return:
        """
        self.set_value_into_input_field(self.exchange_rate_date_locator, exchange_rate_date)

    def set_begin_date_for_search(self, begin_date):
        """
        Implementing set begin date for search functionality
        :param begin_date:
        :return:
        """
        self.set_value_into_input_field(self.begin_date_locator, begin_date)

    def set_end_date_for_search(self, end_date, allow_past_date):
        """
        Implementing set end date for search functionality
        :param end_date:
        :param allow_past_date:
        :return:
        """
        if allow_past_date is True and end_date != "":
            end_date_to_set = end_date
        else:
            if (end_date == "" or time.strptime(end_date, "%m/%d/%Y") < time.strptime(self.get_current_date(), "%m/%d/%Y")):
                end_date_to_set = self.get_date(current_date=True)
            else:
                end_date_to_set = end_date
        self.set_value_into_input_field(self.end_date_locator, end_date_to_set)

    def get_inbound_statement_grid_row_details(self, unique_identifier):
        """
        Implementing get inbound statement grid row details functionality
        :param unique_identifier:
        :return: grid_row_data
        """
        self.inbound_statement_grid_row_data.clear()
        self.inbound_statement_grid_row_data = {"Audit Account": "", "Statement Number": "", "Begin Date": "", "End Date": "", "Amount": "", "Final Payment Due Date": ""}
        grid_row_data = self.get_grid_row_details_with_unique_identifier(self.inbound_statement_grid_div_id, self.inbound_statement_grid_row_data, unique_identifier)
        amount_from_grid = str(grid_row_data["Amount"]).replace(",", "")
        grid_row_data["Amount"] = amount_from_grid
        return grid_row_data

    def select_inbound_statement_grid_checkbox(self, statement_number):
        """
        Implementing select inbound statement grid checkbox functionality
        :param statement_number:
        :return:
        """
        self.select_grid_row_checkbox(self.inbound_statement_grid_div_id, statement_number, self.inbound_statement_grid_checkbox_column_number)
        self.wait_for_ajax_spinner_load()

    def click_delete_button(self):
        """
        Implementing click delete button functionality
        :return:
        """
        self.number_of_rows = self.get_inbound_statement_grid_number_of_rows()
        self.click_element(self.delete_button_locator, True)
        try:
            self.wait().until(EC.visibility_of_element_located(self.statement_delete_confirmation_locator), 'statement delete confirmation locator not found before specified time out')
            ok_button_element = self.wait().until(EC.element_to_be_clickable(self.ok_button_locator), 'ok button locator not found before specified time out')
            self.wait_for_ajax_spinner_load()
            ok_button_element.click()
            self.wait_for_ajax_spinner_load()
            self.wait().until(EC.visibility_of_element_located(self.statement_delete_success_message_locator), 'statement delete success message locator not found before specified time out')
            ok_button_element = self.wait().until(EC.element_to_be_clickable(self.ok_button_locator), 'ok button locator not found before specified time out')
            self.wait_for_ajax_spinner_load()
            ok_button_element.click()
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def get_inbound_statement_grid_number_of_rows(self):
        """
        Implementing get inbound statement grid number of rows functionality
        :return: number_of_rows
        """
        inbound_statement_grid_number_of_rows_element = self.wait().until(EC.visibility_of_element_located(self.inbound_statement_grid_number_of_rows_locator), 'inbound statement grid number of rows locator not found before specified time out')
        element_text = (inbound_statement_grid_number_of_rows_element.text).split()
        return element_text[2]

    def is_new_statement_deleted_successfully(self):
        """
        Implementing is new statement deleted successfully functionality
        :return:
        """
        status = None
        number_of_rows_after_delete = self.get_inbound_statement_grid_number_of_rows()
        if int(number_of_rows_after_delete) < int(self.number_of_rows):
            status = True
        else:
            status = False
        return status

    def set_statement_type(self, statement_type_list):
        """
        Implementing set statement type functionality
        :param statement_type_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.statement_type_kendo_dropdown_locator, statement_type_list)
        page_header_element = self.wait().until(EC.element_to_be_clickable(self.page_header_locator), 'page header locator not found before specified time out')
        page_header_element.click()

    def set_bill_account(self, bill_account_list):
        """
        Implementing set bill account functionality
        :param bill_account_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.bill_account_kendo_dropdown_locator, bill_account_list)
        page_header_element = self.wait().until(EC.element_to_be_clickable(self.page_header_locator), 'page header locator not found before specified time out')
        page_header_element.click()

    def click_outbound_statement_search_button(self):
        """
        Implementing click outbound statement search button functionality
        :return:
        """
        self.click_element(self.page_header_locator)
        self.click_element(self.outbound_statement_search_button_locator, True)

    def click_add_non_recurring_charge_button(self):
        """
        Implementing click add non recurring charge button functionality
        :return:
        """
        self.get_non_traffic_charges_grid_row_count()
        add_non_recurring_charge_button_element = self.wait().until(EC.element_to_be_clickable(self.add_non_recurring_charge_button_locator), 'add non recurring charge button locator not found before specified time out')
        add_non_recurring_charge_button_element.click()
        self.wait_for_ajax_spinner_load()

    def click_outbound_statements_grid_inline_action_button(self, row_identifier_text):
        """
        Implementing click outbound statements grid inline action button functionality
        :param row_identifier_text:
        :return:
        """
        self.click_inline_action_button(self.outbound_statements_grid_div_id, row_identifier_text, self.outbound_statements_grid_inline_action_column_number)

    def set_accounting_code(self, accounting_code):
        """
        Implementing set accounting code functionality
        :param accounting_code:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.accounting_code_kendo_dropdown_locator, accounting_code)
        self.wait_for_ajax_spinner_load()

    def set_non_recurring_charge_begin_date(self, begin_date):
        """
        Implementing set non recurring charge begin date functionality
        :param begin_date:
        :return: non_recurring_charge_begin_date
        """
        if begin_date is None:
            statement_summary_begin_date_element = self.wait().until(EC.presence_of_element_located(self.statement_details_begin_date_locator), 'statement details begin date locator not found before specified time out')
            non_recurring_charge_begin_date = str(statement_summary_begin_date_element.text)
        elif begin_date == "":
            current_date = datetime.date.today()
            non_recurring_charge_begin_date = "%d/%d/%d" % (current_date.month, current_date.day, current_date.year)
        else:
            non_recurring_charge_begin_date = begin_date
        self.set_value_into_input_field(self.non_recurring_charge_begin_date_locator, non_recurring_charge_begin_date)
        return non_recurring_charge_begin_date

    def set_non_recurring_charge_end_date(self, end_date):
        """
        Implementing set non recurring charge end date functionality
        :param end_date:
        :return: non_recurring_charge_end_date
        """
        if end_date is None:
            statement_summary_end_date_element = self.wait().until(EC.presence_of_element_located(self.statement_details_end_date_locator), 'statement details end date locator not found before specified time out')
            non_recurring_charge_end_date = str(statement_summary_end_date_element.text)
        elif end_date == "":
            current_date = datetime.date.today()
            next_month = current_date.replace(day=28) + datetime.timedelta(days=4)
            last_day_of_current_month = next_month - datetime.timedelta(days=next_month.day)
            non_recurring_charge_end_date = "%d/%d/%d" % (last_day_of_current_month.month, last_day_of_current_month.day, last_day_of_current_month.year)
        else:
            non_recurring_charge_end_date = end_date
        self.set_value_into_input_field(self.non_recurring_charge_end_date_locator, non_recurring_charge_end_date)
        return non_recurring_charge_end_date

    def set_non_recurring_charge(self, non_recurring_charge_prefix):
        """
        Implementing set non recurring charge functionality
        :param non_recurring_charge_prefix:
        :return: non_recurring_charge
        """
        non_recurring_charge = non_recurring_charge_prefix + self.random_string_generator()
        self.set_value_into_input_field(self.non_recurring_charge_textbox_locator, non_recurring_charge)
        return non_recurring_charge

    def set_charge_category(self, charge_category):
        """
        Implementing set charge category functionality
        :param charge_category:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.charge_category_kendo_dropdown_locator, charge_category)
        self.wait_for_ajax_spinner_load()

    def set_currency(self, currency):
        """
        Implementing set currency functionality
        :param currency:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.currency_kendo_dropdown_locator, currency)
        self.wait_for_ajax_spinner_load()

    def set_charge_amount(self, charge_amount):
        """
        Implementing set charge amount functionality
        :param charge_amount:
        :return:
        """
        self.set_value_into_input_field(self.charge_amount_textbox_locator, charge_amount, True)

    def set_tax_template(self, tax_template):
        """
        Implementing set tax template functionality
        :param tax_template:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.tax_template_kendo_dropdown_locator, tax_template)
        self.wait_for_ajax_spinner_load()

    def click_non_recurring_charge_save_button(self):
        """
        Implementing click non recurring charge save button functionality
        :return:
        """
        non_recurring_charge_save_button_element = self.wait().until(EC.element_to_be_clickable(self.non_recurring_charge_save_button_locator), 'non recurring charge save button locator not found before specified time out')
        non_recurring_charge_save_button_element.click()
        self.wait_for_ajax_spinner_load()
        try:
            try:
                self.wait().until(EC.visibility_of_element_located(self.do_you_wish_to_continue_locator))
                self.click_element(self.ok_button_locator)
            except:
                pass
            self.wait().until(EC.visibility_of_element_located(self.success_message_locator), 'success message locator not found before specified time out')
            ok_button_element = self.wait().until(EC.element_to_be_clickable(self.ok_button_locator), 'ok button locator not found before specified time out')
            self.wait_for_ajax_spinner_load()
            ok_button_element.click()
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def filter_non_traffic_charges_grid(self, column_name, filter_item_text):
        """
        Implementing filter non traffic charges grid functionality
        :param column_name:
        :param filter_item_text:
        :return:
        """
        self.grid_filter_with_textbox(self.non_traffic_charges_grid_div_id, column_name, filter_item_text)

    def get_non_traffic_charges_grid_row_details(self):
        """
        Implementing get non traffic charges grid row details functionality
        :return: non_traffic_charges_grid_row_details
        """
        self.grid_row_details_dictionary.clear()
        self.grid_row_details_dictionary.update({"Accounting Code": "", "Start Date": "", "End Date": "", "Charge Name": "", "Charge Category": "", "Currency": "", "Amount": "", "Tax Template": ""})
        non_traffic_charges_grid_row_details = self.get_grid_row_details(self.non_traffic_charges_grid_div_id, self.grid_row_details_dictionary)
        if "," in non_traffic_charges_grid_row_details["Amount"]:
            non_traffic_charges_grid_row_details["Amount"] = non_traffic_charges_grid_row_details["Amount"].replace(",", "")
        return non_traffic_charges_grid_row_details

    def select_non_traffic_charges_grid_row_checkbox(self, row_identifier_text):
        """
        Implementing select non traffic charges grid row checkbox functionality
        :param row_identifier_text:
        :return:
        """
        self.select_grid_row_checkbox(self.non_traffic_charges_grid_div_id, row_identifier_text, self.non_traffic_charges_grid_checkbox_column_number, first_row=True)

    def click_non_traffic_charges_delete_button(self):
        """
        Implementing click non traffic charges delete button functionality
        :return:
        """
        self.get_non_traffic_charges_grid_row_count()
        self.click_element(self.non_traffic_charges_delete_button_locator, True)
        try:
            self.wait().until(EC.visibility_of_element_located(self.charges_delete_success_message_locator), 'charges delete success message locator not found before specified time out')
            ok_button_element = self.wait().until(EC.element_to_be_clickable(self.ok_button_locator), 'ok button locator not found before specified time out')
            self.wait_for_ajax_spinner_load()
            ok_button_element.click()
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def get_non_traffic_charges_grid_row_count(self):
        """
        Implementing get non traffic charges grid row count functionality
        :return: non_traffic_charges_grid_row_count
        """
        non_traffic_charges_grid_row_count_span_element = self.wait().until(EC.visibility_of_element_located(self.non_traffic_charges_grid_row_count_span_locator), 'non traffic charges grid row count span locator not found before specified time out')
        count_span_text = non_traffic_charges_grid_row_count_span_element.text.split()
        self.non_traffic_charges_grid_row_count = count_span_text[2]
        return self.non_traffic_charges_grid_row_count

    def compare_non_traffic_charges_grid_row_count(self):
        """
        Implementing compare non traffic charges grid row count functionality
        :return: True/False
        """
        previous_non_traffic_charges_grid_row_count = self.non_traffic_charges_grid_row_count
        current_non_traffic_charges_grid_row_count = self.get_non_traffic_charges_grid_row_count()
        if int(current_non_traffic_charges_grid_row_count) == int(previous_non_traffic_charges_grid_row_count) + 2:
            return True
        else:
            return False

    def is_new_non_recurring_charge_deleted(self):
        """
        Implementing is new non recurring charge deleted functionality
        :return: True/False
        """
        previous_non_traffic_charges_grid_row_count = self.non_traffic_charges_grid_row_count
        current_non_traffic_charges_grid_row_count = self.get_non_traffic_charges_grid_row_count()
        if int(previous_non_traffic_charges_grid_row_count) > int(current_non_traffic_charges_grid_row_count):
            return True
        else:
            return False

    def click_inbound_statement_grid_inline_action_button(self, row_identifier_text):
        """
        Implementing click inbound statement grid inline action button functionality
        :param row_identifier_text:
        :return:
        """
        self.click_inline_action_button(self.inbound_statement_grid_div_id, row_identifier_text, self.inbound_statement_grid_inline_action_column_number)

    def click_bulk_add_button(self):
        """
        Implementing click bulk add button functionality
        :return:
        """
        self.click_element(self.bulk_add_button_locator, True)

    def set_tariff_type(self, tariff_type):
        """
        Implementing set tariff type functionality
        :param tariff_type:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.tariff_type_kendo_dropdown_locator, tariff_type)

    def set_line_item_type(self, line_item_type):
        """
        Implementing set line item type functionality
        :param line_item_type:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.line_item_type_kendo_dropdown_locator, line_item_type)

    def set_service_group(self, service_group):
        """
        Implementing set service group functionality
        :param service_group:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.service_group_kendo_dropdown_locator, service_group)

    def set_product(self, product):
        """
        Implementing set product functionality
        :param product:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.product_kendo_dropdown_locator, product)

    def set_time_band(self, time_band):
        """
        Implementing set time band functionality
        :param time_band:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.time_band_kendo_dropdown_locator, time_band)

    def set_tier(self, tier):
        """
        Implementing set tier functionality
        :param tier:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.tier_kendo_dropdown_locator, tier)

    def set_rating_unit(self, rating_unit):
        """
        Implementing set rating unit functionality
        :param rating_unit:
        :return:
        """
        rating_unit_kendo_dropdown_element = self.wait().until(EC.presence_of_element_located(self.rating_unit_kendo_dropdown_locator))
        self.hover(rating_unit_kendo_dropdown_element)
        self.single_selection_from_static_kendo_dropdown(self.rating_unit_kendo_dropdown_locator, rating_unit)

    def set_bulk_add_begin_date(self, begin_date):
        """
        Implementing set bulk add begin date functionality
        :param begin_date:
        :return: bulk_add_begin_date
        """
        if begin_date == "":
            begin_date = self.get_date(current_date=True)
        self.set_value_into_input_field(self.bulk_add_begin_date_inputbox_locator, begin_date)
        global bulk_add_begin_date
        bulk_add_begin_date = datetime.datetime.strptime(begin_date, "%m/%d/%Y")
        return begin_date

    def set_bulk_add_end_date(self, end_date):
        """
        Implementing set bulk add end date functionality
        :param end_date:
        :return: end_date
        """
        global bulk_add_begin_date
        if end_date != "" and datetime.datetime.strptime(end_date, "%m/%d/%Y") > bulk_add_begin_date:
            self.set_value_into_input_field(self.bulk_add_end_date_inputbox_locator, str(end_date))
        elif end_date == "":
            end_date = self.get_date(last_day_of_current_month=True)
            self.set_value_into_input_field(self.bulk_add_end_date_inputbox_locator, str(end_date))
        else:
            end_date = bulk_add_begin_date + datetime.timedelta(days=7)
            end_date = "%d/%d/%d" % (end_date.month, end_date.day, end_date.year)
            self.set_value_into_input_field(self.bulk_add_end_date_inputbox_locator, str(end_date))
        return str(end_date)

    def click_bulk_edit_cancel_button(self):
        """
        Implementing click bulk edit cancel button functionality
        :return:
        """
        self.click_element(self.bulk_edit_cancel_button_locator, True)

    def click_bulk_edit_submit_button(self):
        """
        Implementing click bulk edit submit button functionality
        :return:
        """
        self.click_element(self.bulk_edit_submit_button_locator, True)

    def click_bulk_edit_undo_reset_button(self):
        """
        Implementing click bulk edit undo_reset button functionality
        :return:
        """
        self.click_element(self.bulk_edit_undo_reset_button_locator, True)

    def is_bulk_add_pop_up_cancelled(self):
        """
        Implementing is bulk add pop up cancelled functionality
        :return: True/False
        """
        try:
            self.wait(5).until(EC.visibility_of_element_located(self.bulk_add_pop_up_title_locator), 'bulk add pop up title locator not found before specified time out')
            is_cancelled = False
        except:
            is_cancelled = True
        return is_cancelled

    def is_input_field_reset(self, label_text):
        """
        Implementing is input field reset functionality
        :param label_text:
        :return: True/False
        """
        is_reset = False
        input_field_span_locator = (By.XPATH, "//label[text()='%s']/../descendant::span[@class='k-input']" % label_text)
        input_field_span_element = self.wait().until(EC.presence_of_element_located(input_field_span_locator), 'input field span locator not found before specified time out')
        if input_field_span_element.text.lower() == self.reset_text:
            is_reset = True
        return is_reset

    def set_number_of_rows(self, number_of_rows):
        """
        Implementing set number of rows functionality
        :param number_of_rows:
        :return:
        """
        self.set_value_into_input_field(self.number_of_rows_inputbox_locator, number_of_rows, True)
        global bulk_add_number_of_rows
        bulk_add_number_of_rows = int(number_of_rows)

    def set_value_in_received_charges_grid_column(self, column_name, column_value, value_prefix=None):
        """
        Implementing set value in received charges grid column functionality
        :param column_name:
        :param column_value:
        :param value_prefix:
        :return:
        """
        if value_prefix is not None:
            column_value = column_value + self.random_string_generator(2, string.digits)
        global bulk_add_number_of_rows
        column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::th[@data-title='%s']" % (self.received_charges_grid_div_id, column_name))
        column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) + 1
        for row in reversed(range(bulk_add_number_of_rows)):
            row_column_locator = (By.XPATH, "(//div[contains(@id, '%s')]/descendant::div[@class='RowStatusAdded']/../../descendant::td[%s]/span[@class='k-grid-cell'])[%s]" % (self.received_charges_grid_div_id, str(column_index), str(row+1)))
            row_column_element = self.wait().until(EC.element_to_be_clickable(row_column_locator), 'row column locator not found before specified time out')
            self.script_executor_click(row_column_element)
            self.wait_for_ajax_spinner_load()
            row_column = client.Dispatch("WScript.Shell")
            row_column.SendKeys("^a")
            row_column.SendKeys("{DEL}")
            row_column.SendKeys(str(column_value))
            page_header_element = self.wait().until(EC.element_to_be_clickable(self.page_header_locator), 'page header locator not found before specified time out')
            page_header_element.click()

    def select_received_charges_grid_new_rows(self):
        """
        Implementing select received charges grid new rows functionality
        :return:
        """
        global bulk_add_number_of_rows
        for row in range(bulk_add_number_of_rows):
            received_charges_grid_checkbox_locator = (By.XPATH, "(//div[contains(@id, '%s')]/descendant::div[@class='RowStatusAdded']/../../descendant::input[@type='checkbox'])[%s]" % (self.received_charges_grid_div_id, str(row + 1)))
            received_charges_grid_checkbox_element = self.wait().until(EC.element_to_be_clickable(received_charges_grid_checkbox_locator), 'received charges grid checkbox locator not found before specified time out')
            self.hover(received_charges_grid_checkbox_element)
            self.script_executor_click(received_charges_grid_checkbox_element)

    def click_received_charges_save_changes_button(self):
        """
        Implementing click received charges save changes button functionality
        :return:
        """
        received_charges_save_changes_button_element = self.wait().until(EC.element_to_be_clickable(self.received_charges_save_changes_button_locator), 'received charges save changes button locator not found before specified time out')
        received_charges_save_changes_button_element.click()
        self.wait_for_ajax_spinner_load()
        try:
            self.wait().until(EC.presence_of_element_located(self.confirmation_popup_locator), 'confirmation popup locator not found before specified time out')
            ok_button_element = self.wait().until(EC.element_to_be_clickable(self.ok_button_locator), 'ok button locator not found before specified time out')
            ok_button_element.click()
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def get_received_charges_grid_row_details(self):
        """
        Implementing get received charges grid row details
        :return: grid_row_details_dictionary
        """
        self.grid_row_details_dictionary.clear()
        self.grid_row_details_dictionary.update({"Tariff Type": "", "Line Item Type": "", "Service Group": "", "Product": "", "Time Band": "", "Begin Date": "", "End Date": "", "Rating Unit": "", "Minutes/Quantity": "", "Rate": ""})
        return self.get_grid_row_details(self.received_charges_grid_div_id, self.grid_row_details_dictionary, self.received_charges_data_grid_name)

    def click_bulk_edit_button(self):
        """
        Implementing click bulk edit button functionality
        :return:
        """
        self.click_element(self.bulk_edit_button_locator, True)

    def click_statement_details_grid_delete_button(self):
        """
        Implementing click statement details grid delete button functionality
        :return:
        """
        self.click_element(self.statement_details_delete_button_locator, True)
        try:
            self.wait().until(EC.visibility_of_element_located(self.statement_delete_confirmation_locator), 'statement delete confirmation locator not found before specified time out')
            ok_button_element = self.wait().until(EC.element_to_be_clickable(self.ok_button_locator), 'ok button locator not found before specified time out')
            self.wait_for_ajax_spinner_load()
            ok_button_element.click()
            self.wait_for_ajax_spinner_load()
            self.wait(120).until(EC.visibility_of_element_located(self.success_message_locator), 'success message locator not found before specified time out')
            ok_button_element = self.wait().until(EC.element_to_be_clickable(self.ok_button_locator), 'ok button locator not found before specified time out')
            self.wait_for_ajax_spinner_load()
            ok_button_element.click()
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def select_received_charges_grid_multiple_rows_checkbox(self):
        """
        Implementing select received charges grid multiple rows checkbox functionality
        :return:
        """
        global bulk_add_number_of_rows
        for row in range(bulk_add_number_of_rows):
            received_charges_grid_checkbox_locator = (By.XPATH, "(//div[contains(@id, '%s')]/descendant::input[@type='checkbox'])[%s]" % (self.received_charges_grid_div_id, str(row + 2)))
            received_charges_grid_checkbox_element = self.wait().until(EC.element_to_be_clickable(received_charges_grid_checkbox_locator), 'received charges grid checkbox locator not found before specified time out')
            self.hover(received_charges_grid_checkbox_element)
            self.script_executor_click(received_charges_grid_checkbox_element)

    def set_sms_product(self, product):
        """
        Implementing set sms product functionality
        :param product:
        :return:
        """
        self.single_selection_from_static_kendo_dropdown(self.sms_product_kendo_dropdown_locator, product)

    def is_tab_present(self, tab_name):
        """
        Implementing is tab present functionality
        :param tab_name:
        :return: True/False
        """
        tab_locator = (By.XPATH, "//a[@class='k-link' and text()='%s']" % tab_name)
        return self.is_element_present(tab_locator)

    def update_received_charges_grid_first_row_column(self, column_name, column_value):
        """
        Implementing update received charges grid first row column functionality
        :param column_name:
        :param column_value:
        :return:
        """
        self.single_selection_from_kendo_in_grid(self.received_charges_grid_div_id, column_name, column_value, self.received_charges_data_grid_name)
        self.click_element(self.page_header_locator)

    def select_received_charges_grid_row_checkbox(self, row_identifier_text):
        """
        Implementing select received charges grid row checkbox functionality
        :param row_identifier_text:
        :return:
        """
        self.select_grid_row_checkbox(self.received_charges_grid_div_id, row_identifier_text, self.received_charges_grid_checkbox_column_number)

    def click_received_charges_save_changes_button_without_changes(self):
        """
        Implementing click received charges save changes button without changes functionality
        :return:
        """
        self.click_element(self.received_charges_save_changes_button_locator)
        try:
            self.wait().until(EC.presence_of_element_located(self.no_changes_to_save_message_locator), 'no changes message locator not found before specified time out')
            ok_button_element = self.wait().until(EC.element_to_be_clickable(self.ok_button_locator), 'ok button locator not found before specified time out')
            ok_button_element.click()
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def click_received_charges_cancel_changes_button(self):
        """
        Implementing click received charges cancel changes button functionality
        :return:
        """
        self.click_element(self.received_charges_cancel_changes_button_locator)
        self.wait_for_ajax_spinner_load()

    def set_product_in_received_charges_grid(self, product):
        """
        Implementing set product in received charges grid functionality
        :param product:
        :return: full_product_name
        """
        full_product_name = product + "_" + self.random_string_generator(3)
        self.set_value_in_received_charges_grid_column(self.product_column_name, full_product_name)
        return full_product_name

    def click_inbound_statement_grid_first_row_inline_action_button(self):
        """
        Implementing click inbound statement grid first row inline action button functionality
        :return:
        """
        self.click_inline_action_button(self.inbound_statement_grid_div_id, None, self.inbound_statement_grid_inline_action_column_number, True)

    def click_documents_tab(self):
        """
        Implementing click documents tab functionality
        :return:
        """
        self.click_element(self.documents_tab_locator)

    def click_upload_document_button(self):
        """
        Implementing click upload document button functionality
        :return:
        """
        self.click_element(self.upload_document_button_locator, True, True)

    def set_document_name(self, document_name_prefix):
        """
        Implementing set document name functionality
        :param document_name_prefix:
        :return: document_name
        """
        document_name = document_name_prefix + self.random_string_generator(6)
        self.set_value_into_input_field(self.document_name_text_field_locator, document_name)
        return document_name

    def set_document_keyword(self, document_keyword):
        """
        Implementing set document keyword functionality
        :param document_keyword:
        :return:
        """
        self.set_value_into_input_field(self.keywords_text_field_locator, document_keyword)

    def set_document_reference_number(self, reference_number):
        """
        Implementing set document reference number functionality
        :param reference_number:
        :return:
        """
        self.set_value_into_input_field(self.reference_number_text_field_locator, reference_number)

    def set_document_date(self, date):
        """
        Implementing set document date functionality
        :param date:
        :return:
        """
        self.set_value_into_input_field(self.document_date_text_field_locator, date)

    def set_document_order(self, order):
        """
        Implementing set document order functionality
        :param order:
        :return:
        """
        self.set_value_into_input_field(self.order_text_field_locator, order)

    def click_browse_button(self):
        """
        Implementing click browse button functionality
        :return:
        """
        self.kill_all_opened_file_browsing_dialogs()
        self.click_element(self.browse_button_locator)

    def click_upload_button(self):
        """
        Implementing click upload button functionality
        :return:
        """
        self.click_element(self.upload_button_locator)

    def get_documents_grid_row_details(self):
        """
        Implementing get documents grid row details functionality
        :return: documents_grid_row_data
        """
        self.grid_row_details_dictionary.clear()
        self.grid_row_details_dictionary.update({"Document Name": "", "Keywords": "", "Order": "", "Reference Number": ""})
        return self.get_grid_row_details(self.documents_grid_div_id, self.grid_row_details_dictionary, self.documents_grid_name)

    def set_value_in_documents_grid(self, column_name, value):
        """
        Implementing set value in documents grid functionality
        :param column_name:
        :param value:
        :return:
        """
        self.set_value_in_grid_column(self.documents_grid_div_id, column_name, value, True)
        self.click_documents_tab()

    def click_documents_grid_save_changes_button(self):
        """
        Implementing click documents grid save changes button functionality
        :return:
        """
        self.click_element(self.documents_grid_save_changes_button_changes_locator)
        try:
            self.wait().until(EC.visibility_of_element_located(self.success_message_locator), 'success message locator not found before specified time out')
            ok_button_element = self.wait().until(EC.element_to_be_clickable(self.ok_button_locator), 'ok button locator not found before specified time out')
            self.wait_for_ajax_spinner_load()
            ok_button_element.click()
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def click_documents_grid_cancel_changes_button(self):
        """
        Implementing click documents grid cancel changes button functionality
        :return:
        """
        self.click_element(self.documents_grid_cancel_changes_button_changes_locator)

    def select_documents_grid_row_checkbox(self, row_identifier_text):
        """
        Implementing select documents grid row checkbox functionality
        :param row_identifier_text:
        :return:
        """
        self.select_grid_row_checkbox(self.documents_grid_div_id, row_identifier_text, self.documents_grid_checkbox_column_number)
        self.wait_for_ajax_spinner_load()

    def click_documents_delete_button(self):
        """
        Implementing click documents delete button functionality
        :return:
        """
        self.click_element(self.document_delete_button_locator, True)
        try:
            self.wait().until(EC.visibility_of_element_located(self.statement_delete_confirmation_locator), 'document delete confirmation locator not found before specified time out')
            ok_button_element = self.wait().until(EC.element_to_be_clickable(self.ok_button_locator), 'ok button locator not found before specified time out')
            self.wait_for_ajax_spinner_load()
            ok_button_element.click()
            self.wait_for_ajax_spinner_load()
            self.wait().until(EC.visibility_of_element_located(self.documents_delete_success_message_locator), 'documents delete success message locator not found before specified time out')
            ok_button_element = self.wait().until(EC.element_to_be_clickable(self.ok_button_locator), 'ok button locator not found before specified time out')
            self.wait_for_ajax_spinner_load()
            ok_button_element.click()
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def click_documents_grid_inline_action_button(self, reference_number):
        """
        Implementing click documents grid inline action button functionality
        :param reference_number:
        :return:
        """
        self.click_inline_action_button(self.documents_grid_div_id, reference_number, self.documents_grid_inline_action_column_number)
        self.wait_for_ajax_spinner_load()

    def get_documents_grid_number_of_rows(self):
        """
        Implementing get documents grid number of rows functionality
        :return: documents_grid_number_of_rows
        """
        number_of_documents_element = self.wait().until(EC.visibility_of_element_located(self.number_of_documents_text_locator), 'number of documents text locator not found before specified time out')
        element_text = (number_of_documents_element.text).split()
        return element_text[2]

    def select_documents_grid_delete_inline_action(self):
        """
        Implementing select documents grid delete inline action functionality
        :return:
        """
        self.number_of_rows = self.get_documents_grid_number_of_rows()
        self.select_inline_action_item(self.delete_inline_action_text, self.documents_module_name)
        try:
            self.wait().until(EC.visibility_of_element_located(self.statement_delete_confirmation_locator), 'document delete confirmation locator not found before specified time out')
            ok_button_element = self.wait().until(EC.element_to_be_clickable(self.ok_button_locator), 'ok button locator not found before specified time out')
            self.wait_for_ajax_spinner_load()
            ok_button_element.click()
            self.wait_for_ajax_spinner_load()
            self.wait().until(EC.visibility_of_element_located(self.documents_delete_success_message_locator), 'documents delete success message locator not found before specified time out')
            ok_button_element = self.wait().until(EC.element_to_be_clickable(self.ok_button_locator), 'ok button locator not found before specified time out')
            self.wait_for_ajax_spinner_load()
            ok_button_element.click()
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def is_document_deleted_successfully(self):
        """
        Implementing is document deleted successfully functionality
        :return: True/False
        """
        current_number_of_rows = self.get_documents_grid_number_of_rows()
        if int(current_number_of_rows) < int(self.number_of_rows):
            return True
        else:
            return False

    def set_document_name_for_search(self, document_name):
        """
        Implementing set document name for search functionality
        :param document_name:
        :return:
        """
        self.set_value_into_input_field(self.document_name_locator, document_name)

    def click_document_search_button(self):
        """
        Implementing click document search button functionality
        :return:
        """
        self.click_element(self.document_search_button_locator, True)

    def get_total_mapped_line_items_count(self):
        """
        Implementing get total mapped line items count functionality
        :return:
        """
        mapped_items_count_element = self.wait().until(EC.presence_of_element_located(self.line_item_mapping_grid_count_span_locator), 'line item mapping grid count span locator not found before specified time out')
        mapped_items_count_text = mapped_items_count_element.text
        if mapped_items_count_text != self.no_items_text:
            count_text = mapped_items_count_text.split()
            self.actual_mapped_items_count = int(count_text[0])

    def map_unmapped_received_line_items(self):
        """
        Implementing map unmapped received line items functionality
        :return:
        """
        self.unmapped_received_grid_count = self.get_grid_row_count(self.unmapped_received_grid_count_span_locator, 2)
        if self.unmapped_received_grid_count > 0:
            try:
                target = self.wait().until(EC.presence_of_element_located(self.target_locator), 'target locator not found before specified time out')
                for i in range(self.unmapped_received_grid_count):
                    source_locator = (By.XPATH, "//div[@id='%s']/descendant::table[@data-role='draggable']/descendant::tr[1]" % self.unmapped_received_grid_div_id)
                    source = self.wait().until(EC.presence_of_element_located(source_locator), 'source locator not found before specified time out')
                    unmapped_received_grid_footer_element = self.wait().until(EC.presence_of_element_located(self.unmapped_received_grid_footer_locator), 'unmapped received grid footer locator not found before specified time out')
                    self.hover(unmapped_received_grid_footer_element)
                    self.drag_and_drop(source, target)
                self.wait_for_ajax_spinner_load()
            except:
                raise

    def map_unmapped_internal_line_items(self):
        """
        Implementing map unmapped internal line items functionality
        :return:
        """
        self.unmapped_internal_grid_count = self.get_grid_row_count(self.unmapped_internal_grid_count_span_locator, 2)
        if self.unmapped_internal_grid_count > 0:
            try:
                target = self.wait().until(EC.presence_of_element_located(self.target_locator), 'target locator not found before specified time out')
                for i in range(self.unmapped_internal_grid_count):
                    source_locator = (By.XPATH, "//div[@id='%s']/descendant::table[@data-role='draggable']/descendant::tr[1]" % self.unmapped_internal_grid_div_id)
                    source = self.wait().until(EC.presence_of_element_located(source_locator), 'source locator not found before specified time out')
                    unmapped_internal_grid_footer_element = self.wait().until(EC.presence_of_element_located(self.unmapped_internal_grid_footer_locator), 'unmapped internal grid footer locator not found before specified time out')
                    self.hover(unmapped_internal_grid_footer_element)
                    self.drag_and_drop(source, target)
                self.wait_for_ajax_spinner_load()
            except:
                raise

    def is_all_line_items_mapped(self):
        """
        Implementing is all line items mapped functionality
        :return: True/False
        """
        is_mapped = False
        desired_mapped_items_count = self.actual_mapped_items_count + self.unmapped_received_grid_count + self.unmapped_internal_grid_count
        self.actual_mapped_items_count = self.get_grid_row_count(self.line_item_mapping_grid_count_span_locator, 0)
        if desired_mapped_items_count == self.actual_mapped_items_count:
            is_mapped = True
        return is_mapped

    def click_line_item_mapping_grid_save_changes_button(self):
        """
        Implementing click line item mapping grid save changes button functionality
        :return:
        """
        self.click_element(self.line_item_mapping_grid_save_changes_button_locator, True, True)
        try:
            self.wait().until(EC.visibility_of_element_located(self.success_message_locator), 'success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise

    def click_show_summary_link(self):
        """
        Implementing click show summary link functionality
        :return:
        """
        self.click_element(self.show_summary_link_locator, True, True)

    def set_statement_summary_status(self, status):
        """
        Implementing set statement summary status functionality
        :param status:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.statement_summary_status_kendo_dropdown_locator, status)

    def click_statement_summary_save_button(self):
        """
        Implementing click statement summary save button functionality
        :return:
        """
        self.click_element(self.statement_summary_save_button_locator, True, True)
        try:
            self.wait().until(EC.visibility_of_element_located(self.success_message_locator), 'success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise

    def select_line_item_mapping_tab(self):
        """
        Implementing select line item mapping tab functionality
        :return:
        """
        self.click_element(self.line_item_mapping_tab_locator)

    def click_remove_all_mappings_button(self):
        """
        Implementing click remove all mappings button functionality
        :return:
        """
        self.click_element(self.remove_all_mappings_button_locator, True, True)
        try:
            self.wait().until(EC.visibility_of_element_located(self.warning_message_locator), 'warning message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise

    def is_mapped_statements_validated(self):
        """
        Implementing is mapped statements validated functionality
        :return: True/False
        """
        is_validated = False
        statement_validation_grid_count = self.get_grid_row_count(self.statement_validation_grid_count_span_locator, 2)
        if self.actual_mapped_items_count == statement_validation_grid_count:
            is_validated = True
        return is_validated

    def is_all_line_items_unmapped(self):
        """
        Implementing is all line items unmapped functionality
        :return: True/False
        """
        is_unmapped = False
        mapped_items_count_element = self.wait().until(EC.presence_of_element_located(self.line_item_mapping_grid_count_span_locator), 'line item mapping grid count span locator not found before specified time out')
        mapped_items_count_text = mapped_items_count_element.text
        if mapped_items_count_text == self.no_items_text:
            is_unmapped = True
        return is_unmapped

    def filter_inbound_statements_grid(self, column_name, filter_item_text):
        """
        Implementing filter inbound statements grid functionality
        :param column_name:
        :param filter_item_text:
        :return:
        """
        self.grid_filter_with_textbox(self.inbound_statement_grid_div_id, column_name, filter_item_text, self.inbound_statements_grid_filter_position)

    def select_transactions_tab(self):
        """
        Implementing select transactions tab functionality
        :return:
        """
        self.click_element(self.transactions_tab_locator)

    def click_add_new_record_button(self):
        """
        Implementing click add new record button functionality
        :return:
        """
        self.click_element(self.add_new_record_button_locator, True)

    def set_transactions_grid_first_row_transaction_code(self, transaction_code_prefix):
        """
        Implementing set transactions grid first row transaction code functionality
        :param transaction_code_prefix:
        :return: transaction_code
        """
        transaction_code = transaction_code_prefix + "_" + self.random_string_generator(4)
        self.set_value_in_grid_column(self.transactions_grid_div_id, self.transaction_code_column_name, transaction_code)
        self.click_element(self.page_header_locator)
        return transaction_code

    def set_value_in_transactions_grid_first_row_column(self, column_name, column_value):
        """
        Implementing set value in transactions grid first row column functionality
        :param column_name:
        :param column_value:
        :return:
        """
        self.set_value_in_grid_column(self.transactions_grid_div_id, column_name, column_value)
        self.click_element(self.page_header_locator)

    def select_transactions_grid_row_checkbox(self, row_identifier_text):
        """
        Implementing select transactions grid row checkbox functionality
        :param row_identifier_text:
        :return:
        """
        self.select_grid_row_checkbox(self.transactions_grid_div_id, row_identifier_text, self.transactions_grid_checkbox_column_number)
        self.click_element(self.page_header_locator)

    def click_hide_summary_link(self):
        """
        Implementing click hide summary link functionality
        :return:
        """
        self.click_element(self.hide_summary_link_locator)

    def set_transactions_grid_dropdown_value(self, column_name, column_value):
        """
        Implementing set transactions grid dropdown value functionality
        :param column_name:
        :param column_value:
        :return:
        """
        self.single_selection_from_kendo_in_grid(self.transactions_grid_div_id, column_name, column_value, self.transactions_data_grid_name)
        self.click_element(self.page_header_locator)

    def click_transactions_grid_save_changes_button(self):
        """
        Implementing click transactions grid save changes button functionality
        :return:
        """
        self.click_element(self.transactions_grid_save_changes_button_locator)
        try:
            self.wait().until(EC.visibility_of_element_located(self.success_message_locator), 'success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise

    def click_transactions_grid_delete_button(self):
        """
        Implementing click transactions grid delete button functionality
        :return:
        """
        self.click_element(self.transactions_grid_delete_button_locator, True)
        try:
            self.wait().until(EC.visibility_of_element_located(self.delete_success_message_locator), 'delete success message locator not found before specified time out')
            self.click_element(self.ok_button_locator, True)
        except:
            raise

    def get_transactions_grid_row_details(self):
        """
        Implementing get transactions grid row details functionality
        :return: transactions_grid_row_data
        """
        self.grid_row_details_dictionary.clear()
        self.grid_row_details_dictionary.update({"Transaction Code": "", "Credit/Debit": "", "Transaction Details": "", "Currency": "", "Amount": ""})
        return self.get_grid_row_details(self.transactions_grid_div_id, self.grid_row_details_dictionary, self.transactions_data_grid_name)

    def filter_transactions_grid(self, column_name, filter_item_list):
        """
        Implementing filter transactions grid functionality
        :param column_name:
        :param filter_item_list:
        :return:
        """
        self.grid_filter_details(column_name, filter_item_list, column_position=self.transactions_grid_filter_position)

    def click_map_unmapped_line_items_button(self):
        """
        Implementing click map unmapped line items button functionality
        :return:
        """
        self.click_element(self.map_unmapped_line_items_button_locator, True, True)
        try:
            self.wait().until(EC.visibility_of_element_located(self.map_line_items_confirmation_message_locator), 'map line items confirmation message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise

    def click_map_line_items_delete_button(self):
        """
        Implementing click map line items delete button functionality
        :return:
        """
        self.click_element(self.map_line_items_delete_button_locator, True, True)
        try:
            self.wait().until(EC.visibility_of_element_located(self.delete_mappings_confirmation_message_locator), 'delete mappings confirmation message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise

    def select_disputes_tab(self):
        """
        Implementing select disputes tab functionality
        :return:
        """
        self.click_element(self.disputes_tab_locator)

    def click_line_item_disputes_grid_first_row_inline_action_button(self):
        """
        Implementing click line item disputes grid first row inline action button functionality
        :return:
        """
        self.click_inline_action_button(self.line_item_disputes_grid_div_id, None, self.line_item_disputes_grid_inline_action_column_number, True)

    def click_internal_statement_grid_save_changes_button(self):
        """
        Implementing click internal statement grid save changes button functionality
        :return:
        """
        self.click_element(self.internal_statement_grid_save_changes_button_locator)
        try:
            self.wait().until(EC.visibility_of_element_located(self.success_message_locator), 'save changes success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def set_value_in_internal_statement_grid(self, column_name):
        """
        Implementing set value in internal statement grid functionality
        :param column_name:
        :return:
        """
        column_value = self.random_string_generator(2, string.digits) + "." + self.random_string_generator(2, string.digits)
        self.set_value_in_grid_column(self.internal_statement_grid_div_id, column_name, column_value, True)
        self.click_element(self.page_header_locator)

    def select_statement_validation_tab(self):
        """
        Implementing select statement validation tab functionality
        :return:
        """
        self.click_element(self.statement_validation_tab_locator)

    def click_disputes_grid_first_row_inline_action_button(self):
        """
        Implementing click disputes grid first row inline action button functionality
        :return:
        """
        self.click_inline_action_button(self.statement_details_dispute_grid_div_id, None, self.disputes_grid_inline_action_column_number, True)

    def click_add_new_note_button(self):
        """
        Implementing click add new note button functionality
        :return:
        """
        self.click_element(self.add_dispute_note_button_locator)

    def set_dispute_note(self, note_prefix):
        """
        Implementing set dispute note functionality
        :param note_prefix:
        :return: note_to_set
        """
        note_to_set = note_prefix + self.random_string_generator(6)
        self.set_value_into_input_field(self.new_note_text_field_locator, note_to_set)
        return note_to_set

    def click_add_new_note_save_button(self):
        """
        Implementing click add new note save button functionality
        :return:
        """
        self.click_element(self.save_dispute_note_button_locator)
        try:
            self.wait().until(EC.visibility_of_element_located(self.success_message_locator), 'success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise

    def click_add_new_note_cancel_button(self):
        """
        Implementing click add new note cancel button functionality
        :return:
        """
        self.click_element(self.cancel_dispute_note_button_locator)
        try:
            self.dismiss_alert_pop_up()
        except:
            pass

    def filter_disputes_notes_grid(self, column_name, filter_item):
        """
        Implementing filter disputes notes grid functionality
        :param column_name:
        :param filter_item:
        :return:
        """
        self.grid_filter_with_textbox(self.disputes_notes_grid_div_id, column_name, filter_item, 6)

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

    def select_statement_details_disputes_grid_first_row_checkbox(self):
        """
        Implementing select statement details disputes grid first row checkbox functionality
        :return:
        """
        self.click_element(self.statement_details_dispute_grid_first_row_checkbox_locator, True, True)

    def click_win_dispute_button(self):
        """
        Implementing click win dispute button functionality
        :return:
        """
        self.click_element(self.win_dispute_button_locator)

    def set_win_dispute_description(self, description_prefix):
        """
        Implementing set win dispute description functionality
        :return: description
        """
        description = description_prefix + self.random_string_generator(6)
        self.set_value_into_input_field(self.description_textarea_locator, description)
        return description

    def click_win_dispute_save_button(self):
        """
        Implementing click win dispute save button functionality
        :return:
        """
        self.click_element(self.win_dispute_save_button_locator)
        try:
            self.wait().until(EC.visibility_of_element_located(self.resolution_saved_success_message_locator), 'resolutions saved success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def click_win_dispute_cancel_button(self):
        """
        Implementing click win dispute cancel button functionality
        :return:
        """
        self.click_element(self.win_dispute_cancel_button_locator)
        try:
            self.dismiss_alert_pop_up()
        except:
            pass
        self.wait_for_ajax_spinner_load()

    def filter_disputes_resolutions_grid(self, column_name, column_value):
        """
        Implementing filter disputes resolutions grid functionality
        :param column_name:
        :param column_value:
        :return:
        """
        self.grid_filter_with_textbox(self.resolutions_grid_div_id, column_name, column_value)
        self.wait_for_ajax_spinner_load()

    def get_resolutions_grid_row_details(self):
        """
        Implementing get resolutions grid row details functionality
        :return: resolutions_grid_row_data
        """
        self.grid_row_details_dictionary.clear()
        self.grid_row_details_dictionary = {"Resolution Type": "", "Discrepancy Source": "", "Description": ""}
        resolutions_grid_row_data = self.get_grid_row_details(self.resolutions_grid_div_id, self.grid_row_details_dictionary, self.resolution_data_grid_name)
        return resolutions_grid_row_data

    def click_lose_dispute_button(self):
        """
        Implementing click lose dispute button functionality
        :return:
        """
        self.click_element(self.lose_dispute_button_locator)

    def click_export_to_excel_button(self):
        """
        Implementing click export to excel button functionality
        :return:
        """
        self.click_element(self.export_to_excel_button_locator, True)

    def click_upload_statement_button(self):
        """
        Implementing click upload statement button functionality
        :return:
        """
        self.click_element(self.upload_statement_button_locator)

    def click_upload_statement_browse_button(self):
        """
        Implementing click upload statement browse button functionality
        :return:
        """
        self.kill_all_opened_file_browsing_dialogs()
        self.click_element(self.upload_statement_browse_button_locator)

    def click_upload_statement_upload_button(self):
        """
        Implementing click upload statement upload button functionality
        :return:
        """
        self.click_element(self.statement_upload_button_locator)
        try:
            self.wait().until(EC.visibility_of_element_located(self.statement_upload_success_message_locator), 'statement upload success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def get_inbound_statement_grid_first_row_data(self, column_name):
        """
        Implementing get inbound statement grid first row data functionality
        :param column_name:
        :return: column_value
        """
        column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::th[@data-title='%s']" % (self.inbound_statement_grid_div_id, column_name))
        column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) + 1
        first_row_column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::div[@class='k-grid-content']/descendant::td[%s]/span[@class='k-grid-cell']" % (self.inbound_statement_grid_div_id, str(column_index)))
        first_row_column_element = self.wait().until(EC.element_to_be_clickable(first_row_column_locator), 'first row column locator not found before specified time out')
        column_value = first_row_column_element.text
        return column_value

    def get_statement_summary_status(self):
        """
        Implementing get statement summary status functionality
        :return: statement_summary_status
        """
        statement_summary_status_element = self.wait().until(EC.visibility_of_element_located(self.statement_summary_status_locator), 'statement summary status locator not found before specified time out')
        return statement_summary_status_element.text

    def click_add_resolution_button(self):
        """
        Implementing click add resolution button functionality
        :return:
        """
        self.click_element(self.add_resolution_button_locator)

    def set_action_type(self, action_type):
        """
        Implementing set action type functionality
        :param action_type:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.action_type_kendo_dropdown_locator, action_type)
        self.wait_for_ajax_spinner_load()

    def set_discrepancy_source(self, discrepancy_source):
        """
        Implementing set discrepancy source functionality
        :param discrepancy_source:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.discrepancy_source_kendo_dropdown_locator, discrepancy_source)
        self.wait_for_ajax_spinner_load()

    def set_credit_amount(self, credit_amount):
        """
        Implementing set credit amount functionality
        :param credit_amount:
        :return:
        """
        self.set_value_into_input_field(self.credit_amount_textbox_locator, credit_amount)

    def set_description(self, description_prefix):
        """
        Implementing set description functionality
        :param description_prefix:
        :return: description
        """
        description = description_prefix + "_" + self.random_string_generator(4)
        self.set_value_into_input_field(self.description_textbox_locator, description)
        return description

    def click_add_resolution_save_button(self):
        """
        Implementing click add resolution save button functionality
        :return:
        """
        self.click_element(self.add_resolution_save_button_locator)
        try:
            self.wait().until(EC.visibility_of_element_located(self.success_message_locator), 'success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def set_value_in_resolution_grid(self, column_name, column_value):
        """
        Implementing set value in resolution grid functionality
        :param column_name:
        :param column_value:
        :return:
        """
        self.set_value_in_grid_column(self.resolution_grid_div_id, column_name, column_value, True)
        self.click_element(self.page_header_locator)

    def set_description_in_resolution_grid(self, description_prefix):
        """
        Implementing set description in resolution grid functionality
        :param description_prefix:
        :return: description_column_value
        """
        description_column_value = description_prefix + "_" + self.random_string_generator(4)
        self.set_value_in_grid_column(self.resolution_grid_div_id, self.description_column_name, description_column_value, True)
        self.click_element(self.page_header_locator)
        return description_column_value

    def set_value_in_resolution_grid_dropdown(self, column_name, column_value):
        """
        Implementing set value in resolution grid dropdown functionality
        :param column_name:
        :param column_value:
        :return:
        """
        self.single_selection_from_kendo_in_grid(self.resolution_grid_div_id, column_name, column_value)
        self.click_element(self.page_header_locator)

    def click_resolution_grid_save_changes_button(self):
        """
        Implementing click resolution grid save changes button functionality
        :return:
        """
        self.click_element(self.resolution_grid_save_changes_button_locator)
        try:
            self.wait().until(EC.visibility_of_element_located(self.success_message_locator), 'success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def filter_resolution_grid(self, column_name, filter_item_text):
        """
        Implementing filter resolution grid functionality
        :param column_name:
        :param filter_item_text:
        :return:
        """
        self.grid_filter_with_textbox(self.resolution_grid_div_id, column_name, filter_item_text)

    def click_resolution_grid_first_row_inline_action_button(self):
        """
        Implementing click resolution grid inline action button functionality
        :return:
        """
        self.click_inline_action_button(self.resolution_grid_div_id, None, self.resolution_grid_inline_column_number, True)

    def select_delete_inline_item(self):
        """
        Implementing select delete inline item functionality
        :return:
        """
        self.select_inline_action_item(self.delete_inline_action_text, self.resolution_module_name)
        try:
            self.wait().until(EC.visibility_of_element_located(self.statement_delete_confirmation_locator), 'document delete confirmation locator not found before specified time out')
            self.click_element(self.ok_button_locator)
            self.wait().until(EC.visibility_of_element_located(self.resolution_delete_success_message_locator), 'resolution delete success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def select_finalize_resolution_inline_item(self):
        """
        Implementing select finalize resolution inline item functionality
        :return:
        """
        self.select_inline_action_item(self.finalize_resolution_inline_item_text, self.resolution_module_name)
        try:
            self.wait().until(EC.visibility_of_element_located(self.finalize_resolution_confirmation_message_locator), 'finalize resolution confirmation message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
            self.wait().until(EC.visibility_of_element_located(self.finalize_resolution_success_message_locator), 'finalize resolution success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def click_resolution_grid_cancel_changes_button(self):
        """
        Implementing click resolution grid cancel changes button functionality
        :return:
        """
        self.click_element(self.resolution_grid_cancel_changes_button_locator)

    def click_entry_complete_button(self):
        """
        Implementing click entry complete button functionality
        :return:
        """
        self.click_element(self.entry_complete_button_locator)
        try:
            self.wait().until(EC.visibility_of_element_located(self.statement_entry_success_message_locator), 'statement entry success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def select_statement_validation_grid_first_row_checkbox(self):
        """
        Implementing select statement validation grid first row checkbox functionality
        :return:
        """
        self.click_element(self.statement_validation_grid_first_row_checkbox_locator, True, True)

    def click_statement_validation_grid_first_row_inline_action_button(self):
        """
        Implementing click statement validation grid first row inline action button functionality
        :return:
        """
        self.click_inline_action_button(self.statement_validation_grid_div_id, None, self.statement_validation_grid_inline_action_column_number, True)

    def select_statement_validation_grid_inline_action_item(self, item_name):
        """
        Implementing select statement validation grid inline action item functionality
        :param item_name:
        :return:
        """
        self.select_inline_action_item(item_name, self.statement_validation_module_name)
        try:
            self.wait().until(EC.visibility_of_element_located(self.disputes_were_created_success_message_locator), 'disputes were created success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def set_value_in_disputes_grid_row(self, column_name, column_value):
        """
        Implementing set value in disputes grid row functionality
        :param column_name:
        :param column_value:
        :return:
        """
        self.set_value_in_grid_column(self.inbound_statement_disputes_grid_div_id, column_name, column_value, True)
        self.select_disputes_tab()

    def click_disputes_grid_save_changes_button(self):
        """
        Implementing click disputes grid save changes button functionality
        :return:
        """
        self.click_element(self.disputes_grid_save_changes_button_locator)
        try:
            self.wait().until(EC.visibility_of_element_located(self.success_message_locator), 'success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def get_resolutions_grid_row_data(self):
        """
        Implementing get resolutions grid row data functionality
        :return: resolutions_grid_row_data
        """
        self.grid_row_details_dictionary.clear()
        self.grid_row_details_dictionary = {"Resolution Type": "", "Discrepancy Source": "", "Resolution Amount": "", "Description": ""}
        resolutions_grid_row_data = self.get_grid_row_details(self.resolution_grid_div_id, self.grid_row_details_dictionary)
        resolutions_grid_row_data["Resolution Amount"] = resolutions_grid_row_data["Resolution Amount"].replace(",", "")
        return resolutions_grid_row_data

    def expand_current_cycles_section(self):
        """
        Implementing expand current cycles section functionality
        :return:
        """
        self.click_element(self.current_cycles_section_locator)

    def expand_dispute_contact_section(self):
        """
        Implementing expand dispute contact section functionality
        :return:
        """
        self.click_element(self.dispute_contact_section_locator, True)

    def set_billing_cycle_template(self, billing_cycle_template):
        """
        Implementing set billing cycle template functionality
        :param billing_cycle_template:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.billing_cycle_template_kendo_dropdown_locator, billing_cycle_template)
        self.wait_for_ajax_spinner_load()

    def set_billing_cycle_begin_date(self, begin_date):
        """
        Implementing set billing cycle begin date functionality
        :param begin_date:
        :return:
        """
        if begin_date == "":
            current_date = datetime.date.today()
            begin_date = current_date.replace(day=1)
            begin_date = begin_date.strftime("%m/%d/%Y")
        self.set_value_into_input_field(self.billing_cycle_begin_date_inputbox_locator, begin_date)

    def set_residual_traffic_window(self, residual_traffic_window):
        """
        Implementing set residual traffic window functionality
        :param residual_traffic_window:
        :return:
        """
        self.set_value_into_input_field(self.residual_traffic_window_inputbox_locator, residual_traffic_window, True)

    def click_audit_account_save_button(self):
        """
        Implementing click audit account save button functionality
        :return:
        """
        self.click_element(self.audit_account_save_button_locator)
        try:
            self.wait().until(EC.visibility_of_element_located(self.audit_account_save_success_message_locator), 'audit account save success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def click_audit_account_save_button_without_firstname_lastname(self):
        """
        Implementing click audit account save button without firstname lastname functionality
        :return:
        """
        self.click_element(self.audit_account_save_button_locator)
        try:
            self.wait().until(EC.visibility_of_element_located(self.audit_account_save_error_message_locator), 'audit account save error message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def set_dispute_contact_first_name(self, first_name, clear_field):
        """
        Implementing set dispute contact first name functionality
        :param first_name:
        :param clear_field:
        :return:
        """
        if clear_field is True:
            first_name_textbox_element = self.wait().until(EC.presence_of_element_located(self.dispute_contact_first_name_textbox_locator), 'first name textbox locator not found before specified time out')
            first_name_textbox_element.clear()
        else:
            if first_name == "":
                first_name = self.random_string_generator(6, string.ascii_uppercase)
            self.set_value_into_input_field(self.dispute_contact_first_name_textbox_locator, first_name)

    def set_dispute_contact_last_name(self, last_name, clear_field):
        """
        Implementing set dispute contact last name functionality
        :param last_name:
        :param clear_field:
        :return:
        """
        if clear_field is True:
            last_name_textbox_element = self.wait().until(EC.presence_of_element_located(self.dispute_contact_last_name_textbox_locator), 'last name textbox locator not found before specified time out')
            last_name_textbox_element.clear()
        else:
            if last_name == "":
                last_name = self.random_string_generator(6, string.ascii_uppercase)
            self.set_value_into_input_field(self.dispute_contact_last_name_textbox_locator, last_name)

    def set_dispute_contact_state(self, state):
        """
        Implementing set dispute contact state functionality
        :param state:
        :return:
        """
        if state == "":
            state = self.random_string_generator(6, string.ascii_uppercase)
        self.set_value_into_input_field(self.dispute_contact_state_textbox_locator, state)

    def set_dispute_contact_email(self, email):
        """
        Implementing set dispute contact email functionality
        :param email:
        :return:
        """
        if email == "":
            email = self.random_string_generator(8, string.ascii_lowercase) + "@" + self.random_string_generator(5, string.ascii_lowercase) + ".com"
        self.set_value_into_input_field(self.dispute_contact_email_textbox_locator, email)

    def click_outbound_statement_grid_first_row_inline_action_button(self):
        """
        Implementing click outbound statement grid first row inline action button functionality
        :return:
        """
        self.click_inline_action_button(self.outbound_statements_grid_div_id, None, self.outbound_statements_grid_inline_action_column_number, True)

    def is_create_non_recurring_charges_button_not_present(self):
        """
        Implementing is create non recurring charges button not present functionality
        Returns True if create non recurring charges button is not present
        :return: True/False
        """
        button_not_present = None
        try:
            self.wait(5).until(EC.presence_of_element_located(self.add_non_recurring_charge_button_locator))
            button_not_present = False
        except:
            button_not_present = True
        finally:
            return button_not_present

    def click_statement_fields_grid_first_row_checkbox(self):
        """
        Implementing click statement fields grid first row checkbox functionality
        :return:
        """
        self.click_element(self.statement_fields_grid_first_row_checkbox_locator, True)

    def click_statement_fields_bulk_edit_button(self):
        """
        Implementing click statement fields bulk edit button functionality
        :return:
        """
        self.click_element(self.statement_fields_bulk_edit_button_locator, True)

    def set_statement_default_value(self, value):
        """
        Implementing set statement default value functionality
        :param value:
        :return:
        """
        self.set_value_into_input_field(self.statement_default_value_textbox_locator, value)
        self.click_element(self.statement_fields_bulk_edit_popup_title_locator)

    def click_statement_fields_save_changes_button(self):
        """
        Implementing click statement fields save changes button functionality
        :return:
        """
        self.click_element(self.statement_fields_save_changes_button_locator)
        try:
            self.wait().until(EC.visibility_of_element_located(self.statement_fields_bulk_edit_error_message_locator), 'statement fields bulk edit error message locator not found before specified time out')
            self.click_element(self.ok_button_locator, True)
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def set_suspect_status(self, suspect_status):
        """
        Implementing set suspect status functionality
        :param suspect_status:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.suspect_status_kendo_dropdown_locator, suspect_status)
        self.wait_for_ajax_spinner_load()

    def select_deselect_suspect_flag_ignored_checkbox(self):
        """
        Implementing select deselect suspect flag ignored checkbox functionality
        :return:
        """
        self.click_element(self.suspect_flags_ignored_checkbox_locator, True)

    def click_suspect_flags_grid_save_changes_button(self):
        """
        Implementing click suspect flags grid save changes button functionality
        :return:
        """
        self.click_element(self.suspect_flags_grid_save_changes_button_locator)
        try:
            self.wait().until(EC.visibility_of_element_located(self.success_message_locator), 'success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def click_add_financial_charges_button(self):
        """
        Implementing click add financial charges button functionality
        :return:
        """
        self.number_of_financial_charges_before_create = self.get_number_of_financial_charges_in_the_grid()
        self.click_element(self.add_financial_charges_button_locator, hover=True)

    def set_adjustment_charge_product(self, product_name_prefix):
        """
        Implementing set adjustment charge product functionality
        :param product_name_prefix:
        :return:
        """
        product_name = product_name_prefix + self.random_string_generator(size=4)
        self.set_value_into_input_field(self.create_adjustment_charge_product_textbox_locator, product_name)

    def set_adjustment_charge_begin_date(self, begin_date):
        """
        Implementing set adjustment charge begin date functionality
        :param begin_date:
        :return:
        """
        self.set_value_into_input_field(self.adjustment_begin_date_locator, begin_date)

    def set_adjustment_charge_end_date(self, end_date):
        """
        Implementing set adjustment charge end date functionality
        :param end_date:
        :return:
        """
        self.set_value_into_input_field(self.end_date_locator, end_date)

    def set_adjustment_charge_currency(self, currency):
        """
        Implementing set adjustment charge currency functionality
        :param currency:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.currency_kendo_dropdown_locator, currency)

    def set_adjustment_charge_amount(self, amount):
        """
        Implementing set adjustment charge amount functionality
        :param amount:
        :return:
        """
        self.script_executor("var element = document.getElementById('%s'); element.style.display = 'block';" % self.charge_amount_textbox_id)
        self.set_value_into_input_field(self.adjustment_charge_amount_textbox_locator, amount)

    def click_create_adjustment_charge_save_button(self):
        """
        Implementing click create adjustment charge save button functionality
        :return:
        """
        self.click_element(self.create_adjustment_charge_save_button_locator)
        try:
            self.wait().until(EC.visibility_of_element_located(self.success_message_locator), 'success message locator not found before specified time out')
            self.click_element(self.ok_button_locator, True)
        except:
            raise
        self.wait_for_ajax_spinner_load()

    def click_adjustment_charges_grid_first_row_inline_action_button(self):
        """
        Implementing adjustment charges grid first row inline action button functionality
        :return:
        """
        self.click_inline_action_button(self.adjustment_charges_grid_div_id, None, self.adjustment_charges_grid_inline_action_column_number, True)

    def select_adjustment_charges_reject_inline_item(self, inline_item):
        """
        Implementing select adjustment charges reject inline item functionality
        :param inline_item:
        :return:
        """
        self.select_inline_action_item(inline_item, self.adjustment_charges_module_name)
        try:
            self.wait().until(EC.visibility_of_element_located(self.reject_charges_confirmation_message_locator), 'rejected charges confirmation message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
            self.wait(100).until(EC.visibility_of_element_located(self.error_log_viewer_locator), "error log viewer locator not found before specified time out")
            self.click_element(self.error_log_viewer_close_button_locator)
        except:
            pass
        try:
            self.wait(10).until(EC.visibility_of_element_located(self.charges_rejected_success_message_locator), 'charges rejected success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            pass
        self.wait_for_ajax_spinner_load()

    def select_adjustments_tab(self):
        """
        Implementing select adjustments tab functionality
        :return:
        """
        self.click_element(self.adjustments_tab_locator)

    def click_add_new_adjustment_statement_button(self):
        """
        Implementing click add new adjustment statement button functionality
        :return:
        """
        self.number_of_adjustment_records_before_create = self.get_number_of_adjustment_charges_in_the_grid()
        self.click_element(self.add_new_adjustment_statement_button_locator)
        try:
            self.wait().until(EC.visibility_of_element_located(self.success_message_locator), 'success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise

    def click_adjustments_grid_first_row_inline_action_button(self):
        """
        Implementing click adjustments grid first row inline action button functionality
        :return:
        """
        self.click_inline_action_button(self.adjustments_grid_div_id, None, self.adjustments_grid_inline_action_column_number, True)

    def select_adjustments_delete_inline_action_item(self):
        """
        Implementing select adjustments delete inline action item functionality
        :return:
        """
        self.select_inline_action_item(self.delete_inline_action_text)
        try:
            self.wait().until(EC.visibility_of_element_located(self.adjustment_delete_success_message_locator), 'adjustment delete success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise

    def does_usage_charges_grid_have_no_records(self):
        """
        Implementing does usage charges grid have no records functionality
        Returns True if usage charges grid has no records
        :return: True/False
        """
        return self.is_element_present(self.usage_charges_grid_no_record_found_message_locator)

    def click_view_test_statement_file_button(self):
        """
        Implementing click view test statement file button functionality
        :return:
        """
        self.click_element(self.view_test_statement_file_button_locator)

    def is_test_statements_error_message_given(self):
        """
        Implementing is test statements error message given functionality
        :return:
        """
        try:
            self.wait().until(EC.visibility_of_element_located(self.test_statements_error_message_locator), 'test statements error message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            pass
        self.wait_for_ajax_spinner_load()

    def set_account_for_search(self, account_list):
        """
        Implementing set account for search functionality
        :param account_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.account_kendo_dropdown_locator, account_list)
        self.wait_for_ajax_spinner_load()

    def set_value_in_outbound_transactions_grid_amount_column(self, column_name, column_value):
        """
        Implementing set value in outbound transactions grid amount column functionality
        :param column_name:
        :param column_value:
        :return:
        """
        column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::th[@data-title='%s']" % (self.transactions_grid_div_id, column_name))
        column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) + 1
        first_row_column_locator = (By.XPATH, "//div[contains(@id, '%s')]/descendant::div[@class='k-grid-content']/descendant::td[%s]/span" % (self.transactions_grid_div_id, str(column_index)))
        first_row_column_element = self.wait().until(EC.presence_of_element_located(first_row_column_locator), 'first row column locator not found before specified time out')
        self.script_executor_click(first_row_column_element)
        self.wait_for_ajax_spinner_load()
        first_row_column = client.Dispatch("WScript.Shell")
        first_row_column.SendKeys("^a")
        first_row_column.SendKeys("{DEL}")
        first_row_column.SendKeys(str(column_value))
        self.click_element(self.page_header_locator)

    def set_value_in_non_traffic_charges_grid_column(self, column_name, value):
        """
        Implementing set value in non traffic charges grid column functionality
        :param column_name:
        :param value:
        :return:
        """
        self.set_value_in_grid_column(self.non_traffic_charges_grid_div_id, column_name, value, True)
        self.click_element(self.page_header_locator)

    def click_non_traffic_charges_save_changes_button(self):
        """
        Implementing click non traffic charges save changes button functionality
        :return:
        """
        non_traffic_charges_save_changes_button_element = self.wait().until(EC.element_to_be_clickable(self.non_traffic_charges_save_changes_button_locator), 'non traffic charges save changes button locator not found before specified time out')
        non_traffic_charges_save_changes_button_element.click()
        self.accept_alert_pop_up()
        try:
            self.wait().until(EC.presence_of_element_located(self.confirmation_popup_locator), 'confirmation pop up locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise

    def click_non_recurring_charge_save_button_without_statement_dates(self):
        """
        Implementing click non recurring charge save button without statement dates functionality
        :return:
        """
        self.click_element(self.non_recurring_charge_save_button_locator)
        try:
            if self.is_element_present(self.non_recurring_charge_date_warning_message_locator) is True:
                self.click_element(self.ok_button_locator)
            self.wait().until(EC.presence_of_element_located(self.confirmation_popup_locator), 'confirmation pop up locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise

    def set_account(self, account_list):
        """
        Implementing set account functionality
        :param account_list:
        :return:
        """
        self.multiple_items_selection_from_kendo_dropdown(self.account_kendo_dropdown_locator, account_list)
        self.wait_for_ajax_spinner_load()

    def set_shortfall_grid_actions(self, action_item):
        """
        Implementing set shortfall grid actions functionality
        :param action_item:
        :return:
        """
        self.single_selection_from_kendo_in_grid(self.shortfall_grid_div_id, self.actions_column_name, action_item)

    def click_shortfall_grid_save_changes_button(self):
        """
        Implementing click shortfall grid save changes button functionality
        :return:
        """
        self.click_element(self.shortfall_save_changes_button_locator)
        try:
            self.wait().until(EC.visibility_of_element_located(self.success_message_locator), 'success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise

    def get_shortfall_grid_status_column_value(self):
        """
        Implementing get shortfall grid status column value functionality
        :return: status column value
        """
        self.grid_row_details_dictionary.clear()
        self.grid_row_details_dictionary.update({self.status_column_name: ""})
        shortfall_grid_row_details = self.get_grid_row_details(self.shortfall_grid_div_id, self.grid_row_details_dictionary)
        return shortfall_grid_row_details[self.status_column_name]

    def get_number_of_adjustment_charges_in_the_grid(self):
        """
        Implementing get number of adjustment charges in the grid functionality
        :return: number of records in grid
        """
        number_of_adjustment_records_element = self.wait().until(EC.visibility_of_element_located(self.number_of_adjustment_records_locator), 'number of adjustment records locator not found before specified time out')
        element_text = number_of_adjustment_records_element.text.split()
        return element_text[2]

    def is_new_adjustment_charge_created(self):
        """
        Implementing is new adjustment charge created functionality
        :return: True/False
        """
        current_number_of_records = self.get_number_of_adjustment_charges_in_the_grid()
        if int(current_number_of_records) > int(self.number_of_adjustment_records_before_create):
            return True
        else:
            return False

    def get_outbound_statement_grid_row_data(self):
        """
        Implementing get outbound statement grid row data functionality
        :return: outbound_statement_grid_row_data
        """
        self.grid_row_details_dictionary.clear()
        self.grid_row_details_dictionary = {"Bill Account": "", "Begin Date": "", "End Date": "", "Amount ( EUR )": ""}
        self.outbound_statement_grid_row_data = self.get_grid_row_details(self.outbound_statements_grid_div_id, self.grid_row_details_dictionary)
        return self.outbound_statement_grid_row_data

    def select_adjustment_charge_grid_first_row_checkbox(self):
        """
        Implementing select adjustment charge grid first row checkbox functionality
        :return:
        """
        self.click_element(self.adjustment_charges_grid_first_row_checkbox_locator, True, True)

    def click_assign_to_new_folder_button(self):
        """
        Implementing click assign to new folder button functionality
        :return:
        """
        self.click_element(self.assign_to_new_folder_button_locator)

    def set_assign_adjustment_charge_folder_name(self, folder_name_prefix):
        """
        Implementing set assign adjustment charge folder name functionality
        :param folder_name_prefix:
        :return: adjustment_folder_name
        """
        adjustment_folder_name = folder_name_prefix + self.random_string_generator(6)
        self.set_value_into_input_field(self.adjustment_folder_name_locator, adjustment_folder_name)
        return adjustment_folder_name

    def set_adjustment_type(self, adjustment_type):
        """
        Implementing set adjustment type functionality
        :param adjustment_type:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.adjustment_type_dropdown_locator, adjustment_type)
        self.wait_for_ajax_spinner_load()

    def click_assign_adjustment_charge_save_button(self):
        """
        Implementing click assign adjustment charge save button functionality
        :return:
        """
        self.click_element(self.assign_adjustment_charge_save_button_locator)
        try:
            self.wait().until(EC.visibility_of_element_located(self.error_log_viewer_locator), "error log viewer locator not found before specified time out")
            self.click_element(self.error_log_viewer_close_button_locator)
            self.click_element(self.assign_adjustment_charge_save_button_locator)
        except:
            pass
        try:
            self.wait().until(EC.visibility_of_element_located(self.success_message_locator), 'success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise

    def set_adjustment_folder_summary_status(self, status):
        """
        Implementing set adjustment folder summary status functionality
        :param status:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.adjustment_folder_summary_status_dropdown_locator, status)
        self.wait_for_ajax_spinner_load()

    def click_adjustment_folder_summary_save_button(self, status_to_be_changed):
        """
        Implementing click adjustment folder summary save button functionality
        :param status_to_be_changed
        :return:
        """
        self.click_element(self.adjustment_folder_summary_save_button_locator)
        try:
            if status_to_be_changed.lower() == "under approval":
                self.wait().until(EC.visibility_of_element_located(self.adjustment_folder_summary_under_approval_status_confirmation_popup_locator), "adjustment folder summary under approval status confirmation popup locator not found before specified time out")
            elif status_to_be_changed.lower() == "approved":
                self.wait().until(EC.visibility_of_element_located(self.adjustment_folder_summary_approved_status_confirmation_popup_locator), "adjustment folder summary approved status confirmation popup locator not found before specified time out")
            self.click_element(self.ok_button_locator)
            self.wait().until(EC.visibility_of_element_located(self.success_message_locator), 'success message locator not found before specified time out')
            self.click_element(self.ok_button_locator)
        except:
            raise

    def get_number_of_financial_charges_in_the_grid(self):
        """
        Implementing get number of financial charges in the grid functionality
        :return:
        """
        number_of_financial_charges_element = self.wait().until(EC.visibility_of_element_located(self.number_of_financial_charges_locator), 'number of financial charges locator not found before specified time out')
        element_text = number_of_financial_charges_element.text.split()
        return element_text[2]

    def is_new_financial_charge_created(self):
        """
        Implementing is new financial charge created functionality
        :return: True/False
        """
        current_number_of_records = self.get_number_of_financial_charges_in_the_grid()
        if int(current_number_of_records) > int(self.number_of_financial_charges_before_create):
            return True
        else:
            return False

    def is_line_item_mapping_tab_loaded_properly(self):
        """
        Implementing is line item mapping tab loaded properly functionality
        :return: True/False
        """
        return self.is_element_present(self.line_item_mapping_tab_locator)

    def is_audit_account_info_pop_up_loaded_properly(self):
        """
        Implementing is audit account info pop up loaded properly functionality
        :return: True/Flase
        """
        return self.is_element_present(self.audit_account_link_locator)

    def is_bill_account_info_pop_up_loaded_properly(self):
        """
        Implementing is bill account info pop up loaded properly functionality
        :return: True/False
        """
        return self.is_element_present(self.bill_account_link_locator)

    def is_adjustments_tab_loaded_properly(self):
        """
        Implementing is adjustments tab loaded properly functionality
        :return: True/False
        """
        return self.is_element_present(self.adjustments_tab_locator)

    def is_statement_details_page_loaded_properly(self):
        """
        Implementing is statement details page loaded properly functionality
        :return: True/False
        """
        return self.is_element_present(self.statement_details_page_header_locator)

    def is_usage_charges_tab_loaded_properly(self):
        """
        Implementing is usage charges tab loaded properly functionality
        :return: True/False
        """
        return self.is_element_present(self.usage_charges_tab_locator)

    def is_non_traffic_charges_tab_loaded_properly(self):
        """
        Implementing is non traffic charges tab loaded properly functionality
        :return: True/False
        """
        return self.is_element_present(self.non_traffic_charges_tab_locator)

    def is_win_dispute_button_present(self):
        """
        Implementing is win dispute button present functionality
        :return: True/False
        """
        return self.is_element_present(self.win_dispute_button_locator)

    def is_lose_dispute_button_present(self):
        """
        Implementing is lose dispute button present functionality
        :return: True/False
        """
        return self.is_element_present(self.lose_dispute_button_locator)

    def is_statement_validation_tab_loaded_properly(self):
        """
        Implementing is statement validation tab loaded properly functionality
        :return: True/False
        """
        return self.is_element_present(self.statement_validation_tab_locator)

    def set_received_charges_grid_product_name(self, product_name):
        """
        Implementing set received charges grid product name functionality
        :param product_name:
        :return:
        """
        if product_name != "":
            self.set_product(product_name)
        else:
            self.set_value_in_grid_column(self.received_charges_grid_div_id, self.product_column_name, self.random_string_generator(6), True)

    def get_outbound_statements_begin_date(self):
        """
        Implementing get outbound statements begin date functionality 
        :return: begin date 
        """
        return self.get_text_from_element(self.outbound_statements_begin_date_locator, True)

    def get_outbound_statements_end_date(self):
        """
        Implementing get outbound statements end date functionality 
        :return: end date 
        """
        return self.get_text_from_element(self.outbound_statements_end_date_locator, True)

    def get_outbound_statements_grid_begin_date(self):
        """
        Implementing get outbound statements grid begin date functionality
        :return: begin date 
        """
        self.outbound_statements_grid_row_count = self.get_grid_row_count(self.outbound_statements_grid_row_count_span_locator, 2)
        return self.get_specific_column_value_from_grid(self.outbound_statements_grid_div_id, self.outbound_statements_grid_row_count, self.begin_date_column_name)

    def get_outbound_statements_grid_end_date(self):
        """
        Implementing get outbound statements grid end date functionality
        :return: end date 
        """
        return self.get_specific_column_value_from_grid(self.outbound_statements_grid_div_id, self.outbound_statements_grid_row_count, self.end_date_column_name)

    def get_outbound_statements_grid_total_volume(self):
        """
        Implementing get outbound statements grid total volume functionality
        :return: total volume 
        """
        return self.get_specific_column_value_from_grid(self.outbound_statements_grid_div_id, self.outbound_statements_grid_row_count, self.total_volume_column_name)

    def get_outbound_statements_grid_amount_idr(self):
        """
        Implementing get outbound statements grid amount idr functionality
        :return: amount idr
        """
        return self.get_specific_column_value_from_grid(self.outbound_statements_grid_div_id, self.outbound_statements_grid_row_count, self.amount_idr_column_name, self.outbound_statement_grid_data_grid_name)

    def get_outbound_statements_grid_amount_billing_currency(self):
        """
        Implementing get outbound statements grid amount billing currency functionality
        :return: amount billing currency
        """
        return self.get_specific_column_value_from_grid(self.outbound_statements_grid_div_id, self.outbound_statements_grid_row_count, self.amount_billing_currency_column_name)

    def click_outbound_statements_grid_first_row_inline_action_button(self):
        """
        Implementing click outbound statements grid first row inline action button functionality
        :return:
        """
        self.click_inline_action_button(self.outbound_statements_grid_div_id, None, self.outbound_statements_grid_inline_action_column_number, True)

    def get_outbound_statement_summary_begin_date(self):
        """
        Implementing get outbound statement summary begin date functionality
        :return: begin date
        """
        return self.get_text_from_element(self.outbound_statements_summary_begin_date_locator, False)

    def get_outbound_statement_summary_end_date(self):
        """
        Implementing get outbound statement summary end date functionality
        :return: end date
        """
        return self.get_text_from_element(self.outbound_statements_summary_end_date_locator, False)

    def get_outbound_statement_summary_last_modified_date(self):
        """
        Implementing get outbound statement summary last modified date functionality
        :return: last modified date
        """
        return self.get_text_from_element(self.outbound_statements_summary_last_modified_date_date_locator, False)

    def get_inbound_statements_begin_date(self):
        """
        Implementing get inbound statements begin date functionality
        :return: begin date
        """
        return self.get_text_from_element(self.inbound_statements_begin_date_locator, True)

    def get_inbound_statements_end_date(self):
        """
        Implementing get inbound statements end date functionality
        :return: end date
        """
        return self.get_text_from_element(self.inbound_statements_end_date_locator, True)

    def get_inbound_statements_grid_won_amount(self):
        """
        Implementing get inbound statements grid won amount functionality
        :return: won amount 
        """
        self.inbound_statements_grid_row_count = self.get_grid_row_count(self.inbound_statement_grid_number_of_rows_locator, 2)
        return self.get_specific_column_value_from_grid(self.inbound_statement_grid_div_id, self.inbound_statements_grid_row_count, self.inbound_statements_grid_won_amount_column_name)

    def get_inbound_statements_grid_lost_amount(self):
        """
        Implementing get inbound statements grid lost amount functionality
        :return: lost amount 
        """
        return self.get_specific_column_value_from_grid(self.inbound_statement_grid_div_id, self.inbound_statements_grid_row_count, self.inbound_statements_grid_lost_amount_column_name)

    def get_inbound_statements_grid_pending_amount(self):
        """
        Implementing get inbound statements grid pending amount functionality
        :return: pending amount 
        """
        return self.get_specific_column_value_from_grid(self.inbound_statement_grid_div_id, self.inbound_statements_grid_row_count, self.inbound_statements_grid_pending_amount_column_name)

    def get_inbound_statements_grid_begin_date(self):
        """
        Implementing get inbound statements grid begin date functionality
        :return: begin date
        """
        return self.get_specific_column_value_from_grid(self.inbound_statement_grid_div_id, self.inbound_statements_grid_row_count, self.inbound_statements_grid_begin_date_column_name)

    def get_inbound_statements_grid_end_date(self):
        """
        Implementing get inbound statements grid end date functionality
        :return: end date 
        """
        return self.get_specific_column_value_from_grid(self.inbound_statement_grid_div_id, self.inbound_statements_grid_row_count, self.inbound_statements_grid_end_date_column_name)

    def get_inbound_statements_grid_total_calls_received(self):
        """
        Implementing get inbound statements grid total calls received functionality
        :return: total calls received 
        """
        return self.get_specific_column_value_from_grid(self.inbound_statement_grid_div_id, self.inbound_statements_grid_row_count, self.inbound_statements_grid_total_calls_received_column_name)

    def get_inbound_statements_grid_total_volume_received(self):
        """
        Implementing get inbound statements grid total volume received functionality
        :return: total volume received 
        """
        return self.get_specific_column_value_from_grid(self.inbound_statement_grid_div_id, self.inbound_statements_grid_row_count, self.inbound_statements_grid_total_volume_received_column_name)

    def get_inbound_statements_grid_total_calls_internal(self):
        """
        Implementing get inbound statements grid total calls internal functionality
        :return: total calls internal 
        """
        return self.get_specific_column_value_from_grid(self.inbound_statement_grid_div_id, self.inbound_statements_grid_row_count, self.inbound_statements_grid_total_calls_internal_column_name)

    def get_inbound_statements_grid_total_volume_internal(self):
        """
        Implementing get inbound statements grid total volume internal functionality
        :return: total volume internal 
        """
        return self.get_specific_column_value_from_grid(self.inbound_statement_grid_div_id, self.inbound_statements_grid_row_count, self.inbound_statements_grid_total_volume_internal_column_name)

    def get_inbound_statements_grid_amount(self):
        """
        Implementing get inbound statements grid amount functionality
        :return: amount 
        """
        return self.get_specific_column_value_from_grid(self.inbound_statement_grid_div_id, self.inbound_statements_grid_row_count, self.inbound_statements_grid_amount_column_name)

    def get_inbound_statements_grid_total_amount_internal(self):
        """
        Implementing get inbound statements grid total amount internal functionality
        :return: total amount internal  
        """
        return self.get_specific_column_value_from_grid(self.inbound_statement_grid_div_id, self.inbound_statements_grid_row_count, self.inbound_statements_grid_total_amount_internal_column_name)

    def get_inbound_statements_grid_discrepancy(self):
        """
        Implementing get inbound statements grid discrepancy functionality
        :return: discrepancy 
        """
        return self.get_specific_column_value_from_grid(self.inbound_statement_grid_div_id, self.inbound_statements_grid_row_count, self.inbound_statements_grid_discrepancy_column_name)

    def get_inbound_statements_grid_raised_dispute_amount(self):
        """
        Implementing get inbound statements grid raised dispute amount functionality
        :return: raised dispute amount 
        """
        return self.get_specific_column_value_from_grid(self.inbound_statement_grid_div_id, self.inbound_statements_grid_row_count, self.inbound_statements_grid_raised_dispute_amount_column_name)

    def get_inbound_statements_grid_dispute_by_date(self):
        """
        Implementing get inbound statements grid dispute by date functionality
        :return: dispute by date 
        """
        return self.get_specific_column_value_from_grid(self.inbound_statement_grid_div_id, self.inbound_statements_grid_row_count, self.inbound_statements_grid_dispute_by_date_column_name)

    def get_inbound_statements_grid_final_payment_due_date(self):
        """
        Implementing get inbound statements grid final payment due date functionality
        :return: final payment due date 
        """
        return self.get_specific_column_value_from_grid(self.inbound_statement_grid_div_id, self.inbound_statements_grid_row_count, self.inbound_statements_grid_final_payment_due_date_column_name)

    def get_inbound_statement_details_begin_date(self):
        """
        Implementing get inbound statement details begin date functionality 
        :return: begin date 
        """
        return self.get_text_from_element(self.inbound_statements_details_begin_date_locator, True)

    def get_inbound_statement_details_end_date(self):
        """
        Implementing get inbound statement details end date functionality 
        :return: end date 
        """
        return self.get_text_from_element(self.inbound_statements_details_end_date_locator, True)

    def get_inbound_statement_details_final_payment_due_date(self):
        """
        Implementing get inbound statement details final payment due date functionality 
        :return: final payment due date
        """
        return self.get_text_from_element(self.inbound_statements_details_final_payment_due_date_locator, True)

    def get_inbound_statement_details_vat_amount(self):
        """
        Implementing get inbound statement details vat amount functionality 
        :return: vat amount 
        """
        return self.get_text_from_element(self.inbound_statements_details_vat_amount_locator, True)

    def get_inbound_statement_details_total_amount(self):
        """
        Implementing get inbound statement details total amount functionality 
        :return: total amount 
        """
        return self.get_text_from_element(self.inbound_statements_details_total_amount_locator, True)

    def get_inbound_statement_details_total_amount_with_taxes(self):
        """
        Implementing get inbound statement details total amount with taxes functionality 
        :return: total amount with taxes 
        """
        return self.get_text_from_element(self.inbound_statements_details_total_amount_with_taxes_locator, True)

    def get_inbound_statement_details_summarization_discrepancy(self):
        """
        Implementing get inbound statement details summarization discrepancy functionality 
        :return: summarization discrepancy 
        """
        return self.get_text_from_element(self.inbound_statements_details_summarization_discrepancy_locator, False)

    def get_inbound_statement_details_issued_date(self):
        """
        Implementing get inbound statement details issued date functionality 
        :return: issued date 
        """
        return self.get_text_from_element(self.inbound_statements_details_issued_date_locator, True)

    def get_inbound_statement_details_statement_received_date(self):
        """
        Implementing get inbound statement details statement received date functionality 
        :return: statement received date 
        """
        return self.get_text_from_element(self.inbound_statements_details_statement_received_date_locator, True)

    def get_inbound_statement_details_received_due_date(self):
        """
        Implementing get inbound statement details received due date functionality 
        :return: received due date 
        """
        return self.get_text_from_element(self.inbound_statements_details_received_due_date_locator, True)

    def get_inbound_statement_details_payment_terms_due_date(self):
        """
        Implementing get inbound statement details payment terms due date functionality 
        :return: payment terms due date
        """
        return self.get_text_from_element(self.inbound_statements_details_payment_terms_due_date_locator, False)

    def get_inbound_statement_details_exchange_rate(self):
        """
        Implementing get inbound statement details exchange rate functionality 
        :return: exchange rate 
        """
        return self.get_text_from_element(self.inbound_statements_details_exchange_rate_locator, True)

    def get_inbound_statement_details_created_date(self):
        """
        Implementing get inbound statement details created date functionality 
        :return: created date 
        """
        return self.get_text_from_element(self.inbound_statements_details_created_date_locator, False)

    def get_inbound_statement_details_last_modified_date(self):
        """
        Implementing get inbound statement details last modified date functionality 
        :return: last modified date 
        """
        return self.get_text_from_element(self.inbound_statements_details_last_modified_date_locator, False)

    def click_create_new_adjustment_folder_button(self):
        """
        Implementing click create new adjustment folder button functionality
        :return:
        """
        self.click_element(self.create_new_adjustment_folder_button_locator)

    def set_adjustment_folder_name_to_create_new_one(self, folder_name_prefix):
        """
        Implementing set adjustment folder name to create new one functionality
        :param folder_name_prefix:
        :return:
        """
        global adjustment_folder_name
        adjustment_folder_name = folder_name_prefix + self.random_string_generator(size=4)
        self.set_value_into_input_field(self.adjustment_folder_name_textbox_locator, adjustment_folder_name)

    def get_created_adjustment_folder_name(self):
        """
        Implementing get created adjustment folder name functionality
        :return: adjustment_folder_name
        """
        global adjustment_folder_name
        return adjustment_folder_name

    def set_bill_account_from_single_selection_kendo_dropdown(self, bill_account):
        """
        Implementing set bill account from single selection kendo dropdown functionality
        :param bill_account:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.bill_account_single_selection_kendo_dropdown_locator, bill_account)

    def set_calender_year(self, year):
        """
        Implementing set calender year functionality
        :param year:
        :return:
        """
        self.single_selection_from_kendo_dropdown(self.calender_year_kendo_dropdown_locator, year)

    def get_created_charge_name(self):
        """
        Implementing get created charge name functionality
        :return: charge_name
        """
        global charge_name
        return charge_name

    def set_outbound_statements_grid_dropdown_value(self, column_name, column_value):
        """
        Implementing set outbound statements grid dropdown value functionality
        :param column_name:
        :param column_value:
        :return:
        """
        self.single_selection_from_kendo_in_grid(self.outbound_statements_grid_div_id, column_name, column_value, self.outbound_statement_grid_data_grid_name)
        self.click_element(self.page_header_locator)

    def click_outbound_statements_grid_save_changes_button(self):
        """
        Implementing click outbound statements grid save changes button functionality
        :return:
        """
        self.click_element(self.outbound_statements_grid_save_changes_button_locator)

    def is_delete_checkbox_enabled_in_transactions_grid(self):
        """
        Implementing is delete checkbox enabled in transactions grid functionality
        :return: True/False
        """
        checkbox_element = self.wait().until(EC.presence_of_element_located(self.transactions_grid_first_row_delete_checkbox_locator), 'checkbox locator not found before specified time out')
        return checkbox_element.is_enabled()

    def is_non_reccuring_charge_populated_in_the_grid(self, charge_name):
        """
        Implementing is non recurring charge populated in the grid funcationality
        :param charge_name:
        :return:
        """
        status = None
        try:
            charge_name_locator = (By.XPATH, "//div[contains(@id, 'divTrafficGrid_') and @data-grid-name='NonUsageChargesGrid']/descendant::span[text()=%s]" %(charge_name))
            self.wait().until(EC.presence_of_element_located(charge_name_locator))
            status = True
        except:
            status = False
        finally:
            return status

    def is_specific_column_present_in_workflow_tab(self, column_name):
        """
        Implementing is specific column present in workflow tab functionality
        :param column_name:
        :return: True/False
        """
        column_locator = (By.XPATH, "//div[contains(@id, 'divOutboundWorkFlowGrid_')]/descendant::div[@class='k-grid-header']/descendant::th[@data-title='%s']" % column_name)
        return self.is_element_present(column_locator)

    def get_outbound_statement_grid_amount_column_value(self):
        """
        Implementing get outbound statement grid amount column value functionality
        :return: outbound_statement_grid_amount_column_value
        """
        self.grid_row_details_dictionary = self.get_outbound_statement_grid_row_data()
        amount = self.grid_row_details_dictionary[self.outbound_statement_grid_amount_column_name]
        return amount

    def is_statement_status_changed_successfully(self):
        """
        Implementing is statement status changes successfully functionality
        :return: True/False
        """
        pop_up_not_present = None
        try:
            self.wait(10).until(EC.presence_of_element_located(self.info_pop_up_locator))
            pop_up_not_present = False
            self.click_element(self.ok_button_locator)
        except:
            pop_up_not_present = True
        finally:
            return pop_up_not_present

    def is_statement_status_error_message_pop_up_present(self):
        """
        Implementing is statement status error message pop up present functionality
        :return: True/False
        """
        is_present = None
        try:
            self.wait(10).until(EC.presence_of_element_located(self.statement_status_message_locator))
            is_present = True
            self.click_element(self.ok_button_locator)
        except:
            is_present = False
        finally:
            return is_present

    def get_non_traffic_charge_specific_column_kendo_dropdown_first_item_name(self, column_name):
        """
        Implementing get non traffic charge specific column kendo dropdown first item name functionality
        :param column_name: 
        :return: first item Name
        """
        column_locator = (By.XPATH, "//th[@data-title='%s']" % column_name)
        column_element = self.wait().until(EC.presence_of_element_located(column_locator), 'column locator not found before specified time out')
        column_index = int(column_element.get_attribute("data-index")) + 1
        first_row_column_locator = (By.XPATH, "//div[contains(@id, '%s') and @data-grid-name='NonUsageChargesGrid']/descendant::div[@class='k-grid-content']/descendant::td[%s]/descendant::span[@class='k-grid-cell']" % (self.non_traffic_charges_grid_div_id, str(column_index)))
        first_row_column_element = self.wait().until(EC.presence_of_element_located(first_row_column_locator), 'first row column locator not found before specified time out')
        self.script_executor_click(first_row_column_element)
        first_item_locator = (By.XPATH, "//ul[@id='MoveTo_listbox']/descendant::li[1]")
        first_item_element = self.wait().until(EC.presence_of_element_located(first_item_locator), 'item locator not found before specified time out')
        first_item = first_item_element.text.strip()
        return first_item

    def set_first_value_in_move_to_column_in_non_traffic_charge_grid(self):
        """
        Implementing set first value in move to column in non traffic charge grid functionality
        :return:
        """
        first_item_locator = (By.XPATH, "//ul[@id='MoveTo_listbox']/descendant::li[1]")
        self.click_element(first_item_locator)
        self.click_element(self.page_header_locator)

    def is_specific_workflow_status_in_proper_order_based_on_transition(self, status_name, order_number):
        """
        Implementing is specific workflow status in proper order based on transition functionality
        :param status_name:
        :param order_number:
        :return: True/False
        """
        workflow_status_locator = (By.XPATH, "//div[@id='OutboundInstanceId']/descendant::div[@class='k-grid-content']/descendant::tbody/descendant::tr[%s]/td[1]/span[text()='%s']" % (str(order_number), status_name))
        return self.is_element_present(workflow_status_locator)

    def is_specific_workflow_status_belonging_to_right_user_based_on_transition(self, status_name, order_number):
        """
        Implementing is specific workflow status belonging to right user based on transition functionality
        :param status_name:
        :param order_number:
        :return: True/False
        """
        is_matched = False
        workflow_status_user_locator = (By.XPATH, "//div[@id='OutboundInstanceId']/descendant::div[@class='k-grid-content']/descendant::tbody/descendant::tr[%s]/td[1]/span[text()='%s']/../../descendant::td[3]/span[text()='iXTools System']" % (str(order_number), status_name))
        if status_name == "Traffic PreClosed" or status_name == "Traffic Closed" or status_name == "Non Traffic Items Included":
                if self.is_element_present(workflow_status_user_locator, time_out=2) is False:
                    is_matched = True
        else:
            is_matched = self.is_element_present(workflow_status_user_locator)
        return is_matched

    def set_inbound_statement_details_vat_code(self, vat_code):
        """
        Implementing set inbound statement details vat code functionality
        :param vat_code:
        :return:
        """
        self.set_value_into_input_field(self.inbound_statement_details_vat_code_locator, value=vat_code)