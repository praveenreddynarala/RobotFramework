"""
Implementing Price UI page actions
Implementing Logging mechanism for Price page actions
"""

from selenium.common.exceptions import WebDriverException
from TestFramework.Libraries.logger import Logger
from TestFramework.Libraries.Pages.price_page import PricePage


class Price:
    """
    Returning switch to price
    Returning price page title
    Returning price dashboard tab status
    Returning cost policies tab status
    Returning price policies tab status
    Returning country groups link status
    Returning create customer price list link status
    Returning generate reference prices link status
    Returning review customer price exception requests link status
    Returning select cost policies tab
    Returning create new cost policy status
    Returning formulas status
    Returning user defined parameters status
    Returning costs status
    Returning click formulas button
    Returning click cost forecast elements reports button
    Returning click cost forecast report submit button
    Returning verify cost forecast report page header
    Returning grid filter details
    Returning click price page inline action button
    Returning select price page inline action item
    Returning verify cost policy details status
    Returning click formulas page inline action button
    Returning select cost policies formulas grid row checkbox
    Returning set cost formula
    Returning click formula save button
    Returning verify edited formula status
    Returning click deleted formulas button
    Returning set note for edit formula
    Returning click costs button
    Returning select multiple rows from cost policies costs grid
    Returning click bulk edit button
    Returning click bulk edit submit button
    Returning set future date at end date
    Returning click user defined parameters button
    Returning click user defined parameters page header
    Returning set first row value column
    Returning set first row description column
    Returning set first row end date column
    Returning click save changes button
    Returning verify updated description
    Returning filter user defined parameters grid with unique description
    Returning get updated value
    Returning get updated end date
    Returning select cost policy for copy formulas
    Returning select cost policy for copy formulas functionality
    Returning click formulas page search button functionality
    Returning click copy formulas button functionality
    Returning check new start and end date radio button functionality
    Returning set new start date functionality
    Returning set new end date functionality
    Returning select cost policies from available policies functionality
    Returning click next button functionality
    Returning click copy cost formulas save button functionality
    Returning set cost policy
    Returning click search button
    Returning click create new cost policy formula dropdown
    Returning create destination formula status
    Returning create global formula status
    Returning create category formula status
    Returning click create destination formula
    Returning click create global formula
    Returning click create category formula
    Returning set destination of formula pop up
    Returning set rate type
    Returning set begin date
    Returning set select date
    Returning set category of formula pop up
    Returning click calculate button
    Returning click create button
    Returning filter cost policies formulas grid note column
    Returning clear filter of cost policies grid
    Returning get cost policies formulas grid row details
    Returning click create new cost policy button
    Returning set cost policy name
    Returning set cost policy abbreviation
    Returning set cost policy status
    Returning set cost policy type
    Returning set cost policy call type
    Returning set cost policy route class
    Returning click create cost policy save button
    Returning click cost policy grid inline action button
    Returning click edit cost policy button
    Returning edit cost policy status
    Returning click save cost policy button
    Returning is cost policy status inactive
    Returning get cost policy details from database
    Returning get cost policy status from database
    Returning select price policies tab
    Returning set price policy
    Returning set formula target
    Returning set formula minimum
    Returning set formula cost
    Returning get price policies formulas grid row details
    Returning click policies formulas grid inline action button
    Returning select item from inline action
    Returning click save button for edit
    Returning grid filter formulas with notes
    Returning get price policy details from database
    Returning get price policy status from database
    Returning click price overrides button
    Returning select price overrides grid row checkbox
    Returning click price overrides bulk edit button
    Returning set price overrides bulk edit end date
    Returning click review customer price exceptions request
    Returning review customer price exception requests page loading status
    Returning click price policy grid inline action button
    Returning view price policy page loading status
    Returning move available policies to destination
    Returning click second page next button
    Returning click create new user defined parameter button
    Returning click price policy user defined parameters page header
    Returning set value for create new user defined parameters
    Returning set price policy for create user defined parameter
    Returning set parameter for new user defined parameters
    Returning set description for new user defined parameters
    Returning edit end date for new user defined parameter
    Returning set start date for new user defined parameter
    Returning click generate reference prices button
    Returning select reference price policies
    Returning select available destinations
    Returning click generate reference prices submit button
    Returning select user defined parameters grid row checkbox
    Returning click copy parameter button
    Returning click reference prices button
    Returning select status for reference prices search
    Returning click reference prices search button
    Returning set status for reference prices
    Returning click reference prices save changes button
    Returning click reference prices bulk edit button
    Returning select reference prices grid multiple rows
    Returning set note for bulk edit
    Returning click costs page search button
    Returning click upload costs button
    Returning set cost policy for upload
    Returning click costs browse button
    Returning click completed status green button
    Returning get completed jobs count
    Returning select the file to be uploaded
    Returning click upload button
    Returning compare completed jobs count after upload
    Returning select price overrides tab
    Returning click upload price overrides button
    Returning click price overrides completed status green button
    Returning reference prices page loading status
    Returning reference prices total number of records returning status
    Returning set status
    Returning click price exceptions search button
    Returning set costs number plan
    Returning click cost policy grid first row inline action button
    Returning get cost policy last modified date
    Returning validate date format
    Returning validate currency format
    Returning select formulas tab
    Returning get cost policy formula select date
    Returning get formula begin date
    Returning close create cost policy destination formula screen
    Returning get formulas grid formula column value
    Returning select user defined parameters tab
    Returning get user defined parameter select date
    Returning get user defined parameter grid value column value
    Returning get user defined parameter grid start date column value
    Returning select costs tab status
    Returning get costs tab select date value
    Returning get costs tab select date value
    Returning click cost upload link
    Returning get registry from date value
    Returning get registry to date value
    Returning get reg date time column value
    Returning get process begin date time column value
    Returning get process begin date time column value
    Returning get price policy formulas grid begin date column value
    Returning get price policy formulas grid end date column value
    Returning get value column value from user defined parameters grid
    Returning get start date column value from user defined parameters grid
    Returning get price overrides grid target price column value
    Returning get price overrides grid start column value
    Returning get price overrides grid end column value
    Returning select price dashboard tab
    Returning get compound reference price list grid modified date column value
    Returning click customer price list link
    Returning close price window
    Returning click price exceptions grid first row inline action button
    Returning select pricing exception approve inline action button
    Returning set value in start date column for user defined parameters
    Returning set value in end date column for user defined parameters
    Returning set value in cost policy column
    Returning filter price policies grid price policy column
    Returning select price policies grid row checkbox
    Returning select price policies formulas grid row checkbox
    Returning view cost policy page loading status
    Returning compare price reference prices count after create
    Returning get available reference prices count
    Returning compare jobs count after job completed
    Returning set cost policy formulas grid settings
    Returning get all rows of specific column from cost policy formulas grid
    Returning sort cost policy formulas grid column
    Returning get cost policy formulas grid column names by order
    Returning drag cost policy formulas grid column
    Returning click cost policy formulas grid export to excel button
    Returning set cost policies user defined parameters grid settings
    Returning get all rows of specific column from cost policies user defined parameters grid
    Returning sort cost policy user defined parameters grid column 
    Returning get cost policies user defined parameters grid column names by order
    Returning drag cost policies user defined parameters grid column
    Returning click cost policies user defined parameters grid export to excel button
    Returning set cost policies costs grid settings
    Returning get all rows of specific column from cost policies costs grid
    Returning sort cost policy costs grid column 
    Returning get cost policies costs grid column names by order
    Returning drag cost policies costs grid column
    Returning click cost policies costs grid export to excel button
    Returning set reference prices grid settings
    Returning get all rows of specific column from reference prices grid
    Returning sort reference prices grid column
    Returning get reference prices grid column names by order
    Returning drag reference prices grid column
    Returning click reference prices grid export to excel button
    Returning compare grid column position after altering for reference prices
    Returning set price policies udp grid settings
    Returning get all rows of specific column from price policies udp grid
    Returning sort price policies udp grid column
    Returning get price policies udp grid column names by order
    Returning drag price policies udp grid column
    Returning click price policies udp grid export to excel button
    Returning set compound reference price list
    Returning compare compound reference price list grid first row data
    Returning set compound rpl begin date
    Returning Click origin reference price list link
    Returning Set origin reference price list
    Returning Click add new origin rpl button
    Returning Set add new origin rpl destination
    Returning Set add new origin rpl origin set
    Returning Set add new origin rpl rating method
    Returning Click add new origin rpl page search button
    Returning Set add new origin rpl rate values
    Returning Select origin reference price list grid row checkbox
    Returning Click origin rpl delete button
    Returning Click save origin rpl save button
    Returning select cost policies grid first row checkbox
    Returning is cost policy preselected
    Returning is cost policy preselected in upload costs
    Returning is apply custom rules present
    Returning click reference prices save changes button without custom rule
    Returning click custom rule yes radio button
    Returning set begin date with future date
    Returning set cost forecast report route class
    Returning set cost forecast report call type
    Returning set cost forecast report routing destination
    Returning get cost forecast report parameters text
    Returning click country groups link
    Returning click create country group button
    Returning set country group scope
    Returning set wholesale solution type
    Returning set country group
    Returning move available countries to destination
    Returning click create country group save button
    Returning get created country group name
    Returning filter country group management grid column
    Returning select country group management grid first row checkbox
    Returning click country group management delete button
    Returning is the created country group deleted
    Returning set generation type
    Returning is reference prices grid first row status approved
    Returning get completed status green button jobs count
    Returning compare completed status green button jobs count after upload
    Returning get failed status red button jobs count
    Returning compare failed status red button jobs count after upload
    Returning click price override browse button
    Returning click price override upload button
    Returning click price policy grid first row checkbox
    Returning get completed status green button jobs count
    Returning compare completed status green button jobs count after upload
    Returning get failed status red button jobs count
    Returning compare failed status red button jobs count after upload
    Returning is specific system parameter for create destination formula present
    Returning close current pop up
    Returning click generate reference prices link
    Returning is specific reference price policy present in the source
    Returning is specific destination present in the source
    Returning is specific reference price policy not present in the source
    Returning is specific destination not present in the source
    Returning is expected country loaded in country column
    Returning click country group management grid inline action button
    Returning is country group scope dropdown control disabled
    Returning is wholeslae solution type kendo dropdown control disabled
    Returning is assigned country present
    Returning unassign all country
    Returning click country group selection checkbox
    Returning set country group management grid settings
    Returning sort country group management grid column
    Returning get all rows of specific column from country group management grid
    Returning click country group management grid export to excel button
    Returning select country group grid inline item
    Returning get available country
    Returning clear country group grid column filter
    Returning set display grid
    Returning click cancel button
    Returning get cost elements grid cost element column values
    Returning get cost elements grid value column values
    Returning filter cost forecast reports grid column
    Returning set cost forecast elements report routing destination
    Returning get cost forecast element reports grid row details
    Returning click price exceptions import button
    Returning get completed status green button jobs count for price exception request
    Returning compare completed status green button jobs count after upload for price exception request
    Returning click price exception request upload button
    Returning is price exception request export button present
    Returning click failed status red button
    Returning click failed upload info icon
    Returning compare failed upload info
    Returning sort jobs grid column
    Returning set jobs grid settings
    Returning select cost policy formula grid multiple rows
    Returning is country selection criteria field present in crpl page
    Returning is country column present in crpl page
    Returning is country selection criteria field present in orpl page
    Returning is country column present in orpl page
    Returning is country selection criteria field present in rcper page
    Returning is country column present in rcper page
    Returning is country selection criteria field present in costs page
    Returning is country column present in costs page
    Returning is country selection criteria field present in price override page
    Returning is country column present in price override page
    Returning is country selection criteria field present in reference prices page
    Returning is country column present in reference prices page
    Returning is ccpmr each call text present in info column
    Returning get price policy formulas grid formula column value
    Returning is reference prices cost and routing section loaded
    Returning verify pricing policies reference prices grid headers
    Returning is route class kendo dropdown present
    Returning verify cost elements grid columns header
    Returning verify routing guide links grid columns header
    Returning click reference prices grid first row inline action button
    Returning is route guide with sell rates report inline item present
    Returning is route guide with sell rates report pop up present
    Returning is ccpmr cost per message text present in info column
    Returning are job notifiers displayed at generate reference prices screen
    Returning get cost upload all job notification status
    Returning is by default specific generation type present
    Returning set origin reference price list bulk edit end date
    Returning Compare End Date Column Value in Origin Reference Price List Grid
    Returning select create destination formula system parameters tab
    Returning select user defined parameters grid first row checkbox
    Returning is specific tab present in view pricing exception details pop up
    Returning get cost policies grid first row cost policy name
    Returning get upload costs cost policy field value
    Returning click upload costs cancel button
    Returning select cost policies grid multiple row checkbox
    Returning is cost forecast elements grid description correct
    Returning is review customer price exception requests search grid present
    Returning is specific filter option present in price reference prices page
    Returning select price policy for reference prices search
    Returning set reference prices destination
    Returning select country for reference prices search
    Returning select trade destination category for reference prices search
    Returning select region for reference prices search
    Returning compare only failed status red button jobs count
    Returning filter origin reference price list grid column
    Returning click origin reference price list grid inline action button
    Returning is specific dropdown disabled
    Returning select orpl grid inline item
    Returning is cost formula grid first row checkbox checked
    Returning is price policy udp grid first row checkbox checked
    Returning click document tab on pricing exception page
    Returning is delete button present in view pricing exception details page
    Returning is upload document button present in view pricing exception details page
    Returning is country column present in review pricing exception documents tab
    Returning click rgwsrr tab on pricing exception page
    Returning is country column present in review pricing exception rgwsrr tab
    Returning click exception request export button
    Returning click exception request browse button
    Returning is view reference price details inline item present
    Returning is view reference price details pop up present
    Returning is reference price list section present
    """
    ROBOT_LIBRARY_SCOPE = 'TEST SUITE'

    logger = Logger().get_logger('Price')

    def __init__(self):
        self._price_page = PricePage()

    def switch_to_price(self):
        """
        Returning switch to price
        Implementing logging for switch to price functionality
        :return:
        """
        is_switched = None
        try:
            self.logger.info('Start: switch to price method')
            self._price_page.switch_to_price()
            is_switched = True
        except WebDriverException as exp:
            is_switched = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: switch to price method')
            return is_switched

    def get_price_page_title(self):
        """
        Returning price page title
        Implementing logging for get price page title functionality
        :return: Price page title
        """
        try:
            self.logger.info('Start: get price page title')
            return self._price_page.get_price_page_title()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get price page title')

    def is_price_dashboard_tab_present(self):
        """
        Returning price dashboard tab status
        Implementing logging for is price dashboard tab present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is price dashboard tab present')
            return self._price_page.is_price_dashboard_tab_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is price dashboard tab present')

    def is_cost_policies_tab_present(self):
        """
        Returning cost policies tab status
        Implementing logging for is cost policies tab present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is cost policies tab present')
            return self._price_page.is_cost_policies_tab_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is cost policies tab present')

    def is_price_policies_tab_present(self):
        """
        Returning price policies tab status
        Implementing logging for is price policies tab present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is price_policies tab present')
            return self._price_page.is_price_policies_tab_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is price_policies tab present')

    def is_country_groups_link_present(self):
        """
        Returning country groups link status
        Implementing logging for is country groups link present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is country groups link present')
            return self._price_page.is_country_groups_link_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is country groups link present')

    def is_create_customer_price_list_link_present(self):
        """
        Returning create customer price list link status
        Implementing logging for is create customer price list link present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is create customer price list link present')
            return self._price_page.is_create_customer_price_list_link_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is create customer price list link present')

    def is_generate_reference_prices_link_present(self):
        """
        Returning generate reference prices link status
        Implementing logging for is generate reference prices link present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is generate reference prices link present')
            return self._price_page.is_generate_reference_prices_link_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is generate reference prices link present')

    def is_review_customer_price_exception_requests_link_present(self):
        """
        Returning review customer price exception requests link status
        Implementing logging for is review customer price exception requests link present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is review customer price exception requests link present')
            return self._price_page.is_review_customer_price_exception_requests_link_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is review customer price exception requests link present')

    def select_cost_policies_tab(self):
        """
        Returning select cost policies tab
        Implementing logging for select cost policies tab functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select cost policies tab')
            self._price_page.select_cost_policies_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select cost policies tab')
            return is_selected

    def is_create_new_cost_policy_present(self):
        """
        Returning create new cost policy status
        Implementing logging for is create new cost policy present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is create new cost policy link present')
            return self._price_page.is_create_new_cost_policy_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is create new cost policy link present')

    def is_formulas_present(self):
        """
        Returning formulas status
        Implementing logging for is formulas present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is formulas link present')
            return self._price_page.is_formulas_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is formulas link present')

    def is_user_defined_parameters_present(self):
        """
        Returning user defined parameters status
        Implementing logging for is user defined parameters present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is user defined parameters link present')
            return self._price_page.is_user_defined_parameters_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is user defined parameters link present')

    def is_costs_present(self):
        """
        Returning costs status
        Implementing logging for is costs present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is costs link present')
            return self._price_page.is_costs_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is costs link present')

    def click_formulas_button(self):
        """
        Returning click formulas button
        Implementing logging for click formulas button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click formulas button')
            self._price_page.click_formulas_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click formulas button')
            return is_clicked

    def click_cost_forecast_elements_reports_button(self):
        """
        Returning click cost forecast elements reports button
        Implementing logging for click cost forecast elements reports button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click cost forecast elements reports button')
            self._price_page.click_cost_forecast_elements_reports_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click cost forecast elements reports button')
            return is_clicked

    def click_cost_forecast_report_submit_button(self):
        """
        Returning click cost forecast report submit button
        Implementing logging for click cost forecast report submit button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click cost forecast report submit button')
            self._price_page.click_cost_forecast_report_submit_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click cost forecast report submit button')
            return is_clicked

    def verify_cost_forecast_report_page_header(self):
        """
        Returning cost forecast report page header verification status
        Implementing logging for verify cost forecast report page header functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: verify cost forecast report page header')
            return self._price_page.verify_cost_forecast_report_page_header()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: verify cost forecast report page header')

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
            self._price_page.grid_filter_details(column_name, filter_item_list)
            is_filtered = True
        except WebDriverException as exp:
            is_filtered = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: grid filter details')
            return is_filtered

    def click_price_page_inline_action_button(self, cost_policy):
        """
        Returning click price page inline action button
        Implementing logging for click price page inline action button functionality
        :param cost_policy:
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click price page inline action button')
            self._price_page.click_price_page_inline_action_button(cost_policy)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click price page inline action button')
            return is_clicked

    def select_price_page_inline_action_item(self, item_name):
        """
        Returning select price page inline action item
        Implementing logging for select price page inline action item functionality
        :param item_name: inline item
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select price page inline action item')
            self._price_page.select_inline_action_item(item_name)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select price page inline action item')
            return is_selected

    def verify_cost_policy_details(self, cost_policy):
        """
        Returning verify cost policy details status
        Implementing logging for verify cost policy details functionality
        :param cost_policy:
        :return: True/False
        """
        try:
            self.logger.info('Start: verify cost policy details')
            return self._price_page.verify_cost_policy_details(cost_policy)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: verify cost policy details')

    def click_formulas_page_inline_action_button(self):
        """
        Returning click formulas page inline action button
        Implementing logging for click formulas page inline action button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click formulas page inline action button')
            self._price_page.click_formulas_page_inline_action_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click formulas page inline action button')
            return is_clicked

    def select_cost_policies_formulas_grid_row_checkbox(self, *list_of_cost_policy):
        """
        Returning select cost policies formulas grid row checkbox
        Implement logging for select cost policies formulas grid row checkbox functionality
        :param list_of_cost_policy:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select cost policies formulas grid row checkbox')
            self._price_page.select_cost_policies_formulas_grid_row_checkbox(list_of_cost_policy)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select cost policies formulas grid row checkbox')
            return is_selected

    def set_cost_formula(self, cost_formula_value):
        """
        Returning set cost formula
        Implement logging for set cost formula
        :param cost_formula_value:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set cost formula')
            self._price_page.set_cost_formula(cost_formula_value)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set cost formula')
            return is_set

    def click_formula_save_button(self):
        """
        Returning click formula save button
        Implement logging for click formula save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click formula save button')
            self._price_page.click_formula_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click formula save button')
            return is_clicked

    def verify_edited_formula(self, edited_formula_value):
        """
        Returning verify edited formula status
        Implement logging for verify edited formula functionality
        :param edited_formula_value:
        :return: True/False
        """
        try:
            self.logger.info('Start: verify edited formula')
            return self._price_page.verify_edited_formula(edited_formula_value)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: verify edited formula')

    def click_delete_formulas_button(self):
        """
        Returning click delete formulas button
        Implement logging for click delete formulas button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click delete formulas button')
            self._price_page.click_delete_formulas_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click delete formulas button')
            return is_clicked

    def set_note_for_edit_formula(self):
        """
        Returning set note for edit formula
        Implement logging for set note for edit formula functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set note for edit formula')
            self._price_page.set_note_for_edit_formula()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set note for edit formula')
            return is_set

    def set_cost_policy(self, *list_of_cost_policy):
        """
        Returning set cost policy
        Implement logging for set cost policy functionality
        :param list_of_cost_policy:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set cost policy')
            if len(list_of_cost_policy) > 0:
                self._price_page.set_cost_policy(list_of_cost_policy)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set cost policy')
            return is_set

    def click_search_button(self):
        """
        Returning click search button
        Implement logging for click search button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click search button')
            self._price_page.click_search_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click search button')
            return is_clicked

    def click_create_new_cost_policy_formula_dropdown(self):
        """
        Returning click create new cost policy formula dropdown
        Implement logging for click create new cost policy formula dropdown functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click create new cost policy formula dropdown')
            self._price_page.click_create_new_cost_policy_formula_dropdown()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click create new cost policy formula dropdown')
            return is_clicked

    def is_create_destination_formula_present(self):
        """
        Returning create destination formula status
        Implementing logging for is create destination formula present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is create destination formula present')
            return self._price_page.is_create_destination_formula_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is create destination formula present')

    def is_create_global_formula_present(self):
        """
        Returning create global formula status
        Implementing logging for is create global formula present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is create global formula present')
            return self._price_page.is_create_global_formula_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is create global formula present')

    def is_create_category_formula_present(self):
        """
        Returning create category formula status
        Implementing logging for is create category formula present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is create category formula present')
            return self._price_page.is_create_category_formula_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is create category formula present')

    def click_create_destination_formula(self):
        """
        Returning click create destination formula
        Implement logging for click create destination formula functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click create destination formula')
            self._price_page.click_create_destination_formula()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click create destination formula')
            return is_clicked

    def click_create_global_formula(self):
        """
        Returning click create global formula
        Implement logging for click create global formula functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click create global formula')
            self._price_page.click_create_global_formula()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click create global formula')
            return is_clicked

    def click_create_category_formula(self):
        """
        Returning click create category formula
        Implement logging for click create category formula functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click create category formula')
            self._price_page.click_create_category_formula()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click create category formula')
            return is_clicked

    def set_destination_of_formula_pop_up(self, destination):
        """
        Returning set destination of formula pop up
        Implement logging for set destination of formula pop up functionality
        :param destination:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set destination of formula pop up')
            if destination != "":
                self._price_page.set_destination_of_formula_pop_up(destination)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set destination of formula pop up')
            return is_set

    def set_rate_type(self, rate_type):
        """
        Returning set rate type
        Implement logging for set rate type functionality
        :param rate_type:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set rate type')
            if rate_type != "":
                self._price_page.set_rate_type(rate_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set rate type')
            return is_set

    def set_begin_date(self, begin_date):
        """
        Returning set begin date
        Implement logging for set begin date functionality
        :param begin_date:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set begin date')
            if begin_date != "":
                self._price_page.set_begin_date(begin_date)
            else:
                self._price_page.set_begin_date(self._price_page.get_current_date())
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set begin date')
            return is_set

    def set_select_date(self, select_date):
        """
        Returning set select date
        Implement logging for set select date functionality
        :param select_date:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set select date')
            if select_date != "":
                self._price_page.set_select_date(select_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set select date')
            return is_set

    def set_category_of_formula_pop_up(self, category):
        """
        Returning set category of formula pop up
        Implement logging for set category of formula pop up functionality
        :param category:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set category of formula pop up')
            if category != "":
                self._price_page.set_category_of_formula_pop_up(category)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set category of formula pop up')
            return is_set

    def click_calculate_button(self):
        """
        Returning click calculate button
        Implement logging for click calculate button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click calculate button')
            self._price_page.click_calculate_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click calculate button')
            return is_clicked

    def click_create_button(self):
        """
        Returning click create button
        Implement logging for click create button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click create button')
            self._price_page.click_create_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click create button')
            return is_clicked

    def filter_cost_policies_formulas_grid_notes_column(self):
        """
        Returning filter cost policies formulas grid
        Implement logging for filter cost policies formulas grid functionality
        :return: True/False
        """
        is_filtered = None
        try:
            self.logger.info('Start: filter cost policies formulas grid')
            self._price_page.filter_cost_policies_formulas_grid_notes_column()
            is_filtered = True
        except WebDriverException as exp:
            is_filtered = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: filter cost policies formulas grid')
            return is_filtered

    def clear_filter_of_cost_policies_grid(self, column_name):
        """
        Returning clear filter of cost policies grid
        Implement logging for clear filter of cost policies grid functionality
        :param column_name:
        :return: True/False
        """
        is_cleared = None
        try:
            self.logger.info('Start: clear filter of cost policies grid')
            self._price_page.clear_filter_of_cost_policies_grid(column_name)
            is_cleared = True
        except WebDriverException as exp:
            is_cleared = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: clear filter of cost policies grid')
            return is_cleared

    def get_cost_policies_formulas_grid_row_details(self):
        """
        Returning get cost policies formulas grid row details
        Implementing logging for get cost policies formulas grid row details functionality
        :return: grid_row_data
        """
        try:
            self.logger.info('Start: get cost policies formulas grid row details')
            return self._price_page.get_cost_policies_formulas_grid_row_details()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get cost policies formulas grid row details')

    def click_costs_button(self):
        """
        Returning click costs button
        Implementing logging for click costs button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click costs button')
            self._price_page.click_costs_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click costs button')
            return is_clicked

    def select_multiple_rows_from_cost_policies_costs_grid(self):
        """
        Returning select multiple rows from cost policies costs grid
        Implementing logging for select multiple rows from cost policies costs grid functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select multiple rows from cost policies costs grid')
            self._price_page.select_multiple_rows_from_cost_policies_costs_grid()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select multiple rows from cost policies costs grid')
            return is_selected

    def click_bulk_edit_button(self):
        """
        Returning click bulk edit button
        Implementing logging for click bulk edit button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click bulk edit button')
            self._price_page.click_bulk_edit_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click bulk edit button')
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
            self._price_page.click_bulk_edit_submit_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click bulk edit submit button')
            return is_clicked

    def set_future_date_at_end_date(self):
        """
        Returning set future date at end date
        Implement logging for set future date at end date functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set future date at end date')
            self._price_page.set_future_date_at_end_date()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set future date at end date')
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
            self._price_page.click_save_changes_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click save changes button')
            return is_clicked

    def click_user_defined_parameters_button(self):
        """
        Returning click user defined parameters button
        Implement logging for click user defined parameters button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click user defined parameters button')
            self._price_page.click_user_defined_parameters_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click user defined parameters button')
            return is_clicked

    def set_value_in_value_column(self, value):
        """
        Returning set value in value column
        Implement logging for set value in value column functionality
        :param value:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set value in value column')
            self._price_page.set_value_in_value_column(value)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set value in value column')
            return is_set

    def set_value_in_description_column(self, description_prefix):
        """
        Returning set value in description column
        Implement logging for set value in description column functionality
        :param description_prefix:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set value in description column')
            self._price_page.set_value_in_description_column(description_prefix)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set value in description column')
            return is_set

    def set_value_in_end_date_column(self, end_date):
        """
        Returning set value in end date column
        Implement logging for set value in end date column functionality
        :param end_date:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set value in end date column')
            self._price_page.set_value_in_end_date_column(end_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set value in end date column')
            return is_set

    def verify_updated_description(self):
        """
        Returning verify updated description
        Implement logging for verify updated description functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: verify updated description')
            return self._price_page.verify_updated_description()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: verify updated description')

    def filter_user_defined_parameters_grid_with_unique_description(self):
        """
        Returning filter user defined parameters grid with unique description functionality
        Implement logging for filter user defined parameters grid with unique description functionality functionality
        :return: True/False
        """
        is_filtered = None
        try:
            self.logger.info('Start: filter user defined parameters grid with unique description functionality')
            self._price_page.filter_user_defined_parameters_grid_with_unique_description()
            is_filtered = True
        except WebDriverException as exp:
            is_filtered = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: filter user defined parameters grid with unique description functionality')
            return is_filtered

    def get_updated_value(self):
        """
        Returning get updated value
        Implement logging for get updated value functionality
        :return: updated value
        """
        try:
            self.logger.info('Start: get updated value')
            return self._price_page.get_updated_value()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get updated value')

    def get_updated_end_date(self):
        """
        Returning get updated end date
        Implement logging for get updated end date functionality
        :return: updated end date
        """
        try:
            self.logger.info('Start: get updated end date')
            return self._price_page.get_updated_end_date()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get updated end date')

    def select_cost_policy_for_copy_formulas(self, *cost_policy_list):
        """
        Returning select cost policy for copy formulas
        Implement logging for select cost policy for copy formulas functionality
        :param cost_policy_list:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select cost policy for copy formulas')
            self._price_page.select_cost_policy_for_copy_formulas(cost_policy_list)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select cost policy for copy formulas')
            return is_selected

    def click_formulas_page_search_button(self):
        """
        Returning click formulas page search button
        Implement logging for click formulas page search button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click formulas page search button')
            self._price_page.click_formulas_page_search_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click formulas page search button')
            return is_clicked

    def click_copy_formulas_button(self):
        """
        Returning click copy formulas button
        Implement logging for click copy formulas button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click copy formulas button')
            self._price_page.click_copy_formulas_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click copy formulas button')
            return is_clicked

    def check_new_start_and_end_date_radio_button(self):
        """
        Returning check new start and end date radio button
        Implement logging for check new start and end date radio button functionality
        :return: True/False
        """
        is_checked = None
        try:
            self.logger.info('Start: check new start and end date radio button')
            self._price_page.check_new_start_and_end_date_radio_button()
            is_checked = True
        except WebDriverException as exp:
            is_checked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: check new start and end date radio button')
            return is_checked

    def set_new_start_date(self, date):
        """
        Returning set new start date
        Implement logging for set new start date functionality
        :param: date:
        :return: True/False
        """
        is_date_set = None
        try:
            self.logger.info('Start: set new start date')
            self._price_page.set_new_start_date(date)
            is_date_set = True
        except WebDriverException as exp:
            is_date_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set new start date')
            return is_date_set

    def set_new_end_date(self):
        """
        Returning set new end date
        Implement logging for set new end date functionality
        :return: True/False
        """
        is_date_set = None
        try:
            self.logger.info('Start: set new end date')
            self._price_page.set_new_end_date()
            is_date_set = True
        except WebDriverException as exp:
            is_date_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set new end date')
            return is_date_set

    def select_cost_policies_from_available_policies(self, *cost_policy_list):
        """
        Returning select cost policies from available policies
        Implementing logging for select cost policies from available policies functionality
        :param cost_policy_list:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select cost policies from available policies')
            self._price_page.select_cost_policies_from_available_policies(cost_policy_list)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select cost policies from available policies')
            return is_selected

    def click_next_button(self):
        """
        Returning click next button
        Implementing logging for click next button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click next button')
            self._price_page.click_next_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click next button')
            return is_clicked

    def click_copy_cost_formulas_save_button(self):
        """
        Returning click copy cost formulas save button
        Implementing logging for click copy cost formulas save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click copy cost formulas save button')
            self._price_page.click_copy_cost_formulas_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click copy cost formulas save button')
            return is_clicked

    def grid_filter_formulas_with_notes(self):
        """
        Returning grid filter formulas with notes
        Implementing logging for grid filter formulas with note functionality
        """
        is_filtered = None
        try:
            self.logger.info('Start: grid filter formulas with notes')
            self._price_page.grid_filter_formulas_with_notes()
            is_filtered = True
        except WebDriverException as exp:
            is_filtered = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: grid filter formulas with notes')
            return is_filtered

    def select_price_policies_tab(self):
        """
        Returning select price policies tab
        Implementing logging for select price policies tab functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select price policies tab')
            self._price_page.select_price_policies_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select price policies tab')
            return is_selected

    def set_price_policy(self, *list_of_price_policy):
        """
        Returning set price policy
        Implement logging for set price policy functionality
        :param list_of_price_policy:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set price policy')
            if len(list_of_price_policy) > 0:
                self._price_page.set_price_policy(list_of_price_policy)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set price policy')
            return is_set

    def set_formula_target(self, target):
        """
        Returning set formula target
        Implement logging for set formula target functionality
        :param target:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set formula target')
            if target != "":
                self._price_page.set_formula_target(target)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set formula target')
            return is_set

    def set_formula_minimum(self, minimum):
        """
        Returning set formula minimum
        Implement logging for set formula minimum functionality
        :param minimum:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set formula minimum')
            if minimum != "":
                self._price_page.set_formula_minimum(minimum)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set formula minimum')
            return is_set

    def set_formula_cost(self, cost):
        """
        Returning set formula cost
        Implement logging for set formula cost functionality
        :param cost:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set formula cost')
            if cost != "":
                self._price_page.set_formula_cost(cost)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set formula cost')
            return is_set

    def get_price_policies_formulas_grid_row_details(self):
        """
        Returning get price policies formulas grid row details
        Implementing logging for get price policies formulas grid row details functionality
        :return: grid_row_data
        """
        try:
            self.logger.info('Start: get price policies formulas grid row details')
            return self._price_page.get_price_policies_formulas_grid_row_details()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get price policies formulas grid row details')

    def click_policies_formulas_grid_inline_action_button(self, policy_formula):
        """
        Returning click policies formulas grid inline action button
        Implement logging for click policies formulas grid inline action button functionality
        :param policy_formula:
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click policies formulas grid inline action button')
            self._price_page.click_policies_formulas_grid_inline_action_button(policy_formula)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click policies formulas grid inline action button')
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
            self._price_page.select_inline_action_item(item_name)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select item from inline action')
            return is_selected

    def click_save_button_for_edit(self):
        """
        Returning click save button for edit
        Implement logging for click save button for edit functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click save button for edit')
            self._price_page.click_create_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click save button for edit')
            return is_clicked

    def click_create_new_cost_policy_button(self):
        """
        Returning click create new cost policy button
        Implement logging for click create new cost policy button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click create new cost policy button')
            self._price_page.click_create_new_cost_policy_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click create new cost policy button')
            return is_clicked

    def set_cost_policy_name(self, cost_policy_prefix):
        """
        Returning set cost policy name
        Implement logging for set cost policy name functionality
        :param cost_policy_prefix:
        :return: cost policy name
        """
        try:
            self.logger.info('Start: set cost policy name button')
            return self._price_page.set_cost_policy_name(cost_policy_prefix)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set cost policy name button')

    def set_cost_policy_abbreviation(self):
        """
        Returning set cost policy abbreviation
        Implement logging for set cost policy abbreviation functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set cost policy abbreviation')
            self._price_page.set_cost_policy_abbreviation()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set cost policy abbreviation')
            return is_set

    def set_cost_policy_status(self, status):
        """
        Returning set cost policy status
        Implementing logging for set cost policy status functionality
        :param status:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set cost policy status')
            self._price_page.set_cost_policy_status(status)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set cost policy status')
            return is_set

    def set_cost_policy_type(self, cost_policy_type):
        """
        Returning set cost policy type
        Implementing logging for set cost policy type functionality
        :param cost_policy_type:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set cost policy type')
            self._price_page.set_cost_policy_type(cost_policy_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set cost policy type')
            return is_set

    def set_cost_policy_call_type(self, call_type):
        """
        Returning set cost policy call type
        Implementing logging for set cost policy call type functionality
        :param call_type:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set cost policy call type')
            self._price_page.set_cost_policy_call_type(call_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set cost policy call type')
            return is_set

    def set_cost_policy_route_class(self, route_class):
        """
        Returning set cost policy route class
        Implementing logging for set cost policy route class functionality
        :param route_class:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set cost policy route class')
            self._price_page.set_cost_policy_route_class(route_class)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set cost policy route class')
            return is_set

    def click_create_cost_policy_save_button(self):
        """
        Returning click create cost policy save button
        Implementing logging for click create cost policy save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click create cost policy save button')
            self._price_page.click_create_cost_policy_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click create cost policy save button')
            return is_clicked

    def click_cost_policy_grid_inline_action_button(self, cost_policy):
        """
        Returning click cost policy grid inline action button
        Implementing logging for click cost policy grid inline action button functionality
        :param cost_policy:
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click cost policy grid inline action button')
            self._price_page.click_cost_policy_grid_inline_action_button(cost_policy)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click cost policy grid inline action button')
            return is_clicked

    def click_edit_cost_policy_button(self):
        """
        Returning click edit cost policy button
        Implementing logging for click edit cost policy button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click edit cost policy button')
            self._price_page.click_edit_cost_policy_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click edit cost policy button')
            return is_clicked

    def edit_cost_policy_status(self, status):
        """
        Returning edit cost policy status
        Implementing logging edit cost policy status functionality
        :param status:
        :return: True/False
        """
        is_edited = None
        try:
            self.logger.info('Start: edit cost policy status')
            self._price_page.edit_cost_policy_status(status)
            is_edited = True
        except WebDriverException as exp:
            is_edited = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: edit cost policy status')
            return is_edited

    def click_save_cost_policy_button(self):
        """
        Returning click save cost policy button
        Implementing logging for click save cost policy button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click save cost policy button')
            self._price_page.click_save_cost_policy_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click save cost policy button')
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
            self._price_page.close_current_tab(tab_name)
            is_closed = True
        except WebDriverException as exp:
            is_closed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: close current tab')
            return is_closed

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
            self._price_page.clear_filter(column_name)
            is_cleared = True
        except WebDriverException as exp:
            is_cleared = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: clear filter')
            return is_cleared

    def clear_all_table_filter(self, column_name):
        """
        Returning clear all table filter
        Implementing logging for clear all table filter functionality
        :param column_name:
        :return: True/False
        """
        is_cleared = None
        try:
            self.logger.info('Start: clear all table filter')
            self._price_page.clear_all_table_filters(column_name)
            is_cleared = True
        except WebDriverException as exp:
            is_cleared = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: clear all table filter')
            return is_cleared

    def is_cost_policy_status_inactive(self, cost_policy_name):
        """
        Returning is cost policy status inactive
        Implementing logging for is cost policy status inactive functionality
        :param cost_policy_name:
        :return: True/False
        """
        try:
            self.logger.info('Start: is cost policy status inactive')
            return self._price_page.is_cost_policy_status_inactive(cost_policy_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is cost policy status inactive')

    def get_cost_policy_details_from_database(self, cost_policy_name, server, database, user, password):
        """
        Returning get cost policy details from database
        Implementing logging for get cost policy details from database functionality
        :param cost_policy_name:
        :param server:
        :param database:
        :param user:
        :param password:
        :return: cost policy details from database
        """
        try:
            self.logger.info('Start: get cost policy details from database')
            return self._price_page.get_cost_policy_details_from_database(cost_policy_name, server, database, user, password)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get cost policy details from database')

    def get_cost_policy_status_from_database(self, cost_policy_name, server, database, user, password):
        """
        Returning get cost policy status from database
        Implementing logging for get cost policy status from database functionality
        :param cost_policy_name:
        :param server:
        :param database:
        :param user:
        :param password:
        :return: cost policy status from database
        """
        try:
            self.logger.info('Start: get cost policy status from database')
            return self._price_page.get_cost_policy_status_from_database(cost_policy_name, server, database, user, password)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get cost policy status from database')

    def get_price_policy_details_from_database(self, price_policy_name, server, database, user, password):
        """
        Returning get price policy details from database
        Implementing logging for get price policy details from database functionality
        :param price_policy_name:
        :param server:
        :param database:
        :param user:
        :param password:
        :return: price policy details from database
        """
        try:
            self.logger.info('Start: get price policy details from database')
            return self._price_page.get_price_policy_details_from_database(price_policy_name, server, database, user, password)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get price policy details from database')

    def get_price_policy_status_from_database(self, price_policy_name, server, database, user, password):
        """
        Returning get price policy status from database
        Implementing logging for get price policy status from database functionality
        :param price_policy_name:
        :param server:
        :param database:
        :param user:
        :param password:
        :return: price policy status from database
        """
        try:
            self.logger.info('Start: get price policy status from database')
            return self._price_page.get_price_policy_status_from_database(price_policy_name, server, database, user, password)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get price policy status from database')

    def click_price_overrides_button(self):
        """
        Returning click price overrides button
        Implementing logging for click price overrides button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click price overrides button')
            self._price_page.click_price_overrides_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click price overrides button')
            return is_clicked

    def select_price_overrides_grid_row_checkbox(self):
        """
        Returning select price overrides grid row checkbox
        Implementing logging for select price overrides grid row checkbox functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select price overrides grid row checkbox')
            self._price_page.select_price_overrides_grid_row_checkbox()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select price overrides grid row checkbox')
            return is_selected

    def click_price_policy_grid_first_row_inline_action_button(self):
        """
        Returning click price policy grid inline action button
        Implementing logging for click price policy grid inline action button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click price policy grid inline action button')
            self._price_page.click_price_policy_grid_first_row_inline_action_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click price policy grid inline action button')
            return is_clicked

    def is_view_price_policy_page_loaded_properly(self):
        """
        Returning view price policy page loading status
        Implementing logging for is view price policy page loaded properly functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is view price policy page loaded properly')
            return self._price_page.is_view_price_policy_page_loaded_properly()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is view price policy page loaded properly')

    def click_price_overrides_bulk_edit_button(self):
        """
        Returning click price overrides bulk edit button
        Implementing logging for click price overrides bulk edit button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click price overrides bulk edit button')
            self._price_page.click_price_overrides_bulk_edit_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click price overrides bulk edit button')
            return is_clicked

    def set_price_overrides_bulk_edit_end_date(self, date):
        """
        Returning set price overrides bulk edit end date
        Implementing logging for set price overrides bulk edit end date functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set price overrides bulk edit end date')
            self._price_page.set_price_overrides_bulk_edit_end_date(date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set price overrides bulk edit end date')
            return is_set

    def set_value_in_user_defined_parameters_grid_column(self, column_name, column_value):
        """
        Returning set value in user defined parameters grid column
        Implement logging for set value in user defined parameters grid column functionality
        :param column_name:
        :param column_value:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set value in user defined parameters grid column')
            self._price_page.set_value_in_user_defined_parameters_grid_column(column_name, column_value)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set value in user defined parameters grid column')
            return is_set

    def click_review_customer_price_exception_requests(self):
        """
        Returning click review customer price exceptions request
        Implementing logging for click review customer price exceptions request functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click review customer price exceptions request')
            self._price_page.click_review_customer_price_exception_requests()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click review customer price exceptions request')
            return is_clicked

    def is_review_customer_price_exception_requests_page_loaded_properly(self):
        """
        Returning review customer price exception requests page loading status
        Implementing logging for is review customer price exception requests page loaded properly functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is review customer price exception requests page loaded properly')
            return self._price_page.is_review_customer_price_exception_requests_page_loaded_properly()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is review customer price exception requests page loaded properly')

    def move_available_policies_to_destination(self, *policies_list):
        """
        Returning move available policies to destination
        Implementing logging for move available policies to destination functionality
        :param policies_list:
        :return: True/False
        """
        is_moved = None
        try:
            self.logger.info('Start: move available policies to destination')
            self._price_page.move_available_policies_to_destination(policies_list)
            is_moved = True
        except WebDriverException as exp:
            is_moved = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: move available policies to destination')
            return is_moved

    def click_second_page_next_button(self):
        """
        Returning click second page next button
        Implementing logging for click second page next button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click second page next button')
            self._price_page.click_second_page_next_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click second page next button')
            return is_clicked

    def click_create_new_user_defined_parameter_button(self):
        """
        Returning click create new user defined parameter button
        Implementing logging for click create new user defined parameter button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click create new user defined parameter button')
            self._price_page.click_create_new_user_defined_parameter_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click create new user defined parameter button')
            return is_clicked

    def set_price_policy_for_create_user_defined_parameter(self, price_policy):
        """
        Returning set price policy for create user defined parameter
        Implementing logging for set price policy for create user defined parameter functionality
        :param price_policy:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set price policy for create user defined parameter')
            self._price_page.set_price_policy_for_create_user_defined_parameter(price_policy)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set price policy for create user defined parameter')
            return is_set

    def set_parameter_for_new_user_defined_parameters(self, column_name, column_value):
        """
        Returning set parameter for new user defined parameters
        Implementing logging for set parameter for new user defined parameters functionality
        :param column_name:
        :param column_value:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set parameter for new user defined parameters')
            self._price_page.set_parameter_for_new_user_defined_parameters(column_name, column_value)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set parameter for new user defined parameters')
            return is_set

    def set_description_for_new_user_defined_parameters(self, column_name, column_value):
        """
        Returning set description for new user defined parameters
        Implementing logging for set description for new user defined parameters functionality
        :param column_name:
        :param column_value:
        :return: description
        """
        try:
            self.logger.info('Start: set description for new user defined parameters')
            return self._price_page.set_description_for_new_user_defined_parameters(column_name, column_value)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set description for new user defined parameters')

    def set_value_for_create_new_user_defined_parameters(self, column_name, column_value):
        """
        Returning set value for create new user defined parameters
        Implementing logging for set value for create new user defined parameters functionality
        :param column_name:
        :param column_value:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set value for create new user defined parameters')
            self._price_page.set_value_for_create_new_user_defined_parameters(column_name, column_value)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set value for create new user defined parameters')
            return is_set

    def edit_grid_column_for_new_user_defined_parameter(self, column_name, end_date):
        """
        Returning edit grid column for new user defined_parameter
        Implementing logging for edit grid column for new user defined parameter functionality
        :param column_name:
        :param end_date:
        :return: True/False
        """
        is_edited = None
        try:
            self.logger.info('Start: edit grid column for new user defined parameter')
            self._price_page.edit_grid_column_for_new_user_defined_parameter(column_name, end_date)
            is_edited = True
        except WebDriverException as exp:
            is_edited = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: edit grid column for new user defined parameter')
            return is_edited

    def set_value_in_grid_for_new_user_defined_parameter(self, column_name):
        """
        Returning set value in grid for new user defined parameter
        Implementing logging for set value in grid for new user defined parameter functionality
        :param column_name:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set value in grid for new user defined parameter')
            self._price_page.set_value_in_grid_for_new_user_defined_parameter(column_name)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set value in grid for new user defined parameter')
            return is_set

    def click_generate_reference_prices_button(self):
        """
        Returning click generate reference prices button
        Implementing logging for click generate reference prices button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click generate reference prices button')
            self._price_page.click_generate_reference_prices_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click generate reference prices button')
            return is_clicked

    def select_reference_price_policies(self, *policies_list):
        """
        Returning select reference price policies
        Implementing logging for select reference price policies functionality
        :param policies_list:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select reference price policies')
            self._price_page.select_reference_price_policies(policies_list)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select reference price policies')
            return is_selected

    def select_available_destinations(self, *destination_list):
        """
        Returning select available destinations
        Implementing logging for select available destinations functionality
        :param destination_list:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select available destinations')
            self._price_page.select_available_destinations(destination_list)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select available destinations')
            return is_selected

    def click_generate_reference_prices_submit_button(self):
        """
        Returning click generate reference prices submit button
        Implementing logging for click generate reference prices submit button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click generate reference prices submit button')
            self._price_page.click_generate_reference_prices_submit_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click generate reference prices submit button')
            return is_clicked

    def select_user_defined_parameters_grid_row_checkbox(self, *list_of_policy):
        """
        Returning select user defined parameters grid row checkbox
        Implement logging for select user defined parameters grid row checkbox functionality
        :param list_of_policy:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select user defined parameters grid row checkbox')
            self._price_page.select_user_defined_parameters_grid_row_checkbox(list_of_policy)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select user defined parameters grid row checkbox')
            return is_selected

    def select_user_defined_parameters_grid_first_row_checkbox(self):
        """
        Returning select user defined parameters grid first row checkbox
        Implement logging for select user defined parameters grid first row checkbox functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select user defined parameters grid first row checkbox')
            self._price_page.select_user_defined_parameters_grid_first_row_checkbox()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select user defined parameters grid first row checkbox')
            return is_selected

    def click_copy_parameter_button(self):
        """
        Returning click copy parameter button
        Implementing logging for click copy parameter button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click copy parameter button')
            self._price_page.click_copy_parameter_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click copy parameter button')
            return is_clicked

    def click_reference_prices_button(self):
        """
        Returning click reference prices button
        Implementing logging for click reference prices button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click reference prices button')
            self._price_page.click_reference_prices_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click reference prices button')
            return is_clicked

    def select_status_for_reference_prices_search(self, *status_list):
        """
        Returning select status for reference prices search
        Implementing logging for select status for reference prices search functionality
        :param status_list:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select status for reference prices search')
            self._price_page.select_status_for_reference_prices_search(status_list)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select status for reference prices search')
            return is_selected

    def click_reference_prices_search_button(self):
        """
        Returning click reference prices search button
        Implementing logging for click reference prices search button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click reference prices search button')
            self._price_page.click_reference_prices_search_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click reference prices search button')
            return is_clicked

    def set_status_for_reference_prices(self, status):
        """
        Returning set status for reference prices
        Implementing logging for set status for reference prices functionality
        :param status:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set status for reference prices')
            self._price_page.set_status_for_reference_prices(status)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set status for reference prices')
            return is_set

    def click_reference_prices_save_changes_button(self):
        """
        Returning click reference prices save changes button
        Implementing logging for click reference prices save changes button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click reference prices save changes button')
            self._price_page.click_reference_prices_save_changes_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click reference prices save changes button')
            return is_clicked

    def click_reference_prices_bulk_edit_button(self):
        """
        Returning click reference prices bulk edit button
        Implementing logging for click reference prices bulk edit button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click reference prices bulk edit button')
            self._price_page.click_reference_prices_bulk_edit_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click reference prices bulk edit button')
            return is_clicked

    def select_reference_prices_grid_multiple_rows(self):
        """
        Returning select reference prices grid multiple rows
        Implement logging for select reference prices grid multiple rows functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select reference prices grid multiple rows')
            self._price_page.select_reference_prices_grid_multiple_rows()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select reference prices grid multiple rows')
            return is_selected

    def set_note_for_bulk_edit(self):
        """
        Returning set note for bulk edit
        Implement logging for set note for bulk edit
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set note for bulk edit')
            self._price_page.set_note_for_bulk_edit()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set note for bulk edit')
            return is_set

    def click_costs_page_search_button(self):
        """
        Returning click costs page search button
        Implementing logging for click costs page search button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click costs page search button')
            self._price_page.click_costs_page_search_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click costs page search button')
            return is_clicked

    def click_upload_costs_button(self):
        """
        Returning click upload costs button
        Implementing logging for click upload costs button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click upload costs button')
            self._price_page.click_upload_costs_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click upload costs button')
            return is_clicked

    def set_cost_policy_for_upload(self, cost_policy):
        """
        Returning set cost policy for upload
        Implementing logging for set cost policy for upload functionality
        :param cost_policy:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set cost policy for upload')
            self._price_page.set_cost_policy_for_upload(cost_policy)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set cost policy for upload')
            return is_set

    def click_costs_browse_button(self):
        """
        Returning click costs browse button
        Implementing logging for click costs browse button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click costs browse button')
            self._price_page.click_costs_browse_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click costs browse button')
            return is_clicked

    def click_completed_status_green_button(self):
        """
        Returning click completed status green button
        Implementing logging for click completed status green button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click completed status green button')
            self._price_page.click_completed_status_green_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click completed status green button')
            return is_clicked

    def get_completed_jobs_count(self):
        """
        Returning get completed jobs count
        Implementing logging for get completed jobs count functionality
        :return: grid_row_data
        """
        try:
            self.logger.info('Start: get completed jobs count')
            return self._price_page.get_completed_jobs_count()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get completed jobs count')

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
            self._price_page.select_the_file_to_be_uploaded(file_path)
            is_selected = True
        except Exception as exp:
            is_selected = False
            self.logger.error(exp.message)
            raise
        finally:
            self.logger.info('End: select the file to be uploaded')
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
            self._price_page.click_upload_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click upload button')
            return is_clicked

    def compare_completed_jobs_count_after_upload(self):
        """
        Returning compare completed jobs count after upload
        Implementing logging for compare completed jobs count after upload functionality
        :return: grid_row_data
        """
        try:
            self.logger.info('Start: compare completed jobs count after upload')
            return self._price_page.compare_completed_jobs_count_after_upload()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare completed jobs count after upload')

    def select_price_overrides_tab(self):
        """
        Returning select price overrides tab
        Implementing logging for select price overrides tab functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select price overrides tab')
            self._price_page.select_price_overrides_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select price overrides tab')
            return is_selected

    def click_upload_price_overrides_button(self):
        """
        Returning click upload price overrides button
        Implementing logging for click upload price overrides button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click upload price overrides button')
            self._price_page.click_upload_price_overrides_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click upload price overrides button')
            return is_clicked

    def click_price_overrides_completed_status_green_button(self):
        """
        Returning click price overrides completed status green button
        Implementing logging for click price overrides completed status green button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click price overrides completed status green button')
            self._price_page.click_price_overrides_completed_status_green_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click price overrides completed status green button')
            return is_clicked

    def set_status(self, *status_list):
        """
        Returning set status
        Implementing logging for set status functionality
        :param status_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set status')
            self._price_page.set_status(status_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set status')
            return is_set

    def click_price_exceptions_search_button(self):
        """
        Returning click price exceptions search button
        Implementing logging for click price exceptions search button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click price exceptions search button')
            self._price_page.click_price_exceptions_search_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click price exceptions search button')
            return is_clicked

    def is_reference_prices_page_loaded_properly(self):
        """
        Returning reference prices page loading status
        Implementing logging for is reference prices page loaded properly functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is reference prices page loaded properly')
            return self._price_page.is_reference_prices_page_loaded_properly()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is reference prices page loaded properly')

    def is_reference_prices_total_number_of_records_returned(self):
        """
        Returning reference prices total number of records returning status
        Implementing logging for is reference prices total number of records returned functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is reference prices total number of records returned')
            return self._price_page.is_reference_prices_total_number_of_records_returned()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is reference prices total number of records returned')

    def set_costs_number_plan(self, number_plan):
        """
        Returning set costs number plan
        Implementing logging for set costs number plan functionality
        :param number_plan:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set costs number plan')
            self._price_page.set_costs_number_plan(number_plan)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set costs number plan')
            return is_set

    def get_created_new_cost_policy_name(self):
        """
        Returning get created cost policy name
        Implementing logging for get created cost policy name functionality
        :return: created cost policy name
        """
        try:
            self.logger.info('Start: get created cost policy name')
            return self._price_page.get_created_new_cost_policy_name()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get created cost policy name')

    def set_value_in_parameter_column(self, column_name, parameter_prefix):
        """
        Returning set value in parameter column
        Implement logging for set value in parameter column functionality
        :param column_name:
        :param parameter_prefix
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set value in parameter column')
            self._price_page.set_value_in_parameter_column(column_name, parameter_prefix)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set value in parameter column')
            return is_set

    def click_cost_policy_grid_first_row_inline_action_button(self):
        """
        Returning click cost policy grid first row inline action button
        Implementing logging for click cost policy grid first row inline action button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click cost policy grid first row inline action button')
            self._price_page.click_cost_policy_grid_first_row_inline_action_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click cost policy grid first row inline action button')
            return is_clicked

    def get_cost_policy_last_modified_date(self):
        """
        Returning get cost policy last modified date
        Implementing logging for get cost policy last modified date functionality
        :return:
        """
        try:
            self.logger.info('Start: get cost policy last modified date')
            return self._price_page.get_cost_policy_last_modified_date()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get cost policy last modified date')

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
                status = self._price_page.validate_date_format(actual_date, expected_date_format)
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
                status = self._price_page.validate_currency_format(actual_value, expected_locale)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: validate currency format')
            return status

    def select_formulas_tab(self):
        """
        Returning select formulas tab
        Implementing logging for select formulas tab functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select formulas tab')
            self._price_page.select_formulas_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select formulas tab')
            return is_selected

    def get_cost_policy_formula_select_date(self):
        """
        Returning get cost policy formula select date
        Implementing logging for get cost policy formula select date functionality
        :return: select date value
        """
        try:
            self.logger.info('Start: get cost policy formula select date')
            return self._price_page.get_cost_policy_formula_select_date()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get cost policy formula select date')

    def get_formula_begin_date(self):
        """
        Returning get formula begin date
        Implementing logging for get formula begin date functionality
        :return: formula begin date
        """
        try:
            self.logger.info('Start: get formula begin date')
            return self._price_page.get_formula_begin_date()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get formula begin date')

    def close_create_cost_policy_destination_formula_screen(self):
        """
        Returning close create cost policy destination formula screen
        Implementing logging for close create cost policy destination formula screen functionality
        :return: True/False
        """
        is_closed = None
        try:
            self.logger.info('Start: close create cost policy destination formula screen')
            self._price_page.close_create_cost_policy_destination_formula_screen()
            is_closed = True
        except WebDriverException as exp:
            is_closed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: close create cost policy destination formula screen')
            return is_closed

    def get_formulas_grid_begin_date_column_value(self):
        """
        Returning get formulas grid begin date column value
        Implementing logging for get formulas grid begin date column value functionality
        :return: begin date column value
        """
        try:
            self.logger.info('Start: get formulas grid begin date column value')
            return self._price_page.get_formulas_grid_begin_date_column_value()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get formulas grid begin date column value')

    def get_formulas_grid_formula_column_value(self):
        """
        Returning get formulas grid formula column value
        Implementing logging for get formulas grid formula column value functionality
        :return: formula column value
        """
        try:
            self.logger.info('Start: get formulas grid formula column value')
            return self._price_page.get_formulas_grid_formula_column_value()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get formulas grid formula column value')

    def select_user_defined_parameters_tab(self):
        """
        Returning select user defined parameters tab
        Implementing logging for select user defined parameters tab functionality
        :return:
        """
        is_selected = None
        try:
            self.logger.info('Start: select user defined parameters tab')
            self._price_page.select_user_defined_parameters_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select user defined parameters tab')
            return is_selected

    def get_user_defined_parameter_select_date(self):
        """
        Returning get user defined parameter select date
        Implementing logging for select user defined parameters tab functionality
        :return: select date value
        """
        try:
            self.logger.info('Start: get user defined parameter select date')
            return self._price_page.get_user_defined_parameter_select_date()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get user defined parameter select date')

    def get_user_defined_parameter_grid_value_column_value(self):
        """
        Returning get user defined parameter grid value column value
        Implementing logging for get user defined parameter grid value column value functionality
        :return: value column value
        """
        try:
            self.logger.info('Start: get user defined parameter grid value column value')
            return self._price_page.get_user_defined_parameter_grid_value_column_value()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get user defined parameter grid value column value')

    def get_user_defined_parameter_grid_start_date_column_value(self):
        """
        Returning get user defined parameter grid start date column value
        Implementing logging for get user defined parameter grid start date column value functionality
        :return: start date
        """
        try:
            self.logger.info('Start: get user defined parameter grid start date column value')
            return self._price_page.get_user_defined_parameter_grid_start_date_column_value()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get user defined parameter grid start date column value')

    def select_costs_tab(self):
        """
        Returning select costs tab
        Implementing logging for select costs tab functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select costs tab')
            self._price_page.select_costs_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select costs tab')
            return is_selected

    def get_costs_tab_select_date_value(self):
        """
        Returning get costs tab select date value
        Implementing logging for get costs tab select date value functionality
        :return: select date value
        """
        try:
            self.logger.info('Start: get costs tab select date value')
            return self._price_page.get_costs_tab_select_date_value()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get costs tab select date value')

    def get_active_on_date_value(self):
        """
        Returning get costs tab select date value
        Implementing logging for get costs tab select date value functionality
        :return: active on date value
        """
        try:
            self.logger.info('Start: get active on date value')
            return self._price_page.get_active_on_date_value()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get active on date value')

    def click_cost_upload_link(self):
        """
        Returning click cost upload link
        Implementing logging for click cost upload link functionality
        :return: active on date value
        """
        is_clicked = None
        try:
            self.logger.info('Start: click cost upload link')
            self._price_page.click_cost_upload_link()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click cost upload link')
            return is_clicked

    def get_registry_from_date_value(self):
        """
        Returning get registry from date value
        Implementing logging for get registry from date value functionality
        :return: registry from date value
        """
        try:
            self.logger.info('Start: get registry from date value')
            return self._price_page.get_registry_from_date_value()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get registry from date value')

    def get_registry_to_date_value(self):
        """
        Returning get registry from date value
        Implementing logging for get registry from date value functionality
        :return: registry to date value
        """
        try:
            self.logger.info('Start: get registry to date value')
            return self._price_page.get_registry_to_date_value()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get registry to date value')

    def get_reg_date_time_column_value(self):
        """
        Returning get reg date time column value
        Implementing logging for get get reg date time column value functionality
        :return: reg date time column value
        """
        try:
            self.logger.info('Start: get reg date time column value')
            return self._price_page.get_reg_date_time_column_value()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get reg date time column value')

    def get_process_begin_date_time_column_value(self):
        """
        Returning get process begin date time column value
        Implementing logging for get get process begind date time column value functionality
        :return: process begin date time column value
        """
        try:
            self.logger.info('Start: get process begin date time column value')
            return self._price_page.get_process_begin_date_time_column_value()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get process begin date time column value')

    def get_process_end_date_time_column_value(self):
        """
        Returning get process begin date time column value
        Implementing logging for get get process begind date time column value functionality
        :return: process end date time column value
        """
        try:
            self.logger.info('Start: get process end date time column value')
            return self._price_page.get_process_end_date_time_column_value()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get process end date time column value')

    def get_price_policy_formulas_grid_begin_date_column_value(self):
        """
        Returning get price policy formulas grid begin date column value
        Implementing logging for get get process begin date time column value functionality
        :return: price policy formulas grid begin date column value
        """
        try:
            self.logger.info('Start: get price policy formulas grid begin date column value')
            return self._price_page.get_price_policy_formulas_grid_begin_date_column_value()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get price policy formulas grid begin date column value')

    def get_price_policy_formulas_grid_end_date_column_value(self):
        """
        Returning get price policy formulas grid end date column value
        Implementing logging for get get process end date time column value functionality
        :return: price policy formulas grid end date column value
        """
        try:
            self.logger.info('Start: get price policy formulas grid end date column value')
            return self._price_page.get_price_policy_formulas_grid_end_date_column_value()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get price policy formulas grid end date column value')

    def get_value_column_value_from_user_defined_parameters_grid(self):
        """
        Returning get value column value from user defined parameters grid
        Implementing logging for get value column value from user defined parameters grid functionality
        :return: value column value from user defined parameters grid
        """
        try:
            self.logger.info('Start: get value column value from user defined parameters grid')
            return self._price_page.get_value_column_value_from_user_defined_parameters_grid()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get value column value from user defined parameters grid')

    def get_start_date_column_value_from_user_defined_parameters_grid(self):
        """
        Returning get start date column value from user defined parameters grid
        Implementing logging for get start date column value from user defined parameters grid functionality
        :return: start date column value from user defined parameters grid
        """
        try:
            self.logger.info('Start: get start date column value from user defined parameters grid')
            return self._price_page.get_start_date_column_value_from_user_defined_parameters_grid()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get start date column value from user defined parameters grid')

    def get_price_overrides_grid_target_price_column_value(self):
        """
        Returning get price overrides grid target price column value
        Implementing logging for get price overrides grid target price column value functionality
        :return: price overrides grid target price column value
        """
        try:
            self.logger.info('Start: get price overrides grid target price column value')
            return self._price_page.get_price_overrides_grid_target_price_column_value()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get price overrides grid target price column value')

    def get_price_overrides_grid_begin_date_column_value(self):
        """
        Returning get price overrides grid begin column value
        Implementing logging for get price overrides grid begin column value functionality
        :return: price overrides grid begin date column value
        """
        try:
            self.logger.info('Start: get price overrides grid begin column value')
            return self._price_page.get_price_overrides_grid_begin_date_column_value()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get price overrides grid begin column value')

    def get_price_overrides_grid_end_date_column_value(self):
        """
        Returning get price overrides grid end date column value
        Implementing logging for get price overrides grid end date column value functionality
        :return: price overrides grid end date column value
        """
        try:
            self.logger.info('Start: get price overrides grid end date column value')
            return self._price_page.get_price_overrides_grid_end_date_column_value()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get price overrides grid end date column value')

    def select_price_dashboard(self):
        """
        Returning select price dashboard tab
        Implementing logging for select price dashboard tab functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select price dashboard tab')
            self._price_page.select_price_dashboard()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select price dashboard tab')
            return is_selected

    def click_compound_reference_price_list_link(self):
        """
        Returning click compound reference price list link
        Implementing logging for click compound reference price list link functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click compound reference price list link')
            self._price_page.click_compound_reference_price_list_link()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click compound reference price list link')
            return is_clicked

    def get_compound_reference_price_list_grid_begin_date_column_value(self):
        """
        Returning get compound reference price list grid begin date column value
        Implementing logging for get compound reference price list grid begin date column value functionality
        :return: compound reference price list grid begin date column value
        """
        try:
            self.logger.info('Start: get compound reference price list grid begin date column value')
            return self._price_page.get_compound_reference_price_list_grid_begin_date_column_value()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get compound reference price list grid begin date column value')

    def get_compound_reference_price_list_grid_modified_date_column_value(self):
        """
        Returning get compound reference price list grid modified date column value
        Implementing logging for get compound reference price list grid modified date column value functionality
        :return: compound reference price list grid modified date column value
        """
        try:
            self.logger.info('Start: get compound reference price list grid modified date column value')
            return self._price_page.get_compound_reference_price_list_grid_modified_date_column_value()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get compound reference price list grid modified date column value')

    def click_create_customer_price_list_link(self):
        """
        Returning click create customer price list link
        Implementing logging for click create customer price list link functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click create customer price list link')
            self._price_page.click_create_customer_price_list_link()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click create customer price list link')
            return is_clicked

    def get_customer_price_list_offer_date(self):
        """
        Returning get customer price list offer date
        Implementing logging for get customer price list offer date functionality
        :return: get customer price list offer date
        """
        try:
            self.logger.info('Start: get customer price list offer date')
            return self._price_page.get_customer_price_list_offer_date()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get customer price list offer date')

    def close_price_window(self):
        """
        Returning close price window
        Implementing logging for close price window functionality
        :return: True/False
        """
        is_closed = None
        try:
            self.logger.info('Start: close price window')
            self._price_page.close_browser()
            self._price_page.switch_to_previous_window()
            is_closed = True
        except WebDriverException as exp:
            is_closed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: close price window')
            return is_closed

    def click_price_exceptions_grid_first_row_inline_action_button(self):
        """
        Returning click price exceptions grid first row inline action button
        Implementing logging for click price exceptions grid first row inline action button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click price exceptions grid first row inline action button')
            self._price_page.click_price_exceptions_grid_first_row_inline_action_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click price exceptions grid first row inline action button')
            return is_clicked

    def select_pricing_exception_approve_inline_action_button(self):
        """
        Returning select pricing exception approve inline action button
        Implementing logging for select pricing exception approve inline action button functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select pricing exception approve inline action button')
            self._price_page.select_pricing_exception_approve_inline_action_button()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select pricing exception approve inline action button')
            return is_selected

    def set_value_in_column_for_user_defined_parameters(self, column_name):
        """
        Returning set value in column for user defined parameters
        Implement logging for set value in column for user defined parameters functionality
        :param column_name:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set value in column for user defined parameters')
            self._price_page.set_value_in_user_defined_parameters_grid_column(column_name, self._price_page.get_current_date())
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set value in column for user defined parameters')
            return is_set

    def set_value_in_cost_policy_column(self, cost_policy):
        """
        Returning set value in cost policy column
        Implement logging for set value in cost policy column functionality
        :param cost_policy:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set value in cost policy column')
            self._price_page.set_value_in_cost_policy_column(cost_policy)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set value in cost policy column')
            return is_set

    def filter_price_policies_grid_price_policy_column(self, filter_item_text):
        """
        Returning filter price policies grid price policy column
        Implement logging for filter price policies grid price policy column functionality
        :param filter_item_text:
        :return: True/False
        """
        is_filtered = None
        try:
            self.logger.info('Start: filter price policies grid price policy column')
            self._price_page.filter_price_policies_grid_price_policy_column(filter_item_text)
            is_filtered = True
        except WebDriverException as exp:
            is_filtered = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: filter price policies grid price policy column')
            return is_filtered

    def select_price_policy_formulas_grid_row_checkbox(self, *list_of_cost_policy):
        """
        Returning select price policies formulas grid row checkbox
        Implement logging for select price policies formulas grid row checkbox functionality
        :param list_of_cost_policy:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select price policies formulas grid row checkbox')
            self._price_page.select_price_policy_formulas_grid_row_checkbox(list_of_cost_policy)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select price policies formulas grid row checkbox')
            return is_selected

    def select_price_policies_grid_row_checkbox(self, *list_of_cost_policy):
        """
        Returning select price policies grid row checkbox
        Implement logging for select price policies grid row checkbox functionality
        :param list_of_cost_policy:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select price policies grid row checkbox')
            self._price_page.select_price_policies_grid_row_checkbox(list_of_cost_policy)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select price policies grid row checkbox')
            return is_selected

    def is_view_cost_policy_page_loaded_properly(self):
        """
        Returning view cost policy page loading status
        Implementing logging for is view cost policy page loaded properly functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is view cost policy page loaded properly')
            return self._price_page.is_view_cost_policy_page_loaded_properly()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is view cost policy page loaded properly')

    def get_available_reference_prices_count(self):
        """
        Returning get available reference prices count
        Implementing logging for get available reference prices count functionality
        :return: grid_row_data
        """
        try:
            self.logger.info('Start: get available reference prices count')
            return self._price_page.get_available_reference_prices_count()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get available reference prices count')

    def compare_price_reference_prices_count_after_create(self, number_of_rows_to_add=0):
        """
        Returning compare price reference prices count after create
        Implementing logging for compare price reference prices count after create functionality
        :return: grid_row_data
        """
        try:
            self.logger.info('Start: compare price reference prices count after create')
            return self._price_page.compare_price_reference_prices_count_after_create(number_of_rows_to_add)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare price reference prices count after create')

    def compare_jobs_count_after_job_completed(self):
        """
        Returning compare jobs count after job completed
        Implementing logging for compare jobs count after job completed functionality
        :return: grid_row_data
        """
        try:
            self.logger.info('Start: compare jobs count after job completed')
            return self._price_page.compare_jobs_count_after_job_completed()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare jobs count after job completed')

    def compare_jobs_count_after_price_overrides_completed(self):
        """
        Returning compare jobs count after price overrides completed
        Implementing logging for compare jobs count after price overrides completed functionality
        :return: grid_row_data
        """
        try:
            self.logger.info('Start: compare jobs count after price overrides completed')
            return self._price_page.compare_jobs_count_after_price_overrides_completed()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare jobs count after price overrides completed')

    def set_cost_policies_grid_settings(self, grid_settings):
        """
        Returning set cost policies grid settings
        Implementing logging for set cost policies grid settings functionality
        :param grid_settings:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set cost policies grid settings')
            self._price_page.set_cost_policies_grid_settings(grid_settings)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set cost policies grid settings')
            return is_set

    def get_all_rows_of_specific_column_from_cost_policies_grid(self, column_name):
        """
        Returning get all rows of specific column from cost policies grid
        Implementing logging for get all rows of specific column from cost policies grid functionality
        :param column_name:
        :return: all_row_data
        """
        all_row_data = None
        try:
            self.logger.info('Start: get all rows of specific column from cost policies grid')
            all_row_data = self._price_page.get_all_rows_of_specific_column_from_cost_policies_grid(column_name)
        except WebDriverException as exp:
            all_row_data = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get all rows of specific column from cost policies grid')
            return all_row_data

    def sort_cost_policies_grid_column(self, column_name, descending_order=False):
        """
        Returning sort cost policies grid column
        Implementing logging for sort cost policies grid column functionality
        :param column_name:
        :param descending_order:
        :return: True/False
        """
        is_sorted = None
        try:
            self.logger.info('Start: sort cost policies grid column')
            self._price_page.sort_cost_policies_grid_column(column_name, descending_order)
            is_sorted = True
        except WebDriverException as exp:
            is_sorted = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: sort cost policies grid column')
            return is_sorted

    def compare_sorted_data(self, descending_order, *unsorted_data):
        """
        Returning compare sorted data
        Implementing logging for compare sorted data functionality
        :param descending_order:
        :param unsorted_data:
        :return: True/False
        """
        is_compared = None
        try:
            self.logger.info('Start: compare sorted data')
            is_compared = self._price_page.compare_sorted_data(unsorted_data, descending_order)
        except WebDriverException as exp:
            is_compared = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare sorted data')
            return is_compared

    def get_cost_policies_grid_column_names_by_order(self):
        """
        Returning get cost policies grid column names by order
        Implementing logging for get cost policies grid column names by order functionality
        :return: column_name_list
        """
        column_name_list = None
        try:
            self.logger.info('Start: get cost policies grid column names by order')
            column_name_list = self._price_page.get_cost_policies_grid_column_names_by_order()
        except WebDriverException as exp:
            column_name_list = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get cost policies grid column names by order')
            return column_name_list

    def drag_cost_policies_grid_column(self, source_column, destination_column):
        """
        Returning drag cost policies grid column
        Implementing logging for drag cost policies grid column functionality
        :param source_column:
        :param destination_column:
        :return: True/False
        """
        is_dragged = None
        try:
            self.logger.info('Start: drag cost policies grid column')
            self._price_page.drag_cost_policies_grid_column(source_column, destination_column)
            is_dragged = True
        except WebDriverException as exp:
            is_dragged = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: drag cost policies grid column')
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
            is_compared = self._price_page.compare_grid_column_position_after_altering(source_column, destination_column, column_name_list)
        except WebDriverException as exp:
            is_compared = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare grid column position after altering')
            return is_compared

    def click_cost_policies_grid_export_to_excel_button(self):
        """
        Returning click cost policies grid export to excel button
        Implementing logging for click cost policies grid export to excel button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click country groups grid export to excel button')
            self._price_page.click_cost_policies_grid_export_to_excel_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click country groups grid export to excel button')
            return is_clicked

    def set_cost_policy_formulas_grid_settings(self, grid_settings):
        """
        Returning set cost policy formulas grid settings
        Implementing logging for set cost policy formulas grid settings functionality
        :param grid_settings:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set cost policy formulas grid settings')
            self._price_page.set_cost_policy_formulas_grid_settings(grid_settings)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set cost policy formulas grid settings')
            return is_set

    def get_all_rows_of_specific_column_from_cost_policy_formulas_grid(self, column_name):
        """
        Returning get all rows of specific column from cost policy formulas grid
        Implementing logging for get all rows of specific column from cost policy formulas grid functionality
        :param column_name:
        :return: all_row_data
        """
        all_row_data = None
        try:
            self.logger.info('Start: get all rows of specific column from cost policy formulas grid')
            all_row_data = self._price_page.get_all_rows_of_specific_column_from_cost_policy_formulas_grid(column_name)
        except WebDriverException as exp:
            all_row_data = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get all rows of specific column from cost policy formulas grid')
            return all_row_data

    def sort_cost_policy_formulas_grid_column(self, column_name, descending_order=False):
        """
        Returning sort cost policy formulas grid column
        Implementing logging for sort cost policy formulas grid column functionality
        :param column_name:
        :param descending_order:
        :return: True/False
        """
        is_sorted = None
        try:
            self.logger.info('Start: sort cost policy formulas grid column')
            self._price_page.sort_cost_policy_formulas_grid_column(column_name, descending_order)
            is_sorted = True
        except WebDriverException as exp:
            is_sorted = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: sort cost policy formulas grid column')
            return is_sorted

    def get_cost_policy_formulas_grid_column_names_by_order(self):
        """
        Returning get cost policy formulas grid column names by order
        Implementing logging for get cost policy formulas grid column names by order functionality
        :return: column_name_list
        """
        column_name_list = None
        try:
            self.logger.info('Start: get cost policy formulas grid column names by order')
            column_name_list = self._price_page.get_cost_policy_formulas_grid_column_names_by_order()
        except WebDriverException as exp:
            column_name_list = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get cost policy formulas grid column names by order')
            return column_name_list

    def drag_cost_policy_formulas_grid_column(self, source_column, destination_column):
        """
        Returning drag cost policy formulas grid column
        Implementing logging for drag cost policies grid column functionality
        :param source_column:
        :param destination_column:
        :return: True/False
        """
        is_dragged = None
        try:
            self.logger.info('Start: drag cost policy formulas grid column')
            self._price_page.drag_cost_policy_formulas_grid_column(source_column, destination_column)
            is_dragged = True
        except WebDriverException as exp:
            is_dragged = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: drag cost policy formulas grid column')
            return is_dragged

    def click_cost_policy_formulas_grid_export_to_excel_button(self):
        """
        Returning click cost policy formulas grid export to excel button
        Implementing logging for click cost policy formulas grid export to excel button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click cost policy formulas grid export to excel button')
            self._price_page.click_cost_policy_formulas_grid_export_to_excel_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click cost policy formulas grid export to excel button')
            return is_clicked

    def set_cost_policies_user_defined_parameters_grid_settings(self, grid_settings):
        """
        Returning set cost policies user defined parameters grid settings
        Implementing logging for set cost policies user defined parameters grid settings functionality
        :param grid_settings:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set cost policies user defined parameters grid settings')
            self._price_page.set_cost_policies_user_defined_parameters_grid_settings(grid_settings)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set cost policies user defined parameters grid settings')
            return is_set

    def get_all_rows_of_specific_column_from_cost_policies_user_defined_parameters_grid(self, column_name):
        """
        Returning get all rows of specific column from cost policies user defined parameters grid
        Implementing logging for get all rows of specific column from cost policies user defined parameters grid functionality
        :param column_name:
        :return: all_row_data
        """
        all_row_data = None
        try:
            self.logger.info('Start: get all rows of specific column from cost policies user defined parameters grid')
            all_row_data = self._price_page.get_all_rows_of_specific_column_from_cost_policies_user_defined_parameters_grid(column_name)
        except WebDriverException as exp:
            all_row_data = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get all rows of specific column from cost policies user defined parameters grid')
            return all_row_data

    def sort_cost_policies_user_defined_parameters_grid_column(self, column_name, descending_order=False):
        """
        Returning sort cost policy user defined parameters grid column 
        Implementing logging for sort cost policy user defined parameters grid column functionality
        :param column_name:
        :param descending_order:
        :return: True/False
        """
        is_sorted = None
        try:
            self.logger.info('Start: sort cost policy user defined parameters grid column')
            self._price_page.sort_cost_policies_user_defined_parameters_grid_column(column_name, descending_order)
            is_sorted = True
        except WebDriverException as exp:
            is_sorted = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: sort cost policy user defined parameters grid column')
            return is_sorted

    def get_cost_policies_user_defined_parameters_grid_column_names_by_order(self):
        """
        Returning get cost policies user defined parameters grid column names by order
        Implementing logging for get cost policies user defined parameters grid column names by order functionality
        :return: column_name_list
        """
        column_name_list = None
        try:
            self.logger.info('Start: get cost policies user defined parameters grid column names by order')
            column_name_list = self._price_page.get_cost_policies_user_defined_parameters_grid_column_names_by_order()
        except WebDriverException as exp:
            column_name_list = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get cost policies user defined parameters grid column names by order')
            return column_name_list

    def drag_cost_policies_user_defined_parameters_grid_column(self, source_column, destination_column):
        """
        Returning drag cost policies user defined parameters grid column
        Implementing logging for drag cost policies user defined parameters grid column functionality
        :param source_column:
        :param destination_column:
        :return: True/False
        """
        is_dragged = None
        try:
            self.logger.info('Start: drag cost policies user defined parameters grid column')
            self._price_page.drag_cost_policies_user_defined_parameters_grid_column(source_column, destination_column)
            is_dragged = True
        except WebDriverException as exp:
            is_dragged = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: drag cost policies user defined parameters grid column')
            return is_dragged

    def click_cost_policies_user_defined_parameters_grid_export_to_excel_button(self):
        """
        Returning click cost policies user defined parameters grid export to excel button
        Implementing logging for click cost policies user defined parameters grid export to excel button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click cost policies user defined parameters grid export to excel button')
            self._price_page.click_cost_policies_user_defined_parameters_grid_export_to_excel_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click cost policies user defined parameters grid export to excel button')
            return is_clicked

    def set_cost_policies_costs_grid_settings(self, grid_settings):
        """
        Returning set cost policies costs grid settings
        Implementing logging for set cost policies user defined parameters grid settings functionality
        :param grid_settings:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set cost policies costs grid settings')
            self._price_page.set_cost_policies_costs_grid_settings(grid_settings)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set cost policies costs grid settings')
            return is_set

    def get_all_rows_of_specific_column_from_cost_policies_costs_grid(self, column_name):
        """
        Returning get all rows of specific column from cost policies costs grid
        Implementing logging for get all rows of specific column from cost policies costs grid functionality
        :param column_name:
        :return: all_row_data
        """
        all_row_data = None
        try:
            self.logger.info('Start: get all rows of specific column from cost policies costs grid')
            all_row_data = self._price_page.get_all_rows_of_specific_column_from_cost_policies_costs_grid(column_name)
        except WebDriverException as exp:
            all_row_data = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get all rows of specific column from cost policies costs grid')
            return all_row_data

    def sort_cost_policies_costs_grid_column(self, column_name, descending_order=False):
        """
        Returning sort cost policy costs grid column 
        Implementing logging for sort cost policy costs grid column functionality
        :param column_name:
        :param descending_order:
        :return: True/False
        """
        is_sorted = None
        try:
            self.logger.info('Start: sort cost policy costs grid column')
            self._price_page.sort_cost_policies_costs_grid_column(column_name, descending_order)
            is_sorted = True
        except WebDriverException as exp:
            is_sorted = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: sort cost policy costs grid column')
            return is_sorted

    def get_cost_policies_costs_grid_column_names_by_order(self):
        """
        Returning get cost policies costs grid column names by order
        Implementing logging for get cost policies costs grid column names by order functionality
        :return: column_name_list
        """
        column_name_list = None
        try:
            self.logger.info('Start: get cost policies costs grid column names by order')
            column_name_list = self._price_page.get_cost_policies_costs_grid_column_names_by_order()
        except WebDriverException as exp:
            column_name_list = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get cost policies costs grid column names by order')
            return column_name_list

    def drag_cost_policies_costs_grid_column(self, source_column, destination_column):
        """
        Returning drag cost policies costs grid column
        Implementing logging for drag cost policies costs grid column functionality
        :param source_column:
        :param destination_column:
        :return: True/False
        """
        is_dragged = None
        try:
            self.logger.info('Start: drag cost policies costs grid column')
            self._price_page.drag_cost_policies_costs_grid_column(source_column, destination_column)
            is_dragged = True
        except WebDriverException as exp:
            is_dragged = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: drag cost policies costs grid column')
            return is_dragged

    def click_cost_policies_costs_grid_export_to_excel_button(self):
        """
        Returning click cost policies costs grid export to excel button
        Implementing logging for click cost policies costs grid export to excel button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click cost policies costs grid export to excel button')
            self._price_page.click_cost_policies_costs_grid_export_to_excel_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click cost policies costs grid export to excel button')
            return is_clicked

    def select_price_policy_formulas_tab(self):
        """
        Returning select price policy formulas tab
        Implementing logging for select price policy formulas tab functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select price policy formulas tab')
            self._price_page.select_price_policy_formulas_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select price policy formulas tab')
            return is_selected

    def set_price_overrides_grid_settings(self, grid_settings):
        """
        Returning set price overrides grid settings
        Implementing logging for set price overrides grid settings functionality
        :param grid_settings:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set price overrides grid settings')
            self._price_page.set_price_overrides_grid_settings(grid_settings)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set price overrides grid settings')
            return is_set

    def get_all_rows_of_specific_column_from_price_overrides_grid(self, column_name):
        """
        Returning get all rows of specific column from price overrides grid
        Implementing logging for get all rows of specific column from price overrides grid functionality
        :param column_name:
        :return: all_row_data
        """
        all_row_data = None
        try:
            self.logger.info('Start: get all rows of specific column from price overrides grid')
            all_row_data = self._price_page.get_all_rows_of_specific_column_from_price_overrides_grid(column_name)
        except WebDriverException as exp:
            all_row_data = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get all rows of specific column from price overrides grid')
            return all_row_data

    def sort_price_overrides_grid_column(self, column_name, descending_order=False):
        """
        Returning sort price overrides grid column 
        Implementing logging for sort price overrides grid column functionality
        :param column_name:
        :param descending_order:
        :return: True/False
        """
        is_sorted = None
        try:
            self.logger.info('Start: sort price overrides grid column')
            self._price_page.sort_price_overrides_grid_column(column_name, descending_order)
            is_sorted = True
        except WebDriverException as exp:
            is_sorted = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: sort price overrides grid column')
            return is_sorted

    def get_price_overrides_grid_column_names_by_order(self):
        """
        Returning get price overrides grid column names by order
        Implementing logging for get price overrides grid column names by order functionality
        :return: column_name_list
        """
        column_name_list = None
        try:
            self.logger.info('Start: get price overrides grid column names by order')
            column_name_list = self._price_page.get_price_overrides_grid_column_names_by_order()
        except WebDriverException as exp:
            column_name_list = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get price overrides grid column names by order')
            return column_name_list

    def drag_price_overrides_grid_column(self, source_column, destination_column):
        """
        Returning drag price overrides grid column
        Implementing logging for drag price overrides grid column functionality
        :param source_column:
        :param destination_column:
        :return: True/False
        """
        is_dragged = None
        try:
            self.logger.info('Start: drag price overrides grid column')
            self._price_page.drag_price_overrides_grid_column(source_column, destination_column)
            is_dragged = True
        except WebDriverException as exp:
            is_dragged = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: drag price overrides grid column')
            return is_dragged

    def click_price_overrides_grid_export_to_excel_button(self):
        """
        Returning click price overrides grid export to excel button
        Implementing logging for click price overrides grid export to excel button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click price overrides grid export to excel button')
            self._price_page.click_price_overrides_grid_export_to_excel_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click price overrides grid export to excel button')
            return is_clicked

    def set_reference_prices_grid_settings(self, grid_settings):
        """
        Returning set reference prices grid settings
        Implementing logging for set price overrides grid settings functionality
        :param grid_settings:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set reference prices grid settings')
            self._price_page.set_reference_prices_grid_settings(grid_settings)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set reference prices grid settings')
            return is_set

    def get_all_rows_of_specific_column_from_reference_prices_grid(self, column_name):
        """
        Returning get all rows of specific column from reference prices grid
        Implementing logging for get all rows of specific column from reference prices grid functionality
        :param column_name:
        :return: all_row_data
        """
        all_row_data = None
        try:
            self.logger.info('Start: get all rows of specific column from reference prices grid')
            all_row_data = self._price_page.get_all_rows_of_specific_column_from_reference_prices_grid(column_name)
        except WebDriverException as exp:
            all_row_data = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get all rows of specific column from reference prices grid')
            return all_row_data

    def sort_reference_prices_grid_column(self, column_name, descending_order=False):
        """
        Returning sort reference prices grid column 
        Implementing logging for sort reference prices grid column functionality
        :param column_name:
        :param descending_order:
        :return: True/False
        """
        is_sorted = None
        try:
            self.logger.info('Start: sort reference prices grid column')
            self._price_page.sort_reference_prices_grid_column(column_name, descending_order)
            is_sorted = True
        except WebDriverException as exp:
            is_sorted = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: sort reference prices grid column')
            return is_sorted

    def get_reference_prices_grid_column_names_by_order(self):
        """
        Returning get reference prices grid column names by order
        Implementing logging for get reference prices grid column names by order functionality
        :return: column_name_list
        """
        column_name_list = None
        try:
            self.logger.info('Start: get reference prices grid column names by order')
            column_name_list = self._price_page.get_reference_prices_grid_column_names_by_order()
        except WebDriverException as exp:
            column_name_list = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get reference prices grid column names by order')
            return column_name_list

    def drag_reference_prices_grid_column(self, source_column, destination_column):
        """
        Returning drag reference prices grid column
        Implementing logging for drag reference prices grid column functionality
        :param source_column:
        :param destination_column:
        :return: True/False
        """
        is_dragged = None
        try:
            self.logger.info('Start: drag reference prices grid column')
            self._price_page.drag_reference_prices_grid_column(source_column, destination_column)
            is_dragged = True
        except WebDriverException as exp:
            is_dragged = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: drag reference prices grid column')
            return is_dragged

    def click_reference_prices_grid_export_to_excel_button(self):
        """
        Returning click reference prices grid export to excel button
        Implementing logging for click price overrides grid export to excel button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click reference prices grid export to excel button')
            self._price_page.click_reference_prices_grid_export_to_excel_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click reference prices grid export to excel button')
            return is_clicked

    def compare_grid_column_position_after_altering_for_reference_prices(self, source_column, destination_column, *column_name_list):
        """
        Returning compare grid column position after altering for reference prices
        Implementing logging for compare grid column position after altering for reference prices functionality
        :param source_column:
        :param destination_column:
        :param column_name_list:
        :return: True/False
        """
        is_compared = None
        try:
            self.logger.info('Start: compare grid column position after altering for reference prices')
            is_compared = self._price_page.compare_grid_column_position_after_altering_for_reference_prices(source_column, destination_column, column_name_list)
        except WebDriverException as exp:
            is_compared = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare grid column position after altering for reference prices')
            return is_compared

    def set_price_policies_udp_grid_settings(self, grid_settings):
        """
        Returning set price policies udp grid settings
        Implementing logging for set price policies udp grid settings functionality
        :param grid_settings:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set price policies udp grid settings')
            self._price_page.set_price_policies_udp_grid_settings(grid_settings)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set price policies udp grid settings')
            return is_set

    def get_all_rows_of_specific_column_from_price_policies_udp_grid(self, column_name):
        """
        Returning get all rows of specific column from price policies udp grid
        Implementing logging for get all rows of specific column from price policies udp grid functionality
        :param column_name:
        :return: all_row_data
        """
        all_row_data = None
        try:
            self.logger.info('Start: get all rows of specific column from price policies udp grid')
            all_row_data = self._price_page.get_all_rows_of_specific_column_from_price_policies_udp_grid(column_name)
        except WebDriverException as exp:
            all_row_data = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get all rows of specific column from price policies udp grid')
            return all_row_data

    def sort_price_policies_udp_grid_column(self, column_name, descending_order=False):
        """
        Returning sort price policies udp grid column 
        Implementing logging for sort price policies udp grid column functionality
        :param column_name:
        :param descending_order:
        :return: True/False
        """
        is_sorted = None
        try:
            self.logger.info('Start: sort price policies udp grid column')
            self._price_page.sort_price_policies_udp_grid_column(column_name, descending_order)
            is_sorted = True
        except WebDriverException as exp:
            is_sorted = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: sort price policies udp grid column')
            return is_sorted

    def get_price_policies_udp_grid_column_names_by_order(self):
        """
        Returning get price policies udp grid column names by order
        Implementing logging for get price policies udp grid column names by order functionality
        :return: column_name_list
        """
        column_name_list = None
        try:
            self.logger.info('Start: get price policies udp grid column names by order')
            column_name_list = self._price_page.get_price_policies_udp_grid_column_names_by_order()
        except WebDriverException as exp:
            column_name_list = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get price policies udp grid column names by order')
            return column_name_list

    def drag_price_policies_udp_grid_column(self, source_column, destination_column):
        """
        Returning drag price policies udp grid column
        Implementing logging for drag price policies udp grid column functionality
        :param source_column:
        :param destination_column:
        :return: True/False
        """
        is_dragged = None
        try:
            self.logger.info('Start: drag price policies udp grid column')
            self._price_page.drag_price_policies_udp_grid_column(source_column, destination_column)
            is_dragged = True
        except WebDriverException as exp:
            is_dragged = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: drag price policies udp grid column')
            return is_dragged

    def click_price_policies_udp_grid_export_to_excel_button(self):
        """
        Returning click price policies udp grid export to excel button
        Implementing logging for click price policies udp grid export to excel button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click price policies udp grid export to excel button')
            self._price_page.click_price_policies_udp_grid_export_to_excel_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click price policies udp grid export to excel button')
            return is_clicked

    def set_compound_reference_price_list(self, *compound_rpl_list):
        """
        Returning set compound reference price list
        Implementing logging for set compound reference price list functionality
        :param compound_rpl_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set compound reference price list')
            self._price_page.set_compound_reference_price_list(compound_rpl_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set compound reference price list')
            return is_set

    def compare_compound_reference_price_list_grid_first_row_data(self, compound_rpl):
        """
        Returning compare compound reference price list grid first row data
        Implementing logging for compare compound reference price list grid first row data functionality
        :param compound_rpl:
        :return: True/False
        """
        status = None
        try:
            self.logger.info('Start: set compound reference price list')
            status = self._price_page.compare_compound_reference_price_list_grid_first_row_data(compound_rpl)
        except WebDriverException as exp:
            status = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set compound reference price list')
            return status

    def set_compound_reference_price_list_grid_settings(self, grid_settings):
        """
        Returning set compound reference price list grid settings
        Implementing logging for set compound reference price list grid settings functionality
        :param grid_settings:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set compound reference price list grid settings')
            self._price_page.set_compound_reference_price_list_grid_settings(grid_settings)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set compound reference price list grid settings')
            return is_set

    def get_all_rows_of_specific_column_from_compound_reference_price_list_grid(self, column_name):
        """
        Returning get all rows of specific column from compound reference price list grid
        Implementing logging for get all rows of specific column from compound reference price list grid functionality
        :param column_name:
        :return: all_row_data
        """
        all_row_data = None
        try:
            self.logger.info('Start: get all rows of specific column from compound reference price list grid')
            all_row_data = self._price_page.get_all_rows_of_specific_column_from_compound_reference_price_list_grid(column_name)
        except WebDriverException as exp:
            all_row_data = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get all rows of specific column from compound reference price list grid')
            return all_row_data

    def sort_compound_reference_price_list_grid_column(self, column_name, descending_order=False):
        """
        Returning sort compound reference price list grid column
        Implementing logging for sort compound reference price list grid column functionality
        :param column_name:
        :param descending_order:
        :return: True/False
        """
        is_sorted = None
        try:
            self.logger.info('Start: sort compound reference price list grid column')
            self._price_page.sort_compound_reference_price_list_grid_column(column_name, descending_order)
            is_sorted = True
        except WebDriverException as exp:
            is_sorted = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: sort compound reference price list grid column')
            return is_sorted

    def get_compound_reference_price_list_grid_column_names_by_order(self):
        """
        Returning get compound reference price list grid column names by order
        Implementing logging for get compound reference price list grid column names by order functionality
        :return: column_name_list
        """
        column_name_list = None
        try:
            self.logger.info('Start: get compound reference price list grid column names by order')
            column_name_list = self._price_page.get_compound_reference_price_list_grid_column_names_by_order()
        except WebDriverException as exp:
            column_name_list = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get compound reference price list grid column names by order')
            return column_name_list

    def drag_compound_reference_price_list_grid_column(self, source_column, destination_column):
        """
        Returning drag compound reference price list grid column
        Implementing logging for drag compound reference price list grid column functionality
        :param source_column:
        :param destination_column:
        :return: True/False
        """
        is_dragged = None
        try:
            self.logger.info('Start: drag compound reference price list grid column')
            self._price_page.drag_compound_reference_price_list_grid_column(source_column, destination_column)
            is_dragged = True
        except WebDriverException as exp:
            is_dragged = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: drag compound reference price list grid column')
            return is_dragged

    def click_compound_reference_price_list_grid_export_to_excel_button(self):
        """
        Returning click compound reference price list grid export to excel button
        Implementing logging for click compound reference price list grid export to excel button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click compound reference price list grid export to excel button')
            self._price_page.click_compound_reference_price_list_grid_export_to_excel_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click compound reference price list grid export to excel button')
            return is_clicked

    def select_multiple_rows_from_compound_reference_price_list_grid(self):
        """
        Returning select multiple rows from compound reference price list grid
        Implementing logging for select multiple rows from compound reference price list grid functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select multiple rows from compound reference price list grid')
            self._price_page.select_multiple_rows_from_compound_reference_price_list_grid()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select multiple rows from compound reference price list grid')
            return is_selected

    def click_compound_reference_price_list_bulk_edit_button(self):
        """
        Returning click compound reference price list bulk edit button
        Implementing logging for click compound reference price list bulk edit button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click compound reference price list bulk edit button')
            self._price_page.click_compound_reference_price_list_bulk_edit_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click compound reference price list bulk edit button')
            return is_clicked

    def click_origin_reference_price_list_link(self):
        """
        Returning click origin reference price list link
        Implementing logging for click origin reference price list link functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click origin reference price list link')
            self._price_page.click_origin_reference_price_list_link()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click origin reference price list link')
            return is_clicked

    def get_all_rows_of_specific_column_from_origin_reference_price_list_grid(self, column_name):
        """
        Returning get all rows of specific column from origin reference price list grid
        Implementing logging for get all rows of specific column from origin reference price list grid functionality
        :param column_name:
        :return: all_row_data
        """
        all_row_data = None
        try:
            self.logger.info('Start: get all rows of specific column from origin reference price list grid')
            all_row_data = self._price_page.get_all_rows_of_specific_column_from_origin_reference_price_list_grid(column_name)
        except WebDriverException as exp:
            all_row_data = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get all rows of specific column from origin reference price list grid')
            return all_row_data

    def sort_origin_reference_price_list_grid_column(self, column_name, descending_order=False):
        """
        Returning sort origin reference price list grid column
        Implementing logging for sort origin reference price list grid column functionality
        :param column_name:
        :param descending_order:
        :return: True/False
        """
        is_sorted = None
        try:
            self.logger.info('Start: sort origin reference price list grid column')
            self._price_page.sort_origin_reference_price_list_grid_column(column_name, descending_order)
            is_sorted = True
        except WebDriverException as exp:
            is_sorted = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: sort origin reference price list grid column')
            return is_sorted

    def get_origin_reference_price_list_grid_column_names_by_order(self):
        """
        Returning get origin reference price list grid column names by order
        Implementing logging for get origin reference price list grid column names by order functionality
        :return: column_name_list
        """
        column_name_list = None
        try:
            self.logger.info('Start: get origin reference price list grid column names by order')
            column_name_list = self._price_page.get_origin_reference_price_list_grid_column_names_by_order()
        except WebDriverException as exp:
            column_name_list = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get origin reference price list grid column names by order')
            return column_name_list

    def drag_origin_reference_price_list_grid_column(self, source_column, destination_column):
        """
        Returning drag origin reference price list grid column
        Implementing logging for drag origin reference price list grid column functionality
        :param source_column:
        :param destination_column:
        :return: True/False
        """
        is_dragged = None
        try:
            self.logger.info('Start: drag origin reference price list grid column')
            self._price_page.drag_origin_reference_price_list_grid_column(source_column, destination_column)
            is_dragged = True
        except WebDriverException as exp:
            is_dragged = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: drag origin reference price list grid column')
            return is_dragged

    def set_origin_reference_price_list_grid_settings(self, grid_settings):
        """
        Returning set origin reference price list grid settings
        Implementing logging for set origin reference price list grid settings functionality
        :param grid_settings:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set origin reference price list grid settings')
            self._price_page.set_origin_reference_price_list_grid_settings(grid_settings)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set origin reference price list grid settings')
            return is_set

    def click_origin_reference_price_list_grid_export_to_excel_button(self):
        """
        Returning click origin reference price list grid export to excel button
        Implementing logging for click origin reference price list grid export to excel button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click origin reference price list grid export to excel button')
            self._price_page.click_origin_reference_price_list_grid_export_to_excel_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click origin reference price list grid export to excel button')
            return is_clicked

    def click_customer_price_exception_request_link(self):
        """
        Returning click customer price exception request link
        Implementing logging for click customer price exception request link functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click customer price exception request link')
            self._price_page.click_customer_price_exception_request_link()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click customer price exception request link')
            return is_clicked

    def set_customer_price_exception_request_grid_settings(self, grid_settings):
        """
        Returning set customer price exception request grid settings
        Implementing logging for set customer price exception request grid settings functionality
        :param grid_settings:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set customer price exception request grid settings')
            self._price_page.set_customer_price_exception_request_grid_settings(grid_settings)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set customer price exception request grid settings')
            return is_set

    def get_all_rows_of_specific_column_from_customer_price_exception_request_grid(self, column_name):
        """
        Returning get all rows of specific column from customer price exception request grid
        Implementing logging for get all rows of specific column from customer price exception request grid functionality
        :param column_name:
        :return: all_row_data
        """
        all_row_data = None
        try:
            self.logger.info('Start: get all rows of specific column from customer price exception request grid')
            all_row_data = self._price_page.get_all_rows_of_specific_column_from_customer_price_exception_request_grid(column_name)
        except WebDriverException as exp:
            all_row_data = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get all rows of specific column from customer price exception request grid')
            return all_row_data

    def sort_customer_price_exception_request_grid_column(self, column_name, descending_order=False):
        """
        Returning sort customer price exception request grid column
        Implementing logging for sort customer price exception request grid column functionality
        :param column_name:
        :param descending_order:
        :return: True/False
        """
        is_sorted = None
        try:
            self.logger.info('Start: sort customer price exception request grid column')
            self._price_page.sort_customer_price_exception_request_grid_column(column_name, descending_order)
            is_sorted = True
        except WebDriverException as exp:
            is_sorted = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: sort customer price exception request grid column')
            return is_sorted

    def get_customer_price_exception_request_grid_column_names_by_order(self):
        """
        Returning get customer price exception request grid column names by order
        Implementing logging for get customer price exception request grid column names by order functionality
        :return: column_name_list
        """
        column_name_list = None
        try:
            self.logger.info('Start: get customer price exception request grid column names by order')
            column_name_list = self._price_page.get_customer_price_exception_request_grid_column_names_by_order()
        except WebDriverException as exp:
            column_name_list = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get customer price exception request grid column names by order')
            return column_name_list

    def drag_customer_price_exception_request_grid_column(self, source_column, destination_column):
        """
        Returning drag customer price exception request grid column
        Implementing logging for drag customer price exception request grid column functionality
        :param source_column:
        :param destination_column:
        :return: True/False
        """
        is_dragged = None
        try:
            self.logger.info('Start: drag customer price exception request grid column')
            self._price_page.drag_customer_price_exception_request_grid_column(source_column, destination_column)
            is_dragged = True
        except WebDriverException as exp:
            is_dragged = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: drag customer price exception request grid column')
            return is_dragged

    def click_customer_price_exception_request_grid_export_to_excel_button(self):
        """
        Returning click customer price exception request export to excel button
        Implementing logging for click customer price exception request grid export to excel button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click customer price exception request grid export to excel button')
            self._price_page.click_customer_price_exception_request_grid_export_to_excel_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click customer price exception request grid export to excel button')
            return is_clicked

    def select_multiple_rows_from_customer_price_exception_request_grid(self):
        """
        Returning select multiple rows from customer price exception request grid
        Implementing logging for select multiple rows from customer price exception request grid functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select multiple rows from customer price exception request grid')
            self._price_page.select_multiple_rows_from_customer_price_exception_request_grid()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select multiple rows from customer price exception request grid')
            return is_selected

    def click_customer_price_exception_request_grid_bulk_edit_button(self):
        """
        Returning click customer price exception request grid bulk edit button
        Implementing logging for click customer price exception request grid bulk edit button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click customer price exception request grid bulk edit button')
            self._price_page.click_customer_price_exception_request_grid_bulk_edit_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click customer price exception request grid bulk edit button')
            return is_clicked

    def select_multiple_rows_from_origin_reference_price_list_grid(self):
        """
        Returning select multiple rows from origin reference price list grid
        Implementing logging for select multiple rows from origin reference price list grid functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select multiple rows from origin reference price list grid')
            self._price_page.select_multiple_rows_from_origin_reference_price_list_grid()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select multiple rows from origin reference price list grid')
            return is_selected

    def click_origin_reference_price_list_grid_bulk_edit_button(self):
        """
        Returning click origin reference price list grid bulk edit button
        Implementing logging for click origin reference price list grid bulk edit button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click origin reference price list grid bulk edit button')
            self._price_page.click_origin_reference_price_list_grid_bulk_edit_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click origin reference price list grid bulk edit button')
            return is_clicked

    def set_reference_price_list(self, dropdown_item):
        """
        Returning set reference price list
        Implementing logging for set reference price list functionality
        :param dropdown_item:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set reference price list')
            if dropdown_item != "":
                self._price_page.set_reference_price_list(dropdown_item)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set reference price list')
            return is_set

    def set_compound_rpl_begin_date(self):
        """
        Returning set compound rpl begin date
        Implementing logging for set compound rpl begin date functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set compound rpl begin date')
            self._price_page.set_compound_rpl_begin_date()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set compound rpl begin date')
            return is_set

    def set_origin_reference_price_list(self, dropdowm_item):
        """
        Returning set origin reference price list
        Implementing logging for set origin reference price list functionality
        :param dropdowm_item:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set origin reference price list')
            self._price_page.set_origin_reference_price_list(dropdowm_item)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set origin reference price list')
            return is_set

    def click_add_new_origin_rpl_button(self):
        """
        Returning click add new origin rpl button
        Implementing logging for click add new origin rpl button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click add new origin rpl button')
            self._price_page.click_add_new_origin_rpl_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click add new origin rpl button')
            return is_clicked

    def set_add_new_origin_rpl_destination(self, dropdowm_item):
        """
        Returning set add new origin rpl destination
        Implementing logging for set add new origin rpl destination functionality
        :param dropdowm_item:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set add new origin rpl destination')
            self._price_page.set_add_new_origin_rpl_destination(dropdowm_item)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set add new origin rpl destination')
            return is_set

    def set_add_new_origin_rpl_origin_set(self, dropdowm_item):
        """
        Returning set add new origin rpl origin set
        Implementing logging for set add new origin rpl origin set functionality
        :param dropdowm_item:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set add new origin rpl origin set')
            self._price_page.set_add_new_origin_rpl_origin_set(dropdowm_item)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set add new origin rpl origin set')
            return is_set

    def set_add_new_origin_rpl_rating_method(self, dropdowm_item):
        """
        Returning set add new origin rpl rating method
        Implementing logging for set add new origin rpl rating method functionality
        :param dropdowm_item:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set add new origin rpl rating method')
            self._price_page.set_add_new_origin_rpl_rating_method(dropdowm_item)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set add new origin rpl rating method')
            return is_set

    def click_add_new_origin_rpl_page_search_button(self):
        """
        Returning click add new origin rpl page search button
        Implement logging for click add new origin rpl page search button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click add new origin rpl page search button')
            self._price_page.click_add_new_origin_rpl_page_search_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click add new origin rpl page search button')
            return is_clicked

    def set_add_new_origin_rpl_rate_values(self):
        """
        Returning set add new origin rpl rate values
        Implementing logging for set add new origin rpl rate values functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set add new origin rpl rate values')
            self._price_page.set_add_new_origin_rpl_rate_values()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set add new origin rpl rate values')
            return is_set

    def select_origin_reference_price_list_grid_row_checkbox(self):
        """
        Returning select origin reference price list grid row checkbox
        Implement logging for select origin reference price list grid row checkbox functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select origin reference price list grid row checkbox')
            self._price_page.select_origin_reference_price_list_grid_row_checkbox()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select origin reference price list grid row checkbox')
            return is_selected

    def click_origin_rpl_delete_button(self):
        """
        Returning click origin rpl delete button
        Implementing logging for click origin rpl delete button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click origin rpl delete button')
            self._price_page.click_origin_rpl_delete_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click origin rpl delete button')
            return is_clicked

    def click_origin_rpl_save_button(self):
        """
        Returning click origin rpl save button
        Implementing logging for click origin rpl save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click origin rpl save button')
            self._price_page.click_origin_rpl_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click origin rpl save button')
            return is_clicked

    def select_cost_policies_grid_first_row_checkbox(self):
        """
        Returning select cost policies grid first row checkbox
        Implementing logging for select cost policies grid first row checkbox functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select cost policies grid first row checkbox')
            self._price_page.select_cost_policies_grid_first_row_checkbox()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select cost policies grid first row checkbox')
            return is_selected

    def is_cost_policy_preselected(self):
        """
        Returning is cost policy preselected
        Implementing logging for is cost policy preselected functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: is cost policy preselected')
            is_selected = self._price_page.is_cost_policy_preselected()
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is cost policy preselected')
            return is_selected

    def is_cost_policy_preselected_in_upload_costs(self):
        """
        Returning is cost policy preselected in upload costs
        Implementing logging for is cost policy preselected in upload costs functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: is cost policy preselected in upload costs')
            is_selected = self._price_page.is_cost_policy_preselected_in_upload_costs()
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is cost policy preselected in upload costs')
            return is_selected

    def is_apply_custom_rules_present(self):
        """
        Returning is apply custom rules present
        Implementing logging for is apply custom rules present functionality
        :return: True/False
        """
        is_present = None
        try:
            self.logger.info('Start: is apply custom rules present')
            is_present = self._price_page.is_apply_custom_rules_present()
        except WebDriverException as exp:
            is_present = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is apply custom rules present')
            return is_present

    def click_reference_prices_save_changes_button_without_custom_rule(self):
        """
        Returning click reference prices save changes button without custom rule
        Implementing logging for click reference prices save changes button without custom rule functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click reference prices save changes button without custom rule')
            self._price_page.click_reference_prices_save_changes_button_without_custom_rule()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click reference prices save changes button without custom rule')
            return is_clicked

    def click_custom_rule_yes_radio_button(self):
        """
        Returning click custom rule yes radio button
        Implementing logging for click custom rule yes radio button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click custom rule yes radio button')
            self._price_page.click_custom_rule_yes_radio_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click custom rule yes radio button')
            return is_clicked

    def set_begin_date_with_future_date(self):
        """
        Returning set begin date with future date
        Implement logging for set begin date with future date functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set begin date with future date')
            self._price_page.set_begin_date_with_future_date()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set begin date with future date')
            return is_set

    def set_cost_forecast_report_route_class(self, *route_class_list):
        """
        Returning set cost forecast report route class
        Implementing logging for set cost forecast report route class functionality
        :param route_class_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set cost forecast report route class')
            self._price_page.set_cost_forecast_report_route_class(route_class_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set cost forecast report route class')
            return is_set

    def set_cost_forecast_report_call_type(self, *call_type_list):
        """
        Returning set cost forecast report call type
        Implementing logging for set cost forecast report call type functionality
        :param call_type_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set cost forecast report call type')
            self._price_page.set_cost_forecast_report_call_type(call_type_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set cost forecast report call type')
            return is_set

    def set_cost_forecast_report_routing_destination(self, routing_destination_prefix):
        """
        Returning set cost forecast report routing destination
        Implementing logging for set cost forecast report routing destination functionality
        :param routing_destination_prefix:
        :return: True/False
        """
        routing_destination = None
        try:
            self.logger.info('Start: set cost forecast report routing destination')
            routing_destination = self._price_page.set_cost_forecast_report_routing_destination(routing_destination_prefix)
        except WebDriverException as exp:
            routing_destination = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set cost forecast report routing destination')
            return routing_destination

    def get_cost_forecast_report_parameters_text(self, parameter_name):
        """
        Returning get cost forecast report parameters text
        Implementing logging for get cost forecast report parameters text functionality
        :param parameter_name:
        :return: text
        """
        text = None
        try:
            self.logger.info('Start: get cost forecast report parameters text')
            text = self._price_page.get_cost_forecast_report_parameters_text(parameter_name)
        except WebDriverException as exp:
            text = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get cost forecast report parameters text')
            return text

    def click_country_groups_link(self):
        """
        Returning click country groups link
        Implementing logging for click country groups link functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click country groups link')
            self._price_page.click_country_groups_link()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click country groups link')
            return is_clicked

    def click_create_country_group_button(self):
        """
        Returning click create country group button
        Implementing logging for click create country group button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click create country group button')
            self._price_page.click_create_country_group_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click create country group button')
            return is_clicked

    def set_country_group_scope(self, country_group_scope):
        """
        Returning set country group scope
        Implementing logging for set country group scope functionality
        :param country_group_scope:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set country group scope')
            self._price_page.set_country_group_scope(country_group_scope)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set country group scope')
            return is_set

    def set_wholesale_solution_type(self, wholesale_solution_type):
        """
        Returning set wholesale solution type
        Implementing logging for set wholesale solution type functionality
        :param wholesale_solution_type:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set wholesale solution type')
            self._price_page.set_wholesale_solution_type(wholesale_solution_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set wholesale solution type')
            return is_set

    def set_country_group(self, country_group_prefix):
        """
        Returning set country group
        Implementing logging for set country group functionality
        :param country_group_prefix:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set country group')
            self._price_page.set_country_group(country_group_prefix)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set country group')
            return is_set

    def move_available_countries_to_destination(self, *countries_list):
        """
        Returning move available countries to destination
        Implementing logging for move available countries to destination functionality
        :param countries_list:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: move available countries to destination')
            self._price_page.move_available_countries_to_destination(countries_list)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: move available countries to destination')
            return is_selected

    def click_create_country_group_save_button(self):
        """
        Returning click create country group save button
        Implementing logging for click create country group save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click create country group save button')
            self._price_page.click_create_country_group_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click create country group save button')
            return is_clicked

    def get_created_country_group_name(self):
        """
        Returning get created country group name
        Implementing logging for get created country group name functionality
        :return: created cost policy name
        """
        try:
            self.logger.info('Start: get created country group name')
            return self._price_page.get_created_country_group_name()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get created country group name')

    def filter_country_group_management_grid_column(self, country_group_column_name, country_group_name):
        """
        Returning filter country group management grid column
        Implementing logging for filter country group management grid column functionality
        :param country_group_column_name:
        :param country_group_name:
        :return: True/False
        """
        is_filtered = None
        try:
            self.logger.info('Start: filter country group management grid column')
            self._price_page.filter_country_group_management_grid_column(country_group_column_name, country_group_name)
            is_filtered = True
        except WebDriverException as exp:
            is_filtered = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: filter country group management grid column')
            return is_filtered

    def select_country_group_management_grid_first_row_checkbox(self):
        """
        Returning select country group management grid first row checkbox
        Implementing logging for select country group management grid first row checkbox functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select country group management grid first row checkbox')
            self._price_page.select_country_group_management_grid_first_row_checkbox()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select country group management grid first row checkbox')
            return is_selected

    def click_country_group_management_delete_button(self):
        """
        Returning click country group management delete button
        Implementing logging for click country group management delete button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click country group management delete button')
            self._price_page.click_country_group_management_delete_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click country group management delete button')
            return is_clicked

    def is_the_created_country_group_deleted(self):
        """
        Returning is the created country group deleted
        Implementing logging for is the created country group deleted functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is the created country group deleted')
            return self._price_page.is_the_created_country_group_deleted()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is the created country group deleted')

    def set_generation_type(self, generation_type):
        """
        Returning set generation type
        Implementing logging for set generation type functionality
        :param generation_type:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set generation type')
            self._price_page.set_generation_type(generation_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set generation type')
            return is_set

    def is_reference_prices_grid_first_row_status_approved(self):
        """
        Returning is reference prices grid first row status approved
        Implementing logging for is reference prices grid first row status approved functionality
        :return: True/False
        """
        is_approved = None
        try:
            self.logger.info('Start: is reference prices grid first row status approved')
            is_approved = self._price_page.is_reference_prices_grid_first_row_status_approved()
        except WebDriverException as exp:
            is_approved = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is reference prices grid first row status approved')
            return is_approved

    def get_completed_status_green_button_jobs_count(self):
        """
        Returning get completed status green button jobs count
        Implementing logging for get completed status green button jobs count functionality
        :return: grid_row_data
        """
        try:
            self.logger.info('Start: get completed status green button jobs count')
            return self._price_page.get_completed_status_green_button_jobs_count()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get completed status green button jobs count')

    def compare_completed_status_green_buttons_jobs_count_after_upload(self):
        """
        Returning compare completed status green button jobs count after upload
        Implementing logging for compare completed status green button jobs count after upload functionality
        :return: grid_row_data
        """
        try:
            self.logger.info('Start: compare completed status green button jobs count after upload')
            return self._price_page.compare_completed_status_green_buttons_jobs_count_after_upload()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare completed status green button jobs count after upload')

    def get_failed_status_red_button_jobs_count(self):
        """
        Returning get failed status red button jobs count
        Implementing logging for get failed status red button jobs count functionality
        :return: grid_row_data
        """
        try:
            self.logger.info('Start: get failed status red button jobs count')
            return self._price_page.get_failed_status_red_button_jobs_count()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get failed status red button jobs count')

    def compare_failed_status_red_buttons_jobs_count_after_upload(self):
        """
        Returning compare failed status red button jobs count after upload
        Implementing logging for compare failed status red button jobs count after upload functionality
        :return: grid_row_data
        """
        try:
            self.logger.info('Start: compare failed status red button jobs count after upload')
            return self._price_page.compare_failed_status_red_buttons_jobs_count_after_upload()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare failed status red button jobs count after upload')

    def click_price_override_browse_button(self):
        """
        Returning click price override browse button
        Implementing logging for click price override browse button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click price override browse button')
            self._price_page.click_price_override_browse_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click price override browse button')
            return is_clicked

    def click_price_override_upload_button(self):
        """
        Returning click price override upload button
        Implementing logging for click price override upload button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click price override upload button')
            self._price_page.click_price_override_upload_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click price override upload button')
            return is_clicked

    def click_price_policy_grid_first_row_checkbox(self):
        """
        Returning click price policy grid first row checkbox
        Implementing logging for click price policy grid first row checkbox functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click price policy grid first row checkbox')
            self._price_page.click_price_policy_grid_first_row_checkbox()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click price policy grid first row checkbox')
            return is_clicked

    def get_completed_status_green_button_jobs_count_for_reference_price(self):
        """
        Returning get completed status green button jobs count
        Implementing logging for get completed status green button jobs count functionality
        :return: grid_row_data
        """
        try:
            self.logger.info('Start: get completed status green button jobs count')
            return self._price_page.get_completed_status_green_button_jobs_count_for_reference_price()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get completed status green button jobs count')

    def compare_completed_status_green_buttons_jobs_count_for_reference_price(self):
        """
        Returning compare completed status green button jobs count after upload
        Implementing logging for compare completed status green button jobs count after upload functionality
        :return: grid_row_data
        """
        try:
            self.logger.info('Start: compare completed status green button jobs count after upload')
            return self._price_page.compare_completed_status_green_buttons_jobs_count_for_reference_price()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare completed status green button jobs count after upload')

    def get_failed_status_red_button_jobs_count_for_reference_price(self):
        """
        Returning get failed status red button jobs count
        Implementing logging for get failed status red button jobs count functionality
        :return: grid_row_data
        """
        try:
            self.logger.info('Start: get failed status red button jobs count')
            return self._price_page.get_failed_status_red_button_jobs_count_for_reference_price()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get failed status red button jobs count')

    def compare_failed_status_red_buttons_jobs_count_for_reference_price(self):
        """
        Returning compare failed status red button jobs count after upload
        Implementing logging for compare failed status red button jobs count after upload functionality
        :return: grid_row_data
        """
        try:
            self.logger.info('Start: compare failed status red button jobs count after upload')
            return self._price_page.compare_failed_status_red_buttons_jobs_count_for_reference_price()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare failed status red button jobs count after upload')

    def is_specific_system_parameter_for_create_destination_formula_present(self, system_parameter):
        """
        Returning is specific system parameter for create destination formula present
        Implementing logging for is specific system parameter for create destination formula present functionality
        :param system_parameter:
        :return: grid_row_data
        """
        try:
            self.logger.info('Start: is specific system parameter for create destination formula present')
            return self._price_page.is_specific_system_parameter_for_create_destination_formula_present(system_parameter)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is specific system parameter for create destination formula present')

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
            self._price_page.close_current_pop_up(pop_up_name)
            is_closed = True
        except WebDriverException as exp:
            is_closed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: close current pop up')
            return is_closed

    def click_generate_reference_prices_link(self):
        """
        Returning click generate reference prices link
        Implementing logging for click generate reference prices link functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click generate reference prices link')
            self._price_page.click_generate_reference_prices_link()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click generate reference prices link')
            return is_clicked

    def is_specific_reference_price_policy_present_in_the_source(self, price_policy):
        """
        Returning is specific reference price policy present in the source
        Implementing logging for is specific reference price policy present in the source functionality
        :param price_policy:
        :return: True/False
        """
        try:
            self.logger.info('Start: is specific reference price policy present in the source')
            return self._price_page.is_specific_reference_price_policy_present_in_the_source(price_policy)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is specific reference price policy present in the source')

    def is_specific_destination_present_in_the_source(self, destination):
        """
        Returning is specific destination present in the source
        Implementing logging for is specific destination present in the source functionality
        :param destination:
        :return: True/False
        """
        try:
            self.logger.info('Start: is specific destination present in the source')
            return self._price_page.is_specific_destination_present_in_the_source(destination)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is specific destination present in the source')

    def is_specific_reference_price_policy_not_present_in_the_source(self, price_policy):
        """
        Returning is specific reference price policy not present in the source
        Implementing logging for is specific reference price policy not present in the source functionality
        :param price_policy:
        :return: True/False
        """
        try:
            self.logger.info('Start: is specific reference price policy not present in the source')
            return self._price_page.is_specific_reference_price_policy_not_present_in_the_source(price_policy)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is specific reference price policy not present in the source')

    def is_specific_destination_not_present_in_the_source(self, destination):
        """
        Returning is specific destination not present in the source
        Implementing logging for is specific destination not present in the source functionality
        :param destination:
        :return: True/False
        """
        try:
            self.logger.info('Start: is specific destination not present in the source')
            return self._price_page.is_specific_destination_not_present_in_the_source(destination)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is specific destination not present in the source')

    def is_expected_country_loaded_in_country_column(self, column_value):
        """
        Returning is expected country loaded in country column
        Implementing logging for is expected country loaded in country column functionality
        :param column_value:
        :return: True/False
        """
        is_loaded = None
        try:
            self.logger.info('Start: is expected country loaded in country column')
            is_loaded = self._price_page.is_expected_country_loaded_in_country_column(column_value)
        except WebDriverException as exp:
            is_loaded = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is expected country loaded in country column')
            return is_loaded

    def click_country_group_management_grid_inline_action_button(self, country_group):
        """
        Returning click country group management grid inline action button
        Implementing logging for click country group management grid inline action button functionality
        :param country_group:
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click country group management grid inline action button')
            self._price_page.click_country_group_management_grid_inline_action_button(country_group)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click country group management grid inline action button')
            return is_clicked

    def is_country_group_scope_dropdown_control_disabled(self):
        """
        Returning is country group scope dropdown control disabled
        Implementing logging for is country group scope dropdown control disabled functionality
        :return: True/False
        """
        is_disabled = None
        try:
            self.logger.info('Start: is country group scope dropdown control disabled')
            is_disabled = self._price_page.is_country_group_scope_dropdown_control_disabled()
        except WebDriverException as exp:
            is_disabled = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is country group scope dropdown control disabled')
            return is_disabled

    def is_wholesale_solution_type_kendo_dropdown_control_disabled(self):
        """
        Returning is wholeslae solution type kendo dropdown control disabled
        Implementing logging for is wholeslae solution type kendo dropdown control disabled functionality
        :return: True/False
        """
        is_disabled = None
        try:
            self.logger.info('Start: is wholeslae solution type kendo dropdown control disabled')
            is_disabled = self._price_page.is_wholesale_solution_type_kendo_dropdown_control_disabled()
        except WebDriverException as exp:
            is_disabled = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is wholeslae solution type kendo dropdown control disabled')
            return is_disabled

    def is_assigned_country_present(self, assigned_country):
        """
        Returning is assigned country present
        Implementing logging for is assigned country present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is assigned country present')
            return self._price_page.is_assigned_country_present(assigned_country)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is assigned country present')

    def unassign_all_country(self):
        """
        Returning unassign all country
        Implementing logging for unassign all country functionality
        :return:
        """
        is_unassigned = None
        try:
            self.logger.info('Start: unassign all country')
            self._price_page.unassign_all_country()
            is_unassigned = True
        except WebDriverException as exp:
            is_unassigned = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: unassign all country')
            return is_unassigned

    def click_country_group_selection_checkbox(self, country_group):
        """
        Returning click country group selection checkbox
        Implementing logging for click country group selection checkbox functionality
        :param country_group:
        :return:
        """
        is_clicked = None
        try:
            self.logger.info('Start: click country group selection checkbox')
            self._price_page.click_country_group_selection_checkbox(country_group)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click country group selection checkbox')
            return is_clicked

    def set_country_group_management_grid_settings(self, grid_settings):
        """
        Returning set country group management grid settings
        Implementing logging for set country group management grid settings functionality
        :param grid_settings:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set country group management grid settings')
            self._price_page.set_country_group_management_grid_settings(grid_settings)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set country group management grid settings')
            return is_set

    def get_all_rows_of_specific_column_from_country_group_management_grid(self, column_name):
        """
        Returning get all rows of specific column from country group management grid
        Implementing logging for get all rows of specific column from country group management grid functionality
        :param column_name:
        :return: all_row_data
        """
        all_row_data = None
        try:
            self.logger.info('Start: get all rows of specific column from country group management grid')
            all_row_data = self._price_page.get_all_rows_of_specific_column_from_country_group_management_grid(column_name)
        except WebDriverException as exp:
            all_row_data = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get all rows of specific column from country group management grid')
            return all_row_data

    def sort_country_group_management_grid_column(self, column_name, descending_order=False):
        """
        Returning sort country group management grid column
        Implementing logging for sort country group management grid column functionality
        :param column_name:
        :param descending_order:
        :return: True/False
        """
        is_sorted = None
        try:
            self.logger.info('Start: sort country group management grid column')
            self._price_page.sort_country_group_management_grid_column(column_name, descending_order)
            is_sorted = True
        except WebDriverException as exp:
            is_sorted = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: sort country group management grid column')
            return is_sorted

    def click_country_group_management_grid_export_to_excel_button(self):
        """
        Returning click country group management grid export to excel button
        Implementing logging for click country group management grid export to excel button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click country groups management grid export to excel button')
            self._price_page.click_country_group_management_grid_export_to_excel_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click country groups management grid export to excel button')
            return is_clicked

    def get_available_country(self):
        """
        Returning get available country
        Implementing logging for get available country functionality
        :return: available country
        """
        try:
            self.logger.info('Start: get available country')
            return self._price_page.get_available_country()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get available country')

    def select_country_group_grid_inline_action_item(self, inline_item):
        """
        Returning select country group grid inline item
        Implementing logging for select country group grid inline item functionality
        :param inline_item:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select country group grid inline item')
            self._price_page.select_country_group_grid_inline_action_item(inline_item)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select country group grid inline item')
            return is_selected

    def clear_country_group_grid_column_filter(self, column_name):
        """
        Returning clear country group grid column filter
        Implementing logging for clear country group grid column filter functionality
        :param column_name:
        :return: True/False
        """
        is_cleared = None
        try:
            self.logger.info('Start: clear country group grid column filter')
            self._price_page.clear_country_group_grid_column_filter(column_name)
            is_cleared = True
        except WebDriverException as exp:
            is_cleared = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: clear country group grid column filter')
            return is_cleared

    def set_display_grid(self, grid_name):
        """
        Returning set display grid
        Implement logging for set display grid functionality
        :param grid_name:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set display grid')
            self._price_page.set_display_grid(grid_name)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set display grid')
            return is_set

    def click_cancel_button(self):
        """
        Returning click cancel button
        Implementing logging for click cancel button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click cancel button')
            self._price_page.click_cancel_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click cancel button')
            return is_clicked

    def get_cost_elements_grid_cost_element_column_values(self):
        """
        Returning get cost elements grid cost element column values
        Implementing logging for get cost elements grid cost element column values functionality
        :return: True/False
        """
        is_got = None
        try:
            self.logger.info('Start: get cost elements grid cost element column values')
            self._price_page.get_cost_elements_grid_cost_element_column_values()
            is_got = True
        except WebDriverException as exp:
            is_got = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get cost elements grid cost element column values')
            return is_got

    def get_cost_elements_grid_value_column_values(self):
        """
        Returning get cost elements grid value column values
        Implementing logging for get cost elements grid value column values functionality
        :return: cost_elements_grid_value_column_values
        """
        try:
            self.logger.info('Start: get cost elements grid value column values')
            return self._price_page.get_cost_elements_grid_value_column_values()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get cost elements grid value column values')

    def filter_cost_forecast_reports_grid_column(self, column_name, column_value):
        """
        Returning filter cost forecast reports grid column
        Implementing logging for filter cost forecast reports grid column functionality
        :param column_name:
        :param column_value:
        :return: True/False
        """
        is_filtered = None
        try:
            self.logger.info('Start: filter cost forecast reports grid column')
            self._price_page.filter_cost_forecast_reports_grid_column(column_name, column_value)
            is_filtered = True
        except WebDriverException as exp:
            is_filtered = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: filter cost forecast reports grid column')
            return is_filtered

    def set_cost_forecast_elements_report_routing_destination(self, routing_destination):
        """
        Returning set cost forecast elements report routing destination
        Implement logging for set cost forecast elements report routing destination functionality
        :param routing_destination:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set cost forecast elements report routing destination')
            self._price_page.set_cost_forecast_elements_report_routing_destination(routing_destination)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set cost forecast elements report routing destination')
            return is_set

    def get_cost_forecast_element_reports_grid_row_details(self):
        """
        Returning get cost forecast element reports grid row details
        Implementing logging for get cost forecast element reports grid row details functionality
        :return: cost_forecast_elements_reports_grid_row_details
        """
        try:
            self.logger.info('Start: get cost forecast element reports grid row details')
            return self._price_page.get_cost_forecast_element_reports_grid_row_details()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get cost forecast element reports grid row details')

    def click_price_exceptions_import_button(self):
        """
        Returning click price exceptions import button
        Implementing logging for click price exceptions import button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click price exceptions import button')
            self._price_page.click_price_exceptions_import_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click price exceptions import button')
            return is_clicked

    def get_completed_status_green_button_jobs_count_for_price_exception_request(self):
        """
        Returning get completed status green button jobs count for price exception request
        Implementing logging for get completed status green button jobs count for price exception request functionality
        :return: grid_row_data
        """
        try:
            self.logger.info('Start: get completed status green button jobs count for price exception request')
            return self._price_page.get_completed_status_green_button_jobs_count_for_price_exception_request()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get completed status green button jobs count for price exception request')

    def compare_completed_status_green_buttons_jobs_count_for_price_exception_request(self):
        """
        Returning compare completed status green button jobs count after upload for price exception request
        Implementing logging for compare completed status green button jobs count after upload for price exception request functionality
        :return: grid_row_data
        """
        try:
            self.logger.info('Start: compare completed status green button jobs count after upload for price exception request')
            return self._price_page.compare_completed_status_green_buttons_jobs_count_for_price_exception_request()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare completed status green button jobs count after upload for price exception request')

    def click_price_exception_request_upload_button(self):
        """
        Returning click price exception request upload button
        Implementing logging for click price exception request upload button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click price exception request upload button')
            self._price_page.click_price_exception_request_upload_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click price exception request upload button')
            return is_clicked

    def is_price_exception_request_export_button_present(self):
        """
        Returning is price exception request export button present
        Implementing logging for is price exception request export button present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is price exception request export button present')
            return self._price_page.is_price_exception_request_export_button_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is price exception request export button present')

    def click_failed_status_red_button(self):
        """
        Returning click failed status red button
        Implementing logging for click failed status red button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click failed status red button')
            self._price_page.click_failed_status_red_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click failed status red button')
            return is_clicked

    def click_failed_upload_info_icon(self):
        """
        Returning click failed upload info icon
        Implementing logging for click failed upload info icon functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click failed upload info icon')
            self._price_page.click_failed_upload_info_icon()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click failed upload info icon')
            return is_clicked

    def compare_failed_upload_info(self, info_message):
        """
        Returning compare failed upload info
        Implementing logging for compare failed upload info functionality
        :param info_message:
        :return: True/False
        """
        is_compared = None
        try:
            self.logger.info('Start: compare failed upload info')
            is_compared = self._price_page.compare_failed_upload_info(info_message)
        except WebDriverException as exp:
            is_compared = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare failed upload info')
            return is_compared

    def sort_jobs_grid_column(self, column_name, descending_order=False):
        """
        Returning sort jobs grid column
        Implementing logging for sort jobs grid column functionality
        :param column_name:
        :param descending_order:
        :return: True/False
        """
        is_sorted = None
        try:
            self.logger.info('Start: sort jobs grid column')
            self._price_page.sort_jobs_grid_column(column_name, descending_order)
            is_sorted = True
        except WebDriverException as exp:
            is_sorted = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: sort jobs grid column')
            return is_sorted

    def set_jobs_grid_settings(self, grid_settings):
        """
        Returning set jobs grid settings
        Implementing logging for set jobs grid settings functionality
        :param grid_settings:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set jobs grid settings')
            self._price_page.set_jobs_grid_settings(grid_settings)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set jobs grid settings')
            return is_set

    def select_cost_policy_formula_grid_multiple_rows(self):
        """
        Returning select cost policy formula grid multiple rows
        Implement logging for select cost policy formula grid multiple rows functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select cost policy formula grid multiple rows')
            self._price_page.select_cost_policy_formula_grid_multiple_rows()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select cost policy formula grid multiple rows')
            return is_selected

    def is_country_selection_criteria_field_present_in_crpl_page(self):
        """
        Returning is country selection criteria field present in crpl page
        Implementing logging for is country selection criteria field present in crpl page functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is country selection criteria field present in crpl page')
            return self._price_page.is_country_selection_criteria_field_present_in_crpl_page()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is country selection criteria field present in crpl page')

    def is_country_column_present_in_crpl_page(self):
        """
        Returning is country column present in crpl page
        Implementing logging for is country column present in crpl page functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is country column present in crpl page')
            return self._price_page.is_country_column_present_in_crpl_page()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is country column present in crpl page')

    def is_country_selection_criteria_field_present_in_orpl_page(self):
        """
        Returning is country selection criteria field present in orpl page
        Implementing logging for is country selection criteria field present in orpl page functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is country selection criteria field present in orpl page')
            return self._price_page.is_country_selection_criteria_field_present_in_orpl_page()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is country selection criteria field present in orpl page')

    def is_country_column_present_in_orpl_page(self):
        """
        Returning is country column present in orpl page
        Implementing logging for is country column present in orpl page functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is country column present in orpl page')
            return self._price_page.is_country_column_present_in_orpl_page()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is country column present in orpl page')

    def is_country_selection_criteria_field_present_in_rcper_page(self):
        """
        Returning is country selection criteria field present in rcper page
        Implementing logging for is country selection criteria field present in rcper page functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is country selection criteria field present in rcper page')
            return self._price_page.is_country_selection_criteria_field_present_in_rcper_page()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is country selection criteria field present in rcper page')

    def is_country_column_present_in_rcper_page(self):
        """
        Returning is country column present in rcper page
        Implementing logging for is country column present in rcper page functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is country column present in rcper page')
            return self._price_page.is_country_column_present_in_rcper_page()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is country column present in rcper page')

    def is_country_selection_criteria_field_present_in_costs_page(self):
        """
        Returning is country selection criteria field present in costs page
        Implementing logging for is country selection criteria field present in costs page functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is country selection criteria field present in costs page')
            return self._price_page.is_country_selection_criteria_field_present_in_costs_page()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is country selection criteria field present in costs page')

    def is_country_column_present_in_costs_page(self):
        """
        Returning is country column present in costs page
        Implementing logging for is country column present in costs page functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is country column present in costs page')
            return self._price_page.is_country_column_present_in_costs_page()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is country column present in costs page')

    def is_country_selection_criteria_field_present_in_price_override_page(self):
        """
        Returning is country selection criteria field present in price override page
        Implementing logging for is country selection criteria field present in price override page functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is country selection criteria field present in price override page')
            return self._price_page.is_country_selection_criteria_field_present_in_price_override_page()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is country selection criteria field present in price override page')

    def is_country_column_present_in_price_override_page(self):
        """
        Returning is country column present in price override page
        Implementing logging for is country column present in price override page functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is country column present in price override page')
            return self._price_page.is_country_column_present_in_price_override_page()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is country column present in price override page')

    def is_country_selection_criteria_field_present_in_reference_prices_page(self):
        """
        Returning is country selection criteria field present in reference prices page
        Implementing logging for is country selection criteria field present in reference prices page functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is country selection criteria field present in reference prices page')
            return self._price_page.is_country_selection_criteria_field_present_in_reference_prices_page()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is country selection criteria field present in reference prices page')

    def is_country_column_present_in_reference_prices_page(self):
        """
        Returning is country column present in reference prices page
        Implementing logging for is country column present in reference prices page functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is country column present in reference prices page')
            return self._price_page.is_country_column_present_in_reference_prices_page()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is country column present in reference prices page')

    def is_ccpmr_each_call_text_present_in_info_column(self):
        """
        Returning is ccpmr each call text present in info column
        Implementing logging for is ccpmr each call text present in info column functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is ccpmr each call text present in info column')
            return self._price_page.is_ccpmr_each_call_text_present_in_info_column()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is ccpmr each call text present in info column')

    def is_ccpmr_cost_per_message_text_present_in_info_column(self):
        """
        Returning is ccpmr cost per message text present in info column
        Implementing logging for is ccpmr cost per message text present in info column functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is ccpmr cost per message text present in info column')
            return self._price_page.is_ccpmr_cost_per_message_text_present_in_info_column()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is ccpmr cost per message text present in info column')

    def compare_price_policy_formulas_grid_formula_column_value(self, target, minimum, cost):
        """
        Returning get price policy formulas grid formula column value
        Implementing logging for get price policy formulas grid formula column value functionality
        :return: comparison status
        """
        try:
            self.logger.info('Start: compare price policy formulas grid formula column value')
            return self._price_page.compare_price_policy_formulas_grid_formula_column_value(target, minimum, cost)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare price policy formulas grid formula column value')

    def is_reference_prices_cost_and_routing_section_loaded(self):
        """
        Returning is reference prices cost and routing section loaded
        Implementing logging for is reference prices cost and routing section loaded functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is reference prices cost and routing section loaded')
            return self._price_page.is_reference_prices_cost_and_routing_section_loaded()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is reference prices cost and routing section loaded')

    def verify_pricing_policies_reference_prices_grid_columns_header(self, *columns_header):
        """
        Returning verify pricing policies reference prices grid columns header
        Implementing logging for verify pricing policies reference prices grid columns header functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: verify pricing policies reference prices grid column header')
            return self._price_page.verify_pricing_policies_reference_prices_grid_columns_header(columns_header)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: verify pricing policies reference prices grid column header')

    def is_route_class_kendo_dropdown_present(self):
        """
        Returning is route class kendo dropdown present
        Implementing logging for is route class kendo dropdown present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is route class kendo dropdown present')
            return self._price_page.is_route_class_kendo_dropdown_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is route class kendo dropdown present')

    def verify_cost_elements_grid_columns_header(self, *columns_header):
        """
        Returning verify cost elements grid columns header
        Implementing logging for verify cost elements grid columns header functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: verify cost elements grid columns header')
            return self._price_page.verify_cost_elements_grid_columns_header(columns_header)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: verify cost elements grid columns header')

    def verify_routing_guide_links_grid_columns_header(self, *columns_header):
        """
        Returning verify routing guide links grid columns header
        Implementing logging for verify routing guide links grid columns header functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: verify routing guide links grid columns header')
            return self._price_page.verify_routing_guide_links_grid_columns_header(columns_header)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: verify routing guide links grid columns header')

    def are_job_notifiers_displayed_at_generate_reference_prices_screen(self):
        """
        Returning are job notifiers displayed at generate reference prices screen
        Implementing logging for are job notifiers displayed at generate reference prices screen functionality
        :return: status
        """
        status = None
        try:
            self.logger.info('Start: are job notifiers displayed at generate reference prices screen')
            status = self._price_page.are_job_notifiers_displayed_at_generate_reference_prices_screen()
        except WebDriverException as exp:
            status = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: are job notifiers displayed at generate reference prices screen')
            return status

    def click_reference_prices_grid_first_row_inline_action_button(self):
        """
        Returning click reference prices grid first row inline action button
        Implementing logging for click reference prices grid first row inline action button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click reference prices grid first row inline action button')
            self._price_page.click_reference_prices_grid_first_row_inline_action_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click reference prices grid first row inline action button')
            return is_clicked

    def is_route_guide_with_sell_rates_report_inline_item_present(self):
        """
        Returning is route guide with sell rates report inline item present
        Implementing logging for is route guide with sell rates report inline item present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is route guide with sell rates report inline item present')
            return self._price_page.is_route_guide_with_sell_rates_report_inline_item_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is route guide with sell rates report inline item present')

    def is_route_guide_with_sell_rates_report_pop_up_present(self):
        """
        Returning is route guide with sell rates report pop up present
        Implementing logging for is route guide with sell rates report pop up present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is route guide with sell rates report pop up present')
            return self._price_page.is_route_guide_with_sell_rates_report_pop_up_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is route guide with sell rates report pop up present')

    def get_cost_upload_all_job_notification_status(self):
        """
        Returning get cost upload all job notification status
        Implementing logging for get cost upload all job notification status functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: get cost upload all job notification status')
            return self._price_page.get_cost_upload_all_job_notification_status()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get cost upload all job notification status')

    def clear_multiselect_kendo_dropdown(self, label):
        """
        Returning deselect multiselect kendo dropdown
        Implementing logging for deselect multiselect kendo dropdown functionality
        :param label:
        :return: True/False
        """
        is_deselected = None
        try:
            self.logger.info('Start: deselect multiselect kendo dropdown')
            self._price_page.clear_multiselect_kendo_dropdown(label)
            is_deselected = True
        except WebDriverException as exp:
            is_deselected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: deselect multiselect kendo dropdown')
            return is_deselected

    def set_origin_reference_price_list_bulk_edit_end_date(self, end_date):
        """
        Returning set origin reference price list bulk edit end date
        Implementing logging for set origin reference price list bulk edit end date functionality
        :param end_date:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set origin reference price list bulk edit end date')
            self._price_page.set_origin_reference_price_list_bulk_edit_end_date(end_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set origin reference price list bulk edit end date')
            return is_set

    def compare_end_date_column_value_in_origin_reference_price_list_grid(self, expected_value):
        """
        Returning Compare End Date Column Value in Origin Reference Price List Grid
        Implementing logging for Compare End Date Column Value in Origin Reference Price List Grid functionality
        :param expected_value:
        :return:
        """
        try:
            self.logger.info('Start: Compare End Date Column Value in Origin Reference Price List Grid')
            return self._price_page.compare_end_date_column_value_in_origin_reference_price_list_grid(expected_value)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: Compare End Date Column Value in Origin Reference Price List Grid')

    def is_by_default_specific_generation_type_present(self, generation_type):
        """
        Returning is by default specific generation type present
        Implementing logging for is by default specific generation type present functionality
        :param generation_type:
        :return: True/False
        """
        try:
            self.logger.info('Start: is by default specific generation type present')
            return self._price_page.is_by_default_specific_generation_type_present(generation_type)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is by default specific generation type present')

    def select_create_destination_formula_system_parameters_tab(self):
        """
        Returning select create destination formula system parameters tab
        Implementing logging for select create destination formula system parameters tab functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select create destination formula system parameters tab')
            self._price_page.select_create_destination_formula_system_parameters_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select create destination formula system parameters tab')
            return is_selected

    def is_specific_tab_present_in_view_pricing_exception_details_pop_up(self, tab_name):
        """
        Returning is specific tab present in view pricing exception details pop up
        Implementing logging for is specific tab present in view pricing exception details pop up functionality
        :param tab_name:
        :return: True/False
        """
        try:
            self.logger.info('Start: is specific tab present in view pricing exception details pop up')
            return self._price_page.is_specific_tab_present_in_view_pricing_exception_details_pop_up(tab_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is specific tab present in view pricing exception details pop up')

    def get_cost_policies_grid_first_row_cost_policy_name(self):
        """
        Returning get cost policies grid first row cost policy name
        Implementing logging for get cost policies grid first row cost policy name functionality
        :return: cost policy name
        """
        cost_policy_name = None
        try:
            self.logger.info('Start: get cost policies grid first row cost policy name')
            cost_policy_name = self._price_page.get_cost_policies_grid_first_row_cost_policy_name()
        except WebDriverException as exp:
            cost_policy_name = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get cost policies grid first row cost policy name')
            return cost_policy_name

    def get_upload_costs_cost_policy_field_value(self):
        """
        Returning get upload costs cost policy field value
        Implementing logging for get upload costs cost policy field value functionality
        :return: cost_policy
        """
        cost_policy = None
        try:
            self.logger.info('Start: get upload costs cost policy field value')
            cost_policy = self._price_page.get_upload_costs_cost_policy_field_value()
        except WebDriverException as exp:
            cost_policy = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get upload costs cost policy field value')
            return cost_policy

    def click_upload_costs_cancel_button(self):
        """
        Returning click upload costs cancel button
        Implementing logging for click upload costs cancel button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click upload costs cancel button')
            self._price_page.click_upload_costs_cancel_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click upload costs cancel button')
            return is_clicked

    def select_cost_policies_grid_multiple_row_checkbox(self):
        """
        Returning select cost policies grid multiple row checkbox
        Implementing logging for select cost policies grid multiple row checkbox functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select cost policies grid multiple row checkbox')
            self._price_page.select_cost_policies_grid_multiple_row_checkbox()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select cost policies grid multiple row checkbox')
            return is_selected

    def is_cost_forecast_elements_grid_description_correct(self, expected_text):
        """
        Returning is cost forecast elements grid description correct
        Implementing logging is cost forecast elements grid description correct functionality
        :param expected_text:
        :return: True/False
        """
        is_correct = None
        try:
            self.logger.info('Start: is cost forecast elements grid description correct')
            is_correct = self._price_page.is_cost_forecast_elements_grid_description_correct(expected_text)
        except WebDriverException as exp:
            is_correct = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is cost forecast elements grid description correct')
            return is_correct

    def is_review_customer_price_exception_requests_search_grid_present(self):
        """
        Returning is review customer price exception requests search grid present
        Implementing logging for is review customer price exception requests search grid present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is review customer price exception requests search grid present')
            return self._price_page.is_review_customer_price_exception_requests_search_grid_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is review customer price exception requests search grid present')

    def is_specific_filter_option_present_in_price_reference_prices_page(self, filter_option_label_name):
        """
        Returning is specific filter option present in price reference prices page
        Implementing logging for is specific filter option present in price reference prices page functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is specific filter option present in price reference prices page')
            return self._price_page.is_specific_filter_option_present_in_price_reference_prices_page(filter_option_label_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is specific filter option present in price reference prices page')

    def select_price_policy_for_reference_prices_search(self, *price_policy_list):
        """
        Returning select price policy for reference prices search
        Implementing logging for select price policy for reference prices search functionality
        :param price_policy_list:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select price policy for reference prices search')
            self._price_page.select_price_policy_for_reference_prices_search(price_policy_list)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select price policy for reference prices search')
            return is_selected

    def set_reference_prices_destination(self, destination):
        """
        Returning set reference prices destination
        Implement logging for set reference prices destination functionality
        :param destination:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set reference prices destination')
            self._price_page.set_reference_prices_destination(destination)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set reference prices destination')
            return is_set

    def select_country_for_reference_prices_search(self, *country_list):
        """
        Returning select country for reference prices search
        Implementing logging for select country for reference prices search functionality
        :param country_list:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select country for reference prices search')
            self._price_page.select_country_for_reference_prices_search(country_list)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select country for reference prices search')
            return is_selected

    def select_trade_destination_category_for_reference_prices_search(self):
        """
        Returning select trade destination category for reference prices search
        Implementing logging for select trade destination category for reference prices search functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select trade destination category for reference prices search')
            self._price_page.select_trade_destination_category_for_reference_prices_search()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select trade destination category for reference prices search')
            return is_selected

    def select_region_for_reference_prices_search(self, *region_list):
        """
        Returning select region for reference prices search
        Implementing logging for select region for reference prices search functionality
        :param region_list:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select region for reference prices search')
            self._price_page.select_region_for_reference_prices_search(region_list)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select region for reference prices search')
            return is_selected

    def compare_only_failed_status_red_buttons_jobs_count(self):
        """
        Returning compare only failed status red button jobs count
        Implementing logging for compare only failed status red button jobs count functionality
        :return: grid_row_data
        """
        try:
            self.logger.info('Start: compare only failed status red button jobs count')
            return self._price_page.compare_only_failed_status_red_buttons_jobs_count()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare only failed status red button jobs count')

    def filter_origin_reference_price_list_grid_column(self, column_name, orp_name):
        """
        Returning filter origin reference price list grid column
        Implementing logging for filter origin reference price list grid column functionality
        :param column_name:
        :param orp_name:
        :return: True/False
        """
        is_filtered = None
        try:
            self.logger.info('Start: filter origin reference price list grid column')
            self._price_page.filter_origin_reference_price_list_grid_column(column_name, orp_name)
            is_filtered = True
        except WebDriverException as exp:
            is_filtered = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: filter origin reference price list grid column')
            return is_filtered

    def click_origin_reference_price_list_grid_first_row_inline_action_button(self):
        """
        Returning click origin reference price list grid inline action button
        Implementing logging for click origin reference price list grid inline action button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click origin reference price list grid inline action button')
            self._price_page.click_origin_reference_price_list_grid_first_row_inline_action_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click origin reference price list grid inline action button')
            return is_clicked

    def is_specific_dropdown_disabled(self, dropdown_label_text):
        """
        Returning is specific dropdown disabled
        Implementing logging for is specific dropdown disabled functionality
        :param dropdown_label_text:
        :return: True/False
        """
        is_disabled = None
        try:
            self.logger.info('Start: is specific dropdown disabled')
            is_disabled = self._price_page.is_specific_dropdown_disabled(dropdown_label_text)
        except WebDriverException as exp:
            is_disabled = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is specific dropdown disabled')
            return is_disabled

    def select_orpl_grid_inline_action_item(self, inline_item):
        """
        Returning select orpl grid inline item
        Implementing logging for select orpl grid inline item functionality
        :param inline_item:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select orpl grid inline item')
            self._price_page.select_orpl_grid_inline_action_item(inline_item)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select orpl grid inline item')
            return is_selected

    def is_cost_formula_grid_first_row_checkbox_checked(self):
        """
        Returning is cost formula grid first row checkbox checked
        Implementing logging for is cost formula grid first row checkbox checked functionality
        :return: True/False
        """
        is_checked = None
        try:
            self.logger.info('Start: is cost formula grid first row checkbox checked')
            is_checked = self._price_page.is_cost_formula_grid_first_row_checkbox_checked()
        except WebDriverException as exp:
            is_checked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is cost formula grid first row checkbox checked')
            return is_checked

    def is_price_policy_udp_grid_first_row_checkbox_checked(self):
        """
        Returning is price policy udp grid first row checkbox checked
        Implementing logging for is price policy udp grid first row checkbox checked functionality
        :return: True/False
        """
        is_checked = None
        try:
            self.logger.info('Start: is price policy udp grid first row checkbox checked')
            is_checked = self._price_page.is_price_policy_udp_grid_first_row_checkbox_checked()
        except WebDriverException as exp:
            is_checked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is price policy udp grid first row checkbox checked')
            return is_checked

    def get_price_policy_from_reference_prices_grid(self):
        """
        Returning get price policy from reference prices grid
        Implementing logging for get price policy from reference prices grid functionality
        :return: price_policy
        """
        try:
            self.logger.info('Start: get price policy from reference prices grid')
            return self._price_page.get_price_policy_from_reference_prices_grid()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get price policy from reference prices grid')

    def click_document_tab_on_pricing_exception_page(self):
        """
        Returning click document tab on pricing exception page
        Implementing logging for click document tab on pricing exception page functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click document tab on pricing exception page')
            self._price_page.click_document_tab_on_pricing_exception_page()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click document tab on pricing exception page')
            return is_clicked

    def is_delete_button_present_in_view_pricing_exception_details_page(self):
        """
        Returning is delete button present in view pricing exception details page
        Implementing logging for is delete button present in view pricing exception details page functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is delete button present in view pricing exception details page')
            return self._price_page.is_delete_button_present_in_view_pricing_exception_details_page()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is delete button present in view pricing exception details page')

    def is_upload_document_button_present_in_view_pricing_exception_details_page(self):
        """
        Returning is upload document button present in view pricing exception details page
        Implementing logging for is upload document button present in view pricing exception details page functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is upload document button present in view pricing exception details page')
            return self._price_page.is_upload_document_button_present_in_view_pricing_exception_details_page()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is delete upload document present in view pricing exception details page')

    def is_specific_column_present_in_review_pricing_exception_documents_tab(self, column_name):
        """
        Returning is country column present in review pricing exception documents tab
        Implementing logging for is country column present in review pricing exception documents tab functionality
        :param column_name:
        :return: True/False
        """
        try:
            self.logger.info('Start: is country column present in review pricing exception documents tab')
            return self._price_page.is_specific_column_present_in_review_pricing_exception_documents_tab(column_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is country column present in review pricing exception documents tab')

    def click_rgwsrr_tab_on_pricing_exception_page(self):
        """
        Returning click rgwsrr tab on pricing exception page
        Implementing logging for click rgwsrr tab on pricing exception page functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click rgwsrr tab on pricing exception page')
            self._price_page.click_rgwsrr_tab_on_pricing_exception_page()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click rgwsrr tab on pricing exception page')
            return is_clicked

    def is_specific_column_present_in_review_pricing_exception_rgwsrr_tab(self, column_name):
        """
        Returning is country column present in review pricing exception rgwsrr tab
        Implementing logging for is country column present in review pricing exception rgwsrr tab functionality
        :param column_name:
        :return: True/False
        """
        try:
            self.logger.info('Start: is country column present in review pricing exception rgwsrr tab')
            return self._price_page.is_specific_column_present_in_review_pricing_exception_rgwsrr_tab(column_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is country column present in review pricing exception rgwsrr tab')

    def click_price_exception_request_export_button(self):
        """
        Returning click exception request export button
        Implementing logging for click exception request export button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click exception request export button')
            self._price_page.click_price_exception_request_export_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click exception request export button')
            return is_clicked

    def click_price_exception_request_browse_button(self):
        """
        Returning click exception request browse button
        Implementing logging for click exception request browse button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click exception request browse button')
            self._price_page.click_price_exception_request_browse_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click exception request browse button')
            return is_clicked

    def is_view_reference_price_details_inline_item_present(self):
        """
        Returning is view reference price details inline item present
        Implementing logging for is view reference price details inline item present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is view reference price details inline item present')
            return self._price_page.is_view_reference_price_details_inline_item_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is view reference price details inline item present')

    def is_view_reference_price_details_pop_up_present(self):
        """
        Returning is view reference price details pop up present
        Implementing logging for is view reference price details pop up present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is view reference price details pop up present')
            return self._price_page.is_view_reference_price_details_pop_up_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is view reference price details pop up present')

    def is_reference_price_list_history_section_present(self):
        """
        Returning is reference price list section present
        Implementing logging for is reference price list section present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is reference price list section present')
            return self._price_page.is_reference_price_list_history_section_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is reference price list section present')
