"""
Implementing Bill And Audit UI page actions
Implementing Logging mechanism for Bill And Audit UI page actions
"""

from selenium.common.exceptions import WebDriverException
from TestFramework.Libraries.logger import Logger
from TestFramework.Libraries.Pages.bill_and_audit_page import BillAndAuditPage


class BillAndAudit:
    """
    Returning switch to Bill And Audit page
    Returning Bill And Audit page title
    Returning close Bill And Audit page
    Returning select outbound statements tab
    Returning click adjustment folders button
    Returning set adjustment folder status
    Returning click adjustment folders search button
    Returning filter adjustment folders grid
    Returning click adjustment folders grid inline action button
    Returning select item from inline action
    Returning get adjustment folders calender year
    Returning click add new adjustment charge button
    Returning set charges grid adjustment statement
    Returning set charges begin date
    Returning set charges end date
    Returning set charges grid charge name
    Returning set charges grid currency
    Returning set charges grid amount
    Returning click charges tab save changes button
    Returning select charges grid row checkbox
    Returning click remove from this adjustment folder button
    Returning filter charges grid
    Returning close current tab
    Returning set adjustment folder bill account
    Returning set adjustment folder name
    Returning click add related dispute button
    Returning select add disputes grid row checkbox
    Returning click add dispute save button
    Returning click remove dispute button without selection
    Returning set charges grid accounting code
    Returning click move to another adjustment folder button
    Returning select disputes grid row checkbox
    Returning click remove dispute button
    Returning set add dispute statement number
    Returning set add dispute dispute type
    Returning set add dispute status
    Returning set add dispute line item group
    Returning set add dispute date
    Returning click add disputes search button
    Returning get disputes grid row details
    Returning get add disputes grid row details
    Returning filter disputes grid
    Returning set move charges adjustment folder name
    Returning click move to adjustment folder save button
    Returning get charges grid row details
    Returning clear filter
    Returning set statement type
    Returning set bill account
    Returning click outbound statement search button
    Returning click add non recurring charge button
    Returning click outbound statements grid inline action button
    Returning set accounting code
    Returning set non recurring charge begin date
    Returning set non recurring charge end date
    Returning set non recurring charge
    Returning set charge category
    Returning set currency
    Returning set charge amount
    Returning set tax template
    Returning click non recurring charge save button
    Returning filter non traffic charges grid
    Returning get non traffic charges grid row details
    Returning select non traffic charges grid row checkbox
    Returning click non traffic charges delete button
    Returning compare non traffic charges grid row count
    Returning is new non recurring charge deleted
    Returning select inbound statement tab
    Returning set audit account for search
    Returning set statement status for search
    Returning click inbound statement search button
    Returning click create new statement button
    Returning set audit account
    Returning set statement number
    Returning set statement currency
    Returning set total amount
    Returning set statement begin date
    Returning set statement end date
    Returning set statement issued date
    Returning set statement received date
    Returning set statement due date
    Returning click statement entry save button
    Returning click statement entry cancel button
    Returning is field mandatory
    Returning set vat code
    Returning set vat amount
    Returning set total amount with taxes
    Returning set base currency
    Returning set exchange rate
    Returning set exchange rate date
    Returning set begin date for search
    Returning set end date for search
    Returning get inbound statement grid row details
    Returning select inbound statement grid checkbox
    Returning click delete button
    Returning is new statement deleted successfully
    Returning click inbound statement grid inline action button
    Returning click bulk add button
    Returning set tariff type
    Returning set line item type
    Returning set service group
    Returning set product
    Returning set time band
    Returning set tier
    Returning set rating unit
    Returning set bulk add begin date
    Returning set bulk add end date
    Returning click bulk edit cancel button
    Returning click bulk edit submit button
    Returning click bulk edit undo reset button
    Returning bulk add pop up cancelling status
    Returning is input field reset status
    Returning set number of rows
    Returning set value in received charges grid column
    Returning select received charges grid new rows
    Returning click received charges save changes button
    Returning get received charges grid row details
    Returning click bulk edit button
    Returning grid filter details
    Returning click statement details grid delete button
    Returning select received charges grid multiple rows checkbox
    Returning set sms product
    Returning get total mapped line items count
    Returning map unmapped received line items
    Returning map unmapped internal line items
    Returning all line items mapping status
    Returning click line item mapping grid save changes button
    Returning click show summary link
    Returning set statement summary status
    Returning click statement summary save button
    Returning select line item mapping tab
    Returning click remove all mappings button
    Returning mapped statements validation status
    Returning all line items un mapping status
    Returning filter inbound statements grid
    Returning click inbound statement grid first row inline action button functionality
    Returning click documents tab
    Returning click upload document button
    Returning set document name
    Returning set document keyword
    Returning set document reference number
    Returning set document date
    Returning set document order
    Returning click browse button
    Returning click upload button
    Returning get documents grid row details
    Returning set value in documents grid
    Returning click documents grid save changes button
    Returning click documents grid cancel changes button
    Returning select documents grid row checkbox
    Returning click documents delete button
    Returning click documents grid inline action button
    Returning select documents grid delete inline action
    Returning is document deleted successfully
    Returning set document name for search
    Returning click document search button
    Returning select transactions tab
    Returning click add new record button
    Returning set transactions grid first row transaction code
    Returning set value in transactions grid first row column
    Returning select transactions grid row checkbox
    Returning click hide summary link
    Returning set transactions grid dropdown value
    Returning click transactions grid save changes button
    Returning click transactions grid delete button
    Returning get transactions grid row details
    Returning filter transactions grid
    Returning tab present status
    Returning update received charges grid first row column
    Returning select received charges grid row checkbox
    Returning click received charges save changes button without changes
    Returning click received charges cancel changes button
    Returning set product in received charges grid
    Returning click map unmapped line items button
    Returning click map line items delete button
    Returning click upload statement button
    Returning click upload statement browse button
    Returning click upload statement upload button
    Returning click export to excel button
    Returning click disputes tab
    Returning click disputes grid first row inline action button
    Returning click add new note button
    Returning set dispute note
    Returning click add new note save button
    Returning click add new note cancel button
    Returning filter disputes notes grid
    Returning search results displayed in the grid
    Returning select statement details disputes grid first row checkbox
    Returning click win dispute button
    Returning set discrepancy source
    Returning set win dispute description
    Returning click win dispute save button
    Returning click win dispute cancel button
    Returning filter disputes resolutions grid
    Returning get resolutions grid row details
    Returning click lose dispute button
    Returning get inbound statement grid first row data
    Returning clear inbound statement multi select kendo dropdown
    Returning get statement summary status
    Returning select disputes tab
    Returning click line item disputes grid first row inline action button
    Returning click internal statement grid save changes button
    Returning set value in internal statement grid
    Returning select statement validation tab
    Returning click add resolution button
    Returning set action type
    Returning set discrepancy source
    Returning set credit amount
    Returning set description
    Returning click add resolution save button
    Returning set value in resolution grid
    Returning set description in resolution grid
    Returning set value in resolution grid dropdown
    Returning click resolution grid save changes button
    Returning filter resolution grid
    Returning click resolution grid first row inline action button
    Returning select delete inline item
    Returning select finalize resolution inline item
    Returning click resolution grid cancel changes button
    Returning click entry complete button
    Returning select statement validation grid first row checkbox
    Returning click statement validation grid first row inline action button
    Returning select statement validation grid inline action item
    Returning set value in disputes grid row
    Returning click disputes grid save changes button
    Returning click disputes grid first row inline action button
    Returning get resolutions grid row data
    Returning expand current cycles section
    Returning expand dispute contact section
    Returning set billing cycle template
    Returning set billing cycle begin date
    Returning set residual traffic window
    Returning click audit account save button
    Returning click audit account save button without firstname lastname
    Returning set dispute contact first name
    Returning set dispute contact last name
    Returning set dispute contact state
    Returning set dispute contact email
    Returning close current pop up
    Returning click outbound statement grid first row inline action button
    Returning create non recurring charges button presence status
    Returning usage charges grid has no records status
    Returning click view test statement file button
    Returning test statements error message given status
    Returning click add financial charges button
    Returning set adjustment charge product
    Returning set adjustment charge begin date
    Returning set adjustment charge end date
    Returning set adjustment charge currency
    Returning set adjustment charge amount
    Returning click create adjustment charge save button
    Returning adjustment charges grid first row inline action button
    Returning select adjustment charges reject inline item
    Returning set suspect status
    Returning select deselect suspect flag ignored checkbox
    Returning click suspect flags grid save changes button
    Returning select adjustments tab
    Returning click add new adjustment statement button
    Returning click adjustments grid first row inline action button
    Returning select adjustments delete inline action item
    Returning set account for search
    Returning set value in outbound transactions grid amount column
    Returning set value in non traffic charges grid column
    Returning click non traffic charges save changes button
    Returning click non recurring charge save button without statement dates
    Returning set account
    Returning set shortfall grid actions
    Returning click shortfall grid save changes button
    Returning shortfall grid status column value
    Returning click statement fields grid first row checkbox
    Returning click statement fields bulk edit button
    Returning set statement default value
    Returning click statement fields save changes button
    Returning is new adjustment charge created
    Returning get outbound statement grid row data
    Returning select adjustment charge grid first row checkbox
    Returning click assign to new folder button
    Returning set assign adjustment charge folder name
    Returning set adjustment type
    Returning click assign adjustment charge save button
    Returning set adjustment folder summary status
    Returning click adjustment folder summary save button
    Returning is new financial charge created
    Returning is line item mapping tab loaded properly
    Returning is statement validation tab loaded properly
    Returning is win dispute button present
    Returning is lose dispute button present
    Returning is non traffic charges tab loaded properly
    Returning is statement details page loaded properly
    Returning is usage charges tab loaded properly
    Returning is adjustments tab loaded properly
    Returning is bill account info pop up loaded properly
    Returning is audit account info pop up loaded properly
    Returning set received charges grid product name
    Returning validate date format
    Returning validate currency format
    Returning get outbound statements begin date
    Returning get outbound statements end date
    Returning get outbound statements grid begin date
    Returning get outbound statements grid end date
    Returning get outbound statements grid total volume
    Returning get outbound statements grid amount idr
    Returning get outbound statements grid amount billing currency
    Returning click outbound statements grid first row inline action button
    Returning get outbound statement summary begin date
    Returning get outbound statement summary end date
    Returning get outbound statement summary last modified date
    Returning get inbound statements begin date
    Returning get inbound statements end date
    Returning get inbound statements grid won amount
    Returning get inbound statements grid lost amount
    Returning get inbound statements grid pending amount
    Returning get inbound statements grid begin date
    Returning get inbound statements grid end date
    Returning get inbound statements grid total calls received
    Returning get inbound statements grid total volume received
    Returning get inbound statements grid total calls internal
    Returning get inbound statements grid total volume internal
    Returning get inbound statements grid amount
    Returning get inbound statements grid total amount internal
    Returning get inbound statements grid discrepancy
    Returning get inbound statements grid raised dispute amount
    Returning get inbound statements grid dispute by date
    Returning get inbound statements grid final payment due date 
    Returning get inbound statement details begin date 
    Returning get inbound statement details end date
    Returning get inbound statement details final payment due date
    Returning get inbound statement details vat amount
    Returning get inbound statement details total amount
    Returning get inbound statement details total amount with taxes
    Returning get inbound statement details summarization discrepancy
    Returning get inbound statement details issued date
    Returning get inbound statement details statement received date
    Returning get inbound statement details received due date
    Returning get inbound statement details payment terms due date
    Returning get inbound statement details exchange rate
    Returning get inbound statement details created date
    Returning get inbound statement details last modified date
    Returning click create new adjustment folder button
    Returning set adjustment folder name to create new one
    Returning get created adjustment folder name
    Returning set bill account from single selection kendo dropdown
    Returning set calender year
    Returning get created charge name
    Returning set outbound statements grid dropdown value
    Returning click outbound statements grid save changes button
    Returning close bill and audit window
    Returning select adjustment grid item from inline action
    Returning is delete checkbox enabled in transactions grid
    Returning is specific column present in workflow tab
    Returning is statement status changes successfully
    Returning is statement status error message pop up present
    Returning get outbound statement grid amount column value
    Returning get non traffic charge specific column kendo dropdown first item name
    Returning set first value in move to column in non traffic charge grid
    Returning is specific workflow status in proper order based on transition
    Returning is specific workflow status belonging to right user based on transition
    Returning set inbound statement details vat code
    """
    ROBOT_LIBRARY_SCOPE = 'TEST SUITE'

    logger = Logger().get_logger('BillAndAudit')

    def __init__(self):
        self._bill_and_audit_page = BillAndAuditPage()

    def switch_to_bill_and_audit(self):
        """
        Returning status switch to bill and audit
        Implementing logging for switch to bill and audit functionality
        :return:
        """
        is_switched = None
        try:
            self.logger.info('Start: switch to bill and audit method')
            self._bill_and_audit_page.switch_to_bill_and_audit()
            is_switched = True
        except WebDriverException as exp:
            is_switched = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: switch to bill and audit method')
            return is_switched

    def get_bill_and_audit_page_title(self):
        """
        Returning bill and audit page title
        Implementing logging for get bill and audit page title functionality
        :return: bill and audit page title
        """
        try:
            self.logger.info('Start: get bill and audit page title method')
            return self._bill_and_audit_page.get_bill_and_audit_page_title()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get bill and audit page title method')

    def select_outbound_statements_tab(self):
        """
        Returning select outbound statements tab
        Implementing logging for select outbound statements tab functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select outbound statements tab')
            self._bill_and_audit_page.select_outbound_statements_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select outbound statements tab')
            return is_selected

    def click_adjustment_folders_button(self):
        """
        Returning click adjustment folders button
        Implementing logging for click adjustment folders button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click adjustment folders button')
            self._bill_and_audit_page.click_adjustment_folders_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click adjustment folders button')
            return is_clicked

    def set_adjustment_folder_status(self, *adjustment_folder_status_list):
        """
        Returning set adjustment folder status
        Implementing logging for set adjustment folder status functionality
        :param adjustment_folder_status_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set adjustment folder status')
            if len(adjustment_folder_status_list) > 0:
                self._bill_and_audit_page.set_adjustment_folder_status(adjustment_folder_status_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set adjustment folder status')
            return is_set

    def click_adjustment_folders_search_button(self):
        """
        Returning click adjustment folders search button
        Implementing logging for click adjustment folders search button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click adjustment folders search button')
            self._bill_and_audit_page.click_adjustment_folders_search_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click adjustment folders search button')
            return is_clicked

    def filter_adjustment_folders_grid(self, column_name, filter_item_text):
        """
        Returning filter adjustment folders grid
        Implementing logging for filter adjustment folders grid functionality
        :param column_name:
        :param filter_item_text:
        :return: True/False
        """
        is_filtered = None
        try:
            self.logger.info('Start: filter adjustment folders grid')
            self._bill_and_audit_page.filter_adjustment_folders_grid(column_name, filter_item_text)
            is_filtered = True
        except WebDriverException as exp:
            is_filtered = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: filter adjustment folders grid')
            return is_filtered

    def click_adjustment_folders_grid_inline_action_button(self, adjustment_folder):
        """
        Returning click adjustment folders grid inline action button
        Implementing logging for click adjustment folders grid inline action button functionality
        :param adjustment_folder:
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click adjustment folders grid inline action button')
            self._bill_and_audit_page.click_adjustment_folders_grid_inline_action_button(adjustment_folder)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click adjustment folders grid inline action button')
            return is_clicked

    def select_inline_action_item(self, item_name):
        """
        Returning select item from inline action
        Implementing logging for select item from inline action functionality
        :param item_name: inline item
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select item from inline action')
            self._bill_and_audit_page.select_bill_and_audit_module_grid_inline_item(item_name)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select item from inline action')
            return is_selected

    def get_adjustment_folders_calender_year(self):
        """
        Returning get adjustment folders calender year
        Implementing logging for get adjustment folders calender year functionality
        :return: Calendar year
        """
        calendar_year = None
        try:
            self.logger.info('Start: get adjustment folders calender year')
            calendar_year = self._bill_and_audit_page.get_adjustment_folders_calender_year()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            calendar_year = "False"
            raise
        finally:
            self.logger.info('End: get adjustment folders calender year')
            return calendar_year

    def click_add_new_adjustment_charge_button(self):
        """
        Returning click add new adjustment charge button
        Implementing logging for click add new adjustment charge button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click add new adjustment charge button')
            self._bill_and_audit_page.click_add_new_adjustment_charge_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click add new adjustment charge button')
            return is_clicked

    def set_charges_grid_adjustment_statement(self, adjustment_statement):
        """
        Returning set charges grid adjustment statement
        Implementing logging for set charges grid adjustment statement functionality
        :param adjustment_statement:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set charges grid adjustment statement')
            if adjustment_statement != "":
                self._bill_and_audit_page.set_charges_grid_adjustment_statement(adjustment_statement)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set charges grid adjustment statement')
            return is_set

    def set_charge_begin_date(self, date, first_day_of_last_month=None):
        """
        Returning set charges begin date
        Implementing logging for set charges begin date functionality
        :param date:
        :param first_day_of_last_month:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set charges begin date')
            self._bill_and_audit_page.set_charge_begin_date(date, first_day_of_last_month)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set charges begin date')
            return is_set

    def set_charge_end_date(self, date, last_day_of_last_month=None):
        """
        Returning set charges end date
        Implementing logging for set charges end date functionality
        :param date:
        :param last_day_of_last_month:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set charges end date')
            self._bill_and_audit_page.set_charge_end_date(date, last_day_of_last_month)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set charges end date')
            return is_set

    def set_charges_grid_charge_name(self, charges_name_prefix=None):
        """
        Returning set charges grid charge name
        Implementing logging for set charges grid charge name functionality
        :param charges_name_prefix:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set charges grid charge name')
            is_set = self._bill_and_audit_page.set_charges_grid_charge_name(charges_name_prefix)
        except WebDriverException as exp:
            is_set = "False"
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set charges grid charge name')
            return is_set

    def set_charges_grid_currency(self, currency):
        """
        Returning set charges grid currency
        Implementing logging for set charges grid currency functionality
        :param currency:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set charges grid currency')
            if currency != "":
                self._bill_and_audit_page.set_charges_grid_currency(currency)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set charges grid currency')
            return is_set

    def set_charges_grid_amount(self, amount):
        """
        Returning set charges grid amount
        Implementing logging for set charges grid amount functionality
        :param amount:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set charges grid amount')
            if amount != "":
                self._bill_and_audit_page.set_charges_grid_amount(amount)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set charges grid amount')
            return is_set

    def click_charges_tab_save_changes_button(self):
        """
        Returning click charges tab save changes button
        Implementing logging for click charges tab save changes button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click charges tab save changes button')
            self._bill_and_audit_page.click_charges_tab_save_changes_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click charges tab save changes button')
            return is_clicked

    def select_charges_grid_row_checkbox(self, charge_name):
        """
        Returning select charges grid row checkbox
        Implementing logging for select charges grid row checkbox functionality
        :param charge_name:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select charges grid row checkbox')
            self._bill_and_audit_page.select_charges_grid_row_checkbox(charge_name)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select charges grid row checkbox')
            return is_selected

    def click_remove_from_this_adjustment_folder_button(self, with_checkbox_selection=True):
        """
        Returning click remove from this adjustment folder button
        Implementing logging for click remove from this adjustment folder button functionality
        :param with_checkbox_selection:
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click remove from this adjustment folder button')
            self._bill_and_audit_page.click_remove_from_this_adjustment_folder_button(with_checkbox_selection)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click remove from this adjustment folder button')
            return is_clicked

    def filter_charges_grid(self, column_name, filter_item_text):
        """
        Returning filter charges grid
        Implementing logging for filter charges grid functionality
        :param column_name:
        :param filter_item_text:
        :return: True/False
        """
        is_filtered = None
        try:
            self.logger.info('Start: filter charges grid')
            self._bill_and_audit_page.filter_charges_grid(column_name, filter_item_text)
            is_filtered = True
        except WebDriverException as exp:
            is_filtered = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: filter charges grid')
            return is_filtered

    def close_current_tab(self, tab_name):
        """
        Returning close current tab
        Implementing logging for close current tab functionality
        :param tab_name:
        :return: True/False
        """
        is_closed = None
        try:
            self.logger.info('Start: close current tab')
            self._bill_and_audit_page.close_current_tab(tab_name)
            is_closed = True
        except WebDriverException as exp:
            is_closed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: close current tab')
            return is_closed

    def set_adjustment_folder_bill_account(self, *bill_account_list):
        """
        Returning set adjustment folder bill account
        Implementing logging for set adjustment folder bill account functionality
        :param bill_account_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set adjustment folder bill account')
            if len(bill_account_list) > 0:
                self._bill_and_audit_page.set_adjustment_folder_bill_account(bill_account_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set adjustment folder bill account')
            return is_set

    def set_adjustment_folder_name(self, *adjustment_folder_name_list):
        """
        Returning set adjustment folder name
        Implementing logging for set adjustment folder name functionality
        :param adjustment_folder_name_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set adjustment folder name')
            if len(adjustment_folder_name_list) > 0:
                self._bill_and_audit_page.set_adjustment_folder_name(adjustment_folder_name_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set adjustment folder name')
            return is_set

    def click_add_related_dispute_button(self):
        """
        Returning click add related dispute button
        Implementing logging for click add related dispute button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click add related dispute button')
            self._bill_and_audit_page.click_add_related_dispute_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click add related dispute button')
            return is_clicked

    def select_add_disputes_grid_row_checkbox(self, audit_account):
        """
        Returning select add disputes grid row checkbox
        Implementing logging for select add disputes grid row checkbox functionality
        :param audit_account:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select add disputes grid row checkbox')
            self._bill_and_audit_page.select_add_disputes_grid_row_checkbox(audit_account)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select add disputes grid row checkbox')
            return is_selected

    def click_add_dispute_save_button(self):
        """
        Returning click add dispute save button
        Implementing logging for click add dispute save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click add dispute save button')
            self._bill_and_audit_page.click_add_dispute_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click add dispute save button')
            return is_clicked

    def click_remove_dispute_button_without_selection(self):
        """
        Returning click remove dispute button without selection
        Implementing logging for click remove dispute button without selection functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click remove dispute button without selection')
            self._bill_and_audit_page.click_remove_dispute_button_without_selection()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click remove dispute button without selection')
            return is_clicked

    def set_charges_grid_accounting_code(self, accounting_code):
        """
        Returning set charges grid accounting code
        Implementing logging for set charges grid accounting code functionality
        :param accounting_code:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set charges grid accounting code')
            if accounting_code != "":
                self._bill_and_audit_page.set_charges_grid_accounting_code(accounting_code)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set charges grid accounting code')
            return is_set

    def click_move_to_another_adjustment_folder_button(self, with_checkbox_selection=None):
        """
        Returning click move to another adjustment folder button
        Implementing logging for click move to another adjustment folder button functionality
        :param with_checkbox_selection:
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click move to another adjustment folder button')
            self._bill_and_audit_page.click_move_to_another_adjustment_folder_button(with_checkbox_selection)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click move to another adjustment folder button')
            return is_clicked

    def select_disputes_grid_row_checkbox(self, statement_number):
        """
        Returning select disputes grid row checkbox
        Implementing logging for select disputes grid row checkbox functionality
        :param statement_number:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select disputes grid row checkbox')
            self._bill_and_audit_page.select_disputes_grid_row_checkbox(statement_number)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select disputes grid row checkbox')
            return is_selected

    def click_remove_dispute_button(self):
        """
        Returning click remove dispute button
        Implementing logging for click remove dispute button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click remove dispute button')
            self._bill_and_audit_page.click_remove_dispute_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click remove dispute button')
            return is_clicked

    def set_add_dispute_statement_number(self, statement_number):
        """
        Returning set add dispute statement number
        Implementing logging for set add dispute statement number functionality
        :param statement_number:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set add dispute statement number')
            if statement_number != "":
                self._bill_and_audit_page.set_add_dispute_statement_number(statement_number)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set add dispute statement number')
            return is_set

    def set_add_dispute_dispute_type(self, dispute_type):
        """
        Returning set add dispute dispute type
        Implementing logging for set add dispute dispute type functionality
        :param dispute_type:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set add dispute dispute type')
            if dispute_type != "":
                self._bill_and_audit_page.set_add_dispute_dispute_type(dispute_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set add dispute dispute type')
            return is_set

    def set_add_dispute_status(self, status):
        """
        Returning set add dispute status
        Implementing logging for set add dispute status functionality
        :param status:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set add dispute status')
            if status != "":
                self._bill_and_audit_page.set_add_dispute_status(status)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set add dispute status')
            return is_set

    def set_add_dispute_line_item_group(self, line_item_group):
        """
        Returning set add dispute line item group
        Implementing logging for set add dispute line item group functionality
        :param line_item_group:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set add dispute line item group')
            if line_item_group != "":
                self._bill_and_audit_page.set_add_dispute_line_item_group(line_item_group)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set add dispute line item group')
            return is_set

    def set_add_dispute_date(self, date):
        """
        Returning set add dispute date
        Implementing logging for set add dispute date functionality
        :param date:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set add dispute date')
            if date != "":
                self._bill_and_audit_page.set_add_dispute_date(date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set add dispute date')
            return is_set

    def click_add_disputes_search_button(self):
        """
        Returning click add disputes search button
        Implementing logging for click add disputes search button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click add disputes search button')
            self._bill_and_audit_page.click_add_disputes_search_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click add disputes search button')
            return is_clicked

    def get_disputes_grid_row_details(self):
        """
        Returning get disputes grid row details
        Implementing logging for get disputes grid row details functionality
        :return: grid_row_details_dictionary
        """
        try:
            self.logger.info('Start: get disputes grid row details')
            return self._bill_and_audit_page.get_disputes_grid_row_details()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get disputes grid row details')

    def get_add_disputes_grid_row_details(self):
        """
        Returning get add disputes grid row details
        Implementing logging for get add disputes grid row details functionality
        :return: grid_row_details_dictionary
        """
        try:
            self.logger.info('Start: get add disputes grid row details')
            return self._bill_and_audit_page.get_add_disputes_grid_row_details()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get add disputes grid row details')

    def filter_disputes_grid(self, column_name, filter_item_text):
        """
        Returning filter disputes grid
        Implementing logging for filter disputes grid functionality
        :param column_name:
        :param filter_item_text:
        :return: True/False
        """
        is_filtered = None
        try:
            self.logger.info('Start: filter disputes grid')
            self._bill_and_audit_page.filter_disputes_grid(column_name, filter_item_text)
            is_filtered = True
        except WebDriverException as exp:
            is_filtered = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: filter disputes grid')
            return is_filtered

    def set_move_charges_adjustment_folder_name(self, adjustment_folder_name):
        """
        Returning set move charges adjustment folder name
        Implementing logging for set move charges adjustment folder name functionality
        :param adjustment_folder_name:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set move charges adjustment folder name')
            self._bill_and_audit_page.set_move_charges_adjustment_folder_name(adjustment_folder_name)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set move charges adjustment folder name')
            return is_set

    def click_move_to_adjustment_folder_save_button(self):
        """
        Returning click move to adjustment folder save button
        Implementing logging for click move to adjustment folder save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click move to adjustment folder save button')
            self._bill_and_audit_page.click_move_to_adjustment_folder_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click move to adjustment folder save button')
            return is_clicked

    def get_charges_grid_row_details(self):
        """
        Returning get charges grid row details
        Implementing logging for get charges grid row details functionality
        :return: grid_row_details_dictionary
        """
        try:
            self.logger.info('Start: get charges grid row details')
            return self._bill_and_audit_page.get_charges_grid_row_details()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get charges grid row details')

    def clear_filter(self, column_name):
        """
        Returning clear filter
        Implementing logging for clear filter functionality
        :param column_name:
        :return: True/False
        """
        is_cleared = None
        try:
            self.logger.info('Start: clear filter')
            self._bill_and_audit_page.clear_filter(column_name)
            is_cleared = True
        except WebDriverException as exp:
            is_cleared = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: clear filter')
            return is_cleared

    def select_inbound_statement_tab(self):
        """
        Returning select inbound statement tab
        Implementing logging for select inbound statement tab functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select inbound statement tab')
            self._bill_and_audit_page.select_inbound_statement_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select inbound statement tab')
            return is_selected

    def set_audit_account_for_search(self, *audit_account_list):
        """
        Returning set audit account for search
        Implementing logging for set audit account for search functionality
        :param audit_account_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set audit account for search')
            self._bill_and_audit_page.set_audit_account_for_search(audit_account_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set audit account for search')
            return is_set

    def set_statement_status_for_search(self, *status_list):
        """
        Returning set statement status for search
        Implementing logging for set statement status for search functionality
        :param status_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set statement status for search')
            self._bill_and_audit_page.set_statement_status_for_search(status_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set statement status for search')
            return is_set

    def click_inbound_statement_search_button(self):
        """
        Returning click inbound statement search button
        Implementing logging click inbound statement search button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click inbound statement search button')
            self._bill_and_audit_page.click_inbound_statement_search_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click inbound statement search button')
            return is_clicked

    def click_create_new_statement_button(self):
        """
        Returning click create new statement button
        Implementing logging for click create new statement button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click create new statement button')
            self._bill_and_audit_page.click_create_new_statement_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click create new statement button')
            return is_clicked

    def set_audit_account(self, audit_account):
        """
        Returning set audit account
        Implementing logging for set audit account functionality
        :param audit_account:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set audit account')
            self._bill_and_audit_page.set_audit_account(audit_account)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set audit account')
            return is_set

    def set_statement_number(self):
        """
        Returning set statement number
        Implementing set statement number functionality
        :return: statement_number
        """
        statement_number = None
        try:
            self.logger.info('Start: set audit account')
            statement_number = self._bill_and_audit_page.set_statement_number()
        except WebDriverException as exp:
            statement_number = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set audit account')
            return statement_number

    def set_statement_currency(self, currency):
        """
        Returning set statement currency
        Implementing logging for set statement currency functionality
        :param currency:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set statement currency')
            self._bill_and_audit_page.set_statement_currency(currency)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set statement currency')
            return is_set

    def set_total_amount(self, total_amount):
        """
        Returning set total amount
        Implementing logging for set total amount functionality
        :param total_amount:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set total amount')
            self._bill_and_audit_page.set_total_amount(total_amount)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set total amount')
            return is_set

    def set_statement_begin_date(self, begin_date):
        """
        Returning set statement begin date
        Implementing logging for set statement begin date functionality
        :param begin_date:
        :return: begin_date_to_set
        """
        begin_date_to_set = None
        try:
            self.logger.info('Start: set statement begin date')
            begin_date_to_set = self._bill_and_audit_page.set_statement_begin_date(begin_date)
        except WebDriverException as exp:
            begin_date_to_set = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set statement begin date')
            return begin_date_to_set

    def set_statement_end_date(self, end_date):
        """
        Returning set statement end date
        Implementing logging for set statement end date functionality
        :param end_date:
        :return: end_date_to_set
        """
        end_date_to_set = None
        try:
            self.logger.info('Start: set statement end date')
            end_date_to_set = self._bill_and_audit_page.set_statement_end_date(end_date)
        except WebDriverException as exp:
            end_date_to_set = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set statement end date')
            return end_date_to_set

    def set_statement_issued_date(self, issued_date):
        """
        Returning set statement issued date
        Implementing logging for set statement issued date functionality
        :param issued_date:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set statement issued date')
            self._bill_and_audit_page.set_statement_issued_date(issued_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set statement issued date')
            return is_set

    def set_statement_received_date(self, received_date):
        """
        Returning set statement received date
        Implementing logging for set statement received date functionality
        :param received_date:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set statement received date')
            self._bill_and_audit_page.set_statement_received_date(received_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set statement received date')
            return is_set

    def set_statement_due_date(self, due_date):
        """
        Returning set statement due date
        Implementing logging for set statement due date functionality
        :param due_date:
        :return: due_date_to_set
        """
        due_date_to_set = None
        try:
            self.logger.info('Start: set statement due date')
            due_date_to_set = self._bill_and_audit_page.set_statement_due_date(due_date)
        except WebDriverException as exp:
            due_date_to_set = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set statement due date')
            return due_date_to_set

    def click_statement_entry_save_button(self):
        """
        Returning click statement entry save button
        Implementing logging for click statement entry save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click statement entry save button')
            self._bill_and_audit_page.click_statement_entry_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click statement entry save button')
            return is_clicked

    def click_statement_entry_cancel_button(self):
        """
        Returning click statement entry cancel button
        Implementing logging for click statement entry cancel button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click statement entry cancel button')
            self._bill_and_audit_page.click_statement_entry_cancel_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click statement entry cancel button')
            return is_clicked

    def is_field_mandatory(self, label_text):
        """
        Returning is field mandatory
        Implementing logging for is field mandatory functionality
        :param label_text:
        :return: True/False
        """
        try:
            self.logger.info('Start: is field mandatory')
            return self._bill_and_audit_page.is_field_mandatory(label_text)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is field mandatory')

    def set_vat_code(self, vat_code):
        """
        Returning set vat code
        Implementing logging for set vat code functionality
        :param vat_code:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set vat code')
            if vat_code != "":
                self._bill_and_audit_page.set_vat_code(vat_code)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set vat code')
            return is_set

    def set_vat_amount(self, vat_amount):
        """
        Returning set vat amount
        Implementing logging for set vat amount functionality
        :param vat_amount:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set vat amount')
            if vat_amount != "":
                self._bill_and_audit_page.set_vat_amount(vat_amount)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set vat amount')
            return is_set

    def set_total_amount_with_taxes(self, amount):
        """
        Returning set total amount with taxes
        Implementing logging for set total amount with taxes functionality
        :param amount:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set total amount with taxes')
            if amount != "":
                self._bill_and_audit_page.set_total_amount_with_taxes(amount)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set total amount with taxes')
            return is_set

    def set_base_currency(self, base_currency):
        """
        Returning set base currency
        Implementing logging for set base currency functionality
        :param base_currency:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set base currency')
            if base_currency != "":
                self._bill_and_audit_page.set_base_currency(base_currency)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set base currency')
            return is_set

    def set_exchange_rate(self, exchange_rate):
        """
        Returning set exchange rate
        Implementing logging for set exchange rate functionality
        :param exchange_rate:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set exchange rate')
            if exchange_rate != "":
                self._bill_and_audit_page.set_exchange_rate(exchange_rate)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set exchange rate')
            return is_set

    def set_exchange_rate_date(self, exchange_rate_date):
        """
        Returning set exchange rate date
        Implementing logging for set exchange rate date functionality
        :param exchange_rate_date:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set exchange rate date')
            if exchange_rate_date != "":
                self._bill_and_audit_page.set_exchange_rate_date(exchange_rate_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set exchange rate date')
            return is_set

    def set_begin_date_for_search(self, begin_date):
        """
        Returning set begin date for search
        Implementing logging for set begin date for search functionality
        :param begin_date:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set begin date for search')
            self._bill_and_audit_page.set_begin_date_for_search(begin_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set begin date for search')
            return is_set

    def set_end_date_for_search(self, end_date, allow_past_date=False):
        """
        Returning set end date for search
        Implementing logging for set end date for search functionality
        :param end_date:
        :param allow_past_date
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set end date for search')
            self._bill_and_audit_page.set_end_date_for_search(end_date, allow_past_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set end date for search')
            return is_set

    def get_inbound_statement_grid_row_details(self, unique_identifier):
        """
        Returning get inbound statement grid row details
        Implementing logging for get inbound statement grid row details functionality
        :param unique_identifier:
        :return: grid_row_data
        """
        try:
            self.logger.info('Start: get inbound statement grid row details')
            return self._bill_and_audit_page.get_inbound_statement_grid_row_details(unique_identifier)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get inbound statement grid row details')

    def select_inbound_statement_grid_checkbox(self, statement_number):
        """
        Returning select inbound statement grid checkbox
        Implementing logging for select inbound statement grid checkbox functionality
        :param statement_number:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select inbound statement grid checkbox')
            self._bill_and_audit_page.select_inbound_statement_grid_checkbox(statement_number)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select inbound statement grid checkbox')
            return is_selected

    def click_delete_button(self):
        """
        Returning click delete button
        Implementing logging for click delete button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click delete button')
            self._bill_and_audit_page.click_delete_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click delete button')
            return is_clicked

    def is_new_statement_deleted_successfully(self):
        """
        Returning is new statement deleted successfully
        Implementing logging for is new statement deleted successfully functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is new statement deleted successfully')
            return self._bill_and_audit_page.is_new_statement_deleted_successfully()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is new statement deleted successfully')

    def set_statement_type(self, *statement_type_list):
        """
        Returning set statement type
        Implementing logging for set statement type functionality
        :param statement_type_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set statement type')
            if len(statement_type_list) > 0:
                self._bill_and_audit_page.set_statement_type(statement_type_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set statement type')
            return is_set

    def set_bill_account(self, *bill_account_list):
        """
        Returning set bill account
        Implementing logging for set bill account functionality
        :param bill_account_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set bill account')
            if len(bill_account_list) > 0:
                self._bill_and_audit_page.set_bill_account(bill_account_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set bill account')
            return is_set

    def click_outbound_statement_search_button(self):
        """
        Returning click outbound statement search button
        Implementing logging for click outbound statement search button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click outbound statement search button')
            self._bill_and_audit_page.click_outbound_statement_search_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click outbound statement search button')
            return is_clicked

    def click_add_non_recurring_charge_button(self):
        """
        Returning click add non recurring charge button
        Implementing logging for click add non recurring charge button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click add non recurring charge button')
            self._bill_and_audit_page.click_add_non_recurring_charge_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click add non recurring charge button')
            return is_clicked

    def click_outbound_statements_grid_inline_action_button(self, row_identifier_text):
        """
        Returning click outbound statements grid inline action button
        Implementing logging for click outbound statements grid inline action button functionality
        :param row_identifier_text:
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click outbound statements grid inline action button')
            self._bill_and_audit_page.click_outbound_statements_grid_inline_action_button(row_identifier_text)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click outbound statements grid inline action button')
            return is_clicked

    def set_accounting_code(self, accounting_code):
        """
        Returning set accounting code
        Implementing logging for set accounting code functionality
        :param accounting_code:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set accounting code')
            self._bill_and_audit_page.set_accounting_code(accounting_code)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set accounting code')
            return is_set

    def set_non_recurring_charge_begin_date(self, begin_date=None):
        """
        Returning set non recurring charge begin date
        Implementing logging for set non recurring charge begin date functionality
        :param begin_date:
        :return: non_recurring_charge_begin_date
        """
        non_recurring_charge_begin_date = None
        try:
            self.logger.info('Start: set non recurring charge begin date')
            non_recurring_charge_begin_date = self._bill_and_audit_page.set_non_recurring_charge_begin_date(begin_date)
        except WebDriverException as exp:
            non_recurring_charge_begin_date = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set non recurring charge begin date')
            return non_recurring_charge_begin_date

    def set_non_recurring_charge_end_date(self, end_date=None):
        """
        Returning set non recurring charge end date
        Implementing logging for set non recurring charge end date functionality
        :param end_date:
        :return: non_recurring_charge_end_date
        """
        non_recurring_charge_end_date = None
        try:
            self.logger.info('Start: set non recurring charge end date')
            non_recurring_charge_end_date = self._bill_and_audit_page.set_non_recurring_charge_end_date(end_date)
        except WebDriverException as exp:
            non_recurring_charge_end_date = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set non recurring charge end date')
            return non_recurring_charge_end_date

    def set_non_recurring_charge(self, non_recurring_charge_prefix):
        """
        Returning set non recurring charge
        Implementing logging for set non recurring charge functionality
        :param non_recurring_charge_prefix:
        :return: non_recurring_charge
        """
        non_recurring_charge = None
        try:
            self.logger.info('Start: set non recurring charge')
            non_recurring_charge = self._bill_and_audit_page.set_non_recurring_charge(non_recurring_charge_prefix)
        except WebDriverException as exp:
            non_recurring_charge = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set non recurring charge')
            return non_recurring_charge

    def set_charge_category(self, charge_category):
        """
        Returning set charge category
        Implementing logging for set charge category functionality
        :param charge_category:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set charge category')
            self._bill_and_audit_page.set_charge_category(charge_category)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set charge category')
            return is_set

    def set_currency(self, currency):
        """
        Returning set currency
        Implementing logging for set currency functionality
        :param currency:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set currency')
            self._bill_and_audit_page.set_currency(currency)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set currency')
            return is_set

    def set_charge_amount(self, charge_amount):
        """
        Returning set charge amount
        Implementing logging for set charge amount functionality
        :param charge_amount:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set charge amount')
            self._bill_and_audit_page.set_charge_amount(charge_amount)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set charge amount')
            return is_set

    def set_tax_template(self, tax_template):
        """
        Returning set tax template
        Implementing logging for set tax template functionality
        :param tax_template:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set tax template')
            self._bill_and_audit_page.set_tax_template(tax_template)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set tax template')
            return is_set

    def click_non_recurring_charge_save_button(self):
        """
        Returning click non recurring charge save button
        Implementing logging for click non recurring charge save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click non recurring charge save button')
            self._bill_and_audit_page.click_non_recurring_charge_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click non recurring charge save button')
            return is_clicked

    def filter_non_traffic_charges_grid(self, column_name, filter_item_text):
        """
        Returning filter non traffic charges grid
        Implementing logging for filter non traffic charges grid functionality
        :param column_name:
        :param filter_item_text:
        :return: True/False
        """
        is_filtered = None
        try:
            self.logger.info('Start: filter non traffic charges grid')
            self._bill_and_audit_page.filter_non_traffic_charges_grid(column_name, filter_item_text)
            is_filtered = True
        except WebDriverException as exp:
            is_filtered = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: filter non traffic charges grid')
            return is_filtered

    def get_non_traffic_charges_grid_row_details(self):
        """
        Returning get non traffic charges grid row details
        Implementing logging for get non traffic charges grid row details functionality
        :return: grid_row_details_dictionary
        """
        try:
            self.logger.info('Start: get non traffic charges grid row details')
            return self._bill_and_audit_page.get_non_traffic_charges_grid_row_details()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get non traffic charges grid row details')

    def select_non_traffic_charges_grid_row_checkbox(self, row_identifier_text):
        """
        Returning select non traffic charges grid row checkbox
        Implementing logging for select non traffic charges grid row checkbox functionality
        :param row_identifier_text:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select non traffic charges grid row checkbox')
            self._bill_and_audit_page.select_non_traffic_charges_grid_row_checkbox(row_identifier_text)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select non traffic charges grid row checkbox')
            return is_selected

    def click_non_traffic_charges_delete_button(self):
        """
        Returning click non traffic charges delete button
        Implementing logging for click non traffic charges delete button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click non traffic charges delete button')
            self._bill_and_audit_page.click_non_traffic_charges_delete_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click non traffic charges delete button')
            return is_clicked

    def compare_non_traffic_charges_grid_row_count(self):
        """
        Returning compare non traffic charges grid row count
        Implementing logging for compare non traffic charges grid row count functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: compare non traffic charges grid row count')
            return self._bill_and_audit_page.compare_non_traffic_charges_grid_row_count()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare non traffic charges grid row count')

    def is_new_non_recurring_charge_deleted(self):
        """
        Returning is new non recurring charge deleted
        Implementing logging for is new non recurring charge deleted functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is new non recurring charge deleted')
            return self._bill_and_audit_page.is_new_non_recurring_charge_deleted()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is new non recurring charge deleted')

    def click_inbound_statement_grid_inline_action_button(self, row_identifier_text):
        """
        Returning click inbound statement grid inline action button
        Implementing logging for click inbound statement grid inline action button functionality
        :param row_identifier_text:
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click inbound statement grid inline action button')
            self._bill_and_audit_page.click_inbound_statement_grid_inline_action_button(row_identifier_text)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click inbound statement grid inline action button')
            return is_clicked

    def click_bulk_add_button(self):
        """
        Returning click bulk add button
        Implementing logging for click bulk add button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click bulk add button')
            self._bill_and_audit_page.click_bulk_add_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click bulk add button')
            return is_clicked

    def set_tariff_type(self, tariff_type):
        """
        Returning set tariff type
        Implementing logging for set tariff type functionality
        :param tariff_type:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set tariff type')
            if tariff_type != "":
                self._bill_and_audit_page.set_tariff_type(tariff_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set tariff type')
            return is_set

    def set_line_item_type(self, line_item_type):
        """
        Returning set line item type
        Implementing logging for set line item type functionality
        :param line_item_type:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set line item type')
            if line_item_type != "":
                self._bill_and_audit_page.set_line_item_type(line_item_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set line item type')
            return is_set

    def set_service_group(self, service_group):
        """
        Returning set service group
        Implementing logging for set service group functionality
        :param service_group:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set service group')
            if service_group != "":
                self._bill_and_audit_page.set_service_group(service_group)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set service group')
            return is_set

    def set_product(self, product):
        """
        Returning set product
        Implementing logging for set product functionality
        :param product:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set product')
            if product != "":
                self._bill_and_audit_page.set_product(product)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set product')
            return is_set

    def set_time_band(self, time_band):
        """
        Returning set time band
        Implementing logging for set time band functionality
        :param time_band:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set time band')
            if time_band != "":
                self._bill_and_audit_page.set_time_band(time_band)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set time band')
            return is_set

    def set_tier(self, tier):
        """
        Returning set tier
        Implementing logging for set tier functionality
        :param tier:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set tier')
            if tier != "":
                self._bill_and_audit_page.set_tier(tier)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set tier')
            return is_set

    def set_rating_unit(self, rating_unit):
        """
        Returning set rating unit
        Implementing logging for set rating unit functionality
        :param rating_unit:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set rating unit')
            if rating_unit != "":
                self._bill_and_audit_page.set_rating_unit(rating_unit)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set rating unit')
            return is_set

    def set_bulk_add_begin_date(self, begin_date):
        """
        Returning set bulk add begin date
        Implementing logging for set bulk add begin date functionality
        :param begin_date:
        :return: bulk_add_begin_date
        """
        bulk_add_begin_date = None
        try:
            self.logger.info('Start: set bulk add begin date')
            bulk_add_begin_date = self._bill_and_audit_page.set_bulk_add_begin_date(begin_date)
        except WebDriverException as exp:
            bulk_add_begin_date = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set bulk add begin date')
            return bulk_add_begin_date

    def set_bulk_add_end_date(self, end_date):
        """
        Returning set bulk add end date
        Implementing logging for set bulk add end date functionality
        :param end_date:
        :return: bulk_add_end_date
        """
        bulk_add_end_date = None
        try:
            self.logger.info('Start: set bulk add end date')
            bulk_add_end_date = self._bill_and_audit_page.set_bulk_add_end_date(end_date)
        except WebDriverException as exp:
            bulk_add_end_date = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set bulk add end date')
            return bulk_add_end_date

    def click_bulk_edit_cancel_button(self):
        """
        Returning click bulk edit cancel button
        Implementing logging for click bulk edit cancel button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click bulk edit cancel button')
            self._bill_and_audit_page.click_bulk_edit_cancel_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click bulk edit cancel button')
            return is_clicked

    def click_bulk_edit_submit_button(self):
        """
        Returning click bulk edit submit button
        Implementing logging for click bulk edit submit button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click bulk edit submit button')
            self._bill_and_audit_page.click_bulk_edit_submit_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click bulk edit submit button')
            return is_clicked

    def click_bulk_edit_undo_reset_button(self):
        """
        Returning click bulk edit undo reset button
        Implementing logging for click bulk edit undo reset button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click bulk edit undo reset button')
            self._bill_and_audit_page.click_bulk_edit_undo_reset_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click bulk edit undo reset button')
            return is_clicked

    def is_bulk_add_pop_up_cancelled(self):
        """
        Returning bulk add pop up cancelling status
        Implementing logging for is bulk add pop up cancelled functionality
        :return: True/False
        """
        is_cancelled = None
        try:
            self.logger.info('Start: is bulk add pop up cancelled')
            is_cancelled = self._bill_and_audit_page.is_bulk_add_pop_up_cancelled()
        except WebDriverException as exp:
            is_cancelled = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is bulk add pop up cancelled')
            return is_cancelled

    def is_input_field_reset(self, label_text):
        """
        Returning input field reset status
        Implementing logging for is input field reset functionality
        :param label_text:
        :return: True/False
        """
        is_reset = None
        try:
            self.logger.info('Start: is input field reset')
            is_reset = self._bill_and_audit_page.is_input_field_reset(label_text)
        except WebDriverException as exp:
            is_reset = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is input field reset')
            return is_reset

    def set_number_of_rows(self, number_of_rows):
        """
        Returning set number of rows
        Implementing logging for set number of rows functionality
        :param number_of_rows:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set number of rows')
            if number_of_rows != "":
                self._bill_and_audit_page.set_number_of_rows(number_of_rows)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set number of rows')
            return is_set

    def set_value_in_received_charges_grid_column(self, column_name, column_value, value_prefix=None):
        """
        Returning set value in received charges grid column
        Implementing logging for set value in received charges grid column functionality
        :param column_name:
        :param column_value:
        :param value_prefix:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set value in received charges grid column')
            self._bill_and_audit_page.set_value_in_received_charges_grid_column(column_name, column_value, value_prefix)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set value in received charges grid column')
            return is_set

    def select_received_charges_grid_new_rows(self):
        """
        Returning select received charges grid new rows
        Implementing logging for select received charges grid new rows functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: select received charges grid new rows')
            self._bill_and_audit_page.select_received_charges_grid_new_rows()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select received charges grid new rows')
            return is_set

    def click_received_charges_save_changes_button(self):
        """
        Returning click received charges save changes button
        Implementing logging for click received charges save changes button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click received charges save changes button')
            self._bill_and_audit_page.click_received_charges_save_changes_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click received charges save changes button')
            return is_clicked

    def get_received_charges_grid_row_details(self):
        """
        Returning get received charges grid row details
        Implementing logging for get received charges grid row details functionality
        :return: grid_row_details_dictionary
        """
        try:
            self.logger.info('Start: get received charges grid row details')
            return self._bill_and_audit_page.get_received_charges_grid_row_details()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get received charges grid row details')

    def click_bulk_edit_button(self):
        """
        Returning click bulk edit button
        Implementing logging for click bulk edit button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click bulk edit button')
            self._bill_and_audit_page.click_bulk_edit_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click bulk edit button')
            return is_clicked

    def grid_filter_details(self, column_name, *filter_item_list):
        """
        Returning grid filter details
        Implementing logging for grid filter details functionality
        :param column_name:
        :param filter_item_list:
        :return: True/False
        """
        is_filtered = None
        try:
            self.logger.info('Start: grid filter details')
            self._bill_and_audit_page.grid_filter_details(column_name, filter_item_list)
            is_filtered = True
        except WebDriverException as exp:
            is_filtered = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: grid filter details')
            return is_filtered

    def click_statement_details_grid_delete_button(self):
        """
        Returning click statement details grid delete button
        Implementing logging for click statement details grid delete button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click statement details grid delete button')
            self._bill_and_audit_page.click_statement_details_grid_delete_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click statement details grid delete button')
            return is_clicked

    def select_received_charges_grid_multiple_rows_checkbox(self):
        """
        Returning select received charges grid multiple rows checkbox
        Implementing logging for select received charges grid multiple rows checkbox functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: select received charges grid multiple rows checkbox')
            self._bill_and_audit_page.select_received_charges_grid_multiple_rows_checkbox()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select received charges grid multiple rows checkbox')
            return is_set

    def set_sms_product(self, product):
        """
        Returning set sms product
        Implementing logging for set sms product functionality
        :param product:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set sms product')
            if product != "":
                self._bill_and_audit_page.set_sms_product(product)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set sms product')
            return is_set

    def is_tab_present(self, tab_name):
        """
        Returning tab present status
        Implementing logging for is tab present functionality
        :param tab_name:
        :return:
        """
        try:
            self.logger.info('Start: is tab present')
            return self._bill_and_audit_page.is_tab_present(tab_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is tab present')

    def update_received_charges_grid_first_row_column(self, column_name, column_value):
        """
        Returning update received charges grid first row column
        Implementing logging for update received charges grid first row column functionality
        :param column_name:
        :param column_value:
        :return: True/False
        """
        is_modified = None
        try:
            self.logger.info('Start: update received charges grid first row column')
            self._bill_and_audit_page.update_received_charges_grid_first_row_column(column_name, column_value)
            is_modified = True
        except WebDriverException as exp:
            is_modified = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: update received charges grid first row column')
            return is_modified

    def select_received_charges_grid_row_checkbox(self, row_identifier_text):
        """
        Returning select received charges grid row checkbox
        Implementing logging for select received charges grid row checkbox functionality
        :param row_identifier_text:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select received charges grid row checkbox')
            self._bill_and_audit_page.select_received_charges_grid_row_checkbox(row_identifier_text)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select received charges grid row checkbox')
            return is_selected

    def click_received_charges_save_changes_button_without_changes(self):
        """
        Returning click received charges save changes button without changes
        Implementing logging for click received charges save changes button without changes functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click received charges save changes button without changes')
            self._bill_and_audit_page.click_received_charges_save_changes_button_without_changes()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click received charges save changes button without changes')
            return is_clicked

    def click_received_charges_cancel_changes_button(self):
        """
        Returning click received charges cancel changes button
        Implementing logging for click received charges cancel changes button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click received charges cancel changes button')
            self._bill_and_audit_page.click_received_charges_cancel_changes_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click received charges cancel changes button')
            return is_clicked

    def set_product_in_received_charges_grid(self, product):
        """
        Returning set product in received charges grid
        Implementing logging for set product in received charges grid functionality
        :param product:
        :return: full_product_name
        """
        is_set = None
        try:
            self.logger.info('Start: set product in received charges grid')
            is_set = self._bill_and_audit_page.set_product_in_received_charges_grid(product)
        except WebDriverException as exp:
            is_set = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set product in received charges grid')
            return is_set

    def click_inbound_statement_grid_first_row_inline_action_button(self):
        """
        Returning click inbound statement grid first row inline action button
        Implementing logging for click inbound statement grid first row inline action button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click inbound statement grid first row inline action button')
            self._bill_and_audit_page.click_inbound_statement_grid_first_row_inline_action_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click inbound statement grid first row inline action button')
            return is_clicked

    def click_documents_tab(self):
        """
        Returning click documents tab
        Implementing logging for click documents tab functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click documents tab')
            self._bill_and_audit_page.click_documents_tab()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click documents tab')
            return is_clicked

    def click_upload_document_button(self):
        """
        Returning click upload document button
        Implementing logging for click upload document button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click upload document button')
            self._bill_and_audit_page.click_upload_document_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click upload document button')
            return is_clicked

    def set_document_name(self, document_name_prefix):
        """
        Returning set document name
        Implementing logging for set document name functionality
        :param document_name_prefix:
        :return: document_name
        """
        document_name = None
        try:
            self.logger.info('Start: set document name')
            document_name = self._bill_and_audit_page.set_document_name(document_name_prefix)
        except WebDriverException as exp:
            document_name = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set document name')
            return document_name

    def set_document_keyword(self, document_keyword):
        """
        Returning set document keyword
        Implementing logging for set document keyword functionality
        :param document_keyword:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set document keyword')
            self._bill_and_audit_page.set_document_keyword(document_keyword)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set document keyword')
            return is_set

    def set_document_reference_number(self, reference_number):
        """
        Returning set document reference number
        Implementing logging for set document reference number functionality
        :param reference_number:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set document reference number')
            self._bill_and_audit_page.set_document_reference_number(reference_number)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set document reference number')
            return is_set

    def set_document_date(self, date):
        """
        Returning set document date
        Implementing logging for set document date functionality
        :param date:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set document date')
            if date != "":
                self._bill_and_audit_page.set_document_date(date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set document date')
            return is_set

    def set_document_order(self, order):
        """
        Returning set document order
        Implementing logging for set document order functionality
        :param order:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set document order')
            self._bill_and_audit_page.set_document_order(order)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set document order')
            return is_set

    def click_browse_button(self):
        """
        Returning click browse button
        Implementing logging for click browse button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click browse button')
            self._bill_and_audit_page.click_browse_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click browse button')
            return is_clicked

    def select_file_to_be_uploaded(self, file_path):
        """
        Returning select file to be uploaded
        Implementing logging for select file to be uploaded functionality
        :param file_path:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select file to be uploaded')
            self._bill_and_audit_page.select_the_file_to_be_uploaded(file_path)
            is_selected = True
        except Exception as exp:
            is_selected = False
            self.logger.error(exp.message)
            raise
        finally:
            self.logger.info('End: select file to be uploaded')
            return is_selected

    def click_upload_button(self):
        """
        Returning click upload button
        Implementing logging for click upload button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click upload button')
            self._bill_and_audit_page.click_upload_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click upload button')
            return is_clicked

    def get_documents_grid_row_details(self):
        """
        Returning get documents grid row details
        Implementing logging for get documents grid row details functionality
        :return: documents_grid_row_data
        """
        try:
            self.logger.info('Start: get documents grid row details')
            return self._bill_and_audit_page.get_documents_grid_row_details()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get documents grid row details')

    def set_value_in_documents_grid(self, column_name, value):
        """
        Returning set value in documents grid
        Implementing logging for set value in documents grid functionality
        :param column_name:
        :param value:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set value in documents grid')
            self._bill_and_audit_page.set_value_in_documents_grid(column_name, value)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set value in documents grid')
            return is_set

    def click_documents_grid_save_changes_button(self):
        """
        Returning click documents grid save changes button
        Implementing logging for click documents grid save changes button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click documents grid save changes button')
            self._bill_and_audit_page.click_documents_grid_save_changes_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click documents grid save changes button')
            return is_clicked

    def click_documents_grid_cancel_changes_button(self):
        """
        Returning click documents grid cancel changes button
        Implementing logging for click documents grid cancel changes button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click documents grid cancel changes button')
            self._bill_and_audit_page.click_documents_grid_cancel_changes_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click documents grid cancel changes button')
            return is_clicked

    def select_documents_grid_row_checkbox(self, row_identifier_text):
        """
        Returning select documents grid row checkbox
        Implementing logging for select documents grid row checkbox functionality
        :param row_identifier_text:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select documents grid row checkbox')
            self._bill_and_audit_page.select_documents_grid_row_checkbox(row_identifier_text)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select documents grid row checkbox')
            return is_selected

    def click_documents_delete_button(self):
        """
        Returning click documents delete button
        Implementing logging for click documents delete button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click documents delete button')
            self._bill_and_audit_page.click_documents_delete_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click documents delete button')
            return is_clicked

    def click_documents_grid_inline_action_button(self, reference_number):
        """
        Returning click documents grid inline action button
        Implementing logging for click documents grid inline action button functionality
        :param reference_number:
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click documents grid inline action button')
            self._bill_and_audit_page.click_documents_grid_inline_action_button(reference_number)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click documents grid inline action button')
            return is_clicked

    def select_documents_grid_delete_inline_action(self):
        """
        Returning select documents grid delete inline action
        Implementing logging for select documents grid delete inline action functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select documents grid delete inline action')
            self._bill_and_audit_page.select_documents_grid_delete_inline_action()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select documents grid delete inline action')
            return is_selected

    def is_document_deleted_successfully(self):
        """
        Returning is document deleted successfully
        Implementing logging for is document deleted successfully functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is document deleted successfully')
            return self._bill_and_audit_page.is_document_deleted_successfully()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is document deleted successfully')

    def set_document_name_for_search(self, document_name):
        """
        Returning set document name for search
        Implementing logging for set document name for search functionality
        :param document_name:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set document name for search')
            self._bill_and_audit_page.set_document_name_for_search(document_name)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set document name for search')
            return is_set

    def click_document_search_button(self):
        """
        Returning click document search button
        Implementing logging for click document search button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click document search button')
            self._bill_and_audit_page.click_document_search_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click document search button')
            return is_clicked

    def get_total_mapped_line_items_count(self):
        """
        Returning get total mapped line items count
        Implementing logging for get total mapped line items count functionality
        :return: True/False
        """
        is_got = None
        try:
            self.logger.info('Start: get total mapped line items count')
            self._bill_and_audit_page.get_total_mapped_line_items_count()
            is_got = True
        except WebDriverException as exp:
            is_got = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get total mapped line items count')
            return is_got

    def map_unmapped_received_line_items(self):
        """
        Returning map unmapped received line items
        Implementing logging for map unmapped received line items functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: map unmapped received line items')
            self._bill_and_audit_page.map_unmapped_received_line_items()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: map unmapped received line items')
            return is_set

    def map_unmapped_internal_line_items(self):
        """
        Returning map unmapped internal line items
        Implementing logging for map unmapped internal line items functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: map unmapped internal line items')
            self._bill_and_audit_page.map_unmapped_internal_line_items()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: map unmapped internal line items')
            return is_set

    def is_all_line_items_mapped(self):
        """
        Returning all line items mapping status
        Implementing logging for is all line items mapped functionality
        :return: True/False
        """
        is_mapped = None
        try:
            self.logger.info('Start: is all line items mapped')
            is_mapped = self._bill_and_audit_page.is_all_line_items_mapped()
        except WebDriverException as exp:
            is_mapped = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is all line items mapped')
            return is_mapped

    def click_line_item_mapping_grid_save_changes_button(self):
        """
        Returning click line item mapping grid save changes button
        Implementing logging for click line item mapping grid save changes button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click line item mapping grid save changes button')
            self._bill_and_audit_page.click_line_item_mapping_grid_save_changes_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click line item mapping grid save changes button')
            return is_clicked

    def click_show_summary_link(self):
        """
        Returning click show summary link
        Implementing logging for click show summary link functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click show summary link')
            self._bill_and_audit_page.click_show_summary_link()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click show summary link')
            return is_clicked

    def set_statement_summary_status(self, status):
        """
        Returning set statement summary status
        Implementing logging for set statement summary status functionality
        :param status:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set statement summary status')
            self._bill_and_audit_page.set_statement_summary_status(status)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set statement summary status')
            return is_set

    def click_statement_summary_save_button(self):
        """
        Returning click statement summary save button
        Implementing logging for click statement summary save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click statement summary save button')
            self._bill_and_audit_page.click_statement_summary_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click statement summary save button')
            return is_clicked

    def select_line_item_mapping_tab(self):
        """
        Returning select line item mapping tab
        Implementing logging for select line item mapping tab functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: select line item mapping tab')
            self._bill_and_audit_page.select_line_item_mapping_tab()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select line item mapping tab')
            return is_set

    def click_remove_all_mappings_button(self):
        """
        Returning click remove all mappings button
        Implementing logging for click remove all mappings button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click remove all mappings button')
            self._bill_and_audit_page.click_remove_all_mappings_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click remove all mappings button')
            return is_clicked

    def is_mapped_statements_validated(self):
        """
        Returning mapped statements validation status
        Implementing logging for is mapped statements validated functionality
        :return: True/False
        """
        is_mapped = None
        try:
            self.logger.info('Start: is mapped statements validated')
            is_mapped = self._bill_and_audit_page.is_mapped_statements_validated()
        except WebDriverException as exp:
            is_mapped = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is mapped statements validated')
            return is_mapped

    def is_all_line_items_unmapped(self):
        """
        Returning all line items un mapping status
        Implementing logging for is all line items unmapped functionality
        :return: True/False
        """
        is_mapped = None
        try:
            self.logger.info('Start: is all line items unmapped')
            is_mapped = self._bill_and_audit_page.is_all_line_items_unmapped()
        except WebDriverException as exp:
            is_mapped = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is all line items unmapped')
            return is_mapped

    def filter_inbound_statements_grid(self, column_name, filter_item_text):
        """
        Returning filter inbound statements grid
        Implementing logging for filter inbound statements grid functionality
        :param column_name:
        :param filter_item_text:
        :return: True/False
        """
        is_filtered = None
        try:
            self.logger.info('Start: filter inbound statements grid')
            self._bill_and_audit_page.filter_inbound_statements_grid(column_name, filter_item_text)
            is_filtered = True
        except WebDriverException as exp:
            is_filtered = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: filter inbound statements grid')
            return is_filtered

    def select_transactions_tab(self):
        """
        Returning select transactions tab
        Implementing logging for select transactions tab functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: select transactions tab')
            self._bill_and_audit_page.select_transactions_tab()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select transactions tab')
            return is_set

    def click_add_new_record_button(self):
        """
        Returning click add new record button
        Implementing logging for click add new record button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click add new record button')
            self._bill_and_audit_page.click_add_new_record_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click add new record button')
            return is_clicked

    def set_transactions_grid_first_row_transaction_code(self, transaction_code_prefix):
        """
        Returning set transactions grid first row transaction code
        Implementing logging for set transactions grid first row transaction code functionality
        :param transaction_code_prefix:
        :return: transaction_code
        """
        transaction_code = None
        try:
            self.logger.info('Start: set transactions grid first row transaction code')
            transaction_code = self._bill_and_audit_page.set_transactions_grid_first_row_transaction_code(transaction_code_prefix)
        except WebDriverException as exp:
            transaction_code = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set transactions grid first row transaction code')
            return transaction_code

    def set_value_in_transactions_grid_first_row_column(self, column_name, column_value):
        """
        Returning set value in transactions grid first row column
        Implementing logging for set value in transactions grid first row column functionality
        :param column_name:
        :param column_value:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set value in transactions grid first row column')
            if column_value != "":
                self._bill_and_audit_page.set_value_in_transactions_grid_first_row_column(column_name, column_value)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set value in transactions grid first row column')
            return is_set

    def select_transactions_grid_row_checkbox(self, row_identifier_text):
        """
        Returning select transactions grid row checkbox
        Implementing logging for select transactions grid row checkbox functionality
        :param row_identifier_text:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select transactions grid row checkbox')
            self._bill_and_audit_page.select_transactions_grid_row_checkbox(row_identifier_text)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select transactions grid row checkbox')
            return is_selected

    def click_hide_summary_link(self):
        """
        Returning click hide summary link
        Implementing logging for click hide summary link functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click hide summary link')
            self._bill_and_audit_page.click_hide_summary_link()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click hide summary link')
            return is_clicked

    def set_transactions_grid_dropdown_value(self, column_name, column_value):
        """
        Returning set transactions grid dropdown value
        Implementing logging for set transactions grid dropdown value functionality
        :param column_name:
        :param column_value:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set transactions grid dropdown value')
            self._bill_and_audit_page.set_transactions_grid_dropdown_value(column_name, column_value)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set transactions grid dropdown value')
            return is_set

    def click_transactions_grid_save_changes_button(self):
        """
        Returning click transactions grid save changes button
        Implementing logging for click transactions grid save changes button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click transactions grid save changes button')
            self._bill_and_audit_page.click_transactions_grid_save_changes_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click transactions grid save changes button')
            return is_clicked

    def click_transactions_grid_delete_button(self):
        """
        Returning click transactions grid delete button
        Implementing logging for click transactions grid delete button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click transactions grid delete button')
            self._bill_and_audit_page.click_transactions_grid_delete_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click transactions grid delete button')
            return is_clicked

    def get_transactions_grid_row_details(self):
        """
        Returning get transactions grid row details
        Implementing logging for get transactions grid row details functionality
        :return: transactions_grid_row_data
        """
        try:
            self.logger.info('Start: get transactions grid row details')
            return self._bill_and_audit_page.get_transactions_grid_row_details()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get transactions grid row details')

    def filter_transactions_grid(self, column_name, *filter_item_list):
        """
        Returning filter transactions grid
        Implementing logging for filter transactions grid functionality
        :param column_name:
        :param filter_item_list:
        :return: True/False
        """
        is_filtered = None
        try:
            self.logger.info('Start: filter transactions grid')
            self._bill_and_audit_page.filter_transactions_grid(column_name, filter_item_list)
            is_filtered = True
        except WebDriverException as exp:
            is_filtered = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: filter transactions grid')
            return is_filtered

    def click_map_unmapped_line_items_button(self):
        """
        Returning click map unmapped line items button
        Implementing logging for click map unmapped line items button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click map unmapped line items button')
            self._bill_and_audit_page.click_map_unmapped_line_items_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click map unmapped line items button')
            return is_clicked

    def click_map_line_items_delete_button(self):
        """
        Returning click map line items delete button
        Implementing logging for click map line items delete button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click map line items delete button')
            self._bill_and_audit_page.click_map_line_items_delete_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click map line items delete button')
            return is_clicked

    def select_disputes_tab(self):
        """
        Returning select disputes tab
        Implementing logging for select disputes tab functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select disputes tab')
            self._bill_and_audit_page.select_disputes_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select disputes tab')
            return is_selected

    def click_line_item_disputes_grid_first_row_inline_action_button(self):
        """
        Returning click line item disputes grid first row inline action button
        Implementing logging for click line item disputes grid first row inline action button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click line item disputes grid first row inline action button')
            self._bill_and_audit_page.click_line_item_disputes_grid_first_row_inline_action_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click line item disputes grid first row inline action button')
            return is_clicked

    def click_internal_statement_grid_save_changes_button(self):
        """
        Returning click internal statement grid save changes button
        Implementing logging for click internal statement grid save changes button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click internal statement grid save changes button')
            self._bill_and_audit_page.click_internal_statement_grid_save_changes_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click internal statement grid save changes button')
            return is_clicked

    def set_value_in_internal_statement_grid(self, column_name):
        """
        Returning set value in internal statement grid
        Implementing logging for set value in internal statement grid functionality
        :param column_name:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set value in internal statement grid')
            self._bill_and_audit_page.set_value_in_internal_statement_grid(column_name)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set value in internal statement grid')
            return is_set

    def select_statement_validation_tab(self):
        """
        Returning select statement validation tab
        Implementing logging for select statement validation tab functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select statement validation tab')
            self._bill_and_audit_page.select_statement_validation_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select statement validation tab')
            return is_selected

    def click_disputes_grid_first_row_inline_action_button(self):
        """
        Returning click disputes grid first row inline action button
        Implementing logging for click disputes grid first row inline action button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click disputes grid first row inline action button')
            self._bill_and_audit_page.click_disputes_grid_first_row_inline_action_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click disputes grid first row inline action button')
            return is_clicked

    def click_add_new_note_button(self):
        """
        Returning click add new note button
        Implementing logging for click add new note button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click add new note button')
            self._bill_and_audit_page.click_add_new_note_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click add new note button')
            return is_clicked

    def set_dispute_note(self, note_prefix):
        """
        Returning set dispute note
        Implementing logging for set dispute note functionality
        :param note_prefix:
        :return: note_to_set
        """
        note_to_set = None
        try:
            self.logger.info('Start: set dispute note')
            note_to_set = self._bill_and_audit_page.set_dispute_note(note_prefix)
        except WebDriverException as exp:
            note_to_set = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set dispute note')
            return note_to_set

    def click_add_new_note_save_button(self):
        """
        Returning click add new note save button
        Implementing logging for click add new note save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click add new note save button')
            self._bill_and_audit_page.click_add_new_note_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click add new note save button')
            return is_clicked

    def click_export_to_excel_button(self):
        """
        Returning click export to excel button
        Implementing logging for click export to excel button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click export to excel button')
            self._bill_and_audit_page.click_export_to_excel_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click export to excel button')
            return is_clicked

    def click_upload_statement_button(self):
        """
        Returning click upload statement button
        Implementing logging for click upload statement button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click upload statement button')
            self._bill_and_audit_page.click_upload_statement_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click upload statement button')
            return is_clicked

    def click_upload_statement_browse_button(self):
        """
        Returning click upload statement browse button
        Implementing logging for click upload statement browse button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click upload statement browse button')
            self._bill_and_audit_page.click_upload_statement_browse_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click upload statement browse button')
            return is_clicked

    def click_upload_statement_upload_button(self):
        """
        Returning click upload statement upload button
        Implementing logging for click upload statement upload button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click upload statement upload button')
            self._bill_and_audit_page.click_upload_statement_upload_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click upload statement upload button')
            return is_clicked

    def click_add_new_note_cancel_button(self):
        """
        Returning click add new note cancel button
        Implementing logging for click add new note cancel button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click add new note cancel button')
            self._bill_and_audit_page.click_add_new_note_cancel_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click add new note cancel button')
            return is_clicked

    def filter_disputes_notes_grid(self, column_name, filter_item):
        """
        Returning filter disputes notes grid
        Implementing logging for filter disputes notes grid functionality
        :param column_name:
        :param filter_item:
        :return: True/False
        """
        is_filtered = None
        try:
            self.logger.info('Start: filter disputes notes grid')
            self._bill_and_audit_page.filter_disputes_notes_grid(column_name, filter_item)
            is_filtered = True
        except WebDriverException as exp:
            is_filtered = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: filter disputes notes grid')
            return is_filtered

    def search_results_displayed_in_the_grid(self):
        """
        Returning search results displayed in the grid
        Implementing logging for search results displayed in the grid functionality
        :return: search results status- True/False
        """
        try:
            self.logger.info('Start: filter disputes notes grid')
            return self._bill_and_audit_page.search_results_displayed_in_the_grid()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: filter disputes notes grid')

    def select_statement_details_disputes_grid_first_row_checkbox(self):
        """
        Returning select statement details disputes grid first row checkbox
        Implementing logging for select statement details disputes grid first row checkbox functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select statement details disputes grid first row checkbox')
            self._bill_and_audit_page.select_statement_details_disputes_grid_first_row_checkbox()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select statement details disputes grid first row checkbox')
            return is_selected

    def click_win_dispute_button(self):
        """
        Returning click win dispute button
        Implementing logging for click win dispute button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click win dispute button')
            self._bill_and_audit_page.click_win_dispute_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click win dispute button')
            return is_clicked

    def set_discrepancy_source(self, dropdown_item):
        """
        Returning set discrepancy source
        Implementing logging for set discrepancy source functionality
        :param dropdown_item:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set discrepancy source')
            self._bill_and_audit_page.set_discrepancy_source(dropdown_item)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set discrepancy source')
            return is_set

    def set_win_dispute_description(self, description_prefix):
        """
        Returning set win dispute description
        Implementing logging for set win dispute description functionality
        :return: description
        """
        description = None
        try:
            self.logger.info('Start: set win dispute description')
            description = self._bill_and_audit_page.set_win_dispute_description(description_prefix)
        except WebDriverException as exp:
            description = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set win dispute description')
            return description

    def click_win_dispute_save_button(self):
        """
        Returning click win dispute save button
        Implementing logging for click win dispute save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click win dispute save button')
            self._bill_and_audit_page.click_win_dispute_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click win dispute save button')
            return is_clicked

    def click_win_dispute_cancel_button(self):
        """
        Returning click win dispute cancel button
        Implementing logging for click win dispute cancel button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click win dispute cancel button')
            self._bill_and_audit_page.click_win_dispute_cancel_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click win dispute cancel button')
            return is_clicked

    def filter_disputes_resolutions_grid(self, column_name, column_value):
        """
        Returning filter disputes resolutions grid
        Implementing logging for filter disputes resolutions grid functionality
        :param column_name:
        :param column_value:
        :return: True/False
        """
        is_filtered = None
        try:
            self.logger.info('Start: filter disputes resolutions grid')
            self._bill_and_audit_page.filter_disputes_resolutions_grid(column_name, column_value)
            is_filtered = True
        except WebDriverException as exp:
            is_filtered = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: filter disputes resolutions grid')
            return is_filtered

    def get_resolutions_grid_row_details(self):
        """
        Returning get resolutions grid row details
        Implementing logging for get resolutions grid row details functionality
        :return: resolutions_grid_row_data
        """
        try:
            self.logger.info('Start: get resolutions grid row details')
            return self._bill_and_audit_page.get_resolutions_grid_row_details()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get resolutions grid row details')

    def click_lose_dispute_button(self):
        """
        Returning click lose dispute button
        Implementing logging for click lose dispute button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click lose dispute button')
            self._bill_and_audit_page.click_lose_dispute_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click lose dispute button')
            return is_clicked

    def get_inbound_statement_grid_first_row_data(self, column_name):
        """
        Returning get inbound statement grid first row data
        Implementing logging for get inbound statement grid first row data functionality
        :param column_name:
        :return: column_value
        """
        column_value = None
        try:
            self.logger.info('Start: get inbound statement grid first row data')
            column_value = self._bill_and_audit_page.get_inbound_statement_grid_first_row_data(column_name)
        except WebDriverException as exp:
            column_value = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get inbound statement grid first row data')
            return column_value

    def clear_inbound_statement_multi_select_kendo_dropdown(self, label):
        """
        Returning clear inbound statement multi select kendo dropdown
        Implementing logging for clear inbound statement multi select kendo dropdown functionality
        :param label:
        :return: True/False
        """
        is_cleared = None
        try:
            self.logger.info('Start: clear inbound statement multi select kendo dropdown')
            self._bill_and_audit_page.clear_multiselect_kendo_dropdown(label)
            is_cleared = True
        except WebDriverException as exp:
            is_cleared = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: clear inbound statement multi select kendo dropdown')
            return is_cleared

    def get_statement_summary_status(self):
        """
        Returning get statement summary status
        Implementing logging for get statement summary status functionality
        :return: statement_summary_status
        """
        statement_summary_status = None
        try:
            self.logger.info('Start: get statement summary status')
            statement_summary_status = self._bill_and_audit_page.get_statement_summary_status()
        except WebDriverException as exp:
            statement_summary_status = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get statement summary status')
            return statement_summary_status

    def click_add_resolution_button(self):
        """
        Returning click add resolution button
        Implementing logging for click add resolution button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click add resolution button')
            self._bill_and_audit_page.click_add_resolution_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click add resolution button')
            return is_clicked

    def set_action_type(self, action_type):
        """
        Returning set action type
        Implementing logging for set action type functionality
        :param action_type:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set action type')
            self._bill_and_audit_page.set_action_type(action_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set action type')
            return is_set

    def set_credit_amount(self, credit_amount):
        """
        Returning set credit amount
        Implementing logging for set credit amount functionality
        :param credit_amount:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set credit amount')
            self._bill_and_audit_page.set_credit_amount(credit_amount)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set credit amount')
            return is_set

    def set_description(self, description_prefix):
        """
        Returning set description
        Implementing logging for set description functionality
        :param description_prefix:
        :return: set_description
        """
        description = None
        try:
            self.logger.info('Start: set description')
            description = self._bill_and_audit_page.set_description(description_prefix)
        except WebDriverException as exp:
            description = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set description')
            return description

    def click_add_resolution_save_button(self):
        """
        Returning click add resolution save button
        Implementing logging for click add resolution save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click add resolution save button')
            self._bill_and_audit_page.click_add_resolution_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click add resolution save button')
            return is_clicked

    def set_value_in_resolution_grid(self, column_name, column_value):
        """
        Returning set value in resolution grid
        Implementing logging for set value in resolution grid functionality
        :param column_name:
        :param column_value:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set value in resolution grid')
            self._bill_and_audit_page.set_value_in_resolution_grid(column_name, column_value)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set value in resolution grid')
            return is_set

    def set_description_in_resolution_grid(self, description_prefix):
        """
        Returning set description in resolution grid
        Implementing logging for set description in resolution grid functionality
        :param description_prefix:
        :return: description_column_value
        """
        description_column_value = None
        try:
            self.logger.info('Start: set description in resolution grid')
            description_column_value = self._bill_and_audit_page.set_description_in_resolution_grid(description_prefix)
        except WebDriverException as exp:
            description_column_value = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set description in resolution grid')
            return description_column_value

    def set_value_in_resolution_grid_dropdown(self, column_name, column_value):
        """
        Returning set value in resolution grid dropdown
        Implementing logging for set value in resolution grid dropdown functionality
        :param column_name:
        :param column_value:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set value in resolution grid dropdown')
            self._bill_and_audit_page.set_value_in_resolution_grid_dropdown(column_name, column_value)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set value in resolution grid dropdown')
            return is_set

    def click_resolution_grid_save_changes_button(self):
        """
        Returning click resolution grid save changes button
        Implementing logging for click resolution grid save changes button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click resolution grid save changes button')
            self._bill_and_audit_page.click_resolution_grid_save_changes_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click resolution grid save changes button')
            return is_clicked

    def filter_resolution_grid(self, column_name, filter_item_text):
        """
        Returning filter resolution grid
        Implementing logging for filter resolution grid functionality
        :param column_name:
        :param filter_item_text:
        :return: True/False
        """
        is_filtered = None
        try:
            self.logger.info('Start: filter resolution grid')
            self._bill_and_audit_page.filter_resolution_grid(column_name, filter_item_text)
            is_filtered = True
        except WebDriverException as exp:
            is_filtered = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: filter resolution grid')
            return is_filtered

    def click_resolution_grid_first_row_inline_action_button(self):
        """
        Returning click resolution grid first row inline action button
        Implementing logging for click resolution grid first row inline action button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click resolution grid first row inline action button')
            self._bill_and_audit_page.click_resolution_grid_first_row_inline_action_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click resolution grid first row inline action button')
            return is_clicked

    def select_delete_inline_item(self):
        """
        Returning select delete inline item
        Implementing logging for select delete inline item functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select delete inline item')
            self._bill_and_audit_page.select_delete_inline_item()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select delete inline item')
            return is_selected

    def select_finalize_resolution_inline_item(self):
        """
        Returning select finalize resolution inline item
        Implementing logging for select finalize resolution inline item functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select finalize resolution inline item')
            self._bill_and_audit_page.select_finalize_resolution_inline_item()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select finalize resolution inline item')
            return is_selected

    def click_resolution_grid_cancel_changes_button(self):
        """
        Returning click resolution grid cancel changes button
        Implementing logging for click resolution grid cancel changes button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click resolution grid cancel changes button')
            self._bill_and_audit_page.click_resolution_grid_cancel_changes_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click resolution grid cancel changes button')
            return is_clicked

    def click_entry_complete_button(self):
        """
        Returning click entry complete button
        Implementing logging for click entry complete button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click entry complete button')
            self._bill_and_audit_page.click_entry_complete_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click entry complete button')
            return is_clicked

    def select_statement_validation_grid_first_row_checkbox(self):
        """
        Returning select statement validation grid first row checkbox
        Implementing logging for select statement validation grid first row checkbox functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select statement validation grid first row checkbox')
            self._bill_and_audit_page.select_statement_validation_grid_first_row_checkbox()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select statement validation grid first row checkbox')
            return is_selected

    def click_statement_validation_grid_first_row_inline_action_button(self):
        """
        Returning click statement validation grid first row inline action button
        Implementing logging for click statement validation grid first row inline action button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click statement validation grid first row inline action button')
            self._bill_and_audit_page.click_statement_validation_grid_first_row_inline_action_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click statement validation grid first row inline action button')
            return is_clicked

    def select_statement_validation_grid_inline_action_item(self, item_name):
        """
        Returning select statement validation grid inline action item
        Implementing logging for select statement validation grid inline action item functionality
        :param item_name:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select statement validation grid inline action item')
            self._bill_and_audit_page.select_statement_validation_grid_inline_action_item(item_name)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select statement validation grid inline action item')
            return is_selected

    def set_value_in_disputes_grid_row(self, column_name, column_value):
        """
        Returning set value in disputes grid row
        Implementing logging for set value in disputes grid row functionality
        :param column_name:
        :param column_value:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set value in disputes grid row')
            self._bill_and_audit_page.set_value_in_disputes_grid_row(column_name, column_value)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set value in disputes grid row')
            return is_set

    def click_disputes_grid_save_changes_button(self):
        """
        Returning click disputes grid save changes button
        Implementing logging for click disputes grid save changes button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click disputes grid save changes button')
            self._bill_and_audit_page.click_disputes_grid_save_changes_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click disputes grid save changes button')
            return is_clicked

    def get_resolutions_grid_row_data(self):
        """
        Returning get resolutions grid row data
        Implementing logging for get resolutions grid row dta functionality
        :return: resolutions_grid_row_data
        """
        try:
            self.logger.info('Start: get resolutions grid row data')
            return self._bill_and_audit_page.get_resolutions_grid_row_data()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get resolutions grid row data')

    def expand_current_cycles_section(self):
        """
        Returning expand current cycles section
        Implementing logging for expand current cycles section functionality
        :return: True/False
        """
        is_expanded = None
        try:
            self.logger.info('Start: expand current cycles section')
            self._bill_and_audit_page.expand_current_cycles_section()
            is_expanded = True
        except WebDriverException as exp:
            is_expanded = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: expand current cycles section')
            return is_expanded

    def expand_dispute_contact_section(self):
        """
        Returning expand dispute contact section
        Implementing logging for expand dispute contact section functionality
        :return: True/False
        """
        is_expanded = None
        try:
            self.logger.info('Start: expand dispute contact section')
            self._bill_and_audit_page.expand_dispute_contact_section()
            is_expanded = True
        except WebDriverException as exp:
            is_expanded = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: expand dispute contact section')
            return is_expanded

    def set_billing_cycle_template(self, billing_cycle_template):
        """
        Returning set billing cycle template
        Implementing logging for set billing cycle template functionality
        :param billing_cycle_template:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set billing cycle template')
            self._bill_and_audit_page.set_billing_cycle_template(billing_cycle_template)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set billing cycle template')
            return is_set

    def set_billing_cycle_begin_date(self, begin_date):
        """
        Returning set billing cycle begin date
        Implementing logging for set billing cycle begin date functionality
        :param begin_date:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set billing cycle begin date')
            self._bill_and_audit_page.set_billing_cycle_begin_date(begin_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set billing cycle begin date')
            return is_set

    def set_residual_traffic_window(self, residual_traffic_window):
        """
        Returning set residual traffic window
        Implementing logging for set residual traffic window functionality
        :param residual_traffic_window:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set residual traffic window')
            self._bill_and_audit_page.set_residual_traffic_window(residual_traffic_window)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set residual traffic window')
            return is_set

    def click_audit_account_save_button(self):
        """
        Returning click audit account save button
        Implementing logging for click audit account save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click audit account save button')
            self._bill_and_audit_page.click_audit_account_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click audit account save button')
            return is_clicked

    def click_audit_account_save_button_without_firstname_lastname(self):
        """
        Returning click audit account save button without firstname lastname
        Implementing logging for click audit account save button without firstname lastname functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click audit account save button without firstname lastname')
            self._bill_and_audit_page.click_audit_account_save_button_without_firstname_lastname()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click audit account save button without firstname lastname')
            return is_clicked

    def set_dispute_contact_first_name(self, first_name, clear_field):
        """
        Returning set dispute contact first name
        Implementing logging for set dispute contact first name functionality
        :param first_name:
        :param clear_field:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set dispute contact first name')
            self._bill_and_audit_page.set_dispute_contact_first_name(first_name, clear_field)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set dispute contact first name')
            return is_set

    def set_dispute_contact_last_name(self, last_name, clear_field):
        """
        Returning set dispute contact last name
        Implementing logging for set dispute contact last name functionality
        :param last_name:
        :param clear_field:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set dispute contact last name')
            self._bill_and_audit_page.set_dispute_contact_last_name(last_name, clear_field)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set dispute contact last name')
            return is_set

    def set_dispute_contact_state(self, state):
        """
        Returning set dispute contact state
        Implementing logging for set dispute contact state functionality
        :param state:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set dispute contact state')
            self._bill_and_audit_page.set_dispute_contact_state(state)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set dispute contact state')
            return is_set

    def set_dispute_contact_email(self, email):
        """
        Returning set dispute contact email
        Implementing logging for set dispute contact email functionality
        :param email:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set dispute contact email')
            self._bill_and_audit_page.set_dispute_contact_email(email)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set dispute contact email')
            return is_set

    def close_current_pop_up(self, pop_up_name):
        """
        Returning close current pop up
        Implementing logging for close current pop up functionality
        :param pop_up_name:
        :return: True/False
        """
        is_closed = None
        try:
            self.logger.info('Start: close current pop up')
            self._bill_and_audit_page.close_current_pop_up(pop_up_name)
            is_closed = True
        except WebDriverException as exp:
            is_closed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: close current pop up')
            return is_closed

    def click_outbound_statement_grid_first_row_inline_action_button(self):
        """
        Returning click outbound statement grid first row inline action button
        Implementing logging for click outbound statement grid first row inline action button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click outbound statement grid first row inline action button')
            self._bill_and_audit_page.click_outbound_statement_grid_first_row_inline_action_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click outbound statement grid first row inline action button')
            return is_clicked

    def is_create_non_recurring_charges_button_not_present(self):
        """
        Returning create non recurring charges button presence status
        Implementing is create non recurring charges button not present functionality
        Returns True if create non recurring charges button is not present
        :return: True/False
        """
        try:
            self.logger.info('Start: is create non recurring charges button not present')
            return self._bill_and_audit_page.is_create_non_recurring_charges_button_not_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is create non recurring charges button not present')

    def click_statement_fields_grid_first_row_checkbox(self):
        """
        Returning click statement fields grid first row checkbox
        Implementing logging for click statement fields grid first row checkbox functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click statement fields grid first row checkbox')
            self._bill_and_audit_page.click_statement_fields_grid_first_row_checkbox()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click statement fields grid first row checkbox')
            return is_clicked

    def click_statement_fields_bulk_edit_button(self):
        """
        Returning click statement fields bulk edit button
        Implementing logging for click statement fields bulk edit button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click statement fields bulk edit button')
            self._bill_and_audit_page.click_statement_fields_bulk_edit_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click statement fields bulk edit button')
            return is_clicked

    def set_statement_default_value(self, value):
        """
        Returning set statement default value
        Implementing logging for set statement default value functionality
        :param value:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set statement default value')
            self._bill_and_audit_page.set_statement_default_value(value)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set statement default value')
            return is_set

    def click_statement_fields_save_changes_button(self):
        """
        Returning click statement fields save changes button
        Implementing logging for click statement fields save changes button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click statement fields save changes button')
            self._bill_and_audit_page.click_statement_fields_save_changes_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click statement fields save changes button')
            return is_clicked

    def set_suspect_status(self, *suspect_status):
        """
        Returning set suspect status
        Implementing logging for set suspect status functionality
        :param suspect_status:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set suspect status')
            self._bill_and_audit_page.set_suspect_status(suspect_status)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set suspect status')
            return is_set

    def select_deselect_suspect_flag_ignored_checkbox(self):
        """
        Returning select deselect suspect flag ignored checkbox
        Implementing logging for select deselect suspect flag ignored checkbox functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select deselect suspect flag ignored checkbox')
            self._bill_and_audit_page.select_deselect_suspect_flag_ignored_checkbox()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select deselect suspect flag ignored checkbox')
            return is_selected

    def click_suspect_flags_grid_save_changes_button(self):
        """
        Returning click suspect flags grid save changes button
        Implementing logging for click suspect flags grid save changes button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click suspect flags grid save changes button')
            self._bill_and_audit_page.click_suspect_flags_grid_save_changes_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click suspect flags grid save changes button')
            return is_clicked

    def click_add_financial_charges_button(self):
        """
        Returning click add financial charges button
        Implementing logging for click add financial charges button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click add financial charges button')
            self._bill_and_audit_page.click_add_financial_charges_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click add financial charges button')
            return is_clicked

    def set_adjustment_charge_product(self, product_name_prefix):
        """
        Returning set adjustment charge product
        Implementing logging for set adjustment charge product functionality
        :param product_name_prefix:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set adjustment charge product')
            self._bill_and_audit_page.set_adjustment_charge_product(product_name_prefix)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set adjustment charge product')
            return is_set

    def set_adjustment_charge_begin_date(self, begin_date):
        """
        Returning set adjustment charge begin date
        Implementing logging for set adjustment charge begin date functionality
        :param begin_date:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set adjustment charge begin date')
            if begin_date != "":
                self._bill_and_audit_page.set_adjustment_charge_begin_date(begin_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set adjustment charge begin date')
            return is_set

    def set_adjustment_charge_end_date(self, end_date):
        """
        Returning set adjustment charge end date
        Implementing logging for set adjustment charge end date functionality
        :param end_date:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set adjustment charge end date')
            if end_date != "":
                self._bill_and_audit_page.set_adjustment_charge_end_date(end_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set adjustment charge end date')
            return is_set

    def set_adjustment_charge_currency(self, currency):
        """
        Returning set adjustment charge currency
        Implementing logging for set adjustment charge currency functionality
        :param currency:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set adjustment charge currency')
            self._bill_and_audit_page.set_adjustment_charge_currency(currency)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set adjustment charge currency')
            return is_set

    def set_adjustment_charge_amount(self, amount):
        """
        Returning set adjustment charge amount
        Implementing logging for set adjustment charge amount functionality
        :param amount:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set adjustment charge amount')
            self._bill_and_audit_page.set_adjustment_charge_amount(amount)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set adjustment charge amount')
            return is_set

    def click_create_adjustment_charge_save_button(self):
        """
        Returning click create adjustment charge save button
        Implementing logging for click create adjustment charge save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click create adjustment charge save button')
            self._bill_and_audit_page.click_create_adjustment_charge_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click create adjustment charge save button')
            return is_clicked

    def click_adjustment_charges_grid_first_row_inline_action_button(self):
        """
        Returning adjustment charges grid first row inline action button
        Implementing logging for adjustment charges grid first row inline action button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: adjustment charges grid first row inline action button')
            self._bill_and_audit_page.click_adjustment_charges_grid_first_row_inline_action_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: adjustment charges grid first row inline action button')
            return is_clicked

    def select_adjustment_charges_reject_inline_item(self, inline_item):
        """
        Returning select adjustment charges reject inline item
        Implementing logging for select adjustment charges reject inline item functionality
        :param inline_item:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select adjustment charges reject inline item')
            self._bill_and_audit_page.select_adjustment_charges_reject_inline_item(inline_item)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select adjustment charges reject inline item')
            return is_selected

    def select_adjustments_tab(self):
        """
        Returning select adjustments tab
        Implementing logging for select adjustments tab functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select adjustments tab')
            self._bill_and_audit_page.select_adjustments_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select adjustments tab')
            return is_selected

    def click_add_new_adjustment_statement_button(self):
        """
        Returning click add new adjustment statement button
        Implementing logging for click add new adjustment statement button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click add new adjustment statement button')
            self._bill_and_audit_page.click_add_new_adjustment_statement_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click add new adjustment statement button')
            return is_clicked

    def click_adjustments_grid_first_row_inline_action_button(self):
        """
        Returning click adjustments grid first row inline action button
        Implementing logging for click adjustments grid first row inline action button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click adjustments grid first row inline action button')
            self._bill_and_audit_page.click_adjustments_grid_first_row_inline_action_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click adjustments grid first row inline action button')
            return is_clicked

    def select_adjustments_delete_inline_action_item(self):
        """
        Returning select adjustments delete inline action item
        Implementing logging for select adjustments delete inline action item functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select adjustments delete inline action item')
            self._bill_and_audit_page.select_adjustments_delete_inline_action_item()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select adjustments delete inline action item')
            return is_selected

    def does_usage_charges_grid_have_no_records(self):
        """
        Returning usage charges grid has no records status
        Implementing does usage charges grid have no records functionality
        Returns True if usage charges grid has no records
        :return: True/False
        """
        try:
            self.logger.info('Start: does usage charges grid have no records')
            return self._bill_and_audit_page.does_usage_charges_grid_have_no_records()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: does usage charges grid have no records')

    def click_view_test_statement_file_button(self):
        """
        Returning click view test statement file button
        Implementing logging for click view test statement file button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click view test statement file button')
            self._bill_and_audit_page.click_view_test_statement_file_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click view test statement file button')
            return is_clicked

    def is_test_statements_error_message_given(self):
        """
        Returning test statements error message given status
        Implementing logging for is test statements error message given functionality
        :return: True/False
        """
        is_given = None
        try:
            self.logger.info('Start: is test statements error message given')
            self._bill_and_audit_page.is_test_statements_error_message_given()
            is_given = True
        except WebDriverException as exp:
            is_given = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is test statements error message given')
            return is_given

    def set_account_for_search(self, *account_list):
        """
        Returning set account for search
        Implementing logging for set account for search functionality
        :param account_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set account for search')
            self._bill_and_audit_page.set_account_for_search(account_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set account for search')
            return is_set

    def set_value_in_outbound_transactions_grid_amount_column(self, column_name, column_value):
        """
        Returning set value in outbound transactions grid amount column
        Implementing logging for set value in outbound transactions grid amount column functionality
        :param column_name:
        :param column_value:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set value in outbound transactions grid amount column')
            if column_value != "":
                self._bill_and_audit_page.set_value_in_outbound_transactions_grid_amount_column(column_name, column_value)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set value in outbound transactions grid amount column')
            return is_set

    def set_value_in_non_traffic_charges_grid_column(self, column_name, column_value):
        """
        Returning set value in non traffic charges grid column
        Implementing logging for set value in non traffic charges grid column functionality
        :param column_name:
        :param column_value:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set value in non traffic charges grid column')
            self._bill_and_audit_page.set_value_in_non_traffic_charges_grid_column(column_name, column_value)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set value in non traffic charges grid column')
            return is_set

    def click_non_traffic_charges_save_changes_button(self):
        """
        Returning click non traffic charges save changes button
        Implementing logging for click non traffic charges save changes button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click non traffic charges save changes button')
            self._bill_and_audit_page.click_non_traffic_charges_save_changes_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click non traffic charges save changes button')
            return is_clicked

    def click_non_recurring_charge_save_button_without_statement_dates(self):
        """
        Returning click non recurring charge save button without statement dates
        Implementing logging for click non recurring charge save button without statement dates functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click non recurring charge save button without statement dates')
            self._bill_and_audit_page.click_non_recurring_charge_save_button_without_statement_dates()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click non recurring charge save button without statement dates')
            return is_clicked

    def set_account(self, *account_list):
        """
        Returning set account
        Implementing logging for set account functionality
        :param account_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set account')
            if len(account_list) > 0:
                self._bill_and_audit_page.set_account(account_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set account')
            return is_set

    def set_shortfall_grid_actions(self, action_item):
        """
        Returning set shortfall grid actions
        Implementing logging for set shortfall grid actions functionality
        :param action_item:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set shortfall grid actions')
            self._bill_and_audit_page.set_shortfall_grid_actions(action_item)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set shortfalls grid actions')
            return is_set

    def click_shortfall_grid_save_changes_button(self):
        """
        Returning click shortfall grid save changes button
        Implementing logging for click shortfall grid save changes button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click shortfall grid save changes button')
            self._bill_and_audit_page.click_shortfall_grid_save_changes_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click shortfall grid save changes button')
            return is_clicked

    def get_shortfall_grid_status_column_value(self):
        """
        Returning shortfall grid status column value
        Implementing logging for get shortfall grid status column value functionality
        :return: status_column_value
        """
        status_column_value = None
        try:
            self.logger.info('Start: get shortfall grid status column value')
            status_column_value = self._bill_and_audit_page.get_shortfall_grid_status_column_value()
        except WebDriverException as exp:
            status_column_value = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get shortfall grid status column value')
            return status_column_value

    def is_new_adjustment_charge_created(self):
        """
        Returning is new adjustment charge created
        Implementing logging for is new adjustment charge created functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is new adjustment charge created')
            return self._bill_and_audit_page.is_new_adjustment_charge_created()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is new adjustment charge created')

    def get_outbound_statement_grid_row_data(self):
        """
        Returning get outbound statement grid row data
        Implementing logging for get outbound statement grid row data functionality
        :return: outbound_statement_grid_row_data
        """
        try:
            self.logger.info('Start: is new adjustment charge created')
            return self._bill_and_audit_page.get_outbound_statement_grid_row_data()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is new adjustment charge created')

    def select_adjustment_charge_grid_first_row_checkbox(self):
        """
        Returning select adjustment charge grid first row checkbox
        Implementing logging for select adjustment charge grid first row checkbox functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select adjustment charge grid first row checkbox')
            self._bill_and_audit_page.select_adjustment_charge_grid_first_row_checkbox()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select adjustment charge grid first row checkbox')
            return is_selected

    def click_assign_to_new_folder_button(self):
        """
        Returning click assign to new folder button
        Implementing logging for click assign to new folder button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click assign to new folder button')
            self._bill_and_audit_page.click_assign_to_new_folder_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click assign to new folder button')
            return is_clicked

    def set_assign_adjustment_charge_folder_name(self, folder_name_prefix):
        """
        Returning set assign adjustment charge folder name
        Implementing logging for set assign adjustment charge folder name functionality
        :param folder_name_prefix:
        :return: folder_name
        """
        folder_name = None
        try:
            self.logger.info('Start: set assign adjustment charge folder name')
            folder_name = self._bill_and_audit_page.set_assign_adjustment_charge_folder_name(folder_name_prefix)
        except WebDriverException as exp:
            folder_name = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set assign adjustment charge folder name')
            return folder_name

    def set_adjustment_type(self, adjustment_type):
        """
        Returning set adjustment type
        Implementing logging for set adjustment type functionality
        :param adjustment_type:
        :return: True/Flase
        """
        is_set = None
        try:
            self.logger.info('Start: set adjustment type')
            self._bill_and_audit_page.set_adjustment_type(adjustment_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set adjustment type')
            return is_set

    def click_assign_adjustment_charge_save_button(self):
        """
        Returning click assign adjustment charge save button
        Implementing logging for click assign adjustment charge save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click assign adjustment charge save button')
            self._bill_and_audit_page.click_assign_adjustment_charge_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click assign adjustment charge save button')
            return is_clicked

    def set_adjustment_folder_summary_status(self, status):
        """
        Returning set adjustment folder summary status
        Implementing logging for set adjustment folder summary status functionality
        :param status:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set adjustment folder summary status')
            self._bill_and_audit_page.set_adjustment_folder_summary_status(status)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set adjustment folder summary status')
            return is_set

    def click_adjustment_folder_summary_save_button(self, status_to_be_changed):
        """
        Returning click adjustment folder summary save button
        Implementing logging for click adjustment folder summary save button functionality
        :param status_to_be_changed
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click adjustment folder summary save button')
            self._bill_and_audit_page.click_adjustment_folder_summary_save_button(status_to_be_changed)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click adjustment folder summary save button')
            return is_clicked

    def is_new_financial_charge_created(self):
        """
        Returning is new financial charge created
        Implementing logging for is new financial charge created functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is new financial charge created')
            return self._bill_and_audit_page.is_new_financial_charge_created()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is new financial charge created')

    def is_line_item_mapping_tab_loaded_properly(self):
        """
        Returning is line item mapping tab loaded properly
        Implementing logging for is line item mapping tab loaded properly functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is line item mapping tab loaded properly')
            return self._bill_and_audit_page.is_line_item_mapping_tab_loaded_properly()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is line item mapping tab loaded properly')

    def is_audit_account_info_pop_up_loaded_properly(self):
        """
        Returning is audit account info pop up loaded properly
        Implementing logging for is audit account info pop up loaded properly functionality
        :return: True/Flase
        """
        try:
            self.logger.info('Start: is audit account info pop up loaded properly')
            return self._bill_and_audit_page.is_audit_account_info_pop_up_loaded_properly()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is audit account info pop up loaded properly')

    def is_bill_account_info_pop_up_loaded_properly(self):
        """
        Returning is bill account info pop up loaded properly
        Implementing logging for is bill account info pop up loaded properly functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is bill account info pop up loaded properly')
            return self._bill_and_audit_page.is_bill_account_info_pop_up_loaded_properly()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is bill account info pop up loaded properly')

    def is_adjustments_tab_loaded_properly(self):
        """
        Returning is adjustments tab loaded properly
        Implementing logging for is adjustments tab loaded properly functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is adjustments tab loaded properly')
            return self._bill_and_audit_page.is_adjustments_tab_loaded_properly()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is adjustments tab loaded properly')

    def is_statement_details_page_loaded_properly(self):
        """
        Returning is statement details page loaded properly
        Implementing logging for is statement details page loaded properly functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is statement details page loaded properly')
            return self._bill_and_audit_page.is_statement_details_page_loaded_properly()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is statement details page loaded properly')

    def is_usage_charges_tab_loaded_properly(self):
        """
        Returning is usage charges tab loaded properly
        Implementing logging for is usage charges tab loaded properly functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is usage charges tab loaded properly')
            return self._bill_and_audit_page.is_usage_charges_tab_loaded_properly()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is usage charges tab loaded properly')

    def is_non_traffic_charges_tab_loaded_properly(self):
        """
        Returning is non traffic charges tab loaded properly
        Implementing logging for is non traffic charges tab loaded properly functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is non traffic charges tab loaded properly')
            return self._bill_and_audit_page.is_non_traffic_charges_tab_loaded_properly()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is non traffic charges tab loaded properly')

    def is_win_dispute_button_present(self):
        """
        Returning is win dispute button present
        Implementing logging for is win dispute button present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is win dispute button present')
            return self._bill_and_audit_page.is_win_dispute_button_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is win dispute button present')

    def is_lose_dispute_button_present(self):
        """
        Returning is lose dispute button present
        Implementing logging for is lose dispute button present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is lose dispute button present')
            return self._bill_and_audit_page.is_lose_dispute_button_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is lose dispute button present')

    def is_statement_validation_tab_loaded_properly(self):
        """
        Returning is statement validation tab loaded properly
        Implementing logging for is statement validation tab loaded properly functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is statement validation tab loaded properly')
            return self._bill_and_audit_page.is_statement_validation_tab_loaded_properly()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is statement validation tab loaded properly')

    def set_received_charges_grid_product_name(self, product_name):
        """
        Returning set received charges grid product name
        Implementing logging for set received charges grid product name functionality
        :param product_name:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set received charges grid product name')
            self._bill_and_audit_page.set_received_charges_grid_product_name(product_name)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set received charges grid product name')
            return is_set

    def validate_date_format(self, actual_date, expected_date_format):
        """
        Returning validate date format
        Implementing logging for date format functionality
        :param actual_date:
        :param expected_date_format:
        :return: True/False
        """
        status = None
        try:
            self.logger.info('Start: validate date format')
            if actual_date.lower() == 'the grid is empty' or actual_date.strip() == '':
                status = True
            else:
                status = self._bill_and_audit_page.validate_date_format(actual_date, expected_date_format)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: validate date format')
            return status

    def validate_currency_format(self, actual_value, expected_locale):
        """
        Returning validate currency format
        Implementing logging for currency format functionality
        :param actual_value:
        :param expected_locale:
        :return: True/False
        """
        status = None
        try:
            self.logger.info('Start: validate currency format')
            if actual_value.lower() == 'the grid is empty' or actual_value.strip() == '':
                status = True
            else:
                status = self._bill_and_audit_page.validate_currency_format(actual_value, expected_locale)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: validate currency format')
            return status

    def get_outbound_statements_begin_date(self):
        """
        Returning get outbound statements begin date
        Implementing logging for get outbound statements begin date functionality
        :return: begin date 
        """
        try:
            self.logger.info('Start: get outbound statements begin date')
            return self._bill_and_audit_page.get_outbound_statements_begin_date()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get outbound statements begin date')

    def get_outbound_statements_end_date(self):
        """
        Returning get outbound statements end date
        Implementing logging for get outbound statements end date functionality
        :return: end date 
        """
        try:
            self.logger.info('Start: get outbound statements end date')
            return self._bill_and_audit_page.get_outbound_statements_end_date()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get outbound statements end date')

    def get_outbound_statements_grid_begin_date(self):
        """
        Returning get outbound statements grid begin date
        Implementing logging for get outbound statements grid begin date functionality
        :return: begin date 
        """
        try:
            self.logger.info('Start: get outbound statements grid begin date')
            return self._bill_and_audit_page.get_outbound_statements_grid_begin_date()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get outbound statements grid begin date')

    def get_outbound_statements_grid_end_date(self):
        """
        Returning get outbound statements grid end date
        Implementing logging for get outbound statements grid end date functionality
        :return: end date 
        """
        try:
            self.logger.info('Start: get outbound statements grid end date')
            return self._bill_and_audit_page.get_outbound_statements_grid_end_date()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get outbound statements grid end date')

    def get_outbound_statements_grid_total_volume(self):
        """
        Returning get outbound statements grid total volume
        Implementing logging for get outbound statements grid total volume functionality
        :return: total volume
        """
        try:
            self.logger.info('Start: get outbound statements grid total volume')
            return self._bill_and_audit_page.get_outbound_statements_grid_total_volume()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get outbound statements grid total volume')

    def get_outbound_statements_grid_amount_idr(self):
        """
        Returning get outbound statements grid amount idr
        Implementing logging for get outbound statements grid amount idr functionality
        :return: amount idr
        """
        try:
            self.logger.info('Start: get outbound statements grid amount idr')
            return self._bill_and_audit_page.get_outbound_statements_grid_amount_idr()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get outbound statements grid amount idr')

    def get_outbound_statements_grid_amount_billing_currency(self):
        """
        Returning get outbound statements grid amount billing currency
        Implementing logging for get outbound statements grid amount billing currency functionality
        :return: amount billing currency
        """
        try:
            self.logger.info('Start: get outbound statements grid amount billing currency')
            return self._bill_and_audit_page.get_outbound_statements_grid_amount_billing_currency()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get outbound statements grid amount billing currency')

    def click_outbound_statements_grid_first_row_inline_action_button(self):
        """
        Returning click outbound statements grid first row inline action button
        Implementing logging for click outbound statements grid first row inline action button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click outbound statements grid first row inline action button')
            self._bill_and_audit_page.click_outbound_statements_grid_first_row_inline_action_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click outbound statements grid first row inline action button')
            return is_clicked

    def get_outbound_statement_summary_begin_date(self):
        """
        Returning get outbound statement summary begin date
        Implementing logging for get outbound statement summary begin date functionality
        :return: begin date
        """
        try:
            self.logger.info('Start: get outbound statement summary begin date')
            return self._bill_and_audit_page.get_outbound_statement_summary_begin_date()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get outbound statement summary begin date')

    def get_outbound_statement_summary_end_date(self):
        """
        Returning get outbound statement summary end date
        Implementing logging for get outbound statement summary end date functionality
        :return: end date
        """
        try:
            self.logger.info('Start: get outbound statement summary end date')
            return self._bill_and_audit_page.get_outbound_statement_summary_end_date()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get outbound statement summary end date')

    def get_outbound_statement_summary_last_modified_date(self):
        """
        Returning get outbound statement summary last modified date
        Implementing logging for get outbound statement summary last modified date functionality
        :return: last modified date
        """
        try:
            self.logger.info('Start: get outbound statement summary last modified date')
            return self._bill_and_audit_page.get_outbound_statement_summary_last_modified_date()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get outbound statement summary last modified date')

    def get_inbound_statements_begin_date(self):
        """
        Returning get inbound statements begin date
        Implementing logging for get inbound statements begin date functionality
        :return: begin date
        """
        try:
            self.logger.info('Start: get inbound statements begin date')
            return self._bill_and_audit_page.get_inbound_statements_begin_date()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get inbound statements begin date')

    def get_inbound_statements_end_date(self):
        """
        Returning get inbound statements end date
        Implementing logging for get inbound statements end date functionality
        :return: end date
        """
        try:
            self.logger.info('Start: get inbound statements end date')
            return self._bill_and_audit_page.get_inbound_statements_end_date()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get inbound statements end date')

    def get_inbound_statements_grid_won_amount(self):
        """
        Returning get inbound statements grid won amount
        Implementing logging for get inbound statements grid won amount functionality
        :return: won amount
        """
        try:
            self.logger.info('Start: get inbound statements grid won amount')
            return self._bill_and_audit_page.get_inbound_statements_grid_won_amount()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get inbound statements grid won amount')

    def get_inbound_statements_grid_lost_amount(self):
        """
        Returning get inbound statements grid lost amount
        Implementing logging for get inbound statements grid lost amount functionality
        :return: lost amount
        """
        try:
            self.logger.info('Start: get inbound statements grid lost amount')
            return self._bill_and_audit_page.get_inbound_statements_grid_lost_amount()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get inbound statements grid lost amount')

    def get_inbound_statements_grid_pending_amount(self):
        """
        Returning get inbound statements grid pending amount
        Implementing logging for get inbound statements grid pending amount functionality
        :return: pending amount
        """
        try:
            self.logger.info('Start: get inbound statements grid pending amount')
            return self._bill_and_audit_page.get_inbound_statements_grid_pending_amount()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get inbound statements grid pending amount')

    def get_inbound_statements_grid_begin_date(self):
        """
        Returning get inbound statements grid begin date
        Implementing logging for get inbound statements grid begin date functionality
        :return: begin date
        """
        try:
            self.logger.info('Start: get inbound statements grid begin date')
            return self._bill_and_audit_page.get_inbound_statements_grid_begin_date()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get inbound statements grid begin date')

    def get_inbound_statements_grid_end_date(self):
        """
        Returning get inbound statements grid end date
        Implementing logging for get inbound statements grid end date functionality
        :return: end date
        """
        try:
            self.logger.info('Start: get inbound statements grid end date')
            return self._bill_and_audit_page.get_inbound_statements_grid_end_date()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get inbound statements grid end date')

    def get_inbound_statements_grid_total_calls_received(self):
        """
        Returning get inbound statements grid total calls received
        Implementing logging for get inbound statements grid total calls received functionality
        :return: total calls received 
        """
        try:
            self.logger.info('Start: get inbound statements grid total calls received')
            return self._bill_and_audit_page.get_inbound_statements_grid_total_calls_received()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get inbound statements grid total calls received')

    def get_inbound_statements_grid_total_volume_received(self):
        """
        Returning get inbound statements grid total volume received
        Implementing logging for get inbound statements grid total volume received functionality
        :return: total volume received 
        """
        try:
            self.logger.info('Start: get inbound statements grid total volume received')
            return self._bill_and_audit_page.get_inbound_statements_grid_total_volume_received()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get inbound statements grid total volume received')

    def get_inbound_statements_grid_total_calls_internal(self):
        """
        Returning get inbound statements grid total calls internal
        Implementing logging for get inbound statements grid total calls internal functionality
        :return: total calls internal 
        """
        try:
            self.logger.info('Start: get inbound statements grid total calls internal')
            return self._bill_and_audit_page.get_inbound_statements_grid_total_calls_internal()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get inbound statements grid total calls internal')

    def get_inbound_statements_grid_total_volume_internal(self):
        """
        Returning get inbound statements grid total volume internal
        Implementing logging for get inbound statements grid total volume internal functionality
        :return: total volume internal 
        """
        try:
            self.logger.info('Start: get inbound statements grid total volume internal')
            return self._bill_and_audit_page.get_inbound_statements_grid_total_volume_internal()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get inbound statements grid total volume internal')

    def get_inbound_statements_grid_amount(self):
        """
        Returning get inbound statements grid amount
        Implementing logging for get inbound statements grid amount functionality
        :return: amount 
        """
        try:
            self.logger.info('Start: get inbound statements grid amount')
            return self._bill_and_audit_page.get_inbound_statements_grid_amount()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get inbound statements grid amount')

    def get_inbound_statements_grid_total_amount_internal(self):
        """
        Returning get inbound statements grid total amount internal
        Implementing logging for get inbound statements grid total amount internal functionality
        :return: total amount internal 
        """
        try:
            self.logger.info('Start: get inbound statements grid total amount internal')
            return self._bill_and_audit_page.get_inbound_statements_grid_total_amount_internal()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get inbound statements grid total amount internal')

    def get_inbound_statements_grid_discrepancy(self):
        """
        Returning get inbound statements grid discrepancy
        Implementing logging for get inbound statements grid discrepancy functionality
        :return: discrepancy 
        """
        try:
            self.logger.info('Start: get inbound statements grid discrepancy')
            return self._bill_and_audit_page.get_inbound_statements_grid_discrepancy()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get inbound statements grid discrepancy')

    def get_inbound_statements_grid_raised_dispute_amount(self):
        """
        Returning get inbound statements grid raised dispute amount
        Implementing logging for get inbound statements grid raised dispute amount functionality
        :return: raised dispute amount 
        """
        try:
            self.logger.info('Start: get inbound statements grid raised dispute amount')
            return self._bill_and_audit_page.get_inbound_statements_grid_raised_dispute_amount()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get inbound statements grid raised dispute amount')

    def get_inbound_statements_grid_dispute_by_date(self):
        """
        Returning get inbound statements grid dispute by date
        Implementing logging for get inbound statements grid dispute by date functionality
        :return: dispute by date 
        """
        try:
            self.logger.info('Start: get inbound statements grid dispute by date')
            return self._bill_and_audit_page.get_inbound_statements_grid_dispute_by_date()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get inbound statements grid dispute by date')

    def get_inbound_statements_grid_final_payment_due_date(self):
        """
        Returning get inbound statements grid final payment due date
        Implementing logging for get inbound statements grid final payment due date functionality
        :return: final payment due date 
        """
        try:
            self.logger.info('Start: get inbound statements grid final payment due date')
            return self._bill_and_audit_page.get_inbound_statements_grid_final_payment_due_date()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get inbound statements grid final payment due date')

    def get_inbound_statement_details_begin_date(self):
        """
        Returning get inbound statement details begin date
        Implementing logging for get inbound statement details begin date functionality
        :return: begin date 
        """
        try:
            self.logger.info('Start: get inbound statement details begin date')
            return self._bill_and_audit_page.get_inbound_statement_details_begin_date()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get inbound statement details begin date')

    def get_inbound_statement_details_end_date(self):
        """
        Returning get inbound statement details end date
        Implementing logging for get inbound statement details end date functionality
        :return: end date 
        """
        try:
            self.logger.info('Start: get inbound statement details end date')
            return self._bill_and_audit_page.get_inbound_statement_details_end_date()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get inbound statement details end date')

    def get_inbound_statement_details_final_payment_due_date(self):
        """
        Returning get inbound statement details final payment due date
        Implementing logging for get inbound statement details final payment due date functionality
        :return: final payment due date 
        """
        try:
            self.logger.info('Start: get inbound statement details final payment due date')
            return self._bill_and_audit_page.get_inbound_statement_details_final_payment_due_date()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get inbound statement details final payment due date')

    def get_inbound_statement_details_vat_amount(self):
        """
        Returning get inbound statement details vat amount
        Implementing logging for get inbound statement details vat amount functionality
        :return: vat amount
        """
        try:
            self.logger.info('Start: get inbound statement details vat amount')
            return self._bill_and_audit_page.get_inbound_statement_details_vat_amount()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get inbound statement details vat amount')

    def get_inbound_statement_details_total_amount(self):
        """
        Returning get inbound statement details total amount
        Implementing logging for get inbound statement details total amount functionality
        :return: total amount
        """
        try:
            self.logger.info('Start: get inbound statement details total amount')
            return self._bill_and_audit_page.get_inbound_statement_details_total_amount()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get inbound statement details total amount')

    def get_inbound_statement_details_total_amount_with_taxes(self):
        """
        Returning get inbound statement details total amount with taxes
        Implementing logging for get inbound statement details total amount with taxes functionality
        :return: total amount with taxes
        """
        try:
            self.logger.info('Start: get inbound statement details total amount with taxes')
            return self._bill_and_audit_page.get_inbound_statement_details_total_amount_with_taxes()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get inbound statement details total amount with taxes')

    def get_inbound_statement_details_summarization_discrepancy(self):
        """
        Returning get inbound statement details summarization discrepancy
        Implementing logging for get inbound statement details summarization discrepancy functionality
        :return: summarization discrepancy
        """
        try:
            self.logger.info('Start: get inbound statement details summarization discrepancy')
            return self._bill_and_audit_page.get_inbound_statement_details_summarization_discrepancy()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get inbound statement details summarization discrepancy')

    def get_inbound_statement_details_issued_date(self):
        """
        Returning get inbound statement details issued date
        Implementing logging for get inbound statement details issued date functionality
        :return: issued date
        """
        try:
            self.logger.info('Start: get inbound statement details issued date')
            return self._bill_and_audit_page.get_inbound_statement_details_issued_date()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get inbound statement details issued date')

    def get_inbound_statement_details_statement_received_date(self):
        """
        Returning get inbound statement details statement received date
        Implementing logging for get inbound statement details statement received date functionality
        :return: statement received date
        """
        try:
            self.logger.info('Start: get inbound statement details statement received date')
            return self._bill_and_audit_page.get_inbound_statement_details_statement_received_date()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get inbound statement details statement received date')

    def get_inbound_statement_details_received_due_date(self):
        """
        Returning get inbound statement details received due date
        Implementing logging for get inbound statement details received due date functionality
        :return: received due date
        """
        try:
            self.logger.info('Start: get inbound statement details received due date')
            return self._bill_and_audit_page.get_inbound_statement_details_received_due_date()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get inbound statement details received due date')

    def get_inbound_statement_details_payment_terms_due_date(self):
        """
        Returning get inbound statement details payment terms due date
        Implementing logging for get inbound statement details payment terms due date functionality
        :return: payment terms due date
        """
        try:
            self.logger.info('Start: get inbound statement details payment terms due date')
            return self._bill_and_audit_page.get_inbound_statement_details_payment_terms_due_date()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get inbound statement details payment terms due date')

    def get_inbound_statement_details_exchange_rate(self):
        """
        Returning get inbound statement details exchange rate
        Implementing logging for get inbound statement details exchange rate functionality
        :return: exchange rate
        """
        try:
            self.logger.info('Start: get inbound statement details exchange rate')
            return self._bill_and_audit_page.get_inbound_statement_details_exchange_rate()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get inbound statement details exchange rate')

    def get_inbound_statement_details_created_date(self):
        """
        Returning get inbound statement details created date
        Implementing logging for get inbound statement details created date functionality
        :return: created date
        """
        try:
            self.logger.info('Start: get inbound statement details created date')
            return self._bill_and_audit_page.get_inbound_statement_details_created_date()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get inbound statement details created date')

    def get_inbound_statement_details_last_modified_date(self):
        """
        Returning get inbound statement details last modified date
        Implementing logging for get inbound statement details last modified date functionality
        :return: last modified date
        """
        try:
            self.logger.info('Start: get inbound statement details last modified date')
            return self._bill_and_audit_page.get_inbound_statement_details_last_modified_date()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get inbound statement details last modified date')

    def click_create_new_adjustment_folder_button(self):
        """
        Returning click create new adjustment folder button
        Implementing logging for click create new adjustment folder button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click create new adjustment folder button')
            self._bill_and_audit_page.click_create_new_adjustment_folder_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click create new adjustment folder button')
            return is_clicked

    def set_adjustment_folder_name_to_create_new_one(self, folder_name_prefix):
        """
        Returning set adjustment folder name to create new one
        Implementing logging for set adjustment folder name to create new one functionality
        :param folder_name_prefix:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set adjustment folder name to create new one')
            self._bill_and_audit_page.set_adjustment_folder_name_to_create_new_one(folder_name_prefix)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set adjustment folder name to create new one')
            return is_set

    def get_created_adjustment_folder_name(self):
        """
        Returning get created adjustment folder name
        Implementing logging for get created adjustment folder name functionality
        :return: created destination
        """
        try:
            self.logger.info('Start: get created adjustment folder name')
            return self._bill_and_audit_page.get_created_adjustment_folder_name()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get created adjustment folder name')

    def set_bill_account_from_single_selection_kendo_dropdown(self, bill_account):
        """
        Returning set bill account from single selection kendo dropdown
        Implementing logging for set bill account from single selection kendo dropdown functionality
        :param bill_account:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set bill account from single selection kendo dropdown')
            self._bill_and_audit_page.set_bill_account_from_single_selection_kendo_dropdown(bill_account)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set bill account from single selection kendo dropdown')
            return is_set

    def set_calender_year(self, year):
        """
        Returning set calender year
        Implementing logging for set calender year functionality
        :param year:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set calender year')
            self._bill_and_audit_page.set_calender_year(year)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set calender year')
            return is_set

    def get_created_charge_name(self):
        """
        Returning get created charge name
        Implementing logging for get created charge name functionality
        :return: charge name
        """
        try:
            self.logger.info('Start: get created charge name')
            return self._bill_and_audit_page.get_created_charge_name()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get created charge name')

    def set_outbound_statements_grid_dropdown_value(self, column_name, column_value):
        """
        Returning set outbound statements grid dropdown value
        Implementing logging for set outbound statements grid dropdown value functionality
        :param column_name:
        :param column_value:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set outbound statements grid dropdown value')
            self._bill_and_audit_page.set_outbound_statements_grid_dropdown_value(column_name, column_value)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set outbound statements grid dropdown value')
            return is_set

    def click_outbound_statements_grid_save_changes_button(self):
        """
        Returning click outbound statements grid save changes button
        Implementing logging for click outbound statements grid save changes button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click outbound statements grid save changes button')
            self._bill_and_audit_page.click_outbound_statements_grid_save_changes_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click outbound statements grid save changes button')
            return is_clicked

    def close_bill_and_audit_window(self):
        """
        Returning close bill and audit window
        Implementing logging for close bill and audit window functionality
        :return: True/False
        """
        is_closed = None
        try:
            self.logger.info('Start: close bill and audit window')
            self._bill_and_audit_page.close_browser()
            self._bill_and_audit_page.switch_to_previous_window()
            is_closed = True
        except WebDriverException as exp:
            is_closed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: close bill and audit window')
            return is_closed

    def select_adjustment_grid_inline_action_item(self, item_name):
        """
        Returning select adjustment grid item from inline action
        Implementing logging for select adjustment grid item from inline action functionality
        :param item_name: inline item
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select adjustment grid item from inline action')
            self._bill_and_audit_page.select_inline_action_item(item_name)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select adjustment grid item from inline action')
            return is_selected

    def is_delete_checkbox_enabled_in_transactions_grid(self):
        """
        Returning is delete checkbox enabled in transactions grid
        Implementing logging for is delete checkbox enabled in transactions grid functionality
        :return:
        """
        try:
            self.logger.info('Start: is delete checkbox enabled in transactions grid')
            return self._bill_and_audit_page.is_delete_checkbox_enabled_in_transactions_grid()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is delete checkbox enabled in transactions grid')

    def is_non_reccuring_charge_populated_in_the_grid(self, charge_name):
        """
        Returning is non recurring charge populated in the grid
        Implementing logging for is non recurring charge populated in the grid functionality
        :param charge_name:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: is non recurring charge populated in the grid')
            self._bill_and_audit_page.is_non_reccuring_charge_populated_in_the_grid(charge_name)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is non recurring charge populated in the grid')
            return is_selected

    def is_specific_column_present_in_workflow_tab(self, column_name):
        """
        Returning is specific column present in workflow tab
        Implementing logging for is specific column present in workflow tab functionality
        :param column_name:
        :return: True/False
        """
        try:
            self.logger.info('Start: is specific column present in workflow tab')
            return self._bill_and_audit_page.is_specific_column_present_in_workflow_tab(column_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is specific column present in workflow tab')

    def get_outbound_statement_grid_amount_column_value(self):
        """
        Returning get outbound statement grid amount column value
        Implementing logging for get outbound statement grid amount column value functionality
        :return: outbound_statement_grid_amount_column_value
        """
        try:
            self.logger.info('Start: get outbound statement grid amount column value')
            return self._bill_and_audit_page.get_outbound_statement_grid_amount_column_value()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get outbound statement grid amount column value')

    def is_statement_status_changed_successfully(self):
        """
        Returning is statement status changes successfully
        Implementing logging for is statement status changes successfully functionality
        :return:
        """
        try:
            self.logger.info('Start: is statement status changes successfully')
            return self._bill_and_audit_page.is_statement_status_changed_successfully()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is statement status changes successfully')

    def is_statement_status_error_message_pop_up_present(self):
        """
        Returning is statement status error message pop up present
        Implementing logging for is statement status error message pop up present functionality
        :return:
        """
        try:
            self.logger.info('Start: is statement status error message pop up present')
            return self._bill_and_audit_page.is_statement_status_error_message_pop_up_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is statement status error message pop up present')

    def get_non_traffic_charge_specific_column_kendo_dropdown_first_item_name(self, column_name):
        """
        Returning get non traffic charge specific column kendo dropdown first item name
        Implementing logging for get non traffic charge specific column kendo dropdown first item name functionality
        :param column_name:
        :return:
        """
        try:
            self.logger.info('Start: get non traffic charge specific column kendo dropdown first item name')
            return self._bill_and_audit_page.get_non_traffic_charge_specific_column_kendo_dropdown_first_item_name(column_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get non traffic charge specific column kendo dropdown first item name')

    def set_first_value_in_move_to_column_in_non_traffic_charge_grid(self):
        """
        Returning set first value in move to column in non traffic charge grid
        Implementing logging for set first move to column in non traffic charge grid functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set first value in move to column in non traffic charge grid')
            self._bill_and_audit_page.set_first_value_in_move_to_column_in_non_traffic_charge_grid()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set first value in move to column in non traffic charge grid')
            return is_set

    def is_specific_workflow_status_in_proper_order_based_on_transition(self, status_name, order_number):
        """
        Returning is specific workflow status in proper order based on transition
        Implementing logging for is specific workflow status in proper order based on transition functionality
        :param status_name:
        :param order_number:
        :return:
        """
        try:
            self.logger.info('Start: is specific workflow status in proper order based on transition')
            return self._bill_and_audit_page.is_specific_workflow_status_in_proper_order_based_on_transition(status_name, order_number)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is specific workflow status in proper order based on transition')

    def is_specific_workflow_status_belonging_to_right_user_based_on_transition(self, status_name, order_number):
        """
        Returning is specific workflow status belonging to right user based on transition
        Implementing logging for is specific workflow status belonging to right user based on transition functionality
        :param status_name:
        :param order_number:
        :return:
        """
        try:
            self.logger.info('Start: is specific workflow status belonging to right user based on transition')
            return self._bill_and_audit_page.is_specific_workflow_status_belonging_to_right_user_based_on_transition(status_name, order_number)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is specific workflow status belonging to right user based on transition')

    def set_inbound_statement_details_vat_code(self, vat_code):
        """
        Returning set inbound statement details vat code
        Implementing logging for set inbound statement details vat code functionality
        :param vat_code:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set inbound statement details vat code')
            self._bill_and_audit_page.set_inbound_statement_details_vat_code(vat_code)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set inbound statement details vat code')
            return is_set