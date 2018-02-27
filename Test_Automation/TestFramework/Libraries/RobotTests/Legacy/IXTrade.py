"""
Implementing iXTrade UI page actions
Implementing Logging mechanism for iXTrade UI page actions
"""

from selenium.common.exceptions import WebDriverException
from TestFramework.Libraries.logger import Logger
from TestFramework.Libraries.Pages.Legacy.ixtrade_page import IXTradePage


class IXTrade:
    """
    Returning switch to ixTrade page
    Returning click vendor offers link
    Returning click vendor offer upload link
    Returning set vendor offer source type
    Returning click vendor offer browse button
    Returning select the file to be uploaded
    Returning click upload now button
    Returning compare upload failure message
    Returning click customer pricing exception management Submenu
    Returning click customer pricing exception management search button
    Returning click exit button
    Returning click legacy ui link
    Returning click pricing exception grid first row inline action button
    Returning select item from inline action
    Returning get pricing exception grid left table details
    Returning get label wise text
    Returning get pricing exception grid left table details
    Returning close current pop up
    Returning is exception history pop up page loaded properly
    Returning switch to route guide window
    Returning is route guide with sell rates page loaded properly
    Returning close current window
    Returning click upload new document button
    Returning click on file browse button
    Returning set file name
    Returning compare file name
    Returning click on file save button
    Returning set status
    Returning click pricing exception grid first row checkbox
    Returning click on copy button
    Returning select customers for copy price exceptions
    Returning click on copy cpe save button
    Returning click buy sell deal management submenu
    Returning is buy and sell deal dropdown present
    Returning is status dropdown present
    Returning is start date datepicker present
    Returning is end date datepicker present
    Returning is save changes button present
    Returning is cancel changes button present
    Returning is request new buy and sell deal button present
    Returning is deal bulk edit button present
    Returning update the xml file
    Returning is upload now button present
    Returning update offer name of the xml file
    Returning update origingroup name of the xml file
    Returning update origin name of the xml file
    Returning get destinations from the xml file
    Returning get rates value from the xml file
    Returning click vendor offers submenu
    Returning set vendor name for search
    Returning set vendor offer from date for search
    Returning click vendor offers go button
    Returning click vendor offer first plus button
    Returning click vendor offer first dicon button
    Returning click vendor offers destination go button
    Returning get vendor offer destination grid destination column value
    Returning compare destinations
    Returning click vendor offer first ricon button
    Returning compare rates
    Returning click price exception management screen import button
    Returning click price exception management screen export button
    Returning click first vendor offer link
    Returning click edit analyzed rates button
    Returning switch to rate analysis frame
    Returning is rate analysis view filter present
    Returning is rate analysis status filter present
    Returning is rate analysis discrepancy filter present
    Returning is rate analysis in routing flag filter present
    Returning is rate analysis rate filter present
    Returning is rate analysis destination filter present
    Returning close ixtrade window
    Returning click reference price list management Submenu
    Returning is approval reject wizard button present
    Returning click approval reject wizard button
    Returning is rplm approval reject wizard page present
    Returning set start date
    Returning click buy and sell deal management grid first row inline action button
    Returning is total deal customer volume column present
    Returning select buy and sell deal management grid inline action item
    Returning move available rpl to destination
    Returning move available rplm country to destination
    Returning click approval wizard next button
    Returning is total rpl report column present
    Returning get all rpl list
    Returning compare sorted data for rpl
    Returning set start date for rpl approve reject
    Returning are proper date columns present
    Returning filter reference price list management grid column
    Returning is specific filter option present
    Returning is total rpl to be approved matched
    Returning click reference price list generation Submenu
    Returning set generate record
    Returning set ixtrade generation type
    Returning move available reference price list to destination
    Returning move available rpl destination to destination
    Returning click ixtrade generate reference price list button
    Returning is destination resolved correctly
    Returning set action
    Returning is action dropdown displayed
    Returning is future action dropdown displayed
    Returning does action dropdown has proper option
    Returning is future action dropdown enable
    Returning is record date range start date present
    Returning is record date range end date present
    Returning is apply custom rules enable
    Returning verify start and end date range does not exceed 31 days
    Returning click customer offers submenu
    Returning click customer offer first ddicon button
    Returning is uploaded dialed digit information displayed
    Returning set reference price list for search
    Returning get specific column first row value from rplm left grid
    Returning get specific column first row value from rplm right grid
    Returning click rplm grid first row checkbox
    Returning click bulk edit button
    Returning set status for bulk edit
    Returning set start date for rpl approve reject
    Returning click bulk edit submit button
    Returning click target buy list submenu
    Returning click target buy list calculate button
    Returning is cost forecast job initialization message shown
    Returning verify deal management grid column display thousand separators
    Returning click target buy list generation submenu
    Returning is target buy list generation screen button present
    Returning is target buy list generation screen list control present
    Returning is target buy list generation screen published date control present
    Returning is vendors selector list box visible
    Returning is selected vendors list box visible
    Returning is countries selector list box visible
    Returning is selected countries list box visible
    Returning is rplm screen filter option present
    Returning is rplm screen button present
    Returning is apply custom rules radio button present
    Returning click rpl report button
    Returning is rpl report price list tab present
    Returning is rpl report impact tab present
    Returning select rpl report impact tab
    Returning is rpl report price list grid column present
    Returning is rpl report impact grid column present
    Returning click save changes button
    Returning set note
    Returning select apply custom rules radio button
    Returning click service level based cpl customer definition submenu
    Returning is service level customer definition grid column present
    Returning does service level based cpls dropdown display correct options
    Returning refresh window status
    Returning click customer pricing exception management go button
    Returning click customer pricing exception management export import button
    Returning is export import requested exception for customer pricing exceptions window opened
    Returning close export import requested exception for customer pricing exceptions window
    Returning click to expand specific bar in customer routing role definition screen
    Returning check first rounding rule checkbox
    Returning click rounding rules definition save button
    Returning filter country definition
    Returning check first country definition checkbox
    Returning click country definition save button
    Returning set rate dimension template
    Returning click rate dimension template save button
    Returning filter customer source
    Returning set rounding rule to customer source
    Returning click customer source save button
    Returning click cpem grid bulk edit button
    Returning set requested price for bulk edit
    Returning click cpem grid cpe report button
    Returning is cpe report page loaded properly
    Returning is data displayed in cpe grid
    Returning is left side specific column present in cpe grid
    Returning set current status
    Returning is generate offer file link present
    Returning click customer offer generation submenu
    Returning set mypricelist in ixtrade
    Returning click mypricelist generate button
    Returning get specific column first row value from cpem right grid
    Returning is percentage margin column present
    Returning sort percentage margin column in descending order
    Returning is percentage margin column value displayed correctly
    Returning click offer template management submenu
    Returning is offer template management page loaded properly
    Returning is offer template management filter option worked properly
    Returning click first offer template
    Returning is company field present in detail frame
    Returning click offer template management edit button
    Returning is company field present
    Returning click offer template definition cancel
    Returning click new offer template button
    Returning is vendor offer upload fail message present
    Returning click select order column button
    Returning is margin percentage checkbox present
    Returning check margin percentage checkbox
    Returning is margin percentage column present
    Returning click customer pricing exception entry Submenu
    Returning set cpee status
    Returning click customer pricing exception management go button with validation
    """
    ROBOT_LIBRARY_SCOPE = 'TEST SUITE'

    logger = Logger().get_logger('IXTrade')

    def __init__(self):
        self._ixtrade_page = IXTradePage()

    def switch_to_ixtrade(self):
        """
        Returning switch to ixTrade
        Implementing logging for switch to ixTrade functionality
        :return: True/False
        """
        is_switched = None
        try:
            self.logger.info('Start: switch to ixTrade method')
            self._ixtrade_page.switch_to_ixtrade()
            is_switched = True
        except WebDriverException as exp:
            is_switched = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: switch to ixTrade method')
            return is_switched

    def click_vendor_offers_link(self):
        """
        Returning click vendor offers link
        Implementing logging for click vendor offers link functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click vendor offers link')
            self._ixtrade_page.click_vendor_offers_link()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click vendor offers link')
            return is_clicked

    def click_vendor_offer_upload_submenu(self):
        """
        Returning click vendor offer upload submenu
        Implementing logging for click vendor offer upload submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click vendor offer upload submenu')
            self._ixtrade_page.click_vendor_offer_upload_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click vendor offer upload submenu')
            return is_clicked

    def set_vendor_offer_source_type(self, source_type):
        """
        Returning set vendor offer source type
        Implementing logging for set vendor offer source type functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: set vendor offer source type')
            self._ixtrade_page.set_vendor_offer_source_type(source_type)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set vendor offer source type')
            return is_clicked

    def click_vendor_offer_browse_button(self):
        """
        Returning click vendor offer browse button
        Implementing logging for click vendor offer browse button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click vendor offer browse button')
            self._ixtrade_page.click_vendor_offer_browse_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click vendor offer browse button')
            return is_clicked

    def select_the_file_to_be_uploaded(self, file_path):
        """
        Returning select the file to be uploaded
        Implementing logging for select the file to be uploaded functionality
        :param file_path:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select the file to be uploaded')
            self._ixtrade_page.select_the_file_to_be_uploaded(file_path)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select the file to be uploaded')
            return is_selected

    def click_upload_now_button(self):
        """
        Returning click upload now button
        Implementing logging for click upload now button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click upload now button')
            self._ixtrade_page.click_upload_now_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click upload now button')
            return is_clicked

    def compare_upload_failure_message(self, message):
        """
        Returning compare upload failure message
        Implementing logging for compare upload failure message functionality
        :param message: Upload failure message
        :return: True/False
        """
        is_compared = None
        try:
            self.logger.info('Start: compare upload failure message')
            is_compared = self._ixtrade_page.compare_upload_failure_message(message)
        except WebDriverException as exp:
            is_compared = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare upload failure message')
            return is_compared

    def click_customer_pricing_exception_management_submenu(self):
        """
        Returning click customer pricing exception management Submenu
        Implementing logging for click customer pricing exception management Submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click customer pricing exception management Submenu')
            self._ixtrade_page.click_customer_pricing_exception_management_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click customer pricing exception management Submenu')
            return is_clicked

    def click_customer_pricing_exception_management_search_button(self):
        """
        Returning click customer pricing exception management search button
        Implementing logging for click customer pricing exception management search button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click customer pricing exception management search button')
            self._ixtrade_page.click_customer_pricing_exception_management_search_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click customer pricing exception management search button')
            return is_clicked

    def click_exit_button(self):
        """
        Returning click exit button
        Implementing logging for click exit button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click exit button')
            self._ixtrade_page.click_exit_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click exit button')
            return is_clicked

    def click_legacy_ui_link(self):
        """
        Returning click legacy ui link
        Implementing logging for click legacy ui link functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click legacy ui link')
            self._ixtrade_page.click_legacy_ui_link()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click legacy ui link')
            return is_clicked

    def click_pricing_exception_grid_first_row_inline_action_button(self):
        """
        Returning click pricing exception grid first row inline action button
        Implementing logging for click pricing exception grid first row inline action button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click pricing exception grid first row inline action button')
            self._ixtrade_page.click_pricing_exception_grid_first_row_inline_action_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click pricing exception grid first row inline action button')
            return is_clicked

    def select_inline_action_item(self, item_name):
        """
        Returning select item from inline action
        Implementing logging for select item from inline action functionality
        :param item_name: inline item
        :return:
        """
        is_selected = None
        try:
            self.logger.info('Start: select item from inline action')
            self._ixtrade_page.select_pricing_exception_grid_inline_action_item(item_name)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select item from inline action')
            return is_selected

    def get_pricing_exception_grid_left_table_details(self):
        """
        Returning get pricing exception grid left table details
        Implementing logging for get pricing exception grid left table details functionality
        :return: grid_row_data
        """
        try:
            self.logger.info('Start: get pricing exception grid left table details')
            return self._ixtrade_page.get_pricing_exception_grid_left_table_details()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get pricing exception grid left table details')

    def get_label_wise_text(self, label_name):
        """
        Returning get label wise text
        Implementing logging for get label wise text functionality
        :param label_name:
        :return: text
        """
        text = None
        try:
            self.logger.info('Start: get label wise text')
            text = self._ixtrade_page.get_pricing_exception_grid_label_wise_text(label_name)
        except WebDriverException as exp:
            text = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get label wise text')
            return text

    def get_pricing_exception_grid_right_table_details(self):
        """
        Returning get pricing exception grid left table details
        Implementing logging for get pricing exception grid left table details functionality
        :return: grid_row_data
        """
        try:
            self.logger.info('Start: get pricing exception grid left table details')
            return self._ixtrade_page.get_pricing_exception_grid_right_table_details()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get pricing exception grid left table details')

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
            self._ixtrade_page.close_pricing_exception_current_pop_up(pop_up_name)
            is_closed = True
        except WebDriverException as exp:
            is_closed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: close current pop up')
            return is_closed

    def is_exception_history_pop_up_page_loaded_properly(self):
        """
        Returning is exception history pop up page loaded properly
        Implementing logging for is exception history pop up page loaded properly functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is exception history pop up page loaded properly')
            return self._ixtrade_page.is_exception_history_pop_up_page_loaded_properly()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is exception history pop up page loaded properly')

    def switch_to_route_guide_window(self):
        """
        Returning switch to route guide window
        Implementing logging for switch to route guide window functionality
        :return:
        """
        is_switched = None
        try:
            self.logger.info('Start: switch to route guide')
            self._ixtrade_page.switch_to_ixtrade()
            is_switched = True
        except WebDriverException as exp:
            is_switched = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: switch to route guide')
            return is_switched

    def is_route_guide_with_sell_rates_page_loaded_properly(self):
        """
        Returning is route guide with sell rates page loaded properly
        Implementing logging for is route guide with sell rates page loaded properly functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is route guide with sell rates page loaded properly')
            return self._ixtrade_page.is_route_guide_with_sell_rates_page_loaded_properly()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is route guide with sell rates page loaded properly')

    def close_current_window(self):
        """
        Returning close current window
        Implementing logging for close current window functionality
        :return: True/False
        """
        is_closed = None
        try:
            self.logger.info('Start: close current window')
            self._ixtrade_page.close_browser()
            self._ixtrade_page.switch_to_default_window()
            is_closed = True
        except WebDriverException as exp:
            is_closed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: close current window')
            return is_closed

    def click_upload_new_document_button(self):
        """
        Returning click upload new document button
        Implementing logging for click upload new document button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click upload new document button')
            self._ixtrade_page.click_upload_new_document_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click upload new document button')
            return is_clicked

    def click_on_file_browse_button(self):
        """
        Returning click on file browse button
        Implementing logging for click on file browse button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click on file browse button')
            self._ixtrade_page.click_on_file_browse_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click on file browse button')
            return is_clicked

    def set_file_name(self, file_name_prefix):
        """
        Returning set file name
        Implementing logging for set file name functionality
        :param file_name_prefix:
        :return: file name
        """
        is_set = None
        try:
            self.logger.info('Start: set file name')
            is_set = self._ixtrade_page.set_file_name(file_name_prefix)
        except WebDriverException as exp:
            is_set = "False"
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set file name')
            return is_set

    def compare_file_name(self, file_name):
        """
        Returning compare file name
        Implementing logging for compare file name functionality
        :param file_name:
        :return: True/False
        """
        status = None
        try:
            self.logger.info('Start: compare file name')
            status = self._ixtrade_page.compare_file_name(file_name)
        except WebDriverException as exp:
            status = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare file name')
            return status

    def click_on_file_save_button(self):
        """
        Returning click on file save button
        Implementing logging for click on file save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click on file save button')
            self._ixtrade_page.click_on_file_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click on file save button')
            return is_clicked

    def set_status(self, *list_of_status):
        """
        Returning set status
        Implement logging for set status functionality
        :param list_of_status:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set status')
            if len(list_of_status) > 0:
                self._ixtrade_page.set_status(list_of_status)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set status')
            return is_set

    def click_pricing_exception_grid_first_row_checkbox(self):
        """
        Returning click pricing exception grid first row checkbox
        Implementing logging for click pricing exception grid first row checkbox functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click pricing exception grid first row checkbox')
            self._ixtrade_page.click_pricing_exception_grid_first_row_checkbox()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click pricing exception grid first row checkbox')
            return is_clicked

    def click_on_copy_button(self):
        """
        Returning click on copy button
        Implementing logging for click on copy button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click on copy button')
            self._ixtrade_page.click_on_copy_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click on copy button')
            return is_clicked

    def select_customers_for_copy_price_exceptions(self, *customers):
        """
        Returning select customers for copy price exceptions
        Implement logging for select customers for copy price exceptions functionality
        :param customers:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select customers for copy price exceptions')
            self._ixtrade_page.select_customers_for_copy_price_exceptions(customers)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select customers for copy price exceptions')
            return is_selected

    def click_on_copy_cpe_save_button(self):
        """
        Returning click on copy cpe save button
        Implementing logging for click on copy cpe save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click on copy cpe save button')
            self._ixtrade_page.click_on_copy_cpe_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click on copy cpe save button')
            return is_clicked

    def click_buy_sell_deal_management_submenu(self):
        """
        Returning click buy sell deal management submenu
        Implementing logging for click buy sell deal management submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click buy sell deal management submenu')
            self._ixtrade_page.click_buy_sell_deal_management_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click buy sell deal management submenu')
            return is_clicked

    def is_buy_and_sell_deal_dropdown_present(self):
        """
        Returning is buy and sell deal dropdown present
        Implementing logging for is buy and sell deal dropdown present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is buy and sell deal dropdown present')
            return self._ixtrade_page.is_buy_and_sell_deal_dropdown_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is buy and sell deal dropdown present')

    def is_status_dropdown_present(self):
        """
        Returning is status dropdown present
        Implementing logging for is status dropdown present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is status dropdown present')
            return self._ixtrade_page.is_status_dropdown_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is status dropdown present')

    def is_start_date_datepicker_present(self):
        """
        Returning is start date datepicker present
        Implementing logging for is start date datepicker present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is start date datepicker present')
            return self._ixtrade_page.is_start_date_datepicker_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is start date datepicker present')

    def is_end_date_datepicker_present(self):
        """
        Returning is end date datepicker present
        Implementing logging for is end date datepicker present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is end date datepicker present')
            return self._ixtrade_page.is_end_date_datepicker_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is end date datepicker present')

    def is_save_changes_button_present(self):
        """
        Returning is save changes button present
        Implementing logging for is save changes button present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is save changes button present')
            return self._ixtrade_page.is_save_changes_button_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is save changes button present')

    def is_cancel_changes_button_present(self):
        """
        Returning is cancel changes button present
        Implementing logging for is cancel changes button present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is cancel changes button present')
            return self._ixtrade_page.is_cancel_changes_button_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is cancel changes button present')

    def is_request_new_buy_and_sell_deal_button_present(self):
        """
        Returning is request new buy and sell deal button present
        Implementing logging for is request new buy and sell deal button present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is request new buy and sell deal button present')
            return self._ixtrade_page.is_request_new_buy_and_sell_deal_button_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is request new buy and sell deal button present')

    def is_deal_bulk_edit_button_present(self):
        """
        Returning is deal bulk edit button present
        Implementing logging for is deal bulk edit button present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is deal bulk edit button present')
            return self._ixtrade_page.is_deal_bulk_edit_button_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is deal bulk edit button present')

    def update_the_xml_file(self, file_path, vendor_name):
        """
        Returning update the xml file
        Implementing logging for update the xml file functionality
        :param file_path:
        :param vendor_name:
        :return: True/False
        """
        is_updated = None
        try:
            self.logger.info('Start: update the xml file')
            self._ixtrade_page.update_the_xml_file(file_path, vendor_name)
            is_updated = True
        except Exception as exp:
            is_updated = False
            self.logger.error(exp.message)
            raise
        finally:
            self.logger.info('End: select the file to be uploaded')
            return is_updated

    def is_upload_now_button_present(self):
        """
        Returning is upload now button present
        Implementing logging for is upload now button present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is upload now button present')
            return self._ixtrade_page.is_upload_now_button_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is upload now button present')

    def update_offer_name_of_the_xml_file(self, file_path, offer_name_prefix):
        """
        Returning update offer name of the xml file
        Implementing logging for update offer name of the xml file functionality
        :param file_path:
        :param offer_name_prefix:
        :return: True/False
        """
        is_updated = None
        try:
            self.logger.info('Start: update offer name of the xml file')
            self._ixtrade_page.update_offer_name_of_the_xml_file(file_path, offer_name_prefix)
            is_updated = True
        except Exception as exp:
            is_updated = False
            self.logger.error(exp.message)
            raise
        finally:
            self.logger.info('End: update offer name of the xml file')
            return is_updated

    def update_origingroup_name_of_the_xml_file(self, file_path, origingroup_name_prefix):
        """
        Returning update origingroup name of the xml file
        Implementing logging for update origingroup name of the xml file functionality
        :param file_path:
        :param origingroup_name_prefix:
        :return: True/False
        """
        is_updated = None
        try:
            self.logger.info('Start: update origingroup name of the xml file')
            self._ixtrade_page.update_origingroup_name_of_the_xml_file(file_path, origingroup_name_prefix)
            is_updated = True
        except Exception as exp:
            is_updated = False
            self.logger.error(exp.message)
            raise
        finally:
            self.logger.info('End: update origingroup name of the xml file')
            return is_updated

    def update_origin_name_of_the_xml_file(self, file_path, origin_name_prefix):
        """
        Returning update origin name of the xml file
        Implementing logging for update origin name of the xml file functionality
        :param file_path:
        :param origin_name_prefix:
        :return: True/False
        """
        is_updated = None
        try:
            self.logger.info('Start: update origin name of the xml file')
            self._ixtrade_page.update_origin_name_of_the_xml_file(file_path, origin_name_prefix)
            is_updated = True
        except Exception as exp:
            is_updated = False
            self.logger.error(exp.message)
            raise
        finally:
            self.logger.info('End: update origin name of the xml file')
            return is_updated

    def get_destinations_from_the_xml_file(self, file_path):
        """
        Returning get destinations from the xml file
        Implementing logging for get destinations from the xml file functionality
        :param file_path:
        :return: destinations_list
        """
        destinations_list = None
        try:
            self.logger.info('Start: get destinations from the xml file')
            destinations_list = self._ixtrade_page.get_destinations_from_the_xml_file(file_path)
        except WebDriverException as exp:
            destinations_list = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get destinations from the xml file')
            return destinations_list

    def get_rates_value_from_the_xml_file(self, file_path):
        """
        Returning get rates value from the xml file
        Implementing logging for get rates value from the xml file functionality
        :param file_path:
        :return: destinations_list
        """
        destinations_list = None
        try:
            self.logger.info('Start: get rates value from the xml file')
            destinations_list = self._ixtrade_page.get_rates_value_from_the_xml_file(file_path)
        except WebDriverException as exp:
            destinations_list = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get rates value from the xml file')
            return destinations_list

    def click_vendor_offers_submenu(self):
        """
        Returning click vendor offers submenu
        Implementing logging for click vendor offers submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click vendor offers submenu')
            self._ixtrade_page.click_vendor_offers_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click vendor offers submenu')
            return is_clicked

    def set_vendor_name_for_search(self, vendor_name):
        """
        Returning set vendor name for search
        Implementing logging for set vendor name for search functionality
        :param vendor_name:
        :return: file name
        """
        is_set = None
        try:
            self.logger.info('Start: set vendor name for search')
            self._ixtrade_page.set_vendor_name_for_search(vendor_name)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set vendor name for search')
            return is_set

    def set_vendor_offer_from_date_for_search(self, from_date):
        """
        Returning set vendor offer from date for search
        Implementing logging for set vendor offer from date for search functionality
        :param from_date:
        :return: file name
        """
        is_set = None
        try:
            self.logger.info('Start: set vendor offer from date for search')
            self._ixtrade_page.set_vendor_offer_from_date_for_search(from_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set vendor offer from date for search')
            return is_set

    def click_vendor_offers_go_button(self):
        """
        Returning click vendor offers go button
        Implementing logging for click vendor offers go button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click vendor offers go button')
            self._ixtrade_page.click_vendor_offers_go_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click vendor offers go button')
            return is_clicked

    def click_vendor_offer_first_plus_button(self):
        """
        Returning click vendor offer first plus button
        Implementing logging for click vendor offer first plus button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click vendor offer first plus button')
            self._ixtrade_page.click_vendor_offer_first_plus_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click vendor offer first plus button')
            return is_clicked

    def click_vendor_offer_first_dicon_button(self):
        """
        Returning click vendor offer first dicon button
        Implementing logging for click vendor offer first dicon button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click vendor offer first dicon button')
            self._ixtrade_page.click_vendor_offer_first_dicon_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click vendor offer first dicon button')
            return is_clicked

    def click_vendor_offers_destination_go_button(self):
        """
        Returning click vendor offers destination go button
        Implementing logging for click vendor offers destination go button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click vendor offers destination go button')
            self._ixtrade_page.click_vendor_offers_destination_go_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click vendor offers destination go button')
            return is_clicked

    def get_vendor_offer_destination_grid_destination_column_value(self):
        """
        Returning get vendor offer destination grid destination column value
        Implementing logging for get vendor offer destination grid destination column value functionality
        :return: destinations_list
        """
        destinations_list = None
        try:
            self.logger.info('Start: get vendor offer destination grid destination column value')
            destinations_list = self._ixtrade_page.get_vendor_offer_destination_grid_destination_column_value()
        except WebDriverException as exp:
            destinations_list = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get vendor offer destination grid destination column value')
            return destinations_list

    def compare_destinations(self, *destinations_list_from_xml):
        """
        Returning compare destinations
        Implementing logging for compare destinations functionality
        :param destination_from_table:
        :return: True/False
        """
        is_compared = None
        try:
            self.logger.info('Start: compare destinations')
            is_compared = self._ixtrade_page.compare_destinations(destinations_list_from_xml)
        except WebDriverException as exp:
            is_compared = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare destinations')
            return is_compared

    def click_vendor_offer_first_ricon_button(self):
        """
        Returning click vendor offer first ricon button
        Implementing logging for click vendor offer first ricon button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click vendor offer first ricon button')
            self._ixtrade_page.click_vendor_offer_first_ricon_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click vendor offer first ricon button')
            return is_clicked

    def compare_rates(self, *rate_list_from_xml):
        """
        Returning compare rates
        Implementing logging for compare rates functionality
        :param rate_list_from_xml:
        :return: True/False
        """
        is_compared = None
        try:
            self.logger.info('Start: compare rates')
            is_compared = self._ixtrade_page.compare_rates(rate_list_from_xml)
        except WebDriverException as exp:
            is_compared = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare rates')
            return is_compared

    def click_price_exception_management_screen_import_button(self):
        """
        Returning click price exception management screen import button
        Implementing logging for click price exception management screen import button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click price exception management screen import button')
            self._ixtrade_page.click_price_exception_management_screen_import_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click price exception management screen import button')
            return is_clicked

    def click_price_exception_management_screen_export_button(self):
        """
        Returning click price exception management screen export button
        Implementing logging for click price exception management screen export button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click price exception management screen export button')
            self._ixtrade_page.click_price_exception_management_screen_export_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click price exception management screen export button')
            return is_clicked

    def click_first_vendor_offer_link(self):
        """
        Returning click first vendor offer link
        Implementing logging for click first vendor offer link functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click first vendor offer link')
            self._ixtrade_page.click_first_vendor_offer_link()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click first vendor offer link')
            return is_clicked

    def click_edit_analyzed_rates_button(self):
        """
        Returning click edit analyzed rates button
        Implementing logging for click edit analyzed rates button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click edit analyzed rates button')
            self._ixtrade_page.click_edit_analyzed_rates_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click edit analyzed rates button')
            return is_clicked

    def switch_to_rate_analysis_frame(self):
        """
        Returning switch to rate analysis frame
        Implementing logging for switch to rate analysis frame functionality
        :return: True/False
        """
        is_switched = None
        try:
            self.logger.info('Start: switch to rate analysis frame')
            self._ixtrade_page.switch_to_rate_analysis_frame()
            is_switched = True
        except WebDriverException as exp:
            is_switched = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: switch to rate analysis frame')
            return is_switched

    def is_rate_analysis_view_filter_present(self):
        """
        Returning is rate analysis view filter present
        Implementing logging for is rate analysis view filter present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is rate analysis view filter present')
            return self._ixtrade_page.is_rate_analysis_view_filter_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is rate analysis view filter present')

    def is_rate_analysis_status_filter_present(self):
        """
        Returning is rate analysis status filter present
        Implementing logging for is rate analysis status filter present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is rate analysis status filter present')
            return self._ixtrade_page.is_rate_analysis_status_filter_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is rate analysis status filter present')

    def is_rate_analysis_discrepancy_filter_present(self):
        """
        Returning is rate analysis discrepancy filter present
        Implementing logging for is rate analysis discrepancy filter present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is rate analysis discrepancy filter present')
            return self._ixtrade_page.is_rate_analysis_discrepancy_filter_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is rate analysis discrepancy filter present')

    def is_rate_analysis_in_routing_flag_filter_present(self):
        """
        Returning is rate analysis in routing flag filter present
        Implementing logging for is rate analysis in routing flag filter present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is rate analysis in routing flag filter present')
            return self._ixtrade_page.is_rate_analysis_in_routing_flag_filter_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is rate analysis in routing flag filter present')

    def is_rate_analysis_rate_filter_present(self):
        """
        Returning is rate analysis rate filter present
        Implementing logging for is rate analysis rate filter present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is rate analysis rate filter present')
            return self._ixtrade_page.is_rate_analysis_rate_filter_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is rate analysis rate filter present')

    def is_rate_analysis_destination_filter_present(self):
        """
        Returning is rate analysis destination filter present
        Implementing logging for is rate analysis destination filter present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is rate analysis destination filter present')
            return self._ixtrade_page.is_rate_analysis_destination_filter_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is rate analysis destination filter present')

    def close_ixtrade_window(self, default_window=False):
        """
        Returning close ixtrade window
        Implementing logging for close ixtrade window functionality
        :return: True/False
        """
        is_closed = None
        try:
            self.logger.info('Start: close ixtrade window')
            self._ixtrade_page.close_browser()
            if default_window is True:
                self._ixtrade_page.switch_to_default_window()
            else:
                self._ixtrade_page.switch_to_previous_window()
            is_closed = True
        except WebDriverException as exp:
            is_closed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: close ixtrade window')
            return is_closed

    def click_reference_price_list_management_submenu(self):
        """
        Returning click reference price list management Submenu
        Implementing logging for click reference price list management Submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click reference price list management Submenu')
            self._ixtrade_page.click_reference_price_list_management_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click reference price list management Submenu')
            return is_clicked

    def is_approval_reject_wizard_button_present(self):
        """
        Returning is approval reject wizard button present
        Implementing logging for is approval reject wizard button present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is approval reject wizard button present')
            return self._ixtrade_page.is_approval_reject_wizard_button_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is approval reject wizard button present')

    def click_approval_reject_wizard_button(self):
        """
        Returning click approval reject wizard button
        Implementing logging for click approval reject wizard button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click approval reject wizard button')
            self._ixtrade_page.click_approval_reject_wizard_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click approval reject wizard button')
            return is_clicked

    def is_rplm_approval_reject_wizard_page_present(self):
        """
        Returning is rplm approval reject wizard page present
        Implementing logging for is rplm approval reject wizard page present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is rplm approval reject wizard page present')
            return self._ixtrade_page.is_rplm_approval_reject_wizard_page_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is rplm approval reject wizard page present')

    def set_start_date(self, start_date):
        """
        Returning set start date
        Implementing logging for set start date functionality
        :param start_date:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set start date')
            self._ixtrade_page.set_start_date(start_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set start date')
            return is_set

    def click_buy_and_sell_deal_management_grid_first_row_inline_action_button(self):
        """
        Returning click buy and sell deal management grid first row inline action button
        Implementing logging for click buy and sell deal management grid first row inline action button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click buy and sell deal management grid first row inline action button')
            self._ixtrade_page.click_buy_and_sell_deal_management_grid_first_row_inline_action_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click buy and sell deal management grid first row inline action button')
            return is_clicked

    def is_total_deal_customer_volume_column_present(self):
        """
        Returning is total deal customer volume column present
        Implementing logging for is total deal customer volume column present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is total deal customer volume column present')
            return self._ixtrade_page.is_total_deal_customer_volume_column_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is total deal customer volume column present')

    def select_buy_and_sell_deal_management_grid_inline_action_item(self, item_name):
        """
        Returning select buy and sell deal management grid inline action item
        Implementing logging for select buy and sell deal management grid inline action item functionality
        :param item_name: inline item
        :return:
        """
        is_selected = None
        try:
            self.logger.info('Start: select buy and sell deal management grid inline action item')
            self._ixtrade_page.select_buy_and_sell_deal_management_grid_inline_action_item(item_name)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select buy and sell deal management grid inline action item')
            return is_selected

    def move_available_rpl_to_destination(self):
        """
        Returning move available rpl to destination
        Implementing logging for move available rpl to destination functionality
        :return: True/False
        """
        is_moved = None
        try:
            self.logger.info('Start: move available rpl to destination')
            self._ixtrade_page.move_available_rpl_to_destination()
            is_moved = True
        except WebDriverException as exp:
            is_moved = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: move available rpl to destination')
            return is_moved

    def move_available_rplm_country_to_destination(self):
        """
        Returning move available rplm country to destination
        Implementing logging for move available rplm country to destination functionality
        :return: True/False
        """
        is_moved = None
        try:
            self.logger.info('Start: move available rplm country to destination')
            self._ixtrade_page.move_available_rplm_country_to_destination()
            is_moved = True
        except WebDriverException as exp:
            is_moved = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: move available rplm country to destination')
            return is_moved

    def click_approval_wizard_next_button(self):
        """
        Returning click approval wizard next button
        Implementing logging for click approval wizard next button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click approval wizard next button')
            self._ixtrade_page.click_approval_wizard_next_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click approval wizard next button')
            return is_clicked

    def is_total_rpl_report_column_present(self):
        """
        Returning is total rpl report column present
        Implementing logging for is total rpl report column present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is total rpl report column present')
            return self._ixtrade_page.is_total_rpl_report_column_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is total rpl report column present')

    def get_all_rpl_list(self):
        """
        Returning get all rpl list
        Implementing logging for get all rpl list functionality
        :return: all_rpl
        """
        all_rpl = None
        try:
            self.logger.info('Start: get all rpl list')
            all_rpl = self._ixtrade_page.get_all_rpl_list()
        except WebDriverException as exp:
            all_rpl = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get all rpl list')
            return all_rpl

    def compare_sorted_data_for_rpl(self, unsorted_data):
        """
        Returning compare sorted data for rpl 
        Implementing logging for compare sorted data for rpl functionality
        :param unsorted_data:
        :return: True/False
        """
        is_compared = None
        try:
            self.logger.info('Start: compare sorted data for rpl')
            is_compared = self._ixtrade_page.compare_sorted_data_for_rpl(unsorted_data)
        except WebDriverException as exp:
            is_compared = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare sorted data for rpl')
            return is_compared

    def set_start_date_for_rpl_approve_reject(self):
        """
        Returning set start date for rpl approve reject
        Implementing logging for set start date for rpl approve reject functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set start date for rpl approve reject')
            self._ixtrade_page.set_start_date_for_rpl_approve_reject()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set start date for rpl approve reject')
            return is_set

    def are_proper_date_columns_present(self):
        """
        Returning are proper date columns present
        Implementing logging for are proper date columns present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: are proper date columns present')
            return self._ixtrade_page.are_proper_date_columns_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: are proper date columns present')

    def filter_reference_price_list_management_grid_column(self, column_name):
        """
        Returning filter reference price list management grid column
        Implementing logging for filter reference price list management grid column functionality
        :param column_name:
        :return: True/False
        """
        is_filtered = None
        try:
            self.logger.info('Start: filter reference price list management grid column')
            self._ixtrade_page.filter_reference_price_list_management_grid_column(column_name)
            is_filtered = True
        except WebDriverException as exp:
            is_filtered = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: filter reference price list management grid column')
            return is_filtered

    def is_specific_filter_option_present(self, label_name):
        """
        Returning is specific filter option present
        Implementing logging for is specific filter option present functionality
        :param label_name:
        :return: True/False
        """
        try:
            self.logger.info('Start: is specific filter option present')
            return self._ixtrade_page.is_specific_filter_option_present(label_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is specific filter option present')

    def is_total_rpl_to_be_approved_matched(self):
        """
        Returning is total rpl to be approved matched
        Implementing logging for is total rpl to be approved matched functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is total rpl to be approved matched')
            return self._ixtrade_page.is_total_rpl_to_be_approved_matched()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is total rpl to be approved matched')

    def click_reference_price_list_generation_submenu(self):
        """
        Returning click reference price list generation Submenu
        Implementing logging for click reference price list generation Submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click reference price list generation Submenu')
            self._ixtrade_page.click_reference_price_list_generation_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click reference price list generation Submenu')
            return is_clicked

    def set_generate_record(self, record_name):
        """
        Returning set generate record
        Implementing logging for set generate record functionality
        :param record_name:
        :return: file name
        """
        is_set = None
        try:
            self.logger.info('Start: set generate record')
            self._ixtrade_page.set_generate_record(record_name)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set generate record')
            return is_set

    def set_ixtrade_generation_type(self, type):
        """
        Returning set ixtrade generation type
        Implementing logging for set ixtrade generation type functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set ixtrade generation type')
            self._ixtrade_page.set_ixtrade_generation_type(type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set ixtrade generation type')
            return is_set

    def move_available_reference_price_list_to_destination(self, *item_list):
        """
        Returning move available reference price list to destination
        Implement logging for move available reference price list to destination functionality
        :param item_list:
        :return: True/False
        """
        is_moved = None
        try:
            self.logger.info('Start: select move available reference price list to destination')
            self._ixtrade_page.move_available_reference_price_list_to_destination(item_list)
            is_moved = True
        except WebDriverException as exp:
            is_moved = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select move available reference price list to destination')
            return is_moved

    def move_available_rpl_destination_to_destination(self, *destination_list):
        """
        Returning move available rpl destination to destination
        Implement logging for move available rpl destination to destination functionality
        :param destination_list:
        :return: True/False
        """
        is_moved = None
        try:
            self.logger.info('Start: select move available rpl destination to destination')
            self._ixtrade_page.move_available_rpl_destination_to_destination(destination_list)
            is_moved = True
        except WebDriverException as exp:
            is_moved = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select move available rpl destination to destination')
            return is_moved

    def click_ixtrade_generate_reference_price_lists_button(self):
        """
        Returning click ixtrade generate reference price list button
        Implementing logging for click ixtrade generate reference price list button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click ixtrade generate reference price list button')
            self._ixtrade_page.click_ixtrade_generate_reference_price_lists_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click ixtrade generate reference price list button')
            return is_clicked

    def is_destination_resolved_correctly(self):
        """
        Returning is destination resolved correctly
        Implementing logging for is destination resolved correctly functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is destination resolved correctly')
            return self._ixtrade_page.is_destination_resolved_correctly()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is destination resolved correctly')

    def set_action(self, action):
        """
        Returning set action
        Implementing logging for set action functionality
        :param action:
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: set action')
            self._ixtrade_page.set_action(action)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set action')
            return is_clicked

    def is_action_dropdown_displayed(self):
        """
        Returning is action dropdown displayed
        Implementing logging for is action dropdown displayed functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is action dropdown displayed')
            return self._ixtrade_page.is_action_dropdown_displayed()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is action dropdown displayed')

    def is_future_action_dropdown_displayed(self):
        """
        Returning is future action dropdown displayed
        Implementing logging for is future action dropdown displayed functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is future action dropdown displayed')
            return self._ixtrade_page.is_future_action_dropdown_displayed()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is future action dropdown displayed')

    def does_action_dropdown_has_proper_option(self):
        """
        Returning does action dropdown has proper option
        Implementing logging for does action dropdown has proper option functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: does action dropdown has proper option')
            return self._ixtrade_page.does_action_dropdown_has_proper_option()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: does action dropdown has proper option')

    def is_future_action_dropdown_enable(self):
        """
        Returning is future action dropdown enable
        Implementing logging for is future action dropdown enable functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is future action dropdown enable')
            return self._ixtrade_page.is_future_action_dropdown_enable()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is future action dropdown enable')

    def is_record_date_range_start_date_present(self):
        """
        Returning is record date range start date present
        Implementing logging for is record date range start date present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is record date range start date present')
            return self._ixtrade_page.is_record_date_range_start_date_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is record date range start date present')

    def is_record_date_range_end_date_present(self):
        """
        Returning is record date range end date present
        Implementing logging for is record date range end date present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is record date range end date present')
            return self._ixtrade_page.is_record_date_range_end_date_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is record date range end date present')

    def is_apply_custom_rules_enable(self):
        """
        Returning is apply custom rules enable
        Implementing logging for is apply custom rules enable functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is apply custom rules enable')
            return self._ixtrade_page.is_apply_custom_rules_enable()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is apply custom rules enable')

    def verify_start_and_end_date_range_does_not_exceed_31_days(self):
        """
        Returning verify start and end date range does not exceed 31 days
        Implementing logging for verify start and end date range does not exceed 31 days functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: verify start and end date range does not exceed 31 days')
            return self._ixtrade_page.verify_start_and_end_date_range_does_not_exceed_31_days()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: verify start and end date range does not exceed 31 days')

    def click_customer_offers_submenu(self):
        """
        Returning click customer offers submenu
        Implementing logging for click customer offers submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click customer offers submenu')
            self._ixtrade_page.click_customer_offers_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click customer offers submenu')
            return is_clicked

    def click_customer_offer_first_ddicon_button(self):
        """
        Returning click customer offer first ddicon button
        Implementing logging for click customer offer first ddicon button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click customer offer first ddicon button')
            self._ixtrade_page.click_customer_offer_first_ddicon_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click customer offer first ddicon button')
            return is_clicked

    def is_uploaded_dialed_digit_information_displayed(self):
        """
        Returning is uploaded dialed digit information displayed
        Implementing logging for is uploaded dialed digit information displayed functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is uploaded dialed digit information displayed')
            return self._ixtrade_page.is_uploaded_dialed_digit_information_displayed()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is uploaded dialed digit information displayed')

    def set_reference_price_list_for_search(self, *list_of_rpl):
        """
        Returning set reference price list for search
        Implement logging for set reference price list for search functionality
        :param list_of_rpl:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set reference price list for search')
            if len(list_of_rpl) > 0:
                self._ixtrade_page.set_reference_price_list_for_search(list_of_rpl)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set reference price list for search')
            return is_set

    def get_specific_column_first_row_value_from_rplm_left_grid(self, column_name):
        """
        Returning get specific column first row value from rplm left grid
        Implementing logging for get specific column first row value from rplm left grid functionality
        :return: column_value
        """
        column_value = None
        try:
            self.logger.info('Start: get specific column first row value from rplm left grid')
            column_value = self._ixtrade_page.get_specific_column_first_row_value_from_rplm_left_grid(column_name)
        except WebDriverException as exp:
            column_value = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get specific column first row value from rplm left grid')
            return column_value

    def get_specific_column_first_row_value_from_rplm_right_grid(self, column_name):
        """
        Returning get specific column first row value from rplm right grid
        Implementing logging for get specific column first row value from rplm right grid functionality
        :return: column_value
        """
        column_value = None
        try:
            self.logger.info('Start: get specific column first row value from rplm right grid')
            column_value = self._ixtrade_page.get_specific_column_first_row_value_from_rplm_right_grid(column_name)
        except WebDriverException as exp:
            column_value = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get specific column first row value from rplm right grid')
            return column_value

    def click_rplm_grid_first_row_checkbox(self):
        """
        Returning click rplm grid first row checkbox
        Implementing logging for click rplm grid first row checkbox functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click rplm grid first row checkbox')
            self._ixtrade_page.click_rplm_grid_first_row_checkbox()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click rplm grid first row checkbox')
            return is_clicked

    def click_bulk_edit_button(self):
        """
        Returning click bulk edit button
        Implementing logging for click bulk edit button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click bulk edit button')
            self._ixtrade_page.click_bulk_edit_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click bulk edit button')
            return is_clicked

    def set_status_for_bulk_edit(self, status):
        """
        Returning set status for bulk edit
        Implementing logging for set status for bulk edit functionality
        :param status:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set status for bulk edit')
            self._ixtrade_page.set_status_for_bulk_edit(status)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set status for bulk edit')
            return is_set

    def set_end_date_for_bulk_edit(self):
        """
        Returning set start date for rpl approve reject
        Implementing logging for set start date for rpl approve reject functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: set start date for rpl approve reject')
            return self._ixtrade_page.set_end_date_for_bulk_edit()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set start date for rpl approve reject')

    def click_bulk_edit_submit_button(self):
        """
        Returning click bulk edit submit button
        Implementing logging for click bulk edit submit button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click bulk edit submit button')
            self._ixtrade_page.click_bulk_edit_submit_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click bulk edit submit button')
            return is_clicked

    def click_target_buy_list_submenu(self):
        """
        Returning click target buy list submenu
        Implementing logging for click target buy list submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click target buy list submenu')
            self._ixtrade_page.click_target_buy_list_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click target buy list submenu')
            return is_clicked

    def click_target_buy_list_calculate_button(self):
        """
        Returning click target buy list calculate button
        Implementing logging for click target buy list calculate button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click target buy list calculate button')
            self._ixtrade_page.click_target_buy_list_calculate_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click target buy list calculate button')
            return is_clicked

    def is_cost_forecast_job_initialization_message_shown(self):
        """
        Returning is cost forecast job initialization message shown
        Implementing logging for is cost forecast job initialization message shown functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is cost forecast job initialization message shown')
            return self._ixtrade_page.is_cost_forecast_job_initialization_message_shown()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is cost forecast job initialization message shown')

    def click_target_buy_list_generation_submenu(self):
        """
        Returning click target buy list generation submenu
        Implementing logging for click target buy list generation submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click target buy list generation submenu')
            self._ixtrade_page.click_target_buy_list_generation_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click target buy list generation submenu')
            return is_clicked

    def is_target_buy_list_generation_screen_button_present(self, button):
        """
        Returning is target buy list generation screen button present
        Implementing logging for is target buy list generation screen button present functionality
        :param button:
        :return:
        """
        try:
            self.logger.info('Start: is target buy list generation screen button present')
            return self._ixtrade_page.is_target_buy_list_generation_screen_button_present(button)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is target buy list generation screen button present')

    def is_target_buy_list_generation_screen_list_control_present(self, list_control):
        """
        Returning is target buy list generation screen list control present
        Implementing logging for is target buy list generation screen list control present functionality
        :param list_control:
        :return:
        """
        try:
            self.logger.info('Start: is target buy list generation screen list control present')
            return self._ixtrade_page.is_target_buy_list_generation_screen_list_control_present(list_control)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is target buy list generation screen list control present')

    def is_published_date_datepicker_visible(self):
        """
        Returning is target buy list generation screen published date control present
        Implementing logging for is target buy list generation screen published date control present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is target buy list generation screen published date control present')
            return self._ixtrade_page.is_published_date_datepicker_visible()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is target buy list generation screen published date control present')

    def is_vendors_selector_list_box_visible(self):
        """
        Returning is vendors selector list box visible
        Implementing logging for is vendors selector list box visible functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is vendors selector list box visible')
            return self._ixtrade_page.is_published_date_datepicker_visible()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is vendors selector list box visible')

    def is_selected_vendors_list_box_visible(self):
        """
        Returning is selected vendors list box visible
        Implementing logging for is selected vendors list box visible functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is selected vendors list box visible')
            return self._ixtrade_page.is_selected_vendors_list_box_visible()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is selected vendors list box visible')

    def is_country_selector_list_box_visible(self):
        """
        Returning is countries selector list box visible
        Implementing logging for is countries selector list box visible functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is countries selector list box visible')
            return self._ixtrade_page.is_country_selector_list_box_visible()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is countries selector list box visible')

    def is_selected_country_list_box_visible(self):
        """
        Returning is selected countries list box visible
        Implementing logging for is selected countries list box visible functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is selected countries list box visible')
            return self._ixtrade_page.is_selected_country_list_box_visible()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is selected countries list box visible')

    def verify_deal_management_grid_column_display_thousand_separators(self, column_name):
        """
        Returning verify deal management grid column display thousand separators
        Implementing logging for verify deal management grid column display thousand separators functionality
        :param column_name:
        :return: True/False
        """
        is_verified = None
        try:
            self.logger.info('Start: verify deal management grid column display thousand separators')
            is_verified = self._ixtrade_page.verify_deal_management_grid_column_display_thousand_separators(column_name)
        except WebDriverException as exp:
            is_verified = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: verify deal management grid column display thousand separators')
            return is_verified

    def is_rplm_screen_filter_option_present(self, filter_option_name, is_dropdown=True):
        """
        Returning is rplm screen filter option present
        Implementing logging for is rplm screen filter option present functionality
        :param filter_option_name:
        :param is_dropdown:
        :return: True/False
        """
        try:
            self.logger.info('Start: is rplm screen filter option present')
            return self._ixtrade_page.is_rplm_screen_filter_option_present(filter_option_name, is_dropdown)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is rplm screen filter option present')

    def is_rplm_screen_button_present(self, button_name):
        """
        Returning is rplm screen button present
        Implementing logging for is rplm screen button present functionality
        :param button_name:
        :return: True/False
        """
        try:
            self.logger.info('Start: is rplm screen button present')
            return self._ixtrade_page.is_rplm_screen_button_present(button_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is rplm screen button present')

    def is_apply_custom_rules_radio_button_present(self):
        """
        Returning is apply custom rules radio button present
        Implementing logging for is apply custom rules radio button present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is apply custom rules radio button present')
            return self._ixtrade_page.is_apply_custom_rules_radio_button_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is apply custom rules radio button present')

    def click_rpl_report_button(self):
        """
        Returning click rpl report button
        Implementing logging for click rpl report button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click rpl report button')
            self._ixtrade_page.click_rpl_report_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click rpl report button')
            return is_clicked

    def is_rpl_report_price_list_tab_present(self):
        """
        Returning is rpl report price list tab present
        Implementing logging for is rpl report price list tab present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is rpl report price list tab present')
            return self._ixtrade_page.is_rpl_report_price_list_tab_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is rpl report price list tab present')

    def is_rpl_report_impact_tab_present(self):
        """
        Returning is rpl report impact tab present
        Implementing logging for is rpl report impact tab present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is rpl report impact tab present')
            return self._ixtrade_page.is_rpl_report_impact_tab_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is rpl report impact tab present')

    def select_rpl_report_impact_tab(self):
        """
        Returning select rpl report impact tab
        Implementing logging for select rpl report impact tab functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select rpl report impact tab')
            self._ixtrade_page.select_rpl_report_impact_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select rpl report impact tab')
            return is_selected

    def is_rpl_report_price_list_grid_column_present(self, column_name):
        """
        Returning is rpl report price list grid column present
        Implementing logging for is rpl report price list grid column present functionality
        :param column_name:
        :return: True/False
        """
        try:
            self.logger.info('Start: is rpl report price list grid column present')
            return self._ixtrade_page.is_rpl_report_price_list_grid_column_present(column_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is rpl report price list grid column present')

    def is_rpl_report_impact_grid_column_present(self, column_name):
        """
        Returning is rpl report impact grid column present
        Implementing logging for is rpl report impact grid column present functionality
        :param column_name:
        :return: True/False
        """
        try:
            self.logger.info('Start: is rpl report impact grid column present')
            return self._ixtrade_page.is_rpl_report_impact_grid_column_present(column_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is rpl report impact grid column present')

    def click_save_changes_button(self):
        """
        Returning click save changes button
        Implementing logging for click save changes button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click save changes button')
            self._ixtrade_page.click_save_changes_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click save changes button')
            return is_clicked

    def set_note(self, note_prefix):
        """
        Returning set note
        Implementing logging for set note functionality
        :param note_prefix:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set note')
            self._ixtrade_page.set_note(note_prefix)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set note')
            return is_set

    def select_apply_custom_rules_radio_button(self, radio_button_value):
        """
        Returning select apply custom rules radio button
        Implementing logging for select apply custom rules radio button functionality
        :param radio_button_value:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select apply custom rules radio button')
            self._ixtrade_page.select_apply_custom_rules_radio_button(radio_button_value)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select apply custom rules radio button')
            return is_selected

    def click_service_level_based_cpl_customer_definition_submenu(self):
        """
        Returning click service level based cpl customer definition submenu
        Implementing logging for click service level based cpl customer definition submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click service level based cpl customer definition submenu')
            self._ixtrade_page.click_service_level_based_cpl_customer_definition_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click service level based cpl customer definition submenu')
            return is_clicked

    def is_service_level_customer_definition_grid_column_present(self, column_name):
        """
        Returning is service level customer definition grid column present
        Implementing logging for is service level customer definition grid column present functionality
        :param column_name:
        :return: True/False
        """
        try:
            self.logger.info('Start: is service level customer definition grid column present')
            return self._ixtrade_page.is_service_level_customer_definition_grid_column_present(column_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is service level customer definition grid column present')

    def does_service_level_based_cpls_dropdown_display_correct_options(self):
        """
        Returning does service level based cpls dropdown display correct options
        Implementing logging for does service level based cpls dropdown display correct options functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: does service level based cpls dropdown display correct options')
            return self._ixtrade_page.does_service_level_based_cpls_dropdown_display_correct_options()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: does service level based cpls dropdown display correct options')

    def refresh_window(self):
        """
        Returning refresh window
        Implementing logging for refresh window functionality
        :return: True/False
        """
        is_refreshed = None
        try:
            self.logger.info('Start: refresh window')
            self._ixtrade_page.refresh_window()
            is_refreshed = True
        except WebDriverException as exp:
            is_refreshed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: refresh window')
            return is_refreshed

    def click_customer_pricing_exception_management_go_button(self):
        """
        Returning click customer pricing exception management go button
        Implementing logging for click customer pricing exception management go button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click customer pricing exception management go button')
            self._ixtrade_page.click_customer_pricing_exception_management_go_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click customer pricing exception management go button')
            return is_clicked

    def click_customer_pricing_exception_management_export_import_button(self):
        """
        Returning click customer pricing exception management export import button
        Implementing logging for click customer pricing exception management export import button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click customer pricing exception management export import button')
            self._ixtrade_page.click_customer_pricing_exception_management_export_import_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click customer pricing exception management export import button')
            return is_clicked

    def is_export_import_requested_exception_for_customer_pricing_exceptions_window_opened(self):
        """
        Returning is export import requested exception for customer pricing exceptions window opened
        Implementing logging for is export import requested exception for customer pricing exceptions window opened functionality
        :return: True/False
        """
        is_loaded = None
        try:
            self.logger.info('Start: is export import requested exception for customer pricing exceptions window opened')
            self._ixtrade_page.is_export_import_requested_exception_for_customer_pricing_exceptions_window_opened()
            is_loaded = True
        except WebDriverException as exp:
            is_loaded = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is export import requested exception for customer pricing exceptions window opened')
            return is_loaded

    def close_export_import_requested_exception_for_customer_pricing_exceptions_window(self):
        """
        Returning close export import requested exception for customer pricing exceptions window
        Implementing logging for close export import requested exception for customer pricing exceptions window functionality
        :return: True/False
        """
        is_closed = None
        try:
            self.logger.info('Start: close export import requested exception for customer pricing exceptions window')
            self._ixtrade_page.close_export_import_requested_exception_for_customer_pricing_exceptions_window()
            is_closed = True
        except WebDriverException as exp:
            is_closed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: close export import requested exception for customer pricing exceptions window')
            return is_closed

    def click_to_expand_specific_bar_in_customer_routing_role_definition_screen(self, bar_name):
        """
        Returning click to expand specific bar in customer routing role definition screen
        Implementing logging for click to expand specific bar in customer routing role definition screen functionality
        :param bar_name:
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click to expand specific bar in customer routing role definition screen')
            self._ixtrade_page.click_to_expand_specific_bar_in_customer_routing_role_definition_screen(bar_name)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click to expand specific bar in customer routing role definition screen')
            return is_clicked

    def check_first_rounding_rule_checkbox(self):
        """
        Returning check first rounding rule checkbox
        Implementing logging for check first rounding rule checkbox functionality
        :return: True/False
        """
        is_checked = None
        try:
            self.logger.info('Start: check first rounding rule checkbox')
            self._ixtrade_page.check_first_rounding_rule_checkbox()
            is_checked = True
        except WebDriverException as exp:
            is_checked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: check first rounding rule checkbox')
            return is_checked

    def click_rounding_rules_definition_save_button(self):
        """
        Returning click rounding rules definition save button
        Implementing logging for click rounding rules definition save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click rounding rules definition save button')
            self._ixtrade_page.click_rounding_rules_definition_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click rounding rules definition save button')
            return is_clicked

    def filter_country_definition(self, country_name):
        """
        Returning filter country definition
        Implementing logging for filter country definition functionality
        :param country_name:
        :return: True/False
        """
        is_filtered = None
        try:
            self.logger.info('Start: filter country definition')
            self._ixtrade_page.filter_country_definition(country_name)
            is_filtered = True
        except WebDriverException as exp:
            is_filtered = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: filter country definition')
            return is_filtered

    def check_first_country_definition_checkbox(self):
        """
        Returning check first country definition checkbox
        Implementing logging for check first country definition checkbox functionality
        :return: True/False
        """
        is_checked = None
        try:
            self.logger.info('Start: check first country definition checkbox')
            self._ixtrade_page.check_first_country_definition_checkbox()
            is_checked = True
        except WebDriverException as exp:
            is_checked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: check first country definition checkbox')
            return is_checked

    def click_country_definition_save_button(self):
        """
        Returning click country definition save button
        Implementing logging for click country definition save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click country definition save button')
            self._ixtrade_page.click_country_definition_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click country definition save button')
            return is_clicked

    def set_rate_dimension_template(self):
        """
        Returning set rate dimension template
        Implementing logging for set rate dimension template functionality
        :return: file name
        """
        is_set = None
        try:
            self.logger.info('Start: set rate dimension template')
            self._ixtrade_page.set_rate_dimension_template()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set rate dimension template')
            return is_set

    def click_rate_dimension_template_save_button(self):
        """
        Returning click rate dimension template save button
        Implementing logging for click rate dimension template save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click rate dimension template save button')
            self._ixtrade_page.click_rate_dimension_template_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click rate dimension template save button')
            return is_clicked

    def filter_customer_source(self, customer_name):
        """
        Returning filter customer source
        Implementing logging for customer source functionality
        :param customer_name:
        :return: True/False
        """
        is_filtered = None
        try:
            self.logger.info('Start: filter customer source')
            self._ixtrade_page.filter_customer_source(customer_name)
            is_filtered = True
        except WebDriverException as exp:
            is_filtered = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: filter customer source')
            return is_filtered

    def set_rounding_rule_to_customer_source(self):
        """
        Returning set rounding rule to customer source
        Implementing logging for set rounding rule to customer source functionality
        :return: file name
        """
        is_set = None
        try:
            self.logger.info('Start: set rounding rule to customer source')
            self._ixtrade_page.set_rounding_rule_to_customer_source()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set rounding rule to customer source')
            return is_set

    def click_customer_source_save_button(self):
        """
        Returning click customer source save button
        Implementing logging for click customer source save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click customer source save button')
            self._ixtrade_page.click_customer_source_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click customer source save button')
            return is_clicked

    def click_cpem_grid_bulk_edit_button(self):
        """
        Returning click cpem grid bulk edit button
        Implementing logging for click cpem grid bulk edit button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click cpem grid bulk edit button')
            self._ixtrade_page.click_cpem_grid_bulk_edit_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click cpem grid bulk edit button')
            return is_clicked

    def set_requested_price_for_bulk_edit(self, requested_price):
        """
        Returning set requested price for bulk edit
        Implementing logging for set requested price for bulk edit functionality
        :param requested_price:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set requested price for bulk edit')
            self._ixtrade_page.set_requested_price_for_bulk_edit(requested_price)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set requested price for bulk edit')
            return is_set

    def click_cpem_grid_cpe_report_button(self):
        """
        Returning click cpem grid cpe report button
        Implementing logging for click cpem grid cpe report button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click cpem grid cpe report button')
            self._ixtrade_page.click_cpem_grid_cpe_report_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click cpem grid cpe report button')
            return is_clicked

    def is_cpe_report_page_loaded_properly(self):
        """
        Returning is cpe report page loaded properly
        Implementing logging for is cpe report page loaded properly functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is cpe report page loaded properly')
            return self._ixtrade_page.is_cpe_report_page_loaded_properly()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is cpe report page loaded properly')

    def is_data_displayed_in_cpe_grid(self):
        """
        Returning is data displayed in cpe grid
        Implementing logging for is data displayed in cpe grid functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is data displayed in cpe grid')
            return self._ixtrade_page.is_data_displayed_in_cpe_grid()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is data displayed in cpe grid')

    def is_left_side_specific_column_present_in_cpe_grid(self, column_name):
        """
        Returning is left side specific column present in cpe grid
        Implementing logging for is left side specific column present in cpe grid functionality
        :param column_name:
        :return: True/False
        """
        try:
            self.logger.info('Start: is left side specific column present in cpe grid')
            return self._ixtrade_page.is_left_side_specific_column_present_in_cpe_grid(column_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is left side specific column present in cpe grid')

    def set_current_status(self, current_status):
        """
        Returning set current status
        Implementing logging for set current status functionality
        :param current_status:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set current status')
            self._ixtrade_page.set_current_status(current_status)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set current status')
            return is_set

    def is_generate_offer_file_link_present(self):
        """
        Returning is generate offer file link present
        Implementing logging for is generate offer file link present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is generate offer file link present')
            return self._ixtrade_page.is_generate_offer_file_link_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is generate offer file link present')

    def click_customer_offer_generation_submenu(self):
        """
        Returning click customer offer generation submenu
        Implementing logging for click customer offer generation submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click customer offer generation submenu')
            self._ixtrade_page.click_customer_offer_generation_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click customer offer generation submenu')
            return is_clicked

    def set_mypricelist_in_ixtrade(self, pricelist_name):
        """
        Returning set mypricelist in ixtrade
        Implementing logging for set mypricelist in ixtrade functionality
        :param pricelist_name:
        :return: file name
        """
        is_set = None
        try:
            self.logger.info('Start: set mypricelist in ixtrade')
            self._ixtrade_page.set_mypricelist_in_ixtrade(pricelist_name)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set mypricelist in ixtrade')
            return is_set

    def click_mypricelist_generate_button(self):
        """
        Returning click mypricelist generate button
        Implementing logging for click mypricelist generate button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click mypricelist generate button')
            self._ixtrade_page.click_mypricelist_generate_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click mypricelist generate button')
            return is_clicked

    def get_specific_column_first_row_value_from_cpem_right_grid(self, column_name):
        """
        Returning get specific column first row value from cpem right grid
        Implementing logging for get specific column first row value from cpem right grid functionality
        :return: column_value
        """
        column_value = None
        try:
            self.logger.info('Start: get specific column first row value from cpem right grid')
            column_value = self._ixtrade_page.get_specific_column_first_row_value_from_cpem_right_grid(column_name)
        except WebDriverException as exp:
            column_value = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get specific column first row value from cpem right grid')
            return column_value

    def is_percentage_margin_column_present(self):
        """
        Returning is percentage margin column present
        Implementing logging for is percentage margin column present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is percentage margin column present')
            return self._ixtrade_page.is_percentage_margin_column_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is percentage margin column present')

    def sort_percentage_margin_column_in_descending_order(self):
        """
        Returning sort percentage margin column in descending order
        Implementing logging for sort percentage margin column in descending order functionality
        :return: True/False
        """
        is_sorted = None
        try:
            self.logger.info('Start: sort percentage margin column in descending order')
            self._ixtrade_page.sort_percentage_margin_column_in_descending_order()
            is_sorted = True
        except WebDriverException as exp:
            is_sorted = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: sort percentage margin column in descending order')
            return is_sorted

    def is_percentage_margin_column_value_displayed_correctly(self, margin_minimum_test, approved_price, percentage_margin):
        """
        Returning is percentage margin column value displayed correctly
        Implementing logging for is percentage margin column value displayed correctly functionality
        :param margin_minimum_test:
        :param approved_price:
        :param percentage_margin:
        :return: True/False
        """
        try:
            self.logger.info('Start: is percentage margin column value displayed correctly')
            return self._ixtrade_page.is_percentage_margin_column_value_displayed_correctly(margin_minimum_test, approved_price, percentage_margin)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is percentage margin column value displayed correctly')

    def click_offer_template_management_submenu(self):
        """
        Returning click offer template management submenu
        Implementing logging for click offer template management submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click offer template management submenu')
            self._ixtrade_page.click_offer_template_management_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click offer template management submenu')
            return is_clicked

    def is_offer_template_management_page_loaded_properly(self):
        """
        Returning is offer template management page loaded properly
        Implementing logging for is offer template management page loaded properly functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is offer template management page loaded properly')
            return self._ixtrade_page.is_offer_template_management_page_loaded_properly()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is offer template management page loaded properly')

    def is_offer_template_management_filter_option_worked_properly(self):
        """
        Returning is offer template management filter option worked properly
        Implementing logging for is offer template management filter option worked properly functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is offer template management filter option worked properly')
            return self._ixtrade_page.is_offer_template_management_filter_option_worked_properly()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is offer template management filter option worked properly')

    def click_first_offer_template(self):
        """
        Returning click first offer template
        Implementing logging for click first offer template functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click first offer template')
            self._ixtrade_page.click_first_offer_template()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click first offer template')
            return is_clicked

    def is_company_field_present_in_detail_frame(self):
        """
        Returning is company field present in detail frame
        Implementing logging for is company field present in detail frame functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is company field present in detail frame')
            return self._ixtrade_page.is_company_field_present_in_detail_frame()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is company field present in detail frame')

    def click_offer_template_management_edit_button(self):
        """
        Returning click offer template management edit button
        Implementing logging for click offer template management edit button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click offer template management edit button')
            self._ixtrade_page.click_offer_template_management_edit_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click offer template management edit button')
            return is_clicked

    def is_company_field_present(self):
        """
        Returning is company field present
        Implementing logging for is company field presentfunctionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is company field present')
            return self._ixtrade_page.is_company_field_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is company field present')

    def click_offer_template_definition_cancel(self):
        """
        Returning click offer template definition cancel
        Implementing logging for click offer template definition cancel functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click offer template definition cancel')
            self._ixtrade_page.click_offer_template_definition_cancel()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click offer template definition cancel')
            return is_clicked

    def click_new_offer_template_button(self):
        """
        Returning click new offer template button
        Implementing logging for click new offer template button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click new offer template button')
            self._ixtrade_page.click_new_offer_template_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click new offer template button')
            return is_clicked

    def is_vendor_offer_upload_fail_message_present(self):
        """
        Returning is vendor offer upload fail message present
        Implementing logging for is vendor offer upload fail message present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is vendor offer upload fail message present')
            return self._ixtrade_page.is_vendor_offer_upload_fail_message_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is vendor offer upload fail message present')

    def click_select_order_column_button(self):
        """
        Returning click select order column button
        Implementing logging for click select order column button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click select order column button')
            self._ixtrade_page.click_select_order_column_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click select order column button')
            return is_clicked

    def is_margin_percentage_checkbox_present(self):
        """
        Returning is margin percentage checkbox present
        Implementing logging for is margin percentage checkbox present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is margin percentage checkbox present')
            return self._ixtrade_page.is_margin_percentage_checkbox_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is margin percentage checkbox present')

    def check_margin_percentage_checkbox(self):
        """
        Returning check margin percentage checkbox
        Implementing logging for check margin percentage checkbox functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: check margin percentage checkbox')
            self._ixtrade_page.check_margin_percentage_checkbox()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: check margin percentage checkbox')
            return is_clicked

    def is_margin_percentage_column_present(self):
        """
        Returning is margin percentage column present
        Implementing logging for is margin percentage column present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is margin percentage column present')
            return self._ixtrade_page.is_margin_percentage_column_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is margin percentage column present')

    def click_customer_pricing_exception_entry_submenu(self):
        """
        Returning click customer pricing exception entry Submenu
        Implementing logging for click customer pricing exception entry Submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click customer pricing exception entry Submenu')
            self._ixtrade_page.click_customer_pricing_exception_entry_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click customer pricing exception entry Submenu')
            return is_clicked

    def set_cpee_status(self, status):
        """
        Returning set cpee status
        Implementing logging for set cpee status functionality
        :param status:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set cpee status')
            self._ixtrade_page.set_cpee_status(status)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set cpee status')
            return is_set

    def click_customer_pricing_exception_management_go_button_with_validation(self):
        """
        Returning click customer pricing exception management go button with validation
        Implementing logging for click customer pricing exception management go button with validation functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click customer pricing exception management go button with validation')
            self._ixtrade_page.click_customer_pricing_exception_management_go_button_with_validation()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click customer pricing exception management go button with validation')
            return is_clicked