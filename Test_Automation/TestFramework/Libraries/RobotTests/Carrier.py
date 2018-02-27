"""
Implementing Carrier UI page actions
Implementing Logging mechanism for Carrier UI page actions
"""

from selenium.common.exceptions import WebDriverException
from TestFramework.Libraries.logger import Logger
from TestFramework.Libraries.Pages.carrier_page import CarrierPage


class Carrier:
    """
    Returning switch to carrier page
    Returning carrier page title
    Returning carrier dashboard tab status
    Returning carrier tab status
    Returning credit management tab status
    Returning select carriers tab
    Returning carriers tab header
    Returning select credit management tab
    Returning credit management tab header
    Returning grid filter details
    Returning click carriers page inline action button
    Returning select inline action item
    Returning set business type for dialed digits search
    Returning set number plan type for dialed digits search
    Returning set number plan for dialed digits search
    Returning set destination for dialed digits search
    Returning set dial digits for dialed digits search
    Returning set begin date for dialed digits search
    Returning set end date for dialed digits search
    Returning click dialed digits search button
    Returning is data loaded in the grid
    Returning click destination tab
    Returning set country for destinations search
    Returning set destination for destinations search
    Returning set number plan for destinations search
    Returning set begin date for destinations search
    Returning set end date for destinations search
    Returning click destinations search button
    Returning select item from inline action
    Returning set multiple status
    Returning set price list type
    Returning set destinations
    Returning set from date
    Returning set to date
    Returning click price lists history search button
    Returning click price lists history grid inline action button
    Returning click export to excel button
    Returning commercial trunks section status
    Returning service level assignments section status
    Returning rate plans section status
    Returning scenarios section status
    Returning number plans section status
    Returning customers and vendors section status
    Returning bill audit accounts section status
    Returning select price lists history grid multiple rows
    Returning click compare price lists button
    Returning verify selected price lists details
    Returning verify rates grid columns
    Returning select dial digits tab
    Returning verify dialed digits columns
    Returning close compare price lists pop up
    Returning click carrier relationships tab
    Returning click dialed digits tab
    Returning click rates tab
    Returning carrier relationships tab loading status
    Returning dialed digits tab loading status
    Returning rates tab loading status
    Returning destinations tab loading status
    Returning click create carrier button
    Returning set carrier name
    Returning set carrier abbreviation
    Returning set carrier legal name
    Returning set status
    Returning set company
    Returning set carrier number
    Returning click create carrier save button
    Returning close current tab
    Returning get carriers grid row details
    Returning click save carrier profile button
    Returning clear filter
    Returning expand customers and vendors section
    Returning click create customer button
    Returning set customer name
    Returning set abbreviation
    Returning click add new rates button
    Returning set rate plan for add new rate
    Returning set begin date for add new rate
    Returning set end date for add new rate
    Returning set product for add new rate
    Returning set rating method for add new rate
    Returning set cli for add new rate
    Returning click add new rate page title
    Returning set grid value for add new rate
    Returning click add new rate save button
    Returning set rate plan
    Returning set call type
    Returning click save customer profile button
    Returning filter trade source grid
    Returning click trade source grid inline action button
    Returning get trade source grid row details
    Returning set vendor for view price list detail
    Returning set price list for view price list detail
    Returning set product name
    Returning set begin date
    Returning click rates page search button
    Returning expand commercial trunks section
    Returning click create trunk button
    Returning set trunk name
    Returning set clli
    Returning set description
    Returning set effective date
    Returning set direction
    Returning click save button
    Returning filter trunks grid
    Returning click trunks grid inline action button
    Returning get trunks grid row details
    Returning click create vendor button
    Returning set vendor name
    Returning click save vendor profile button
    Returning expand rate plans section
    Returning filter rate plan grid
    Returning click rate plan grid inline action button
    Returning get rate plan grid row details
    Returning click create rate plan button
    Returning click save button
    Returning set rate plan name
    Returning set rate plan abbreviation
    Returning set increase notice period days
    Returning set decrease notice period days
    Returning set dial digit change notice period days
    Returning set business type
    Returning set traffic direction
    Returning set tariff type
    Returning set service level
    Returning set currency
    Returning set product catalog
    Returning set rate plan scope
    Returning toggle cost pricing indicator
    Returning set rating method
    Returning set rate plan category 1
    Returning set rate plan category 2
    Returning set begin date for add new rate plan
    Returning set end date
    Returning set note
    Returning set select date
    Returning click carrier relationships search button
    Returning select price lists history tab
    Returning expand bill and audit account section
    Returning click create bill account
    Returning set bill account
    Returning set bill account abbreviation
    Returning set legal name
    Returning set billing method
    Returning set billing terms number
    Returning set billing terms base period
    Returning set billing terms date type
    Returning set payment terms number
    Returning set payment terms base period
    Returning set payment terms date type
    Returning set paying account
    Returning set receiving account
    Returning set usage time zone
    Returning set accounting code
    Returning set origin based rating
    Returning expand current cycles section
    Returning set billing cycle template
    Returning set settlement cycle template
    Returning set billing cycle begin date
    Returning set billing cycle end date
    Returning set settlement cycle begin date
    Returning set settlement cycle end date
    Returning set residual traffic window number
    Returning expand additional fields section
    Returning set analyst
    Returning set manager
    Returning expand statement section
    Returning set cover letter template
    Returning set statement template
    Returning set statement number template
    Returning set positive adjustment statement template
    Returning set negative adjustment statement template
    Returning set residual traffic treatment
    Returning set shortfall approval method
    Returning click create bill account save button
    Returning close add new bill account popup
    Returning click bill and audit accounts grid inline action button
    Returning filter bill and audit accounts grid
    Returning get bill and audit accounts grid row details
    Returning close edit bill account popup
    Returning filter credit management grid
    Returning select credit management grid row checkbox
    Returning click credit management bulk edit button
    Returning set trunk provisioning status
    Returning click bulk edit submit button
    Returning click save changes button
    Returning click credit management page inline action button
    Returning click monitoring details tab
    Returning click add new transaction button
    Returning set transaction date
    Returning set transaction id
    Returning set transaction type
    Returning set transaction account type
    Returning set transaction account
    Returning set transaction amount
    Returning set transaction currency
    Returning set external reference 1
    Returning set external reference 2
    Returning set statement begin date
    Returning set statement end date
    Returning click add new transaction save button
    Returning filter transaction history grid
    Returning get transaction history grid row details
    Returning click activate credit limit button
    Returning set carrier name for activate credit limit
    Returning set credit management status
    Returning set pre paid customer
    Returning set credit limit
    Returning set threshold values
    Returning set credit limit monitoring
    Returning set tarrif type assignment
    Returning click save credit profile button
    Returning get credit management grid row details
    Returning status of credit management grid inline item visibility
    Returning set credit limit for edit credit profile
    Returning set user activation approval required
    Returning set user shutoff approval required
    Returning click create in audit account
    Returning set dispute terms number
    Returning set dispute terms base period
    Returning set dispute terms date type
    Returning set default dispute grade
    Returning set audit account status
    Returning close add in audit account pop up
    Returning close edit in audit account pop up
    Returning click create out audit account
    Returning set bill account for out audit account
    Returning close add out audit account pop up
    Returning close edit out audit account pop up
    Returning expand scenarios section
    Returning click create scenario button
    Returning set scenario type
    Returning set commercial trunk
    Returning set country
    Returning set service
    Returning close current pop up
    Returning filter scenarios grid
    Returning click scenarios grid inline action button
    Returning get scenarios grid row details
    Returning click add new event settlement button
    Returning click delete event settlement button
    Returning select event settlement grid row checkbox
    Returning select scenarios grid row checkbox
    Returning click delete scenario button
    Returning click threshold button
    Returning select threshold grid row checkbox
    Returning click threshold grid bulk edit button
    Returning set threshold type for bulk edit
    Returning set warning levels for bulk edit
    Returning get threshold grid row details
    Returning click threshold grid save changes button
    Returning set monitoring details note
    Returning click save monitoring details button
    Returning get trunk provisioning status value
    Returning get monitoring details note
    Returning compare carrier dialed digit with excel data
    Returning compare carrier rates with excel data
    Returning compare carrier destination with excel data
    Returning expand number plans section
    Returning click add number plan button
    Returning set number plan
    Returning number plans grid row details
    Returning set begin date for add number plan
    Returning close carrier window
    Returning read data from upload excel file
    Returning click carriers page first row inline action button
    Returning is carrier profile page loaded properly
    Returning is price list history page loaded properly
    Returning is dialed digits search successful
    Returning is rates search successful
    Returning is destinations search successful
    Returning is price list history search successful
    Returning click create intercompany button
    Returning click price lists history grid first row inline action button
    Returning get created carrier name
    Returning get created rate plan name
    Returning set rates product
    Returning validate date format
    Returning validate currency format
    Returning get carriers grid column value
    Returning get carrier relationships select date
    Returning expand service level assignments section
    Returning get commercial trunks grid effective date
    Returning get effective date
    Returning get begin date
    Returning get end date
    Returning get service level grid begin date
    Returning get service level grid end date
    Returning get rate plans grid begin date
    Returning get rate plans grid end date
    Returning get number plans grid begin date
    Returning get number plans grid end date
    Returning click add service level button
    Returning get rates tab begin date
    Returning get rates tab end date
    Returning get destinations tab begin date
    Returning get destinations tab end date
    Returning get dialed digits grid begin date
    Returning get dialed digits grid end date
    Returning get rates grid begin date
    Returning get rates grid end date
    Returning get destinations grid begin date
    Returning get destinations grid end date
    Returning get credit management grid column value
    Returning click credit management grid first row inline action button
    Returning get credit profile credit limit
    Returning get credit limit last modified date
    Returning get label wise text
    Returning get transactions history grid column value
    Returning get add new transaction date
    Returning get statement begin date
    Returning get trunk name
    Returning set trunk dropdown value
    Returning set destination dropdown value
    Returning set service level begin date
    Returning set service level end date
    Returning get rate plan name
    Returning set carrier type for carriers search
    Returning expand show search form link
    Returning click carriers page search button
    Returning is inter opco scenarios section present
    Returning expand inter opco scenarios section
    Returning click inter opco create scenario button
    Returning set inter opco name
    Returning set in opco
    Returning set out opco
    Returning click inter opco save button
    Returning click inter opco add new event settlement button
    Returning set new event paying account
    Returning set new event receiving account
    Returning set new event rate plan
    Returning set new event direction
    Returning select carrier dashboard tab
    Returning click network codes link
    Returning is network codes link present
    Returning is network codes link not present
    Returning get agreement from agreement table
    Returning click number plans inline action button
    Returning get all values from lookup table
    Returning is bidirectional available in direction dropdown
    Returning compare carrier grid first row data
    Returning is create carrier button present
    Returning compare sorted data
    Returning compare grid column position after altering
    Returning set carriers grid settings
    Returning sort carriers grid column
    Returning get all rows of specific column from carriers grid
    Returning drag carriers grid column
    Returning get carriers grid column names by order
    Returning click carriers grid export to excel
    Returning select rates grid first row checkbox
    Returning click bulk edit button
    Returning set bulk edit end date
    Returning click save changes button with confirmation
    Returning is add network destination button not present
    Returning click network codes search button
    Returning set carrier profile rates grid begin date
    Returning get future date
    Returning check inactive user is not present in seller dropdown
    Returning is credit profile tab focused properly in credit profile page
    Returning is specific error message is displayed in credit profile page
    Returning set remaining credit amount threshold values
    Returning is add new transaction pop up present
    Returning select deactivate credit limit inline action item
    Returning set trunk provisioning status in grid
    Returning get created bill account name
    Returning set new create carrier window carrier category
    Returning set rate record for add new rate
    Returning is add service level button not present
    Returning is add service level inline action button not present
    Returning is service level change work order section present
    Returning expand service level change work order section
    Returning click add new service level change work order button
    Returning select service level commercial trunk
    Returning click next button
    Returning select service level country
    Returning select service level destination
    Returning select create service level change work order grid first row checkbox
    Returning click submit button
    Returning filter service level change work order grid
    Returning set service level change work order grid status
    Returning click service level change work order grid save changes button
    Returning filter service level assignments grid
    Returning get service level assignments grid first row column value
    Returning click service level change work order grid first row work order name
    Returning click service level change work order report first row work order
    Returning get service level change work order report first row end date
    Returning sort service level change work order grid column in descending order
    Returning is add service level button present
    Returning click service level assignments first row inline action button
    Returning is service level change work order section not present
    Returning click cancel button
    Returning get service level change work order grid first row work order name
    Returning verify slwo got end dated in database
    Returning get credit management enable status
    Returning close credit profile tab without saving
    eturning verify slwo got end dated in database
    Returning is specific column present in service level work order section
    Returning click service level work order first row info icon
    Returning is service order report pop up page present
    Returning is service level change work order grid save changes button present
    Returning is service level change work order grid cancel changes button present
    Returning is add new service level change work order button present
    Returning get service level change work order grid first row column value
    Returning click submit button and verify error message
    Returning expand bill account recurrent charges section
    Returning click recurrent charges add new record button
    Returning select recurrent charges grid active checkbox
    Returning set recurrent charges begin date
    Returning set recurrent charges amount
    Returning set recurrent accounting code
    Returning click recurrent charges save changes button
    """
    ROBOT_LIBRARY_SCOPE = 'TEST SUITE'

    logger = Logger().get_logger('Carrier')

    def __init__(self):
        self._carrier_page = CarrierPage()

    def switch_to_carrier(self):
        """
        Returning switch to carrier
        Implementing logging for switch to carrier functionality
        :return: True/False
        """
        is_switched = None
        try:
            self.logger.info('Start: switch to carrier method')
            self._carrier_page.switch_to_carrier()
            is_switched = True
        except WebDriverException as exp:
            is_switched = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: switch to carrier method')
            return is_switched

    def get_carrier_page_title(self):
        """
        Returning carrier page title
        Implementing logging for get carrier page title functionality
        :return: carrier page title
        """
        try:
            self.logger.info('Start: get carrier page title')
            return self._carrier_page.get_carrier_page_title()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get carrier page title')

    def is_carrier_dashboard_tab_present(self):
        """
        Returning carrier dashboard tab status
        Implementing logging for carrier dashboard tab present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is carrier dashboard tab present')
            return self._carrier_page.is_carrier_dashboard_tab_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is carrier dashboard tab present')

    def is_carriers_tab_present(self):
        """
        Returning carriers tab status
        Implementing logging for carriers tab present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is carrier tab present')
            return self._carrier_page.is_carriers_tab_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is carrier tab present')

    def is_credit_management_tab_present(self):
        """
        Returning credit management tab status
        Implementing logging for credit management tab present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is credit management tab present')
            return self._carrier_page.is_credit_management_tab_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is credit management tab present')

    def select_carriers_tab(self):
        """
        Returning select carriers tab
        Implementing logging for select carriers tab functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select carriers tab')
            is_selected = True
            self._carrier_page.select_carriers_tab()
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select carriers tab')
            return is_selected

    def get_carriers_tab_header(self):
        """
        Returning carriers tab header
        Implementing logging for carriers tab header functionality
        :return: carriers tab header
        """
        try:
            self.logger.info('Start: get carriers tab header')
            return self._carrier_page.get_carriers_tab_header()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get carriers tab header')

    def select_credit_management_tab(self):
        """
        Returning select credit management tab
        Implementing logging for select credit management tab functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select credit management tab')
            self._carrier_page.select_credit_management_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select credit management tab')
            return is_selected

    def get_credit_management_tab_header(self):
        """
        Returning credit management tab header
        Implementing logging for credit management tab header functionality
        :return: credit management tab header
        """
        try:
            self.logger.info('Start: get credit management tab header')
            return self._carrier_page.get_credit_management_tab_header()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get credit management tab header')

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
            self._carrier_page.grid_filter_details(column_name, filter_item_list)
            is_filtered = True
        except WebDriverException as exp:
            is_filtered = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: grid filter details')
            return is_filtered

    def click_carrier_page_inline_action_button(self, carrier):
        """
        Returning click carriers page inline action button
        Implementing logging for click carriers page inline action button functionality
        :param carrier: carrier name
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click carriers page inline action button')
            self._carrier_page.click_carrier_page_inline_action_button(carrier)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click carriers page inline action button')
            return is_clicked

    def select_inline_action_item(self, item_name):
        """
        Returning select inline action item
        Implementing logging for select inline action item functionality
        :param item_name:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select inline action item')
            self._carrier_page.select_inline_action_item(item_name)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select inline action item')
            return is_selected

    def set_business_type_for_dialed_digits_search(self, business_type):
        """
        Returning set business type for dialed digits search
        Implementing logging for set business type for dialed digits search functionality
        :param business_type:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set business type for dialed digits search')
            if business_type != "":
                self._carrier_page.set_business_type_for_dialed_digits_search(business_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set business type for dialed digits search')
            return is_set

    def set_number_plan_type_for_dialed_digits_search(self, number_plan_type):
        """
        Returning set number plan type for dialed digits search
        Implementing logging for set number plan type for dialed digits search functionality
        :param number_plan_type:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set number plan type for dialed digits search')
            if number_plan_type != "":
                self._carrier_page.set_number_plan_type_for_dialed_digits_search(number_plan_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set number plan type for dialed digits search')
            return is_set

    def set_number_plan_for_dialed_digits_search(self, *number_plan_list):
        """
        Returning set number plan for dialed digits search
        Implementing logging for set number plan for dialed digits search functionality
        :param number_plan_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set number plan for dialed digits search')
            if len(number_plan_list) > 0:
                self._carrier_page.set_number_plan_for_dialed_digits_search(number_plan_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set number plan for dialed digits search')
            return is_set

    def set_destination_for_dialed_digits_search(self, destination):
        """
        Returning set destination for dialed digits search
        Implementing logging for set destination for dialed digits search functionality
        :param destination:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set destination for dialed digits search')
            if destination != "":
                self._carrier_page.set_destination_for_dialed_digits_search(destination)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set destination for dialed digits search')
            return is_set

    def set_dialed_digits_for_dialed_digits_search(self, dialed_digits):
        """
        Returning set dial digits for dialed digits search
        Implementing logging for set dial digits for dialed digits search functionality
        :param dialed_digits:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set dial digits for dialed digits search')
            if dialed_digits != "":
                self._carrier_page.set_dialed_digits_for_dialed_digits_search(dialed_digits)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set dial digits for dialed digits search')
            return is_set

    def set_begin_date_for_dialed_digits_search(self, begin_date):
        """
        Returning set begin date for dialed digits search
        Implementing logging for set begin date for dialed digits search functionality
        :param begin_date:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set begin date for dialed digits search')
            if begin_date != "":
                self._carrier_page.set_begin_date_for_dialed_digits_search(begin_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set begin date for dialed digits search')
            return is_set

    def set_end_date_for_dialed_digits_search(self, end_date):
        """
        Returning set end date for dialed digits search
        Implementing logging for set end date for dialed digits search functionality
        :param end_date:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set end date for dialed digits search')
            if end_date != "":
                self._carrier_page.set_end_date_for_dialed_digits_search(end_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set end date for dialed digits search')
            return is_set

    def click_dialed_digits_search_button(self):
        """
        Returning click dialed digits search button
        Implementing logging for click dialed digits search button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click dialed digits search button')
            self._carrier_page.click_dialed_digits_search_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click dialed digits search button')
            return is_clicked

    def is_data_loaded_in_the_grid(self):
        """
        Returning is data loaded in the grid
        Implementing logging for is data loaded in the grid functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is data loaded in the grid')
            return self._carrier_page.is_data_loaded_in_the_grid()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is data loaded in the grid')

    def click_destinations_tab(self):
        """
        Returning click destination tab
        Implementing logging for click destination tab functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click destination tab')
            self._carrier_page.click_destinations_tab()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click destination tab')
            return is_clicked

    def set_country_for_destinations_search(self, *country_list):
        """
        Returning set country for destinations search
        Implementing logging for set country for destinations search functionality
        :param country_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set country for destinations search')
            if len(country_list) > 0:
                self._carrier_page.set_country_for_destinations_search(country_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set country for destinations search')
            return is_set

    def set_destination_for_destinations_search(self, destination):
        """
        Returning set destination for destinations search
        Implementing logging for set destination for destinations search functionality
        :param destination:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set destination for destinations search')
            if destination != "":
                self._carrier_page.set_destination_for_destinations_search(destination)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set destination for destinations search')
            return is_set

    def set_number_plan_for_destinations_search(self, *number_plan_list):
        """
        Returning set number plan for destinations search
        Implementing logging for set number plan for destinations search functionality
        :param number_plan_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set destination for destinations search')
            if len(number_plan_list) > 0:
                self._carrier_page.set_number_plan_for_destinations_search(number_plan_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set destination for destinations search')
            return is_set

    def set_begin_date_for_destinations_search(self, begin_date):
        """
        Returning set begin date for destinations search
        Implementing logging for set begin date for destinations search functionality
        :param begin_date:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set begin date for destinations search')
            if begin_date != "":
                self._carrier_page.set_begin_date_for_destinations_search(begin_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set begin date for destinations search')
            return is_set

    def set_end_date_for_destinations_search(self, end_date):
        """
        Returning set end date for destinations search
        Implementing logging set end date for destinations search functionality
        :param end_date:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set end date for destinations search')
            if end_date != "":
                self._carrier_page.set_end_date_for_destinations_search(end_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set end date for destinations search')
            return is_set

    def set_multiple_status(self, *status_list):
        """
        Returning set multiple status
        Implementing logging for set multiple status functionality
        :param status_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set multiple status')
            if len(status_list) > 0:
                self._carrier_page.set_multiple_status(status_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set multiple status')
            return is_set

    def set_price_list_type(self, price_list_type):
        """
        Returning set price list type
        Implementing logging for set price list type functionality
        :param price_list_type:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set price list type')
            if price_list_type != "":
                self._carrier_page.set_price_list_type(price_list_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set price list type')
            return is_set

    def set_destinations(self, destinations):
        """
        Returning set destinations
        Implementing logging for set destinations functionality
        :param destinations:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set destinations')
            if destinations != "":
                self._carrier_page.set_destinations(destinations)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set destinations')
            return is_set

    def set_from_date(self, from_date):
        """
        Returning set from date
        Implementing logging for set from date functionality
        :param from_date:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set from date')
            if from_date != "":
                self._carrier_page.set_from_date(from_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set from date')
            return is_set

    def set_to_date(self, to_date):
        """
        Returning set to date
        Implementing logging for set to date functionality
        :param to_date:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set to date')
            if to_date != "":
                self._carrier_page.set_to_date(to_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set to date')
            return is_set

    def click_price_lists_history_search_button(self):
        """
        Returning click price lists history search button
        Implementing logging for click price lists history search button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click price lists history search button')
            self._carrier_page.click_price_lists_history_search_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click price lists history search button')
            return is_clicked

    def click_destinations_search_button(self):
        """
        Returning click destinations search button
        Implementing logging for click destinations search button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click destinations search button')
            self._carrier_page.click_destinations_search_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click destinations search button')
            return is_clicked

    def click_price_lists_history_grid_inline_action_button(self, price_list_name):
        """
        Returning click price lists history grid inline action button
        Implementing logging for click price lists history grid inline action button functionality
        :param price_list_name:
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click price lists history grid inline action button')
            self._carrier_page.click_price_lists_history_grid_inline_action_button(price_list_name)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click price lists history grid inline action button')
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
            self._carrier_page.click_export_to_excel_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click export to excel button')
            return is_clicked

    def is_commercial_trunks_section_displayed(self):
        """
        Returning commercial trunks section status
        Implementing logging for is commercial trunks section displayed functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is commercial trunks section displayed')
            return self._carrier_page.is_commercial_trunks_section_displayed()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is commercial trunks section displayed')

    def is_service_level_assignments_section_displayed(self):
        """
        Returning service level assignments section status
        Implementing logging for is service level assignments section displayed functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is service level assignments section displayed')
            return self._carrier_page.is_service_level_assignments_section_displayed()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is service level assignments section displayed')

    def is_rate_plans_section_displayed(self):
        """
        Returning rate plans section status
        Implementing logging for is rate plans section displayed functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is rate plans section displayed')
            return self._carrier_page.is_rate_plans_section_displayed()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is rate plans section displayed')

    def is_scenarios_section_displayed(self):
        """
        Returning scenarios section status
        Implementing logging for is scenarios section displayed functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is scenarios section displayed')
            return self._carrier_page.is_scenarios_section_displayed()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is scenarios section displayed')

    def is_number_plans_section_displayed(self):
        """
        Returning number plans section status
        Implementing logging for is number plans section displayed functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is number plans section displayed')
            return self._carrier_page.is_number_plans_section_displayed()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is number plans section displayed')

    def is_customers_and_vendors_section_displayed(self):
        """
        Returning customers and vendors section status
        Implementing logging for is customers and vendors section displayed functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is customers and vendors section displayed')
            return self._carrier_page.is_customers_and_vendors_section_displayed()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is customers and vendors section displayed')

    def is_bill_audit_accounts_section_displayed(self):
        """
        Returning bill audit accounts section status
        Implementing logging for is bill audit accounts section displayed functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is bill audit accounts section displayed')
            return self._carrier_page.is_bill_audit_accounts_section_displayed()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is bill audit accounts section displayed')

    def select_price_lists_history_grid_multiple_rows(self):
        """
        Returning select price lists history grid multiple rows
        Implementing logging for select price lists history grid multiple rows functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select price lists history grid multiple rows')
            is_selected = True
            self._carrier_page.select_price_lists_history_grid_multiple_rows()
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select price lists history grid multiple rows')
            return is_selected

    def click_compare_price_lists_button(self):
        """
        Returning click compare price lists button
        Implementing logging for click compare price lists button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click compare price lists button')
            self._carrier_page.click_compare_price_lists_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click compare price lists button')
            return is_clicked

    def verify_selected_price_lists_details(self):
        """
        Returning verify selected price lists details
        Implementing logging for verify selected price lists details functionality
        :return: True/False
        """
        is_verified = None
        try:
            self.logger.info('Start: verify selected price lists details')
            is_verified = self._carrier_page.verify_selected_price_lists_details()
        except WebDriverException as exp:
            is_verified = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: verify selected price lists details')
            return is_verified

    def verify_rates_grid_columns(self):
        """
        Returning verify rates grid columns
        Implementing logging for verify rates grid columns functionality
        :return: True/False
        """
        is_verified = None
        try:
            self.logger.info('Start: verify rates grid columns')
            is_verified = self._carrier_page.verify_rates_grid_columns()
        except WebDriverException as exp:
            is_verified = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: verify rates grid columns')
            return is_verified

    def select_dial_digits_tab(self):
        """
        Returning select dial digits tab
        Implementing logging for select dial digits tab functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select dial digits tab')
            self._carrier_page.select_dial_digits_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select dial digits tab')
            return is_selected

    def verify_dialed_digits_columns(self):
        """
        Returning verify dialed digits columns
        Implementing logging for verify dialed digits columns functionality
        :return: True/False
        """
        is_verified = None
        try:
            self.logger.info('Start: verify dialed digits columns')
            is_verified = self._carrier_page.verify_dialed_digits_columns()
        except WebDriverException as exp:
            is_verified = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: verify dialed digits columns')
            return is_verified

    def close_compare_price_lists_pop_up(self):
        """
        Returning close compare price lists pop up
        Implementing logging for close compare price list pop up functionality
        :return: True/False
        """
        is_closed = None
        try:
            self.logger.info('Start: close compare price lists pop up')
            self._carrier_page.close_compare_price_lists_pop_up()
            is_closed = True
        except WebDriverException as exp:
            is_closed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: close compare price lists pop up')
            return is_closed

    def click_carrier_relationships_tab(self):
        """
        Returning click carrier relationships tab
        Implementing logging for click carrier relationships tab functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click carrier relationships tab')
            self._carrier_page.click_carrier_relationships_tab()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click carrier relationships tab')
            return is_clicked

    def click_dialed_digits_tab(self):
        """
        Returning click dialed digits tab
        Implementing logging for click dialed digits tab functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click dialed digits tab')
            self._carrier_page.click_dialed_digits_tab()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click dialed digits tab')
            return is_clicked

    def click_rates_tab(self):
        """
        Returning click rates tab
        Implementing logging for click rates tab functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click rates tab')
            self._carrier_page.click_rates_tab()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click rates tab')
            return is_clicked

    def is_carrier_relationships_tab_loaded(self):
        """
        Returning carrier relationships tab loading status
        Implementing logging for carrier relationships tab loaded functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is carrier relationships tab loaded')
            return self._carrier_page.is_carrier_relationships_tab_loaded()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is carrier relationships tab loaded')

    def is_dialed_digits_tab_loaded(self):
        """
        Returning dialed digits tab loading status
        Implementing logging for dialed digits tab loaded functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is dialed digits tab loaded')
            return self._carrier_page.is_dialed_digits_tab_loaded()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is dialed digits tab loaded')

    def is_rates_tab_loaded(self):
        """
        Returning rates tab loading status
        Implementing logging for rates tab loaded functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is rates tab loaded')
            return self._carrier_page.is_rates_tab_loaded()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is rates tab loaded')

    def is_destinations_tab_loaded(self):
        """
        Returning destinations tab loading status
        Implementing logging for destinations tab loaded functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is destinations tab loaded')
            return self._carrier_page.is_destinations_tab_loaded()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is destinations tab loaded')

    def click_create_carrier_button(self):
        """
        Returning click create carrier button
        Implementing logging for click create carrier button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click create carrier button')
            self._carrier_page.click_create_carrier_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click create carrier button')
            return is_clicked

    def set_carrier_name(self, carrier_name_prefix):
        """
        Returning set carrier name
        Implementing logging for set carrier name functionality
        :param carrier_name_prefix:
        :return: carrier name
        """
        is_set = None
        try:
            self.logger.info('Start: set carrier name')
            is_set = self._carrier_page.set_carrier_name(carrier_name_prefix)
        except WebDriverException as exp:
            is_set = "False"
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set carrier name')
            return is_set

    def set_carrier_abbreviation(self, carrier_abbreviation_prefix):
        """
        Returning set carrier abbreviation
        Implementing logging for set carrier abbreviation functionality
        :param carrier_abbreviation_prefix:
        :return: carrier abbreviation
        """
        is_set = None
        try:
            self.logger.info('Start: set carrier abbreviation')
            is_set = self._carrier_page.set_carrier_abbreviation(carrier_abbreviation_prefix)
        except WebDriverException as exp:
            is_set = "False"
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set carrier abbreviation')
            return is_set

    def set_carrier_legal_name(self, carrier_legal_name_prefix):
        """
        Returning set carrier legal name
        Implementing logging for set carrier legal name functionality
        :param carrier_legal_name_prefix:
        :return: carrier legal name
        """
        is_set = None
        try:
            self.logger.info('Start: set carrier legal name')
            if carrier_legal_name_prefix != "":
                is_set = self._carrier_page.set_carrier_legal_name(carrier_legal_name_prefix)
        except WebDriverException as exp:
            is_set = "False"
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set carrier legal name')
            return is_set

    def set_status(self, status):
        """
        Returning set status
        Implementing logging for set status functionality
        :param status:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set status')
            if status != "":
                self._carrier_page.set_status(status)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set status')
            return is_set

    def set_company(self, company):
        """
        Returning set company
        Implementing logging for set company functionality
        :param company:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set company')
            if company != "":
                self._carrier_page.set_company(company)
            is_set = True
        except WebDriverException as exp:
            is_set = "False"
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set company')
            return is_set

    def set_carrier_number(self):
        """
        Returning set carrier number
        Implementing logging for set carrier number functionality
        :return: carrier number
        """
        is_set = None
        try:
            self.logger.info('Start: set carrier number')
            is_set = self._carrier_page.set_carrier_number()
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set carrier number')
            return is_set

    def click_create_carrier_save_button(self):
        """
        Returning click create carrier save button
        Implementing logging for click create carrier save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click create carrier save button')
            self._carrier_page.click_create_carrier_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click create carrier save button')
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
            self._carrier_page.close_current_tab(tab_name)
            is_closed = True
        except WebDriverException as exp:
            is_closed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: close current tab')
            return is_closed

    def get_carriers_grid_row_details(self):
        """
        Returning get carriers grid row details
        Implementing logging for get carriers grid row details functionality
        :return: grid_row_data
        """
        try:
            self.logger.info('Start: get carriers grid row details')
            return self._carrier_page.get_carriers_grid_row_details()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get carriers grid row details')

    def click_save_carrier_profile_button(self):
        """
        Returning click save carrier profile button
        Implementing logging for click save carrier profile button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click save carrier profile button')
            self._carrier_page.click_save_carrier_profile_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click save carrier profile button')
            return is_clicked

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
            self._carrier_page.clear_filter(column_name)
            is_cleared = True
        except WebDriverException as exp:
            is_cleared = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: clear filter')
            return is_cleared

    def click_add_new_rates_button(self):
        """
        Returning click add new rates button
        Implementing logging for click add new rates button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click add new rates button')
            self._carrier_page.click_add_new_rates_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click add new rates button')
            return is_clicked

    def set_rate_plan_for_add_new_rate(self, rate_plan):
        """
        Returning set rate plan for add new rate
        Implementing logging for set rate plan for add new rate functionality
        :param rate_plan:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set rate plan for add new rate')
            self._carrier_page.set_rate_plan_for_add_new_rate(rate_plan)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set rate plan for add new rate')
            return is_set

    def set_begin_date_for_add_new_rate(self):
        """
        Returning set begin date for add new rate
        Implementing logging for set begin date for add new rate functionality
        :return: begin date
        """
        begin_date = None
        try:
            self.logger.info('Start: set begin date for add new rate')
            begin_date = self._carrier_page.set_begin_date_for_add_new_rate()
        except WebDriverException as exp:
            begin_date = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set begin date for add new rate')
            return begin_date

    def set_end_date_for_add_new_rate(self, end_date):
        """
        Returning set end date for add new rate
        Implementing logging for set end date for add new rate functionality
        :param: end_date:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set end date for add new rate')
            self._carrier_page.set_end_date_for_add_new_rate(end_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set end date for add new rate')
            return is_set

    def set_product_for_add_new_rate(self, product):
        """
        Returning set product for add new rate
        Implementing logging for set product for add new rate functionality
        :param product:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set product for add new rate')
            self._carrier_page.set_product_for_add_new_rate(product)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set product for add new rate')
            return is_set

    def set_rating_method_for_add_new_rate(self, rating_method):
        """
        Returning set rating method for add new rate
        Implementing logging for set rating method for add new rate functionality
        :param rating_method:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set rating method for add new rate')
            self._carrier_page.set_rating_method_for_add_new_rate(rating_method)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set rating method for add new rate')
            return is_set

    def set_cli_for_add_new_rate(self, cli):
        """
        Returning set cli for add new rate
        Implementing logging for set cli for add new rate functionality
        :param cli:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set cli for add new rate')
            self._carrier_page.set_cli_for_add_new_rate(cli)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set cli for add new rate')
            return is_set

    def set_grid_value_for_add_new_rate(self):
        """
        Returning set grid value for add new rate
        Implementing logging for set grid value for add new rate functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set grid value for add new rate')
            self._carrier_page.set_grid_value_for_add_new_rate()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set grid value for add new rate')
            return is_set

    def click_add_new_rate_save_button(self):
        """
        Returning click add new rate save button
        Implementing logging for click add new rate save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click add new rate save button')
            self._carrier_page.click_add_new_rate_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click add new rate save button')
            return is_clicked

    def set_product_name(self, product):
        """
        Returning set product name
        Implementing logging for set product name functionality
        :param product:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set product name')
            self._carrier_page.set_product_name(product)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set product name')
            return is_set

    def set_begin_date(self, date):
        """
        Returning set begin date
        Implementing logging for set begin date functionality
        :param date:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set begin date')
            self._carrier_page.set_begin_date(date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set begin date')
            return is_set

    def click_rates_page_search_button(self):
        """
        Returning click rates page search button
        Implementing logging for click rates page search button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click rates page search button')
            self._carrier_page.click_rates_page_search_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click rates page search button')
            return is_clicked

    def expand_customers_and_vendors_section(self):
        """
        Returning expand customers and vendors section
        Implementing logging for expand customers and vendors section functionality
        :return: True/False
        """
        is_expanded = None
        try:
            self.logger.info('Start: expand customers and vendors section')
            self._carrier_page.expand_customers_and_vendors_section()
            is_expanded = True
        except WebDriverException as exp:
            is_expanded = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: expand customers and vendors section')
            return is_expanded

    def click_create_customer_button(self):
        """
        Returning click create customer button
        Implementing logging for click create customer button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click create customer button')
            self._carrier_page.click_create_customer_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click create customer button')
            return is_clicked

    def set_customer_name(self, customer_name_prefix):
        """
        Returning set customer name
        Implementing logging for set customer name functionality
        :param customer_name_prefix:
        :return: customer name
        """
        is_set = None
        try:
            self.logger.info('Start: set customer name')
            is_set = self._carrier_page.set_customer_name(customer_name_prefix)
        except WebDriverException as exp:
            is_set = "False"
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set customer name')
            return is_set

    def set_abbreviation(self, abbreviation_name_prefix):
        """
        Returning set abbreviation
        Implementing logging for set abbreviation functionality
        :param abbreviation_name_prefix:
        :return: abbreviation name
        """
        is_set = None
        try:
            self.logger.info('Start: set abbreviation')
            is_set = self._carrier_page.set_abbreviation(abbreviation_name_prefix)
        except WebDriverException as exp:
            is_set = "False"
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set abbreviation')
            return is_set

    def set_rate_plan(self, item_name):
        """
        Returning set rate plan
        Implementing logging for set rate plan functionality
        :param item_name:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set rate plan')
            self._carrier_page.set_rate_plan(item_name)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set rate plan')
            return is_set

    def set_call_type(self, item_name):
        """
        Returning set call type
        Implementing logging for set call type functionality
        :param item_name:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set call type')
            self._carrier_page.set_call_type(item_name)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set call type')
            return is_set

    def click_save_customer_profile_button(self):
        """
        Returning click save customer profile button
        Implementing logging for click save customer profile button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click save customer profile button')
            self._carrier_page.click_save_customer_profile_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click save customer profile button')
            return is_clicked

    def filter_trade_source_grid(self, column_name, *filter_item_list):
        """
        Returning filter trade source grid
        Implementing logging for filter trade source grid functionality
        :param column_name:
        :param filter_item_list:
        :return: True/False
        """
        is_filtered = None
        try:
            self.logger.info('Start: filter trade source grid')
            self._carrier_page.filter_trade_source_grid(column_name, filter_item_list)
            is_filtered = True
        except WebDriverException as exp:
            is_filtered = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: filter trade source grid')
            return is_filtered

    def click_trade_source_grid_inline_action_button(self, name):
        """
        Returning click trade source grid inline action button
        Implementing logging for click trade source grid inline action button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click trade source grid inline action button')
            self._carrier_page.click_trade_source_grid_inline_action_button(name)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click trade source grid inline action button')
            return is_clicked

    def get_trade_source_grid_row_details(self):
        """
        Returning get trade source grid row details
        Implementing logging for get trade source grid row details functionality
        :return: grid_row_data
        """
        try:
            self.logger.info('Start: get trade source grid row details')
            return self._carrier_page.get_trade_source_grid_row_details()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get trade source grid row details')

    def set_vendor_for_view_price_list_detail(self, vendor):
        """
        Returning set vendor for view price list detail
        Implementing logging for set vendor for view price list detail functionality
        :param vendor:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set vendor for view price list detail')
            self._carrier_page.set_vendor_for_view_price_list_detail(vendor)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set vendor for view price list detail')
            return is_set

    def set_price_list_for_view_price_list_detail(self, price_list):
        """
        Returning set price list for view price list detail
        Implementing logging for set price list for view price list detail functionality
        :param price_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set price list for view price list detail')
            self._carrier_page.set_price_list_for_view_price_list_detail(price_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set price list for view price list detail')
            return is_set

    def expand_commercial_trunks_section(self):
        """
        Returning expand commercial trunks section
        Implementing logging for expand commercial trunks section functionality
        :return: True/False
        """
        is_expanded = None
        try:
            self.logger.info('Start: expand commercial trunks section')
            self._carrier_page.expand_commercial_trunks_section()
            is_expanded = True
        except WebDriverException as exp:
            is_expanded = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: expand commercial trunks section')
            return is_expanded

    def click_create_trunk_button(self):
        """
        Returning click create trunk button
        Implementing logging for click create trunk button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click create trunk button')
            self._carrier_page.click_create_trunk_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click create trunk button')
            return is_clicked

    def set_trunk_name(self, trunk_name_prefix):
        """
        Returning set trunk name
        Implementing logging for set trunk name functionality
        :param trunk_name_prefix:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set trunk name')
            is_set = self._carrier_page.set_trunk_name(trunk_name_prefix)
        except WebDriverException as exp:
            is_set = "False"
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set trunk name')
            return is_set

    def set_clli(self, clli):
        """
        Returning set clli
        Implementing logging for set clli functionality
        :param clli:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set clli')
            if clli != "":
                self._carrier_page.set_clli(clli)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set clli')
            return is_set

    def set_description(self, description):
        """
        Returning set description
        Implementing logging for set description functionality
        :param description:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set description')
            if description != "":
                self._carrier_page.set_description(description)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set description')
            return is_set

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
            self._carrier_page.set_effective_date(effective_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set effective date')
            return is_set

    def set_direction(self, direction):
        """
        Returning set direction
        Implementing logging for set direction functionality
        :param direction:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set direction')
            if direction != "":
                self._carrier_page.set_direction(direction)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set direction')
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
            self._carrier_page.click_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click save button')
            return is_clicked

    def filter_trunks_grid(self, column_name, *filter_item_list):
        """
        Returning filter trunks grid
        Implementing logging for filter trunks grid functionality
        :param column_name:
        :param filter_item_list:
        :return: True/False
        """
        is_filtered = None
        try:
            self.logger.info('Start: filter trunks grid')
            self._carrier_page.filter_trunks_grid(column_name, filter_item_list)
            is_filtered = True
        except WebDriverException as exp:
            is_filtered = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: filter trunks grid')
            return is_filtered

    def click_trunks_grid_inline_action_button(self, name):
        """
        Returning click trunks grid inline action button
        Implementing logging for click trunks grid inline action button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click trunks grid inline action button')
            self._carrier_page.click_trunks_grid_inline_action_button(name)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click trunks grid inline action button')
            return is_clicked

    def get_trunks_grid_row_details(self):
        """
        Returning get trunks grid row details
        Implementing logging for get trunks grid row details functionality
        :return: grid_row_data
        """
        try:
            self.logger.info('Start: get trunks grid row details')
            return self._carrier_page.get_trunks_grid_row_details()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get trunks grid row details')

    def click_create_vendor_button(self):
        """
        Returning click create vendor button
        Implementing logging for click create vendor button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click create vendor button')
            self._carrier_page.click_create_vendor_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click create vendor button')
            return is_clicked

    def set_vendor_name(self, vendor_name_prefix):
        """
        Returning set vendor name
        Implementing logging for set vendor name functionality
        :param vendor_name_prefix:
        :return: vendor name
        """
        vendor_name = None
        try:
            self.logger.info('Start: set vendor name')
            vendor_name = self._carrier_page.set_vendor_name(vendor_name_prefix)
        except WebDriverException as exp:
            vendor_name = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set vendor name')
            return vendor_name

    def click_save_vendor_profile_button(self):
        """
        Returning click save vendor profile button
        Implementing logging for click save vendor profile button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click save vendor profile button')
            self._carrier_page.click_save_vendor_profile_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click save vendor profile button')
            return is_clicked

    def expand_rate_plans_section(self):
        """
        Returning expand rate plans section
        Implementing logging for expand rate plans section functionality
        :return: True/False
        """
        is_expanded = None
        try:
            self.logger.info('Start: expand rate plans section')
            self._carrier_page.expand_rate_plans_section()
            is_expanded = True
        except WebDriverException as exp:
            is_expanded = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: expand rate plans section')
            return is_expanded

    def filter_rate_plan_grid(self, column_name, *filter_item_list):
        """
        Returning filter rate plan grid
        Implementing logging for filter rate plan grid functionality
        :param column_name:
        :param filter_item_list:
        :return: True/False
        """
        is_filtered = None
        try:
            self.logger.info('Start: filter rate plan grid')
            self._carrier_page.filter_rate_plan_grid(column_name, filter_item_list)
            is_filtered = True
        except WebDriverException as exp:
            is_filtered = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: filter rate plan grid')
            return is_filtered

    def click_rate_plan_grid_inline_action_button(self, name):
        """
        Returning click rate plan grid inline action button
        Implementing logging for click rate plan grid inline action button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click rate plan grid inline action button')
            self._carrier_page.click_rate_plan_grid_inline_action_button(name)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click rate plan grid inline action button')
            return is_clicked

    def get_rate_plan_grid_row_details(self):
        """
        Returning get rate plan grid row details
        Implementing logging for get rate plan grid row details functionality
        :return: grid_row_data
        """
        try:
            self.logger.info('Start: get rate plan grid row details')
            return self._carrier_page.get_rate_plan_grid_row_details()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get rate plan grid row details')

    def click_create_rate_plan_button(self):
        """
        Returning click create rate plan button
        Implementing logging for click create rate plan button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click create rate plan button')
            self._carrier_page.click_create_rate_plan_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click create rate plan button')
            return is_clicked

    def set_rate_plan_name(self, rate_plan_name_prefix):
        """
        Returning set rate plan name
        Implementing logging for set rate plan name functionality
        :param rate_plan_name_prefix:
        :return: rate plan name
        """
        is_set = None
        try:
            self.logger.info('Start: set rate plan name')
            is_set = self._carrier_page.set_rate_plan_name(rate_plan_name_prefix)
        except WebDriverException as exp:
            is_set = "False"
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: set rate plan name')
            return is_set

    def set_rate_plan_abbreviation(self, rate_plan_abbreviation_name_prefix):
        """
        Returning set rate plan abbreviation
        Implementing logging for set rate plan abbreviation functionality
        :param rate_plan_abbreviation_name_prefix:
        :return: rate plan abbreviation
        """
        is_set = None
        try:
            self.logger.info('Start: set rate plan abbreviation')
            is_set = self._carrier_page.set_rate_plan_abbreviation(rate_plan_abbreviation_name_prefix)
        except WebDriverException as exp:
            is_set = "False"
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: set rate plan abbreviation')
            return is_set

    def set_increase_notice_period_days(self, increase_notice_period_days):
        """
        Returning set increase notice period days
        Implementing logging for set increase notice period days functionality
        :param increase_notice_period_days:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set increase notice period days')
            if increase_notice_period_days != "":
                self._carrier_page.set_increase_notice_period_days(increase_notice_period_days)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set increase notice period days')
            return is_set

    def set_decrease_notice_period_days(self, decrease_notice_period_days):
        """
        Returning set decrease notice period days
        Implementing logging for set decrease notice period days functionality
        :param decrease_notice_period_days:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set decrease notice period days')
            if decrease_notice_period_days != "":
                self._carrier_page.set_decrease_notice_period_days(decrease_notice_period_days)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set decrease notice period days')
            return is_set

    def set_dial_digit_change_notice_period_days(self, dial_digit_change_notice_period_days):
        """
        Returning set dial digit change notice period days
        Implementing logging for set dial digit change notice period days functionality
        :param dial_digit_change_notice_period_days:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set dial digit change notice period days')
            if dial_digit_change_notice_period_days != "":
                self._carrier_page.set_dial_digit_change_notice_period_days(dial_digit_change_notice_period_days)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set dial digit change notice period days')
            return is_set

    def set_business_type(self, business_type):
        """
        Returning set business type
        Implementing logging for set business type functionality
        :param business_type:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set business type')
            if business_type != "":
                self._carrier_page.set_business_type(business_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set business type')
            return is_set

    def set_traffic_direction(self, traffic_direction):
        """
        Returning set traffic direction
        Implementing logging for set traffic direction functionality
        :param traffic_direction:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set traffic direction')
            if traffic_direction != "":
                self._carrier_page.set_traffic_direction(traffic_direction)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set traffic direction')
            return is_set

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
                self._carrier_page.set_tariff_type(tariff_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set tariff type')
            return is_set

    def set_service_level(self, service_level):
        """
        Returning set service level
        Implementing logging for set service level functionality
        :param service_level:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set service level')
            if service_level != "":
                self._carrier_page.set_service_level(service_level)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set service level')
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
            if currency != "":
                self._carrier_page.set_currency(currency)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set currency')
            return is_set

    def set_product_catalog(self, product_catalog):
        """
        Returning set product catalog
        Implementing logging for set product catalog functionality
        :param product_catalog:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set product catalog')
            if product_catalog != "":
                self._carrier_page.set_product_catalog(product_catalog)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set product catalog')
            return is_set

    def set_rate_plan_scope(self, rate_plan_scope):
        """
        Returning set rate plan scope
        Implementing logging for set rate plan scope functionality
        :param rate_plan_scope:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set rate plan scope')
            if rate_plan_scope != "":
                self._carrier_page.set_rate_plan_scope(rate_plan_scope)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set rate plan scope')
            return is_set

    def toggle_cost_pricing_indicator(self, cost_pricing_indicator):
        """
        Returning toggle cost pricing indicator
        Implementing logging for toggle cost pricing indicator functionality
        :param cost_pricing_indicator:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: toggle cost pricing indicator')
            if cost_pricing_indicator == "True":
                self._carrier_page.toggle_cost_pricing_indicator()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: toggle cost pricing indicator')
            return is_set

    def set_rating_method(self, rating_method):
        """
        Returning set rating method
        Implementing logging for set rating method functionality
        :param rating_method:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set rating method')
            if rating_method != "":
                self._carrier_page.set_rating_method(rating_method)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set rating method')
            return is_set

    def set_rate_plan_category_1(self, rate_plan_category_1):
        """
        Returning set rate plan category 1
        Implementing logging for set rate plan category 1 functionality
        :param rate_plan_category_1:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set rate plan category 1')
            if rate_plan_category_1 != "":
                self._carrier_page.set_rate_plan_category_1(rate_plan_category_1)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set rate plan category 1')
            return is_set

    def set_rate_plan_category_2(self, rate_plan_category_2):
        """
        Returning set rate plan category 2
        Implementing logging for set rate plan category 2 functionality
        :param rate_plan_category_2:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set rate plan category 2')
            if rate_plan_category_2 != "":
                self._carrier_page.set_rate_plan_category_2(rate_plan_category_2)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set rate plan category 2')
            return is_set

    def set_begin_date_for_add_new_rate_plan(self, begin_date):
        """
        Returning set begin date for add new rate plan
        Implementing logging for set begin date for add new rate plan functionality
        :param begin_date:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set begin date for add new rate plan')
            self._carrier_page.set_begin_date_for_add_new_rate_plan(begin_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set begin date for add new rate plan')
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
            self._carrier_page.set_end_date(end_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set end date')
            return is_set

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
                self._carrier_page.set_note(note)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set note')
            return is_set

    def set_select_date(self, select_date):
        """
        Returning set select date
        Implementing logging for set select date functionality
        :param select_date:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set select date')
            if select_date != "":
                self._carrier_page.set_select_date(select_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set select date')
            return is_set

    def click_carrier_relationships_search_button(self):
        """
        Returning click carrier relationships search button
        Implementing logging for click carrier relationships search button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click carrier relationships search button')
            self._carrier_page.click_carrier_relationships_search_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click carrier relationships search button')
            return is_clicked

    def select_price_lists_history_tab(self):
        """
        Returning select price lists history tab
        Implementing logging for select price lists history tab functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select price lists history tab')
            self._carrier_page.select_price_lists_history_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select price lists history tab')
            return is_selected

    def expand_bill_and_audit_account_section(self):
        """
        Returning expand bill and audit account section
        Implementing logging for expand bill and audit account section functionality
        :return: True/False
        """
        is_expanded = None
        try:
            self.logger.info('Start: expand bill and audit account section')
            self._carrier_page.expand_bill_and_audit_account_section()
            is_expanded = True
        except WebDriverException as exp:
            is_expanded = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: expand bill and audit account section')
            return is_expanded

    def click_create_bill_account(self):
        """
        Returning click create bill account
        Implementing logging for click create bill account functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click create bill account')
            self._carrier_page.click_create_bill_account()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click create bill account')
            return is_clicked

    def set_bill_and_audit_account_name(self, account_type, account_name_prefix):
        """
        Returning set bill and audit account name
        Implementing logging for set bill and audit account name functionality
        :param account_type:
        :param account_name_prefix:
        :return: account_name
        """
        bill_account = None
        try:
            self.logger.info('Start: set bill and audit account name')
            bill_account = self._carrier_page.set_bill_and_audit_account_name(account_type, account_name_prefix)
        except WebDriverException as exp:
            bill_account = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set bill and audit account name')
            return bill_account

    def set_bill_and_audit_account_abbreviation(self, account_type, abbreviation_prefix):
        """
        Returning set bill and audit account abbreviation
        Implementing logging for set bill and audit account abbreviation functionality
        :param account_type:
        :param abbreviation_prefix:
        :return: abbreviation
        """
        abbreviation = None
        try:
            self.logger.info('Start: set bill and audit account abbreviation')
            abbreviation = self._carrier_page.set_bill_and_audit_account_abbreviation(account_type, abbreviation_prefix)
        except WebDriverException as exp:
            abbreviation = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set bill and audit account abbreviation')
            return abbreviation

    def set_legal_name(self, legal_name_prefix):
        """
        Returning set legal name
        Implementing logging for set legal name functionality
        :param legal_name_prefix:
        :return: legal name
        """
        legal_name = None
        try:
            self.logger.info('Start: set legal name')
            legal_name = self._carrier_page.set_legal_name(legal_name_prefix)
        except WebDriverException as exp:
            legal_name = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set legal name')
            return legal_name

    def set_billing_method(self, billing_method):
        """
        Returning set billing method
        Implementing logging for set billing method functionality
        :param billing_method:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set billing method')
            self._carrier_page.set_billing_method(billing_method)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set billing method')
            return is_set

    def set_billing_terms_number(self, number):
        """
        Returning set billing terms number
        Implementing logging for set billing terms number functionality
        :param number:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set billing terms number')
            self._carrier_page.set_billing_terms_number(number)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set billing terms number')
            return is_set

    def set_billing_terms_base_period(self, base_period):
        """
        Returning set billing terms base period
        Implementing logging for set billing terms base period functionality
        :param base_period:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set billing terms base period')
            self._carrier_page.set_billing_terms_base_period(base_period)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set billing terms base period')
            return is_set

    def set_billing_terms_date_type(self, date_type):
        """
        Returning set billing terms date type
        Implementing logging for set billing terms date type functionality
        :param date_type:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set billing terms date type')
            self._carrier_page.set_billing_terms_date_type(date_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set billing terms date type')
            return is_set

    def set_payment_terms_number(self, number):
        """
        Returning set payment terms number
        Implementing logging for set payment terms number functionality
        :param number:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set payment terms number')
            self._carrier_page.set_payment_terms_number(number)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set payment terms number')
            return is_set

    def set_payment_terms_base_period(self, base_period):
        """
        Returning set payment terms base period
        Implementing logging for set payment terms base period functionality
        :param base_period:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set payment terms base period')
            self._carrier_page.set_payment_terms_base_period(base_period)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set payment terms base period')
            return is_set

    def set_payment_terms_date_type(self, date_type):
        """
        Returning set payment terms date type
        Implementing logging for set payment terms date type functionality
        :param date_type:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set payment terms date type')
            self._carrier_page.set_payment_terms_date_type(date_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set payment terms date type')
            return is_set

    def set_paying_account(self, account):
        """
        Returning set paying account
        Implementing logging for set paying account functionality
        :param account:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set paying account')
            self._carrier_page.set_paying_account(account)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set paying account')
            return is_set

    def set_receiving_account(self, account):
        """
        Returning set receiving account
        Implementing logging for set receiving account functionality
        :param account:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set receiving account')
            self._carrier_page.set_receiving_account(account)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set receiving account')
            return is_set

    def set_usage_time_zone(self, usage_time_zone):
        """
        Returning set usage time zone
        Implementing logging for set usage time zone functionality
        :param usage_time_zone:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set usage time zone')
            self._carrier_page.set_usage_time_zone(usage_time_zone)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set usage time zone')
            return is_set

    def set_accounting_code(self, code):
        """
        Returning set accounting code
        Implementing logging for set accounting code functionality
        :param code:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set accounting code')
            if code != "":
                self._carrier_page.set_accounting_code(code)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set accounting code')
            return is_set

    def set_origin_based_rating(self, rating):
        """
        Returning set origin based rating
        Implementing logging for set origin based rating functionality
        :param rating:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set origin based rating')
            self._carrier_page.set_origin_based_rating(rating)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set origin based rating')
            return is_set

    def expand_current_cycles_section(self):
        """
        Returning expand current cycles section
        Implementing logging for expand current cycles section functionality
        :return: True/False
        """
        is_expanded = None
        try:
            self.logger.info('Start: expand current cycles section')
            self._carrier_page.expand_current_cycles_section()
            is_expanded = True
        except WebDriverException as exp:
            is_expanded = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: expand current cycles section')
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
            self._carrier_page.set_billing_cycle_template(billing_cycle_template)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set billing cycle template')
            return is_set

    def set_settlement_cycle_template(self, settlement_cycle_template):
        """
        Returning set settlement cycle template
        Implementing logging for set settlement cycle template functionality
        :param settlement_cycle_template:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set settlement cycle template')
            self._carrier_page.set_settlement_cycle_template(settlement_cycle_template)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set settlement cycle template')
            return is_set

    def set_billing_cycle_begin_date(self, date):
        """
        Returning set billing cycle begin date
        Implementing logging for set billing cycle begin date functionality
        :param date:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set billing cycle begin date')
            self._carrier_page.set_billing_cycle_begin_date(date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set billing cycle begin date')
            return is_set

    def set_billing_cycle_end_date(self, date):
        """
        Returning set billing cycle end date
        Implementing logging for set billing cycle end date functionality
        :param date:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set billing cycle end date')
            if date != "":
                self._carrier_page.set_billing_cycle_end_date(date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set billing cycle end date')
            return is_set

    def set_settlement_cycle_begin_date(self, date):
        """
        Returning set settlement cycle begin date
        Implementing logging for set settlement cycle begin date functionality
        :param date:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set settlement cycle begin date')
            self._carrier_page.set_settlement_cycle_begin_date(date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set settlement cycle begin date')
            return is_set

    def set_settlement_cycle_end_date(self, date):
        """
        Returning set settlement cycle end date
        Implementing logging for set settlement cycle end date functionality
        :param date:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set settlement cycle end date')
            if date != "":
                self._carrier_page.set_settlement_cycle_end_date(date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set settlement cycle end date')
            return is_set

    def set_residual_traffic_window_number(self, number):
        """
        Returning set residual traffic window number
        Implementing logging for set residual traffic window number functionality
        :param number:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set residual traffic window number')
            self._carrier_page.set_residual_traffic_window_number(number)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set residual traffic window number')
            return is_set

    def expand_additional_fields_section(self):
        """
        Returning expand additional fields section
        Implementing logging for expand additional fields section functionality
        :return: True/False
        """
        is_expanded = None
        try:
            self.logger.info('Start: expand additional fields section')
            self._carrier_page.expand_additional_fields_section()
            is_expanded = True
        except WebDriverException as exp:
            is_expanded = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: expand additional fields section')
            return is_expanded

    def set_analyst(self, account_type, first_name, last_name):
        """
        Returning set analyst
        Implementing logging for set analyst functionality
        :param account_type:
        :param first_name:
        :param last_name:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set analyst')
            self._carrier_page.set_analyst(account_type, first_name, last_name)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set analyst')
            return is_set

    def set_manager(self, account_type, first_name, last_name):
        """
        Returning set manager
        Implementing logging for set manager functionality
        :param account_type:
        :param first_name:
        :param last_name:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set manager')
            self._carrier_page.set_manager(account_type, first_name, last_name)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set manager')
            return is_set

    def expand_statement_section(self):
        """
        Returning expand statement section
        Implementing logging for expand statement section functionality
        :return: True/False
        """
        is_expanded = None
        try:
            self.logger.info('Start: expand statement section')
            self._carrier_page.expand_statement_section()
            is_expanded = True
        except WebDriverException as exp:
            is_expanded = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: expand statement section')
            return is_expanded

    def set_cover_letter_template(self, cover_letter_template):
        """
        Returning set cover letter template
        Implementing logging for set cover letter template functionality
        :param cover_letter_template:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set cover letter template')
            self._carrier_page.set_cover_letter_template(cover_letter_template)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set cover letter template')
            return is_set

    def set_statement_template(self, statement_template):
        """
        Returning set statement template
        Implementing logging for set statement template functionality
        :param statement_template:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set statement template')
            self._carrier_page.set_statement_template(statement_template)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set statement template')
            return is_set

    def set_statement_number_template(self, statement_number_template):
        """
        Returning set statement number template
        Implementing logging for set statement number template functionality
        :param statement_number_template:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set statement number template')
            self._carrier_page.set_statement_number_template(statement_number_template)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set statement number template')
            return is_set

    def set_positive_adjustment_statement_template(self, template):
        """
        Returning set positive adjustment statement template
        Implementing logging for set positive adjustment statement template functionality
        :param template:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set positive adjustment statement template')
            self._carrier_page.set_positive_adjustment_statement_template(template)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set positive adjustment statement template')
            return is_set

    def set_negative_adjustment_statement_template(self, template):
        """
        Returning set negative adjustment statement template
        Implementing logging for set negative adjustment statement template functionality
        :param template:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set negative adjustment statement template')
            self._carrier_page.set_negative_adjustment_statement_template(template)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set negative adjustment statement template')
            return is_set

    def set_residual_traffic_treatment(self, residual_traffic_treatment):
        """
        Returning set residual traffic treatment
        Implementing logging for set residual traffic treatment functionality
        :param residual_traffic_treatment:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set residual traffic treatment')
            self._carrier_page.set_residual_traffic_treatment(residual_traffic_treatment)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set residual traffic treatment')
            return is_set

    def set_shortfall_approval_method(self, shortfall_approval_method):
        """
        Returning set shortfall approval method
        Implementing logging for set shortfall approval method functionality
        :param shortfall_approval_method:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set shortfall approval method')
            self._carrier_page.set_shortfall_approval_method(shortfall_approval_method)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set shortfall approval method')
            return is_set

    def click_create_bill_account_save_button(self):
        """
        Returning click create bill account save button
        Implementing logging for click create bill account save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: set shortfall approval method')
            self._carrier_page.click_create_bill_account_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set shortfall approval method')
            return is_clicked

    def close_add_new_bill_account_popup(self):
        """
        Returning close add new bill account popup
        Implementing logging for close add new bill account popup functionality
        :return: True/False
        """
        is_closed = None
        try:
            self.logger.info('Start: close add new bill account popup')
            self._carrier_page.close_add_new_bill_account_popup()
            is_closed = True
        except WebDriverException as exp:
            is_closed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: close add new bill account popup')
            return is_closed

    def click_bill_and_audit_accounts_grid_inline_action_button(self, name):
        """
        Returning click bill and audit accounts grid inline action button
        Implementing logging for click bill and audit accounts grid inline action button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click bill and audit accounts grid inline action button')
            self._carrier_page.click_bill_and_audit_accounts_grid_inline_action_button(name)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click bill and audit accounts grid inline action button')
            return is_clicked

    def filter_bill_and_audit_accounts_grid(self, column_name, *filter_item_list):
        """
        Returning filter bill and audit accounts grid
        Implementing logging for filter bill and audit accounts grid functionality
        :param column_name:
        :param filter_item_list:
        :return: True/False
        """
        is_filtered = None
        try:
            self.logger.info('Start: filter bill and audit accounts grid')
            self._carrier_page.filter_bill_and_audit_accounts_grid(column_name, filter_item_list)
            is_filtered = True
        except WebDriverException as exp:
            is_filtered = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: filter bill and audit accounts grid')
            return is_filtered

    def get_bill_and_audit_accounts_grid_row_details(self):
        """
        Returning get bill and audit accounts grid row details
        Implementing logging for get bill and audit accounts grid row details functionality
        :return: grid_row_data
        """
        try:
            self.logger.info('Start: get bill and audit accounts grid row details')
            return self._carrier_page.get_bill_and_audit_accounts_grid_row_details()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get bill and audit accounts grid row details')

    def close_edit_bill_account_popup(self):
        """
        Returning close edit bill account popup
        Implementing logging for close edit bill account popup functionality
        :return: True/False
        """
        is_closed = None
        try:
            self.logger.info('Start: close edit bill account popup')
            self._carrier_page.close_edit_bill_account_popup()
            is_closed = True
        except WebDriverException as exp:
            is_closed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: close edit bill account popup')
            return is_closed

    def filter_credit_management_grid(self, column_name, filter_item_text):
        """
        Returning filter credit management grid
        Implementing logging for filter credit management grid functionality
        :param column_name:
        :param filter_item_text:
        :return: True/False
        """
        is_filtered = None
        try:
            self.logger.info('Start: filter credit management grid')
            self._carrier_page.filter_credit_management_grid(column_name, filter_item_text)
            is_filtered = True
        except WebDriverException as exp:
            is_filtered = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: filter credit management grid')
            return is_filtered

    def select_credit_management_grid_row_checkbox(self, row_identifier_text):
        """
        Returning select credit management grid row checkbox
        Implementing logging for select credit management grid row checkbox functionality
        :param row_identifier_text:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select credit management grid row checkbox')
            is_selected = True
            self._carrier_page.select_credit_management_grid_row_checkbox(row_identifier_text)
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select credit management grid row checkbox')
            return is_selected

    def click_credit_management_bulk_edit_button(self):
        """
        Returning click credit management bulk edit button
        Implementing logging for click credit management bulk edit button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click credit management bulk edit button')
            self._carrier_page.click_credit_management_bulk_edit_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click credit management bulk edit button')
            return is_clicked

    def set_trunk_provisioning_status(self, status):
        """
        Returning set trunk provisioning status
        Implementing logging for set trunk provisioning status functionality
        :param status:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set trunk provisioning status')
            self._carrier_page.set_trunk_provisioning_status(status)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set trunk provisioning status')
            return is_set

    def click_bulk_edit_submit_button(self):
        """
        Returning click bulk edit submit button
        Implementing logging for click bulk edit submit button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click bulk edit submit button')
            self._carrier_page.click_bulk_edit_submit_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click bulk edit submit button')
            return is_clicked

    def click_save_changes_button(self):
        """
        Returning click save changes button
        Implementing logging for click save changes button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click save changes button')
            self._carrier_page.click_save_changes_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click save changes button')
            return is_clicked

    def click_credit_management_page_inline_action_button(self, row_identifier_text):
        """
        Returning click credit management page inline action button
        Implementing logging for click credit management page inline action button functionality
        :param row_identifier_text:
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click credit management page inline action button')
            self._carrier_page.click_credit_management_page_inline_action_button(row_identifier_text)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click credit management page inline action button')
            return is_clicked

    def click_monitoring_details_tab(self):
        """
        Returning click monitoring details tab
        Implementing logging for click monitoring details tab functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click monitoring details tab')
            self._carrier_page.click_monitoring_details_tab()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click monitoring details tab')
            return is_clicked

    def click_add_new_transaction_button(self):
        """
        Returning click add new transaction button
        Implementing logging for click add new transaction button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click add new transaction button')
            self._carrier_page.click_add_new_transaction_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click add new transaction button')
            return is_clicked

    def set_transaction_date(self, date):
        """
        Returning set transaction date
        Implementing logging for set transaction date functionality
        :param date:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set transaction date')
            self._carrier_page.set_transaction_date(date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set transaction date')
            return is_set

    def set_transaction_id(self):
        """
        Returning set transaction id
        Implementing set transaction id functionality
        :return: transaction_id
        """
        transaction_id = None
        try:
            self.logger.info('Start: set transaction id')
            transaction_id = self._carrier_page.set_transaction_id()
        except WebDriverException as exp:
            transaction_id = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set transaction id')
            return transaction_id

    def set_transaction_type(self, transaction_type):
        """
        Returning set transaction type
        Implementing logging for set transaction type functionality
        :param transaction_type:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set transaction type')
            self._carrier_page.set_transaction_type(transaction_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set transaction type')
            return is_set

    def set_transaction_account_type(self, account_type):
        """
        Returning set transaction account type
        Implementing logging for set transaction account type functionality
        :param account_type:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set transaction account type')
            if account_type != "":
                self._carrier_page.set_transaction_account_type(account_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set transaction account type')
            return is_set

    def set_transaction_account(self, account):
        """
        Returning set transaction account
        Implementing logging for set transaction account functionality
        :param account:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set transaction account')
            if account != "":
                self._carrier_page.set_transaction_account(account)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set transaction account')
            return is_set

    def set_transaction_amount(self, amount):
        """
        Returning set transaction amount
        Implementing logging for set transaction amount functionality
        :param amount:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set transaction amount')
            self._carrier_page.set_transaction_amount(amount)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set transaction amount')
            return is_set

    def set_transaction_currency(self, currency):
        """
        Returning set transaction currency
        Implementing logging for set transaction currency functionality
        :param currency:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set transaction currency')
            self._carrier_page.set_transaction_currency(currency)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set transaction currency')
            return is_set

    def set_external_reference_1(self, reference):
        """
        Returning set external reference 1
        Implementing logging for set external reference 1 functionality
        :param reference:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set external reference 1')
            if reference != "":
                self._carrier_page.set_external_reference_1(reference)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set external reference 1')
            return is_set

    def set_external_reference_2(self, reference):
        """
        Returning set external reference 2
        Implementing logging for set external reference 2 functionality
        :param reference:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set external reference 2')
            if reference != "":
                self._carrier_page.set_external_reference_2(reference)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set external reference 2')
            return is_set

    def set_statement_begin_date(self, date):
        """
        Returning set statement begin date
        Implementing logging for set statement begin date functionality
        :param date:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set statement begin date')
            if date != "":
                self._carrier_page.set_statement_begin_date(date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set statement begin date')
            return is_set

    def set_statement_end_date(self, date):
        """
        Returning set statement end date
        Implementing logging for set statement end date functionality
        :param date:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set statement end date')
            if date != "":
                self._carrier_page.set_statement_end_date(date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set statement end date')
            return is_set

    def click_add_new_transaction_save_button(self):
        """
        Returning click add new transaction save button
        Implementing logging for click add new transaction save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click add new transaction save button')
            self._carrier_page.click_add_new_transaction_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click add new transaction save button')
            return is_clicked

    def filter_transaction_history_grid(self, column_name, filter_text):
        """
        Returning filter transaction history grid
        Implementing logging for filter transaction history grid functionality
        :param column_name:
        :param filter_text:
        :return: True/False
        """
        is_filtered = None
        try:
            self.logger.info('Start: filter transaction history grid')
            self._carrier_page.filter_transaction_history_grid(column_name, filter_text)
            is_filtered = True
        except WebDriverException as exp:
            is_filtered = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: filter transaction history grid')
            return is_filtered

    def get_transaction_history_grid_row_details(self):
        """
        Returning get transaction history grid row details
        Implementing logging for get transaction history grid row details functionality
        :return: grid row data
        """
        try:
            self.logger.info('Start: filter transaction history grid')
            return self._carrier_page.get_transaction_history_grid_row_details()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: filter transaction history grid')

    def click_activate_credit_limit_button(self):
        """
        Returning click activate credit limit button
        Implementing logging for click activate credit limit button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click activate credit limit button')
            self._carrier_page.click_activate_credit_limit_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click activate credit limit button')
            return is_clicked

    def set_carrier_name_for_activate_credit_limit(self, carrier_name):
        """
        Returning set carrier name for activate credit limit
        Implementing logging for set carrier name for activate credit limit functionality
        :param carrier_name:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set carrier name for activate credit limit')
            self._carrier_page.set_carrier_name_for_activate_credit_limit(carrier_name)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set carrier name for activate credit limit')
            return is_set

    def set_credit_management_status(self, status):
        """
        Returning set credit management status
        Implementing logging for set credit management status functionality
        :param status:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set credit management status')
            self._carrier_page.set_credit_management_status(status)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set credit management status')
            return is_set

    def set_pre_paid_customer(self, status):
        """
        Returning set pre paid customer
        Implementing logging for set pre paid customer functionality
        :param status:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set pre paid customer')
            self._carrier_page.set_pre_paid_customer(status)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set pre paid customer')
            return is_set

    def set_credit_limit(self, amount):
        """
        Returning set credit limit
        Implementing logging for set credit limit functionality
        :param amount:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set credit limit')
            self._carrier_page.set_credit_limit(amount)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set credit limit')
            return is_set

    def set_threshold_values(self, threshold, value):
        """
        Returning set threshold values
        Implementing set threshold values functionality
        :param threshold:
        :param value:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set threshold values')
            self._carrier_page.set_threshold_values(threshold, value)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set threshold values')
            return is_set

    def set_credit_limit_monitoring(self, item):
        """
        Returning set credit limit monitoring
        Implementing logging for set credit limit monitoring functionality
        :param item:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set credit limit monitoring')
            self._carrier_page.set_credit_limit_monitoring(item)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set credit limit monitoring')
            return is_set

    def set_tarrif_type_assignment(self, item):
        """
        Returning set tarrif type assignment
        Implementing logging for set tarrif type assignment functionality
        :param item:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set tarrif type assignment')
            self._carrier_page.set_tarrif_type_assignment(item)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set tarrif type assignment')
            return is_set

    def click_save_credit_profile_button(self):
        """
        Returning click save credit profile button
        Implementing logging for click save credit profile button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click save credit profile button')
            self._carrier_page.click_save_credit_profile_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click save credit profile button')
            return is_clicked

    def get_credit_management_grid_row_details(self):
        """
        Returning credit management grid row details
        Implementing logging for get credit management grid row details functionality
        :return: grid_row_data
        """
        try:
            self.logger.info('Start: get credit management grid row details')
            return self._carrier_page.get_credit_management_grid_row_details()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get credit management grid row details')

    def is_credit_management_grid_inline_item_visible(self, inline_item):
        """
        Returning credit management grid inline items visibility status
        Implementing logging for credit management grid inline items visibility status
        :param inline_item:
        :return: True/False
        """
        is_visible = None
        try:
            self.logger.info('Start: is credit management grid inline items visible')
            is_visible = self._carrier_page.is_credit_management_grid_inline_items_visible(inline_item)
        except WebDriverException as exp:
            is_visible = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is credit management grid inline items visible')
            return is_visible

    def set_credit_limit_for_edit_credit_profile(self, amount):
        """
        Returning set credit limit for edit credit profile
        Implementing logging for set credit limit for edit credit profile functionality
        :param amount:
        :return: credit_limit
        """
        credit_limit = None
        try:
            self.logger.info('Start: set credit limit for edit credit profile')
            credit_limit = self._carrier_page.set_credit_limit_for_edit_credit_profile(amount)
        except WebDriverException as exp:
            credit_limit = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set credit limit for edit credit profile')
            return credit_limit

    def set_user_activation_approval_required(self, status):
        """
        Returning set user activation approval required
        Implementing logging for set user activation approval required functionality
        :param status:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set user activation approval required')
            if status != "":
                self._carrier_page.set_user_activation_approval_required(status)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set user activation approval required')
            return is_set

    def set_user_shutoff_approval_required(self, status):
        """
        Returning set user shutoff approval required
        Implementing logging for set user shutoff approval required functionality
        :param status:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set user shutoff approval required')
            if status != "":
                self._carrier_page.set_user_shutoff_approval_required(status)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set user shutoff approval required')
            return is_set

    def click_create_in_audit_account(self):
        """
        Returning click create in audit account
        Implementing logging for click create in audit account functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click create in audit account')
            self._carrier_page.click_create_in_audit_account()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click create in audit account')
            return is_clicked

    def set_dispute_terms_number(self, number):
        """
        Returning set dispute terms number
        Implementing logging for set dispute terms number functionality
        :param number:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set dispute terms number')
            self._carrier_page.set_dispute_terms_number(number)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set dispute terms number')
            return is_set

    def set_dispute_terms_base_period(self, base_period):
        """
        Returning set dispute terms base period
        Implementing logging for set dispute terms base period functionality
        :param base_period:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set dispute terms base period')
            self._carrier_page.set_dispute_terms_base_period(base_period)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set dispute terms base period')
            return is_set

    def set_dispute_terms_date_type(self, date_type):
        """
        Returning set dispute terms date type
        Implementing logging for set dispute terms date type functionality
        :param date_type:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set dispute terms date type')
            self._carrier_page.set_dispute_terms_date_type(date_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set dispute terms date type')
            return is_set

    def set_default_dispute_grade(self, grade):
        """
        Returning set default dispute grade
        Implementing logging for set default dispute grade functionality
        :param grade:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set default dispute grade')
            self._carrier_page.set_default_dispute_grade(grade)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set default dispute grade')
            return is_set

    def set_audit_account_status(self, status):
        """
        Returning set audit account status
        Implementing logging for set audit account status functionality
        :param status:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set audit account status')
            self._carrier_page.set_audit_account_status(status)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set audit account status')
            return is_set

    def close_add_in_audit_account_pop_up(self):
        """
        Returning close add in audit account pop up
        Implementing logging for close add in audit account pop up functionality
        :return: True/False
        """
        is_closed = None
        try:
            self.logger.info('Start: close add in audit account pop up')
            self._carrier_page.close_add_in_audit_account_pop_up()
            is_closed = True
        except WebDriverException as exp:
            is_closed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: close add in audit account pop up')
            return is_closed

    def close_edit_in_audit_account_pop_up(self):
        """
        Returning close edit in audit account pop up
        Implementing logging for close edit in audit account pop up functionality
        :return: True/False
        """
        is_closed = None
        try:
            self.logger.info('Start: close edit in audit account pop up')
            self._carrier_page.close_edit_in_audit_account_pop_up()
            is_closed = True
        except WebDriverException as exp:
            is_closed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: close edit in audit account pop up')
            return is_closed

    def click_create_out_audit_account(self):
        """
        Returning click create out audit account
        Implementing logging for click create out audit account functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click create out audit account')
            self._carrier_page.click_create_out_audit_account()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click create out audit account')
            return is_clicked

    def set_bill_account_for_out_audit_account(self, account):
        """
        Returning set bill account for out audit account
        Implementing logging for set bill account for out audit account functionality
        :param account:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set bill account for out audit account')
            self._carrier_page.set_bill_account_for_out_audit_account(account)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set bill account for out audit account')
            return is_set

    def close_add_out_audit_account_pop_up(self):
        """
        Returning close add out audit account pop up
        Implementing logging for close add out audit account pop up functionality
        :return: True/False
        """
        is_closed = None
        try:
            self.logger.info('Start: close add out audit account pop up')
            self._carrier_page.close_add_out_audit_account_pop_up()
            is_closed = True
        except WebDriverException as exp:
            is_closed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: close add out audit account pop up')
            return is_closed

    def close_edit_out_audit_account_pop_up(self):
        """
        Returning close edit out audit account pop up
        Implementing logging for close edit out audit account pop up functionality
        :return: True/False
        """
        is_closed = None
        try:
            self.logger.info('Start: close edit out audit account pop up')
            self._carrier_page.close_edit_out_audit_account_pop_up()
            is_closed = True
        except WebDriverException as exp:
            is_closed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: close edit out audit account pop up')
            return is_closed

    def expand_scenarios_section(self):
        """
        Returning expand scenarios section
        Implementing logging for expand scenarios section functionality
        :return: True/False
        """
        is_expanded = None
        try:
            self.logger.info('Start: expand scenarios section')
            self._carrier_page.expand_scenarios_section()
            is_expanded = True
        except WebDriverException as exp:
            is_expanded = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: expand scenarios section')
            return is_expanded

    def click_create_scenario_button(self):
        """
        Returning click create scenario button
        Implementing logging for click create scenario button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click create scenario button')
            self._carrier_page.click_create_scenario_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click create scenario button')
            return is_clicked

    def set_scenario_type(self, scenario_type):
        """
        Returning set scenario type
        Implementing logging for set scenario type functionality
        :param scenario_type:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set scenario type')
            self._carrier_page.set_scenario_type(scenario_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set scenario type')
            return is_set

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
            self._carrier_page.set_commercial_trunk(commercial_trunk)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set commercial trunk')
            return is_set

    def set_country(self, country):
        """
        Returning set country
        Implementing logging for set country functionality
        :param country:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set country')
            self._carrier_page.set_country(country)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set country')
            return is_set

    def set_service(self, service):
        """
        Returning set service
        Implementing logging for set service functionality
        :param service:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set service')
            self._carrier_page.set_service(service)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set service')
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
            self._carrier_page.close_current_pop_up(pop_up_name)
            is_closed = True
        except WebDriverException as exp:
            is_closed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: close current pop up')
            return is_closed

    def filter_scenarios_grid(self, column_name, *filter_item_list):
        """
        Returning filter scenarios grid
        Implementing logging for filter scenarios grid functionality
        :param column_name:
        :param filter_item_list:
        :return: True/False
        """
        is_filtered = None
        try:
            self.logger.info('Start: filter scenarios grid')
            self._carrier_page.filter_scenarios_grid(column_name, filter_item_list)
            is_filtered = True
        except WebDriverException as exp:
            is_filtered = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: filter scenarios grid')
            return is_filtered

    def click_scenarios_grid_inline_action_button(self, name):
        """
        Returning click scenarios grid inline action button
        Implementing logging for click scenarios grid inline action button functionality
        :param name:
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click scenarios grid inline action button')
            self._carrier_page.click_scenarios_grid_inline_action_button(name)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click scenarios grid inline action button')
            return is_clicked

    def get_scenarios_grid_row_details(self):
        """
        Returning get scenarios grid row details
        Implementing logging for get scenarios grid row details functionality
        :return: grid_row_data
        """
        try:
            self.logger.info('Start: get scenarios grid row details')
            return self._carrier_page.get_scenarios_grid_row_details()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get scenarios grid row details')

    def click_add_new_event_settlement_button(self):
        """
        Returning click add new event settlement button
        Implementing logging for click add new event settlement button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click add new event settlement button')
            self._carrier_page.click_add_new_event_settlement_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click add new event settlement button')
            return is_clicked

    def click_delete_event_settlement_button(self):
        """
        Returning click delete event settlement button
        Implementing logging for click delete event settlement button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click delete event settlement button')
            self._carrier_page.click_delete_event_settlement_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click delete event settlement button')
            return is_clicked

    def select_event_settlement_grid_row_checkbox(self, paying_party):
        """
        Returning select event settlement grid row checkbox
        Implementing logging for select event settlement grid row checkbox functionality
        :param paying_party:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select event settlement grid row checkbox')
            self._carrier_page.select_event_settlement_grid_row_checkbox(paying_party)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select event settlement grid row checkbox')
            return is_selected

    def select_scenarios_grid_row_checkbox(self, commercial_trunk):
        """
        Returning select scenarios grid row checkbox
        Implementing logging for select scenarios grid row checkbox functionality
        :param commercial_trunk:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select scenarios grid row checkbox')
            self._carrier_page.select_scenarios_grid_row_checkbox(commercial_trunk)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select scenarios grid row checkbox')
            return is_selected

    def click_delete_scenario_button(self):
        """
        Returning click delete scenario button
        Implementing logging for click delete scenario button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click delete scenario button')
            self._carrier_page.click_delete_scenario_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click delete scenario button')
            return is_clicked

    def click_threshold_button(self):
        """
        Returning click threshold button
        Implementing logging for click threshold button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click threshold button')
            self._carrier_page.click_threshold_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click threshold button')
            return is_clicked

    def select_threshold_grid_row_checkbox(self, *carrier_list):
        """
        Returning select threshold grid row checkbox
        Implementing logging for select threshold grid row checkbox functionality
        :param carrier_list:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select threshold grid row checkbox')
            self._carrier_page.select_threshold_grid_row_checkbox(carrier_list)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select threshold grid row checkbox')
            return is_selected

    def click_threshold_grid_bulk_edit_button(self):
        """
        Returning click threshold grid bulk edit button
        Implementing logging for click threshold grid bulk edit button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click threshold grid bulk edit button')
            self._carrier_page.click_threshold_grid_bulk_edit_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click threshold grid bulk edit button')
            return is_clicked

    def set_threshold_type_for_bulk_edit(self, threshold_type):
        """
        Returning set threshold type for bulk edit
        Implementing logging for set threshold type for bulk edit functionality
        :param threshold_type:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set threshold type for bulk edit')
            self._carrier_page.set_threshold_type_for_bulk_edit(threshold_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set threshold type for bulk edit')
            return is_set

    def set_warning_levels_for_bulk_edit(self, level, value):
        """
        Returning set warning levels for bulk edit
        Implementing logging for set warning levels for bulk edit functionality
        :param level:
        :param value:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set warning levels for bulk edit')
            self._carrier_page.set_warning_levels_for_bulk_edit(level, value)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set warning levels for bulk edit')
            return is_set

    def get_threshold_grid_row_details(self):
        """
        Returning threshold grid row details
        Implementing logging for get threshold grid row details functionality
        :return: grid_row_data
        """
        try:
            self.logger.info('Start: get threshold grid row details')
            return self._carrier_page.get_threshold_grid_row_details()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get threshold grid row details')

    def click_threshold_grid_save_changes_button(self):
        """
        Returning click threshold grid save changes button
        Implementing logging for click threshold grid save changes button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click threshold grid save changes button')
            self._carrier_page.click_threshold_grid_save_changes_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click threshold grid save changes button')
            return is_clicked

    def set_monitoring_details_note(self, note_prefix):
        """
        Returning set monitoring details note
        Implementing logging for set monitoring details note functionality
        :param note_prefix:
        :return: monitoring_details_note/'False'
        """
        is_set = None
        try:
            self.logger.info('Start: set monitoring details note')
            is_set = self._carrier_page.set_monitoring_details_note(note_prefix)
        except WebDriverException as exp:
            is_set = 'False'
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set monitoring details note')
            return is_set

    def click_save_monitoring_details_button(self):
        """
        Returning click save monitoring details button
        Implementing logging for click save monitoring details button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click save monitoring details button')
            self._carrier_page.click_save_monitoring_details_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click save monitoring details button')
            return is_clicked

    def get_trunk_provisioning_status_value(self):
        """
        Returning get trunk provisioning status value
        Implementing logging for get trunk provisioning status value functionality
        :return: trunk_provisioning_status/'False'
        """
        is_got = None
        try:
            self.logger.info('Start: get trunk provisioning status value')
            is_got = self._carrier_page.get_trunk_provisioning_status_value()
        except WebDriverException as exp:
            is_got = 'False'
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get trunk provisioning status value')
            return is_got

    def get_monitoring_details_note(self):
        """
        Returning get monitoring details note
        Implementing logging for get monitoring details note functionality
        :return: monitoring_details_note/'False'
        """
        is_got = None
        try:
            self.logger.info('Start: get monitoring details note')
            is_got = self._carrier_page.get_monitoring_details_note()
        except WebDriverException as exp:
            is_got = 'False'
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get monitoring details note')
            return is_got

    def compare_carrier_dialed_digit_with_excel_data(self):
        """
        Returning compare carrier dialed digit with excel data
        Implementing logging for compare carrier dialed digit with excel data functionality
        :return: True/False
        """
        is_compared = None
        try:
            self.logger.info('Start: compare carrier dialed digit with excel data')
            is_compared = self._carrier_page.compare_carrier_dialed_digit_with_excel_data()
        except WebDriverException as exp:
            is_compared = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare carrier dialed digit with excel data')
            return is_compared

    def compare_carrier_rates_with_excel_data(self):
        """
        Returning compare carrier rates with excel data
        Implementing logging for compare carrier rates with excel data functionality
        :return: True/False
        """
        is_compared = None
        try:
            self.logger.info('Start: compare carrier rates with excel data')
            is_compared = self._carrier_page.compare_carrier_rates_with_excel_data()
        except WebDriverException as exp:
            is_compared = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare carrier rates with excel data')
            return is_compared

    def compare_carrier_destination_with_excel_data(self):
        """
        Returning compare carrier destination with excel data
        Implementing logging for compare carrier destination with excel data functionality
        :return: True/False
        """
        is_compared = None
        try:
            self.logger.info('Start: compare carrier destination with excel data')
            is_compared = self._carrier_page.compare_carrier_destination_with_excel_data()
        except WebDriverException as exp:
            is_compared = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare carrier destination with excel data')
            return is_compared

    def expand_number_plans_section(self):
        """
        Returning expand number plans section
        Implementing logging for expand number plans section functionality
        :return: True/False
        """
        is_expanded = None
        try:
            self.logger.info('Start: expand number plans section')
            self._carrier_page.expand_number_plans_section()
            is_expanded = True
        except WebDriverException as exp:
            is_expanded = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: expand number plans section')
            return is_expanded

    def click_add_number_plan_button(self):
        """
        Returning click add number plan button
        Implementing logging for click add number plan button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click add number plan button')
            self._carrier_page.click_add_number_plan_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click add number plan button')
            return is_clicked

    def set_number_plan(self, number_plan):
        """
        Returning set number plan
        Implementing logging for set number plan functionality
        :param number_plan:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set number plan')
            self._carrier_page.set_number_plan(number_plan)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set number plan')
            return is_set

    def get_number_plans_grid_row_details(self):
        """
        Returning number plans grid row details
        Implementing logging for get number plans grid row details functionality
        :return: grid_row_data
        """
        try:
            self.logger.info('Start: get number plans grid row details')
            return self._carrier_page.get_number_plans_grid_row_details()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get number plans grid row details')

    def set_begin_date_for_add_number_plan(self, begin_date):
        """
        Returning set begin date for add number plan
        Implementing logging for set begin date for add number plan functionality
        :param begin_date:
        :return: True/False
        """
        set_begin_date = None
        try:
            self.logger.info('Start: set begin date for add number plan')
            self._carrier_page.set_begin_date_for_add_number_plan(begin_date)
            set_begin_date = True
        except WebDriverException as exp:
            set_begin_date = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set begin date for add number plan')
            return set_begin_date

    def close_carrier_window(self):
        """
        Returning close carrier window
        Implementing logging for close carrier window functionality
        :return: True/False
        """
        is_closed = None
        try:
            self.logger.info('Start: close carrier window')
            self._carrier_page.close_browser()
            self._carrier_page.switch_to_previous_window()
            is_closed = True
        except WebDriverException as exp:
            is_closed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: close carrier window')
            return is_closed

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
            self._carrier_page.read_data_from_excel_file(file_path)
            is_read = True
        except WebDriverException as exp:
            is_read = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: read data from upload excel file')
            return is_read

    def click_carriers_page_first_row_inline_action_button(self):
        """
        Returning click carriers page first row inline action button
        Implementing logging for click carriers page first row inline action button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click carriers page first row inline action button')
            self._carrier_page.click_carriers_page_first_row_inline_action_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click carriers page first row inline action button')
            return is_clicked

    def is_carrier_profile_page_loaded_properly(self):
        """
        Returning is carrier profile page loaded properly
        Implementing is carrier profile page loaded properly functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is carrier profile page loaded properly')
            return self._carrier_page.is_carrier_profile_page_loaded_properly()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is carrier profile page loaded properly')

    def is_price_list_history_page_loaded_properly(self):
        """
        Returning is price list history page loaded properly
        Implementing logging for is price list history page loaded properly functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is price list history page loaded properly')
            return self._carrier_page.is_price_list_history_page_loaded_properly()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is price list history page loaded properly')

    def is_dialed_digits_search_successful(self):
        """
        Returning is dialed digits search successful
        Implementing logging for is dialed digits search successful functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is dialed digits search successful')
            return self._carrier_page.is_dialed_digits_search_successful()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is dialed digits search successful')

    def is_rates_search_successful(self):
        """
        Returning is rates search successful
        Implementing logging for is rates search successful functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is rates search successful')
            return self._carrier_page.is_rates_search_successful()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is rates search successful')

    def is_destinations_search_successful(self):
        """
        Returning is destinations search successful
        Implementing logging for is destinations search successful functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is destinations search successful')
            return self._carrier_page.is_destinations_search_successful()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is destinations search successful')

    def is_price_list_history_search_successful(self):
        """
        Returning is price list history search successful
        Implementing logging for is price list history search successful functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is price list history search successful')
            return self._carrier_page.is_price_list_history_search_successful()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is price list history search successful')

    def click_create_intercompany_button(self):
        """
        Returning click create intercompany button
        Implementing logging for click create intercompany button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click create intercompany button')
            self._carrier_page.click_create_intercompany_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click create intercompany button')
            return is_clicked

    def click_price_lists_history_grid_first_row_inline_action_button(self):
        """
        Returning click price lists history grid first row inline action button
        Implementing logging for click price lists history grid first row inline action button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click price lists history grid first row inline action button')
            self._carrier_page.click_price_lists_history_grid_first_row_inline_action_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click price lists history grid first row inline action button')
            return is_clicked

    def get_created_carrier_name(self):
        """
        Returning get created carrier name
        Implementing logging for get created carrier name functionality
        :return: created_carrier_name
        """
        try:
            self.logger.info('Start: get created carrier name')
            return self._carrier_page.get_created_carrier_name()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get created carrier name')

    def set_rates_product(self):
        """
        Returning set rates product
        Implementing logging for set rates product functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set rates product')
            self._carrier_page.set_rates_product()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set rates product')
            return is_set

    def get_created_rate_plan_name(self):
        """
        Returning get created rate plan name
        Implementing get created rate plan name functionality
        :return: created_rate_plan_name
        """
        try:
            self.logger.info('Start: get created rate plan name')
            return self._carrier_page.get_created_rate_plan_name()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get created rate plan name')

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
                status = self._carrier_page.validate_date_format(actual_date, expected_date_format)
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
                status = self._carrier_page.validate_currency_format(actual_value, expected_locale)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: validate currency format')
            return status

    def get_carriers_grid_column_value(self, column_name):
        """
        Returning get carriers grid column value
        Implementing logging for get carriers grid column value functionality
        :param column_name:
        :return: column value
        """
        column_value = None
        try:
            self.logger.info('Start: get carriers grid column value')
            column_value = self._carrier_page.get_carriers_grid_column_value(column_name)
        except WebDriverException as exp:
            column_value = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get carriers grid column value')
            return column_value

    def get_carrier_relationships_select_date(self):
        """
        Returning get carrier relationships select date
        Implementing logging for get carrier relationships select date functionality
        :return: select date
        """
        date = None
        try:
            self.logger.info('Start: get carrier relationships select date')
            date = self._carrier_page.get_carrier_relationships_select_date()
        except WebDriverException as exp:
            date = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get carrier relationships select date')
            return date

    def expand_service_level_assignments_section(self):
        """
        Returning expand service level assignments section
        Implementing logging for expand service level assignments section functionality
        :return: True/False
        """
        is_expanded = None
        try:
            self.logger.info('Start: expand service level assignments section')
            self._carrier_page.expand_service_level_assignments_section()
            is_expanded = True
        except WebDriverException as exp:
            is_expanded = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: expand service level assignments section')
            return is_expanded

    def get_commercial_trunks_grid_effective_date(self):
        """
        Returning get commercial trunks grid effective date
        Implementing logging for get commercial trunks grid effective date functionality
        :return: effective date
        """
        date = None
        try:
            self.logger.info('Start: get commercial trunks grid effective date')
            date = self._carrier_page.get_commercial_trunks_grid_effective_date()
        except WebDriverException as exp:
            date = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get commercial trunks grid effective date')
            return date

    def get_effective_date(self):
        """
        Returning get effective date
        Implementing logging for get effective date functionality
        :return: effective date
        """
        date = None
        try:
            self.logger.info('Start: get effective date')
            date = self._carrier_page.get_effective_date()
        except WebDriverException as exp:
            date = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get effective date')
            return date

    def get_begin_date(self):
        """
        Returning get begin date
        Implementing logging for get begin date functionality
        :return: begin date
        """
        date = None
        try:
            self.logger.info('Start: get begin date')
            date = self._carrier_page.get_begin_date()
        except WebDriverException as exp:
            date = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get begin date')
            return date

    def get_end_date(self):
        """
        Returning get end date
        Implementing logging for get end date functionality
        :return: end date
        """
        date = None
        try:
            self.logger.info('Start: get end date')
            date = self._carrier_page.get_end_date()
        except WebDriverException as exp:
            date = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get end date')
            return date

    def get_service_level_grid_begin_date(self):
        """
        Returning get service level grid begin date
        Implementing logging for get service level grid begin date functionality
        :return: begin date
        """
        date = None
        try:
            self.logger.info('Start: get service level grid begin date')
            date = self._carrier_page.get_service_level_grid_begin_date()
        except WebDriverException as exp:
            date = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get service level grid begin date')
            return date

    def get_service_level_grid_end_date(self):
        """
        Returning get service level grid end date
        Implementing logging for get service level grid end date functionality
        :return: end date
        """
        date = None
        try:
            self.logger.info('Start: get service level grid end date')
            date = self._carrier_page.get_service_level_grid_end_date()
        except WebDriverException as exp:
            date = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get service level grid end date')
            return date

    def get_rate_plans_grid_begin_date(self):
        """
        Returning get rate plans grid begin date
        Implementing logging for get rate plans grid begin date functionality
        :return: begin date
        """
        date = None
        try:
            self.logger.info('Start: get rate plans grid begin date')
            date = self._carrier_page.get_rate_plans_grid_begin_date()
        except WebDriverException as exp:
            date = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get rate plans grid begin date')
            return date

    def get_rate_plans_grid_end_date(self):
        """
        Returning get rate plans grid end date
        Implementing logging for get rate plans grid end date functionality
        :return: end date
        """
        date = None
        try:
            self.logger.info('Start: get rate plans grid end date')
            date = self._carrier_page.get_rate_plans_grid_end_date()
        except WebDriverException as exp:
            date = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get rate plans grid end date')
            return date

    def get_number_plans_grid_begin_date(self):
        """
        Returning get number plans grid begin date
        Implementing logging for get number plans grid begin date functionality
        :return: begin date
        """
        date = None
        try:
            self.logger.info('Start: get number plans grid begin date')
            date = self._carrier_page.get_number_plans_grid_begin_date()
        except WebDriverException as exp:
            date = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get number plans grid begin date')
            return date

    def get_number_plans_grid_end_date(self):
        """
        Returning get number plans grid end date
        Implementing logging for get number plans grid end date functionality
        :return: end date
        """
        date = None
        try:
            self.logger.info('Start: get number plans grid end date')
            date = self._carrier_page.get_number_plans_grid_end_date()
        except WebDriverException as exp:
            date = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get number plans grid end date')
            return date

    def click_add_service_level_button(self):
        """
        Returning click add service level button
        Implementing logging for click add service level button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click add service level button')
            self._carrier_page.click_add_service_level_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click add service level button')
            return is_clicked

    def get_rates_tab_begin_date(self):
        """
        Returning get rates tab begin date
        Implementing logging for get rates tab begin date functionality
        :return: begin date
        """
        date = None
        try:
            self.logger.info('Start: get rates tab begin date')
            date = self._carrier_page.get_rates_tab_begin_date()
        except WebDriverException as exp:
            date = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get rates tab begin date')
            return date

    def get_rates_tab_end_date(self):
        """
        Returning get rates tab end date
        Implementing logging for get rates tab end date functionality
        :return: end date
        """
        date = None
        try:
            self.logger.info('Start: get rates tab end date')
            date = self._carrier_page.get_rates_tab_end_date()
        except WebDriverException as exp:
            date = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get rates tab end date')
            return date

    def get_destinations_tab_begin_date(self):
        """
        Returning get destinations tab begin date
        Implementing logging for get destinations tab begin date functionality
        :return: begin date
        """
        date = None
        try:
            self.logger.info('Start: get destinations tab begin date')
            date = self._carrier_page.get_destinations_tab_begin_date()
        except WebDriverException as exp:
            date = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get destinations tab begin date')
            return date

    def get_destinations_tab_end_date(self):
        """
        Returning get destinations tab end date
        Implementing logging for get destinations tab end date functionality
        :return: end date
        """
        date = None
        try:
            self.logger.info('Start: get destinations tab end date')
            date = self._carrier_page.get_destinations_tab_end_date()
        except WebDriverException as exp:
            date = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get destinations tab end date')
            return date

    def get_dialed_digits_grid_begin_date(self):
        """
        Returning get dialed digits grid begin date
        Implementing logging for get dialed digits grid begin date functionality
        :return: begin date
        """
        date = None
        try:
            self.logger.info('Start: get dialed digits grid begin date')
            date = self._carrier_page.get_dialed_digits_grid_begin_date()
        except WebDriverException as exp:
            date = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get dialed digits grid begin date')
            return date

    def get_dialed_digits_grid_end_date(self):
        """
        Returning get dialed digits grid end date
        Implementing logging for get dialed digits grid end date functionality
        :return: end date
        """
        date = None
        try:
            self.logger.info('Start: get dialed digits grid end date')
            date = self._carrier_page.get_dialed_digits_grid_end_date()
        except WebDriverException as exp:
            date = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get dialed digits grid end date')
            return date

    def get_rates_grid_begin_date(self):
        """
        Returning get rates grid begin date
        Implementing logging for get rates grid begin date functionality
        :return: begin date
        """
        date = None
        try:
            self.logger.info('Start: get rates grid begin date')
            date = self._carrier_page.get_rates_grid_begin_date()
        except WebDriverException as exp:
            date = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get rates grid begin date')
            return date

    def get_rates_grid_end_date(self):
        """
        Returning get rates grid end date
        Implementing logging for get rates grid end date functionality
        :return: end date
        """
        date = None
        try:
            self.logger.info('Start: get rates grid end date')
            date = self._carrier_page.get_rates_grid_end_date()
        except WebDriverException as exp:
            date = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get rates grid end date')
            return date

    def get_destinations_grid_begin_date(self):
        """
        Returning get destinations grid begin date
        Implementing logging for get destinations grid begin date functionality
        :return: begin date
        """
        date = None
        try:
            self.logger.info('Start: get destinations grid begin date')
            date = self._carrier_page.get_destinations_grid_begin_date()
        except WebDriverException as exp:
            date = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get destinations grid begin date')
            return date

    def get_destinations_grid_end_date(self):
        """
        Returning get destinations grid end date
        Implementing logging for get destinations grid end date functionality
        :return: end date
        """
        date = None
        try:
            self.logger.info('Start: get destinations grid end date')
            date = self._carrier_page.get_destinations_grid_end_date()
        except WebDriverException as exp:
            date = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get destinations grid end date')
            return date

    def get_credit_management_grid_column_value(self, column_name):
        """
        Returning get credit management grid column value
        Implementing logging for get credit management grid column value functionality
        :param column_name:
        :return: column_value
        """
        column_value = None
        try:
            self.logger.info('Start: get credit management grid column value')
            column_value = self._carrier_page.get_credit_management_grid_column_value(column_name)
        except WebDriverException as exp:
            column_value = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get credit management grid column value')
            return column_value

    def click_credit_management_grid_first_row_inline_action_button(self):
        """
        Returning click credit management grid first row inline action button
        Implementing logging for click credit management grid first row inline action button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click credit management grid first row inline action button')
            self._carrier_page.click_credit_management_grid_first_row_inline_action_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click credit management grid first row inline action button')
            return is_clicked

    def get_credit_profile_credit_limit(self):
        """
        Returning get credit profile credit limit
        Implementing logging for get credit profile credit limit functionality
        :return: credit_limit
        """
        credit_limit = None
        try:
            self.logger.info('Start: get credit profile credit limit')
            credit_limit = self._carrier_page.get_credit_profile_credit_limit()
        except WebDriverException as exp:
            credit_limit = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get credit profile credit limit')
            return credit_limit

    def get_credit_limit_last_modified_date(self):
        """
        Returning get credit limit last modified date
        Implementing logging for get credit limit last modified date functionality
        :return: last modified date
        """
        last_modified_date = None
        try:
            self.logger.info('Start: get credit limit last modified date')
            last_modified_date = self._carrier_page.get_credit_limit_last_modified_date()
        except WebDriverException as exp:
            last_modified_date = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get credit limit last modified date')
            return last_modified_date

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
            text = self._carrier_page.get_label_wise_text(label_name)
        except WebDriverException as exp:
            text = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get label wise text')
            return text

    def get_transactions_history_grid_column_value(self, column_name):
        """
        Returning get transactions history grid column value
        Implementing logging for get transactions history grid column value functionality
        :param column_name:
        :return: column_value
        """
        column_value = None
        try:
            self.logger.info('Start: get transactions history grid column value')
            column_value = self._carrier_page.get_transactions_history_grid_column_value(column_name)
        except WebDriverException as exp:
            column_value = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get transactions history grid column value')
            return column_value

    def get_add_new_transaction_date(self):
        """
        Returning get add new transaction date
        Implementing logging for get add new transaction date functionality
        :return: transaction date
        """
        date = None
        try:
            self.logger.info('Start: get add new transaction date')
            date = self._carrier_page.get_add_new_transaction_date()
        except WebDriverException as exp:
            date = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get add new transaction date')
            return date

    def get_statement_begin_date(self):
        """
        Returning get statement begin date
        Implementing logging for get statement begin date functionality
        :return: begin date
        """
        date = None
        try:
            self.logger.info('Start: get statement begin date')
            date = self._carrier_page.get_statement_begin_date()
        except WebDriverException as exp:
            date = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get statement begin date')
            return date

    def get_trunk_name(self):
        """
        Returning get trunk name
        Implementing logging for get trunk name functionality
        :return: trunk name
        """
        try:
            self.logger.info('Start: get trunk name')
            return self._carrier_page.get_trunk_name()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get trunk name')

    def set_trunk_dropdown_value(self, trunk):
        """
        Returning set trunk dropdown value
        Implementing logging for set trunk dropdown value functionality
        :param trunk:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set trunk dropdown value')
            self._carrier_page.set_trunk_dropdown_value(trunk)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set trunk dropdown value')
            return is_set

    def set_destination_dropdown_value(self, destination):
        """
        Returning set destination dropdown value
        Implementing logging for set destination dropdown value functionality
        :param destination:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set destination dropdown value')
            self._carrier_page.set_destination_dropdown_value(destination)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set destination dropdown value')
            return is_set

    def set_service_level_begin_date(self):
        """
        Returning set service level begin date
        Implementing logging for set service level begin date functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set service level begin date')
            self._carrier_page.set_service_level_begin_date()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set service level begin date')
            return is_set

    def set_service_level_end_date(self):
        """
        Returning set service level end date
        Implementing logging for set service level end date functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set service level end date')
            self._carrier_page.set_service_level_end_date()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set service level end date')
            return is_set

    def get_rate_plan_name(self):
        """
        Returning get rate plan name
        Implementing logging for get rate plan name functionality
        :return: rate plan name
        """
        try:
            self.logger.info('Start: get rate plan name')
            return self._carrier_page.get_rate_plan_name()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get rate plan name')

    def set_company_carrier_name(self, carrier_name_prefix):
        """
        Returning set company carrier name
        Implementing logging for set company carrier name functionality
        :param carrier_name_prefix:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set company carrier name')
            self._carrier_page.set_company_carrier_name(carrier_name_prefix)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set company carrier name')
            return is_set

    def get_created_company_carrier_name(self):
        """
        Returning get created company carrier name
        Implementing logging for get created company carrier name functionality
        :return: company_carrier_name
        """
        try:
            self.logger.info('Start: get created company carrier name')
            return self._carrier_page.get_created_company_carrier_name()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get created company carrier name')

    def set_carrier_type_for_carriers_search(self, *carrier_type_list):
        """
        Returning set carrier type for carriers search
        Implementing logging for set carrier type for carriers search functionality
        :param carrier_type_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set carrier type for carriers search')
            if len(carrier_type_list) > 0:
                self._carrier_page.set_carrier_type_for_carriers_search(carrier_type_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set carrier type for carriers search')
            return is_set

    def expand_show_search_form_link(self):
        """
        Returning expand show search form link
        Implementing logging for expand show search form link functionality
        :return: True/False
        """
        is_expanded = None
        try:
            self.logger.info('Start: expand show search form link')
            self._carrier_page.expand_show_search_form_link()
            is_expanded = True
        except WebDriverException as exp:
            is_expanded = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: expand show search form link')
            return is_expanded

    def click_carriers_page_search_button(self):
        """
        Returning click carriers page search button
        Implementing logging for click carriers page search button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click carriers page search button')
            self._carrier_page.click_carriers_page_search_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click carriers page search button')
            return is_clicked

    def is_inter_opco_scenarios_section_present(self):
        """
        Returning is inter opco scenarios section present
        Implementing logging for is inter opco scenarios section present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is inter opco scenarios section present')
            return self._carrier_page.is_inter_opco_scenarios_section_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is inter opco scenarios section present')

    def expand_inter_opco_scenarios_section(self):
        """
        Returning expand inter opco scenarios section
        Implementing logging for expand inter opco scenarios section functionality
        :return: True/False
        """
        is_expanded = None
        try:
            self.logger.info('Start: expand inter opco scenarios section')
            self._carrier_page.expand_inter_opco_scenarios_section()
            is_expanded = True
        except WebDriverException as exp:
            is_expanded = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: expand inter opco scenarios section')
            return is_expanded

    def click_inter_opco_create_scenario_button(self):
        """
        Returning click inter opco create scenario button
        Implementing logging for click inter opco create scenario button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click inter opco create scenario button')
            self._carrier_page.click_inter_opco_create_scenario_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click inter opco create scenario button')
            return is_clicked

    def set_inter_opco_name(self, inter_opco_name_prefix):
        """
        Returning set inter opco name
        Implementing logging for set inter opco name functionality
        :param inter_opco_name_prefix:
        :return: inter opco name
        """
        is_set = None
        try:
            self.logger.info('Start: set rate plan name')
            self._carrier_page.set_inter_opco_name(inter_opco_name_prefix)
            is_set = True
        except WebDriverException as exp:
            is_set = "False"
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: set rate plan name')
            return is_set

    def set_in_opco(self, in_opco):
        """
        Returning set in opco
        Implementing logging for set in opco functionality
        :param in_opco:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set in opco')
            self._carrier_page.set_in_opco(in_opco)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set in opco')
            return is_set

    def set_out_opco(self, out_opco):
        """
        Returning set out opco
        Implementing logging for set out opco functionality
        :param out_opco:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set out opco')
            self._carrier_page.set_out_opco(out_opco)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set out opco')
            return is_set

    def click_inter_opco_save_button(self):
        """
        Returning click inter opco save button
        Implementing logging for click inter opco save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click inter opco save button')
            self._carrier_page.click_inter_opco_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click inter opco save button')
            return is_clicked

    def click_inter_opco_add_new_event_settlement_button(self):
        """
        Returning click inter opco add new event settlement button
        Implementing logging for click inter opco add new event settlement button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click inter opco add new event settlement button')
            self._carrier_page.click_inter_opco_add_new_event_settlement_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click inter opco add new event settlement button')
            return is_clicked

    def set_new_event_paying_account(self, account):
        """
        Returning set new event paying account
        Implementing logging for set new event paying account functionality
        :param account:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set new event paying account')
            self._carrier_page.set_new_event_paying_account(account)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: set new event paying account')
            return is_set

    def set_new_event_receiving_account(self, account):
        """
        Returning set new event receiving account
        Implementing logging for set new event receiving account functionality
        :param account:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set new event receiving account')
            self._carrier_page.set_new_event_receiving_account(account)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: set new event receiving account')
            return is_set

    def set_new_event_rate_plan(self, rate_plan, account):
        """
        Returning set new event rate plan
        Implementing logging for set new event rate plan functionality
        :param rate_plan:
        :param account:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set new event rate plan')
            self._carrier_page.set_new_event_rate_plan(rate_plan, account)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: set new event rate plan')
            return is_set

    def set_new_event_direction(self, direction):
        """
        Returning set new event direction
        Implementing logging for set new event direction functionality
        :param direction:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set new event direction')
            self._carrier_page.set_new_event_direction(direction)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: set new event direction')
            return is_set

    def select_carrier_dashboard_tab(self):
        """
        Returning select carrier dashboard tab
        Implementing logging for select carrier dashboard tab functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select carrier dashboard tab')
            self._carrier_page.select_carrier_dashboard_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select carrier dashboard tab')
            return is_selected

    def click_network_codes_link(self):
        """
        Returning click network codes link
        Implementing logging for click network codes link functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click network codes link')
            self._carrier_page.click_network_codes_link()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click network codes link')
            return is_clicked

    def is_network_codes_link_present(self):
        """
        Returning is network codes link present
        Implementing logging for is network codes link present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is network codes link present')
            return self._carrier_page.is_network_codes_link_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is network codes link present')

    def is_network_codes_link_not_present(self):
        """
        Returning is network codes link not present
        Implementing logging for is network codes link not present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is network codes link not present')
            return self._carrier_page.is_network_codes_link_not_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is network codes link not present')

    def get_agreement_from_agreement_table(self, server, database, user, password):
        """
        Returning get agreement from agreement table
        Implementing logging for get agreement from agreement table functionality
        :param server:
        :param database:
        :param user:
        :param password:
        :return: agreement
        """
        try:
            self.logger.info('Start: get agreement from agreement table')
            return self._carrier_page.get_agreement_from_agreement_table(server, database, user, password)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get agreement from agreement table')

    def click_number_plans_inline_action_button(self):
        """
        Returning click number plans inline action button
        Implementing logging for click number plans inline action button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click number plans inline action button')
            self._carrier_page.click_number_plans_inline_action_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click number plans inline action button')
            return is_clicked

    def get_all_values_from_lookup_table(self, server, database, user, password):
        """
        Returning get all values from lookup table
        Implementing logging for get all values from lookup table functionality
        :param server:
        :param database:
        :param user:
        :param password:
        :return: True/False
        """
        try:
            self.logger.info('Start: get all values from lookup table')
            return self._carrier_page.get_all_values_from_lookup_table(server, database, user, password)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get all values from lookup table')

    def is_bidirectional_available_in_direction_dropdown(self):
        """
        Returning is bidirectional available in direction dropdown
        Implementing logging for is bidirectional available in direction dropdown functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is bidirectional available in direction dropdown')
            return self._carrier_page.is_bidirectional_available_in_direction_dropdown()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is bidirectional available in direction dropdown')

    def compare_carrier_grid_first_row_data(self, carrier_name):
        """
        Returning compare carrier grid first row data
        Implementing logging for compare carrier grid first row data functionality
        :param carrier_name:
        :return: True/False
        """
        status = None
        try:
            self.logger.info('Start: compare carrier grid first row data')
            status = self._carrier_page.compare_carrier_grid_first_row_data(carrier_name)
        except WebDriverException as exp:
            status = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare carrier grid first row data')
            return status

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
            is_sorted = self._carrier_page.compare_sorted_data(unsorted_data, descending_order)
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
            is_compared = self._carrier_page.compare_grid_column_position_after_altering(source_column, destination_column, column_name_list)
        except WebDriverException as exp:
            is_compared = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare grid column position after altering')
            return is_compared

    def set_carriers_grid_settings(self, grid_settings):
        """
        Returning set carriers grid settings
        Implementing logging for set carriers grid settings functionality
        :param grid_settings:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set carriers grid settings')
            self._carrier_page.set_carriers_grid_settings(grid_settings)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set carriers grid settings')
            return is_set

    def sort_carriers_grid_column(self, column_name, descending_order=False):
        """
        Returning sort carriers grid column
        Implementing logging for sort carriers grid column functionality
        :param column_name:
        :param descending_order:
        :return: True/False
        """
        is_sorted = None
        try:
            self.logger.info('Start: sort carriers grid column')
            self._carrier_page.sort_carriers_grid_column(column_name, descending_order)
            is_sorted = True
        except WebDriverException as exp:
            is_sorted = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: sort carriers grid column')
            return is_sorted

    def get_all_rows_of_specific_column_from_carriers_grid(self, column_name):
        """
        Returning get all rows of specific column from carriers grid
        Implementing logging for get all rows of specific column from carriers grid functionality
        :param column_name:
        :return: all_row_data
        """
        all_row_data = None
        try:
            self.logger.info('Start: get all rows of specific column from carriers grid')
            all_row_data = self._carrier_page.get_all_rows_of_specific_column_from_carriers_grid(column_name)
        except WebDriverException as exp:
            all_row_data = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get all rows of specific column from carriers grid')
            return all_row_data

    def drag_carriers_grid_column(self, source_column, destination_column):
        """
        Returning drag carriers grid column
        Implementing logging for drag carriers grid column functionality
        :param source_column:
        :param destination_column:
        :return: True/False
        """
        is_dragged = None
        try:
            self.logger.info('Start: drag carriers grid column')
            self._carrier_page.drag_carriers_grid_column(source_column, destination_column)
            is_dragged = True
        except WebDriverException as exp:
            is_dragged = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: drag carriers grid column')
            return is_dragged

    def get_carriers_grid_column_names_by_order(self):
        """
        Returning get carriers grid column names by order
        Implementing logging for get carriers grid column names by order functionality
        :return: column_name_list
        """
        column_name_list = None
        try:
            self.logger.info('Start: get carriers grid column names by order')
            column_name_list = self._carrier_page.get_carriers_grid_column_names_by_order()
        except WebDriverException as exp:
            column_name_list = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get carriers grid column names by order')
            return column_name_list

    def click_carriers_grid_export_to_excel_button(self):
        """
        Returning click carriers grid export to excel button
        Implementing logging for click carriers grid export to excel button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click carriers grid export to excel button')
            self._carrier_page.click_carriers_grid_export_to_excel_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click carriers grid export to excel button')
            return is_clicked

    def is_create_carrier_button_present(self):
        """
        Returning is create carrier button present
        Implementing logging for is create carrier button present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is create carrier button present')
            return self._carrier_page.is_create_carrier_button_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is create carrier button present')

    def select_rates_grid_first_row_checkbox(self):
        """
        Returning select rates grid first row checkbox
        Implementing logging for select rates grid first row checkbox functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select rates grid first row checkbox')
            self._carrier_page.select_rates_grid_first_row_checkbox()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select rates grid first row checkbox')
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
            self._carrier_page.click_bulk_edit_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click bulk edit button')
            return is_clicked

    def set_bulk_edit_end_date(self, end_date, future_date=False):
        """
        Returning set bulk edit end date
        Implementing logging for set bulk edit end date functionality
        :param end_date:
        :param future_date:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set bulk edit end date')
            self._carrier_page.set_bulk_edit_end_date(end_date, future_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set bulk edit end date')
            return is_set

    def click_save_changes_button_with_confirmation(self):
        """
        Returning click save changes button with confirmation
        Implementing logging for click save changes button with confirmation functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click save changes button with confirmation')
            self._carrier_page.click_save_changes_button_with_confirmation()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click save changes button with confirmation')
            return is_clicked

    def set_carrier_profile_rates_grid_begin_date(self):
        """
        Returning set carrier profile rates grid begin date
        Implementing logging for set carrier profile rates grid begin date functionality
        :return:
        """
        is_set = None
        try:
            self.logger.info('Start: set carrier profile rates grid begin date')
            self._carrier_page.set_carrier_profile_rates_grid_begin_date()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set carrier profile rates grid begin date')
            return is_set

    def get_future_date(self, number_of_days_to_add):
        """
        Returning get future date
        Implementing logging for get future date functionality
        :param number_of_days_to_add:
        :return:
        """
        try:
            self.logger.info('Start: get future date')
            return self._carrier_page.get_date(future_date=True, number_of_days_to_add=int(number_of_days_to_add))
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get future date')

    def is_add_network_destination_button_not_present(self):
        """
        Returning is add network destination button not present
        Implementing logging for is add network destination button not present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is add network destination button not present')
            return self._carrier_page.is_add_network_destination_button_not_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is add network destination button not present')

    def click_network_codes_search_button(self):
        """
        Returning click network codes search button
        Implementing logging for click network codes search button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click network codes search button')
            self._carrier_page.click_network_codes_search_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click network codes search button')
            return is_clicked

    def check_inactive_user_is_not_present_in_seller_name_dropdown(self, user_first_name, user_last_name):
        """
        Returning check inactive user is not present in seller dropdown
        Implementing logging for check inactive user is not present in seller dropdown functionality
        :param user_first_name:
        :param user_last_name:
        :return:
        """
        try:
            self.logger.info('Start: check inactive user is not present in seller dropdown')
            return self._carrier_page.check_inactive_user_is_not_present_in_seller_name_dropdown(user_name=user_first_name+user_last_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: check inactive user is not present in seller dropdown')

    def is_specific_tab_focused_properly_in_credit_profile_page(self, tab_name):
        """
        Returning is credit profile tab focused properly in credit profile page
        Implementing is credit profile tab focused properly in credit profile page functionality
        :param tab_name:
        :return: True/False
        """
        try:
            self.logger.info('Start: is credit profile tab focused properly in credit profile page')
            return self._carrier_page.is_specific_tab_focused_properly_in_credit_profile_page(tab_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is credit profile tab focused properly in credit profile page')

    def is_specific_error_message_is_displayed_in_credit_profile_page(self, error_message):
        """
        Returning is specific error message is displayed in credit profile page
        Implementing is specific error message is displayed in credit profile page functionality
        :param error_message:
        :return: True/False
        """
        try:
            self.logger.info('Start: is specific error message is displayed in credit profile page')
            return self._carrier_page.is_specific_error_message_is_displayed_in_credit_profile_page(error_message)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is specific error message is displayed in credit profile page')

    def set_remaining_credit_amount_threshold_values(self, threshold, value):
        """
        Returning set remaining credit amount threshold values
        Implementing set remaining credit amount threshold values functionality
        :param threshold:
        :param value:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set remaining credit amount threshold values')
            self._carrier_page.set_remaining_credit_amount_threshold_values(threshold, value)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set remaining credit amount threshold values')
            return is_set

    def is_add_new_transaction_pop_up_present(self):
        """
        Returning is add new transaction pop up present
        Implementing is add new transaction pop up present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is add new transaction pop up present')
            return self._carrier_page.is_add_new_transaction_pop_up_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is add new transaction pop up present')

    def select_deactivate_credit_limit_inline_action_item(self, item_name):
        """
        Returning select deactivate credit limit inline action item
        Implementing logging for select deactivate credit limit inline action item functionality
        :param item_name:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select deactivate credit limit inline action item')
            self._carrier_page.select_deactivate_credit_limit_inline_action_item(item_name)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select deactivate credit limit inline action item')
            return is_selected

    def set_trunk_provisioning_status_in_grid(self, status):
        """
        Returning set trunk provisioning status in grid
        Implementing set trunk provisioning status in grid functionality
        :param status:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set trunk provisioning status in grid')
            self._carrier_page.set_trunk_provisioning_status_in_grid(status)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set trunk provisioning status in grid')
            return is_set

    def get_created_bill_account_name(self):
        """
        Returning get created bill account name
        Implementing logging for get created bill account name functionality
        :return: created_carrier_name
        """
        try:
            self.logger.info('Start: get created bill account name')
            return self._carrier_page.get_created_bill_account_name()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get created bill account name')

    def set_create_carrier_window_carrier_category_1(self, category):
        """
        Returning set create carrier window carrier category
        Implementing logging for set new create carrier window carrier category functionality
        :param category:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set create carrier window carrier category')
            self._carrier_page.set_create_carrier_window_carrier_category_1(category)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set create carrier window carrier category')
            return is_set

    def set_create_carrier_window_carrier_category_2(self, category):
        """
        Returning set create carrier window carrier category
        Implementing logging for set new create carrier window carrier category functionality
        :param category:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set create carrier window carrier category')
            self._carrier_page.set_create_carrier_window_carrier_category_2(category)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set create carrier window carrier category')
            return is_set

    def set_rate_record_to_add_new_rate(self, rate_record=None):
        """
        Returning set rate record to add new rate
        Implementing logging for set rate record to add new rate functionality
        :param rate_record:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set rate record to add new rate')
            self._carrier_page.set_rate_record_to_add_new_rate(rate_record)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set rate record to add new rate')
            return is_set

    def is_add_service_level_button_not_present(self):
        """
        Returning is add service level button not present
        Implementing logging for is add service level button not present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is add service level button not present')
            return self._carrier_page.is_add_service_level_button_not_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is add service level button not present')

    def is_add_service_level_inline_action_button_not_present(self):
        """
        Returning is add service level inline action button not present
        Implementing logging for is add service level inline action button not present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is add service level inline action button  present')
            return self._carrier_page.is_add_service_level_inline_action_button_not_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is add service level inline action button not present')

    def is_service_level_change_work_order_section_present(self):
        """
        Returning is service level change work order section present
        Implementing logging for is service level change work order section present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is service level change work order section present')
            return self._carrier_page.is_service_level_change_work_order_section_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is service level change work order section present')

    def expand_service_level_change_work_order_section(self):
        """
        Returning expand service level change work order section
        Implementing logging for expand service level change work order section functionality
        :return: True/False
        """
        is_expanded = None
        try:
            self.logger.info('Start: expand service level change work order section')
            self._carrier_page.expand_service_level_change_work_order_section()
            is_expanded = True
        except WebDriverException as exp:
            is_expanded = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: expand service level change work order section')
            return is_expanded

    def click_add_new_service_level_change_work_order_button(self):
        """
        Returning click add new service level change work order button
        Implementing logging for click add new service level change work order button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click add new service level change work order button')
            self._carrier_page.click_add_new_service_level_change_work_order_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click add new service level change work order button')
            return is_clicked

    def select_service_level_commercial_trunk(self, commercial_trunk_name):
        """
        Returning select service level commercial trunk
        Implementing logging for select service level commercial trunk functionality
        :param commercial_trunk_name:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select service level commercial trunk')
            self._carrier_page.select_service_level_commercial_trunk(commercial_trunk_name)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select service level commercial trunk')
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
            self._carrier_page.click_next_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click next button')
            return is_clicked

    def select_service_level_country(self, country_name, all_countries):
        """
        Returning select service level country
        Implementing logging for select service level country functionality
        :param country_name:
        :param all_countries:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select service level country')
            self._carrier_page.select_service_level_country(country_name, all_countries)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select service level country')
            return is_selected

    def select_service_level_destination(self, destination_name):
        """
        Returning select service level destination
        Implementing logging for select service level destination functionality
        :param destination_name:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select service level destination')
            self._carrier_page.select_service_level_destination(destination_name)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select service level destination')
            return is_selected

    def select_create_service_level_change_work_order_grid_first_row_checkbox(self):
        """
        Returning select create service level change work order grid first row checkbox
        Implementing logging for select create service level change work order grid first row functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select create service level change work order grid first row')
            self._carrier_page.select_create_service_level_change_work_order_grid_first_row_checkbox()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select create service level change work order grid first row')
            return is_selected

    def click_submit_button(self):
        """
        Returning click submit button
        Implementing logging for click submit button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click submit button')
            self._carrier_page.click_submit_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click submit button')
            return is_clicked

    def filter_service_level_change_work_order_grid(self, column_name, *filter_item_list):
        """
        Returning filter service level change work order grid
        Implementing logging for filter service level change work order grid functionality
        :param column_name:
        :param filter_item_list:
        :return: True/False
        """
        is_filtered = None
        try:
            self.logger.info('Start: filter service level change work order grid')
            self._carrier_page.filter_service_level_change_work_order_grid(column_name, filter_item_list)
            is_filtered = True
        except WebDriverException as exp:
            is_filtered = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: filter service level change work order grid')
            return is_filtered

    def set_service_level_change_work_order_grid_status(self, status):
        """
        Returning set service level change work order grid status
        Implementing logging for set service level change work order grid status functionality
        :param status:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set service level change work order grid status')
            self._carrier_page.set_service_level_change_work_order_grid_status(status)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set service level change work order grid status')
            return is_set

    def click_service_level_change_work_order_grid_save_changes_button(self):
        """
        Returning click service level change work order grid save changes button
        Implementing logging for click service level change work order grid save changes button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click service level change work order grid save changes button')
            self._carrier_page.click_service_level_change_work_order_grid_save_changes_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click service level change work order grid save changes button')
            return is_clicked

    def filter_service_level_assignments_grid(self, column_name, *filter_item_list):
        """
        Returning filter service level assignments grid
        Implementing logging for filter service level assignments grid functionality
        :param column_name:
        :param filter_item_list:
        :return: True/False
        """
        is_filtered = None
        try:
            self.logger.info('Start: filter service level assignments grid')
            self._carrier_page.filter_service_level_assignments_grid(column_name, filter_item_list)
            is_filtered = True
        except WebDriverException as exp:
            is_filtered = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: filter service level assignments grid')
            return is_filtered

    def get_service_level_assignments_grid_first_row_column_value(self, column_name):
        """
        Returning get service level assignments grid first row column value
        Implementing logging for get service level assignments grid first row column value functionality
        :param column_name:
        :return: column_value
        """
        column_value = None
        try:
            self.logger.info('Start: get service level assignments grid first row column value')
            column_value = self._carrier_page.get_service_level_assignments_grid_first_row_column_value(column_name)
        except WebDriverException as exp:
            column_value = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get service level assignments grid first row column value')
            return column_value

    def click_service_level_change_work_order_grid_first_row_work_order_name(self):
        """
        Returning click service level change work order grid first row work order name
        Implementing logging for click service level change work order grid first row work order name functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click service level change work order grid first row work order name')
            self._carrier_page.click_service_level_change_work_order_grid_first_row_work_order_name()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click service level change work order grid first row work order name')
            return is_clicked

    def click_service_level_change_work_order_report_first_row_work_order(self):
        """
        Returning click service level change work order report first row work order
        Implementing logging for click service level change work order report first row work order functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click service level change work order report first row work order')
            self._carrier_page.click_service_level_change_work_order_report_first_row_work_order()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click service level change work order report first row work order')
            return is_clicked

    def get_service_level_change_work_order_report_first_row_end_date(self):
        """
        Returning get service level change work order report first row end date
        Implementing logging for get service level change work order report first row end date functionality
        :return: end_date
        """
        end_date = None
        try:
            self.logger.info('Start: get service level change work order report first row end date')
            end_date = self._carrier_page.get_service_level_change_work_order_report_first_row_end_date()
        except WebDriverException as exp:
            end_date = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get service level change work order report first row end date')
            return end_date

    def sort_service_level_change_work_order_grid_column_in_descending_order(self, column_name):
        """
        Returning sort service level change work order grid column in descending order
        Implementing logging for sort service level change work order grid column in descending order functionality
        :param column_name:
        :return: True/False
        """
        is_sorted = None
        try:
            self.logger.info('Start: sort service level change work order grid column in descending order')
            self._carrier_page.sort_service_level_change_work_order_grid_column_in_descending_order(column_name)
            is_sorted = True
        except WebDriverException as exp:
            is_sorted = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: sort service level change work order grid column in descending order')
            return is_sorted

    def is_add_service_level_button_present(self):
        """
        Returning is add service level button present
        Implementing logging for is add service level button present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is add service level button present')
            return self._carrier_page.is_add_service_level_button_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is add service level button present')

    def click_service_level_assignments_first_row_inline_action_button(self):
        """
        Returning click service level assignments first row inline action button
        Implementing logging for click service level assignments first row inline action button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click service level assignments first row inline action button')
            self._carrier_page.click_service_level_assignments_first_row_inline_action_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click service level assignments first row inline action button')
            return is_clicked

    def is_service_level_change_work_order_section_not_present(self):
        """
        Returning is service level change work order section not present
        Implementing logging for is service level change work order section not present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is service level change work order section not present')
            return self._carrier_page.is_service_level_change_work_order_section_not_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is service level change work order section not present')

    def click_cancel_button(self):
        """
        Returning click cancel button
        Implementing logging for click cancel button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click cancel button')
            self._carrier_page.click_cancel_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click cancel button')
            return is_clicked

    def get_service_level_change_work_order_grid_first_row_work_order_name(self):
        """
        Returning get service level change work order grid first row work order name
        Implementing logging for get service level change work order grid first row work order name functionality
        :return: work_order_name
        """
        work_order_name = None
        try:
            self.logger.info('Start: get service level change work order grid first row work order name')
            work_order_name = self._carrier_page.get_service_level_change_work_order_grid_first_row_work_order_name()
        except WebDriverException as exp:
            work_order_name = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get service level change work order grid first row work order name')
            return work_order_name

    def verify_slwo_got_end_dated_in_database(self, server, database, user, password, work_order_name):
        """
        Returning verify slwo got end dated in database
        Implementing logging for verify slwo got end dated in database functionality
        :param server:
        :param database:
        :param user:
        :param password:
        :param work_order_name:
        :return: True/False
        """
        is_verified = None
        try:
            self.logger.info('Start: verify slwo got end dated in database')
            is_verified = self._carrier_page.verify_slwo_got_end_dated_in_database(server, database, user, password, work_order_name)
        except WebDriverException as exp:
            is_verified = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: verify slwo got end dated in database')
            return is_verified

    def expand_bill_account_recurrent_charges_section(self):
        """
        Returning expand bill account recurrent charges section
        Implementing logging for expand bill account recurrent charges section functionality
        :return: True/False
        """
        is_expanded = None
        try:
            self.logger.info('Start: expand bill account recurrent charges section')
            self._carrier_page.expand_bill_account_recurrent_charges_section()
            is_expanded = True
        except WebDriverException as exp:
            is_expanded = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: expand bill account recurrent charges section')
            return is_expanded

    def click_recurrent_charges_add_new_record_button(self):
        """
        Returning click recurrent charges add new record button
        Implementing logging for click recurrent charges add new record button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click recurrent charges add new record button')
            self._carrier_page.click_recurrent_charges_add_new_record_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click recurrent charges add new record button')
            return is_clicked

    def select_recurrent_charges_grid_active_checkbox(self):
        """
        Returning select recurrent charges grid active checkbox
        Implementing logging for select recurrent charges grid active checkbox functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: select recurrent charges grid active checkbox')
            self._carrier_page.select_recurrent_charges_grid_active_checkbox()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select recurrent charges grid active checkbox')
            return is_clicked

    def set_recurrent_charges_recurring_charge_name(self, prefix):
        """
        Returning set recurrent charges recurring charge name
        Implementing logging for set recurrent charges recurring charge name functionality
        :param prefix:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set recurrent charges recurring charge name')
            self._carrier_page.set_recurrent_charges_recurring_charge_name(prefix)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set recurrent charges recurring charge name')
            return is_set

    def set_recurrent_charges_begin_date(self, begin_date):
        """
        Returning set recurrent charges begin date
        Implementing logging for set recurrent charges begin date functionality
        :param begin_date:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set recurrent charges begin date')
            self._carrier_page.set_recurrent_charges_begin_date(begin_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set recurrent charges begin date')
            return is_set

    def set_recurrent_charges_amount(self, amount):
        """
        Returning set recurrent charges amount
        Implementing logging for set recurrent charges amount functionality
        :param amount:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set recurrent charges amount')
            self._carrier_page.set_recurrent_charges_amount(amount)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set recurrent charges amount')
            return is_set

    def set_recurrent_charges_charge_method(self):
        """
        Returning set recurrent charges method
        Implementing logging for set recurrent charges charge method functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set recurrent charges method')
            self._carrier_page.set_recurrent_charges_method()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set recurrent charges method')
            return is_set

    def select_recurrent_charges_accounting_code(self):
        """
        Returning select recurrent charges accounting code
        Implementing logging for select recurrent charges accounting code functionality
        :return:
        """
        is_selected = None
        try:
            self.logger.info('Start: select recurrent charges accounting code')
            self._carrier_page.select_recurrent_charges_accounting_code()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select recurrent charges accounting code')
            return is_selected

    def select_recurrent_charges_charge_product(self, charge_product=None):
        """
        Returning select recurrent charges charge product
        Implementing logging for select recurrent charges charge product functionality
        :param charge_product:
        :return:
        """
        is_selected = None
        try:
            self.logger.info('Start: select recurrent charges charge product')
            self._carrier_page.select_recurrent_charges_charge_product(charge_product)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select recurrent charges charge product')
            return is_selected

    def click_recurrent_charges_save_changes_button(self):
        """
        Returning click recurrent charges save changes button
        Implementing logging for click recurrent charges save changes button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click recurrent charges save changes button')
            self._carrier_page.click_recurrent_charges_save_changes_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click recurrent charges save changes button')
            return is_clicked

    def get_recurrent_charges_recurring_charge_name(self):
        """
        Returning get recurrent charges recurring charge name
        Implementing logging for get recurrent charges recurring charge name functionality
        :return: recurring charge name
        """
        try:
            self.logger.info('Start: get recurrent charges recurring charge name')
            return self._carrier_page.get_recurrent_charges_recurring_charge_name()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get recurrent charges recurring charge name')

    def get_credit_management_enable_status(self):
        """
        Returning get credit management enable status
        Implementing logging for get credit management enable status functionality
        :return: status
        """
        status = None
        try:
            self.logger.info('Start: get credit management enable status')
            status = self._carrier_page.get_credit_management_enable_status()
        except WebDriverException as exp:
            status = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get credit management enable status')
            return status

    def close_credit_profile_tab_without_saving(self):
        """
        Returning close credit profile tab without saving
        Implementing logging for close credit profile tab without saving functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: close credit profile tab without saving')
            self._carrier_page.close_credit_profile_tab_without_saving()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: close credit profile tab without saving')
            return is_clicked

    def is_specific_column_present_in_service_level_work_order_section(self, column_name):
        """
        Returning is specific column present in service level work order section
        Implementing is specific column present in service level work order section functionality
        :param column_name:
        :return: True/False
        """
        try:
            self.logger.info('Start: is specific column present in service level work order section')
            return self._carrier_page.is_specific_column_present_in_service_level_work_order_section(column_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is specific column present in service level work order section')

    def click_service_level_work_order_first_row_info_icon(self):
        """
        Returning click service level work order first row info icon
        Implementing logging for click service level work order first row info icon functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click service level work order first row info icon')
            self._carrier_page.click_service_level_work_order_first_row_info_icon()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click service level work order first row info icon')
            return is_clicked

    def is_service_order_report_pop_up_page_present(self):
        """
        Returning is service order report pop up page present
        Implementing is service order report pop up page present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is service order report pop up page present')
            return self._carrier_page.is_service_order_report_pop_up_page_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is service order report pop up page present')

    def is_service_level_change_work_order_grid_save_changes_button_present(self):
        """
        Returning is service level change work order grid save changes button present
        Implementing is service level change work order grid save changes button present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is service level change work order grid save changes button present')
            return self._carrier_page.is_service_level_change_work_order_grid_save_changes_button_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is service level change work order grid save changes button present')

    def is_service_level_change_work_order_grid_cancel_changes_button_present(self):
        """
        Returning is service level change work order grid cancel changes button present
        Implementing is service level change work order grid cancel changes button present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is service level change work order grid cancel changes button present')
            return self._carrier_page.is_service_level_change_work_order_grid_cancel_changes_button_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is service level change work order grid cancel changes button present')

    def is_add_new_service_level_change_work_order_button_present(self):
        """
        Returning is add new service level change work order button present
        Implementing is add new service level change work order button present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is add new service level change work order button present')
            return self._carrier_page.is_add_new_service_level_change_work_order_button_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is add new service level change work order button present')

    def get_service_level_change_work_order_grid_first_row_column_value(self, column_name):
        """
        Returning get service level change work order grid first row column value
        Implementing logging for get service level change work order grid first row column value functionality
        :param column_name:
        :return: column_value
        """
        column_value = None
        try:
            self.logger.info('Start: get service level change work order grid first row column value')
            column_value = self._carrier_page.get_service_level_change_work_order_grid_first_row_column_value(column_name)
        except WebDriverException as exp:
            column_value = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get service level change work order grid first row column value')
            return column_value

    def click_submit_button_and_verify_error_message(self):
        """
        Returning click submit button and verify error message
        Implementing logging for click submit button and verify error message functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click submit button and verify error message')
            self._carrier_page.click_submit_button_and_verify_error_message()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click submit button and verify error message')
            return is_clicked
