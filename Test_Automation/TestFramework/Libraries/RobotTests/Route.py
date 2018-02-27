"""
Implementing Route UI page actions
Implementing Logging mechanism for Route page actions
"""

from selenium.common.exceptions import WebDriverException
from TestFramework.Libraries.logger import Logger
from TestFramework.Libraries.Pages.route_page import RoutePage


class Route:
    """
    Returning switch to route
    Returning route page title
    Returning commercial dashboard tab status
    Returning commercial routing tab status
    Returning technical routing tab status
    Returning manage reasons link status
    Returning transition automation link status
    Returning select commercial routing tab
    Returning commercial routing tab header
    Returning select technical routing tab
    Returning technical routing tab header
    Returning click benchmarks button
    Returning set new benchmark values
    Returning set default benchmark values
    Returning click route class benchmarks save changes button
    Returning close current tab
    Returning click create new suggestion button
    Returning is new suggestion window loaded properly
    Returning close current pop up
    Returning click commercial routing grid search button
    Returning select commercial routing grid first row checkbox
    Returning click recalc rgs button
    Returning click commercial routing grid cancel changes button
    Returning select max route commercial tab
    Returning filter max route commercial grid
    Returning set value in max route commercial grid column
    Returning click max route commercial save changes button
    Returning select max trunks per switch tab
    Returning set max trunks per switch grid new benchmark values
    Returning compare max trunks per switch grid modified benchmark values
    Returning set max trunks per switch grid default benchmark values
    Returning click max trunks per switch save changes button
    Returning click exclusion button
    Returning click new exclusion button
    Returning set new exclusion reason
    Returning set new exclusion note
    Returning set new exclusion account
    Returning set new exclusion switch
    Returning set new exclusion trunk
    Returning click trunk section go button
    Returning move available trunks to destination
    Returning move available route classes to destination
    Returning set new exclusion country
    Returning click products section go button
    Returning move available products to destination
    Returning click review exclusions button
    Returning select qos tab
    Returning click qos save changes button
    Returning set value in qos grid column
    Returning set bulk edit reason
    Returning set bulk edit note
    Returning click bulk edit undo reset button
    Returning is input field reset
    Returning is bulk edit input field reset
    Returning click bulk edit cancel button
    Returning click bulk edit submit button
    Returning click exclusions grid save changes button
    Returning click exclusions grid delete button
    Returning click save and close button
    Returning set reason for search
    Returning set switch for search
    Returning set account for search
    Returning set trunk for search
    Returning set country for search
    Returning click exclusions grid search button
    Returning select exclusions grid first row checkbox
    Returning click exclusions grid bulk edit button
    Returning set bulk edit begin date
    Returning click inclusion button
    Returning click new inclusion button
    Returning set inclusion level
    Returning set inclusion begin date
    Returning set end date
    Returning set new inclusion reason
    Returning set note
    Returning set new inclusion account
    Returning set new inclusion trunk
    Returning click trunk go button
    Returning move available trunks to include
    Returning move available route classes to include
    Returning set new inclusion country
    Returning move available products to include
    Returning click product go button
    Returning click review inclusions button
    Returning click commercial routing grid first row inline action button
    Returning get commercial routing grid first row routing product
    Returning compare selected routing product
    Returning is benchmark management page loaded properly
    Returning is exclusion management page loaded properly
    Returning is overrides management page loaded properly
    Returning is emergency routing page loaded properly
    Returning select commercial routing grid inline action item
    Returning click override button
    Returning click new override button
    Returning set effective date
    Returning set inclusion type
    Returning set reason
    Returning click inclusion search button
    Returning get inclusions grid row details
    Returning select inclusions grid row checkbox
    Returning click inclusion bulk edit button
    Returning set override route class for search
    Returning set override
    Returning set switch
    Returning click override search button
    Returning set new override switch
    Returning set new override route class
    Returning set new override account
    Returning set new override country
    Returning set new override trunk
    Returning set new override routing product
    Returning set new override routing percentage
    Returning set rank
    Returning set new override reason
    Returning set begin date
    Returning click inclusion save changes button
    Returning click inclusion delete button
    Returning set end date
    Returning set new override note
    Returning click review overrides button
    Returning click override save and close button
    Returning click overrides grid inline action button
    Returning select item from inline action
    Returning confirm release overrides pop ups
    Returning select overrides grid row checkbox
    Returning click override bulk edit button
    Returning set note
    Returning set bulk edit reason
    Returning set bulk edit percentage
    Returning click bulk edit submit button
    Returning click override save changes button
    Returning get overrides grid row details
    Returning filter overrides grid
    Returning click technical routing grid search button
    Returning click technical routing grid first row inline action button
    Returning is fast track exclusion window loaded properly
    Returning close fast track exclusion window
    Returning select technical routing grid first row checkbox
    Returning set routing status for search
    Returning click technical routing grid recalc rgs button
    Returning select emergency re routing available trunk grid first row checkbox
    Returning click to rank button
    Returning move available trunks into rank grid
    Returning set route percentage values
    Returning get ranked trunks
    Returning click emergency routing save button
    Returning verify priority status changed
    Returning click commercial routing grid first row routing product link
    Returning select benchmarks tab
    Returning set new benchmark values in route guide tab
    Returning set default benchmark values in route guide tab
    Returning select notes tab
    Returning click add note button
    Returning set note in notes grid
    Returning click add note save button
    Returning click add note delete button
    Returning click qos import button
    Returning click import browse button
    Returning click upload button
    Returning click upload cancel button
    Returning click qos export button
    Returning select the file to be uploaded
    Returning click move to excluded button
    Returning click move to available button
    Returning click available trunks grid move to suggested button
    Returning click excluded trunks grid move to suggested button
    Returning click save and recalculate button
    Returning select excluded trunks radio button
    Returning select suggested trunks grid first row checkbox
    Returning select available trunks grid first row checkbox
    Returning select excluded trunks grid first row checkbox
    Returning get suggested trunks grid first row details
    Returning get excluded trunks grid first row details
    Returning get available trunks grid first row details
    Returning click technical routing exclusion button
    Returning set new exclusion level
    Returning set exclusion begin date
    Returning set exclusion end date
    Returning set new exclusion category
    Returning set new exclusion group
    Returning set new exclusion service
    Returning set new exclusion routing product
    Returning set exclusion type
    Returning get exclusions grid row details
    Returning click exclusions grid inline action button
    Returning select delete exclusion inline item
    Returning select exclusions grid row checkbox
    Returning click technical routing override button
    Returning verify suggested trunks
    Returning set priority for search
    Returning get selected route class
    Returning get selected routing product
    Returning clear multiselect kendo dropdown
    Returning set route class for search
    Returning set routing product for search
    Returning sort column in ascending order
    Returning click technical routing benchmarks button
    Returning is commercial routing page loaded properly
    Returning read data from upload excel file
    Returning compare qos grid row details with excel data
    Returning click technical routing grid first row routing product link
    Returning filter suggested trunks grid account column
    Returning click fast track exclusion button
    Returning set fast track exclusion begin date
    Returning set fast track exclusion end date
    Returning set fast track exclusion note
    Returning set fast track exclusion account
    Returning set fast track exclusion country
    Returning click products go button
    Returning click fast track exclusion save button
    Returning click trunks go button
    Returning click transition automation link
    Returning click new transition button
    Returning set new automated transition route class
    Returning set new automated transition country type
    Returning set new automated transition country
    Returning set new automated transition routing product
    Returning set new automated transition value
    Returning select automated radio button
    Returning set new automated transition resolution order
    Returning click save button
    Returning set country type for search
    Returning set transition for search
    Returning set transition country for search
    Returning set automated choice for search
    Returning click transition automation search button
    Returning get transition automation grid row details
    Returning select transition automation grid first row checkbox
    Returning click transition automation delete button
    Returning click transition automation bulk edit button
    Returning set bulk edit automated value
    Returning set bulk edit resolution order
    Returning click transition automation save changes button
    Returning click transition automation first row inline action button
    Returning select transition automation delete inline action item
    Returning set inclusion country for search
    Returning set inclusion routing product for search
    Returning set new suggestion route class value
    Returning set new suggestion routing product value
    Returning click create route suggestion button
    Returning select commercial dashboard tab
    Returning click manage reason link
    Returning click add new reason button
    Returning set value in reason column
    Returning set value in scope column
    Returning click manage reasons save button
    Returning get created reason
    Returning set route class for benchmark management
    Returning click technical routing benchmarks search button
    Returning set routing product for benchmark management
    Returning click route guide adjuster button
    Returning click view trgs button
    Returning click adjust button
    Returning compare rgs
    Returning get all rows value of trunks column from route guide adjuster grid
    Returning is trg adjuster tab present
    Returning click route class benchmarks margin save changes button
    Returning click route guide benchmarks save changes button
    Returning click customer specific routing button
    Returning set destination category no 1
    Returning set destination category no 2
    Returning click customer specific routing search button
    Returning set commercial routing grid settings
    Returning get commercial routing grid column names by order
    Returning drag commercial routing grid column
    Returning compare grid column position after altering
    Returning click carrier test management button
    Returning click new test button
    Returning set carrier new test account
    Returning set carrier new test trunk
    Returning set carrier new test routing product
    Returning set carrier new test route class
    Returning click create test button
    Returning is country column present in crgm grid
    Returning is country column present in overrides management grid
    Returning is country column present in inclusion management grid
    Returning is country column present in exclusion management grid
    Returning set first routing product for search
    Returning clear routing product dropdown selection
    Returning click new csr button
    Returning set csr product
    Returning set csr customer
    Returning select to rank grid first row checkbox
    Returning click csr to rank button
    Returning set value in rcn to rank grid column
    Returning click review route guides button
    Returning click csr save and create button
    Returning click csrm grid first row routing product link
    Returning is suggested trunk grid present
    Returning is available worksheets grid present
    Returning is excluded trunks grid present
    Returning set override in grid
    Returning compare suggested trunks grid begin date
    Returning compare suggested trunks grid end date
    Returning click suggested trunks cancel changes button
    Returning is available worksheets grid not present
    Returning get suggested trunks grid first row data
    Returning is csrm grid column present
    Returning is route guide grid column present
    Returning set route guide grid override
    Returning set route guide grid end date
    Returning get route guide grid end date
    Returning is specific column present in csrrg grid
    Returning click csr benchmarks button
    Returning is minimum mos column present in csr benchmark grid
    Returning set minimum mos value into csr benchmark grid first row
    Returning click csr benchmark grid save changes button
    Returning select csr benchmark grid multiple rows
    Returning click csr benchmark bulk edit button function
    Returning set minimum mos bulk edit value
    Returning is updated value persist in the csr benchmark grid after bulk edit
    Returning filter customer specific routing grid alerts column
    Returning is specific column present in csrm grid
    Returning select csrm grid first row checkbox
    Returning is new customer route guide pop up present
    Returning is benchmark management margin grid empty
    Returning click first row of benchmark management margin first grid
    Returning is ajax spinner load present
    Returning click first row of benchmark management max route commercial first grid
    Returning select bulk test call tab
    Returning set message delivered in grid
    Returning is ajax spinner load not present
    Returning set message delivered in grid with opposite of selected value
    Returning click bulk test call save changes button
    """
    ROBOT_LIBRARY_SCOPE = 'TEST SUITE'

    logger = Logger().get_logger('Route')

    def __init__(self):
        self._route_page = RoutePage()

    def switch_to_route(self):
        """
        Returning switch to route
        Implementing logging for switch to route functionality
        :return: True/False
        """
        is_switched = None
        try:
            self.logger.info('Start: switch to route method')
            self._route_page.switch_to_route()
            is_switched = True
        except WebDriverException as exp:
            is_switched = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: switch to route method')
            return is_switched

    def get_route_page_title(self):
        """
        Returning route page title
        Implementing logging for get route page title functionality
        :return: Route page title
        """
        try:
            self.logger.info('Start: get route page title')
            return self._route_page.get_route_page_title()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get route page title')

    def is_commercial_dashboard_tab_present(self):
        """
        Returning commercial dashboard tab status
        Implementing logging for is commercial dashboard tab present functionality
        :return: True/False
        """
        is_present = None
        try:
            self.logger.info('Start: is commercial dashboard tab present')
            is_present = self._route_page.is_commercial_dashboard_tab_present()
        except WebDriverException as exp:
            is_present = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is commercial dashboard tab present')
            return is_present

    def is_commercial_routing_tab_present(self):
        """
        Returning commercial routing tab status
        Implementing logging for is commercial routing tab present functionality
        :return: True/False
        """
        is_present = None
        try:
            self.logger.info('Start: is commercial routing tab present')
            is_present = self._route_page.is_commercial_routing_tab_present()
        except WebDriverException as exp:
            is_present = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is commercial routing tab present')
            return is_present

    def is_technical_routing_tab_present(self):
        """
        Returning technical routing tab status
        Implementing logging for is technical routing tab present functionality
        :return: True/False
        """
        is_present = None
        try:
            self.logger.info('Start: is technical routing tab present')
            is_present = self._route_page.is_technical_routing_tab_present()
        except WebDriverException as exp:
            is_present = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is technical routing tab present')
            return is_present

    def is_manage_reasons_link_present(self):
        """
        Returning manage reasons link status
        Implementing logging for is manage reasons link present functionality
        :return: True/False
        """
        is_present = None
        try:
            self.logger.info('Start: is manage reasons link present')
            is_present = self._route_page.is_manage_reasons_present()
        except WebDriverException as exp:
            is_present = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is manage reasons link present')
            return is_present

    def is_transition_automation_link_present(self):
        """
        Returning transition automation link status
        Implementing logging for is transition automation link present functionality
        :return: True/False
        """
        is_present = None
        try:
            self.logger.info('Start: is transition automation link present')
            is_present = self._route_page.is_transition_automation_present()
        except WebDriverException as exp:
            is_present = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is transition automation link present')
            return is_present

    def select_commercial_routing_tab(self):
        """
        Returning select commercial routing tab
        Implementing logging for select commercial routing tab functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select commercial routing tab')
            self._route_page.select_commercial_routing_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select commercial routing tab')
            return is_selected

    def get_commercial_routing_tab_header(self):
        """
        Returning commercial routing tab header
        Implementing logging for get commercial routing tab header functionality
        :return: Commercial Routing tab header
        """
        try:
            self.logger.info('Start: get commercial routing tab header')
            return self._route_page.get_commercial_routing_tab_header()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get commercial routing tab header')

    def select_technical_routing_tab(self):
        """
        Returning select technical routing tab
        Implementing logging for select technical routing tab functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select technical routing tab')
            self._route_page.select_technical_routing_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select technical routing tab')
            return is_selected

    def get_technical_routing_tab_header(self):
        """
        Returning technical routing tab header
        Implementing logging for get technical routing tab header functionality
        :return: Technical Routing tab header
        """
        try:
            self.logger.info('Start: get technical routing tab header')
            return self._route_page.get_technical_routing_tab_header()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get technical routing tab header')

    def click_benchmarks_button(self):
        """
        Returning click benchmarks button
        Implementing logging for click benchmarks button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click benchmarks button')
            self._route_page.click_benchmarks_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click benchmarks button')
            return is_clicked

    def set_new_benchmark_values(self):
        """
        Returning set new benchmark values
        Implementing logging for set new benchmark values functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set new benchmark values')
            self._route_page.set_new_benchmark_values()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set new benchmark values')
            return is_set

    def set_default_benchmark_values(self):
        """
        Returning set default benchmark values
        Implementing logging for set default benchmark values functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set default benchmark values')
            self._route_page.set_default_benchmark_values()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set default benchmark values')
            return is_set

    def click_route_class_benchmarks_save_changes_button(self):
        """
        Returning click route class benchmarks save changes button
        Implementing logging for click route class benchmarks save changes button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click route class benchmarks save changes button')
            self._route_page.click_route_class_benchmarks_save_changes_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click route class benchmarks save changes button')
            return is_clicked

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
            self._route_page.close_current_tab(tab_name)
            is_closed = True
        except WebDriverException as exp:
            is_closed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: close current tab')
            return is_closed

    def click_create_new_suggestion_button(self):
        """
        Returning click create new suggestion button
        Implementing logging for click create new suggestion button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click create new suggestion button')
            self._route_page.click_create_new_suggestion_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click create new suggestion button')
            return is_clicked

    def is_new_suggestion_window_loaded_properly(self):
        """
        Returning is new suggestion window loaded properly
        Implementing logging for is new suggestion window loaded properly functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is new suggestion window loaded properly')
            return self._route_page.is_new_suggestion_window_loaded_properly()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is new suggestion window loaded properly')

    def close_current_pop_up(self, pop_up_name):
        """
        Returning close current pop up
        Implementing close current pop up functionality
        :param pop_up_name:
        :return: True/False
        """
        is_closed = None
        try:
            self.logger.info('Start: close current pop up')
            self._route_page.close_current_pop_up(pop_up_name)
            is_closed = True
        except WebDriverException as exp:
            is_closed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: close current pop up')
            return is_closed

    def click_commercial_routing_grid_search_button(self):
        """
        Returning click commercial routing grid search button
        Implementing logging for click commercial routing grid search button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click commercial routing grid search button')
            self._route_page.click_commercial_routing_grid_search_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click commercial routing grid search button')
            return is_clicked

    def select_commercial_routing_grid_first_row_checkbox(self):
        """
        Returning select commercial routing grid first row checkbox
        Implementing logging for select commercial routing grid first row checkbox functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select commercial routing grid first row checkbox')
            self._route_page.select_commercial_routing_grid_first_row_checkbox()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select commercial routing grid first row checkbox')
            return is_selected

    def click_recalc_rgs_button(self):
        """
        Returning click recalc rgs button
        Implementing logging for click recalc rgs button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click recalc rgs button')
            self._route_page.click_recalc_rgs_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click recalc rgs button')
            return is_clicked

    def click_commercial_routing_grid_cancel_changes_button(self):
        """
        Returning click commercial routing grid cancel changes button
        Implementing logging for click commercial routing grid cancel changes button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click commercial routing grid cancel changes button')
            self._route_page.click_commercial_routing_grid_cancel_changes_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click commercial routing grid cancel changes button')
            return is_clicked

    def click_commercial_routing_grid_first_row_inline_action_button(self):
        """
        Returning click commercial routing grid first row inline action button
        Implementing logging for click commercial routing grid first row inline action button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click commercial routing grid first row inline action button')
            self._route_page.click_commercial_routing_grid_first_row_inline_action_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click commercial routing grid first row inline action button')
            return is_clicked

    def get_commercial_routing_grid_first_row_routing_product(self):
        """
        Returning get commercial routing grid first row routing product
        Implementing logging for get commercial routing grid first row routing product functionality
        :return: True/False
        """
        is_retrieved = None
        try:
            self.logger.info('Start: get commercial routing grid first row routing product')
            self._route_page.get_commercial_routing_grid_first_row_routing_product()
            is_retrieved = True
        except WebDriverException as exp:
            is_retrieved = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get commercial routing grid first row routing product')
            return is_retrieved

    def compare_selected_routing_product(self):
        """
        Returning compare selected routing product
        Implementing logging for compare selected routing product functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: compare selected routing product')
            return self._route_page.compare_selected_routing_product()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare selected routing product')

    def is_benchmark_management_page_loaded_properly(self):
        """
        Returning is benchmark management page loaded properly
        Implementing logging for is benchmark management page loaded properly functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is benchmark management page loaded properly')
            return self._route_page.is_benchmark_management_page_loaded_properly()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is benchmark management page loaded properly')

    def is_exclusion_management_page_loaded_properly(self):
        """
        Returning is exclusion management page loaded properly
        Implementing logging for is exclusion management page loaded properly functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is exclusion management page loaded properly')
            return self._route_page.is_exclusion_management_page_loaded_properly()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is exclusion management page loaded properly')

    def is_overrides_management_page_loaded_properly(self):
        """
        Returning is overrides management page loaded properly
        Implementing logging for is overrides management page loaded properly functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is overrides management page loaded properly')
            return self._route_page.is_overrides_management_page_loaded_properly()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is overrides management page loaded properly')

    def is_emergency_routing_page_loaded_properly(self):
        """
        Returning is emergency routing page loaded properly
        Implementing logging for is emergency routing page loaded properly functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is emergency routing page loaded properly')
            return self._route_page.is_emergency_routing_page_loaded_properly()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is emergency routing page loaded properly')

    def select_commercial_routing_grid_inline_action_item(self, inline_item_name):
        """
        Returning select commercial routing grid inline action item
        Implementing logging for select commercial routing grid inline action item functionality
        :param inline_item_name:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select commercial routing grid inline action item')
            self._route_page.select_commercial_routing_grid_inline_action_item(inline_item_name)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select commercial routing grid inline action item')
            return is_selected

    def select_max_route_commercial_tab(self):
        """
        Returning select max route commercial tab
        Implementing logging for select max route commercial tab functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select max route commercial tab')
            self._route_page.select_max_route_commercial_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select max route commercial tab')
            return is_selected

    def filter_max_route_commercial_grid(self, column_name, filter_item_text):
        """
        Returning filter max route commercial grid
        Implementing logging for filter max route commercial grid functionality
        :param column_name:
        :param filter_item_text:
        :return: True/False
        """
        is_filtered = None
        try:
            self.logger.info('Start: filter max route commercial grid')
            self._route_page.filter_max_route_commercial_grid(column_name, filter_item_text)
            is_filtered = True
        except WebDriverException as exp:
            is_filtered = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: filter max route commercial grid')
            return is_filtered

    def set_value_in_max_route_commercial_grid_column(self):
        """
        Returning set value in max route commercial grid column
        Implementing logging for set value in max route commercial grid column functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set value in max route commercial grid column')
            self._route_page.set_value_in_max_route_commercial_grid_column()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set value in max route commercial grid column')
            return is_set

    def click_max_route_commercial_save_changes_button(self):
        """
        Returning click max route commercial save changes button
        Implementing logging for click max route commercial save changes button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click max route commercial save changes button')
            self._route_page.click_max_route_commercial_save_changes_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click max route commercial save changes button')
            return is_clicked

    def select_max_trunks_per_switch_tab(self):
        """
        Returning select max trunks per switch tab
        Implementing logging for select max trunks per switch tab functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select max trunks per switch tab')
            self._route_page.select_max_trunks_per_switch_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select max trunks per switch tab')
            return is_selected

    def set_max_trunks_per_switch_grid_new_benchmark_values(self):
        """
        Returning set max trunks per switch grid new benchmark values
        Implementing logging for set max trunks per switch grid new benchmark values functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set max trunks per switch grid new benchmark values')
            self._route_page.set_max_trunks_per_switch_grid_new_benchmark_values()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set max trunks per switch grid new benchmark values')
            return is_set

    def compare_max_trunks_per_switch_grid_modified_benchmark_values(self):
        """
        Returning compare max trunks per switch grid modified benchmark values
        Implementing logging for compare max trunks per switch grid modified benchmark values functionality
        :return: True/False
        """
        is_compared = None
        try:
            self.logger.info('Start: compare max trunks per switch grid modified benchmark values')
            is_compared = self._route_page.compare_max_trunks_per_switch_grid_modified_benchmark_values()
        except WebDriverException as exp:
            is_compared = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare max trunks per switch grid modified benchmark values')
            return is_compared

    def set_max_trunks_per_switch_grid_default_benchmark_values(self):
        """
        Returning set max trunks per switch grid default benchmark values
        Implementing logging for set max trunks per switch grid default benchmark values functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set max trunks per switch grid default benchmark values')
            self._route_page.set_max_trunks_per_switch_grid_default_benchmark_values()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set max trunks per switch grid default benchmark values')
            return is_set

    def click_max_trunks_per_switch_save_changes_button(self):
        """
        Returning click max trunks per switch save changes button
        Implementing logging for click max trunks per switch save changes button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click max trunks per switch save changes button')
            self._route_page.click_max_trunks_per_switch_save_changes_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click max trunks per switch save changes button')
            return is_clicked

    def click_override_button(self):
        """
        Returning click override button
        Implementing logging for click override button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click override button')
            self._route_page.click_override_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click override button')
            return is_clicked

    def click_new_override_button(self):
        """
        Returning click new override button
        Implementing logging for click new override button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click new override button')
            self._route_page.click_new_override_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click new override button')
            return is_clicked

    def set_effective_date(self, effective_date):
        """
        Returning set effective date
        Implementing logging for set effective date functionality
        :param effective_date:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set effective date')
            if effective_date != "":
                self._route_page.set_effective_date(effective_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set effective date')
            return is_set

    def set_reason(self, *reason_list):
        """
        Returning set reason
        Implementing logging for set reason functionality
        :param reason_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set reason')
            self._route_page.set_reason(reason_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set reason')
            return is_set

    def set_override_route_class_for_search(self, *route_class_list):
        """
        Returning set override route class for search
        Implementing logging for set override route class for search functionality
        :param route_class_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set override route class for search')
            self._route_page.set_override_route_class_for_search(route_class_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set override route class for search')
            return is_set

    def set_override(self, *override_list):
        """
        Returning set override
        Implementing logging for set override functionality
        :param override_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set override')
            self._route_page.set_override(override_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set override')
            return is_set

    def set_switch(self, *switch_list):
        """
        Returning set switch
        Implementing logging for set switch functionality
        :param switch_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set switch')
            self._route_page.set_switch(switch_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set switch')
            return is_set

    def click_override_search_button(self):
        """
        Returning click override search button
        Implementing logging for click override search button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click override search button')
            self._route_page.click_override_search_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click override search button')
            return is_clicked

    def set_new_override_switch(self, switch):
        """
        Returning set new override switch
        Implementing logging for set new override switch functionality
        :param switch:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set new override switch')
            self._route_page.set_new_override_switch(switch)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set new override switch')
            return is_set

    def set_new_override_route_class(self, *route_class_list):
        """
        Returning set new override route class
        Implementing logging for set new override route class functionality
        :param route_class_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set new override route class')
            self._route_page.set_new_override_route_class(route_class_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set new override route class')
            return is_set

    def set_new_override_account(self, account):
        """
        Returning set new override account
        Implementing logging for set new override account functionality
        :param account:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set new override account')
            self._route_page.set_new_override_account(account)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set new override account')
            return is_set

    def set_new_override_country(self, country):
        """
        Returning set new override country
        Implementing logging for set new override country functionality
        :param country:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set new override country')
            self._route_page.set_new_override_country(country)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set new override country')
            return is_set

    def set_new_override_trunk(self, trunk, switch):
        """
        Returning set new override trunk
        Implementing logging for set new override trunk functionality
        :param trunk:
        :param switch:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set new override trunk')
            self._route_page.set_new_override_trunk(trunk, switch)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set new override trunk')
            return is_set

    def set_new_override_routing_product(self, *routing_product_list):
        """
        Returning set new override routing product
        Implementing logging for set new override routing product functionality
        :param routing_product_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set new override routing product')
            self._route_page.set_new_override_routing_product(routing_product_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set new override routing product')
            return is_set

    def set_new_override_routing_percentage(self, routing_percentage):
        """
        Returning set new override routing percentage
        Implementing logging for set new override routing percentage functionality
        :param routing_percentage:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set new override routing percentage')
            self._route_page.set_new_override_routing_percentage(routing_percentage)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set new override routing percentage')
            return is_set

    def set_rank(self, rank):
        """
        Returning set rank
        Implementing logging for set rank functionality
        :param rank:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set rank')
            self._route_page.set_rank(rank)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set rank')
            return is_set

    def set_new_override_reason(self, reason):
        """
        Returning set new override reason
        Implementing logging for set new override reason functionality
        :param reason:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set new override reason')
            self._route_page.set_new_override_reason(reason)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set new override reason')
            return is_set

    def set_begin_date(self, begin_date):
        """
        Returning set begin date
        Implementing logging for set begin date functionality
        :param begin_date:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set begin date')
            if begin_date != "":
                self._route_page.set_begin_date(begin_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('begin: set begin date')
            return is_set

    def set_end_date(self, end_date):
        """
        Returning set end date
        Implementing logging for set end date functionality
        :param end_date:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set end date')
            if end_date != "":
                self._route_page.set_end_date(end_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set end date')
            return is_set

    def set_new_override_note(self, note):
        """
        Returning set new override note
        Implementing logging for set new override note functionality
        :param note:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set new override note')
            if note != "":
                self._route_page.set_new_override_note(note)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set new override note')
            return is_set

    def click_review_overrides_button(self):
        """
        Returning click review overrides button
        Implementing logging for click review overrides button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click review overrides button')
            self._route_page.click_review_overrides_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click review overrides button')
            return is_clicked

    def click_override_save_and_close_button(self):
        """
        Returning click override save and close button
        Implementing logging for click override save and close button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click override save and close button')
            self._route_page.click_override_save_and_close_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click override save and close button')
            return is_clicked

    def click_overrides_grid_inline_action_button(self, row_identifier_text):
        """
        Returning click overrides grid inline action button
        Implementing logging for click overrides grid inline action button functionality
        :param row_identifier_text:
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click overrides grid inline action button')
            self._route_page.click_overrides_grid_inline_action_button(row_identifier_text)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click overrides grid inline action button')
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
            self._route_page.select_route_module_inline_item(item_name)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select item from inline action')
            return is_selected

    def confirm_release_overrides_pop_ups(self):
        """
        Returning confirm release overrides pop ups
        Implementing logging for confirm release overrides pop ups functionality
        :return: True/False
        """
        is_confirmed = None
        try:
            self.logger.info('Start: confirm release overrides pop ups')
            self._route_page.confirm_release_overrides_pop_ups()
            is_confirmed = True
        except WebDriverException as exp:
            is_confirmed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: confirm release overrides pop ups')
            return is_confirmed

    def select_overrides_grid_row_checkbox(self, row_identifier_text):
        """
        Returning select overrides grid row checkbox
        Implementing logging for select overrides grid row checkbox functionality
        :param row_identifier_text:
        :return:
        """
        is_selected = None
        try:
            self.logger.info('Start: select overrides grid row checkbox')
            self._route_page.select_overrides_grid_row_checkbox(row_identifier_text)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select overrides grid row checkbox')
            return is_selected

    def click_override_bulk_edit_button(self):
        """
        Returning click override bulk edit button
        Implementing logging for click override bulk edit button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click override bulk edit button')
            self._route_page.click_override_bulk_edit_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click override bulk edit button')
            return is_clicked

    def set_note(self, note):
        """
        Returning set note
        Implementing logging for set note functionality
        :param note:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set note')
            if note != "":
                self._route_page.set_note(note)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set note')
            return is_set

    def set_bulk_edit_reason(self, reason):
        """
        Returning set bulk edit reason
        Implementing logging for set bulk edit reason functionality
        :param reason:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set bulk edit reason')
            if reason != "":
                self._route_page.set_bulk_edit_reason(reason)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set bulk edit reason')
            return is_set

    def set_bulk_edit_percentage(self, percentage):
        """
        Returning set bulk edit percentage
        Implementing logging for set bulk edit percentage functionality
        :param percentage:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set bulk edit percentage')
            if percentage != "":
                self._route_page.set_bulk_edit_percentage(percentage)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set bulk edit percentage')
            return is_set

    def click_bulk_edit_submit_button(self):
        """
        Returning click bulk edit submit button
        Implementing logging for click bulk edit submit button functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: click bulk edit submit button')
            self._route_page.click_bulk_edit_submit_button()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click bulk edit submit button')
            return is_set

    def click_override_save_changes_button(self):
        """
        Returning click override save changes button
        Implementing logging for click bulk edit submit button functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: click override save changes button')
            self._route_page.click_override_save_changes_button()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click override save changes button')
            return is_set

    def get_overrides_grid_row_details(self):
        """
        Returning get overrides grid row details
        Implementing logging for get overrides grid row details functionality
        :return: grid_row_details_dictionary
        """
        try:
            self.logger.info('Start: get overrides grid row details')
            return self._route_page.get_overrides_grid_row_details()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get overrides grid row details')

    def filter_overrides_grid(self, column_name, *filter_item_list):
        """
        Returning filter overrides grid
        Implementing logging for filter overrides grid functionality
        :param column_name:
        :param filter_item_list:
        :return: True/False
        """
        is_filtered = None
        try:
            self.logger.info('Start: filter overrides grid')
            self._route_page.filter_overrides_grid(column_name, filter_item_list)
            is_filtered = True
        except WebDriverException as exp:
            is_filtered = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: filter overrides grid')
            return is_filtered

    def click_exclusion_button(self):
        """
        Returning click exclusion button
        Implementing logging for click exclusion button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click exclusion button')
            self._route_page.click_exclusion_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click exclusion button')
            return is_clicked

    def click_new_exclusion_button(self):
        """
        Returning click new exclusion button
        Implementing logging for click new exclusion button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click new exclusion button')
            self._route_page.click_new_exclusion_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click new exclusion button')
            return is_clicked

    def set_new_exclusion_reason(self, reason):
        """
        Returning set new exclusion reason
        Implementing logging for set new exclusion reason functionality
        :param reason:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set new exclusion reason')
            self._route_page.set_new_exclusion_reason(reason)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set new exclusion reason')
            return is_set

    def set_new_exclusion_note(self, note_prefix):
        """
        Returning set new exclusion note
        Implementing logging for set new exclusion note functionality
        :param note_prefix:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set new exclusion note')
            self._route_page.set_new_exclusion_note(note_prefix)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set new exclusion note')
            return is_set

    def set_new_exclusion_account(self, *account_list):
        """
        Returning set new exclusion account
        Implementing logging for set new exclusion account functionality
        :param account_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set new exclusion account')
            self._route_page.set_new_exclusion_account(account_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set new exclusion account')
            return is_set

    def set_new_exclusion_switch(self, *switch_list):
        """
        Returning set new exclusion switch
        Implementing logging for set new exclusion switch functionality
        :param switch_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set new exclusion switch')
            self._route_page.set_new_exclusion_switch(switch_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set new exclusion switch')
            return is_set

    def set_new_exclusion_trunk(self, list_of_trunks):
        """
        Returning set new exclusion trunk
        Implementing logging for set new exclusion trunk functionality
        :param list_of_trunks:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set new exclusion trunk')
            self._route_page.set_new_exclusion_trunk(list_of_trunks)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set new exclusion trunk')
            return is_set

    def click_trunk_section_go_button(self):
        """
        Returning click trunk section go button
        Implementing logging for click trunk section go button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click trunk section go button')
            self._route_page.click_trunk_section_go_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click trunk section go button')
            return is_clicked

    def move_available_trunks_to_destination(self, list_of_trunks):
        """
        Returning move available trunks to destination
        Implementing logging for move available trunks to destination functionality
        :param list_of_trunks:
        :return: True/False
        """
        is_moved = None
        try:
            self.logger.info('Start: move available trunks to destination')
            self._route_page.move_available_trunks_to_destination(list_of_trunks)
            is_moved = True
        except WebDriverException as exp:
            is_moved = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: move available trunks to destination')
            return is_moved

    def move_available_route_classes_to_destination(self):
        """
        Returning move available route classes to destination
        Implementing logging for move available route classes to destination functionality
        :return: True/False
        """
        is_moved = None
        try:
            self.logger.info('Start: move available route classes to destination')
            self._route_page.move_available_route_classes_to_destination()
            is_moved = True
        except WebDriverException as exp:
            is_moved = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: move available route classes to destination')
            return is_moved

    def set_new_exclusion_country(self, *country_list):
        """
        Returning set new exclusion country
        Implementing logging for set new exclusion country functionality
        :param country_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set new exclusion country')
            self._route_page.set_new_exclusion_country(country_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set new exclusion country')
            return is_set

    def click_products_section_go_button(self):
        """
        Returning click products section go button
        Implementing logging for click products section go button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click products section go button')
            self._route_page.click_products_section_go_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click products section go button')
            return is_clicked

    def move_available_products_to_destination(self):
        """
        Returning move available products to destination
        Implementing logging for move available products to destination functionality
        :return: True/False
        """
        is_moved = None
        try:
            self.logger.info('Start: move available products to destination')
            self._route_page.move_available_products_to_destination()
            is_moved = True
        except WebDriverException as exp:
            is_moved = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: move available products to destination')
            return is_moved

    def click_review_exclusions_button(self):
        """
        Returning click review exclusions button
        Implementing logging for click review exclusions button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click review exclusions button')
            self._route_page.click_review_exclusions_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click review exclusions button')
            return is_clicked

    def click_save_and_close_button(self):
        """
        Returning click save and close button
        Implementing logging for click save and close button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click save and close button')
            self._route_page.click_save_and_close_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click save and close button')
            return is_clicked

    def set_reason_for_search(self, *list_of_reasons):
        """
        Returning set reason for search
        Implementing logging for set reason for search functionality
        :param list_of_reasons:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set reason for search')
            self._route_page.set_reason_for_search(list_of_reasons)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set reason for search')
            return is_set

    def set_switch_for_search(self, *list_of_switch):
        """
        Returning set switch for search
        Implementing logging for set switch for search functionality
        :param list_of_switch:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set switch for search')
            self._route_page.set_switch_for_search(list_of_switch)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set switch for search')
            return is_set

    def set_account_for_search(self, *list_of_account):
        """
        Returning set account for search
        Implementing logging for set account for search functionality
        :param list_of_account:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set account for search')
            self._route_page.set_account_for_search(list_of_account)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set account for search')
            return is_set

    def set_trunk_for_search(self, *list_of_trunk):
        """
        Returning set trunk for search
        Implementing logging for set trunk for search functionality
        :param list_of_trunk:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set trunk for search')
            self._route_page.set_trunk_for_search(list_of_trunk)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set trunk for search')
            return is_set

    def set_country_for_search(self, *list_of_country):
        """
        Returning set country for search
        Implementing logging for set country for search functionality
        :param list_of_country:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set country for search')
            self._route_page.set_country_for_search(list_of_country)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set country for search')
            return is_set

    def click_exclusions_grid_search_button(self):
        """
        Returning click exclusions grid search button
        Implementing logging for click exclusions grid search button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click exclusions grid search button')
            self._route_page.click_exclusions_grid_search_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click exclusions grid search button')
            return is_clicked

    def select_exclusions_grid_first_row_checkbox(self):
        """
        Returning select exclusions grid first row checkbox
        Implementing logging for select exclusions grid first row checkbox functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select exclusions grid first row checkbox')
            self._route_page.select_exclusions_grid_first_row_checkbox()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select exclusions grid first row checkbox')
            return is_selected

    def click_exclusions_grid_bulk_edit_button(self):
        """
        Returning click exclusions grid bulk edit button
        Implementing logging for click exclusions grid bulk edit button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click exclusions grid bulk edit button')
            self._route_page.click_exclusions_grid_bulk_edit_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click exclusions grid bulk edit button')
            return is_clicked

    def set_bulk_edit_begin_date(self, begin_date):
        """
        Returning set bulk edit begin date
        Implementing logging for set bulk edit begin date functionality
        :param begin_date:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set bulk edit begin date')
            if begin_date != "":
                self._route_page.set_bulk_edit_begin_date(begin_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set bulk edit begin date')
            return is_set

    def set_bulk_edit_note(self, note):
        """
        Returning set bulk edit note
        Implementing logging for set bulk edit note functionality
        :param note:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set bulk edit note')
            if note != "":
                self._route_page.set_bulk_edit_note(note)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set bulk edit note')
            return is_set

    def click_bulk_edit_undo_reset_button(self):
        """
        Returning click bulk edit undo reset button
        Implementing logging for click bulk edit undo reset button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click bulk edit undo reset button')
            self._route_page.click_bulk_edit_undo_reset_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click bulk edit undo reset button')
            return is_clicked

    def is_input_field_reset(self, label_text):
        """
        Returning is input field reset
        Implementing logging for is input field reset functionality
        :param label_text:
        :return: True/False
        """
        is_reset = None
        try:
            self.logger.info('Start: is input field reset')
            is_reset = self._route_page.is_input_field_reset(label_text)
        except WebDriverException as exp:
            is_reset = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is input field reset')
            return is_reset

    def is_bulk_edit_input_field_reset(self, label_text):
        """
        Returning is bulk edit input field reset
        Implementing logging for is bulk edit input field reset functionality
        :param label_text:
        :return: True/False
        """
        is_reset = None
        try:
            self.logger.info('Start: is bulk edit input field reset')
            is_reset = self._route_page.is_bulk_edit_input_field_reset(label_text)
        except WebDriverException as exp:
            is_reset = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is bulk edit input field reset')
            return is_reset

    def click_bulk_edit_cancel_button(self):
        """
        Returning click bulk edit cancel button
        Implementing logging for click bulk edit cancel button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click bulk edit cancel button')
            self._route_page.click_bulk_edit_cancel_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click bulk edit cancel button')
            return is_clicked

    def click_exclusions_grid_save_changes_button(self):
        """
        Returning click exclusions grid save changes button
        Implementing logging for click exclusions grid save changes button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click exclusions grid save changes button')
            self._route_page.click_exclusions_grid_save_changes_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click exclusions grid save changes button')
            return is_clicked

    def click_exclusions_grid_delete_button(self):
        """
        Returning click exclusions grid delete button
        Implementing logging for click exclusions grid delete button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click exclusions grid delete button')
            self._route_page.click_exclusions_grid_delete_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click exclusions grid delete button')
            return is_clicked

    def select_qos_tab(self):
        """
        Returning select qos tab
        Implementing logging for select qos tab functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select qos tab')
            self._route_page.select_qos_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select qos tab')
            return is_selected

    def click_qos_save_changes_button(self):
        """
        Returning click qos save changes button
        Implementing logging for click qos save changes button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click qos save changes button')
            self._route_page.click_qos_save_changes_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click qos save changes button')
            return is_clicked

    def set_value_in_qos_grid_column(self, column_name):
        """
        Returning set value in qos grid column
        Implementing logging for set value in qos grid column functionality
        :param column_name:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set value in qos grid column')
            self._route_page.set_value_in_qos_grid_column(column_name)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set value in qos grid column')
            return is_set

    def click_inclusion_button(self):
        """
        Returning click inclusion button
        Implementing logging for click inclusion button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click inclusion button')
            self._route_page.click_inclusion_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click inclusion button')
            return is_clicked

    def click_new_inclusion_button(self):
        """
        Returning click new inclusion button
        Implementing logging for click new inclusion button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click new inclusion button')
            self._route_page.click_new_inclusion_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click new inclusion button')
            return is_clicked

    def set_inclusion_level(self, inclusion_level):
        """
        Returning set inclusion level
        Implementing logging for set inclusion level functionality
        :param inclusion_level:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set inclusion level')
            self._route_page.set_inclusion_level(inclusion_level)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set inclusion level')
            return is_set

    def set_inclusion_begin_date(self, begin_date):
        """
        Returning set inclusion begin date
        Implementing logging for set inclusion begin date functionality
        :param begin_date:
        :return: set_begin_date
        """
        set_begin_date = None
        try:
            self.logger.info('Start: set inclusion begin date')
            set_begin_date = self._route_page.set_inclusion_begin_date(begin_date)
        except WebDriverException as exp:
            set_begin_date = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set inclusion begin date')
            return set_begin_date

    def set_new_inclusion_reason(self, reason):
        """
        Returning set new inclusion reason
        Implementing logging for set new inclusion reason functionality
        :param reason:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set new inclusion reason')
            self._route_page.set_new_inclusion_reason(reason)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set new inclusion reason')
            return is_set

    def set_new_inclusion_account(self, *account_list):
        """
        Returning set new inclusion account
        Implementing logging for set new inclusion account functionality
        :param account_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set new inclusion account')
            self._route_page.set_new_inclusion_account(account_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set new inclusion account')
            return is_set

    def set_new_inclusion_trunk(self, trunk_list):
        """
        Returning set new inclusion trunk
        Implementing logging for set new inclusion trunk functionality
        :param trunk_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set new inclusion trunk')
            self._route_page.set_new_inclusion_trunk(trunk_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set new inclusion trunk')
            return is_set

    def click_trunk_go_button(self):
        """
        Returning click trunk go button
        Implementing logging for click trunk go button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click trunk go button')
            self._route_page.click_trunk_go_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click trunk go button')
            return is_clicked

    def move_available_trunks_to_include(self, trunk_list):
        """
        Returning move available trunks to include
        Implementing logging for move available trunks to include functionality
        :param trunk_list:
        :return: True/False
        """
        is_moved = None
        try:
            self.logger.info('Start: move available trunks to include')
            self._route_page.move_available_trunks_to_include(trunk_list)
            is_moved = True
        except WebDriverException as exp:
            is_moved = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: move available trunks to include')
            return is_moved

    def move_available_route_classes_to_include(self):
        """
        Returning move available route classes to include
        Implementing logging for move available route classes to include functionality
        :return: True/False
        """
        is_moved = None
        try:
            self.logger.info('Start: move available route classes to include')
            self._route_page.move_available_route_classes_to_include()
            is_moved = True
        except WebDriverException as exp:
            is_moved = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: move available route classes to include')
            return is_moved

    def set_new_inclusion_country(self, *country_list):
        """
        Returning set new inclusion country
        Implementing logging for set new inclusion country functionality
        :param country_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set new inclusion country')
            self._route_page.set_new_inclusion_country(country_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set new inclusion country')
            return is_set

    def move_available_products_to_include(self, *product_list):
        """
        Returning move available products to include
        Implementing logging for move available products to include functionality
        :param product_list:
        :return: True/False
        """
        is_moved = None
        try:
            self.logger.info('Start: move available products to include')
            self._route_page.move_available_products_to_include(product_list)
            is_moved = True
        except WebDriverException as exp:
            is_moved = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: move available products to include')
            return is_moved

    def click_product_go_button(self):
        """
        Returning click product go button
        Implementing logging for click product go button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click product go button')
            self._route_page.click_product_go_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click product go button')
            return is_clicked

    def click_review_inclusions_button(self):
        """
        Returning click review inclusions button
        Implementing logging for click review inclusions button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click review inclusions button')
            self._route_page.click_review_inclusions_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click review inclusions button')
            return is_clicked

    def click_inclusion_save_and_close_button(self):
        """
        Returning click save and close button
        Implementing logging for click save and close button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click save and close button')
            self._route_page.click_inclusion_save_and_close_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click save and close button')
            return is_clicked

    def set_inclusion_type(self, inclusion_type):
        """
        Returning set inclusion type
        Implementing logging for set inclusion type functionality
        :param inclusion_type:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set inclusion type')
            self._route_page.set_inclusion_type(inclusion_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set inclusion type')
            return is_set

    def click_inclusion_search_button(self):
        """
        Returning click inclusion search button
        Implementing logging for click inclusion search button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click inclusion search button')
            self._route_page.click_inclusion_search_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click inclusion search button')
            return is_clicked

    def get_inclusions_grid_row_details(self):
        """
        Returning get inclusions grid row details
        Implementing logging for get inclusions grid row details functionality
        :return: grid_row_data
        """
        try:
            self.logger.info('Start: get inclusions grid row details')
            return self._route_page.get_inclusions_grid_row_details()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get inclusions grid row details')

    def select_inclusions_grid_row_checkbox(self, row_identifier_text):
        """
        Returning select inclusions grid row checkbox
        Implementing logging for select inclusions grid row checkbox functionality
        :param row_identifier_text:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select inclusions grid row checkbox')
            self._route_page.select_inclusions_grid_row_checkbox(row_identifier_text)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select inclusions grid row checkbox')
            return is_selected

    def click_inclusion_bulk_edit_button(self):
        """
        Returning click inclusion bulk edit button
        Implementing logging for click inclusion bulk edit button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click inclusion bulk edit button')
            self._route_page.click_inclusion_bulk_edit_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click inclusion bulk edit button')
            return is_clicked

    def click_inclusion_save_changes_button(self):
        """
        Returning click inclusion save changes button
        Implementing logging for click inclusion save changes button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click inclusion save changes button')
            self._route_page.click_inclusion_save_changes_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click inclusion save changes button')
            return is_clicked

    def click_inclusion_delete_button(self):
        """
        Returning click inclusion delete button
        Implementing logging for click inclusion delete button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click inclusion delete button')
            self._route_page.click_inclusion_delete_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click inclusion delete button')
            return is_clicked

    def click_qos_import_button(self):
        """
        Returning click qos import button
        Implementing logging for click qos import button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click qos import button')
            self._route_page.click_qos_import_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click qos import button')
            return is_clicked

    def click_import_browse_button(self):
        """
        Returning click import browse button
        Implementing logging for click import browse button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click import browse button')
            self._route_page.click_import_browse_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click import browse button')
            return is_clicked

    def click_upload_button(self):
        """
        Returning click upload button
        Implementing logging for click upload button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click upload button')
            self._route_page.click_upload_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click upload button')
            return is_clicked

    def click_upload_cancel_button(self):
        """
        Returning click upload cancel button
        Implementing logging for click upload cancel button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click upload cancel button')
            self._route_page.click_upload_cancel_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click upload cancel button')
            return is_clicked

    def click_qos_export_button(self):
        """
        Returning click qos export button
        Implementing logging for click qos export button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click qos export button')
            self._route_page.click_qos_export_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click qos export button')
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
            self._route_page.select_the_file_to_be_uploaded(file_path)
            is_selected = True
        except Exception as exp:
            is_selected = False
            self.logger.error(exp.message)
            raise
        finally:
            self.logger.info('End: select the file to be uploaded')
            return is_selected

    def click_commercial_routing_grid_first_row_routing_product_link(self):
        """
        Returning click commercial routing grid first row routing product link
        Implementing logging for click commercial routing grid first row routing product link functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click commercial routing grid first row routing product link')
            self._route_page.click_commercial_routing_grid_first_row_routing_product_link()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click commercial routing grid first row routing product link')
            return is_clicked

    def select_notes_tab(self):
        """
        Returning select notes tab
        Implementing logging for select notes tab functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select notes tab')
            self._route_page.select_notes_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select notes tab')
            return is_selected

    def click_add_note_button(self):
        """
        Returning click add note button
        Implementing logging for click add note button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click add note button')
            self._route_page.click_add_note_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click add note button')
            return is_clicked

    def set_note_in_notes_grid(self, note_prefix):
        """
        Returning set note in notes grid
        Implementing logging for set note in notes grid functionality
        :param note_prefix:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set note in notes grid')
            self._route_page.set_note_in_notes_grid(note_prefix)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set note in notes grid')
            return is_set

    def click_add_note_save_button(self):
        """
        Returning click add note save button
        Implementing logging for click add note save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click add note save button')
            self._route_page.click_add_note_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click add note save button')
            return is_clicked

    def click_add_note_delete_button(self):
        """
        Returning click add note delete button
        Implementing logging for click add note delete button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click add note delete button')
            self._route_page.click_add_note_delete_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click add note delete button')
            return is_clicked

    def select_benchmarks_tab(self):
        """
        Returning select benchmarks tab
        Implementing logging for select benchmarks tab functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select benchmarks tab')
            self._route_page.select_benchmarks_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select benchmarks tab')
            return is_selected

    def set_new_benchmark_values_in_route_guide_tab(self):
        """
        Returning set new benchmark values in route guide tab
        Implementing logging for set new benchmark values in route guide tab functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set new benchmark values in route guide tab')
            self._route_page.set_new_benchmark_values_in_route_guide_tab()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set new benchmark values in route guide tab')
            return is_set

    def set_default_benchmark_values_in_route_guide_tab(self):
        """
        Returning set default benchmark values in route guide tab
        Implementing logging for set default benchmark values in route guide tab functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set default benchmark values in route guide tab')
            self._route_page.set_default_benchmark_values_in_route_guide_tab()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set default benchmark values in route guide tab')
            return is_set

    def click_technical_routing_grid_search_button(self):
        """
        Returning click technical routing grid search button
        Implementing logging for click technical routing grid search button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click technical routing grid search button')
            self._route_page.click_technical_routing_grid_search_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click technical routing grid search button')
            return is_clicked

    def click_technical_routing_grid_first_row_inline_action_button(self):
        """
        Returning click technical routing grid first row inline action button
        Implementing logging for click technical routing grid first row inline action button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click technical routing grid first row inline action button')
            self._route_page.click_technical_routing_grid_first_row_inline_action_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click technical routing grid first row inline action button')
            return is_clicked

    def is_fast_track_exclusion_window_loaded_properly(self):
        """
        Returning is fast track exclusion window loaded properly
        Implementing logging for is fast track exclusion window loaded properly functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is fast track exclusion window loaded properly')
            return self._route_page.is_fast_track_exclusion_window_loaded_properly()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is fast track exclusion window loaded properly')

    def close_fast_track_exclusion_window(self):
        """
        Returning close fast track exclusion window
        Implementing logging for close fast track exclusion window functionality
        :return: True/False
        """
        is_closed = None
        try:
            self.logger.info('Start: close fast track exclusion window')
            self._route_page.close_fast_track_exclusion_window()
            is_closed = True
        except WebDriverException as exp:
            is_closed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: close fast track exclusion window')
            return is_closed

    def select_technical_routing_grid_first_row_checkbox(self):
        """
        Returning select technical routing grid first row checkbox
        Implementing logging for select technical routing grid first row checkbox functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select technical routing grid first row checkbox')
            self._route_page.select_technical_routing_grid_first_row_checkbox()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select technical routing grid first row checkbox')
            return is_selected

    def set_routing_status_for_search(self, *routing_status):
        """
        Returning set routing status for search
        Implementing logging for set routing status for search functionality
        :param routing_status:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set routing status for search')
            self._route_page.set_routing_status_for_search(routing_status)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set routing status for search')
            return is_set

    def click_technical_routing_grid_recalc_rgs_button(self):
        """
        Returning click technical routing grid recalc rgs button
        Implementing logging for click technical routing grid recalc rgs button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click technical routing grid recalc rgs button')
            self._route_page.click_technical_routing_grid_recalc_rgs_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click technical routing grid recalc rgs button')
            return is_clicked

    def click_move_to_excluded_button(self):
        """
        Returning click move to excluded button
        Implementing logging for click move to excluded button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click move to excluded button')
            self._route_page.click_move_to_excluded_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click move to excluded button')
            return is_clicked

    def click_move_to_available_button(self):
        """
        Returning click move to available button
        Implementing logging for click move to available button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click move to available button')
            self._route_page.click_move_to_available_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click move to available button')
            return is_clicked

    def click_available_trunks_grid_move_to_suggested_button(self):
        """
        Returning click available trunks grid move to suggested button
        Implementing logging for click available trunks grid move to suggested button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click available trunks grid move to suggested button')
            self._route_page.click_available_trunks_grid_move_to_suggested_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click available trunks grid move to suggested button')
            return is_clicked

    def click_excluded_trunks_grid_move_to_suggested_button(self):
        """
        Returning click excluded trunks grid move to suggested button
        Implementing logging for click excluded trunks grid move to suggested button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click excluded trunks grid move to suggested button')
            self._route_page.click_excluded_trunks_grid_move_to_suggested_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click excluded trunks grid move to suggested button')
            return is_clicked

    def click_save_and_recalculate_button(self):
        """
        Returning click save and recalculate button
        Implementing logging for click save and recalculate button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click save and recalculate button')
            self._route_page.click_save_and_recalculate_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click save and recalculate button')
            return is_clicked

    def select_excluded_trunks_radio_button(self):
        """
        Returning select excluded trunks radio button
        Implementing logging for select excluded trunks radio button functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select excluded trunks radio button')
            self._route_page.select_excluded_trunks_radio_button()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select excluded trunks radio button')
            return is_selected

    def select_suggested_trunks_grid_first_row_checkbox(self):
        """
        Returning select suggested trunks grid first row checkbox
        Implementing logging for select suggested trunks grid first row checkbox functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select suggested trunks grid first row checkbox')
            self._route_page.select_suggested_trunks_grid_first_row_checkbox()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select suggested trunks grid first row checkbox')
            return is_selected

    def select_available_trunks_grid_first_row_checkbox(self):
        """
        Returning select available trunks grid first row checkbox
        Implementing logging for select available trunks grid first row checkbox functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select available trunks grid first row checkbox')
            self._route_page.select_available_trunks_grid_first_row_checkbox()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select available trunks grid first row checkbox')
            return is_selected

    def select_excluded_trunks_grid_first_row_checkbox(self):
        """
        Returning select excluded trunks grid first row checkbox
        Implementing logging for select excluded trunks grid first row checkbox functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select excluded trunks grid first row checkbox')
            self._route_page.select_excluded_trunks_grid_first_row_checkbox()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select excluded trunks grid first row checkbox')
            return is_selected

    def get_suggested_trunks_grid_first_row_details(self):
        """
        Returning get suggested trunks grid first row details
        Implementing logging for get suggested trunks grid first row details functionality
        :return: suggested trunks grid first row details
        """
        try:
            self.logger.info('Start: get suggested trunks grid first row details')
            return self._route_page.get_suggested_trunks_grid_first_row_details()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get suggested trunks grid first row details')

    def get_excluded_trunks_grid_first_row_details(self):
        """
        Returning get excluded trunks grid first row details
        Implementing logging for get excluded trunks grid first row details functionality
        :return: excluded trunks grid first row details
        """
        try:
            self.logger.info('Start: get excluded trunks grid first row details')
            return self._route_page.get_excluded_trunks_grid_first_row_details()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get excluded trunks grid first row details')

    def get_available_trunks_grid_first_row_details(self):
        """
        Returning get available trunks grid first row details
        Implementing logging for get available trunks grid first row details functionality
        :return: available trunks grid first row details
        """
        try:
            self.logger.info('Start: get available trunks grid first row details')
            return self._route_page.get_available_trunks_grid_first_row_details()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get available trunks grid first row details')

    def click_technical_routing_exclusion_button(self):
        """
        Returning click technical routing exclusion button
        Implementing logging for click technical routing exclusion button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click technical routing exclusion button')
            self._route_page.click_technical_routing_exclusion_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click technical routing exclusion button')
            return is_clicked

    def set_new_exclusion_level(self, exclusion_level):
        """
        Returning set new exclusion level
        Implementing logging for set new exclusion level functionality
        :param exclusion_level:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set new exclusion level')
            self._route_page.set_new_exclusion_level(exclusion_level)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set new exclusion level')
            return is_set

    def set_exclusion_begin_date(self, begin_date):
        """
        Returning set exclusion begin date
        Implementing logging for set exclusion begin date functionality
        :param begin_date:
        :return: set_begin_date
        """
        set_begin_date = None
        try:
            self.logger.info('Start: set exclusion begin date')
            set_begin_date = self._route_page.set_exclusion_begin_date(begin_date)
        except WebDriverException as exp:
            set_begin_date = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set exclusion begin date')
            return set_begin_date

    def set_exclusion_end_date(self, end_date):
        """
        Returning set exclusion end date
        Implementing logging for set exclusion end date functionality
        :param end_date:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set exclusion end date')
            self._route_page.set_exclusion_end_date(end_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set exclusion end date')
            return is_set

    def set_new_exclusion_category(self, *category_list):
        """
        Returning set new exclusion category
        Implementing logging for set new exclusion category functionality
        :param category_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set new exclusion category')
            if len(category_list) > 0:
                self._route_page.set_new_exclusion_category(category_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set new exclusion category')
            return is_set

    def set_new_exclusion_group(self, *group_list):
        """
        Returning set new exclusion group
        Implementing logging for set new exclusion group functionality
        :param group_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set new exclusion group')
            if len(group_list) > 0:
                self._route_page.set_new_exclusion_group(group_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set new exclusion group')
            return is_set

    def set_new_exclusion_service(self, *service_list):
        """
        Returning set new exclusion service
        Implementing logging for set new exclusion service functionality
        :param service_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set new exclusion service')
            if len(service_list) > 0:
                self._route_page.set_new_exclusion_service(service_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set new exclusion service')
            return is_set

    def set_new_exclusion_routing_product(self, *routing_product_list):
        """
        Returning set new exclusion routing product
        Implementing logging for set new exclusion routing product functionality
        :param routing_product_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set new exclusion routing product')
            if len(routing_product_list) > 0:
                self._route_page.set_new_exclusion_routing_product(routing_product_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set new exclusion routing product')
            return is_set

    def set_exclusion_type(self, exclusion_type):
        """
        Returning set exclusion type
        Implementing logging for set exclusion type functionality
        :param exclusion_type:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set exclusion type')
            self._route_page.set_exclusion_type(exclusion_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set exclusion type')
            return is_set

    def get_exclusions_grid_row_details(self, row_identifier_text):
        """
        Returning get exclusions grid row details
        Implementing logging for get exclusions grid row details functionality
        :param row_identifier_text:
        :return: exclusions grid row data
        """
        try:
            self.logger.info('Start: get exclusions grid row details')
            return self._route_page.get_exclusions_grid_row_details(row_identifier_text)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get exclusions grid row details')

    def click_exclusions_grid_inline_action_button(self, row_identifier_text):
        """
        Returning click exclusions grid inline action button
        Implementing logging for click exclusions grid inline action button functionality
        :param row_identifier_text:
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click exclusions grid inline action button')
            self._route_page.click_exclusions_grid_inline_action_button(row_identifier_text)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click exclusions grid inline action button')
            return is_clicked

    def select_delete_exclusion_inline_item(self):
        """
        Returning select delete exclusion inline item
        Implementing logging for select delete exclusion inline item functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select delete exclusion inline item')
            self._route_page.select_delete_exclusion_inline_item()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select delete exclusion inline item')
            return is_selected

    def select_exclusions_grid_row_checkbox(self, row_identifier_text):
        """
        Returning select exclusions grid row checkbox
        Implementing logging for select exclusions grid row checkbox functionality
        :param row_identifier_text:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select exclusions grid row checkbox')
            self._route_page.select_exclusions_grid_row_checkbox(row_identifier_text)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select exclusions grid row checkbox')
            return is_selected

    def click_technical_routing_override_button(self):
        """
        Returning click technical routing override button
        Implementing logging for click technical routing override button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click technical routing override button')
            self._route_page.click_technical_routing_override_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click technical routing override button')
            return is_clicked

    def select_emergency_re_routing_available_trunks_grid_first_row_checkbox(self):
        """
        Returning select emergency rerouting available trunks grid first row checkbox
        Implementing logging for select emergency rerouting available trunks grid first row checkbox functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select emergency rerouting available trunks grid first row checkbox')
            self._route_page.select_emergency_re_routing_available_trunks_grid_first_row_checkbox()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select emergency rerouting available trunks grid first row checkbox')
            return is_selected

    def click_to_rank_button(self):
        """
        Returning click to rank button
        Implementing logging for click to rank button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click to rank button')
            self._route_page.click_to_rank_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click to rank button')
            return is_clicked

    def move_available_trunk_into_rank_grid(self):
        """
        Returning move available trunk into rank grid
        Implementing logging for move available trunk into rank grid functionality
        :return: True/False
        """
        is_moved = None
        try:
            self.logger.info('Start: move available trunk into rank grid')
            self._route_page.move_available_trunk_into_rank_grid()
            is_moved = True
        except WebDriverException as exp:
            is_moved = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: move available trunk into rank grid')
            return is_moved

    def set_route_percentage_values(self):
        """
        Returning set route percentage values
        Implementing logging for set route percentage values functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set route percentage values')
            self._route_page.set_route_percentage_values()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set route percentage values')
            return is_set

    def get_ranked_trunks(self):
        """
        Returning get ranked trunks
        Implementing logging for get ranked trunks functionality
        :return: True/False
        """
        is_retrieved = None
        try:
            self.logger.info('Start: get ranked trunks')
            self._route_page.get_ranked_trunks()
            is_retrieved = True
        except WebDriverException as exp:
            is_retrieved = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get ranked trunks')
            return is_retrieved

    def click_emergency_routing_save_button(self):
        """
        Returning click emergency routing save button
        Implementing logging for click emergency routing save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click emergency routing save button')
            self._route_page.click_emergency_routing_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click emergency routing save button')
            return is_clicked

    def verify_priority_status_changed(self):
        """
        Returning verify priority status changed
        Implementing logging for verify priority status changed functionality
        :return: True/False
        """
        is_verified = None
        try:
            self.logger.info('Start: verify priority status changed')
            is_verified = self._route_page.verify_priority_status_changed()
        except WebDriverException as exp:
            is_verified = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: verify priority status changed')
            return is_verified

    def verify_suggested_trunks(self):
        """
        Returning verify suggested trunks
        Implementing logging for verify suggested trunks functionality
        :return: True/False
        """
        is_verified = None
        try:
            self.logger.info('Start: verify suggested trunks')
            is_verified = self._route_page.verify_suggested_trunks()
        except WebDriverException as exp:
            is_verified = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: verify suggested trunks')
            return is_verified

    def set_priority_for_search(self, *priority):
        """
        Returning set priority for search
        Implementing logging for set priority for search functionality
        :param priority:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set priority for search')
            self._route_page.set_priority_for_search(priority)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set priority for search')
            return is_set

    def get_selected_route_class(self):
        """
        Returning get selected route class
        Implementing logging for get selected route class functionality
        :return: selected_route_class
        """
        selected_route_class = None
        try:
            self.logger.info('Start: get selected route class')
            selected_route_class = self._route_page.get_selected_route_class()
        except WebDriverException as exp:
            selected_route_class = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get selected route class')
            return selected_route_class

    def get_selected_routing_product(self):
        """
        Returning get selected routing product
        Implementing logging for get selected routing product functionality
        :return: selected_routing_product
        """
        selected_routing_product = None
        try:
            self.logger.info('Start: get selected routing product')
            selected_routing_product = self._route_page.get_selected_routing_product()
        except WebDriverException as exp:
            selected_routing_product = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get selected routing product')
            return selected_routing_product

    def clear_multiselect_kendo_dropdown(self, label):
        """
        Returning clear multiselect kendo dropdown
        Implementing logging for clear multiselect kendo dropdown functionality
        :param label:
        :return: True/False
        """
        is_cleared = None
        try:
            self.logger.info('Start: clear multiselect kendo dropdown')
            self._route_page.clear_multiselect_kendo_dropdown(label)
            is_cleared = True
        except WebDriverException as exp:
            is_cleared = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: clear multiselect kendo dropdown')
            return is_cleared

    def set_route_class_for_search(self, *route_class_list):
        """
        Returning set route class for search
        Implementing logging for set route class for search functionality
        :param route_class_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set route class for search')
            self._route_page.set_route_class_for_search(route_class_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set route class for search')
            return is_set

    def set_routing_product_for_search(self, *routing_product_list):
        """
        Returning set routing product for search
        Implementing logging for set routing product for search functionality
        :param routing_product_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set routing product for search')
            self._route_page.set_routing_product_for_search(routing_product_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set routing product for search')
            return is_set

    def sort_column_in_ascending_order(self, column_name):
        """
        Returning sort column in ascending order
        Implementing logging for sort column in ascending order functionality
        :param column_name:
        :return: True/False
        """
        is_sorted = None
        try:
            self.logger.info('Start: sort column in ascending order')
            self._route_page.sort_column_in_ascending_order(column_name)
            is_sorted = True
        except WebDriverException as exp:
            is_sorted = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: sort column in ascending order')
            return is_sorted

    def is_commercial_routing_page_loaded_properly(self):
        """
        Returning is commercial routing page loaded properly
        Implementing logging for is commercial routing page loaded properly functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is commercial routing page loaded properly')
            return self._route_page.is_commercial_routing_page_loaded_properly()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is commercial routing page loaded properly')

    def click_technical_routing_benchmarks_button(self):
        """
        Returning click technical routing benchmarks button
        Implementing logging for click technical routing benchmarks button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click technical routing benchmarks button')
            self._route_page.click_technical_routing_benchmarks_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click technical routing benchmarks button')
            return is_clicked

    def read_data_from_upload_excel_file(self, file_path):
        """
        Returning read data from upload excel file
        Implementing logging for read data from upload excel file functionality
        :param file_path:
        :return: True/False
        """
        is_read = None
        try:
            self.logger.info('Start: read data from upload excel file')
            self._route_page.read_data_from_excel_file(file_path)
            is_read = True
        except WebDriverException as exp:
            is_read = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: read data from upload excel file')
            return is_read

    def compare_qos_grid_row_details_with_excel_data(self):
        """
        Returning compare qos grid row details with excel data
        Implementing logging for compare qos grid row details with excel data functionality
        :return: True/False
        """
        is_compared = None
        try:
            self.logger.info('Start: compare qos grid row details with excel data')
            is_compared = self._route_page.compare_qos_grid_row_details_with_excel_data()
        except WebDriverException as exp:
            is_compared = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare qos grid row details with excel data')
            return is_compared

    def click_technical_routing_grid_first_row_routing_product_link(self):
        """
        Returning click technical routing grid first row routing product link
        Implementing logging for click technical routing grid first row routing product link functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click technical routing grid first row routing product link')
            self._route_page.click_technical_routing_grid_first_row_routing_product_link()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click technical routing grid first row routing product link')
            return is_clicked

    def filter_suggested_trunks_grid_account_column(self):
        """
        Returning filter suggested trunks grid account column
        Implementing logging for filter suggested trunks grid account column functionality
        :return: True/False
        """
        is_filtered = None
        try:
            self.logger.info('Start: filter suggested trunks grid account column')
            self._route_page.filter_suggested_trunks_grid_account_column()
            is_filtered = True
        except WebDriverException as exp:
            is_filtered = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: filter suggested trunks grid account column')
            return is_filtered

    def click_fast_track_exclusion_button(self):
        """
        Returning click fast track exclusion button
        Implementing logging for click fast track exclusion button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click fast track exclusion button')
            self._route_page.click_fast_track_exclusion_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click fast track exclusion button')
            return is_clicked

    def set_fast_track_exclusion_begin_date(self, begin_date):
        """
        Returning set fast track exclusion begin date
        Implementing logging for set fast track exclusion begin date functionality
        :param begin_date:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set fast track exclusion begin date')
            if begin_date != "":
                self._route_page.set_fast_track_exclusion_begin_date(begin_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set fast track exclusion begin date')
            return is_set

    def set_fast_track_exclusion_end_date(self, end_date):
        """
        Returning set fast track exclusion end date
        Implementing logging for set fast track exclusion end date functionality
        :param end_date:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set fast track exclusion end date')
            if end_date != "":
                self._route_page.set_fast_track_exclusion_end_date(end_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set fast track exclusion end date')
            return is_set

    def set_fast_track_exclusion_note(self, note):
        """
        Returning set fast track exclusion note
        Implementing logging for set fast track exclusion note functionality
        :param note:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set fast track exclusion note')
            self._route_page.set_fast_track_exclusion_note(note)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set fast track exclusion note')
            return is_set

    def set_fast_track_exclusion_account(self, *account_list):
        """
        Returning set fast track exclusion account
        Implementing logging for set fast track exclusion account functionality
        :param account_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set fast track exclusion account')
            self._route_page.set_fast_track_exclusion_account(account_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set fast track exclusion account')
            return is_set

    def set_fast_track_exclusion_country(self, *country_list):
        """
        Returning set fast track exclusion country
        Implementing logging for set fast track exclusion country functionality
        :param country_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set fast track exclusion country')
            self._route_page.set_fast_track_exclusion_country(country_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set fast track exclusion country')
            return is_set

    def click_products_go_button(self):
        """
        Returning click products go button
        Implementing logging for click products go button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click products go button')
            self._route_page.click_products_go_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click products go button')
            return is_clicked

    def click_fast_track_exclusion_save_button(self):
        """
        Returning click fast track exclusion save button
        Implementing logging for click fast track exclusion save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click fast track exclusion save button')
            self._route_page.click_fast_track_exclusion_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click fast track exclusion save button')
            return is_clicked

    def click_trunks_go_button(self):
        """
        Returning click trunks go button
        Implementing logging for click trunks go button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click trunks go button')
            self._route_page.click_trunks_go_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click trunks go button')
            return is_clicked

    def click_transition_automation_link(self):
        """
        Returning click transition automation link
        Implementing logging for click transition automation link functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click transition automation link')
            self._route_page.click_transition_automation_link()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click transition automation link')
            return is_clicked

    def click_new_transition_button(self):
        """
        Returning click new transition button
        Implementing logging for click new transition button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click new transition button')
            self._route_page.click_new_transition_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click new transition button')
            return is_clicked

    def set_new_automated_transition_route_class(self, route_class):
        """
        Returning set new automated transition route class
        Implementing logging for set new automated transition route class functionality
        :param route_class:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set new automated transition route class')
            self._route_page.set_new_automated_transition_route_class(route_class)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set new automated transition route class')
            return is_set

    def set_new_automated_transition_country_type(self, country_type):
        """
        Returning set new automated transition country type
        Implementing logging for set new automated transition country type functionality
        :param country_type:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set new automated transition country type')
            if country_type != "":
                self._route_page.set_new_automated_transition_country_type(country_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set new automated transition country type')
            return is_set

    def set_new_automated_transition_country(self, country):
        """
        Returning set new automated transition country
        Implementing logging for set new automated transition country functionality
        :param country:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set new automated transition country')
            self._route_page.set_new_automated_transition_country(country)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set new automated transition country')
            return is_set

    def set_new_automated_transition_routing_product(self, routing_product):
        """
        Returning set new automated transition routing product
        Implementing logging for set new automated transition routing product functionality
        :param routing_product:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set new automated transition routing product')
            self._route_page.set_new_automated_transition_routing_product(routing_product)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set new automated transition routing product')
            return is_set

    def set_new_automated_transition_value(self, transition):
        """
        Returning set new automated transition value
        Implementing logging for set new automated transition value functionality
        :param transition:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set new automated transition value')
            self._route_page.set_new_automated_transition_value(transition)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set new automated transition value')
            return is_set

    def select_automated_radio_button(self, choice):
        """
        Returning select automated radio button
        Implementing logging for select automated radio button functionality
        :param choice:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select automated radio button')
            self._route_page.select_automated_radio_button(choice)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select automated radio button')
            return is_selected

    def set_new_automated_transition_resolution_order(self, resolution_order):
        """
        Returning set new automated transition resolution order
        Implementing logging for set new automated transition resolution order functionality
        :param resolution_order:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set new automated transition resolution order')
            if resolution_order != "":
                self._route_page.set_new_automated_transition_resolution_order(resolution_order)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set new automated transition resolution order')
            return is_set

    def click_save_button(self):
        """
        Returning click save button
        Implementing logging for click save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click save button')
            self._route_page.click_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click save button')
            return is_clicked

    def set_country_type_for_search(self, *country_type_list):
        """
        Returning set country type for search
        Implementing logging for set country type for search functionality
        :param country_type_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set country type for search')
            self._route_page.set_country_type_for_search(country_type_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set country type for search')
            return is_set

    def set_transition_for_search(self, *transition_list):
        """
        Returning set transition for search
        Implementing logging for set transition for search functionality
        :param transition_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set transition for search')
            self._route_page.set_transition_for_search(transition_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set transition for search')
            return is_set

    def set_transition_country_for_search(self, *country_list):
        """
        Returning set transition country for search
        Implementing logging for set transition country for search functionality
        :param country_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set transition country for search')
            self._route_page.set_transition_country_for_search(country_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set transition country for search')
            return is_set

    def set_automated_choice_for_search(self, automated_choice):
        """
        Returning set automated choice for search
        Implemented set automated choice for search functionality
        :param automated_choice:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set automated choice for search')
            self._route_page.set_automated_choice_for_search(automated_choice)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set automated choice for search')
            return is_set

    def click_transition_automation_search_button(self):
        """
        Returning click transition automation search button
        Implementing logging for click transition automation search button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click transition automation search button')
            self._route_page.click_transition_automation_search_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click transition automation search button')
            return is_clicked

    def get_transition_automation_grid_row_details(self):
        """
        Returning get transition automation grid row details
        Implementing logging for get transition automation grid row details functionality
        :return: transition_automation_grid_row_data
        """
        try:
            self.logger.info('Start: get transition automation grid row details')
            return self._route_page.get_transition_automation_grid_row_details()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get transition automation grid row details')

    def select_transition_automation_grid_first_row_checkbox(self):
        """
        Returning select transition automation grid first row checkbox
        Implementing logging for select transition automation grid first row checkbox functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select transition automation grid first row checkbox')
            self._route_page.select_transition_automation_grid_first_row_checkbox()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select transition automation grid first row checkbox')
            return is_selected

    def click_transition_automation_delete_button(self):
        """
        Returning click transition automation delete button
        Implementing logging for click transition automation delete button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click transition automation delete button')
            self._route_page.click_transition_automation_delete_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click transition automation delete button')
            return is_clicked

    def click_transition_automation_bulk_edit_button(self):
        """
        Returning click transition automation bulk edit button
        Implementing logging for click transition automation bulk edit button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click transition automation bulk edit button')
            self._route_page.click_transition_automation_bulk_edit_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click transition automation bulk edit button')
            return is_clicked

    def set_bulk_edit_automated_value(self, automated_value):
        """
        Returning set bulk edit automated value
        Implementing logging for set bulk edit automated value functionality
        :param automated_value:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set bulk edit automated value')
            if automated_value != "":
                self._route_page.set_bulk_edit_automated_value(automated_value)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set bulk edit automated value')
            return is_set

    def set_bulk_edit_resolution_order(self, resolution_order):
        """
        Returning set bulk edit resolution order
        Implementing logging for set bulk edit resolution order functionality
        :param resolution_order:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set bulk edit resolution order')
            self._route_page.set_bulk_edit_resolution_order(resolution_order)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set bulk edit resolution order')
            return is_set

    def click_transition_automation_save_changes_button(self):
        """
        Returning click transition automation save changes button
        Implementing logging for click transition automation save changes button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click transition automation save changes button')
            self._route_page.click_transition_automation_save_changes_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click transition automation save changes button')
            return is_clicked

    def click_transition_automation_first_row_inline_action_button(self):
        """
        Returning click transition automation first row inline action button
        Implementing logging for click transition automation first row inline action button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click transition automation first row inline action button')
            self._route_page.click_transition_automation_first_row_inline_action_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click transition automation first row inline action button')
            return is_clicked

    def select_transition_automation_delete_inline_action_item(self):
        """
        Returning select transition automation delete inline action item
        Implementing logging for select transition automation delete inline action item functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select transition automation delete inline action item')
            self._route_page.select_transition_automation_delete_inline_action_item()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select transition automation delete inline action item')
            return is_selected

    def set_inclusion_country_for_search(self, *list_of_country):
        """
        Returning set inclusion country for search
        Implementing logging for set inclusion country for search functionality
        :param list_of_country:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set inclusion country for search')
            self._route_page.set_inclusion_country_for_search(list_of_country)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set inclusion country for search')
            return is_set

    def set_inclusion_routing_product_for_search(self, *routing_product_list):
        """
        Returning set inclusion routing product for search
        Implementing logging for set inclusion routing product for search functionality
        :param routing_product_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set inclusion routing product for search')
            self._route_page.set_inclusion_routing_product_for_search(routing_product_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set inclusion routing product for search')
            return is_set

    def set_new_suggestion_route_class_value(self, value):
        """
        Returning set new suggestion route class value
        Implementing logging for set new suggestion route class value functionality
        :param value:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set new suggestion route class value')
            self._route_page.set_new_suggestion_route_class_value(value)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set new suggestion route class value')
            return is_set

    def set_new_suggestion_routing_product_value(self, value):
        """
        Returning set new suggestion routing product value
        Implementing logging for set new suggestion routing product value functionality
        :param value:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set new suggestion routing product value')
            self._route_page.set_new_suggestion_routing_product_value(value)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set new suggestion routing product value')
            return is_set

    def click_create_route_suggestion_button(self):
        """
        Returning click create route suggestion button
        Implementing logging for click create route suggestion button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click create route suggestion button')
            self._route_page.click_create_route_suggestion_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click create route suggestion button')
            return is_clicked

    def select_commercial_dashboard_tab(self):
        """
        Returning select commercial dashboard tab
        Implementing logging for select commercial dashboard tab functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select commercial dashboard tab')
            self._route_page.select_commercial_dashboard_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select commercial dashboard tab')
            return is_selected

    def click_manage_reason_link(self):
        """
        Returning click manage reason link
        Implementing logging for click manage reason link functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click manage reason link')
            self._route_page.click_manage_reason_link()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click manage reason link')
            return is_clicked

    def click_add_new_reason_button(self):
        """
        Returning click add new reason button
        Implementing logging for click add new reason button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click add new reason button')
            self._route_page.click_add_new_reason_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click add new reason button')
            return is_clicked

    def set_value_in_reason_column(self, prefix):
        """
        Returning set value in reason column
        Implementing logging for set value in reason column functionality
	:param prefix:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set value in reason column')
            self._route_page.set_value_in_reason_column(prefix)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set value in reason column')
            return is_set

    def set_value_in_scope_column(self, dropdown_value):
        """
        Returning set value in scope column
        Implementing logging for set value in scope column functionality
	:param dropdown_value:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set value in scope column')
            self._route_page.set_value_in_scope_column(dropdown_value)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set value in scope column')
            return is_set

    def click_manage_reasons_save_button(self):
        """
        Returning click manage reasons save button
        Implementing logging for click manage reasons save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click manage reasons save button')
            self._route_page.click_manage_reasons_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click manage reasons save button')
            return is_clicked

    def get_created_reason(self):
        """
        Returning get created reason
        Implementing logging for get created reason functionality
        :return: route class
        """
        try:
            self.logger.info('Start: get created reason')
            return self._route_page.get_created_reason()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get created reason')

    def set_route_class_for_benchmark_management(self, *route_class_list):
        """
        Returning set route class for benchmark management
        Implementing logging for set route class for benchmark management functionality
        :param route_class_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set route class for benchmark management')
            self._route_page.set_route_class_for_benchmark_management(route_class_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set route class for benchmark management')
            return is_set

    def click_technical_routing_benchmarks_search_button(self):
        """
        Returning click technical routing benchmarks search button
        Implementing logging for click technical routing benchmarks search button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click technical routing benchmarks search button')
            self._route_page.click_technical_routing_benchmarks_search_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click technical routing benchmarks search button')
            return is_clicked

    def set_routing_product_for_benchmark_management(self, *routing_product_list):
        """
        Returning set routing product for benchmark management
        Implementing logging for set routing product for benchmark management functionality
        :param routing_product_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set routing product for benchmark management')
            self._route_page.set_routing_product_for_benchmark_management(routing_product_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set routing product for benchmark management')
            return is_set

    def click_route_guide_adjuster_button(self):
        """
        Returning click route guide adjuster button
        Implementing logging for click route guide adjuster button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click route guide adjuster button')
            self._route_page.click_route_guide_adjuster_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click route guide adjuster button')
            return is_clicked

    def click_view_trgs_button(self):
        """
        Returning click view trgs button
        Implementing logging for click view trgs button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click view trgs button')
            self._route_page.click_view_trgs_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click view trgs button')
            return is_clicked

    def click_adjust_button(self):
        """
        Returning click adjust button
        Implementing logging for click adjust button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click adjust button')
            self._route_page.click_adjust_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click adjust button')
            return is_clicked

    def compare_rgs(self):
        """
        Returning compare rgs
        Implementing logging for compare rgs functionality
        :return: True/False
        """
        is_matched = None
        try:
            self.logger.info('Start: compare rgs')
            is_matched = self._route_page.compare_rgs()
        except WebDriverException as exp:
            is_matched = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare rgs')
            return is_matched

    def get_all_rows_value_of_trunks_column_from_route_guide_adjuster_grid(self):
        """
        Returning get all rows value of trunks column from route guide adjuster grid
        Implementing logging for get all rows value of route guide adjuster trunks column from grid functionality
        :return: True/False
        """
        is_got = None
        try:
            self.logger.info('Start: get all rows value of route guide adjuster trunks column from grid')
            self._route_page.get_all_rows_value_of_trunks_column_from_route_guide_adjuster_grid()
            is_got = True
        except WebDriverException as exp:
            is_got = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get all rows value of route guide adjuster trunks column from grid')
            return is_got

    def is_trg_adjuster_tab_present(self):
        """
        Returning is trg adjuster tab present
        Implementing logging for is trg adjuster tab present functionality
        :return: True/False
        """
        is_present = None
        try:
            self.logger.info('Start: is trg adjuster tab present')
            is_present = self._route_page.is_trg_adjuster_tab_present()
        except WebDriverException as exp:
            is_present = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is trg adjuster tab present')
            return is_present

    def click_route_class_benchmarks_margin_save_changes_button(self):
        """
        Returning click route class benchmarks margin save changes button
        Implementing logging for click route class benchmarks margin save changes button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click route class benchmarks margin save changes button')
            self._route_page.click_route_class_benchmarks_margin_save_changes_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click route class benchmarks margin save changes button')
            return is_clicked

    def click_route_guide_benchmarks_save_changes_button(self):
        """
        Returning click route guide benchmarks save changes button
        Implementing logging for click guide class benchmarks save changes button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click route guide benchmarks save changes button')
            self._route_page.click_route_guide_benchmarks_save_changes_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click route guide benchmarks save changes button')
            return is_clicked

    def click_customer_specific_routing_button(self):
        """
        Returning click customer specific routing button
        Implementing logging for click customer specific routing button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click customer specific routing button')
            self._route_page.click_customer_specific_routing_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click customer specific routing button')
            return is_clicked

    def set_destination_category_no_1(self, *destination_category_list):
        """
        Returning set destination category no 1
        Implementing logging for set destination category no 1 functionality
        :param destination_category_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set destination category no 1')
            self._route_page.set_destination_category_no_1(destination_category_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set destination category no 1')
            return is_set

    def set_destination_category_no_2(self, *destination_category_list):
        """
        Returning set destination category no 2
        Implementing logging for set destination category no 2 functionality
        :param destination_category_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set destination category no 2')
            self._route_page.set_destination_category_no_2(destination_category_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set destination category no 2')
            return is_set

    def click_customer_specific_routing_search_button(self):
        """
        Returning click customer specific routing search button
        Implementing logging for click customer specific routing search button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click customer specific routing search button')
            self._route_page.click_customer_specific_routing_search_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click customer specific routing search button')
            return is_clicked

    def set_commercial_routing_grid_settings(self, grid_settings):
        """
        Returning set commercial routing grid settings
        Implementing logging for set commercial routing grid settings functionality
        :param grid_settings:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set commercial routing grid settings')
            self._route_page.set_commercial_routing_grid_settings(grid_settings)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set commercial routing grid settings')
            return is_set

    def get_commercial_routing_grid_column_names_by_order(self):
        """
        Returning get commercial routing grid column names by order
        Implementing logging for get commercial routing grid column names by order functionality
        :return: column_name_list
        """
        column_name_list = None
        try:
            self.logger.info('Start: get commercial routing grid column names by order')
            column_name_list = self._route_page.get_commercial_routing_grid_column_names_by_order()
        except WebDriverException as exp:
            column_name_list = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get commercial routing grid column names by order')
            return column_name_list

    def drag_commercial_routing_grid_column(self, source_column, destination_column):
        """
        Returning drag commercial routing grid column
        Implementing logging for drag commercial routing grid column functionality
        :param source_column:
        :param destination_column:
        :return: True/False
        """
        is_dragged = None
        try:
            self.logger.info('Start: drag commercial routing grid column')
            self._route_page.drag_commercial_routing_grid_column(source_column, destination_column)
            is_dragged = True
        except WebDriverException as exp:
            is_dragged = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: drag commercial routing grid column')
            return is_dragged

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
            is_compared = self._route_page.compare_grid_column_position_after_altering(source_column, destination_column, column_name_list)
        except WebDriverException as exp:
            is_compared = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare grid column position after altering')
            return is_compared

    def click_carrier_test_management_button(self):
        """
        Returning click carrier test management button
        Implementing logging for click carrier test management button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click carrier test management button')
            self._route_page.click_carrier_test_management_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click carrier test management button')
            return is_clicked

    def click_new_test_button(self):
        """
        Returning click new test button
        Implementing logging for click new test button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click new test button')
            self._route_page.click_new_test_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click new test button')
            return is_clicked

    def set_carrier_new_test_account(self, account_name):
        """
        Returning set carrier new test account
        Implementing logging for set carrier new test account functionality
        :param account_name:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set carrier new test account')
            self._route_page.set_carrier_new_test_account(account_name)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set carrier new test account')
            return is_set

    def set_carrier_new_test_trunk(self, trunk_name):
        """
        Returning set carrier new test trunk
        Implementing logging for set carrier new test trunk functionality
        :param trunk_name:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set carrier new test trunk')
            self._route_page.set_carrier_new_test_trunk(trunk_name)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set carrier new test trunk')
            return is_set

    def set_carrier_new_test_routing_product(self, routing_product):
        """
        Returning set carrier new test routing product
        Implementing logging for set carrier new test routing product functionality
        :param routing_product:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set carrier new test routing product')
            self._route_page.set_carrier_new_test_routing_product(routing_product)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set carrier new test routing product')
            return is_set

    def set_carrier_new_test_route_class(self, route_class):
        """
        Returning set carrier new test route class
        Implementing logging for set carrier new test route class functionality
        :param route_class:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set carrier new test route class')
            self._route_page.set_carrier_new_test_route_class(route_class)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set carrier new test route class')
            return is_set

    def click_create_test_button(self):
        """
        Returning click create test button
        Implementing logging for click create test button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click create test button')
            self._route_page.click_create_test_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click create test button')
            return is_clicked

    def is_country_column_present_in_crgm_grid(self):
        """
        Returning is country column present in crgm grid
        Implementing logging for is country column present in crgm grid functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is country column present in crgm grid')
            return self._route_page.is_country_column_present_in_crgm_grid()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is country column present in crgm grid')

    def is_country_column_present_in_overrides_management_grid(self):
        """
        Returning is country column present in overrides management grid
        Implementing logging for is country column present in overrides management grid functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is country column present in overrides management grid')
            return self._route_page.is_country_column_present_in_overrides_management_grid()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is country column present in overrides management grid')

    def is_country_column_present_in_inclusion_management_grid(self):
        """
        Returning is country column present in inclusion management grid
        Implementing logging for is country column present in inclusion management grid functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is country column present in inclusion management grid')
            return self._route_page.is_country_column_present_in_inclusion_management_grid()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is country column present in inclusion management grid')

    def is_country_column_present_in_exclusion_management_grid(self):
        """
        Returning is country column present in exclusion management grid
        Implementing logging for is country column present in exclusion management grid functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is country column present in exclusion management grid')
            return self._route_page.is_country_column_present_in_exclusion_management_grid()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is country column present in exclusion management grid')

    def set_first_routing_product_for_search(self):
        """
        Returning set first routing product for search
        Implementing logging for set first routing product for search functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set first routing product for search')
            self._route_page.set_first_routing_product_for_search()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set first routing product for search')
            return is_set

    def clear_routing_product_dropdown_selection(self):
        """
        Returning clear routing product dropdown selection
        Implementing logging for clear routing product dropdown selection functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: clear routing product dropdown selection')
            self._route_page.clear_routing_product_dropdown_selection()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: clear routing product dropdown selection')
            return is_set

    def click_new_csr_button(self):
        """
        Returning click new csr button
        Implementing logging for click new csr button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click new csr button')
            self._route_page.click_new_csr_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click new csr button')
            return is_clicked

    def set_csr_product(self, product_name):
        """
        Returning set csr product
        Implementing logging for set csr product functionality
        :param product_name:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set csr product')
            self._route_page.set_csr_product(product_name)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set csr product')
            return is_set

    def set_csr_customer(self, carrier_name, trunk_name):
        """
        Returning set csr customer
        Implementing logging for set csr customer functionality
        :param carrier_name:
        :param trunk_name:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set csr customer')
            self._route_page.set_csr_customer(carrier_name, trunk_name)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set csr customer')
            return is_set

    def select_to_rank_grid_first_row_checkbox(self):
        """
        Returning select to rank grid first row checkbox
        Implementing logging for select to rank grid first row checkbox functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select to rank grid first row checkbox')
            self._route_page.select_to_rank_grid_first_row_checkbox()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select to rank grid first row checkbox')
            return is_selected

    def click_csr_to_rank_button(self):
        """
        Returning click csr to rank button
        Implementing logging for click csr to rank button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click csr to rank button')
            self._route_page.click_csr_to_rank_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click csr to rank button')
            return is_clicked

    def set_value_in_rcn_to_rank_grid_column(self):
        """
        Returning set value in rcn to rank grid column
        Implementing logging for set value in rcn to rank grid column functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set value in rcn to rank grid column')
            self._route_page.set_value_in_rcn_to_rank_grid_column()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set value in rcn to rank grid column')
            return is_set

    def click_review_route_guides_button(self):
        """
        Returning click review route guides button
        Implementing logging for click review route guides button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click review route guides button')
            self._route_page.click_review_route_guides_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click review route guides button')
            return is_clicked

    def click_csr_save_and_create_button(self):
        """
        Returning click csr save and create button
        Implementing logging for click csr save and create button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click csr save and create button')
            self._route_page.click_csr_save_and_create_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click csr save and create button')
            return is_clicked

    def click_csrm_grid_first_row_routing_product_link(self):
        """
        Returning click csrm grid first row routing product link
        Implementing logging for click csrm grid first row routing product link functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click csrm grid first row routing product link')
            self._route_page.click_csrm_grid_first_row_routing_product_link()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click csrm grid first row routing product link')
            return is_clicked

    def is_suggested_trunk_grid_present(self):
        """
        Returning is suggested trunk grid present
        Implementing logging for is suggested trunk grid present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is suggested trunk grid present')
            return self._route_page.is_suggested_trunk_grid_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is suggested trunk grid present')

    def is_available_worksheets_grid_present(self):
        """
        Returning is available worksheets grid present
        Implementing logging for is available worksheets grid present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is available worksheets grid present')
            return self._route_page.is_available_worksheets_grid_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is available worksheets grid present')

    def is_excluded_trunks_grid_present(self):
        """
        Returning is excluded trunks grid present
        Implementing logging for is excluded trunks grid present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is excluded trunks grid present')
            return self._route_page.is_excluded_trunks_grid_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is excluded trunks grid present')

    def set_override_in_grid(self, override_rank):
        """
        Returning set override in grid
        Implementing logging for set override in grid functionality
        :param override_rank:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set override in grid')
            self._route_page.set_override_in_grid(override_rank)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set override in grid')
            return is_set

    def compare_suggested_trunks_grid_begin_date(self, actual_date):
        """
        Returning compare suggested trunks grid begin date
        Implementing logging for compare suggested trunks grid begin date functionality
        :param actual_date:
        :return: True/False
        """
        is_compared = None
        try:
            self.logger.info('Start: compare suggested trunks grid begin date')
            is_compared = self._route_page.compare_suggested_trunks_grid_begin_date(actual_date)
        except WebDriverException as exp:
            is_compared = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare suggested trunks grid begin date')
            return is_compared

    def compare_suggested_trunks_grid_end_date(self, actual_date):
        """
        Returning compare suggested trunks grid end date
        Implementing logging for compare suggested trunks grid end date functionality
        :param actual_date:
        :return: True/False
        """
        is_compared = None
        try:
            self.logger.info('Start: compare suggested trunks grid end date')
            is_compared = self._route_page.compare_suggested_trunks_grid_end_date(actual_date)
        except WebDriverException as exp:
            is_compared = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare suggested trunks grid end date')
            return is_compared

    def click_suggested_trunks_cancel_changes_button(self):
        """
        Returning click suggested trunks cancel changes button
        Implementing logging for click suggested trunks cancel changes button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click suggested trunks cancel changes button')
            self._route_page.click_suggested_trunks_cancel_changes_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click suggested trunks cancel changes button')
            return is_clicked

    def is_available_worksheets_grid_not_present(self):
        """
        Returning is available worksheets grid not present
        Implementing logging for is available worksheets grid not present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is available worksheets grid not present')
            return self._route_page.is_available_worksheets_grid_not_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is available worksheets grid not present')

    def get_suggested_trunks_grid_first_row_data(self, column_name):
        """
        Returning get suggested trunks grid first row data
        Implementing logging for get suggested trunks grid first row data functionality
        :param column_name:
        :return: column_value
        """
        try:
            self.logger.info('Start: get suggested trunks grid first row data')
            return self._route_page.get_suggested_trunks_grid_first_row_data(column_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get suggested trunks grid first row data')

    def is_excluded_trunks_grid_not_present(self):
        """
        Returning is excluded trunks grid not present
        Implementing logging for is excluded trunks grid not present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is excluded trunks grid not present')
            return self._route_page.is_excluded_trunks_grid_not_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is excluded trunks grid not present')

    def is_csrm_grid_column_present(self, column_name):
        """
        Returning is csrm grid column present
        Implementing logging for is csrm grid column present functionality
        :param column_name:
        :return: True/False
        """
        try:
            self.logger.info('Start: is csrm grid column present')
            return self._route_page.is_csrm_grid_column_present(column_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is csrm grid column present')

    def is_route_guide_grid_column_present(self, column_name):
        """
        Returning is route guide grid column present
        Implementing logging for is route guide grid column present functionality
        :param column_name:
        :return: True/False
        """
        try:
            self.logger.info('Start: is route guide grid column present')
            return self._route_page.is_route_guide_grid_column_present(column_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is route guide grid column present')

    def set_route_guide_grid_override(self, override_rank):
        """
        Returning set route guide grid override
        Implementing logging for set route guide grid override functionality
        :param override_rank:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set route guide grid override')
            self._route_page.set_route_guide_grid_override(override_rank)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set route guide grid override')
            return is_set

    def set_route_guide_grid_end_date(self, end_date):
        """
        Returning set route guide grid end date
        Implementing logging for set route guide grid end date functionality
        :param end_date:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set route guide grid end date')
            self._route_page.set_route_guide_grid_end_date(end_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set route guide grid end date')
            return is_set

    def get_route_guide_grid_end_date(self):
        """
        Returning get route guide grid end date
        Implementing logging for get route guide grid end date functionality
        :return: end_date
        """
        end_date = None
        try:
            self.logger.info('Start: get route guide grid end date')
            end_date = self._route_page.get_route_guide_grid_end_date()
        except WebDriverException as exp:
            end_date = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get route guide grid end date')
            return end_date

    def is_specific_column_present_in_csrrg_grid(self, column_name):
        """
        Returning is specific column present in csrrg grid
        Implementing logging for is specific column present in csrrg grid functionality
        :param column_name:
        :return: True/False
        """
        try:
            self.logger.info('Start: is specific column present in csrrg grid')
            return self._route_page.is_specific_column_present_in_csrrg_grid(column_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is specific column present in csrrg grid')

    def click_csr_benchmarks_button(self):
        """
        Returning click csr benchmarks button
        Implementing logging for click csr benchmarks button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click csr benchmarks button')
            self._route_page.click_csr_benchmarks_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click csr benchmarks button')
            return is_clicked

    def is_minimum_mos_column_present_in_csr_benchmark_grid(self):
        """
        Returning is minimum mos column present in csr benchmark grid
        Implementing logging for is minimum mos column present in csr benchmark grid functionality
        :return: True/False
        """
        is_present = None
        try:
            self.logger.info('Start: is minimum mos column present in csr benchmark grid')
            is_present = self._route_page.is_minimum_mos_column_present_in_csr_benchmark_grid()
        except WebDriverException as exp:
            is_present = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is minimum mos column present in csr benchmark grid')
            return is_present

    def set_minimum_mos_value_into_csr_benchmark_grid_first_row(self, minimum_mos):
        """
        Returning set minimum mos value into csr benchmark grid first row
        Implementing logging for set minimum mos value into csr benchmark grid first row functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set minimum mos value into csr benchmark grid first row')
            self._route_page.set_minimum_mos_value_into_csr_benchmark_grid_first_row(minimum_mos)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set minimum mos value into csr benchmark grid first row')
            return is_set

    def click_csr_benchmark_grid_save_changes_button(self):
        """
        Returning click csr benchmark grid save changes button
        Implementing logging for click csr benchmark grid save changes button functionality
        :return:
        """
        is_clicked = None
        try:
            self.logger.info('Start: click csr benchmark grid save changes button')
            self._route_page.click_csr_benchmark_grid_save_changes_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click csr benchmark grid save changes button')
            return is_clicked

    def select_csr_benchmark_grid_multiple_rows(self, number_of_rows_to_select=2):
        """
        Returning select csr benchmark grid multiple rows
        Implementing logging for select csr benchmark grid multiple rows functionality
        :param number_of_rows_to_select:
        :return:
        """
        is_selected = None
        try:
            self.logger.info('Start: select csr benchmark grid multiple rows')
            self._route_page.select_csr_benchmark_grid_multiple_rows(number_of_rows_to_select)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select csr benchmark grid multiple rows')
            return is_selected

    def click_csr_benchmark_bulk_edit_button(self):
        """
        Returning click csr benchmark bulk edit button function
        Implementing logging for click csr benchmark bulk edit button function functionality
        :return:
        """
        is_clicked = None
        try:
            self.logger.info('Start: click csr benchmark bulk edit button function')
            self._route_page.click_csr_benchmark_bulk_edit_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click csr benchmark bulk edit button function')
            return is_clicked

    def set_minimum_mos_bulk_edit_value(self):
        """
        Returning set minimum mos bulk edit value
        Implementing logging for set minimum mos bulk edit value functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set minimum mos bulk edit value')
            self._route_page.set_minimum_mos_bulk_edit_value()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set minimum mos bulk edit value')
            return is_set

    def is_updated_value_persist_in_the_csr_benchmark_grid_after_bulk_edit(self):
        """
        Returning is updated value persist in the csr benchmark grid after bulk edit
        Implementing logging for is updated value persist in the csr benchmark grid after bulk edit functionality
        :return: True/False
        """
        status = None
        try:
            self.logger.info('Start: is updated value persist in the csr benchmark grid after bulk edit')
            status = self._route_page.is_updated_value_persist_in_the_csr_benchmark_grid_after_bulk_edit()
        except WebDriverException as exp:
            status = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is updated value persist in the csr benchmark grid after bulk edit')
            return status

    def filter_customer_specific_routing_grid_alerts_column(self, *filter_item_list):
        """
        Returning filter customer specific routing grid alerts column
        Implementing logging for filter customer specific routing grid alerts column functionality
        :param filter_item_list:
        :return: True/False
        """
        is_filtered = None
        try:
            self.logger.info('Start: filter customer specific routing grid alerts column')
            self._route_page.filter_customer_specific_routing_grid_alerts_column(filter_item_list)
            is_filtered = True
        except WebDriverException as exp:
            is_filtered = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: filter customer specific routing grid alerts column')
            return is_filtered

    def is_specific_column_present_in_csrm_grid(self, column_name):
        """
        Returning is specific column present in csrm grid
        Implementing logging for is specific column present in csrm grid functionality
        :param column_name:
        :return: True/False
        """
        try:
            self.logger.info('Start: is specific column present in csrm grid')
            return self._route_page.is_specific_column_present_in_csrm_grid(column_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is specific column present in csrm grid')

    def select_csrm_grid_first_row_checkbox(self):
        """
        Returning select csrm grid first row checkbox
        Implementing logging for select csrm grid first row checkbox functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select csrm grid first row checkbox')
            self._route_page.select_csrm_grid_first_row_checkbox()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select csrm grid first row checkbox')
            return is_selected

    def is_new_customer_route_guide_pop_up_present(self):
        """
        Returning is new customer route guide pop up present
        Implementing logging for is new customer route guide pop up present functionality
        :return: True/False
        """
        is_present = None
        try:
            self.logger.info('Start: is new customer route guide pop up present')
            is_present = self._route_page.is_new_customer_route_guide_pop_up_present()
        except WebDriverException as exp:
            is_present = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is new customer route guide pop up present')
            return is_present

    def is_benchmark_management_margin_grid_empty(self):
        """
        Returning is benchmark management margin grid empty
        Implementing logging for is benchmark management margin grid empty functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is benchmark management margin grid empty')
            return self._route_page.is_benchmark_management_margin_grid_empty()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is benchmark management margin grid empty')

    def click_first_row_of_benchmark_management_margin_first_grid(self):
        """
        Returning click first row of benchmark management margin first grid
        Implementing logging for click first row of benchmark management margin first grid functionality
        :return:
        """
        is_clicked = None
        try:
            self.logger.info('Start: click first row of benchmark management margin first grid')
            self._route_page.click_first_row_of_benchmark_management_margin_first_grid()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click first row of benchmark management margin first grid')
            return is_clicked

    def is_ajax_spinner_load_present(self):
        """
        Returning is ajax spinner load present
        Implementing logging for is ajax spinner load present functionality
        :return: True/False
        """
        is_present = None
        try:
            self.logger.info('Start: is ajax spinner load present')
            is_present = self._route_page.is_ajax_spinner_load_present()
        except WebDriverException as exp:
            is_present = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is ajax spinner load present')
            return is_present

    def click_first_row_of_benchmark_management_max_route_commercial_first_grid(self):
        """
        Returning click first row of benchmark management max route commercial first grid
        Implementing logging for click first row of benchmark management max route commercial first grid functionality
        :return:
        """
        is_clicked = None
        try:
            self.logger.info('Start: click first row of benchmark management max route commercial first grid')
            self._route_page.click_first_row_of_benchmark_management_max_route_commercial_first_grid()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click first row of benchmark management max route commercial first grid')
            return is_clicked

    def select_bulk_test_call_tab(self):
        """
        Returning select bulk test call tab
        Implementing logging for select bulk test call tab functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select bulk test call tab')
            self._route_page.select_bulk_test_call_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select bulk test call tab')
            return is_selected

    def set_message_delivered_in_grid(self, dropdown_value):
        """
        Returning set message delivered in grid
        Implementing logging for set message delivered in grid functionality
        :param dropdown_value:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set message delivered in grid')
            self._route_page.set_message_delivered_in_grid(dropdown_value)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set message delivered in grid')
            return is_set

    def is_ajax_spinner_load_not_present(self):
        """
        Returning is ajax spinner load not present
        Implementing logging for is ajax spinner load not present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is ajax spinner load not present')
            return self._route_page.is_ajax_spinner_load_not_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is ajax spinner load not present')

    def set_message_delivered_in_grid_with_opposite_of_selected_value(self):
        """
        Returning set message delivered in grid with opposite of selected value
        Implementing logging for set message delivered in grid with opposite of selected value functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set message delivered in grid with opposite of selected value')
            self._route_page.set_message_delivered_in_grid_with_opposite_of_selected_value()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set message delivered in grid with opposite of selected value')
            return is_set

    def click_bulk_test_call_save_changes_button(self):
        """
        Returning click bulk test call save changes button
        Implementing logging for click bulk test call save changes button functionality
        :return:
        """
        is_clicked = None
        try:
            self.logger.info('Start: click bulk test call save changes button')
            self._route_page.click_bulk_test_call_save_changes_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click bulk test call save changes button')
            return is_clicked
