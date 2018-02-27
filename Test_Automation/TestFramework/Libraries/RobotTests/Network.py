"""
Implementing Network UI page actions
Implementing Logging mechanism for Network page actions
"""

from selenium.common.exceptions import WebDriverException
from TestFramework.Libraries.logger import Logger
from TestFramework.Libraries.Pages.network_page import NetworkPage


class Network:
    """
    Returning switch to network
    Returning network page title
    Returning network dashboard tab status
    Returning technical trunks tab status
    Returning commercial trunks tab status
    Returning select technical trunks tab
    Returning technical trunks tab header
    Returning select commercial trunks tab
    Returning commercial trunks tab header
    Returning technical trunks tab loading status
    Returning set technical trunk for search
    Returning set status for search
    Returning set date for search
    Returning click technical trunks tab search button
    Returning data loading status in the grid
    Returning click create new technical trunk button
    Returning set technical trunk for create technical trunk
    Returning set trunk type for create technical trunk
    Returning set switch for create technical trunk
    Returning set carrier for create technical trunk
    Returning set cdr match for create technical trunk
    Returning click technical trunk attributes tab
    Returning set effective date for create technical trunk
    Returning set status for create technical trunk
    Returning set activated ports for create technical trunk
    Returning set commercial trunk for create technical trunk
    Returning set direction for create technical trunk
    Returning create new technical trunk save button
    Returning filter technical trunks grid
    Returning get technical trunks grid row data
    Returning select technical trunks grid row
    Returning set note in technical trunks grid
    Returning set clli in technical trunks grid
    Returning click save changes button
    Returning click create new commercial trunk button
    Returning set trunk for create commercial trunk
    Returning set account for create commercial trunk
    Returning set effective date for create commercial trunk
    Returning set status for create commercial trunk
    Returning set direction for create commercial trunk
    Returning click create commercial trunk save button
    Returning set commercial trunk
    Returning click commercial trunk search button
    Returning set commercial trunk for search
    Returning click commercial trunks search button
    Returning set status for edit commercial trunk
    Returning set direction for edit commercial trunk
    Returning set effective date for edit commercial trunk
    Returning set clli for edit commercial trunk
    Returning set note for edit commercial trunk
    Returning get commercial trunks grid row data
    Returning set commercial trunk select date
    Returning get technical trunk select date
    Returning click technical trunk grid first row inline action button
    Returning validate date format
    Returning validate currency format
    Returning get technical trunk attributes grid date begin date column value
    Returning get technical trunk attributes grid date end date column value
    Returning get technical trunk attributes grid date modified date column value
    Returning select technical trunk inline action item
    Returning close current pop up
    Returning get commercial trunk select date
    Returning get commercial trunk grid effective date column value
    Returning get commercial trunk grid modified date column value
    Returning get create new commercial trunk effective date
    Returning get created account
    Returning created commercial trunk
    Returning get commercial trunk effective date
    Returning create new switch
    Returning delete created switch
    Returning get created switch
    Returning get created technical trunk
    Returning close network window
    Returning set transmission type for create technical trunk
    Returning compare sorted data
    Returning compare grid column position after altering
    Returning set technical trunks grid settings
    Returning sort technical trunks grid column
    Returning get all rows of specific column from technical trunks grid
    Returning drag technical trunks grid column
    Returning get technical trunks grid column names by order
    Returning click technical trunks grid export to excel button
    Returning click rg adjuster button
    Returning is technical route guide adjuster loaded properly
    Returning is technical trunk attributes grid column present
    Returning select technical trunk details tab
    Returning is technical trunk details field present
    Returning click technical trunk attributes grid first row inline action button
    Returning get technical trunk name
    Returning get technical trunk cdr match
    Returning click create new technical trunk save button with validation
    Returning set note
    """
    ROBOT_LIBRARY_SCOPE = 'TEST SUITE'

    logger = Logger().get_logger('Network')

    def __init__(self):
        self._network_page = NetworkPage()

    def switch_to_network(self):
        """
        Returning switch to network
        Implementing logging for switch to network functionality
        :return: True/False
        """
        is_switched = None
        try:
            self.logger.info('Start: switch to network method')
            self._network_page.switch_to_network()
            is_switched = True
        except WebDriverException as exp:
            is_switched = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: switch to network method')
            return is_switched

    def get_network_page_title(self):
        """
        Returning network page title
        Implementing logging for get network page title functionality
        :return: Network page title
        """
        try:
            self.logger.info('Start: get network page title method')
            return self._network_page.get_network_page_title()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get network page title method')

    def is_network_dashboard_tab_present(self):
        """
        Returning network dashboard tab status
        Implementing logging for is network dashboard tab present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is network dashboard tab present method')
            return self._network_page.is_network_dashboard_tab_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is network dashboard tab present method')

    def is_technical_trunks_tab_present(self):
        """
        Returning technical trunks tab status
        Implementing logging for is technical trunks tab present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is technical trunks tab present method')
            return self._network_page.is_technical_trunks_tab_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: is technical trunks tab present method')

    def is_commercial_trunks_tab_present(self):
        """
        Returning commercial trunks tab status
        Implementing logging for is commercial trunks tab present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is commercial trunks tab present method')
            return self._network_page.is_commercial_trunks_tab_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: is commercial trunks tab present method')

    def select_technical_trunks_tab(self):
        """
        Returning select technical trunks tab
        Implementing logging for select technical trunks tab functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select technical trunks tab present method')
            self._network_page.select_technical_trunks_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: select technical trunks tab present method')
            return is_selected

    def get_technical_trunks_tab_header(self):
        """
        Returning technical trunks tab header
        Implementing logging for get technical trunks tab header functionality
        :return: Technical Trunks tab header
        """
        try:
            self.logger.info('Start: get technical trunks tab header method')
            return self._network_page.get_technical_trunks_tab_header()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: get technical trunks tab header method')

    def select_commercial_trunks_tab(self):
        """
        Returning select commercial trunks tab
        Implementing logging for select commercial trunks tab functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select commercial trunks tab present method')
            self._network_page.select_commercial_trunks_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: select commercial trunks tab present method')
            return is_selected

    def get_commercial_trunks_tab_header(self):
        """
        Returning commercial trunks tab header
        Implementing logging for get commercial trunks tab header functionality
        :return: Commercial Trunks tab header
        """
        try:
            self.logger.info('Start: get commercial trunks tab header method')
            return self._network_page.get_commercial_trunks_tab_header()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: get commercial trunks tab header method')

    def is_technical_trunks_tab_loaded_properly(self):
        """
        Returning technical trunks tab loading status
        Implementing logging for is technical trunks tab loaded properly functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is technical trunks tab loaded properly')
            return self._network_page.is_technical_trunks_tab_loaded_properly()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: is technical trunks tab loaded properly')

    def set_technical_trunk_for_search(self):
        """
        Returning set technical trunk for search
        Implementing logging for set technical trunk for search functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set technical trunk for search')
            self._network_page.set_technical_trunk_for_search()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: set technical trunk for search')
            return is_set

    def set_status_for_search(self, *status):
        """
        Returning set status for search
        Implementing logging for set status for search functionality
        :param status:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set status for search')
            self._network_page.set_status_for_search(status)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: set status for search')
            return is_set

    def set_date_for_search(self):
        """
        Returning set date for search
        Implementing logging for set date for search functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set date for search')
            self._network_page.set_date_for_search()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: set date for search')
            return is_set

    def click_technical_trunks_tab_search_button(self):
        """
        Returning click technical trunks tab search button
        Implementing logging for click technical trunks tab search button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click technical trunks tab search button')
            self._network_page.click_technical_trunks_tab_search_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: click technical trunks tab search button')
            return is_clicked

    def is_data_loaded_in_the_grid(self):
        """
        Returning data loading status in the grid
        Implementing logging for is data loaded in the grid functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is data loaded in the grid')
            return self._network_page.is_data_loaded_in_the_grid()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: is data loaded in the grid')

    def click_create_new_technical_trunk_button(self):
        """
        Returning click create new technical trunk button
        Implementing logging for click create new technical trunk button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click create new technical trunk button')
            self._network_page.click_create_new_technical_trunk_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: click create new technical trunk button')
            return is_clicked

    def set_technical_trunk_for_create_technical_trunk(self, technical_trunk_prefix, is_static_value, static_value):
        """
        Returning set technical trunk for create technical trunk
        Implementing logging for set technical trunk for create technical trunk functionality
        :param technical_trunk_prefix:
        :param is_static_value:
        :param static_value:
        :return: technical trunk name
        """
        try:
            self.logger.info('Start: set technical trunk for create technical trunk')
            return self._network_page.set_technical_trunk_for_create_technical_trunk(technical_trunk_prefix, is_static_value, static_value)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: set technical trunk for create technical trunk')

    def set_trunk_type_for_create_technical_trunk(self, trunk_type):
        """
        Returning set trunk type for create technical trunk
        Implementing set trunk type for create technical trunk functionality
        :param trunk_type:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set trunk type for create technical trunk')
            self._network_page.set_trunk_type_for_create_technical_trunk(trunk_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: set trunk type for create technical trunk')
            return is_set

    def set_switch_for_create_technical_trunk(self, switch):
        """
        Returning set switch for create technical trunk
        Implementing logging for set switch for create technical trunk functionality
        :param switch:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set switch for create technical trunk')
            self._network_page.set_switch_for_create_technical_trunk(switch)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: set switch for create technical trunk')
            return is_set

    def set_carrier_for_create_technical_trunk(self, carrier):
        """
        Returning set carrier for create technical trunk
        Implementing logging for set carrier for create technical trunk functionality
        :param carrier:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set carrier for create technical trunk')
            self._network_page.set_carrier_for_create_technical_trunk(carrier)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: set carrier for create technical trunk')
            return is_set

    def set_cdr_match_for_create_technical_trunk(self, cdr_match_prefix, is_static_value, static_value):
        """
        Returning set cdr match for create technical trunk
        Implementing logging for set cdr match for create technical trunk functionality
        :param cdr_match_prefix:
        :param is_static_value:
        :param static_value:
        :return: cdr match
        """
        try:
            self.logger.info('Start: set cdr match for create technical trunk')
            return self._network_page.set_cdr_match_for_create_technical_trunk(cdr_match_prefix, is_static_value, static_value)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: set cdr match for create technical trunk')

    def click_technical_trunk_attributes_tab(self):
        """
        Returning click technical trunk attributes tab
        Implementing logging for click technical trunk attributes tab functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click technical trunk attributes tab')
            self._network_page.click_technical_trunk_attributes_tab()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: click technical trunk attributes tab')
            return is_clicked

    def set_effective_date_for_create_technical_trunk(self):
        """
        Returning set effective date for create technical trunk
        Implementing logging for set effective date for create technical trunk functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set effective date for create technical trunk')
            self._network_page.set_effective_date_for_create_technical_trunk()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: set effective date for create technical trunk')
            return is_set

    def set_status_for_create_technical_trunk(self, status):
        """
        Returning set status for create technical trunk
        Implementing logging for set status for create technical trunk functionality
        :param status:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set status for create technical trunk')
            self._network_page.set_status_for_create_technical_trunk(status)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: set status for create technical trunk')
            return is_set

    def set_activated_ports_for_create_technical_trunk(self, activated_port):
        """
        Returning set activated ports for create technical trunk
        Implementing logging for set activated ports for create technical trunk functionality
        :param activated_port:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set activated ports for create technical trunk')
            self._network_page.set_activated_ports_for_create_technical_trunk(activated_port)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: set activated ports for create technical trunk')
            return is_set

    def set_commercial_trunk_for_create_technical_trunk(self, commercial_trunk):
        """
        Returning set commercial trunk for create technical trunk
        Implementing logging for set commercial trunk for create technical trunk functionality
        :param commercial_trunk:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set commercial trunk for create technical trunk')
            self._network_page.set_commercial_trunk_for_create_technical_trunk(commercial_trunk)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: set commercial trunk for create technical trunk')
            return is_set

    def set_direction_for_create_technical_trunk(self, direction):
        """
        Returning set direction for create technical trunk
        Implementing logging for set direction for create technical trunk functionality
        :param direction:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set direction for create technical trunk')
            self._network_page.set_direction_for_create_technical_trunk(direction)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: set direction for create technical trunk')
            return is_set

    def click_create_new_technical_trunk_save_button(self):
        """
        Returning create new technical trunk save button
        Implementing logging for create new technical trunk save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: create new technical trunk save button')
            self._network_page.click_create_new_technical_trunk_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: create new technical trunk save button')
            return is_clicked

    def filter_technical_trunks_grid(self, column_name, *item_list):
        """
        Returning filter technical trunks grid
        Implementing logging for filter technical trunks grid functionality
        :param column_name:
        :param item_list:
        :return: True/False
        """
        is_filtered = None
        try:
            self.logger.info('Start: set direction for create technical trunk')
            self._network_page.filter_technical_trunks_grid(column_name, item_list)
            is_filtered = True
        except WebDriverException as exp:
            is_filtered = False
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: set direction for create technical trunk')
            return is_filtered

    def get_technical_trunks_grid_row_data(self):
        """
        Returning get technical trunks grid row data
        Implementing logging for get technical trunks grid row data functionality
        :return: grid row data
        """
        try:
            self.logger.info('Start: get technical trunks grid row data')
            return self._network_page.get_technical_trunks_grid_row_data()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: get technical trunks grid row data')

    def select_technical_trunks_grid_row(self, trunk_name):
        """
        Returning select technical trunks grid row
        Implementing logging for select technical trunks grid row functionality
        :param trunk_name:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select technical trunks grid row')
            self._network_page.select_technical_trunks_grid_row(trunk_name)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: select technical trunks grid row')
            return is_selected

    def set_note_in_technical_trunks_grid(self, note_prefix):
        """
        Returning set note in technical trunks grid
        Implementing logging for set note in technical trunks grid functionality
        :param note_prefix:
        :return: note
        """
        is_set = None
        try:
            self.logger.info('Start: set note in technical trunks grid')
            is_set = self._network_page.set_note_in_technical_trunks_grid(note_prefix)
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: set note in technical trunks grid')
            return is_set

    def set_clli_in_technical_trunks_grid(self, clli):
        """
        Returning set clli in technical trunks grid
        Implementing logging for set clli in technical trunks grid functionality
        :param clli:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set clli in technical trunks grid')
            self._network_page.set_clli_in_technical_trunks_grid(clli)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: set clli in technical trunks grid')
            return is_set

    def click_save_changes_button(self):
        """
        Returning click save changes button
        Implementing logging for click save changes button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click save changes button')
            self._network_page.click_save_changes_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click save changes button')
            return is_clicked

    def click_create_new_commercial_trunk_button(self):
        """
        Returning click create new commercial trunk button
        Implementing logging for click create new commercial trunk button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click create new commercial trunk button')
            self._network_page.click_create_new_commercial_trunk_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click create new commercial trunk button')
            return is_clicked

    def set_trunk_for_create_commercial_trunk(self, trunk_prefix):
        """
        Returning set trunk for create commercial trunk
        Implementing logging for set trunk for create commercial trunk functionality
        :param trunk_prefix:
        :return: True/False
        """
        status = None
        try:
            self.logger.info('Start: set trunk for create commercial trunk')
            self._network_page.set_trunk_for_create_commercial_trunk(trunk_prefix)
            status = True
        except WebDriverException as exp:
            status = False
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: set trunk for create commercial trunk')
            return status

    def get_created_commercial_trunk(self):
        """
        Returning created commercial trunk
        Implementing logging for get created commercial trunk functionality
        :return: created_commercial_trunk
        """
        try:
            self.logger.info('Start: get created commercial trunk')
            return self._network_page.get_created_commercial_trunk()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: get created commercial trunk')

    def set_account_for_create_commercial_trunk(self, account):
        """
        Returning set account for create commercial trunk
        Implementing logging for set account for create commercial trunk functionality
        :param account:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set account for create commercial trunk')
            self._network_page.set_account_for_create_commercial_trunk(account)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: set account for create commercial trunk')
            return is_set

    def set_effective_date_for_create_commercial_trunk(self):
        """
        Returning set effective date for create commercial trunk
        Implementing logging for set effective date for create commercial trunk functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set effective date for create commercial trunk')
            self._network_page.set_effective_date_for_create_commercial_trunk()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: set effective date for create commercial trunk')
            return is_set

    def set_status_for_create_commercial_trunk(self, status):
        """
        Returning set status for create commercial trunk
        Implementing logging for set status for create commercial trunk functionality
        :param status:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set status for create commercial trunk')
            self._network_page.set_status_for_create_commercial_trunk(status)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: set status for create commercial trunk')
            return is_set

    def set_direction_for_create_commercial_trunk(self, direction):
        """
        Returning set direction for create commercial trunk
        Implementing logging for set direction for create commercial trunk functionality
        :param direction:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set direction for create commercial trunk')
            self._network_page.set_direction_for_create_commercial_trunk(direction)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: set direction for create commercial trunk')
            return is_set

    def click_create_commercial_trunk_save_button(self):
        """
        Returning click create commercial trunk save button
        Implementing logging for click create commercial trunk save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click create commercial trunk save button')
            self._network_page.click_create_commercial_trunk_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click create commercial trunk save button')
            return is_clicked

    def set_commercial_trunk(self, commercial_trunk):
        """
        Returning set commercial trunk
        Implementing logging for set commercial trunk functionality
        :param commercial_trunk:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set commercial trunk')
            self._network_page.set_commercial_trunk(commercial_trunk)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: set commercial trunk')
            return is_set

    def click_commercial_trunk_search_button(self):
        """
        Returning click commercial trunk search button
        Implementing logging for click commercial trunk search button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click commercial trunk search button')
            self._network_page.click_commercial_trunk_search_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click commercial trunk search button')
            return is_clicked

    def get_commercial_trunks_grid_row_data(self):
        """
        Returning get commercial trunks grid row data
        Implementing logging for get commercial trunks grid row data functionality
        :return: grid row data
        """
        try:
            self.logger.info('Start: get commercial trunks grid row data')
            return self._network_page.get_commercial_trunks_grid_row_data()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: get commercial trunks grid row data')

    def set_commercial_trunk_select_date(self):
        """
        Returning set commercial trunk select date
        Implementing logging for set commercial trunk select date functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set commercial trunk select date')
            self._network_page.set_commercial_trunk_select_date()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: set commercial trunk select date')
            return is_set

    def set_commercial_trunk_for_search(self, commercial_trunk):
        """
        Returning set commercial trunk for search
        Implementing logging for set commercial trunk for search functionality
        :param commercial_trunk:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set commercial trunk for search')
            self._network_page.set_commercial_trunk_for_search(commercial_trunk)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: set commercial trunk for search')
            return is_set

    def click_commercial_trunks_search_button(self):
        """
        Returning click commercial trunks search button
        Implementing logging for click commercial trunks search button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click commercial trunks search button')
            self._network_page.click_commercial_trunks_search_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click commercial trunks search button')
            return is_clicked

    def set_status_for_edit_commercial_trunk(self, status):
        """
        Returning set status for edit commercial trunk
        Implementing logging for set status for edit commercial trunk functionality
        :param status:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set status for edit commercial trunk')
            self._network_page.set_status_for_edit_commercial_trunk(status)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: set status for edit commercial trunk')
            return is_set

    def set_direction_for_edit_commercial_trunk(self, direction):
        """
        Returning set direction for edit commercial trunk
        Implementing logging for set direction for edit commercial trunk functionality
        :param direction:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set direction for edit commercial trunk')
            self._network_page.set_direction_for_edit_commercial_trunk(direction)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: set direction for edit commercial trunk')
            return is_set

    def set_clli_for_edit_commercial_trunk(self, clli):
        """
        Returning set clli for edit commercial trunk
        Implementing logging for set clli for edit commercial trunk functionality
        :param clli:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set clli for edit commercial trunk')
            self._network_page.set_clli_for_edit_commercial_trunk(clli)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: set clli for edit commercial trunk')
            return is_set

    def set_note_for_edit_commercial_trunk(self):
        """
        Returning set note for edit commercial trunk
        Implementing logging for set note for edit commercial trunk functionality
        :return: unique note
        """
        try:
            self.logger.info('Start: set note for edit commercial trunk')
            return self._network_page.set_note_for_edit_commercial_trunk()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: set note for edit commercial trunk')

    def get_commercial_trunks_grid_row_data_for_edit(self):
        """
        Returning get commercial trunks grid row data
        Implementing logging for get commercial trunks grid row data functionality
        :return: grid row data
        """
        try:
            self.logger.info('Start: get commercial trunks grid row data')
            return self._network_page.get_commercial_trunks_grid_row_data_for_edit()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: get commercial trunks grid row data')

    def get_technical_trunk_select_date(self):
        """
        Returning get technical trunk select date
        Implementing logging for get technical trunk select date functionality
        :return: select date
        """
        try:
            self.logger.info('Start: get technical trunk select date')
            return self._network_page.get_technical_trunk_select_date()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: get technical trunk select date')

    def click_technical_trunk_grid_first_row_inline_action_button(self):
        """
        Returning click technical trunk grid first row inline action button
        Implementing logging for click technical trunk grid first row inline action button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click technical trunk grid first row inline action button')
            self._network_page.click_technical_trunk_grid_first_row_inline_action_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click technical trunk grid first row inline action button')
            return is_clicked

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
                status = self._network_page.validate_date_format(actual_date, expected_date_format)
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
                status = self._network_page.validate_currency_format(actual_value, expected_locale)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: validate currency format')
            return status

    def get_technical_trunk_attributes_grid_begin_date_column_value(self):
        """
        Returning get technical trunk attributes grid date begin date column value
        Implementing logging for get technical trunk attributes grid date begin date column value functionality
        :return: begin date
        """
        try:
            self.logger.info('Start: get technical trunk attributes grid date begin date column value')
            return self._network_page.get_technical_trunk_attributes_grid_begin_date_column_value()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: get technical trunk attributes grid date begin date column value')

    def get_technical_trunk_attributes_grid_end_date_column_value(self):
        """
        Returning get technical trunk attributes grid date end date column value
        Implementing logging for get technical trunk attributes grid date end date column value functionality
        :return: end date
        """
        try:
            self.logger.info('Start: get technical trunk attributes grid date end date column value')
            return self._network_page.get_technical_trunk_attributes_grid_end_date_column_value()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: get technical trunk attributes grid date end date column value')

    def get_technical_trunk_attributes_grid_modified_date_column_value(self):
        """
        Returning get technical trunk attributes grid date modified date column value
        Implementing logging for get technical trunk attributes grid date end date column value functionality
        :return: modified date
        """
        try:
            self.logger.info('Start: get technical trunk attributes grid date modified date column value')
            return self._network_page.get_technical_trunk_attributes_grid_modified_date_column_value()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: get technical trunk attributes grid date modified date column value')

    def select_technical_trunk_inline_action_item(self, item_name):
        """
        Returning select technical trunk inline action item
        Implementing logging for select technical trunk inline action item functionality
        :param item_name
        :return: True/False 
        """
        is_selected = None
        try:
            self.logger.info('Start: select technical trunk inline action item')
            self._network_page.select_technical_trunk_inline_action_item(item_name)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select technical trunk inline action item')
            return is_selected

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
            self._network_page.close_current_pop_up(pop_up_name)
            is_closed = True
        except WebDriverException as exp:
            is_closed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: close current pop up')
            return is_closed

    def get_commercial_trunk_select_date(self):
        """
        Returning get commercial trunk select date
        Implementing logging for get commercial trunk select date functionality
        :return: select date
        """
        try:
            self.logger.info('Start: get commercial trunk select date')
            return self._network_page.get_commercial_trunk_select_date()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: get commercial trunk select date')

    def get_commercial_trunk_grid_effective_date_column_value(self):
        """
        Returning get commercial trunk grid effective date column value
        Implementing logging for get commercial trunk grid effective date column value functionality
        :return: effective date
        """
        try:
            self.logger.info('Start: get commercial trunk grid effective date column value')
            return self._network_page.get_commercial_trunk_grid_effective_date_column_value()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: get commercial trunk grid effective date column value')

    def get_commercial_trunk_grid_modified_date_column_value(self):
        """
        Returning get commercial trunk grid modified date column value
        Implementing logging for get commercial trunk grid modified date column value functionality
        :return: modified date
        """
        try:
            self.logger.info('Start: get commercial trunk grid modified date column value')
            return self._network_page.get_commercial_trunk_grid_modified_date_column_value()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: get commercial trunk grid modified date column value')

    def get_create_new_commercial_trunk_effective_date(self):
        """
        Returning get create new commercial trunk effective date
        Implementing logging for get create new commercial trunk effective date functionality
        :return: effective date
        """
        try:
            self.logger.info('Start: get create new commercial trunk effective date')
            return self._network_page.get_create_new_commercial_trunk_effective_date()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: get create new commercial trunk effective date')

    def get_created_account(self):
        """
        Returning get created account
        Implementing logging for get get created account functionality
        :return: created_account
        """
        try:
            self.logger.info('Start: get created account')
            return self._network_page.get_created_account()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get created account')

    def get_commercial_trunk_effective_date(self):
        """
        Returning get commercial trunk effective date
        Implementing logging for get commercial trunk effective date functionality
        :return: effective_date
        """
        try:
            self.logger.info('Start: get commercial trunk effective date')
            return self._network_page.get_commercial_trunk_effective_date()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get commercial trunk effective date')

    def create_new_switch(self, server, database, user, password, switch_prefix):
        """
        Returning create new switch
        Implementing logging for create new switch functionality
        :param server:
        :param database:
        :param user:
        :param password:
        :param switch_prefix:
        :return:
        """
        try:
            self.logger.info('Start: create new switch')
            self._network_page.create_new_switch(server, database, user, password, switch_prefix)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: create new switch')

    def delete_created_switch(self, server, database, user, password):
        """
        Returning delete created switch
        Implementing logging for delete created switch functionality
        :param server:
        :param database:
        :param user:
        :param password:
        :return:
        """
        try:
            self.logger.info('Start: delete created switch')
            self._network_page.delete_created_switch(server, database, user, password)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: delete created switch')

    def get_created_switch(self):
        """
        Returning get created switch
        Implementing logging for get created switch functionality
        :return:
        """
        try:
            self.logger.info('Start: get created switch')
            return self._network_page.get_created_switch()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get created switch')

    def get_created_technical_trunk(self):
        """
        Returning get created technical trunk
        Implementing logging for get created technical trunk functionality
        :return:
        """
        try:
            self.logger.info('Start: get created technical trunk')
            return self._network_page.get_created_technical_trunk()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get created technical trunk')

    def close_network_window(self):
        """
        Returning close network window
        Implementing logging for close network window functionality
        :return: True/False
        """
        is_closed = None
        try:
            self.logger.info('Start: close network window')
            self._network_page.close_browser()
            self._network_page.switch_to_previous_window()
            is_closed = True
        except WebDriverException as exp:
            is_closed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: close network window')
            return is_closed

    def set_transmission_type_for_create_technical_trunk(self, trunk_type):
        """
        Returning set transmission type for create technical trunk
        Implementing set transmission type for create technical trunk functionality
        :param trunk_type:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set transmission type for create technical trunk')
            self._network_page.set_transmission_type_for_create_technical_trunk(trunk_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: set transmission type for create technical trunk')
            return is_set

    def compare_sorted_data(self, descending_order, *unsorted_data):
        """
        Returning compare sorted data
        Implementing logging for compare sorted data functionality
        :param descending_order:
        :param unsorted_data:
        :return: True/False
        """
        is_sorted = None
        try:
            self.logger.info('Start: compare sorted data')
            is_sorted = self._network_page.compare_sorted_data(unsorted_data, descending_order)
        except WebDriverException as exp:
            is_sorted = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare sorted data')
            return is_sorted

    def compare_grid_column_position_after_altering(self, source_column, destination_column, *column_name_list):
        """
        Returning compare grid column position after altering
        Implementing logging for compare grid column position after altering functionality
        :param source_column:
        :param destination_column:
        :param column_name_list:
        :return: True/False
        """
        is_compared = None
        try:
            self.logger.info('Start: compare grid column position after altering')
            is_compared = self._network_page.compare_grid_column_position_after_altering(source_column, destination_column, column_name_list)
        except WebDriverException as exp:
            is_compared = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare grid column position after altering')
            return is_compared

    def set_technical_trunks_grid_settings(self, grid_settings):
        """
        Returning set technical trunks grid settings
        Implementing logging for set technical trunks grid settings functionality
        :param grid_settings:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set technical trunks grid settings')
            self._network_page.set_technical_trunks_grid_settings(grid_settings)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set technical trunks grid settings')
            return is_set

    def sort_technical_trunks_grid_column(self, column_name, descending_order=False):
        """
        Returning sort technical trunks grid column
        Implementing logging for sort technical trunks grid column functionality
        :param column_name:
        :param descending_order:
        :return: True/False
        """
        is_sorted = None
        try:
            self.logger.info('Start: sort technical trunks grid column')
            self._network_page.sort_technical_trunks_grid_column(column_name, descending_order)
            is_sorted = True
        except WebDriverException as exp:
            is_sorted = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: sort technical trunks grid column')
            return is_sorted

    def get_all_rows_of_specific_column_from_technical_trunks_grid(self, column_name):
        """
        Returning get all rows of specific column from technical trunks grid
        Implementing logging for get all rows of specific column from technical trunks grid functionality
        :param column_name:
        :return: all_row_data
        """
        all_row_data = None
        try:
            self.logger.info('Start: get all rows of specific column from technical trunks grid')
            all_row_data = self._network_page.get_all_rows_of_specific_column_from_technical_trunks_grid(column_name)
        except WebDriverException as exp:
            all_row_data = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get all rows of specific column from technical trunks grid')
            return all_row_data

    def drag_technical_trunks_grid_column(self, source_column, destination_column):
        """
        Returning drag technical trunks grid column
        Implementing logging for drag technical trunks grid column functionality
        :param source_column:
        :param destination_column:
        :return: True/False
        """
        is_dragged = None
        try:
            self.logger.info('Start: drag technical trunks grid column')
            self._network_page.drag_technical_trunks_grid_column(source_column, destination_column)
            is_dragged = True
        except WebDriverException as exp:
            is_dragged = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: drag technical trunks grid column')
            return is_dragged

    def get_technical_trunks_grid_column_names_by_order(self):
        """
        Returning get technical trunks grid column names by order
        Implementing logging for get technical trunks grid column names by order functionality
        :return: column_name_list
        """
        column_name_list = None
        try:
            self.logger.info('Start: get technical trunks grid column names by order')
            column_name_list = self._network_page.get_technical_trunks_grid_column_names_by_order()
        except WebDriverException as exp:
            column_name_list = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get technical trunks grid column names by order')
            return column_name_list

    def click_technical_trunks_grid_export_to_excel_button(self):
        """
        Returning click technical trunks grid export to excel button
        Implementing logging for click technical trunks grid export to excel button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click technical trunks grid export to excel button')
            self._network_page.click_technical_trunks_grid_export_to_excel_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click technical trunks grid export to excel button')
            return is_clicked

    def click_rg_adjuster_button(self):
        """
        Returning click rg adjuster button
        Implementing logging for click rg adjuster button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click rg adjuster button')
            self._network_page.click_rg_adjuster_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: click rg adjuster button')
            return is_clicked

    def is_technical_route_guide_adjuster_loaded_properly(self):
        """
        Returning is technical route guide adjuster loaded properly
        Implementing logging for is technical route guide adjuster loaded properly functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is technical route guide adjuster loaded properly')
            return self._network_page.is_technical_route_guide_adjuster_loaded_properly()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: is technical route guide adjuster loaded properly')

    def is_technical_trunk_attributes_grid_column_present(self, column_name):
        """
        Returning is technical trunk attributes grid column present
        Implementing logging for is technical trunk attributes grid column present functionality
        :param column_name:
        :return: True/False
        """
        try:
            self.logger.info('Start: is technical trunk attributes grid column present')
            return self._network_page.is_technical_trunk_attributes_grid_column_present(column_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: is technical trunk attributes grid column present')

    def select_technical_trunk_details_tab(self):
        """
        Returning select technical trunk details tab
        Implementing logging for select technical trunk details tab functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select technical trunk details tab')
            self._network_page.select_technical_trunk_details_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: select technical trunk details tab')
            return is_selected

    def is_technical_trunk_details_field_present(self, field_name):
        """
        Returning is technical trunk details field present
        Implementing logging for is technical trunk details field present functionality
        :param field_name:
        :return: True/False
        """
        try:
            self.logger.info('Start: is technical trunk details field present')
            return self._network_page.is_technical_trunk_details_field_present(field_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: is technical trunk details field present')

    def click_technical_trunk_attributes_grid_first_row_inline_action_button(self):
        """
        Returning click technical trunk attributes grid first row inline action button
        Implementing logging for click technical trunk attributes grid first row inline action button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click technical trunk attributes grid first row inline action button')
            self._network_page.click_technical_trunk_attributes_grid_first_row_inline_action_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click technical trunk attributes grid first row inline action button')
            return is_clicked

    def get_technical_trunk_name(self):
        """
        Returning get technical trunk name
        Implementing logging for get technical trunk name functionality
        :return: technical_trunk_name
        """
        technical_trunk_name = None
        try:
            self.logger.info('Start: get technical trunk name')
            technical_trunk_name = self._network_page.get_technical_trunk_name()
        except WebDriverException as exp:
            technical_trunk_name = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get technical trunk name')
            return technical_trunk_name

    def get_technical_trunk_cdr_match(self):
        """
        Returning get technical trunk cdr match
        Implementing logging for get technical trunk cdr match functionality
        :return: technical_trunk_cdr_match
        """
        technical_trunk_cdr_match = None
        try:
            self.logger.info('Start: get technical trunk cdr match')
            technical_trunk_cdr_match = self._network_page.get_technical_trunk_cdr_match()
        except WebDriverException as exp:
            technical_trunk_cdr_match = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get technical trunk cdr match')
            return technical_trunk_cdr_match

    def click_create_new_technical_trunk_save_button_with_validation(self):
        """
        Returning click create new technical trunk save button with validation
        Implementing logging for click create new technical trunk save button with validation functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click create new technical trunk save button with validation')
            self._network_page.click_create_new_technical_trunk_save_button_with_validation()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: click create new technical trunk save button with validation')
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
            self._network_page.set_note(note_prefix)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set note')
            return is_set
