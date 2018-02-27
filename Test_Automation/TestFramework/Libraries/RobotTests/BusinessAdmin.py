"""
Implementing BusinessAdmin UI page actions
Implementing Logging mechanism for BusinessAdmin UI page actions
"""

from selenium.common.exceptions import WebDriverException
from TestFramework.Libraries.logger import Logger
from TestFramework.Libraries.Pages.business_admin_page import BusinessAdminPage


class BusinessAdmin:
    """
    Returning switch to business admin page
    Returning business admin page title
    Returning business admin tab status
    Returning expand number plan menu
    Returning click origin set submenu
    Returning click add dialed digits button
    Returning set begin date
    Returning set end date
    Returning set dialed digit type
    Returning set digit 1 value
    Returning select origin sets
    Returning select settlement origin
    Returning click add dialed digits ok button
    Returning set origin set for search
    Returning set settlement origin for search
    Returning set dialed digit for search
    Returning click origin set search button
    Returning get origin set grid row details
    Returning click number plan submenu
    Returning click country submenu
    Returning click upload number plan button
    Returning click number plan uploads button
    Returning set upload number plan type
    Returning set upload number plan
    Returning set upload number plan note
    Returning click number plan upload browse button
    Returning select the file to be uploaded
    Returning click number plan upload button
    Returning set number plan uploads number plan type
    Returning set number plan uploads number plan
    Returning set multiple status
    Returning close current tab
    Returning click number plan uploads search button
    Returning analyze pending status if exists
    Returning click number plan uploads grid inline action button
    Returning select item from inline action
    Returning click number plan upload cancel button
    Returning origin set grid inline action button click status
    Returning origin set grid inline item selection status
    Returning set origin set function
    Returning set rule of missing a function
    Returning click edit origin set ok button function
    Returning set origin set
    Returning set rule of missing a
    Returning click edit origin set ok button
    Returning click export to excel button
    Returning click new origin set button function
    Returning number plan uploads grid inline item availability status
    Returning click show summary link
    Returning get number plan uploads grid row details
    Returning verify upload details information
    Returning dial digits tab loading status
    Returning csnp analysis tab loading status
    Returning click new settlement origin button
    Returning set settlement origin
    Returning click add row button
    Returning set digit 2 value
    Returning search results displayed in the grid
    Returning click new settlement origin ok button
    Returning generate origin set
    Returning is view origin set details available function
    Returning is edit origin set popup available function
    Returning click edit origin set popup cancel button function
    Returning get number plan uploads grid row details for workflow
    Returning click show workflow link
    Returning get workflow grid row details
    Returning set from date
    Returning click new origin set button
    Returning click origin set upload button
    Returning set origin set for upload
    Returning set effective date for upload origin set
    Returning click upload origin set browse button
    Returning click upload origin set upload button
    Returning click add origin set ok button
    Returning click add origin set cancel button
    Returning available origin set fetching status
    Returning click new settlement origin popup cancel button
    Returning expand trading menu
    Returning click source and policies submenu
    Returning set source type for search
    Returning click sources search button
    Returning click add new source button
    Returning set source
    Returning set abbreviation
    Returning set status
    Returning set account
    Returning set rate plan
    Returning set call type
    Returning set number plan
    Returning set reference price list
    Returning click create new customer save button
    Returning set source for search
    Returning get source grid row details
    Returning set source status
    Returning click source grid save changes button
    Returning select created source checkbox
    Returning click delete button
    Returning select created source checkbox
    Returning click bulk edit button
    Returning select source policies grid multiple rows
    Returning set bulk edit number plan
    Returning set bulk edit call type
    Returning set bulk edit reference price list
    Returning set bulk edit quality of service
    Returning set bulk edit origin reference price list
    Returning set bulk edit note
    Returning click bulk edit submit button
    Returning verify edited sources grid row details
    Returning click save changes button
    Returning select created source checkbox
    Returning click delete button
    Returning get vendor source grid row details
    Returning set route class
    Returning source and policies screen checkbox status
    Returning set note
    Returning get target buy list grid row details
    Returning grid checkbox checked status
    Returning get reference account grid row details
    Returning get switch grid row details
    Returning get reference pricing policy grid row details
    Returning set bulk edit route class
    Returning set reference pricing policy
    Returning set az min selection threshold
    Returning get reference price list grid row details
    Returning set reference account bulk edit number plan
    Returning set bulk edit reference pricing policy
    Returning set bulk edit az min selection threshold
    Returning check bulk edit compound rpl checkbox
    Returning source policies grid compound rpl checkbox status
    Returning get quality of service grid row details
    Returning get origin reference price list grid row details
    Returning get price cost basis grid row details
    Returning click country submenu
    Returning click new country button
    Returning set new country region
    Returning set new country country type
    Returning set new country buy country group
    Returning set new country sell country group
    Returning set new country country name
    Returning set new country country abbreviation
    Returning set new country country code
    Returning set new country mobile country code
    Returning click new country save button
    Returning set country
    Returning click search button
    Returning get countries grid row details
    Returning select countries grid row checkbox
    Returning click country bulk edit button
    Returning set bulk edit buy country group
    Returning set bulk edit sell country group
    Returning click regions button
    Returning click new region button
    Returning set value in regions grid first row column
    Returning select regions grid row checkbox
    Returning click regions save changes button
    Returning set region
    Returning click generic search button
    Returning click delete region button
    Returning get regions grid row details
    Returning click country groups button
    Returning click create country group button
    Returning set country group scope
    Returning set country group
    Returning grid filter details
    Returning expand groups and categories menu
    Returning click categories submenu
    Returning click categories grid inline action button
    Returning move available countries to destination
    Returning close country group tab
    Returning click country group search button
    Returning get country group grid row details
    Returning click country group grid inline action button
    Returning select country group grid inline action item
    Returning select created country group checkbox
    Returning click country group delete button
    Returning reassign countries to source
    Returning click edit category save button
    Returning set category scope for search
    Returning click categories search button
    Returning get assigned countries list
    Returning is all countries moved to available
    Returning click edit category cancel button
    Returning click new category button
    Returning set new category category scope
    Returning set new category category type
    Returning set category name
    Returning set category abbreviation
    Returning click new category save button
    Returning set category scope
    Returning set category type
    Returning select categories grid row checkbox
    Returning get categories grid row details
    Returning click categories grid delete button
    Returning expand currency and exchange rates menu
    Returning click currency and exchange rates submenu
    Returning click new exchange rate button
    Returning set exchange rate types for search
    Returning set currency for search
    Returning set exchange rate type
    Returning set currency
    Returning set exchange rate
    Returning set exchange rate begin date
    Returning click add exchange rate save button
    Returning get exchange rates grid row details
    Returning click exchange rates grid inline action button
    Returning click exchange rate delete inline item
    Returning expand routing menu
    Returning click route class submenu
    Returning get route class grid first row data
    Returning set route class name
    Returning set route class abbreviation
    Returning set target fulfillment order
    Returning set capacity saturation order
    Returning set minimum direct percent
    Returning click add edit route class save button
    Returning select auto suggest checkbox
    Returning is auto suggested value field disabled
    Returning click add route class button
    Returning click add edit route class cancel button
    Returning get auto suggested value
    Returning set aep distribution group
    Returning select selected for routing checkbox
    Returning select cli guarantee checkbox
    Returning set cdr route class
    Returning get new route class data
    Returning get route class grid row data
    Returning filter route class grid
    Returning click route class grid inline action button
    Returning select item from route class inline action
    Returning clear all table filters
    Returning click network codes submenu
    Returning click network destinations grid first row inline action button
    Returning click add network code button
    Returning click add cdr match button
    Returning set network code
    Returning set network code begin date
    Returning set network code end date
    Returning click network code save changes button
    Returning click network codes grid inline action button
    Returning select network code delete inline item
    Returning set cdr match
    Returning set cdr match begin date
    Returning set cdr match end date
    Returning click cdr match save changes button
    Returning click cdr matches grid inline action button
    Returning select cdr match delete inline item
    Returning close current pop up
    Returning click save changes button without confirmation
    Returning click add network destination button
    Returning set network destination
    Returning set destination abbreviation
    Returning set network destination country
    Returning set call char
    Returning set network destination begin date
    Returning set network destination end date
    Returning set internal code
    Returning set external code
    Returning get network destinations grid first row details
    Returning add duplicate network destination
    Returning click add network destination save button
    Returning set country for search
    Returning set network destination for search
    Returning set value in network destinations grid first row column
    Returning click route class export to excel button
    Returning compare number plan uploads grid row count after upload
    Returning source policies grid total number of records returning status
    Returning countries grid total number of records returning status
    Returning click categories grid first row inline action button
    Returning set view edit category type
    Returning set view edit category number plan type
    Returning set view edit category number plan
    Returning expand rating menu
    Returning click bill cycle and settlement management submenu
    Returning close business admin window
    Returning expand bill and audit menu
    Returning click statement numbering templates submenu
    Returning click rating method submenu
    Returning validate date format
    Returning validate currency format
    Returning get country grid last modified date column value
    Returning get country group management grid last modified date column value
    Returning select business admin dashboard tab
    Returning get number plan grid last modified date column value
    Returning get number plan uploads from date
    Returning get number plan uploads to date
    Returning get number plan uploads grid upload date
    Returning get number plan uploads grid modified date
    Returning get network codes begin date
    Returning get network codes grid begin date column value
    Returning get network codes grid modified date column value
    Returning get origin set management select date
    Returning get origin set management grid modified date column value
    Returning expand company menu
    Returning click company submenu
    Returning get company grid last modified column value
    Returning get currency and exchange rates begin date
    Returning get exchange rate column value
    Returning get currency and exchange rates begin date column value
    Returning get currency and exchange rates last modified column value
    Returning click currency button
    Returning get currency grid last modified column value
    Returning get categories grid modified date column value
    Returning get route classes minimum direct percent column value
    Returning get source and policy grid modified date column value
    Returning click destination submenu
    Returning get origin set name
    Returning get settlement origin name
    Returning set rule of invalid a
    Returning click next button
    Returning click new csnp button
    Returning set csnp type
    Returning set csnp number plan
    Returning get csnp number plan
    Returning set csnp number plan abbreviation
    Returning set services
    Returning set default primary blending method
    Returning set default destination type
    Returning set call char
    Returning set default rating method
    Returning set enter min
    Returning set enter max
    Returning set define fixed blending security
    Returning set define minmax blending security
    Returning click new csnp save button
    Returning get network destination
    Returning get region name
    Returning get country name
    Returning click country bulk edit save changes button
    Returning get source name
    Returning set qos number plan
    Returning set qos call type
    Returning set wholesale solution type
    Returning set settlement origin dialed digit type
    Returning click new currency button
    Returning set currency name
    Returning set currency abbreviation
    Returning set currency symbol
    Returning click new currency save button
    Returning get currency name
    Returning set wholesale type
    Returning move first category to destination
    Returning reassign category to source
    Returning click internal cost adjustment submenu
    Returning is network codes screen loaded functionality
    Returning expand translate menu
    Returning click calendar provisioning submenu
    Returning is calendar provisioning management screen loaded
    Returning click rate dimension template submenu
    Returning click audit cycle and settlement management submenu
    Returning is cycle and settlement management screen loaded
    Returning click customer rounding rule definition submenu
    Returning is customer rounding rule definition screen loaded
    Returning click adjustment folder approval submenu
    Returning is adjustment folder approval page loaded properly
    Returning click audit statement fields submenu
    Returning is audit statement fields page loaded properly
    Returning click bill statement fields submenu
    Returning is bill statement fields page loaded properly
    Returning click charge categories submenu
    Returning is charge categories page loaded properly
    Returning click cover letter templates submenu
    Returning is cover letter templates page loaded properly
    Returning click discrepancy source submenu
    Returning is discrepancy source page loaded properly
    Returning click dispute grades submenu
    Returning is dispute grades page loaded properly
    Returning click dispute letter submenu
    Returning is dispute letter page loaded properly
    Returning is statement numbering template page loaded properly
    Returning click statement templates submenu
    Returning is statement templates page loaded properly
    Returning click accounting codes submenu
    Returning is accounting codes page loaded properly
    Returning click summarization level submenu
    Returning is summarization level page loaded properly
    Returning expand switch translation mappings menu
    Returning click submenu of switch translation mappings menu
    Returning verify translate page title
    Returning verify translate page filter frame title
    Returning expand subscribers and calling plans menu
    Returning click submenu of subscribers and calling plans menu
    Returning verify tab header
    Returning filter source and policies grid
    Returning select source and policies first row crpl checkbox
    Returning set generate rpl records for
    Returning set automated rpl generation
    Returning compare sorted data
    Returning compare grid column position after altering
    Returning set network codes grid settings
    Returning sort network codes grid column
    Returning get all rows of specific column from network codes grid
    Returning drag network codes grid column
    Returning get network codes grid column names by order
    Returning click network codes grid export to excel button
    Returning is route class page loaded properly
    Returning click product submenu
    Returning is product page loaded properly
    Returning expand switch translation mappings menu
    Returning click submenu of switch translation mappings menu
    Returning verify translate page title
    Returning verify translate page filter frame title
    Returning expand subscribers and calling plans menu
    Returning click submenu of subscribers and calling plans menu
    Returning verify tab header
    Returning is create country group button not present
    Returning is delete country group button not present
    Returning get countries grid existing mcc
    Returning set countries grid column value
    Returning move first available country to destination
    Returning set country for country group search
    Returning verify country group grid loaded with selected country
    Returning click buy and sell deal management submenu
    Returning set start date
    Returning set buy and sell management grid settings
    Returning sort buy and sell management grid column
    Returning get all rows of specific column from buy and sell management grid
    Returning drag buy and sell management grid column
    Returning get buy and sell management grid column names by order
    Returning click buy and sell management grid export to excel button
    Returning select buy and sell deal management grid first row checkbox.
    Returning click buy and sell deal bulk edit button
    Returning set bulk edit end date
    Returning set route class grid settings
    Returning sort route class grid column
    Returning get all rows of specific column from route class grid
    Returning drag route class grid column
    Returning get route class grid column names by order
    Returning click route class grid export to excel button
    Returning set currency grid settings
    Returning sort currency grid column
    Returning get all rows of specific column from currency grid
    Returning drag currency grid column
    Returning get currency grid column names by order
    Returning click currency grid export to excel button
    Returning set currency grid first row currency symbol
    Returning set source policies grid settings
    Returning sort source policies grid column
    Returning get all rows of specific column from source policies grid
    Returning drag source policies grid column
    Returning get source policies grid column names by order
    Returning click source policies grid export to excel button
    Returning click source policies grid first row inline action button
    Returning is copy source pop up opened properly
    Returning click copy source cancel button
    Returning set categories grid settings
    Returning sort categories grid column
    Returning get all rows of specific column from categories grid
    Returning drag categories grid column
    Returning get categories grid column names by order
    Returning click categories grid export to excel button
    Returning set exchange rates grid settings
    Returning sort exchange rates grid column
    Returning get all rows of specific column from exchange rates grid
    Returning drag exchange rates grid column
    Returning get exchange rates grid column names by order
    Returning click exchange rates grid export to excel button
    Returning set exchange rates grid first row exchange rate
    Returning click add new adjustment button
    Returning set route class for cost adjustment
    Returning set routing product
    Returning set cost per minute
    Returning select internal cost adjustments grid first row checkbox
    Returning click internal cost adjustment delete button
    Returning click accounting codes grid first row inline action button
    Returning is assign accounting codes page title available
    Returning get source grid cpl prev date override
    Returning set source grid cpl prev date override
    Returning set company grid settings
    Returning get all rows of specific column from company grid
    Returning sort company grid column
    Returning get company grid column names by order
    Returning drag company grid column
    Returning click new company button
    Returning set business admin company name
    Returning click company save button
    Returning filter company grid
    Returning get business admin company names
    Returning get duplicate company from database
    Returning set company for search
    Returning set company code
    Returning get pending jobs count
    Returning compare number plan uploads grid row count after upload for pending job
    Returning set number plan upload multiple status
    Returning set static number plan uploads number plan type
    Returning is reference number plan template download link present
    Returning set internal cost adjustments grid settings
    Returning sort internal cost adjustments grid column
    Returning get all rows of specific column from internal cost adjustments grid
    Returning drag internal cost adjustments grid column
    Returning get internal cost adjustments grid column names by order
    Returning click internal cost adjustments grid export to excel button
    Returning set regions grid settings
    Returning sort regions grid column
    Returning get all rows of specific column from regions grid
    Returning drag regions grid column
    Returning get regions grid column names by order
    Returning click regions grid export to excel button
    Returning set country groups grid settings
    Returning sort country groups grid column
    Returning get all rows of specific column from country groups grid
    Returning drag country groups grid column
    Returning get country groups grid column names by order
    Returning click country groups grid export to excel button
    Returning compare country group grid modified by column value
    Returning is country code displayed with country name
    Returning get currency grid currency column value
    Returning is error message displayed for duplicate currency
    Returning move assigned countries to source
    Returning verify save country group error message
    Returning click country group cancel button
    Returning set number plan type
    Returning is number plan search result matched
    Returning click buy and sell deal management grid first row inline action button
    Returning is account label displayed correctly
    Returning is account manager label displayed correctly
    Returning set country group management grid settings
    Returning get all rows of specific column from country group management grid
    Returning sort country group management grid column
    Returning get country group management grid column names by order
    Returning drag country group management grid column
    Returning click country group submenu
    Returning filter source and policies grid column with checkbox
    Returning select source and policies first row automate export checkbox
    Returning is source policies grid automate export checkbox checked
    Returning select opened tab
    Returning click origin set search button for new tab
    Returning get origin set grid row count
    Returning get new tab origin set grid row count
    Returning is country bulk edit pop up present
    Returning select countries grid first row checkbox
    Returning is network code save changes button present
    Returning is network code cancel changes button present
    Returning is cdr match save changes button present
    Returning is cdr match cancel changes button present
    Returning is network code save changes button not present
    Returning is network code cancel changes button not present
    Returning is cdr match save changes button not present
    Returning is cdr match cancel changes button not present
    Returning click request new deal button
    Returning set buy and sell deal name
    Returning set buy sell deal account
    Returning set vendor
    Returning set customer
    Returning click buy and sell deal create button
    Returning get buy and sell deal name
    Returning click vendor grid add destination button
    Returning set source to add destination
    Returning set route class to add destination
    Returning set destination to add destination
    Returning set deal rate to add destination
    Returning set deal volume to add destination
    Returning click customer grid add destination button
    Returning click request deal button
    Returning click add destination save button
    Returning click network destinations grid row inline action button
    Returning is internal cost adjustment submenu not present
    Returning set country grid settings
    Returning drag country grid column
    Returning get country grid column names by order
    Returning get all rows of specific column from country grid
    Returning sort country grid column
    Returning click my price list submenu
    Returning is my price list page loaded properly
    Returning set number plan grid settings
    Returning get number plan grid column names by order
    Returning drag number plan grid column
    Returning get all rows of specific column from number plan grid
    Returning sort number plan grid column
    Returning set percentage
    Returning click save button and pass the error message
    Returning is specific error message present
    Returning is route class grid column present
    Returning is custom field alias present
    Returning is duplicate cost adjustment error message pop up present
    Returning click number plan upload job notifier
    Returning get jobs grid row count
    Returning compare jobs grid row count
    Returning is expected button not visible
    Returning get category name
    Returning click country grid first row inline action button
    Returning click country delete inline item
    Returning is specific column present in source and policy grid
    Returning set specific textbox column in source and policy grid
    Returning set specific dropdown column in source and policy grid
    Returning check custom rc checkbox
    Returning is error message displayed for empty search criteria
    Returning compare begin date with given date
    Returning compare end date with given date
    """
    ROBOT_LIBRARY_SCOPE = 'TEST SUITE'

    logger = Logger().get_logger('BusinessAdmin')

    def __init__(self):
        self._business_admin_page = BusinessAdminPage()

    def switch_to_business_admin(self):
        """
        Returning switch to business admin
        Implementing logging for switch to business admin functionality
        :return: True/False
        """
        is_switched = None
        try:
            self.logger.info('Start: switch to business admin method')
            self._business_admin_page.switch_to_business_admin()
            is_switched = True
        except WebDriverException as exp:
            is_switched = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: switch to business admin method')
            return is_switched

    def get_business_admin_page_title(self):
        """
        Returning business admin page title
        Implementing logging for get business admin page title functionality
        :return: business admin page title
        """
        try:
            self.logger.info('Start: get business admin page title method')
            return self._business_admin_page.get_business_admin_page_title()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get business admin page title method')

    def is_business_admin_dashboard_tab_present(self):
        """
        Returning business admin dashboard tab status
        Implementing logging for business admin dashboard tab present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is business admin dashboard tab present method')
            return self._business_admin_page.is_business_admin_dashboard_tab_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is business admin dashboard tab present method')

    def expand_number_plan_menu(self):
        """
        Returning expand number plan menu
        Implementing logging for expand number plan menu functionality
        :return: True/False
        """
        is_expanded = None
        try:
            self.logger.info('Start: expand number plan menu')
            self._business_admin_page.expand_number_plan_menu()
            is_expanded = True
        except WebDriverException as exp:
            is_expanded = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: expand number plan menu')
            return is_expanded

    def click_origin_set_submenu(self):
        """
        Returning click origin set submenu
        Implementing logging for click origin set submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click origin set submenu')
            self._business_admin_page.click_origin_set_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click origin set submenu')
            return is_clicked

    def click_add_dialed_digits_button(self):
        """
        Returning click add dialed digits button
        Implementing logging for click add dialed digits button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click add dialed digits button')
            self._business_admin_page.click_add_dialed_digits_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click add dialed digits button')
            return is_clicked

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
            self._business_admin_page.set_begin_date(begin_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set begin date')
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
                self._business_admin_page.set_end_date(end_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set end date')
            return is_set

    def set_dialed_digit_type(self, dial_digit_type):
        """
        Returning set dialed digit type
        Implementing logging for set dialed digit type functionality
        :param dial_digit_type:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set dialed digit type')
            self._business_admin_page.set_dialed_digit_type(dial_digit_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set dialed digit type')
            return is_set

    def set_digit_1_value(self):
        """
        Returning set digit 1 value
        Implementing set digit 1 value functionality
        :return: dialed_digit
        """
        dialed_digit = None
        try:
            self.logger.info('Start: set digit 1 value')
            dialed_digit = self._business_admin_page.set_digit_1_value()
        except WebDriverException as exp:
            dialed_digit = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set digit 1 value')
            return dialed_digit

    def select_origin_sets(self, *list_of_origin_sets):
        """
        Returning select origin sets
        Implementing logging for select origin sets functionality
        :param list_of_origin_sets:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select origin sets')
            self._business_admin_page.select_origin_sets(list_of_origin_sets)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select origin sets')
            return is_selected

    def select_settlement_origins(self, *settlement_origin_list):
        """
        Returning select settlement origin
        Implementing logging for select settlement origin functionality
        :param settlement_origin_list:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select settlement origin')
            self._business_admin_page.select_settlement_origins(settlement_origin_list)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select settlement origin')
            return is_selected

    def click_add_dialed_digits_ok_button(self):
        """
        Returning click add dialed digits ok button
        Implementing logging for click add dialed digits ok button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click add dialed digits ok button')
            self._business_admin_page.click_add_dialed_digits_ok_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click add dialed digits ok button')
            return is_clicked

    def set_origin_set_for_search(self, *origin_set):
        """
        Returning set origin set for search
        Implementing logging for set origin set for search functionality
        :param origin_set:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set origin set for search')
            self._business_admin_page.set_origin_set_for_search(origin_set)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set origin set for search')
            return is_set

    def set_settlement_origin_for_search(self, *settlement_origin):
        """
        Returning set settlement origin for search
        Implementing logging for set settlement origin for search functionality
        :param settlement_origin:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set settlement origin for search')
            self._business_admin_page.set_settlement_origin_for_search(settlement_origin)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set settlement origin for search')
            return is_set

    def set_dialed_digit_for_search(self, dialed_digit):
        """
        Returning set dialed digit for search
        Implementing logging for set dialed digit for search functionality
        :param dialed_digit:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set dialed digit for search')
            self._business_admin_page.set_dialed_digit_for_search(dialed_digit)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set dialed digit for search')
            return is_set

    def click_origin_set_search_button(self):
        """
        Returning click origin set search button
        Implementing logging for click origin set search button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click origin set search button')
            self._business_admin_page.click_origin_set_search_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click origin set search button')
            return is_clicked

    def get_origin_set_grid_row_details(self):
        """
        Returning get origin set grid row details
        Implementing logging for get origin set grid row details functionality
        :return: origin_sets_grid_row_data
        """
        try:
            self.logger.info('Start: get origin set grid row details')
            return self._business_admin_page.get_origin_set_grid_row_details()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get origin set grid row details')

    def click_export_to_excel_button(self):
        """
        Returning click export to excel button
        Implementing logging for click export to excel button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click export to excel button')
            self._business_admin_page.click_export_to_excel_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click export to excel button')
            return is_clicked

    def click_number_plan_submenu(self):
        """
        Returning click number plan submenu
        Implementing logging for click number plan submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click number plan submenu')
            self._business_admin_page.click_number_plan_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click number plan submenu')
            return is_clicked

    def click_upload_number_plan_button(self):
        """
        Returning click upload number plan button
        Implementing logging for click upload number plan button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click upload number plan button')
            self._business_admin_page.click_upload_number_plan_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click upload number plan button')
            return is_clicked

    def click_number_plan_uploads_button(self):
        """
        Returning click number plan uploads button
        Implementing logging for click number plan uploads button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click number plan uploads button')
            self._business_admin_page.click_number_plan_uploads_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click number plan uploads button')
            return is_clicked

    def set_upload_number_plan_type(self, number_plan_type):
        """
        Returning set upload number plan type
        Implementing logging for set upload number plan type functionality
        :param number_plan_type:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set upload number plan type')
            if number_plan_type != "":
                self._business_admin_page.set_upload_number_plan_type(number_plan_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set upload number plan type')
            return is_set

    def set_upload_number_plan(self, number_plan):
        """
        Returning set upload number plan
        Implementing logging for set upload number plan functionality
        :param number_plan:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set upload number plan')
            self._business_admin_page.set_upload_number_plan(number_plan)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set upload number plan')
            return is_set

    def set_upload_number_plan_note(self, note_prefix):
        """
        Returning set upload number plan note
        Implementing logging for set upload number plan note functionality
        :param note_prefix:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set upload number plan note')
            if note_prefix != "":
                self._business_admin_page.set_upload_number_plan_note(note_prefix)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set upload number plan note')
            return is_set

    def click_number_plan_upload_browse_button(self):
        """
        Returning click number plan upload browse button
        Implementing logging for click number plan upload browse button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click number plan upload browse button')
            self._business_admin_page.click_number_plan_upload_browse_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click number plan upload browse button')
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
            self._business_admin_page.select_the_file_to_be_uploaded(file_path)
            is_selected = True
        except Exception as exp:
            is_selected = False
            self.logger.error(exp.message)
            raise
        finally:
            self.logger.info('End: select the file to be uploaded')
            return is_selected

    def click_number_plan_upload_button(self):
        """
        Returning click number plan upload button
        Implementing logging for click number plan upload button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click number plan upload button')
            self._business_admin_page.click_number_plan_upload_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click number plan upload button')
            return is_clicked

    def set_number_plan_uploads_number_plan_type(self, number_plan_type):
        """
        Returning set number plan uploads number plan type
        Implementing logging for set number plan uploads number plan type functionality
        :param number_plan_type:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set number plan uploads number plan type')
            if number_plan_type != "":
                self._business_admin_page.set_number_plan_uploads_number_plan_type(number_plan_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set number plan uploads number plan type')
            return is_set

    def set_number_plan_uploads_number_plan(self, *number_plan_list):
        """
        Returning set number plan uploads number plan
        Implementing logging for set number plan uploads number plan functionality
        :param number_plan_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set number plan uploads number plan')
            if len(number_plan_list) > 0:
                self._business_admin_page.set_number_plan_uploads_number_plan(number_plan_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set number plan uploads number plan')
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
                self._business_admin_page.set_multiple_status(status_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set multiple status')
            return is_set

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
            self._business_admin_page.close_current_tab(tab_name)
            is_closed = True
        except WebDriverException as exp:
            is_closed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: close current tab')
            return is_closed

    def click_number_plan_uploads_search_button(self):
        """
        Returning click number plan uploads search button
        Implementing logging for click number plan uploads search button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click number plan uploads search button')
            self._business_admin_page.click_number_plan_uploads_search_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click number plan uploads search button')
            return is_clicked

    def analyze_pending_status_if_exists(self):
        """
        Returning analyze pending status if exists
        Implementing logging for analyze pending status if exists functionality
        :return: True/False
        """
        is_status_changed = None
        try:
            self.logger.info('Start: analyze pending status if exists')
            self._business_admin_page.analyze_pending_status_if_exists()
            is_status_changed = True
        except WebDriverException as exp:
            is_status_changed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: analyze pending status if exists')
            return is_status_changed

    def click_number_plan_uploads_grid_inline_action_button(self, row_identifier_text):
        """
        Returning click number plan uploads grid inline action button
        Implementing logging for click number plan uploads grid inline action button functionality
        :param row_identifier_text:
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click number plan uploads grid inline action button')
            self._business_admin_page.click_number_plan_uploads_grid_inline_action_button(row_identifier_text)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click number plan uploads grid inline action button')
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
            self._business_admin_page.select_business_admin_module_inline_action_item(item_name)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select item from inline action')
            return is_selected

    def set_origin_set(self, origin_set, new_origin=False):
        """
        Returning set origin set
        Implementing logging for set origin set functionality
        :param origin_set:
        :param new_origin:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set origin set')
            if origin_set != "":
                self._business_admin_page.set_origin_set(origin_set, new_origin)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set origin set')
            return is_set

    def click_add_origin_set_ok_button(self):
        """
        Returning click add origin set ok button
        Implementing logging for click add origin set ok button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click add origin set ok button')
            self._business_admin_page.click_add_origin_set_ok_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click add origin set ok button')
            return is_clicked

    def click_add_origin_set_cancel_button(self):
        """
        Returning click add origin set cancel button
        Implementing logging for click add origin set cancel button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click add origin set cancel button')
            self._business_admin_page.click_add_origin_set_cancel_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click add origin set cancel button')
            return is_clicked

    def click_new_settlement_origin_button(self):
        """
        Returning click new settlement origin button
        Implementing logging for click new settlement origin button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click new settlement origin button')
            self._business_admin_page.click_new_settlement_origin_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click new settlement origin button')
            return is_clicked

    def set_settlement_origin(self, settlement_origin_prefix, random_string=True):
        """
        Returning set settlement origin
        Implementing logging for set settlement origin functionality
        :param settlement_origin_prefix:
        :param random_string:
        :return:
        """
        is_set = None
        try:
            self.logger.info('Start: set settlement origin')
            self._business_admin_page.set_settlement_origin(settlement_origin_prefix, random_string)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set settlement origin')
            return is_set

    def click_add_row_button(self):
        """
        Returning click add row button
        Implementing logging for click add row button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click add row button')
            self._business_admin_page.click_add_row_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click add row button')
            return is_clicked

    def set_digit_2_value(self):
        """
        Returning set digit 2 value
        Implementing logging for set digit 2 value functionality
        :return: dialed_digit
        """
        dialed_digit = None
        try:
            self.logger.info('Start: set digit 2 value')
            dialed_digit = self._business_admin_page.set_digit_2_value()
        except WebDriverException as exp:
            dialed_digit = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set digit 2 value')
            return dialed_digit

    def search_results_displayed_in_the_grid(self):
        """
        Returning search results displayed in the grid
        Implementing logging for search results displayed in the grid functionality
        :return: search results status- True/False
        """
        try:
            self.logger.info('Start: search results displayed in the grid')
            return self._business_admin_page.search_results_displayed_in_the_grid()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: search results displayed in the grid')

    def click_new_settlement_origin_ok_button(self):
        """
        Returning click new settlement origin ok button
        Implementing logging for click new settlement origin ok button functionality
        :return:
        """
        is_clicked = None
        try:
            self.logger.info('Start: click new settlement origin ok button')
            self._business_admin_page.click_new_settlement_origin_ok_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click new settlement origin ok button')
            return is_clicked

    def generate_settlement_origin(self, origin_set):
        """
        Returning generate origin set
        Implementing logging for generate origin set functionality
        :param origin_set:
        :return: new_settlement_origin
        """
        origin = None
        try:
            self.logger.info('Start: generate origin set')
            origin = self._business_admin_page.generate_settlement_origin(origin_set)
        except WebDriverException as exp:
            origin = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: generate origin set')
            return origin

    def is_available_origin_set_fetched(self):
        """
        Returning available origin set fetching status
        Implementing logging for available origin set fetching functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: available origin set fetch')
            return self._business_admin_page.is_available_origin_set_fetched()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: available origin set fetch')

    def click_new_settlement_origin_popup_cancel_button(self):
        """
        Returning click new settlement origin popup cancel button
        Implementing logging for click new settlement origin popup cancel button functionality
        :return:
        """
        is_closed = None
        try:
            self.logger.info('Start: click new settlement origin popup cancel button')
            self._business_admin_page.click_new_settlement_origin_popup_cancel_button()
            is_closed = True
        except WebDriverException as exp:
            is_closed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click new settlement origin popup cancel button')
            return is_closed

    def click_show_summary_link(self):
        """
        Returning click show summary link
        Implementing logging for click show summary link functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click show summary link')
            self._business_admin_page.click_show_summary_link()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click show summary link')
            return is_clicked

    def get_number_plan_uploads_grid_row_details(self):
        """
        Returning get number plan uploads grid row details
        Implementing logging for get number plan uploads grid row details functionality
        :return: number_plan_uploads_grid_row_data
        """
        try:
            self.logger.info('Start: get number plan uploads grid row details')
            return self._business_admin_page.get_number_plan_uploads_grid_row_details()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get number plan uploads grid row details')

    def verify_upload_details_information(self, row_details):
        """
        Returning verify upload details information
        Implementing logging for verify upload details information functionality
        :param row_details:
        :return: True/False
        """
        is_verified = None
        try:
            self.logger.info('Start: verify upload details information')
            is_verified = self._business_admin_page.verify_upload_details_information(row_details)
        except WebDriverException as exp:
            is_verified = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: verify upload details information')
            return is_verified

    def is_dial_digits_tab_loaded_properly(self):
        """
        Returning dial digits tab loading status
        Implementing logging for dial digits tab loaded functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is dial digits tab loaded properly')
            return self._business_admin_page.is_dial_digits_tab_loaded_properly()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is dial digits tab loaded properly')

    def is_csnp_analysis_tab_loaded_properly(self):
        """
        Returning csnp analysis tab loading status
        Implementing logging for csnp analysis tab loaded functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is csnp analysis tab loaded properly')
            return self._business_admin_page.is_csnp_analysis_tab_loaded_properly()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is csnp analysis tab loaded properly')

    def click_origin_set_grid_inline_action_button(self, origin_set):
        """
        Returning origin set grid inline action button click status
        Implementing logging for origin set grid inline action button click functionality
        :param origin_set:
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: origin set grid inline action button click')
            self._business_admin_page.click_origin_set_grid_inline_action_button(origin_set)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: origin set grid inline action button click')
            return is_clicked

    def select_origin_set_grid_inline_item(self, inline_item, module_name):
        """
        Returning origin set grid inline item selection status
        Implementing logging for select origin set grid inline item functionality
        :param inline_item:
        :param module_name:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select origin set grid inline item')
            self._business_admin_page.select_inline_action_item(inline_item, module_name)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select origin set grid inline item')
            return is_selected

    def set_rule_of_missing_a(self, dropdown_item):
        """
        Returning set rule of missing a
        Implementing logging for set rule of missing a functionality
        :param dropdown_item:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set rule of missing a')
            if dropdown_item != "":
                self._business_admin_page.set_rule_of_missing_a(dropdown_item)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set rule of missing a')
            return is_set

    def click_edit_origin_set_ok_button(self):
        """
        Returning click edit origin set ok button
        Implementing logging for click edit origin set ok button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click edit origin set ok button')
            self._business_admin_page.click_edit_origin_set_ok_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click edit origin set ok button')
            return is_clicked

    def is_view_origin_set_details_available(self):
        """
        Returning is view origin set details available
        Implementing logging for is view origin set details available functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is view origin set details available')
            return self._business_admin_page.is_view_origin_set_details_available()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is view origin set details available')

    def is_edit_origin_set_popup_available(self):
        """
        Returning is edit origin set popup available
        Implementing logging for is edit origin set popup available functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is edit origin set popup available')
            return self._business_admin_page.is_edit_origin_set_popup_available()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is edit origin set popup available')

    def click_edit_origin_set_popup_cancel_button(self):
        """
        Returning click edit origin set popup cancel button
        Implementing logging for click edit origin set popup cancel button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click edit origin set popup cancel button')
            self._business_admin_page.click_edit_origin_set_popup_cancel_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click edit origin set popup cancel button')
            return is_clicked

    def click_number_plan_upload_cancel_button(self):
        """
        Returning click number plan upload cancel button
        Implementing logging for click number plan upload cancel button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click number plan upload cancel button')
            self._business_admin_page.click_number_plan_upload_cancel_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click number plan upload cancel button')
            return is_clicked

    def click_new_origin_set_button(self):
        """
        Returning click new origin set button
        Implementing logging for click new origin set button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click new origin set button')
            self._business_admin_page.click_new_origin_set_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click new origin set button')
            return is_clicked

    def click_origin_set_upload_button(self):
        """
        Returning click origin set upload button
        Implementing logging for click origin set upload button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click origin set upload button')
            self._business_admin_page.click_origin_set_upload_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click origin set upload button')
            return is_clicked

    def set_origin_set_for_upload(self, origin_set):
        """
        Returning set origin set for upload
        Implementing logging for set origin set for upload functionality
        :param origin_set:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set origin set for upload')
            self._business_admin_page.set_origin_set_for_upload(origin_set)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set origin set for upload')
            return is_set

    def set_effective_date_for_upload_origin_set(self, effective_date):
        """
        Returning set effective date for upload origin set
        Implementing logging for set effective date for upload origin set functionality
        :param effective_date:
        :return:
        """
        is_set = None
        try:
            self.logger.info('Start: set effective date for upload origin set')
            self._business_admin_page.set_effective_date_for_upload_origin_set(effective_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set effective date for upload origin set')
            return is_set

    def click_upload_origin_set_browse_button(self):
        """
        Returning click upload origin set browse button
        Implementing logging for click upload origin set browse button functionality
        :return:
        """
        is_clicked = None
        try:
            self.logger.info('Start: click upload origin set browse button')
            self._business_admin_page.click_upload_origin_set_browse_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click upload origin set browse button')
            return is_clicked

    def click_upload_origin_set_upload_button(self):
        """
        Returning click upload origin set upload button
        Implementing logging for click upload origin set upload button functionality
        :return:
        """
        is_clicked = None
        try:
            self.logger.info('Start: click upload origin set upload button')
            self._business_admin_page.click_upload_origin_set_upload_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click upload origin set upload button')
            return is_clicked

    def is_number_plan_uploads_grid_inline_item_available(self, inline_item):
        """
        Returning number plan uploads grid inline item availability status
        Implementing logging for number plan uploads grid inline item availability status
        :param inline_item:
        :return: True/False
        """
        is_available = None
        try:
            self.logger.info('Start: is number plan uploads grid inline item available')
            is_available = self._business_admin_page.is_number_plan_uploads_grid_inline_item_available(inline_item)
        except WebDriverException as exp:
            is_available = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is number plan uploads grid inline item available')
            return is_available

    def get_number_plan_uploads_grid_row_details_for_workflow(self):
        """
        Returning get number plan uploads grid row details for workflow
        Implementing logging for get number plan uploads grid row details for workflow functionality
        :return: number_plan_uploads_grid_row_data
        """
        try:
            self.logger.info('Start: get number plan uploads grid row details for workflow')
            return self._business_admin_page.get_number_plan_uploads_grid_row_details_for_workflow()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get number plan uploads grid row details for workflow')

    def click_show_workflow_link(self):
        """
        Returning click show workflow link
        Implementing logging for click show workflow link functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click show workflow link')
            self._business_admin_page.click_show_workflow_link()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click show workflow link')
            return is_clicked

    def get_workflow_grid_row_details(self):
        """
        Returning get workflow grid row details
        Implementing logging for get workflow grid row details functionality
        :return: workflow_grid_row_data
        """
        try:
            self.logger.info('Start: get workflow grid row details')
            return self._business_admin_page.get_workflow_grid_row_details()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get workflow grid row details')

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
                self._business_admin_page.set_from_date(from_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set from date')
            return is_set

    def expand_trading_menu(self):
        """
        Returning expand trading menu
        Implementing logging for expand trading menu functionality
        :return: True/False
        """
        is_expanded = None
        try:
            self.logger.info('Start: expand trading menu')
            self._business_admin_page.expand_trading_menu()
            is_expanded = True
        except WebDriverException as exp:
            is_expanded = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: expand trading menu')
            return is_expanded

    def click_source_and_policies_submenu(self):
        """
        Returning click source and policies submenu
        Implementing logging for click source and policies submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click source and policies submenu')
            self._business_admin_page.click_source_and_policies_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click source and policies submenu')
            return is_clicked

    def set_source_type_for_search(self, source_type):
        """
        Returning set source type for search
        Implementing logging for set source type for search functionality
        :param source_type:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set source type for search')
            self._business_admin_page.set_source_type_for_search(source_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set source type for search')
            return is_set

    def click_sources_search_button(self):
        """
        Returning click sources search button
        Implementing logging for click sources search button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click sources search button')
            self._business_admin_page.click_sources_search_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click sources search button')
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
            self._business_admin_page.click_bulk_edit_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click bulk edit button')
            return is_clicked

    def select_source_policies_grid_multiple_rows(self, *list_of_sources):
        """
        Returning select source policies grid multiple rows
        Implementing logging for select source policies grid multiple rows functionality
        :param list_of_sources:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select source policies grid multiple rows')
            self._business_admin_page.select_source_policies_grid_multiple_rows(list_of_sources)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select source policies grid multiple rows')
            return is_selected

    def set_bulk_edit_number_plan(self, number_plan):
        """
        Returning set bulk edit number plan
        Implementing logging for set bulk edit number plan functionality
        :param number_plan:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set bulk edit number plan')
            if number_plan != "":
                self._business_admin_page.set_bulk_edit_number_plan(number_plan)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set bulk edit number plan')
            return is_set

    def set_bulk_edit_call_type(self, call_type):
        """
        Returning set bulk edit call type
        Implementing logging for set bulk edit call type functionality
        :param call_type:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set bulk edit call type')
            if call_type != "":
                self._business_admin_page.set_bulk_edit_call_type(call_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set bulk edit call type')
            return is_set

    def set_bulk_edit_reference_price_list(self, reference_price_list):
        """
        Returning set bulk edit reference price list
        Implementing logging for set bulk edit reference price list functionality
        :param reference_price_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set bulk edit reference price list')
            if reference_price_list != "":
                self._business_admin_page.set_bulk_edit_reference_price_list(reference_price_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set bulk edit reference price list')
            return is_set

    def set_bulk_edit_quality_of_service(self, quality_of_service):
        """
        Returning set bulk edit quality of service
        Implementing logging for set bulk edit quality of service functionality
        :param quality_of_service:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set bulk edit quality of service')
            if quality_of_service != "":
                self._business_admin_page.set_bulk_edit_quality_of_service(quality_of_service)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set bulk edit quality of service')
            return is_set

    def set_bulk_edit_origin_reference_price_list(self, origin_reference_price_list):
        """
        Returning set bulk edit origin reference price list
        Implementing logging for set bulk edit origin reference price list functionality
        :param origin_reference_price_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set bulk edit origin reference price list')
            if origin_reference_price_list != "":
                self._business_admin_page.set_bulk_edit_origin_reference_price_list(origin_reference_price_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set bulk edit origin reference price list')
            return is_set

    def set_bulk_edit_note(self, note_prefix):
        """
        Returning set bulk edit note
        Implementing logging for set bulk edit note functionality
        :param note_prefix:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set bulk edit note')
            if note_prefix != "":
                self._business_admin_page.set_bulk_edit_note(note_prefix)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set bulk edit note')
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
            self._business_admin_page.click_bulk_edit_submit_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click bulk edit submit button')
            return is_clicked

    def verify_edited_sources_grid_row_details(self, *list_of_sources):
        """
        Returning verify edited sources grid row details
        Implementing logging for verify edited sources grid row details functionality
        :param list_of_sources:
        :return: True/False
        """
        is_verified = None
        try:
            self.logger.info('Start: verify edited sources grid row details')
            is_verified = self._business_admin_page.verify_edited_sources_grid_row_details(list_of_sources)
        except WebDriverException as exp:
            is_verified = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: verify edited sources grid row details')
            return is_verified

    def click_save_changes_button(self):
        """
        Returning click save changes button
        Implementing logging for click save changes button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click save changes button')
            self._business_admin_page.click_save_changes_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click save changes button')
            return is_clicked

    def click_add_new_source_button(self):
        """
        Returning click add new source button
        Implementing logging for click add new source button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click add new source button')
            self._business_admin_page.click_add_new_source_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click add new source button')
            return is_clicked

    def set_source(self, source_prefix):
        """
        Returning set source
        Implementing logging for set source functionality
        :param source_prefix:
        :return: source
        """
        source = None
        try:
            self.logger.info('Start: set source')
            source = self._business_admin_page.set_source(source_prefix)
        except WebDriverException as exp:
            source = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set source')
            return source

    def set_abbreviation(self, abbreviation_prefix, with_random_string=True):
        """
        Returning set abbreviation
        Implementing logging for set abbreviation functionality
        :param abbreviation_prefix:
        :param with_random_string:
        :return: abbreviation
        """
        abbreviation = None
        try:
            self.logger.info('Start: set abbreviation')
            abbreviation = self._business_admin_page.set_abbreviation(abbreviation_prefix, with_random_string)
        except WebDriverException as exp:
            abbreviation = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set abbreviation')
            return abbreviation

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
            self._business_admin_page.set_status(status)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set status')
            return is_set

    def set_account(self, account):
        """
        Returning set account
        Implementing logging for set account functionality
        :param account:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set account')
            self._business_admin_page.set_account(account)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set account')
            return is_set

    def set_rate_plan(self, rate_plan):
        """
        Returning set rate plan
        Implementing logging for set rate plan functionality
        :param rate_plan:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set rate plan')
            self._business_admin_page.set_rate_plan(rate_plan)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set rate plan')
            return is_set

    def set_call_type(self, call_type):
        """
        Returning set call type
        Implementing logging for set call type functionality
        :param call_type:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set call type')
            self._business_admin_page.set_call_type(call_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set call type')
            return is_set

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
            self._business_admin_page.set_number_plan(number_plan)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set number plan')
            return is_set

    def set_reference_price_list(self, reference_price_list):
        """
        Returning set reference price list
        Implementing logging for set reference price list functionality
        :param reference_price_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set reference price list')
            self._business_admin_page.set_reference_price_list(reference_price_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set reference price list')
            return is_set

    def click_create_new_customer_save_button(self):
        """
        Returning click create new customer save button
        Implementing logging for click create new customer save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click create new customer save button')
            self._business_admin_page.click_create_new_customer_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click create new customer save button')
            return is_clicked

    def set_source_for_search(self, source):
        """
        Returning set source for search
        Implementing logging for set source for search functionality
        :param source:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set source for search')
            self._business_admin_page.set_source_for_search(source)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set source for search')
            return is_set

    def get_source_grid_row_details(self):
        """
        Returning get source grid row details
        Implementing logging for get source grid row details functionality
        :return: source_grid_row_data
        """
        try:
            self.logger.info('Start: get source grid row details')
            return self._business_admin_page.get_source_grid_row_details()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get source grid row details')

    def set_source_status(self, status):
        """
        Returning set source status
        Implementing logging for set source status functionality
        :param status:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set source status')
            self._business_admin_page.set_source_status(status)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set source status')
            return is_set

    def click_source_grid_save_changes_button(self):
        """
        Returning click source grid save changes button
        Implementing logging for click source grid save changes button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click source grid save changes button')
            self._business_admin_page.click_source_grid_save_changes_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click source grid save changes button')
            return is_clicked

    def select_created_source_checkbox(self, source_name):
        """
        Returning select created source checkbox
        Implementing logging for select created source checkbox functionality
        :param source_name:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select created source checkbox')
            self._business_admin_page.select_created_source_checkbox(source_name)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select created source checkbox')
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
            self._business_admin_page.click_delete_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click delete button')
            return is_clicked

    def select_source_grid_multiple_checkbox(self, *source_list):
        """
        Returning select source grid multiple checkbox
        Implementing logging for select source grid multiple checkbox functionality
        :param source_list:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select source grid multiple checkbox')
            self._business_admin_page.select_source_grid_multiple_checkbox(source_list)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select source grid multiple checkbox')
            return is_selected

    def get_vendor_source_grid_row_details(self):
        """
        Returning get vendor source grid row details
        Implementing logging for get vendor source grid row details functionality
        :return: vendor_grid_row_data
        """
        try:
            self.logger.info('Start: get vendor source grid row details')
            return self._business_admin_page.get_vendor_source_grid_row_details()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get vendor source grid row details')

    def set_route_class(self, route_class, static_kendo=True):
        """
        Returning set route class
        Implementing logging for set route class functionality
        :param route_class:
        :param static_kendo:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set route class')
            if route_class != "":
                self._business_admin_page.set_route_class(route_class, static_kendo)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set route class')
            return is_set

    def select_source_policies_screen_checkboxes(self, label_name, check_status):
        """
        Returning select source policies screen checkboxes
        Implementing logging for select source policies screen checkboxes functionality
        :param label_name:
        :param check_status:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select bulk edit checkboxes')
            if check_status is True:
                self._business_admin_page.select_source_policies_screen_checkboxes(label_name)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select bulk edit checkboxes')
            return is_selected

    def set_reference_account_bulk_edit_number_plan(self, number_plan):
        """
        Returning set reference account bulk edit number plan
        Implementing logging for set reference account bulk edit number plan functionality
        :param number_plan:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set reference account bulk edit number plan')
            if number_plan != "":
                self._business_admin_page.set_reference_account_bulk_edit_number_plan(number_plan)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set reference account bulk edit number plan')
            return is_set

    def set_bulk_edit_route_class(self, route_class):
        """
        Returning set bulk edit route class
        Implementing logging for set bulk edit route class functionality
        :param route_class:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set bulk edit route class')
            if route_class != "":
                self._business_admin_page.set_bulk_edit_route_class(route_class)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set bulk edit route class')
            return is_set

    def set_bulk_edit_reference_pricing_policy(self, reference_pricing_policy):
        """
        Returning set bulk edit reference pricing policy
        Implementing logging for set bulk edit reference pricing policy functionality
        :param reference_pricing_policy:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set bulk edit reference pricing policy')
            if reference_pricing_policy != "":
                self._business_admin_page.set_bulk_edit_reference_pricing_policy(reference_pricing_policy)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set bulk edit reference pricing policy')
            return is_set

    def set_bulk_edit_az_min_selection_threshold(self, threshold):
        """
        Returning set bulk edit az min selection threshold
        Implementing logging for set bulk edit az min selection threshold functionality
        :param threshold:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set bulk edit az min selection threshold')
            if threshold != "":
                self._business_admin_page.set_bulk_edit_az_min_selection_threshold(threshold)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set bulk edit az min selection threshold')
            return is_set

    def check_bulk_edit_compound_rpl_checkbox(self, check):
        """
        Returning check bulk edit compound rpl checkbox
        Implementing logging for check bulk edit compound rpl checkbox functionality
        :param check:
        :return: True/False
        """
        is_checked = None
        try:
            self.logger.info('Start: check bulk edit compound rpl checkbox')
            if check is True:
                self._business_admin_page.check_bulk_edit_compound_rpl_checkbox()
            is_checked = True
        except WebDriverException as exp:
            is_checked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: check bulk edit compound rpl checkbox')
            return is_checked

    def is_source_policies_grid_compound_rpl_checkbox_checked(self, check, *source_list):
        """
        Returning source policies grid compound rpl checkbox status
        Implementing logging for is source policies grid compound rpl checkbox checked functionality
        :param check:
        :param source_list:
        :return: True/False
        """
        is_checked = True
        try:
            self.logger.info('Start: is source policies grid compound rpl checkbox checked')
            if check is True:
                is_checked = self._business_admin_page.is_source_policies_grid_compound_rpl_checkbox_checked(source_list)
        except WebDriverException as exp:
            is_checked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is source policies grid compound rpl checkbox checked')
            return is_checked

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
                self._business_admin_page.set_note(note)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set note')
            return is_set

    def get_switch_grid_row_details(self):
        """
        Returning get switch grid row details
        Implementing logging for get switch grid row details functionality
        :return: switch_grid_row_data
        """
        try:
            self.logger.info('Start: get switch grid row details')
            return self._business_admin_page.get_switch_grid_row_details()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get switch grid row details')

    def get_reference_account_grid_row_details(self):
        """
        Returning get reference account grid row details
        Implementing logging for get reference account grid row details functionality
        :return: reference_account_grid_row_data
        """
        try:
            self.logger.info('Start: get reference account grid row details')
            return self._business_admin_page.get_reference_account_grid_row_details()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get reference account grid row details')

    def get_target_buy_list_grid_row_details(self):
        """
        Returning get target buy list grid row details
        Implementing logging for get target buy list grid row details functionality
        :return: target_buy_list_grid_row_data
        """
        try:
            self.logger.info('Start: get target buy list grid row details')
            return self._business_admin_page.get_target_buy_list_grid_row_details()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get target buy list grid row details')

    def is_grid_checkbox_checked(self, column_name, checkbox_status):
        """
        Returning grid checkbox checked status
        Implementing logging for is grid checkbox checked functionality
        :param column_name:
        :param checkbox_status:
        :return: True/False
        """
        try:
            self.logger.info('Start: is grid checkbox checked')
            return self._business_admin_page.is_grid_checkbox_checked(column_name, checkbox_status)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is grid checkbox checked')

    def get_price_cost_basis_grid_row_details(self):
        """
        Returning get price cost basis grid row details
        Implementing logging for get price cost basis grid row details functionality
        :return: price_cost_basis_grid_row_data
        """
        try:
            self.logger.info('Start: get price cost basis grid row details')
            return self._business_admin_page.get_price_cost_basis_grid_row_details()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get price cost basis grid row details')

    def get_origin_reference_price_list_grid_row_details(self):
        """
        Returning get origin reference price list grid row details
        Implementing logging for get origin reference price list grid row details functionality
        :return: origin_reference_price_list_grid_row_data
        """
        try:
            self.logger.info('Start: get origin reference price list grid row details')
            return self._business_admin_page.get_origin_reference_price_list_grid_row_details()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get origin reference price list grid row details')

    def get_quality_of_service_grid_row_details(self):
        """
        Returning get quality of service grid row details
        Implementing logging for get quality of service grid row details functionality
        :return: quality_of_service_grid_row_data
        """
        try:
            self.logger.info('Start: get quality of service grid row details')
            return self._business_admin_page.get_quality_of_service_grid_row_details()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get quality of service grid row details')

    def get_reference_pricing_policy_grid_row_details(self):
        """
        Returning get reference pricing policy grid row details
        Implementing logging for get reference pricing policy grid row details functionality
        :return: reference_pricing_policy_grid_row_data
        """
        try:
            self.logger.info('Start: get reference pricing policy grid row details')
            return self._business_admin_page.get_reference_pricing_policy_grid_row_details()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get reference pricing policy grid row details')

    def set_reference_pricing_policy(self, reference_pricing_policy):
        """
        Returning set reference pricing policy
        Implementing logging for set reference pricing policy functionality
        :param reference_pricing_policy:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set reference pricing policy')
            self._business_admin_page.set_reference_pricing_policy(reference_pricing_policy)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set reference pricing policy')
            return is_set

    def set_az_min_selection_threshold(self, threshold):
        """
        Returning set az min selection threshold
        Implementing logging for set az min selection threshold functionality
        :param threshold:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set az min selection threshold')
            if threshold != "":
                self._business_admin_page.set_az_min_selection_threshold(threshold)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set az min selection threshold')
            return is_set

    def get_reference_price_list_grid_row_details(self):
        """
        Returning get reference price list grid row details
        Implementing logging for get reference price list grid row details functionality
        :return: reference_price_list_grid_row_data
        """
        try:
            self.logger.info('Start: get reference price list grid row details')
            return self._business_admin_page.get_reference_price_list_grid_row_details()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get reference price list grid row details')

    def expand_groups_and_categories_menu(self):
        """
        Returning expand groups and categories menu
        Implementing logging for expand groups and categories menu functionality
        :return: True/False
        """
        is_expanded = None
        try:
            self.logger.info('Start: expand groups and categories menu')
            self._business_admin_page.expand_groups_and_categories_menu()
            is_expanded = True
        except WebDriverException as exp:
            is_expanded = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: expand groups and categories menu')
            return is_expanded

    def click_categories_submenu(self):
        """
        Returning click categories submenu
        Implementing logging for click categories submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click categories submenu')
            self._business_admin_page.click_categories_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click categories submenu')
            return is_clicked

    def click_categories_grid_inline_action_button(self, row_identifier_text):
        """
        Returning click categories grid inline action button
        Implementing logging for click categories grid inline action button functionality
        :param row_identifier_text:
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click categories grid inline action button')
            self._business_admin_page.click_categories_grid_inline_action_button(row_identifier_text)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click categories grid inline action button')
            return is_clicked

    def move_countries_to_destination(self, *country_list):
        """
        Returning move available countries to destination
        Implementing logging for move available countries to destination functionality
        :param country_list:
        :return: True/False
        """
        is_moved = None
        try:
            self.logger.info('Start: move available countries to destination')
            self._business_admin_page.move_countries_to_destination(country_list)
            is_moved = True
        except WebDriverException as exp:
            is_moved = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: move available countries to destination')
            return is_moved

    def reassign_countries_to_source(self):
        """
        Returning reassign countries to source
        Implementing logging for reassign countries to source functionality
        :return: True/False
        """
        is_moved = None
        try:
            self.logger.info('Start: reassign countries to source')
            self._business_admin_page.reassign_countries_to_source()
            is_moved = True
        except WebDriverException as exp:
            is_moved = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: reassign countries to source')
            return is_moved

    def click_edit_category_save_button(self):
        """
        Returning click edit category save button
        Implementing logging for click edit category save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click edit category save button')
            self._business_admin_page.click_edit_category_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click edit category save button')
            return is_clicked

    def set_category_scope_for_search(self, *category_scope):
        """
        Returning set category scope for search
        Implementing logging for set category scope for search functionality
        :param category_scope:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set category scope for search')
            self._business_admin_page.set_category_scope_for_search(category_scope)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set category scope for search')
            return is_set

    def click_categories_search_button(self):
        """
        Returning click categories search button
        Implementing logging for click categories search button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click categories search button')
            self._business_admin_page.click_categories_search_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click categories search button')
            return is_clicked

    def get_assigned_countries_list(self):
        """
        Returning get assigned countries list
        Implementing logging for get assigned countries list functionality
        :return: assigned_countries_list
        """
        try:
            self.logger.info('Start: get assigned countries list')
            return self._business_admin_page.get_assigned_countries_list()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get assigned countries list')

    def is_all_countries_moved_to_available(self):
        """
        Returning is all countries moved to available
        Implementing logging for is all countries moved to available functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is all countries moved to available')
            return self._business_admin_page.is_all_countries_moved_to_available()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is all countries moved to available')

    def click_edit_category_cancel_button(self):
        """
        Returning click edit category cancel button
        Implementing logging for click edit category cancel button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click edit category cancel button')
            self._business_admin_page.click_edit_category_cancel_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click edit category cancel button')
            return is_clicked

    def click_country_submenu(self):
        """
        Returning click country submenu
        Implementing logging for click country submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click country submenu')
            self._business_admin_page.click_country_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click country submenu')
            return is_clicked

    def click_country_groups_button(self):
        """
        Returning click country groups button
        Implementing logging for click country groups button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click country groups button')
            self._business_admin_page.click_country_groups_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click country groups button')
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
            self._business_admin_page.click_create_country_group_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click create country group button')
            return is_clicked

    def set_country_group_scope(self, dropdown_item):
        """
        Returning set country group scope
        Implementing logging for set country group scope functionality
        :param dropdown_item:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set country group scope')
            if dropdown_item != "":
                self._business_admin_page.set_country_group_scope(dropdown_item)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set country group scope')
            return is_set

    def set_country_group(self, country_group_prefix, country_group=""):
        """
        Returning set country group
        Implementing logging for set country group functionality
        :param country_group_prefix:
        :param country_group:
        :return: country_group_name
        """
        country_group_name = None
        try:
            self.logger.info('Start: set country group')
            country_group_name = self._business_admin_page.set_country_group(country_group_prefix, country_group)
        except WebDriverException as exp:
            country_group_name = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set country group')
            return country_group_name

    def move_available_countries_to_destination(self):
        """
        Returning move available countries to destination
        Implementing move available countries to destination functionality
        :return:
        """
        is_moved = None
        try:
            self.logger.info('Start: move available countries to destination')
            self._business_admin_page.move_available_countries_to_destination()
            is_moved = True
        except WebDriverException as exp:
            is_moved = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: move available countries to destination')
            return is_moved

    def click_save_country_group(self):
        """
        Returning click save country group
        Implementing logging for click save country group functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click save country group')
            self._business_admin_page.click_save_country_group()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click save country group')
            return is_clicked

    def select_country_group(self, *country_group):
        """
        Returning select country group
        Implementing logging for select country group functionality
        :param country_group:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select country group')
            self._business_admin_page.select_country_group(country_group)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select country group')
            return is_selected

    def close_country_group_tab(self):
        """
        Returning close country group tab
        Implementing logging for close country group tab functionality
        :return: True/False
        """
        is_closed = None
        try:
            self.logger.info('Start: close country group tab')
            self._business_admin_page.close_country_group_tab()
            is_closed = True
        except WebDriverException as exp:
            is_closed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: close country group tab')
            return is_closed

    def click_country_group_search_button(self):
        """
        Returning click country group search button
        Implementing logging for click country group search button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click country group search button')
            self._business_admin_page.click_country_group_search_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click country group search button')
            return is_clicked

    def get_country_group_grid_row_details(self):
        """
        Returning get country group grid row details
        Implementing logging for get country group grid row details functionality
        :return: country group grid row details
        """
        try:
            self.logger.info('Start: get country group grid row details')
            return self._business_admin_page.get_country_group_grid_row_details()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get country group grid row details')

    def click_country_group_grid_inline_action_button(self, country_group):
        """
        Returning click country group grid inline action button
        Implementing logging for country group grid inline action button functionality
        :param country_group:
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click country group grid inline action button')
            self._business_admin_page.click_country_group_grid_inline_action_button(country_group)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click country group grid inline action button')
            return is_clicked

    def select_country_group_grid_inline_action_item(self, item_name):
        """
        Returning select country group grid inline action item
        Implementing logging for select country group grid inline action item functionality
        :param item_name: inline item
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select country group grid inline action item')
            self._business_admin_page.select_country_group_grid_inline_action_item(item_name)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select country group grid inline action item')
            return is_selected

    def select_created_country_group_checkbox(self, country_group):
        """
        Returning select created country group checkbox
        Implementing logging for select created created country checkbox functionality
        :param country_group:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select created country group checkbox')
            self._business_admin_page.select_created_country_group_checkbox(country_group)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select created country group checkbox')
            return is_selected

    def click_country_group_delete_button(self):
        """
        Returning click country group delete button
        Implementing logging for click country group delete button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click country group delete button')
            self._business_admin_page.click_country_group_delete_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click country group delete button')
            return is_clicked

    def click_regions_button(self):
        """
        Returning click regions button
        Implementing logging for click regions button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click regions button')
            self._business_admin_page.click_regions_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click regions button')
            return is_clicked

    def click_new_region_button(self):
        """
        Returning click new region button
        Implementing logging for click new region button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click new region button')
            self._business_admin_page.click_new_region_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click new region button')
            return is_clicked

    def set_value_in_regions_grid_first_row_column(self, column_name, column_value):
        """
        Returning set value in regions grid first row column
        Implementing logging for set value in regions grid first row column functionality
        :param column_name:
        :param column_value:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set value in regions grid first row column')
            self._business_admin_page.set_value_in_regions_grid_first_row_column(column_name, column_value)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set value in regions grid first row column')
            return is_set

    def select_regions_grid_row_checkbox(self, row_identifier_text):
        """
        Returning select regions grid row checkbox
        Implementing logging for select regions grid row checkbox functionality
        :param row_identifier_text:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select regions grid row checkbox')
            self._business_admin_page.select_regions_grid_row_checkbox(row_identifier_text)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select regions grid row checkbox')
            return is_selected

    def click_regions_save_changes_button(self):
        """
        Returning click regions save changes button
        Implementing logging for click regions save changes button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click regions save changes button')
            self._business_admin_page.click_regions_save_changes_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click regions save changes button')
            return is_clicked

    def set_region(self, *region_list):
        """
        Returning set region
        Implementing logging for set region functionality
        :param region_list:
        :return:
        """
        is_set = None
        try:
            self.logger.info('Start: set region')
            self._business_admin_page.set_region(region_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set region')
            return is_set

    def click_generic_search_button(self):
        """
        Returning click generic search button
        Implementing logging for click generic search button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click generic search button')
            self._business_admin_page.click_generic_search_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click generic search button')
            return is_clicked

    def click_delete_region_button(self):
        """
        Returning click delete region button
        Implementing logging for click delete region button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click delete region button')
            self._business_admin_page.click_delete_region_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click delete region button')
            return is_clicked

    def get_regions_grid_row_details(self):
        """
        Returning get regions grid row details
        Implementing logging for get regions grid row details functionality
        :return: regions grid row details
        """
        try:
            self.logger.info('Start: get regions grid row details')
            return self._business_admin_page.get_regions_grid_row_details()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get regions grid row details')

    def click_new_country_button(self):
        """
        Returning click new country button
        Implementing logging for click new country button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click new country button')
            self._business_admin_page.click_new_country_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click new country button')
            return is_clicked

    def set_new_country_region(self, region):
        """
        Returning set new country region
        Implementing logging for set new country region functionality
        :param region:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set new country region')
            self._business_admin_page.set_new_country_region(region)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set new country region')
            return is_set

    def set_new_country_country_type(self, country_type):
        """
        Returning set new country country type
        Implementing logging for set new country country type functionality
        :param country_type:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set new country country type')
            self._business_admin_page.set_new_country_country_type(country_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set new country country type')
            return is_set

    def set_new_country_buy_country_group(self, buy_country_group):
        """
        Returning set new country buy country group
        Implementing logging for set new country buy country group functionality
        :param buy_country_group:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set new country buy country group')
            self._business_admin_page.set_new_country_buy_country_group(buy_country_group)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set new country buy country group')
            return is_set

    def set_new_country_sell_country_group(self, sell_country_group):
        """
        Returning set new country sell country group
        Implementing logging for set new country sell country group functionality
        :param sell_country_group:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set new country sell country group')
            self._business_admin_page.set_new_country_sell_country_group(sell_country_group)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set new country sell country group')
            return is_set

    def set_new_country_country_name(self, country_name_prefix, country_name):
        """
        Returning set new country country name
        Implementing logging for set new country country name functionality
        :param country_name_prefix:
        :param country_name:
        :return: full_country_name
        """
        full_country_name = None
        try:
            self.logger.info('Start: set new country country name')
            full_country_name = self._business_admin_page.set_new_country_country_name(country_name_prefix, country_name)
        except WebDriverException as exp:
            full_country_name = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set new country country name')
            return full_country_name

    def set_new_country_country_abbreviation(self, country_abbreviation_prefix):
        """
        Returning set new country country abbreviation
        Implementing logging for set new country country abbreviation functionality
        :param country_abbreviation_prefix:
        :return: country_abbreviation
        """
        country_abbreviation = None
        try:
            self.logger.info('Start: set new country country abbreviation')
            country_abbreviation = self._business_admin_page.set_new_country_country_abbreviation(country_abbreviation_prefix)
        except WebDriverException as exp:
            country_abbreviation = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set new country country abbreviation')
            return country_abbreviation

    def set_new_country_country_code(self):
        """
        Returning set new country country code
        Implementing logging for set new country country code functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set new country country code')
            self._business_admin_page.set_new_country_country_code()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set new country country code')
            return is_set

    def set_new_country_mobile_country_code(self, existing_mcc=""):
        """
        Returning set new country mobile country code
        Implementing logging for set new country mobile country code functionality
        :param existing_mcc:
        :return: mobile_country_code
        """
        mobile_country_code = None
        try:
            self.logger.info('Start: set new country mobile country code')
            mobile_country_code = self._business_admin_page.set_new_country_mobile_country_code(existing_mcc)
        except WebDriverException as exp:
            mobile_country_code = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set new country mobile country code')
            return mobile_country_code

    def click_new_country_save_button(self):
        """
        Returning click new country save button
        Implementing logging for click new country save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click new country save button')
            self._business_admin_page.click_new_country_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click new country save button')
            return is_clicked

    def set_country(self, country_name):
        """
        Returning set country
        Implementing logging for set country functionality
        :param country_name:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set country')
            self._business_admin_page.set_country(country_name)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set country')
            return is_set

    def click_search_button(self):
        """
        Returning click search button
        Implementing logging for click search button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click search button')
            self._business_admin_page.click_search_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click search button')
            return is_clicked

    def get_countries_grid_row_details(self):
        """
        Returning get countries grid row details
        Implementing logging for get countries grid row details functionality
        :return: countries_grid_row_data
        """
        try:
            self.logger.info('Start: get countries grid row details')
            return self._business_admin_page.get_countries_grid_row_details()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get countries grid row details')

    def select_countries_grid_row_checkbox(self, unique_identifier):
        """
        Returning select countries grid row checkbox
        Implementing logging for select countries grid row checkbox functionality
        :param unique_identifier:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select countries grid row checkbox')
            self._business_admin_page.select_countries_grid_row_checkbox(unique_identifier)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select countries grid row checkbox')
            return is_selected

    def click_country_bulk_edit_button(self):
        """
        Returning click country bulk edit button
        Implementing logging for click country bulk edit button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click country bulk edit button')
            self._business_admin_page.click_country_bulk_edit_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click country bulk edit button')
            return is_clicked

    def set_bulk_edit_buy_country_group(self):
        """
        Returning set bulk edit buy country group
        Implementing logging for set bulk edit buy country group functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set bulk edit buy country group')
            self._business_admin_page.set_bulk_edit_buy_country_group()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set bulk edit buy country group')
            return is_set

    def set_bulk_edit_sell_country_group(self):
        """
        Returning set bulk edit sell country group
        Implementing logging for set bulk edit sell country group functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set bulk edit sell country group')
            self._business_admin_page.set_bulk_edit_sell_country_group()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set bulk edit sell country group')
            return is_set

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
            self._business_admin_page.grid_filter_details(column_name, filter_item_list)
            is_filtered = True
        except WebDriverException as exp:
            is_filtered = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: grid filter details')
            return is_filtered

    def click_new_category_button(self):
        """
        Returning click new category button
        Implementing logging for click new category button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click new category button')
            self._business_admin_page.click_new_category_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click new category button')
            return is_clicked

    def set_new_category_category_scope(self, category_scope):
        """
        Returning set new category category scope
        Implementing logging for set new category category scope functionality
        :param category_scope:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set new category category scope')
            self._business_admin_page.set_new_category_category_scope(category_scope)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set new category category scope')
            return is_set

    def set_new_category_category_type(self, category_type):
        """
        Returning set new category category type
        Implementing logging for set new category category type functionality
        :param category_type:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set new category category type')
            self._business_admin_page.set_new_category_category_type(category_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set new category category type')
            return is_set

    def set_category_name(self, category_name):
        """
        Returning set category name
        Implementing logging for set category name functionality
        :param category_name:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set category name')
            self._business_admin_page.set_category_name(category_name)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set category name')
            return is_set

    def set_category_abbreviation(self, category_abbreviation):
        """
        Returning set category abbreviation
        Implementing logging for set category abbreviation functionality
        :param category_abbreviation:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set category abbreviation')
            self._business_admin_page.set_category_abbreviation(category_abbreviation)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set category abbreviation')
            return is_set

    def click_new_category_save_button(self):
        """
        Returning click new category save button
        Implementing logging for click new category save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click new category save button')
            self._business_admin_page.click_new_category_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click new category save button')
            return is_clicked

    def set_category_scope(self, *category_scope_list):
        """
        Returning set category scope
        Implementing logging for set category scope functionality
        :param category_scope_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set category scope')
            self._business_admin_page.set_category_scope(category_scope_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set category scope')
            return is_set

    def set_category_type(self, *category_type_list):
        """
        Returning set category type
        Implementing logging for set category type functionality
        :param category_type_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set category type')
            self._business_admin_page.set_category_type(category_type_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set category type')
            return is_set

    def select_categories_grid_row_checkbox(self, unique_identifier):
        """
        Returning select categories grid row checkbox
        Implementing logging for select categories grid row checkbox functionality
        :param unique_identifier:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select categories grid row checkbox')
            self._business_admin_page.select_categories_grid_row_checkbox(unique_identifier)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select categories grid row checkbox')
            return is_selected

    def get_categories_grid_row_details(self):
        """
        Returning get categories grid row details
        Implementing logging for get categories grid row details functionality
        :return: categories_grid_row_data
        """
        try:
            self.logger.info('Start: get categories grid row details')
            return self._business_admin_page.get_categories_grid_row_details()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get categories grid row details')

    def click_categories_grid_delete_button(self):
        """
        Returning click categories grid delete button
        Implementing logging for click categories grid delete button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click categories grid delete button')
            self._business_admin_page.click_categories_grid_delete_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click categories grid delete button')
            return is_clicked

    def expand_currency_and_exchange_rates_menu(self):
        """
        Returning expand currency and exchange rates menu
        Implementing logging for expand currency and exchange rates menu functionality
        :return: True/False
        """
        is_expanded = None
        try:
            self.logger.info('Start: expand currency and exchange rates menu')
            self._business_admin_page.expand_currency_and_exchange_rates_menu()
            is_expanded = True
        except WebDriverException as exp:
            is_expanded = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: expand currency and exchange rates menu')
            return is_expanded

    def click_currency_and_exchange_rates_submenu(self):
        """
        Returning click currency and exchange rates submenu
        Implementing logging for click currency and exchange rates submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click currency and exchange rates submenu')
            self._business_admin_page.click_currency_and_exchange_rates_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click currency and exchange rates submenu')
            return is_clicked

    def click_new_exchange_rate_button(self):
        """
        Returning click new exchange rate button
        Implementing logging for click new exchange rate button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click new exchange rate button')
            self._business_admin_page.click_new_exchange_rate_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click new exchange rate button')
            return is_clicked

    def set_exchange_rate_types_for_search(self, *exchange_rate_type_list):
        """
        Returning set exchange rate types for search
        Implementing logging for set exchange rate types for search functionality
        :param exchange_rate_type_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set exchange rate types for search')
            self._business_admin_page.set_exchange_rate_types_for_search(exchange_rate_type_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set exchange rate types for search')
            return is_set

    def set_currency_for_search(self, *currency_list):
        """
        Returning set currency for search
        Implementing logging for set currency for search functionality
        :param currency_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set currency for search')
            self._business_admin_page.set_currency_for_search(currency_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set currency for search')
            return is_set

    def set_exchange_rate_type(self, exchange_rate_type):
        """
        Returning set exchange rate type
        Implementing logging for set exchange rate type functionality
        :param exchange_rate_type:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set exchange rate type')
            self._business_admin_page.set_exchange_rate_type(exchange_rate_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set exchange rate type')
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
            self._business_admin_page.set_currency(currency)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set currency')
            return is_set

    def set_exchange_rate(self, exchange_rate):
        """
        Returning set exchange rate
        Implementing logging for set exchange rate functionality
        :param exchange_rate:
        :return: set_exchange_rate
        """
        set_exchange_rate = None
        try:
            self.logger.info('Start: set exchange rate')
            set_exchange_rate = self._business_admin_page.set_exchange_rate(exchange_rate)
        except WebDriverException as exp:
            set_exchange_rate = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set exchange rate')
            return set_exchange_rate

    def set_exchange_rate_begin_date(self, begin_date):
        """
        Returning set exchange rate begin date
        Implementing logging for set exchange rate begin date functionality
        :param begin_date:
        :return: set_begin_date
        """
        set_begin_date = None
        try:
            self.logger.info('Start: set exchange rate begin date')
            set_begin_date = self._business_admin_page.set_exchange_rate_begin_date(begin_date)
        except WebDriverException as exp:
            set_begin_date = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set exchange rate begin date')
            return set_begin_date

    def click_add_exchange_rate_save_button(self):
        """
        Returning click add exchange rate save button
        Implementing logging for click add exchange rate save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click add exchange rate save button')
            self._business_admin_page.click_add_exchange_rate_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click add exchange rate save button')
            return is_clicked

    def get_exchange_rates_grid_row_details(self):
        """
        Returning get exchange rates grid row details
        Implementing logging for get exchange rates grid row details functionality
        :return: origin_sets_grid_row_data
        """
        try:
            self.logger.info('Start: get exchange rates grid row details')
            return self._business_admin_page.get_exchange_rates_grid_row_details()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get exchange rates grid row details')

    def click_exchange_rates_grid_inline_action_button(self, row_identifier_text):
        """
        Returning click exchange rates grid inline action button
        Implementing logging for click exchange rates grid inline action button functionality
        :param row_identifier_text:
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click exchange rates grid inline action button')
            self._business_admin_page.click_exchange_rates_grid_inline_action_button(row_identifier_text)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click exchange rates grid inline action button')
            return is_clicked

    def click_exchange_rate_delete_inline_item(self):
        """
        Returning click exchange rate delete inline item
        Implementing logging for click exchange rate delete inline item functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click exchange rate delete inline item')
            self._business_admin_page.click_exchange_rate_delete_inline_item()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click exchange rate delete inline item')
            return is_clicked

    def expand_routing_menu(self):
        """
        Returning expand routing menu
        Implementing logging for expand routing menu functionality
        :return: True/False
        """
        is_expanded = None
        try:
            self.logger.info('Start: expand routing menu')
            self._business_admin_page.expand_routing_menu()
            is_expanded = True
        except WebDriverException as exp:
            is_expanded = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: expand routing menu')
            return is_expanded

    def click_route_class_submenu(self):
        """
        Returning click route class submenu
        Implementing logging for click route class submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click route class submenu')
            self._business_admin_page.click_route_class_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click route class submenu')
            return is_clicked

    def get_route_class_grid_first_row_data(self):
        """
        Returning get route class grid first row data
        Implementing logging for get route class grid first row data functionality
        :return: True/False
        """
        is_stored = None
        try:
            self.logger.info('Start: get route class grid first row data')
            self._business_admin_page.get_route_class_grid_first_row_data()
            is_stored = True
        except WebDriverException as exp:
            is_stored = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get route class grid first row data')
            return is_stored

    def set_route_class_name(self, route_class_name_prefix):
        """
        Returning set route class name
        Implementing logging for set route class name functionality
        :param route_class_name_prefix:
        :return: route_class_name
        """
        route_class_name = None
        try:
            self.logger.info('Start: set route class name')
            route_class_name = self._business_admin_page.set_route_class_name(route_class_name_prefix)
        except WebDriverException as exp:
            route_class_name = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set route class name')
            return route_class_name

    def set_route_class_abbreviation(self, route_class_abbreviation_prefix):
        """
        Returning set route class abbreviation
        Implementing logging for set route class abbreviation functionality
        :param route_class_abbreviation_prefix:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set route class abbreviation')
            self._business_admin_page.set_route_class_abbreviation(route_class_abbreviation_prefix)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set route class abbreviation')
            return is_set

    def set_target_fulfillment_order(self, duplicate):
        """
        Returning set target fulfillment order
        Implementing logging for set target fulfillment order functionality
        :param duplicate:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set target fulfillment order')
            self._business_admin_page.set_target_fulfillment_order(duplicate)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set target fulfillment order')
            return is_set

    def set_capacity_saturation_order(self, duplicate):
        """
        Returning set capacity saturation order
        Implementing logging for set capacity saturation order functionality
        :param duplicate:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set capacity saturation order')
            self._business_admin_page.set_capacity_saturation_order(duplicate)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set capacity saturation order')
            return is_set

    def set_minimum_direct_percent(self, value):
        """
        Returning set minimum direct percent
        Implementing logging for set minimum direct percent functionality
        :param value:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set minimum direct percent')
            self._business_admin_page.set_minimum_direct_percent(value)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set minimum direct percent')
            return is_set

    def click_add_edit_route_class_save_button(self, field_label):
        """
        Returning click add edit route class save button
        Implementing logging for click add edit route class save button functionality
        :param field_label:
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click add edit route class save button')
            self._business_admin_page.click_add_edit_route_class_save_button(field_label)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click add edit route class save button')
            return is_clicked

    def select_auto_suggest_checkbox(self, selection_status):
        """
        Returning select auto suggest checkbox
        Implementing logging for select auto suggest checkbox functionality
        :param selection_status:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select auto suggest checkbox')
            if selection_status is True:
                self._business_admin_page.select_auto_suggest_checkbox()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select auto suggest checkbox')
            return is_selected

    def is_auto_suggested_value_field_disabled(self, field_label):
        """
        Returning is auto suggested value field disabled
        Implementing logging for is auto suggested value field disabled functionality
        :param field_label:
        :return: True/False
        """
        try:
            self.logger.info('Start: is auto suggested value field disabled')
            return self._business_admin_page.is_auto_suggested_value_field_disabled(field_label)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is auto suggested value field disabled')

    def click_add_route_class_button(self):
        """
        Returning click add route class button
        Implementing logging for click add route class button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click add route class button')
            self._business_admin_page.click_add_route_class_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click add route class button')
            return is_clicked

    def click_add_edit_route_class_cancel_button(self):
        """
        Returning click add edit route class cancel button
        Implementing logging for click add edit route class cancel button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click add edit route class cancel button')
            self._business_admin_page.click_add_edit_route_class_cancel_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click add edit route class cancel button')
            return is_clicked

    def get_auto_suggested_value(self, field_label):
        """
        Returning get auto suggested value
        Implementing logging for get auto suggested value functionality
        :param field_label:
        :return: auto_suggested_value
        """
        try:
            self.logger.info('Start: get auto suggested value')
            return self._business_admin_page.get_auto_suggested_value(field_label)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get auto suggested value')

    def set_aep_distribution_group(self, dropdown_item):
        """
        Returning set aep distribution group
        Implementing logging for set aep distribution group functionality
        :param dropdown_item:
        :return:
        """
        is_set = None
        try:
            self.logger.info('Start: set aep distribution group')
            if dropdown_item != "":
                self._business_admin_page.set_aep_distribution_group(dropdown_item)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set aep distribution group')
            return is_set

    def select_selected_for_routing_checkbox(self, selection_status):
        """
        Returning select selected for routing checkbox
        Implementing logging for select selected for routing checkbox functionality
        :param selection_status:
        :return:
        """
        is_selected = None
        try:
            self.logger.info('Start: select selected for routing checkbox')
            if selection_status is True:
                self._business_admin_page.select_selected_for_routing_checkbox()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select selected for routing checkbox')
            return is_selected

    def select_cli_guarantee_checkbox(self, selection_status):
        """
        Returning select cli guarantee checkbox
        Implementing logging for select cli guarantee checkbox functionality
        :param selection_status:
        :return:
        """
        is_selected = None
        try:
            self.logger.info('Start: select cli guarantee checkbox')
            if selection_status is True:
                self._business_admin_page.select_cli_guarantee_checkbox()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select cli guarantee checkbox')
            return is_selected

    def set_cdr_route_class(self, cdr_route_class):
        """
        Returning set cdr route class
        Implementing logging for set cdr route class functionality
        :param cdr_route_class:
        :return:
        """
        is_set = None
        try:
            self.logger.info('Start: set cdr route class')
            if cdr_route_class != "":
                self._business_admin_page.set_cdr_route_class(cdr_route_class)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set cdr route class')
            return is_set

    def get_new_route_class_data(self):
        """
        Returning get new route class data
        Implementing logging for get new route class data functionality
        :return: new_route_class_data
        """
        try:
            self.logger.info('Start: get new route class data')
            return self._business_admin_page.get_new_route_class_data()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get new route class data')

    def get_route_class_grid_row_data(self):
        """
        Returning get route class grid row data
        Implementing logging for get route class grid row data functionality
        :return: route_class_grid_row_data
        """
        try:
            self.logger.info('Start: get route class grid row data')
            return self._business_admin_page.get_route_class_grid_row_data()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get route class grid row data')

    def filter_route_class_grid(self, column_name, column_value):
        """
        Returning filter route class grid
        Implementing logging for filter route class grid functionality
        :param column_name:
        :param column_value:
        :return:
        """
        is_filtered = None
        try:
            self.logger.info('Start: filter route class grid')
            self._business_admin_page.filter_route_class_grid(column_name, column_value)
            is_filtered = True
        except WebDriverException as exp:
            is_filtered = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: filter route class grid')
            return is_filtered

    def click_route_class_grid_inline_action_button(self, route_class):
        """
        Returning click route class grid inline action button
        Implementing logging for click route class grid inline action button functionality
        :param route_class:
        :return:
        """
        is_clicked = None
        try:
            self.logger.info('Start: click route class grid inline action button')
            self._business_admin_page.click_route_class_grid_inline_action_button(route_class)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click route class grid inline action button')
            return is_clicked

    def select_route_class_inline_action_item(self, item_name):
        """
        Returning select item from route class inline action
        Implementing logging for select item from route class inline action functionality
        :param item_name: inline item
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select item from route class inline action')
            self._business_admin_page.select_inline_action_item(item_name)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select item from route class inline action')
            return is_selected

    def clear_all_table_filters(self, column_name):
        """
        Returning clear all table filters
        Implementing logging for clear all table filters functionality
        :param column_name:
        :return: True/False
        """
        is_cleared = None
        try:
            self.logger.info('Start: clear all table filters')
            self._business_admin_page.clear_all_table_filters(column_name)
            is_cleared = True
        except WebDriverException as exp:
            is_cleared = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: clear all table filters')
            return is_cleared

    def click_network_codes_submenu(self):
        """
        Returning click network codes submenu
        Implementing logging for click network codes submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click network codes submenu')
            self._business_admin_page.click_network_codes_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click network codes submenu')
            return is_clicked

    def click_network_destinations_grid_first_row_inline_action_button(self):
        """
        Returning click network destinations grid first row inline action button
        Implementing logging for click network destinations grid first row inline action button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click network destinations grid first row inline action button')
            self._business_admin_page.click_network_destinations_grid_first_row_inline_action_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click network destinations grid first row inline action button')
            return is_clicked

    def click_add_network_code_button(self):
        """
        Returning click add network code button
        Implementing logging for click add network code button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click add network code button')
            self._business_admin_page.click_add_network_code_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click add network code button')
            return is_clicked

    def click_add_cdr_match_button(self):
        """
        Returning click add cdr match button
        Implementing logging for click add cdr match button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click add cdr match button')
            self._business_admin_page.click_add_cdr_match_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click add cdr match button')
            return is_clicked

    def set_network_code(self, network_code_prefix):
        """
        Returning set network code
        Implementing logging for set network code functionality
        :param network_code_prefix:
        :return: network_code
        """
        network_code = None
        try:
            self.logger.info('Start: set network code')
            network_code = self._business_admin_page.set_network_code(network_code_prefix)
        except WebDriverException as exp:
            network_code = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set network code')
            return network_code

    def set_network_code_begin_date(self, begin_date=""):
        """
        Returning set network code begin date
        Implementing logging for set network code begin date functionality
        :param begin_date:
        :return:
        """
        is_set = None
        try:
            self.logger.info('Start: set network code begin date')
            self._business_admin_page.set_network_code_begin_date(begin_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set network code begin date')
            return is_set

    def set_network_code_end_date(self, end_date=""):
        """
        Returning set network code end date
        Implementing logging for set network code end date functionality
        :param end_date:
        :return:
        """
        is_set = None
        try:
            self.logger.info('Start: set network code end date')
            self._business_admin_page.set_network_code_end_date(end_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set network code end date')
            return is_set

    def click_network_code_save_changes_button(self):
        """
        Returning click network code save changes button
        Implementing logging for click network code save changes button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click network code save changes button')
            self._business_admin_page.click_network_code_save_changes_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click network code save changes button')
            return is_clicked

    def click_network_codes_grid_inline_action_button(self, row_identifier_text):
        """
        Returning click network codes grid inline action button
        Implementing logging for click network codes grid inline action button functionality
        :param row_identifier_text:
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click network codes grid inline action button')
            self._business_admin_page.click_network_codes_grid_inline_action_button(row_identifier_text)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click network codes grid inline action button')
            return is_clicked

    def select_network_code_delete_inline_item(self):
        """
        Returning select network code delete inline item
        Implementing logging for select network code delete inline item functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select network code delete inline item')
            self._business_admin_page.select_network_code_delete_inline_item()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select network code delete inline item')
            return is_selected

    def set_cdr_match(self, cdr_match):
        """
        Returning set cdr match
        Implementing logging for set cdr match functionality
        :param cdr_match:
        :return:
        """
        is_set = None
        try:
            self.logger.info('Start: set cdr match')
            self._business_admin_page.set_cdr_match(cdr_match)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set cdr match')
            return is_set

    def set_cdr_match_begin_date(self, begin_date=""):
        """
        Returning set cdr match begin date
        Implementing logging for set cdr match begin date functionality
        :param begin_date:
        :return:
        """
        is_set = None
        try:
            self.logger.info('Start: set cdr match begin date')
            self._business_admin_page.set_cdr_match_begin_date(begin_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set cdr match begin date')
            return is_set

    def set_cdr_match_end_date(self, end_date=""):
        """
        Returning set cdr match end date
        Implementing logging for set cdr match end date functionality
        :param end_date:
        :return:
        """
        is_set = None
        try:
            self.logger.info('Start: set cdr match end date')
            self._business_admin_page.set_cdr_match_end_date(end_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set cdr match end date')
            return is_set

    def click_cdr_match_save_changes_button(self):
        """
        Returning click cdr match save changes button
        Implementing logging for click cdr match save changes button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click cdr match save changes button')
            self._business_admin_page.click_cdr_match_save_changes_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click cdr match save changes button')
            return is_clicked

    def click_cdr_matches_grid_inline_action_button(self, row_identifier_text):
        """
        Returning click cdr matches grid inline action button
        Implementing logging for click cdr matches grid inline action button functionality
        :param row_identifier_text:
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click cdr matches grid inline action button')
            self._business_admin_page.click_cdr_matches_grid_inline_action_button(row_identifier_text)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click cdr matches grid inline action button')
            return is_clicked

    def select_cdr_match_delete_inline_item(self):
        """
        Returning select cdr match delete inline item
        Implementing logging for select cdr match delete inline item functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select cdr match delete inline item')
            self._business_admin_page.select_cdr_match_delete_inline_item()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select cdr match delete inline item')
            return is_selected

    def close_current_pop_up(self, popup_name):
        """
        Returning close current pop up
        Implementing logging for close current pop up functionality
        :param popup_name:
        :return: True/False
        """
        is_closed = None
        try:
            self.logger.info('Start: close current pop up')
            self._business_admin_page.close_current_pop_up(popup_name)
            is_closed = True
        except WebDriverException as exp:
            is_closed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: close current pop up')
            return is_closed

    def click_save_changes_button_without_confirmation(self):
        """
        Returning click save changes button without confirmation
        Implementing logging for click save changes button without confirmation functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click save changes button without confirmation')
            self._business_admin_page.click_save_changes_button_without_confirmation()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click save changes button without confirmation')
            return is_clicked

    def click_add_network_destination_button(self):
        """
        Returning click add network destination button
        Implementing logging for click add network destination button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click add network destination button')
            self._business_admin_page.click_add_network_destination_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click add network destination button')
            return is_clicked

    def set_network_destination(self, network_destination_prefix):
        """
        Returning set network destination
        Implementing logging for set network destination functionality
        :param network_destination_prefix:
        :return: network_destination
        """
        network_destination = None
        try:
            self.logger.info('Start: set network destination')
            network_destination = self._business_admin_page.set_network_destination(network_destination_prefix)
        except WebDriverException as exp:
            network_destination = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set network destination')
            return network_destination

    def set_destination_abbreviation(self, destination_abbreviation):
        """
        Returning set destination abbreviation
        Implementing logging for set destination abbreviation functionality
        :param destination_abbreviation:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set destination abbreviation')
            self._business_admin_page.set_destination_abbreviation(destination_abbreviation)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set destination abbreviation')
            return is_set

    def set_network_destination_country(self, country):
        """
        Returning set network destination country
        Implementing logging for set network destination country functionality
        :param country:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set network destination country')
            self._business_admin_page.set_network_destination_country(country)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set network destination country')
            return is_set

    def set_call_char(self, call_char):
        """
        Returning set call char
        Implementing logging for set call char functionality
        :param call_char:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set call char')
            self._business_admin_page.set_call_char(call_char)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set call char')
            return is_set

    def set_network_destination_begin_date(self, begin_date=""):
        """
        Returning set network destination begin date
        Implementing logging for set network destination begin date functionality
        :param begin_date:
        :return: set_begin_date
        """
        set_begin_date = None
        try:
            self.logger.info('Start: set network destination begin date')
            set_begin_date = self._business_admin_page.set_network_destination_begin_date(begin_date)
        except WebDriverException as exp:
            set_begin_date = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set network destination begin date')
            return set_begin_date

    def set_network_destination_end_date(self, end_date=""):
        """
        Returning set network destination end date
        Implementing logging for set network destination end date functionality
        :param end_date:
        :return: set_end_date
        """
        set_end_date = None
        try:
            self.logger.info('Start: set network destination end date')
            set_end_date = self._business_admin_page.set_network_destination_end_date(end_date)
        except WebDriverException as exp:
            set_end_date = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set network destination end date')
            return set_end_date

    def set_internal_code(self, internal_code):
        """
        Returning set internal code
        Implementing logging for set internal code functionality
        :param internal_code:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set internal code')
            if internal_code != "":
                self._business_admin_page.set_internal_code(internal_code)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set internal code')
            return is_set

    def set_external_code(self, external_code):
        """
        Returning set external code
        Implementing logging for set external code functionality
        :param external_code:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set external code')
            if external_code != "":
                self._business_admin_page.set_external_code(external_code)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set external code')
            return is_set

    def get_network_destinations_grid_first_row_details(self):
        """
        Returning get network destinations grid first row details
        Implementing logging for get network destinations grid first row details functionality
        :return: network_destinations_grid_row_data
        """
        try:
            self.logger.info('Start: get network destinations grid first row details')
            return self._business_admin_page.get_network_destinations_grid_first_row_details()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get network destinations grid first row details')

    def add_duplicate_network_destination(self):
        """
        Returning add duplicate network destination
        Implementing logging for add duplicate network destination functionality
        :return: True/False
        """
        is_added = None
        try:
            self.logger.info('Start: add duplicate network destination')
            self._business_admin_page.add_duplicate_network_destination()
            is_added = True
        except WebDriverException as exp:
            is_added = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: add duplicate network destination')
            return is_added

    def click_add_network_destination_save_button(self):
        """
        Returning click add network destination save button
        Implementing logging for click add network destination save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click add network destination save button')
            self._business_admin_page.click_add_network_destination_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click add network destination save button')
            return is_clicked

    def set_country_for_search(self, *country_list):
        """
        Returning set country for search
        Implementing logging for set country for search functionality
        :param country_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set country for search')
            self._business_admin_page.set_country_for_search(country_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set country for search')
            return is_set

    def set_network_destination_for_search(self, *network_destination_list):
        """
        Returning set network destination for search
        Implementing logging for set network destination for search functionality
        :param network_destination_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set network destination for search')
            self._business_admin_page.set_network_destination_for_search(network_destination_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set network destination for search')
            return is_set

    def set_value_in_network_destinations_grid_first_row_column(self, column_name, column_value):
        """
        Returning set value in network destinations grid first row column
        Implementing logging for set value in network destinations grid first row column functionality
        :param column_name:
        :param column_value:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set value in network destinations grid first row column')
            if column_value != "":
                self._business_admin_page.set_value_in_network_destinations_grid_first_row_column(column_name, column_value)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set value in network destinations grid first row column')
            return is_set

    def click_route_class_export_to_excel_button(self):
        """
        Returning click route class export to excel button
        Implementing logging for click route class export to excel button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click route class export to excel button')
            self._business_admin_page.click_route_class_export_to_excel_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click route class export to excel button')
            return is_clicked

    def compare_number_plan_uploads_grid_row_count_after_upload(self):
        """
        Returning compare number plan uploads grid row count after upload
        Implementing logging for compare number plan uploads grid row count after upload functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: compare number plan uploads grid row count after upload')
            return self._business_admin_page.compare_number_plan_uploads_grid_row_count_after_upload()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare number plan uploads grid row count after upload')

    def is_countries_grid_total_number_of_records_returned(self):
        """
        Returning countries grid total number of records returning status
        Implementing logging for is countries grid total number of records returned functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is countries grid total number of records returned')
            return self._business_admin_page.is_countries_grid_total_number_of_records_returned()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is countries grid total number of records returned')

    def is_source_policies_grid_total_number_of_records_returned(self):
        """
        Returning source policies grid total number of records returning status
        Implementing logging for is source policies grid total number of records returned functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is source policies grid total number of records returned')
            return self._business_admin_page.is_source_policies_grid_total_number_of_records_returned()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is source policies grid total number of records returned')

    def expand_rating_menu(self):
        """
        Returning expand rating menu
        Implementing logging for expand rating menu functionality
        :return: True/False
        """
        is_expanded = None
        try:
            self.logger.info('Start: expand rating menu')
            self._business_admin_page.expand_rating_menu()
            is_expanded = True
        except WebDriverException as exp:
            is_expanded = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: expand rating menu')
            return is_expanded

    def click_daylight_saving_zone_submenu(self):
        """
        Returning click daylight saving zone submenu
        Implementing logging for click daylight saving zone submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click daylight saving zone submenu')
            self._business_admin_page.click_daylight_saving_zone_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click daylight saving zone submenu')
            return is_clicked

    def click_bill_cycle_and_settlement_management_submenu(self):
        """
        Returning click bill cycle and settlement management submenu
        Implementing logging for click bill cycle and settlement management submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click bill cycle and settlement management submenu')
            self._business_admin_page.click_bill_cycle_and_settlement_management_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click bill cycle and settlement management submenu')
            return is_clicked

    def close_business_admin_window(self):
        """
        Returning close business admin window
        Implementing logging for close business admin window functionality
        :return: True/False
        """
        is_closed = None
        try:
            self.logger.info('Start: close business admin window')
            self._business_admin_page.close_browser()
            self._business_admin_page.switch_to_previous_window()
            self._business_admin_page.switch_to_default_content()
            is_closed = True
        except WebDriverException as exp:
            is_closed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: close business admin window')
            return is_closed

    def expand_bill_and_audit_menu(self):
        """
        Returning expand bill and audit menu
        Implementing logging for expand bill and audit menu functionality
        :return: True/False
        """
        is_expanded = None
        try:
            self.logger.info('Start: expand bill and audit menu')
            self._business_admin_page.expand_bill_and_audit_menu()
            is_expanded = True
        except WebDriverException as exp:
            is_expanded = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: expand bill and audit menu')
            return is_expanded

    def click_statement_numbering_templates_submenu(self):
        """
        Returning click statement numbering templates submenu
        Implementing logging for click statement numbering templates submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click statement numbering templates submenu')
            self._business_admin_page.click_statement_numbering_templates_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click statement numbering templates submenu')
            return is_clicked

    def click_categories_grid_first_row_inline_action_button(self):
        """
        Returning click categories grid first row inline action button
        Implementing logging for click categories grid first row inline action button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click categories grid first row inline action button')
            self._business_admin_page.click_categories_grid_first_row_inline_action_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click categories grid first row inline action button')
            return is_clicked

    def set_view_edit_category_type(self, category_type):
        """
        Returning set view edit category type
        Implementing logging for set view edit category type functionality
        :param category_type:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set view edit category type')
            self._business_admin_page.set_view_edit_category_type(category_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set view edit category type')
            return is_set

    def set_view_edit_category_number_plan_type(self, number_plan_type):
        """
        Returning set view edit category number plan type
        Implementing logging for set view edit category number plan type functionality
        :param number_plan_type:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set view edit category number plan type')
            self._business_admin_page.set_view_edit_category_number_plan_type(number_plan_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set view edit category number plan type')
            return is_set

    def set_view_edit_category_number_plan(self, number_plan):
        """
        Returning set view edit category number plan
        Implementing logging for set view edit category number plan functionality
        :param number_plan:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set view edit category number plan')
            self._business_admin_page.set_view_edit_category_number_plan(number_plan)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set view edit category number plan')
            return is_set

    def click_rating_method_submenu(self):
        """
        Returning click rating method submenu
        Implementing logging for click rating method submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click rating method submenu')
            self._business_admin_page.click_rating_method_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click rating method submenu')
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
                status = self._business_admin_page.validate_date_format(actual_date, expected_date_format)
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
                status = self._business_admin_page.validate_currency_format(actual_value, expected_locale)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: validate currency format')
            return status

    def get_country_grid_last_modified_date_column_value(self):
        """
        Returning get country grid last modified date column value
        Implementing logging for get country grid last modified date column value functionality
        :return: Last modified column value
        """
        try:
            self.logger.info('Start: get country grid last modified date column value')
            return self._business_admin_page.get_country_grid_last_modified_date_column_value()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get country grid last modified date column value')

    def get_country_group_management_grid_last_modified_date_column_value(self):
        """
        Returning get country group management grid last modified date column value
        Implementing logging for get country group management grid last modified date column value functionality
        :return: Last modified column value
        """
        try:
            self.logger.info('Start: get country group management grid last modified date column value')
            return self._business_admin_page.get_country_group_management_grid_last_modified_date_column_value()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get country group management grid last modified date column value')

    def select_business_admin_dashboard_tab(self):
        """
        Returning select business admin dashboard tab
        Implementing logging for select business admin dashboard tab functionality
        :return:
        """
        is_selected = None
        try:
            self.logger.info('Start: select business admin dashboard tab')
            self._business_admin_page.select_business_admin_dashboard_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select business admin dashboard tab')
            return is_selected

    def get_number_plan_grid_last_modified_date_column_value(self):
        """
        Returning get number plan grid last modified date column value
        Implementing logging for get number plan grid last modified date column value functionality
        :return: Last modified column value
        """
        try:
            self.logger.info('Start: get number plan grid last modified date column value')
            return self._business_admin_page.get_number_plan_grid_last_modified_date_column_value()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get number plan grid last modified date column value')

    def get_number_plan_uploads_from_date(self):
        """
        Returning get number plan uploads from date
        Implementing logging for get number plan uploads from date functionality
        :return: from date
        """
        try:
            self.logger.info('Start: get number plan uploads from date')
            return self._business_admin_page.get_number_plan_uploads_from_date()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get number plan uploads from date')

    def get_number_plan_uploads_to_date(self):
        """
        Returning get number plan uploads to date
        Implementing logging for get number plan uploads to date functionality
        :return: from date
        """
        try:
            self.logger.info('Start: get number plan uploads to date')
            return self._business_admin_page.get_number_plan_uploads_to_date()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get number plan uploads to date')

    def get_number_plan_uploads_grid_upload_date(self):
        """
        Returning get number plan uploads grid upload date
        Implementing logging for get number plan uploads to date functionality
        :return: upload date
        """
        try:
            self.logger.info('Start: get number plan uploads grid upload date')
            return self._business_admin_page.get_number_plan_uploads_grid_upload_date()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get number plan uploads grid upload date')

    def get_number_plan_uploads_grid_modified_date(self):
        """
        Returning get number plan uploads grid modified date
        Implementing logging for get number plan modified to date functionality
        :return: modified date
        """
        try:
            self.logger.info('Start: get number plan uploads grid modified date')
            return self._business_admin_page.get_number_plan_uploads_grid_modified_date()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get number plan uploads grid modified date')

    def get_network_codes_begin_date(self):
        """
        Returning get network codes begin date
        Implementing logging for get network codes begin date functionality
        :return: begin date
        """
        try:
            self.logger.info('Start: get network codes begin date')
            return self._business_admin_page.get_network_codes_begin_date()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get network codes begin date')

    def get_network_codes_grid_begin_date_column_value(self):
        """
        Returning get network codes grid begin date column value
        Implementing logging for get network codes grid begin date column value functionality
        :return: begin date column value
        """
        try:
            self.logger.info('Start: get network codes grid begin date column value')
            return self._business_admin_page.get_network_codes_grid_begin_date_column_value()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get network codes grid begin date column value')

    def get_network_codes_grid_modified_date_column_value(self):
        """
        Returning get network codes grid modified date column value
        Implementing logging for get network codes grid modified date column value functionality
        :return: modified date column value
        """
        try:
            self.logger.info('Start: get network codes grid modified date column value')
            return self._business_admin_page.get_network_codes_grid_modified_date_column_value()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get network codes grid modified date column value')

    def get_origin_set_management_select_date(self):
        """
        Returning get origin set management select date
        Implementing logging for get origin set management select date functionality
        :return: origin set management select date
        """
        try:
            self.logger.info('Start: get origin set management select date')
            return self._business_admin_page.get_origin_set_management_select_date()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get origin set management select date')

    def get_origin_set_management_grid_begin_date_column_value(self):
        """
        Returning get origin set management grid begin date column value
        Implementing logging for get origin set management grid begin date column value functionality
        :return: origin set management grid begin date column value
        """
        try:
            self.logger.info('Start: get origin set management grid begin date column value')
            return self._business_admin_page.get_origin_set_management_grid_begin_date_column_value()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get origin set management grid begin date column value')

    def get_origin_set_management_grid_modified_date_column_value(self):
        """
        Returning get origin set management grid modified date column value
        Implementing logging for get origin set management grid modified date column value functionality
        :return: origin set management grid modified date column value
        """
        try:
            self.logger.info('Start: get origin set management grid modified date column value')
            return self._business_admin_page.get_origin_set_management_grid_modified_date_column_value()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get origin set management grid modified date column value')

    def expand_company_menu(self):
        """
        Returning expand company menu
        Implementing logging for expand company menu functionality
        :return: True/False
        """
        is_expanded = None
        try:
            self.logger.info('Start: expand company menu')
            self._business_admin_page.expand_company_menu()
            is_expanded = True
        except WebDriverException as exp:
            is_expanded = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: expand company menu')
            return is_expanded

    def click_company_submenu(self):
        """
        Returning click company submenu
        Implementing logging for click company submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click company submenu')
            self._business_admin_page.click_company_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click company submenu')
            return is_clicked

    def get_company_grid_last_modified_column_value(self):
        """
        Returning get company grid last modified column value
        Implementing logging for get company grid last modified column value functionality
        :return: company grid last modified column value
        """
        try:
            self.logger.info('Start: get company grid last modified column value')
            return self._business_admin_page.get_company_grid_last_modified_column_value()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get company grid last modified column value')

    def get_currency_and_exchange_rates_begin_date(self):
        """
        Returning get currency and exchange rates begin date
        Implementing logging for get currency and exchange rates begin date functionality
        :return: currency and exchange rates begin date
        """
        try:
            self.logger.info('Start: get currency and exchange rates begin date')
            return self._business_admin_page.get_currency_and_exchange_rates_begin_date()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get currency and exchange rates begin date')

    def get_exchange_rate_column_value(self):
        """
        Returning get exchange rate column value
        Implementing logging for get exchange rate column value functionality
        :return: exchange rate column value
        """
        try:
            self.logger.info('Start: get exchange rate column value')
            return self._business_admin_page.get_exchange_rate_column_value()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get exchange rate column value')

    def get_exchange_rates_begin_date_column_value(self):
        """
        Returning get currency and exchange rates begin date column value
        Implementing logging for get currency and exchange rates begin date column value functionality
        :return: currency and exchange rates begin date column value
        """
        try:
            self.logger.info('Start: get currency and exchange rates begin date column value')
            return self._business_admin_page.get_exchange_rates_begin_date_column_value()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get currency and exchange rates begin date column value')

    def get_exchange_rates_last_modified_column_value(self):
        """
        Returning get currency and exchange rates last modified column value
        Implementing logging for get currency and exchange rates last modified column value functionality
        :return: currency and exchange rates last modified column value
        """
        try:
            self.logger.info('Start: get currency and exchange rates last modified column value')
            return self._business_admin_page.get_exchange_rates_last_modified_column_value()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get currency and exchange rates last modified column value')

    def click_currency_button(self):
        """
        Returning click currency button
        Implementing logging for click currency button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click currency button')
            self._business_admin_page.click_currency_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click currency button')
            return is_clicked

    def get_currency_grid_last_modified_column_value(self):
        """
        Returning get currency grid last modified column value
        Implementing logging for get currency grid last modified column value functionality
        :return: currency grid last modified column value
        """
        try:
            self.logger.info('Start: get currency grid last modified column value')
            return self._business_admin_page.get_currency_grid_last_modified_column_value()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get currency grid last modified column value')

    def get_categories_grid_modified_date(self):
        """
        Returning get categories grid modified date column value
        Implementing logging for get categories grid modified date column value functionality
        :return: modified date column value
        """
        try:
            self.logger.info('Start: get categories grid modified date column value')
            return self._business_admin_page.get_categories_grid_modified_date()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get categories grid modified date column value')

    def get_route_classes_minimum_direct_percent_column_value(self):
        """
        Returning get route classes minimum direct percent column value
        Implementing logging for get route classes minimum direct percent column value functionality
        :return: minimum direct percent column value
        """
        try:
            self.logger.info('Start: get route classes minimum direct percent column value')
            return self._business_admin_page.get_route_classes_minimum_direct_percent_column_value()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get route classes minimum direct percent column value')

    def get_source_and_policy_grid_modified_date_column_value(self):
        """
        Returning get source and policy grid modified date column value
        Implementing logging for get source and policy grid modified date column value functionality
        :return: modified date column value
        """
        try:
            self.logger.info('Start: get source and policy grid modified date column value')
            return self._business_admin_page.get_source_and_policy_grid_modified_date_column_value()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get source and policy grid modified date column value')

    def click_destination_submenu(self):
        """
        Returning click destination submenu
        Implementing logging for click destination submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click destination submenu')
            self._business_admin_page.click_destination_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click destination submenu')
            return is_clicked

    def get_origin_set_name(self):
        """
        Returning get origin set name
        Implementing logging for get origin set name functionality
        :return: rate plan name
        """
        try:
            self.logger.info('Start: get origin set name')
            return self._business_admin_page.get_origin_set_name()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get origin set name')

    def get_settlement_origin_name(self):
        """
        Returning get settlement origin name
        Implementing logging for get settlement origin name functionality
        :return: rate plan name
        """
        try:
            self.logger.info('Start: get settlement origin name')
            return self._business_admin_page.get_settlement_origin_name()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get settlement origin name')

    def set_rule_of_invalid_a(self, dropdown_item):
        """
        Returning set rule of invalid a
        Implementing logging for set rule of invalid a functionality
        :param dropdown_item:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set rule of invalid a')
            if dropdown_item != "":
                self._business_admin_page.set_rule_of_invalid_a(dropdown_item)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set rule of invalid a')
            return is_set

    def click_next_button(self):
        """
        Returning click next button
        Implementing logging for click next button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click next button')
            self._business_admin_page.click_next_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click next button')
            return is_clicked

    def click_new_csnp_button(self):
        """
        Returning click new csnp button
        Implementing logging for click new csnp button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click new csnp button')
            self._business_admin_page.click_new_csnp_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click new csnp button')
            return is_clicked

    def set_csnp_type(self, csnp_type):
        """
        Returning set csnp type
        Implementing logging for set csnp type functionality
        :param csnp_type:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set csnp type')
            self._business_admin_page.set_csnp_type(csnp_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set csnp type')
            return is_set

    def set_csnp_number_plan(self, csnp_number_plan_prefix):
        """
        Returning set csnp number plan
        Implementing logging for set csnp number plan functionality
        :param csnp_number_plan_prefix:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set csnp number plan')
            self._business_admin_page.set_csnp_number_plan(csnp_number_plan_prefix)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set csnp number plan')
            return is_set

    def get_csnp_number_plan(self):
        """
        Returning get csnp number plan
        Implementing logging for get csnp number plan functionality
        :return: csnp_number_plan
        """
        try:
            self.logger.info('Start: get csnp number plan')
            return self._business_admin_page.get_csnp_number_plan()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get csnp number plan')

    def set_csnp_number_plan_abbreviation(self, abbreviation_prefix):
        """
        Returning set csnp number plan abbreviation
        Implementing logging for set csnp number plan abbreviation functionality
        :param abbreviation_prefix:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set csnp number plan abbreviation')
            self._business_admin_page.set_csnp_number_plan_abbreviation(abbreviation_prefix)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set csnp number plan abbreviation')
            return is_set

    def set_services(self, *services_list):
        """
        Returning set services
        Implementing logging for set services functionality
        :param services_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set services')
            self._business_admin_page.set_services(services_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set services')
            return is_set

    def set_default_primary_blending_method(self, default_primary_blending_method):
        """
        Returning set default primary blending method
        Implementing logging for set default primary blending method functionality
        :param default_primary_blending_method:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set default primary blending method')
            self._business_admin_page.set_default_primary_blending_method(default_primary_blending_method)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set default primary blending method')
            return is_set

    def set_default_destination_type(self, default_destination_type):
        """
        Returning set default destination type
        Implementing logging for set default destination type functionality
        :param default_destination_type:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set default destination type')
            self._business_admin_page.set_default_destination_type(default_destination_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set default destination type')
            return is_set

    def set_default_call_char(self, default_call_char):
        """
        Returning set call char
        Implementing logging for set call char functionality
        :param default_call_char:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set call char')
            self._business_admin_page.set_default_call_char(default_call_char)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set call char')
            return is_set

    def set_default_rating_method(self, default_rating_method):
        """
        Returning set default rating method
        Implementing logging for set default rating method functionality
        :param default_rating_method:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set default rating method')
            self._business_admin_page.set_default_rating_method(default_rating_method)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set default rating method')
            return is_set

    def set_enter_min(self, enter_min):
        """
        Returning set enter min
        Implementing logging for set enter min functionality
        :param enter_min:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set enter min')
            self._business_admin_page.set_enter_min(enter_min)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set enter min')
            return is_set

    def set_enter_max(self, enter_max):
        """
        Returning set enter max
        Implementing logging for set enter max functionality
        :param enter_max:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set enter max')
            self._business_admin_page.set_enter_max(enter_max)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set enter max')
            return is_set

    def set_define_fixed_blending_security(self, define_fixed_blending_security):
        """
        Returning set define fixed blending security
        Implementing logging for set define fixed blending security functionality
        :param define_fixed_blending_security:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set define fixed blending security')
            self._business_admin_page.set_define_fixed_blending_security(define_fixed_blending_security)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set define fixed blending security')
            return is_set

    def set_define_minmax_blending_security(self, define_minmax_blending_security):
        """
        Returning set define minmax blending security
        Implementing logging for set define minmax blending security functionality
        :param define_minmax_blending_security:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set define minmax blending security')
            self._business_admin_page.set_define_minmax_blending_security(define_minmax_blending_security)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set define minmax blending security')
            return is_set

    def click_new_csnp_save_button(self):
        """
        Returning click new csnp save button
        Implementing logging for click new csnp save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click new csnp save button')
            self._business_admin_page.click_new_csnp_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click new csnp save button')
            return is_clicked

    def get_network_destination(self):
        """
        Returning get network destination
        Implementing logging for get network destination functionality
        :return: network destination
        """
        try:
            self.logger.info('Start: get network destination')
            return self._business_admin_page.get_network_destination()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get network destination')

    def get_region_name(self):
        """
        Returning get region name
        Implementing logging for get region name functionality
        :return: region name
        """
        try:
            self.logger.info('Start: get region name')
            return self._business_admin_page.get_region_name()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get region name')

    def get_country_name(self):
        """
        Returning get country name
        Implementing logging for get country name functionality
        :return: country name
        """
        try:
            self.logger.info('Start: get country name')
            return self._business_admin_page.get_country_name()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get country name')

    def click_country_bulk_edit_save_changes_button(self):
        """
        Returning click country bulk edit save changes button
        Implementing logging for click country bulk edit save changes button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click country bulk edit save changes button')
            self._business_admin_page.click_country_bulk_edit_save_changes_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click country bulk edit save changes button')
            return is_clicked

    def get_source_name(self):
        """
        Returning get source name
        Implementing logging for get source name functionality
        :return: source name
        """
        try:
            self.logger.info('Start: get source name')
            return self._business_admin_page.get_source_name()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get source name')

    def set_qos_number_plan(self, number_plan):
        """
        Returning set qos number plan
        Implementing logging for set qos number plan functionality
        :param number_plan:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set qos number plan')
            self._business_admin_page.set_qos_number_plan(number_plan)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set qos number plan')
            return is_set

    def set_qos_call_type(self, call_type):
        """
        Returning set qos call type
        Implementing logging for set qos call type functionality
        :param call_type:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set qos call type')
            self._business_admin_page.set_qos_call_type(call_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set qos call type')
            return is_set

    def set_wholesale_solution_type(self, solution_type):
        """
        Returning set wholesale solution type
        Implementing logging for set wholesale solution type functionality
        :param solution_type:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set wholesale solution type')
            self._business_admin_page.set_wholesale_solution_type(solution_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set wholesale solution type')
            return is_set

    def set_settlement_origin_dialed_digit_type(self, dial_digit_type):
        """
        Returning set settlement origin dialed digit type
        Implementing logging for set settlement origin dialed digit type functionality
        :param dial_digit_type:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set settlement origin dialed digit type')
            self._business_admin_page.set_settlement_origin_dialed_digit_type(dial_digit_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set settlement origin dialed digit type')
            return is_set

    def click_new_currency_button(self):
        """
        Returning click new currency button
        Implementing logging for click new currency button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click new currency button')
            self._business_admin_page.click_new_currency_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click new currency button')
            return is_clicked

    def set_currency_name(self, currency_name_prefix, without_random_data=False):
        """
        Returning set currency name
        Implementing logging for set currency name functionality
        :param currency_name_prefix:
        :param without_random_data:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set currency name')
            self._business_admin_page.set_currency_name(currency_name_prefix, without_random_data)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set currency name')
            return is_set

    def set_currency_abbreviation(self, currency_abbreviation_prefix):
        """
        Returning set currency abbreviation
        Implementing logging for set currency abbreviation functionality
        :param currency_abbreviation_prefix:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set currency abbreviation')
            self._business_admin_page.set_currency_abbreviation(currency_abbreviation_prefix)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set currency abbreviation')
            return is_set

    def set_currency_symbol(self):
        """
        Returning set currency symbol
        Implementing logging for set currency symbol functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set currency symbol')
            self._business_admin_page.set_currency_symbol()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set currency symbol')
            return is_set

    def click_new_currency_save_button(self):
        """
        Returning click new currency save button
        Implementing logging for click new currency save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click new currency save button')
            self._business_admin_page.click_new_currency_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click new currency save button')
            return is_clicked

    def get_currency_name(self):
        """
        Returning get currency name
        Implementing logging for get currency name functionality
        :return: currency name
        """
        try:
            self.logger.info('Start: get currency name')
            return self._business_admin_page.get_currency_name()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get currency name')

    def move_available_destinations_to_destination(self, *destination_list):
        """
        Returning move available destinations to destination
        Implementing move available destinations to destination functionality
        :param destination_list:
        :return: True/False
        """
        is_moved = None
        try:
            self.logger.info('Start: move available destinations to destination')
            self._business_admin_page.move_available_destinations_to_destination(destination_list)
            is_moved = True
        except WebDriverException as exp:
            is_moved = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: move available destinations to destination')
            return is_moved

    def click_initialize_button(self):
        """
        Returning click initialize button
        Implementing logging for click initialize button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click initialize button')
            self._business_admin_page.click_initialize_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click initialize button')
            return is_clicked

    def get_route_class_name(self):
        """
        Returning get route class name
        Implementing logging for get route class name functionality
        :return: route class
        """
        try:
            self.logger.info('Start: get route class name')
            return self._business_admin_page.get_route_class_name()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get route class name')

    def set_wholesale_type(self, dropdown_item):
        """
        Returning set wholesale type
        Implementing logging for set set wholesale type functionality
        :param dropdown_item:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set wholesale type')
            if dropdown_item != "":
                self._business_admin_page.set_wholesale_type(dropdown_item)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set wholesale type')
            return is_set

    def move_first_category_to_destination(self):
        """
        Returning move first category to destination
        Implementing logging for move first category to destination functionality
        :return: True/False
        """
        is_moved = None
        try:
            self.logger.info('Start: move first category to destination')
            self._business_admin_page.move_first_category_to_destination()
            is_moved = True
        except WebDriverException as exp:
            is_moved = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: move first category to destination')
            return is_moved

    def reassign_category_to_source(self):
        """
        Returning reassign category to source
        Implementing logging for reassign category to source functionality
        :return: True/False
        """
        is_moved = None
        try:
            self.logger.info('Start: reassign category to source')
            self._business_admin_page.reassign_category_to_source()
            is_moved = True
        except WebDriverException as exp:
            is_moved = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: reassign category to source')
            return is_moved

    def click_internal_cost_adjustment_submenu(self):
        """
        Returning click internal cost adjustment submenu
        Implementing logging for click internal cost adjustment submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click internal cost adjustment submenu')
            self._business_admin_page.click_internal_cost_adjustment_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click internal cost adjustment submenu')
            return is_clicked

    def is_network_codes_screen_loaded(self):
        """
        Returning is network codes screen loaded functionality
        Implementing logging for is network codes screen loaded functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is network codes screen loaded')
            return self._business_admin_page.is_network_codes_screen_loaded()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is network codes screen loaded')

    def expand_translate_menu(self):
        """
        Returning expand translate menu
        Implementing logging for expand translate menu functionality
        :return: True/False
        """
        is_expanded = None
        try:
            self.logger.info('Start: expand translate menu')
            self._business_admin_page.expand_translate_menu()
            is_expanded = True
        except WebDriverException as exp:
            is_expanded = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: expand translate menu')
            return is_expanded

    def click_calendar_provisioning_submenu(self):
        """
        Returning click calendar provisioning submenu
        Implementing logging for click calendar provisioning submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click calendar provisioning submenu')
            self._business_admin_page.click_calendar_provisioning_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click calendar provisioning submenu')
            return is_clicked

    def is_calendar_provisioning_management_screen_loaded(self):
        """
        Returning is calendar provisioning management screen loaded functionality
        Implementing logging for is calendar provisioning management screen loaded functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is calendar provisioning management screen loaded')
            return self._business_admin_page.is_calendar_provisioning_management_screen_loaded()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is calendar provisioning management screen loaded')

    def click_rate_dimension_template_submenu(self):
        """
        Returning click rate dimension template submenu
        Implementing logging for click rate dimension template submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click rate dimension template submenu')
            self._business_admin_page.click_rate_dimension_template_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click rate dimension template submenu')
            return is_clicked

    def click_audit_cycle_and_settlement_management_submenu(self):
        """
        Returning click audit cycle and settlement management submenu
        Implementing logging for click audit cycle and settlement management submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click audit cycle and settlement management submenu')
            self._business_admin_page.click_audit_cycle_and_settlement_management_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click audit cycle and settlement management submenu')
            return is_clicked

    def is_cycle_and_settlement_management_screen_loaded(self):
        """
        Returning is cycle and settlement management screen loaded functionality
        Implementing logging for is cycle and settlement management screen loaded functionality
        :return: True/False
        """
        loaded_properly = None
        try:
            self.logger.info('Start: is cycle and settlement management screen loaded')
            loaded_properly = self._business_admin_page.is_cycle_and_settlement_management_screen_loaded()
        except WebDriverException as exp:
            loaded_properly = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is cycle and settlement management screen loaded')
            return loaded_properly

    def click_customer_rounding_rule_definition_submenu(self):
        """
        Returning click customer rounding rule definition submenu functionality
        Implementing logging for click customer rounding rule definition submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click customer rounding rule definition submenu')
            self._business_admin_page.click_customer_rounding_rule_definition_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click customer rounding rule definition submenu')
            return is_clicked

    def is_customer_rounding_rule_definition_screen_loaded(self):
        """
        Returning is customer rounding rule definition screen loaded functionality
        Implementing logging for is customer rounding rule definition screen loaded functionality
        :return: True/False
        """
        loaded_properly = None
        try:
            self.logger.info('Start: is customer rounding rule definition screen loaded functionality')
            loaded_properly = self._business_admin_page.is_customer_rounding_rule_definition_screen_loaded()
        except WebDriverException as exp:
            loaded_properly = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is customer rounding rule definition screen loaded functionality')
            return loaded_properly

    def click_adjustment_folder_approval_submenu(self):
        """
        Returning click adjustment folder approval submenu
        Implementing logging for click adjustment folder approval submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click adjustment folder approval submenu')
            self._business_admin_page.click_adjustment_folder_approval_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click adjustment folder approval submenu')
            return is_clicked

    def is_adjustment_folder_approval_page_loaded_properly(self):
        """
        Returning is adjustment folder approval page loaded properly
        Implementing logging for is adjustment folder approval page loaded properly functionality
        :return: True/False
        """
        is_loaded_properly = None
        try:
            self.logger.info('Start: is adjustment folder approval page loaded properly')
            is_loaded_properly = self._business_admin_page.is_adjustment_folder_approval_page_loaded_properly()
        except WebDriverException as exp:
            is_loaded_properly = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is adjustment folder approval page loaded properly')
            return is_loaded_properly

    def click_audit_statement_fields_submenu(self):
        """
        Returning click audit statement fields submenu
        Implementing logging for click audit statement fields submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click audit statement fields submenu')
            self._business_admin_page.click_audit_statement_fields_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click audit statement fields submenu')
            return is_clicked

    def is_audit_statement_fields_page_loaded_properly(self):
        """
        Returning is audit statement fields page loaded properly
        Implementing logging for is audit statement fields page loaded properly functionality
        :return: True/False
        """
        is_loaded_properly = None
        try:
            self.logger.info('Start: is audit statement fieldsl page loaded properly')
            is_loaded_properly = self._business_admin_page.is_audit_statement_fields_page_loaded_properly()
        except WebDriverException as exp:
            is_loaded_properly = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is audit statement fields page loaded properly')
            return is_loaded_properly

    def click_bill_statement_fields_submenu(self):
        """
        Returning click bill statement fields submenu
        Implementing logging for click bill statement fields submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click bill statement fields submenu')
            self._business_admin_page.click_bill_statement_fields_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click bill statement fields submenu')
            return is_clicked

    def is_bill_statement_fields_page_loaded_properly(self):
        """
        Returning is bill statement fields page loaded properly
        Implementing logging for is bill statement fields page loaded properly functionality
        :return: True/False
        """
        is_loaded_properly = None
        try:
            self.logger.info('Start: is bill statement fields page loaded properly')
            is_loaded_properly = self._business_admin_page.is_bill_statement_fields_page_loaded_properly()
        except WebDriverException as exp:
            is_loaded_properly = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is bill statement fields page loaded properly')
            return is_loaded_properly

    def click_charge_categories_submenu(self):
        """
        Returning click charge categories submenu
        Implementing logging for click charge categories submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click charge categories submenu')
            self._business_admin_page.click_charge_categories_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click charge categories submenu')
            return is_clicked

    def is_charge_categories_page_loaded_properly(self):
        """
        Returning is charge categories page loaded properly
        Implementing logging for is charge categories page loaded properly functionality
        :return: True/False
        """
        is_loaded_properly = None
        try:
            self.logger.info('Start: is charge categories page loaded properly')
            is_loaded_properly = self._business_admin_page.is_charge_categories_page_loaded_properly()
        except WebDriverException as exp:
            is_loaded_properly = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is charge categories page loaded properly')
            return is_loaded_properly

    def click_cover_letter_templates_submenu(self):
        """
        Returning click cover letter templates submenu
        Implementing logging for click cover letter templates submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click cover letter templates submenu')
            self._business_admin_page.click_cover_letter_templates_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click cover letter templates submenu')
            return is_clicked

    def is_cover_letter_templates_page_loaded_properly(self):
        """
        Returning is cover letter templates page loaded properly
        Implementing logging for is cover letter templates page loaded properly functionality
        :return: True/False
        """
        is_loaded_properly = None
        try:
            self.logger.info('Start: is cover letter templates page loaded properly')
            is_loaded_properly = self._business_admin_page.is_cover_letter_templates_page_loaded_properly()
        except WebDriverException as exp:
            is_loaded_properly = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is cover letter templates page loaded properly')
            return is_loaded_properly

    def click_discrepancy_source_submenu(self):
        """
        Returning click discrepancy source submenu
        Implementing logging for click discrepancy source submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click discrepancy source submenu')
            self._business_admin_page.click_discrepancy_source_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click discrepancy source submenu')
            return is_clicked

    def is_discrepancy_source_page_loaded_properly(self):
        """
        Returning is discrepancy source page loaded properly
        Implementing logging for is discrepancy source page loaded properly functionality
        :return: True/False
        """
        is_loaded_properly = None
        try:
            self.logger.info('Start: is discrepancy source page loaded properly')
            is_loaded_properly = self._business_admin_page.is_discrepancy_source_page_loaded_properly()
        except WebDriverException as exp:
            is_loaded_properly = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is discrepancy source page loaded properly')
            return is_loaded_properly

    def click_dispute_grades_submenu(self):
        """
        Returning click dispute grades submenu
        Implementing logging for click dispute grades submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click dispute grades submenu')
            self._business_admin_page.click_dispute_grades_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click dispute grades submenu')
            return is_clicked

    def is_dispute_grades_page_loaded_properly(self):
        """
        Returning is dispute grades page loaded properly
        Implementing logging for is dispute grades page loaded properly functionality
        :return: True/False
        """
        is_loaded_properly = None
        try:
            self.logger.info('Start: is dispute grades page loaded properly')
            is_loaded_properly = self._business_admin_page.is_dispute_grades_page_loaded_properly()
        except WebDriverException as exp:
            is_loaded_properly = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is dispute grades page loaded properly')
            return is_loaded_properly

    def click_dispute_letter_submenu(self):
        """
        Returning click dispute letter submenu
        Implementing logging for click dispute letter submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click dispute letter submenu')
            self._business_admin_page.click_dispute_letter_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click dispute letter submenu')
            return is_clicked

    def is_dispute_letter_page_loaded_properly(self):
        """
        Returning is dispute letter page loaded properly
        Implementing logging for is dispute letter page loaded properly functionality
        :return: True/False
        """
        is_loaded_properly = None
        try:
            self.logger.info('Start: is dispute letter page loaded properly')
            is_loaded_properly = self._business_admin_page.is_dispute_letter_page_loaded_properly()
        except WebDriverException as exp:
            is_loaded_properly = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is dispute letter page loaded properly')
            return is_loaded_properly

    def is_statement_numbering_template_page_loaded_properly(self):
        """
        Returning is statement numbering template page loaded properly
        Implementing logging for is statement numbering template page loaded properly functionality
        :return: True/False
        """
        is_loaded_properly = None
        try:
            self.logger.info('Start: is statement numbering template page loaded properly')
            is_loaded_properly = self._business_admin_page.is_statement_numbering_template_page_loaded_properly()
        except WebDriverException as exp:
            is_loaded_properly = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is statement numbering template page loaded properly')
            return is_loaded_properly

    def click_statement_templates_submenu(self):
        """
        Returning click statement templates submenu
        Implementing logging for click statement templates submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click statement templates submenu')
            self._business_admin_page.click_statement_templates_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click statement templates submenu')
            return is_clicked

    def is_statement_templates_page_loaded_properly(self):
        """
        Returning is statement templates page loaded properly
        Implementing logging for is statement templates page loaded properly functionality
        :return: True/False
        """
        is_loaded_properly = None
        try:
            self.logger.info('Start: is statement templates page loaded properly')
            is_loaded_properly = self._business_admin_page.is_statement_templates_page_loaded_properly()
        except WebDriverException as exp:
            is_loaded_properly = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is statement templates page loaded properly')
            return is_loaded_properly

    def click_accounting_codes_submenu(self):
        """
        Returning click accounting codes submenu
        Implementing logging for click accounting codes submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click accounting codes submenu')
            self._business_admin_page.click_accounting_codes_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click accounting codes submenu')
            return is_clicked

    def is_accounting_codes_page_loaded_properly(self):
        """
        Returning is accounting codes page loaded properly
        Implementing logging for is accounting codes page loaded properly functionality
        :return: True/False
        """
        is_loaded_properly = None
        try:
            self.logger.info('Start: is accounting codes page loaded properly')
            is_loaded_properly = self._business_admin_page.is_accounting_codes_page_loaded_properly()
        except WebDriverException as exp:
            is_loaded_properly = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is accounting codes page loaded properly')
            return is_loaded_properly

    def click_summarization_level_submenu(self):
        """
        Returning click summarization level submenu
        Implementing logging for click summarization level submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click summarization level submenu')
            self._business_admin_page.click_summarization_level_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click summarization level submenu')
            return is_clicked

    def is_summarization_level_page_loaded_properly(self):
        """
        Returning is summarization level page loaded properly
        Implementing logging for is summarization level page loaded properly functionality
        :return: True/False
        """
        is_loaded_properly = None
        try:
            self.logger.info('Start: is summarization level page loaded properly')
            is_loaded_properly = self._business_admin_page.is_summarization_level_page_loaded_properly()
        except WebDriverException as exp:
            is_loaded_properly = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is summarization level page loaded properly')
            return is_loaded_properly

    def filter_source_and_policies_grid(self, column_name, column_value):
        """
        Returning filter source and policies grid
        Implementing logging for filter source and policies grid functionality
        :param column_name:
        :param column_value:
        :return:
        """
        is_filtered = None
        try:
            self.logger.info('Start: filter source and policies grid')
            self._business_admin_page.filter_source_and_policies_grid(column_name, column_value)
            is_filtered = True
        except WebDriverException as exp:
            is_filtered = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: filter source and policies grid')
            return is_filtered

    def select_source_and_policies_first_row_crpl_checkbox(self):
        """
        Returning select source and policies first row crpl checkbox
        Implementing logging for select source and policies first row crpl checkbox functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select source and policies first row crpl checkbox')
            self._business_admin_page.select_source_and_policies_first_row_crpl_checkbox()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select source and policies first row crpl checkbox')
            return is_selected

    def expand_switch_translation_mappings_menu(self):
        """
        Returning expand switch translation mappings menu
        Implementing logging for expand switch translation mappings menu functionality
        :return: True/False
        """
        is_expanded = None
        try:
            self.logger.info('Start: expand switch translation mappings menu')
            self._business_admin_page.expand_switch_translation_mappings_menu()
            is_expanded = True
        except WebDriverException as exp:
            is_expanded = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: expand switch translation mappings menu')
            return is_expanded

    def click_submenu_of_switch_translation_mappings_menu(self, submenu_name):
        """
        Returning click submenu of switch translation mappings menu
        Implementing logging for click submenu of switch translation mappings menu functionality
        :param submenu_name:
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click submenu of switch translation mappings menu')
            self._business_admin_page.click_submenu_of_switch_translation_mappings_menu(submenu_name)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click submenu of switch translation mappings menu')
            return is_clicked

    def verify_translate_page_title(self, expected_title):
        """
        Returning verify translate page title
        Implementing logging for verify translate page title functionality
        :param expected_title:
        :return: True/False
        """
        is_verified = None
        try:
            self.logger.info('Start: verify translate page title')
            is_verified = self._business_admin_page.verify_translate_page_title(expected_title)
        except WebDriverException as exp:
            is_verified = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: verify translate page title')
            return is_verified

    def verify_translate_page_filter_frame_title(self, expected_title):
        """
        Returning verify translate page filter frame title
        Implementing logging for verify translate page filter frame title functionality
        :param expected_title:
        :return: True/False
        """
        is_verified = None
        try:
            self.logger.info('Start: verify translate page filter frame title')
            is_verified = self._business_admin_page.verify_translate_page_filter_frame_title(expected_title)
        except WebDriverException as exp:
            is_verified = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: verify translate page filter frame title')
            return is_verified

    def expand_subscribers_and_calling_plans_menu(self):
        """
        Returning expand subscribers and calling plans menu
        Implementing logging for expand subscribers and calling plans menu functionality
        :return: True/False
        """
        is_expanded = None
        try:
            self.logger.info('Start: expand subscribers and calling plans menu')
            self._business_admin_page.expand_subscribers_and_calling_plans_menu()
            is_expanded = True
        except WebDriverException as exp:
            is_expanded = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: expand subscribers and calling plans menu')
            return is_expanded

    def click_submenu_of_subscribers_and_calling_plans_menu(self, submenu_name):
        """
        Returning click submenu of subscribers and calling plans menu
        Implementing logging for click submenu of subscribers and calling plans menu functionality
        :param submenu_name:
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click submenu of subscribers and calling plans menu')
            self._business_admin_page.click_submenu_of_subscribers_and_calling_plans_menu(submenu_name)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click submenu of subscribers and calling plans menu')
            return is_clicked

    def verify_tab_header(self, tab_header):
        """
        Returning verify tab header
        Implementing logging for verify tab header functionality
        :param tab_header:
        :return: True/False
        """
        is_verified = None
        try:
            self.logger.info('Start: verify tab header')
            is_verified = self._business_admin_page.verify_tab_header(tab_header)
        except WebDriverException as exp:
            is_verified = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: verify tab header')
            return is_verified

    def set_generate_rpl_records_for(self, dropdown_item):
        """
        Returning set generate rpl records for
        Implementing logging for set generate rpl records for functionality
        :param dropdown_item:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set generate rpl records for')
            if dropdown_item != "":
                self._business_admin_page.set_generate_rpl_records_for(dropdown_item)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set generate rpl records for')
            return is_set

    def set_automated_rpl_generation(self, dropdown_item):
        """
        Returning set automated rpl generation
        Implementing logging for set automated rpl generation functionality
        :param dropdown_item:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set automated rpl generation')
            if dropdown_item != "":
                self._business_admin_page.set_automated_rpl_generation(dropdown_item)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set automated rpl generation')
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
            is_sorted = self._business_admin_page.compare_sorted_data(unsorted_data, descending_order)
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
            is_compared = self._business_admin_page.compare_grid_column_position_after_altering(source_column, destination_column, column_name_list)
        except WebDriverException as exp:
            is_compared = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare grid column position after altering')
            return is_compared

    def set_network_codes_grid_settings(self, grid_settings):
        """
        Returning set network codes grid settings
        Implementing logging for set network codes grid settings functionality
        :param grid_settings:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set network codes grid settings')
            self._business_admin_page.set_network_codes_grid_settings(grid_settings)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set network codes grid settings')
            return is_set

    def sort_network_codes_grid_column(self, column_name, descending_order=False):
        """
        Returning sort network codes grid column
        Implementing logging for sort network codes grid column functionality
        :param column_name:
        :param descending_order:
        :return: True/False
        """
        is_sorted = None
        try:
            self.logger.info('Start: sort network codes grid column')
            self._business_admin_page.sort_network_codes_grid_column(column_name, descending_order)
            is_sorted = True
        except WebDriverException as exp:
            is_sorted = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: sort network codes grid column')
            return is_sorted

    def get_all_rows_of_specific_column_from_network_codes_grid(self, column_name):
        """
        Returning get all rows of specific column from network codes grid
        Implementing logging for get all rows of specific column from network codes grid functionality
        :param column_name:
        :return: all_row_data
        """
        all_row_data = None
        try:
            self.logger.info('Start: get all rows of specific column from network codes grid')
            all_row_data = self._business_admin_page.get_all_rows_of_specific_column_from_network_codes_grid(column_name)
        except WebDriverException as exp:
            all_row_data = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get all rows of specific column from network codes grid')
            return all_row_data

    def drag_network_codes_grid_column(self, source_column, destination_column):
        """
        Returning drag network codes grid column
        Implementing logging for drag network codes grid column functionality
        :param source_column:
        :param destination_column:
        :return: True/False
        """
        is_dragged = None
        try:
            self.logger.info('Start: drag network codes grid column')
            self._business_admin_page.drag_network_codes_grid_column(source_column, destination_column)
            is_dragged = True
        except WebDriverException as exp:
            is_dragged = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: drag network codes grid column')
            return is_dragged

    def get_network_codes_grid_column_names_by_order(self):
        """
        Returning get network codes grid column names by order
        Implementing logging for get network codes grid column names by order functionality
        :return: column_name_list
        """
        column_name_list = None
        try:
            self.logger.info('Start: get network codes grid column names by order')
            column_name_list = self._business_admin_page.get_network_codes_grid_column_names_by_order()
        except WebDriverException as exp:
            column_name_list = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get network codes grid column names by order')
            return column_name_list

    def click_network_codes_grid_export_to_excel_button(self):
        """
        Returning click network codes grid export to excel button
        Implementing logging for click network codes grid export to excel button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click network codes grid export to excel button')
            self._business_admin_page.click_network_codes_grid_export_to_excel_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click network codes grid export to excel button')
            return is_clicked

    def is_route_class_page_loaded_properly(self):
        """
        Returning is route class page loaded properly
        Implementing logging for is route class page loaded properly functionality
        :return: True/False
        """
        is_loaded_properly = None
        try:
            self.logger.info('Start: is route class page loaded properly')
            is_loaded_properly = self._business_admin_page.is_route_class_page_loaded_properly()
        except WebDriverException as exp:
            is_loaded_properly = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is route class page loaded properly')
            return is_loaded_properly

    def click_product_submenu(self):
        """
        Returning click product submenu
        Implementing logging for click product submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click product submenu')
            self._business_admin_page.click_product_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click product submenu')
            return is_clicked

    def is_product_page_loaded_properly(self):
        """
        Returning is product page loaded properly
        Implementing logging for is product page loaded properly functionality
        :return: True/False
        """
        is_loaded_properly = None
        try:
            self.logger.info('Start: is product page loaded properly')
            is_loaded_properly = self._business_admin_page.is_product_page_loaded_properly()
        except WebDriverException as exp:
            is_loaded_properly = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is product page loaded properly')
            return is_loaded_properly

    def is_create_country_group_button_not_present(self):
        """
        Returning is create country group button not present
        Implementing logging for is create country group button not present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is create country group button not present')
            return self._business_admin_page.is_create_country_group_button_not_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is create country group button not present')

    def is_delete_country_group_button_not_present(self):
        """
        Returning is delete country group button not present
        Implementing logging for is delete country group button not present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is delete country group button not present')
            return self._business_admin_page.is_delete_country_group_button_not_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is delete country group button not present')

    def get_countries_grid_existing_mcc(self):
        """
        Returning get countries grid existing mcc
        Implementing logging for get countries grid existing mcc functionality
        :return: existing_mcc
        """
        try:
            self.logger.info('Start: get countries grid existing mcc')
            return self._business_admin_page.get_countries_grid_existing_mcc()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get countries grid existing mcc')

    def set_countries_grid_column_value(self, column_name, column_value):
        """
        Returning set countries grid column value
        Implementing logging for set countries grid column value functionality
        :param column_name:
        :param column_value:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set countries grid column value')
            self._business_admin_page.set_countries_grid_column_value(column_name, column_value)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set countries grid column value')
            return is_set

    def move_first_available_country_to_destination(self):
        """
        Returning move first available country to destination
        Implementing move first available country to destination functionality
        :return:
        """
        is_moved = None
        try:
            self.logger.info('Start: move first available country to destination')
            self._business_admin_page.move_first_available_country_to_destination()
            is_moved = True
        except WebDriverException as exp:
            is_moved = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: move first available country to destination')
            return is_moved

    def set_country_for_country_group_search(self, *country_list):
        """
        Returning set country for country group search
        Implementing logging for set country for country group search functionality
        :param country_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set country for country group search')
            self._business_admin_page.set_country_for_country_group_search(country_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set country for country group search')
            return is_set

    def verify_country_group_grid_loaded_with_selected_country(self, *country_list):
        """
        Returning verify country group grid loaded with selected country
        Implementing logging for verify country group grid loaded with selected country functionality
        :param country_list:
        :return: True/False
        """
        is_verified = None
        try:
            self.logger.info('Start: verify country group grid loaded with selected country')
            is_verified = self._business_admin_page.verify_country_group_grid_loaded_with_selected_country(country_list)
        except WebDriverException as exp:
            is_verified = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: verify country group grid loaded with selected country')
            return is_verified

    def click_buy_and_sell_deal_management_submenu(self):
        """
        Returning click buy and sell deal management submenu
        Implementing logging for click buy and sell deal management submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click buy and sell deal management submenu')
            self._business_admin_page.click_buy_and_sell_deal_management_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click buy and sell deal management submenu')
            return is_clicked

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
            self._business_admin_page.set_start_date(start_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set start date')
            return is_set

    def set_buy_and_sell_management_grid_settings(self, grid_settings):
        """
        Returning set buy and sell management grid settings
        Implementing logging for set buy and sell management grid settings functionality
        :param grid_settings:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set buy and sell management grid settings')
            self._business_admin_page.set_buy_and_sell_management_grid_settings(grid_settings)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set buy and sell management grid settings')
            return is_set

    def sort_buy_and_sell_management_grid_column(self, column_name, descending_order=False):
        """
        Returning sort buy and sell management grid column
        Implementing logging for sort buy and sell management grid column functionality
        :param column_name:
        :param descending_order:
        :return: True/False
        """
        is_sorted = None
        try:
            self.logger.info('Start: sort buy and sell management grid column')
            self._business_admin_page.sort_buy_and_sell_management_grid_column(column_name, descending_order)
            is_sorted = True
        except WebDriverException as exp:
            is_sorted = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: sort buy and sell management grid column')
            return is_sorted

    def get_all_rows_of_specific_column_from_buy_and_sell_management_grid(self, column_name):
        """
        Returning get all rows of specific column from buy and sell management grid
        Implementing logging for get all rows of specific column from buy and sell management grid functionality
        :param column_name:
        :return: all_row_data
        """
        all_row_data = None
        try:
            self.logger.info('Start: get all rows of specific column from buy and sell management grid')
            all_row_data = self._business_admin_page.get_all_rows_of_specific_column_from_buy_and_sell_management_grid(column_name)
        except WebDriverException as exp:
            all_row_data = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get all rows of specific column from buy and sell management grid')
            return all_row_data

    def drag_buy_and_sell_management_grid_column(self, source_column, destination_column):
        """
        Returning drag buy and sell management grid column
        Implementing logging for drag buy and sell management grid column functionality
        :param source_column:
        :param destination_column:
        :return: True/False
        """
        is_dragged = None
        try:
            self.logger.info('Start: drag buy and sell management grid column')
            self._business_admin_page.drag_buy_and_sell_management_grid_column(source_column, destination_column)
            is_dragged = True
        except WebDriverException as exp:
            is_dragged = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: drag buy and sell management grid column')
            return is_dragged

    def get_buy_and_sell_management_grid_column_names_by_order(self):
        """
        Returning get buy and sell management grid column names by order
        Implementing logging for get buy and sell management grid column names by order functionality
        :return: column_name_list
        """
        column_name_list = None
        try:
            self.logger.info('Start: get buy and sell management grid column names by order')
            column_name_list = self._business_admin_page.get_buy_and_sell_management_grid_column_names_by_order()
        except WebDriverException as exp:
            column_name_list = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get buy and sell management grid column names by order')
            return column_name_list

    def click_buy_and_sell_management_grid_export_to_excel_button(self):
        """
        Returning click buy and sell management grid export to excel button
        Implementing logging for click buy and sell management grid export to excel button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click buy and sell management grid export to excel button')
            self._business_admin_page.click_buy_and_sell_management_grid_export_to_excel_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click buy and sell management grid export to excel button')
            return is_clicked

    def select_buy_and_sell_deal_management_grid_first_row_checkbox(self):
        """
        Returning select buy and sell deal management grid first row checkbox
        Implementing logging for select buy and sell deal management grid first row checkbox functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select buy and sell deal management grid first row checkbox')
            self._business_admin_page.select_buy_and_sell_deal_management_grid_first_row_checkbox()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select buy and sell deal management grid first row checkbox')
            return is_selected

    def click_buy_and_sell_deal_bulk_edit_button(self):
        """
        Returning click buy and sell deal bulk edit button
        Implementing logging for click buy and sell deal bulk edit button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click buy and sell deal bulk edit button')
            self._business_admin_page.click_buy_and_sell_deal_bulk_edit_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click buy and sell deal bulk edit button')
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
            self._business_admin_page.set_bulk_edit_end_date(end_date, future_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set bulk edit end date')
            return is_set

    def set_route_class_grid_settings(self, grid_settings):
        """
        Returning set route class grid settings
        Implementing logging for set route class grid settings functionality
        :param grid_settings:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set route class grid settings')
            self._business_admin_page.set_route_class_grid_settings(grid_settings)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set route class grid settings')
            return is_set

    def sort_route_class_grid_column(self, column_name, descending_order=False):
        """
        Returning sort route class grid column
        Implementing logging for sort route class grid column functionality
        :param column_name:
        :param descending_order:
        :return: True/False
        """
        is_sorted = None
        try:
            self.logger.info('Start: sort route class grid column')
            self._business_admin_page.sort_route_class_grid_column(column_name, descending_order)
            is_sorted = True
        except WebDriverException as exp:
            is_sorted = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: sort route class grid column')
            return is_sorted

    def get_all_rows_of_specific_column_from_route_class_grid(self, column_name):
        """
        Returning get all rows of specific column from route class grid
        Implementing logging for get all rows of specific column from route class grid functionality
        :param column_name:
        :return: all_row_data
        """
        all_row_data = None
        try:
            self.logger.info('Start: get all rows of specific column from route class grid')
            all_row_data = self._business_admin_page.get_all_rows_of_specific_column_from_route_class_grid(column_name)
        except WebDriverException as exp:
            all_row_data = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get all rows of specific column from route class grid')
            return all_row_data

    def drag_route_class_grid_column(self, source_column, destination_column):
        """
        Returning drag route class grid column
        Implementing logging for drag route class grid column functionality
        :param source_column:
        :param destination_column:
        :return: True/False
        """
        is_dragged = None
        try:
            self.logger.info('Start: drag route class grid column')
            self._business_admin_page.drag_route_class_grid_column(source_column, destination_column)
            is_dragged = True
        except WebDriverException as exp:
            is_dragged = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: drag route class grid column')
            return is_dragged

    def get_route_class_grid_column_names_by_order(self):
        """
        Returning get route class grid column names by order
        Implementing logging for get route class grid column names by order functionality
        :return: column_name_list
        """
        column_name_list = None
        try:
            self.logger.info('Start: get route class grid column names by order')
            column_name_list = self._business_admin_page.get_route_class_grid_column_names_by_order()
        except WebDriverException as exp:
            column_name_list = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get route class grid column names by order')
            return column_name_list

    def click_route_class_grid_export_to_excel_button(self):
        """
        Returning click route class grid export to excel button
        Implementing logging for click route class grid export to excel button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click route class grid export to excel button')
            self._business_admin_page.click_route_class_grid_export_to_excel_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click route class grid export to excel button')
            return is_clicked

    def set_currency_grid_settings(self, grid_settings):
        """
        Returning set currency grid settings
        Implementing logging for set currency grid settings functionality
        :param grid_settings:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set currency grid settings')
            self._business_admin_page.set_currency_grid_settings(grid_settings)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set currency grid settings')
            return is_set

    def sort_currency_grid_column(self, column_name, descending_order=False):
        """
        Returning sort currency grid column
        Implementing logging for sort currency grid column functionality
        :param column_name:
        :param descending_order:
        :return: True/False
        """
        is_sorted = None
        try:
            self.logger.info('Start: sort currency grid column')
            self._business_admin_page.sort_currency_grid_column(column_name, descending_order)
            is_sorted = True
        except WebDriverException as exp:
            is_sorted = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: sort currency grid column')
            return is_sorted

    def get_all_rows_of_specific_column_from_currency_grid(self, column_name):
        """
        Returning get all rows of specific column from currency grid
        Implementing logging for get all rows of specific column from currency grid functionality
        :param column_name:
        :return: all_row_data
        """
        all_row_data = None
        try:
            self.logger.info('Start: get all rows of specific column from currency grid')
            all_row_data = self._business_admin_page.get_all_rows_of_specific_column_from_currency_grid(column_name)
        except WebDriverException as exp:
            all_row_data = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get all rows of specific column from currency grid')
            return all_row_data

    def drag_currency_grid_column(self, source_column, destination_column):
        """
        Returning drag currency grid column
        Implementing logging for drag currency grid column functionality
        :param source_column:
        :param destination_column:
        :return: True/False
        """
        is_dragged = None
        try:
            self.logger.info('Start: drag currency grid column')
            self._business_admin_page.drag_currency_grid_column(source_column, destination_column)
            is_dragged = True
        except WebDriverException as exp:
            is_dragged = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: drag currency grid column')
            return is_dragged

    def get_currency_grid_column_names_by_order(self):
        """
        Returning get currency grid column names by order
        Implementing logging for get currency grid column names by order functionality
        :return: column_name_list
        """
        column_name_list = None
        try:
            self.logger.info('Start: get currency grid column names by order')
            column_name_list = self._business_admin_page.get_currency_grid_column_names_by_order()
        except WebDriverException as exp:
            column_name_list = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get currency grid column names by order')
            return column_name_list

    def click_currency_grid_export_to_excel_button(self):
        """
        Returning click currency grid export to excel button
        Implementing logging for click currency grid export to excel button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click currency grid export to excel button')
            self._business_admin_page.click_currency_grid_export_to_excel_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click currency grid export to excel button')
            return is_clicked

    def set_currency_grid_first_row_currency_symbol(self):
        """
        Returning set currency grid first row currency symbol
        Implementing logging for set currency grid first row currency symbol functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set currency grid first row currency symbol')
            self._business_admin_page.set_currency_grid_first_row_currency_symbol()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set currency grid first row currency symbol')
            return is_set

    def set_source_policies_grid_settings(self, grid_settings):
        """
        Returning set source policies grid settings
        Implementing logging for set source policies grid settings functionality
        :param grid_settings:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set source policies grid settings')
            self._business_admin_page.set_source_policies_grid_settings(grid_settings)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set source policies grid settings')
            return is_set

    def sort_source_policies_grid_column(self, column_name, descending_order=False):
        """
        Returning sort source policies grid column
        Implementing logging for sort source policies grid column functionality
        :param column_name:
        :param descending_order:
        :return: True/False
        """
        is_sorted = None
        try:
            self.logger.info('Start: sort source policies grid column')
            self._business_admin_page.sort_source_policies_grid_column(column_name, descending_order)
            is_sorted = True
        except WebDriverException as exp:
            is_sorted = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: sort source policies grid column')
            return is_sorted

    def get_all_rows_of_specific_column_from_source_policies_grid(self, column_name):
        """
        Returning get all rows of specific column from source policies grid
        Implementing logging for get all rows of specific column from source policies grid functionality
        :param column_name:
        :return: all_row_data
        """
        all_row_data = None
        try:
            self.logger.info('Start: get all rows of specific column from source policies grid')
            all_row_data = self._business_admin_page.get_all_rows_of_specific_column_from_source_policies_grid(column_name)
        except WebDriverException as exp:
            all_row_data = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get all rows of specific column from source policies grid')
            return all_row_data

    def drag_source_policies_grid_column(self, source_column, destination_column):
        """
        Returning drag source policies grid column
        Implementing logging for drag source policies grid column functionality
        :param source_column:
        :param destination_column:
        :return: True/False
        """
        is_dragged = None
        try:
            self.logger.info('Start: drag source policies grid column')
            self._business_admin_page.drag_source_policies_grid_column(source_column, destination_column)
            is_dragged = True
        except WebDriverException as exp:
            is_dragged = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: drag source policies grid column')
            return is_dragged

    def get_source_policies_grid_column_names_by_order(self):
        """
        Returning get source policies grid column names by order
        Implementing logging for get source policies grid column names by order functionality
        :return: column_name_list
        """
        column_name_list = None
        try:
            self.logger.info('Start: get source policies grid column names by order')
            column_name_list = self._business_admin_page.get_source_policies_grid_column_names_by_order()
        except WebDriverException as exp:
            column_name_list = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get source policies grid column names by order')
            return column_name_list

    def click_source_policies_grid_export_to_excel_button(self):
        """
        Returning click source policies grid export to excel button
        Implementing logging for click source policies grid export to excel button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click source policies grid export to excel button')
            self._business_admin_page.click_source_policies_grid_export_to_excel_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click source policies grid export to excel button')
            return is_clicked

    def click_source_policies_grid_first_row_inline_action_button(self):
        """
        Returning click source policies grid first row inline action button
        Implementing logging for click source policies grid first row inline action button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click source policies grid first row inline action button')
            self._business_admin_page.click_source_policies_grid_first_row_inline_action_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click source policies grid first row inline action button')
            return is_clicked

    def is_copy_source_pop_up_opened_properly(self):
        """
        Returning is copy source pop up opened properly
        Implementing logging for is copy source pop up opened properly functionality
        :return: True/False
        """
        is_opened = None
        try:
            self.logger.info('Start: is copy source pop up opened properly')
            self._business_admin_page.is_copy_source_pop_up_opened_properly()
            is_opened = True
        except WebDriverException as exp:
            is_opened = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is copy source pop up opened properly')
            return is_opened

    def click_copy_source_cancel_button(self):
        """
        Returning click copy source cancel button
        Implementing logging for click copy source cancel button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click copy source cancel button')
            self._business_admin_page.click_copy_source_cancel_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click copy source cancel button')
            return is_clicked

    def set_categories_grid_settings(self, grid_settings):
        """
        Returning set categories grid settings
        Implementing logging for set categories grid settings functionality
        :param grid_settings:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set categories grid settings')
            self._business_admin_page.set_categories_grid_settings(grid_settings)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set categories grid settings')
            return is_set

    def sort_categories_grid_column(self, column_name, descending_order=False):
        """
        Returning sort categories grid column
        Implementing logging for sort categories grid column functionality
        :param column_name:
        :param descending_order:
        :return: True/False
        """
        is_sorted = None
        try:
            self.logger.info('Start: sort categories grid column')
            self._business_admin_page.sort_categories_grid_column(column_name, descending_order)
            is_sorted = True
        except WebDriverException as exp:
            is_sorted = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: sort categories grid column')
            return is_sorted

    def get_all_rows_of_specific_column_from_categories_grid(self, column_name):
        """
        Returning get all rows of specific column from categories grid
        Implementing logging for get all rows of specific column from categories grid functionality
        :param column_name:
        :return: all_row_data
        """
        all_row_data = None
        try:
            self.logger.info('Start: get all rows of specific column from categories grid')
            all_row_data = self._business_admin_page.get_all_rows_of_specific_column_from_categories_grid(column_name)
        except WebDriverException as exp:
            all_row_data = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get all rows of specific column from categories grid')
            return all_row_data

    def drag_categories_grid_column(self, source_column, destination_column):
        """
        Returning drag categories grid column
        Implementing logging for drag categories grid column functionality
        :param source_column:
        :param destination_column:
        :return: True/False
        """
        is_dragged = None
        try:
            self.logger.info('Start: drag categories grid column')
            self._business_admin_page.drag_categories_grid_column(source_column, destination_column)
            is_dragged = True
        except WebDriverException as exp:
            is_dragged = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: drag categories grid column')
            return is_dragged

    def get_categories_grid_column_names_by_order(self):
        """
        Returning get categories grid column names by order
        Implementing logging for get categories grid column names by order functionality
        :return: column_name_list
        """
        column_name_list = None
        try:
            self.logger.info('Start: get categories grid column names by order')
            column_name_list = self._business_admin_page.get_categories_grid_column_names_by_order()
        except WebDriverException as exp:
            column_name_list = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get categories grid column names by order')
            return column_name_list

    def click_categories_grid_export_to_excel_button(self):
        """
        Returning click categories grid export to excel button
        Implementing logging for click categories grid export to excel button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click categories grid export to excel button')
            self._business_admin_page.click_categories_grid_export_to_excel_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click categories grid export to excel button')
            return is_clicked

    def set_exchange_rates_grid_settings(self, grid_settings):
        """
        Returning set exchange rates grid settings
        Implementing logging for set exchange rates grid settings functionality
        :param grid_settings:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set exchange rates grid settings')
            self._business_admin_page.set_exchange_rates_grid_settings(grid_settings)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set exchange rates grid settings')
            return is_set

    def sort_exchange_rates_grid_column(self, column_name, descending_order=False):
        """
        Returning sort exchange rates grid column
        Implementing logging for sort exchange rates grid column functionality
        :param column_name:
        :param descending_order:
        :return: True/False
        """
        is_sorted = None
        try:
            self.logger.info('Start: sort exchange rates grid column')
            self._business_admin_page.sort_exchange_rates_grid_column(column_name, descending_order)
            is_sorted = True
        except WebDriverException as exp:
            is_sorted = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: sort exchange rates grid column')
            return is_sorted

    def get_all_rows_of_specific_column_from_exchange_rates_grid(self, column_name):
        """
        Returning get all rows of specific column from exchange rates grid
        Implementing logging for get all rows of specific column from exchange rates grid functionality
        :param column_name:
        :return: all_row_data
        """
        all_row_data = None
        try:
            self.logger.info('Start: get all rows of specific column from exchange rates grid')
            all_row_data = self._business_admin_page.get_all_rows_of_specific_column_from_exchange_rates_grid(column_name)
        except WebDriverException as exp:
            all_row_data = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get all rows of specific column from exchange rates grid')
            return all_row_data

    def drag_exchange_rates_grid_column(self, source_column, destination_column):
        """
        Returning drag exchange rates grid column
        Implementing logging for drag exchange rates grid column functionality
        :param source_column:
        :param destination_column:
        :return: True/False
        """
        is_dragged = None
        try:
            self.logger.info('Start: drag exchange rates grid column')
            self._business_admin_page.drag_exchange_rates_grid_column(source_column, destination_column)
            is_dragged = True
        except WebDriverException as exp:
            is_dragged = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: drag exchange rates grid column')
            return is_dragged

    def get_exchange_rates_grid_column_names_by_order(self):
        """
        Returning get exchange rates grid column names by order
        Implementing logging for get exchange rates grid column names by order functionality
        :return: column_name_list
        """
        column_name_list = None
        try:
            self.logger.info('Start: get exchange rates grid column names by order')
            column_name_list = self._business_admin_page.get_exchange_rates_grid_column_names_by_order()
        except WebDriverException as exp:
            column_name_list = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get exchange rates grid column names by order')
            return column_name_list

    def click_exchange_rates_grid_export_to_excel_button(self):
        """
        Returning click exchange rates grid export to excel button
        Implementing logging for click exchange rates grid export to excel button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click exchange rates grid export to excel button')
            self._business_admin_page.click_exchange_rates_grid_export_to_excel_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click exchange rates grid export to excel button')
            return is_clicked

    def set_exchange_rates_grid_first_row_exchange_rate(self):
        """
        Returning set exchange rates grid first row exchange rate
        Implementing logging for set exchange rates grid first row exchange rate functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set exchange rates grid first row exchange rate')
            self._business_admin_page.set_exchange_rates_grid_first_row_exchange_rate()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set exchange rates grid first row exchange rate')
            return is_set

    def click_add_new_adjustment_button(self):
        """
        Returning click add new adjustment button
        Implementing logging for click add new adjustment button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click add new adjustment button')
            self._business_admin_page.click_add_new_adjustment_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click add new adjustment button')
            return is_clicked

    def set_route_class_for_cost_adjustment(self, route_class=None):
        """
        Returning set route class for cost adjustment
        Implementing logging for set route class for cost adjustment functionality
        :param route_class:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set route class for cost adjustment')
            self._business_admin_page.set_route_class_for_cost_adjustment(route_class)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set route class for cost adjustment')
            return is_set

    def set_routing_product(self):
        """
        Returning set routing product
        Implementing logging for set routing product functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set routing product')
            self._business_admin_page.set_routing_product()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set routing product')
            return is_set

    def set_cost_per_minute(self):
        """
        Returning set cost per minute
        Implementing logging for set cost per minute functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set cost per minute')
            self._business_admin_page.set_cost_per_minute()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set cost per minute')
            return is_set

    def select_internal_cost_adjustments_grid_first_row_checkbox(self, route_class=None):
        """
        Returning select internal cost adjustments grid first row checkbox
        Implementing logging for select internal cost adjustments grid first row checkbox functionality
        :param route_class:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select internal cost adjustments grid first row checkbox')
            self._business_admin_page.select_internal_cost_adjustments_grid_first_row_checkbox(route_class)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select internal cost adjustments grid first row checkbox')
            return is_selected

    def click_internal_cost_adjustment_delete_button(self):
        """
        Returning click internal cost adjustment delete button
        Implementing logging for click internal cost adjustment delete button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click internal cost adjustment delete button')
            self._business_admin_page.click_internal_cost_adjustment_delete_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click internal cost adjustment delete button')
            return is_clicked

    def click_accounting_codes_grid_first_row_inline_action_button(self):
        """
        Returning click accounting codes grid first row inline action button
        Implementing logging for click accounting codes grid first row inline action button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click accounting codes grid first row inline action button')
            self._business_admin_page.click_accounting_codes_grid_first_row_inline_action_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click accounting codes grid first row inline action button')
            return is_clicked

    def is_assign_accounting_codes_page_title_available(self):
        """
        Returning is assign accounting codes page title available
        Implementing logging for is assign accounting codes page title available functionality
        :return: True/False
        """
        is_available = None
        try:
            self.logger.info('Start: is assign accounting codes page title available')
            is_available = self._business_admin_page.is_assign_accounting_codes_page_title_available()
        except WebDriverException as exp:
            is_available = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is assign accounting codes page title available')
            return is_available

    def get_source_grid_cpl_prev_date_override(self):
        """
        Returning get source grid cpl prev date override
        Implementing logging for get source grid cpl prev date override functionality
        :return: cpl_prev_date_override
        """
        cpl_prev_date_override = None
        try:
            self.logger.info('Start: get source grid cpl prev date override')
            cpl_prev_date_override = self._business_admin_page.get_source_grid_cpl_prev_date_override()
        except WebDriverException as exp:
            cpl_prev_date_override = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get source grid cpl prev date override')
            return cpl_prev_date_override

    def set_source_grid_cpl_prev_date_override(self, cpl_prev_date_override):
        """
        Returning set source grid cpl prev date override
        Implementing logging for set source grid cpl prev date override functionality
        :param cpl_prev_date_override:
        :return:
        """
        is_set = None
        try:
            self.logger.info('Start: set source grid cpl prev date override')
            self._business_admin_page.set_source_grid_cpl_prev_date_override(cpl_prev_date_override)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set source grid cpl prev date override')
            return is_set

    def set_company_grid_settings(self, grid_settings):
        """
        Returning set company grid settings
        Implementing logging for set company grid settings functionality
        :param grid_settings:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set company grid settings')
            self._business_admin_page.set_company_grid_settings(grid_settings)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set company grid settings')
            return is_set

    def get_all_rows_of_specific_column_from_company_grid(self, column_name):
        """
        Returning get all rows of specific column from company grid
        Implementing logging for get all rows of specific column from company grid functionality
        :param column_name:
        :return: all_row_data
        """
        all_row_data = None
        try:
            self.logger.info('Start: get all rows of specific column from company grid')
            all_row_data = self._business_admin_page.get_all_rows_of_specific_column_from_company_grid(column_name)
        except WebDriverException as exp:
            all_row_data = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get all rows of specific column from company grid')
            return all_row_data

    def sort_company_grid_column(self, column_name, descending_order=False):
        """
        Returning sort company grid column
        Implementing logging for sort company grid column functionality
        :param column_name:
        :param descending_order:
        :return: True/False
        """
        is_sorted = None
        try:
            self.logger.info('Start: sort company grid column')
            self._business_admin_page.sort_company_grid_column(column_name, descending_order)
            is_sorted = True
        except WebDriverException as exp:
            is_sorted = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: sort company grid column')
            return is_sorted

    def get_company_grid_column_names_by_order(self):
        """
        Returning get company grid column names by order
        Implementing logging for get company grid column names by order functionality
        :return: column_name_list
        """
        column_name_list = None
        try:
            self.logger.info('Start: get company grid column names by order')
            column_name_list = self._business_admin_page.get_company_grid_column_names_by_order()
        except WebDriverException as exp:
            column_name_list = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get company grid column names by order')
            return column_name_list

    def drag_company_grid_column(self, source_column, destination_column):
        """
        Returning drag company grid column
        Implementing logging for drag company grid column functionality
        :param source_column:
        :param destination_column:
        :return: True/False
        """
        is_dragged = None
        try:
            self.logger.info('Start: drag company grid column')
            self._business_admin_page.drag_company_grid_column(source_column, destination_column)
            is_dragged = True
        except WebDriverException as exp:
            is_dragged = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: drag company grid column')
            return is_dragged

    def click_new_company_button(self):
        """
        Returning click new company button
        Implementing logging for click new company button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click new company button')
            self._business_admin_page.click_new_company_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click new company button')
            return is_clicked

    def set_business_admin_company_name(self, company_prefix):
        """
        Returning set business admin company name
        Implementing logging for set business admin company name functionality
        :param company_prefix:
        :return: True/False
        """
        status = None
        try:
            self.logger.info('Start: set business admin company name')
            self._business_admin_page.set_business_admin_company_name(company_prefix)
            status = True
        except WebDriverException as exp:
            status = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set business admin company name')
            return status

    def click_company_save_button(self):
        """
        Returning click company save button
        Implementing logging for click company save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click company save button')
            self._business_admin_page.click_company_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click company save button')
            return is_clicked

    def filter_company_grid(self, column_name, column_value):
        """
        Returning filter company grid
        Implementing logging for filter company grid functionality
        :param column_name:
        :param column_value:
        :return:
        """
        is_filtered = None
        try:
            self.logger.info('Start: filter company grid')
            self._business_admin_page.filter_company_grid(column_name, column_value)
            is_filtered = True
        except WebDriverException as exp:
            is_filtered = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: filter company grid')
            return is_filtered

    def get_business_admin_company_name(self):
        """
        Returning get business admin company name
        Implementing logging for get business admin company name functionality
        :return: source name
        """
        try:
            self.logger.info('Start: get business admin company name')
            return self._business_admin_page.get_business_admin_company_name()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get business admin company name')

    def get_duplicate_company(self, server, database, user, password):
        """
        Returning get duplicate company from database
        Implementing logging for get duplicate company from database functionality
        :param server:
        :param database:
        :param user:
        :param password:
        :return: agreement
        """
        try:
            self.logger.info('Start: get duplicate company from database')
            return self._business_admin_page.get_duplicate_company(server, database, user, password)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get duplicate company from database')

    def set_company_for_search(self, *company_name):
        """
        Returning set company for search
        Implementing logging for company set for search functionality
        :param company_name:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set company for search')
            self._business_admin_page.set_company_for_search(company_name)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set company for search')
            return is_set

    def set_company_code(self, company_code_prefix):
        """
        Returning set company code
        Implementing logging for set company code functionality
        :param company_code_prefix:
        :return: company_code
        """
        is_set = None
        try:
            self.logger.info('Start: set company code')
            self._business_admin_page.set_company_code(company_code_prefix)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set company code')
            return is_set

    def get_pending_jobs_count(self):
        """
        Returning get pending jobs count
        Implementing logging for get pending jobs count functionality
        :return: grid_row_data
        """
        try:
            self.logger.info('Start: get pending jobs count')
            return self._business_admin_page.get_pending_jobs_count()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get pending jobs count')

    def compare_number_plan_uploads_grid_row_count_after_upload_for_pending_job(self):
        """
        Returning compare number plan uploads grid row count after upload for pending job
        Implementing logging for compare number plan uploads grid row count after upload for pending job functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: compare number plan uploads grid row count after upload for pending job')
            return self._business_admin_page.compare_number_plan_uploads_grid_row_count_after_upload_for_pending_job()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare number plan uploads grid row count after upload for pending job')

    def set_number_plan_upload_multiple_status(self, *status_list):
        """
        Returning set number plan upload multiple status
        Implementing logging for set number plan upload multiple status functionality
        :param status_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set number plan upload multiple status')
            if len(status_list) > 0:
                self._business_admin_page.set_number_plan_upload_multiple_status(status_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set number plan upload multiple status')
            return is_set

    def set_static_number_plan_uploads_number_plan_type(self, number_plan_type):
        """
        Returning set static number plan uploads number plan type
        Implementing logging for set static number plan uploads number plan type functionality
        :param number_plan_type:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set static number plan uploads number plan type')
            if number_plan_type != "":
                self._business_admin_page.set_static_number_plan_uploads_number_plan_type(number_plan_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set static number plan uploads number plan type')
            return is_set

    def is_reference_number_plan_template_download_link_present(self):
        """
        Returning is reference number plan template download link present
        Implementing logging for is reference number plan template download link present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is reference number plan template download link present')
            return self._business_admin_page.is_reference_number_plan_template_download_link_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is reference number plan template download link present')

    def set_internal_cost_adjustments_grid_settings(self, grid_settings):
        """
        Returning set internal cost adjustments grid settings
        Implementing logging for set internal cost adjustments grid settings functionality
        :param grid_settings:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set internal cost adjustments grid settings')
            self._business_admin_page.set_internal_cost_adjustments_grid_settings(grid_settings)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set internal cost adjustments grid settings')
            return is_set

    def sort_internal_cost_adjustments_grid_column(self, column_name, descending_order=False):
        """
        Returning sort internal cost adjustments grid column
        Implementing logging for sort internal cost adjustments grid column functionality
        :param column_name:
        :param descending_order:
        :return: True/False
        """
        is_sorted = None
        try:
            self.logger.info('Start: sort internal cost adjustments grid column')
            self._business_admin_page.sort_internal_cost_adjustments_grid_column(column_name, descending_order)
            is_sorted = True
        except WebDriverException as exp:
            is_sorted = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: sort internal cost adjustments grid column')
            return is_sorted

    def get_all_rows_of_specific_column_from_internal_cost_adjustments_grid(self, column_name):
        """
        Returning get all rows of specific column from internal cost adjustments grid
        Implementing logging for get all rows of specific column from internal cost adjustments grid functionality
        :param column_name:
        :return: all_row_data
        """
        all_row_data = None
        try:
            self.logger.info('Start: get all rows of specific column from internal cost adjustments grid')
            all_row_data = self._business_admin_page.get_all_rows_of_specific_column_from_internal_cost_adjustments_grid(column_name)
        except WebDriverException as exp:
            all_row_data = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get all rows of specific column from internal cost adjustments grid')
            return all_row_data

    def drag_internal_cost_adjustments_grid_column(self, source_column, destination_column):
        """
        Returning drag internal cost adjustments grid column
        Implementing logging for drag internal cost adjustments grid column functionality
        :param source_column:
        :param destination_column:
        :return: True/False
        """
        is_dragged = None
        try:
            self.logger.info('Start: drag internal cost adjustments grid column')
            self._business_admin_page.drag_internal_cost_adjustments_grid_column(source_column, destination_column)
            is_dragged = True
        except WebDriverException as exp:
            is_dragged = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: drag internal cost adjustments grid column')
            return is_dragged

    def get_internal_cost_adjustments_grid_column_names_by_order(self):
        """
        Returning get internal cost adjustments grid column names by order
        Implementing logging for get internal cost adjustments grid column names by order functionality
        :return: column_name_list
        """
        column_name_list = None
        try:
            self.logger.info('Start: get internal cost adjustments grid column names by order')
            column_name_list = self._business_admin_page.get_internal_cost_adjustments_grid_column_names_by_order()
        except WebDriverException as exp:
            column_name_list = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get internal cost adjustments grid column names by order')
            return column_name_list

    def click_internal_cost_adjustments_grid_export_to_excel_button(self):
        """
        Returning click internal cost adjustments grid export to excel button
        Implementing logging for click internal cost adjustments grid export to excel button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click internal cost adjustments grid export to excel button')
            self._business_admin_page.click_internal_cost_adjustments_grid_export_to_excel_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click internal cost adjustments grid export to excel button')
            return is_clicked

    def set_regions_grid_settings(self, grid_settings):
        """
        Returning set regions grid settings
        Implementing logging for set regions grid settings functionality
        :param grid_settings:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set regions grid settings')
            self._business_admin_page.set_regions_grid_settings(grid_settings)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set regions grid settings')
            return is_set

    def sort_regions_grid_column(self, column_name, descending_order=False):
        """
        Returning sort regions grid column
        Implementing logging for sort regions grid column functionality
        :param column_name:
        :param descending_order:
        :return: True/False
        """
        is_sorted = None
        try:
            self.logger.info('Start: sort regions grid column')
            self._business_admin_page.sort_regions_grid_column(column_name, descending_order)
            is_sorted = True
        except WebDriverException as exp:
            is_sorted = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: sort regions grid column')
            return is_sorted

    def get_all_rows_of_specific_column_from_regions_grid(self, column_name):
        """
        Returning get all rows of specific column from regions grid
        Implementing logging for get all rows of specific column from regions grid functionality
        :param column_name:
        :return: all_row_data
        """
        all_row_data = None
        try:
            self.logger.info('Start: get all rows of specific column from regions grid')
            all_row_data = self._business_admin_page.get_all_rows_of_specific_column_from_regions_grid(column_name)
        except WebDriverException as exp:
            all_row_data = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get all rows of specific column from regions grid')
            return all_row_data

    def drag_regions_grid_column(self, source_column, destination_column):
        """
        Returning drag regions grid column
        Implementing logging for drag regions grid column functionality
        :param source_column:
        :param destination_column:
        :return: True/False
        """
        is_dragged = None
        try:
            self.logger.info('Start: drag regions grid column')
            self._business_admin_page.drag_regions_grid_column(source_column, destination_column)
            is_dragged = True
        except WebDriverException as exp:
            is_dragged = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: drag regions grid column')
            return is_dragged

    def get_regions_grid_column_names_by_order(self):
        """
        Returning get regions grid column names by order
        Implementing logging for get regions grid column names by order functionality
        :return: column_name_list
        """
        column_name_list = None
        try:
            self.logger.info('Start: get regions grid column names by order')
            column_name_list = self._business_admin_page.get_regions_grid_column_names_by_order()
        except WebDriverException as exp:
            column_name_list = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get regions grid column names by order')
            return column_name_list

    def click_regions_grid_export_to_excel_button(self):
        """
        Returning click regions grid export to excel button
        Implementing logging for click regions grid export to excel button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click regions grid export to excel button')
            self._business_admin_page.click_regions_grid_export_to_excel_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click regions grid export to excel button')
            return is_clicked

    def set_country_groups_grid_settings(self, grid_settings):
        """
        Returning set country groups grid settings
        Implementing logging for set country groups grid settings functionality
        :param grid_settings:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set country groups grid settings')
            self._business_admin_page.set_country_groups_grid_settings(grid_settings)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set country groups grid settings')
            return is_set

    def sort_country_groups_grid_column(self, column_name, descending_order=False):
        """
        Returning sort country groups grid column
        Implementing logging for sort country groups grid column functionality
        :param column_name:
        :param descending_order:
        :return: True/False
        """
        is_sorted = None
        try:
            self.logger.info('Start: sort country groups grid column')
            self._business_admin_page.sort_country_groups_grid_column(column_name, descending_order)
            is_sorted = True
        except WebDriverException as exp:
            is_sorted = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: sort country groups grid column')
            return is_sorted

    def get_all_rows_of_specific_column_from_country_groups_grid(self, column_name):
        """
        Returning get all rows of specific column from country groups grid
        Implementing logging for get all rows of specific column from country groups grid functionality
        :param column_name:
        :return: all_row_data
        """
        all_row_data = None
        try:
            self.logger.info('Start: get all rows of specific column from country groups grid')
            all_row_data = self._business_admin_page.get_all_rows_of_specific_column_from_country_groups_grid(column_name)
        except WebDriverException as exp:
            all_row_data = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get all rows of specific column from country groups grid')
            return all_row_data

    def drag_country_groups_grid_column(self, source_column, destination_column):
        """
        Returning drag country groups grid column
        Implementing logging for drag country groups grid column functionality
        :param source_column:
        :param destination_column:
        :return: True/False
        """
        is_dragged = None
        try:
            self.logger.info('Start: drag country groups grid column')
            self._business_admin_page.drag_country_groups_grid_column(source_column, destination_column)
            is_dragged = True
        except WebDriverException as exp:
            is_dragged = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: drag country groups grid column')
            return is_dragged

    def get_country_groups_grid_column_names_by_order(self):
        """
        Returning get country groups grid column names by order
        Implementing logging for get country groups grid column names by order functionality
        :return: column_name_list
        """
        column_name_list = None
        try:
            self.logger.info('Start: get country groups grid column names by order')
            column_name_list = self._business_admin_page.get_country_groups_grid_column_names_by_order()
        except WebDriverException as exp:
            column_name_list = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get country groups grid column names by order')
            return column_name_list

    def click_country_groups_grid_export_to_excel_button(self):
        """
        Returning click country groups grid export to excel button
        Implementing logging for click country groups grid export to excel button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click country groups grid export to excel button')
            self._business_admin_page.click_country_groups_grid_export_to_excel_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click country groups grid export to excel button')
            return is_clicked

    def compare_country_group_grid_modified_by_column_value(self, user_name):
        """
        Returning compare country group grid modified by column value
        Implementing logging for compare country group grid modified by column value functionality
        :param user_name:
        :return: True/False
        """
        is_matched = None
        try:
            self.logger.info('Start: compare country group grid modified by column value')
            is_matched = self._business_admin_page.compare_country_group_grid_modified_by_column_value(user_name)
        except WebDriverException as exp:
            is_matched = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare country group grid modified by column value')
            return is_matched

    def get_currency_grid_currency_column_value(self):
        """
        Returning get currency grid currency column value
        Implementing logging for get currency grid currency column value functionality
        :return: currency_column_value
        """
        try:
            self.logger.info('Start: get currency grid currency column value')
            return self._business_admin_page.get_currency_grid_currency_column_value()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get currency grid currency column value')

    def is_error_message_displayed_for_duplicate_currency(self):
        """
        Returning is error message displayed for duplicate currency
        Implementing logging for is error message displayed for duplicate currency functionality
        :return:
        """
        try:
            self.logger.info('Start: is error message displayed for duplicate currency')
            return self._business_admin_page.is_error_message_displayed_for_duplicate_currency()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is error message displayed for duplicate currency')

    def is_country_code_displayed_with_country_name(self):
        """
        Returning is country code displayed with country name
        Implementing logging for is country code displayed with country name functionality
        :return: True/False
        """
        is_displayed = None
        try:
            self.logger.info('Start: is country code displayed with country name')
            is_displayed = self._business_admin_page.is_country_code_displayed_with_country_name()
        except WebDriverException as exp:
            is_displayed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is country code displayed with country name')
            return is_displayed

    def move_assigned_countries_to_source(self):
        """
        Returning move assigned countries to source
        Implementing move assigned countries to source functionality
        :return:
        """
        is_moved = None
        try:
            self.logger.info('Start: move assigned countries to source')
            self._business_admin_page.move_assigned_countries_to_source()
            is_moved = True
        except WebDriverException as exp:
            is_moved = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: move assigned countries to source')
            return is_moved

    def verify_save_country_group_error_message(self):
        """
        Returning verify save country group error message
        Implementing logging for verify save country group error message functionality
        :return: True/False
        """
        is_verified = None
        try:
            self.logger.info('Start: verify save country group error message')
            self._business_admin_page.verify_save_country_group_error_message()
            is_verified = True
        except WebDriverException as exp:
            is_verified = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: verify save country group error message')
            return is_verified

    def click_country_group_cancel_button(self):
        """
        Returning click country group cancel button
        Implementing logging for click country group cancel button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click country group cancel button')
            self._business_admin_page.click_country_group_cancel_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click country group cancel button')
            return is_clicked

    def set_number_plan_type(self, number_plan_type):
        """
        Returning set number plan type
        Implementing logging for set number plan type functionality
        :param number_plan_type:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set number plan type')
            if number_plan_type != "":
                self._business_admin_page.set_number_plan_type(number_plan_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set upload number plan type')
            return is_set

    def is_number_plan_search_result_matched(self, number_plan_type):
        """
        Returning is number plan search result matched
        Implementing logging for is number plan search result matched functionality
        :param number_plan_type:
        :return: True/False
        """
        is_matched = None
        try:
            self.logger.info('Start: is number plan search result matched')
            is_matched = self._business_admin_page.is_number_plan_search_result_matched(number_plan_type)
        except WebDriverException as exp:
            is_matched = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is number plan search result matched')
            return is_matched

    def click_buy_and_sell_deal_management_grid_first_row_inline_action_button(self):
        """
        Returning click buy and sell deal management grid first row inline action button
        Implementing logging for click buy and sell deal management grid first row inline action button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click buy and sell deal management grid first row inline action button')
            self._business_admin_page.click_buy_and_sell_deal_management_grid_first_row_inline_action_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click buy and sell deal management grid first row inline action button')
            return is_clicked

    def is_account_label_displayed_correctly(self):
        """
        Returning is account label displayed correctly
        Implementing logging for is account label displayed correctly functionality
        :return: True/False
        """
        is_displayed = None
        try:
            self.logger.info('Start: is account label displayed correctly')
            is_displayed = self._business_admin_page.is_account_label_displayed_correctly()
        except WebDriverException as exp:
            is_displayed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is account label displayed correctly')
            return is_displayed

    def is_account_manager_label_displayed_correctly(self):
        """
        Returning is account manager label displayed correctly
        Implementing logging for is account manager label displayed correctly functionality
        :return: True/False
        """
        is_displayed = None
        try:
            self.logger.info('Start: is account manager label displayed correctly')
            is_displayed = self._business_admin_page.is_account_manager_label_displayed_correctly()
        except WebDriverException as exp:
            is_displayed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is account manager label displayed correctly')
            return is_displayed

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
            self._business_admin_page.set_country_group_management_grid_settings(grid_settings)
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
            all_row_data = self._business_admin_page.get_all_rows_of_specific_column_from_country_group_management_grid(column_name)
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
            self._business_admin_page.sort_country_group_management_grid_column(column_name, descending_order)
            is_sorted = True
        except WebDriverException as exp:
            is_sorted = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: sort country group management grid column')
            return is_sorted

    def get_country_group_management_grid_column_names_by_order(self):
        """
        Returning get country group management grid column names by order
        Implementing logging for get country group management grid column names by order functionality
        :return: column_name_list
        """
        column_name_list = None
        try:
            self.logger.info('Start: get country group management grid column names by order')
            column_name_list = self._business_admin_page.get_country_group_management_grid_column_names_by_order()
        except WebDriverException as exp:
            column_name_list = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get country group management grid column names by order')
            return column_name_list

    def drag_country_group_management_grid_column(self, source_column, destination_column):
        """
        Returning drag country group management grid column
        Implementing logging for drag country group management grid column functionality
        :param source_column:
        :param destination_column:
        :return: True/False
        """
        is_dragged = None
        try:
            self.logger.info('Start: drag country group management grid column')
            self._business_admin_page.drag_country_group_management_grid_column(source_column, destination_column)
            is_dragged = True
        except WebDriverException as exp:
            is_dragged = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: drag country group management grid column')
            return is_dragged

    def click_country_group_submenu(self):
        """
        Returning click country group submenu
        Implementing logging for click country group submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click country group submenu')
            self._business_admin_page.click_country_group_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click country group submenu')
            return is_clicked

    def filter_source_and_policies_grid_column_with_checkbox(self, column_name, checked_status):
        """
        Returning filter source and policies grid column with checkbox
        Implementing logging for filter source and policies grid column with checkbox functionality
        :param column_name:
        :param checked_status:
        :return: True/False
        """
        is_filtered = None
        try:
            self.logger.info('Start: filter source and policies grid column with checkbox')
            self._business_admin_page.filter_source_and_policies_grid_column_with_checkbox(column_name, checked_status)
            is_filtered = True
        except WebDriverException as exp:
            is_filtered = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: filter source and policies grid column with checkbox')
            return is_filtered

    def select_source_and_policies_first_row_automate_export_checkbox(self, source):
        """
        Returning select source and policies first row automate export checkbox
        Implementing logging for select source and policies first row automate export checkbox functionality
        :param source:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select source and policies first row automate export checkbox')
            self._business_admin_page.select_source_and_policies_first_row_automate_export_checkbox(source)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select source and policies first row automate export checkbox')
            return is_selected

    def is_source_policies_grid_automate_export_checkbox_checked(self, check, *source_list):
        """
        Returning is source policies grid automate export checkbox checked
        Implementing logging for is source policies grid automate export checkbox checked functionality
        :param check:
        :param source_list:
        :return: True/False
        """
        is_checked = True
        try:
            self.logger.info('Start: is source policies grid automate export checkbox checked')
            if check is False:
                is_checked = self._business_admin_page.is_source_policies_grid_automate_export_checkbox_checked(source_list)
        except WebDriverException as exp:
            is_checked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is source policies grid automate export checkbox checked')
            return is_checked

    def select_opened_tab(self, tab_name):
        """
        Returning select opened tab
        Implementing logging for select opened tab functionality
        :param tab_name:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select opened tab')
            self._business_admin_page.select_opened_tab(tab_name)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select opened tab')
            return is_selected

    def click_origin_set_search_button_for_new_tab(self):
        """
        Returning click origin set search button for new tab
        Implementing logging for click origin set search button for new tab functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click origin set search button for new tab')
            self._business_admin_page.click_origin_set_search_button_for_new_tab()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click origin set search button for new tab')
            return is_clicked

    def get_origin_set_grid_row_count(self):
        """
        Returning get origin set grid row count
        Implementing logging for get origin set grid row count functionality
        :return: grid_row_count
        """
        grid_row_count = None
        try:
            self.logger.info('Start: get origin set grid row count')
            grid_row_count = self._business_admin_page.get_origin_set_grid_row_count()
        except WebDriverException as exp:
            grid_row_count = 0
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get origin set grid row count')
            return grid_row_count

    def get_new_tab_origin_set_grid_row_count(self):
        """
        Returning get new tab origin set grid row count
        Implementing logging for get new tab origin set grid row count functionality
        :return: grid_row_count
        """
        grid_row_count = None
        try:
            self.logger.info('Start: get new tab origin set grid row count')
            grid_row_count = self._business_admin_page.get_new_tab_origin_set_grid_row_count()
        except WebDriverException as exp:
            grid_row_count = 0
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get new tab origin set grid row count')
            return grid_row_count

    def is_country_bulk_edit_pop_up_present(self):
        """
        Returning is country bulk edit pop up present
        Implementing logging for is country bulk edit pop up present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is country bulk edit pop up present')
            return self._business_admin_page.is_country_bulk_edit_pop_up_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is country bulk edit pop up present')

    def select_countries_grid_first_row_checkbox(self):
        """
        Returning select countries grid first row checkbox
        Implementing logging for select countries grid first row checkbox functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select countries grid first row checkbox')
            self._business_admin_page.select_countries_grid_first_row_checkbox()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select countries grid first row checkbox')
            return is_selected

    def is_network_code_save_changes_button_present(self):
        """
        Returning is network code save changes button present
        Implementing logging for is network code save changes button present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is network code save changes button present')
            return self._business_admin_page.is_network_code_save_changes_button_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is network code save changes button present')

    def is_network_code_cancel_changes_button_present(self):
        """
        Returning is network code cancel changes button present
        Implementing logging for is network code cancel changes button present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is network code cancel changes button present')
            return self._business_admin_page.is_network_code_cancel_changes_button_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is network code cancel changes button present')

    def is_cdr_match_save_changes_button_present(self):
        """
        Returning is cdr match save changes button present
        Implementing logging for is cdr match save changes button present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is cdr match save changes button present')
            return self._business_admin_page.is_cdr_match_save_changes_button_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is cdr match save changes button present')

    def is_cdr_match_cancel_changes_button_present(self):
        """
        Returning is cdr match cancel changes button present
        Implementing logging for is cdr match cancel changes button present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is cdr match cancel changes button present')
            return self._business_admin_page.is_cdr_match_cancel_changes_button_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is cdr match cancel changes button present')

    def is_network_code_save_changes_button_not_present(self):
        """
        Returning is network code save changes button not present
        Implementing logging for is network code save changes button not present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is network code save changes button not present')
            return self._business_admin_page.is_network_code_save_changes_button_not_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is network code save changes button not present')

    def is_network_code_cancel_changes_button_not_present(self):
        """
        Returning is network code cancel changes button not present
        Implementing logging for is network code cancel changes button not present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is network code cancel changes button not present')
            return self._business_admin_page.is_network_code_cancel_changes_button_not_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is network code cancel changes button not present')

    def is_cdr_match_save_changes_button_not_present(self):
        """
        Returning is cdr match save changes button not present
        Implementing logging for is cdr match save changes button not present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is cdr match save changes button not present')
            return self._business_admin_page.is_cdr_match_save_changes_button_not_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is cdr match save changes button not present')

    def is_cdr_match_cancel_changes_button_not_present(self):
        """
        Returning is cdr match cancel changes button not present
        Implementing logging for is cdr match cancel changes button not present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is cdr match cancel changes button not present')
            return self._business_admin_page.is_cdr_match_cancel_changes_button_not_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is cdr match cancel changes button not present')

    def click_request_new_deal_button(self):
        """
        Returning click request new deal button
        Implementing logging for click request new deal button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click request new deal button')
            self._business_admin_page.click_request_new_deal_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click request new deal button')
            return is_clicked

    def set_buy_and_sell_deal_name(self, buy_and_sell_deal_prefix):
        """
        Returning set buy and sell deal name
        Implementing logging for set buy and sell deal name functionality
        :param buy_and_sell_deal_prefix:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set buy and sell deal name')
            self._business_admin_page.set_buy_and_sell_deal_name(buy_and_sell_deal_prefix)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set buy and sell deal name')
            return is_set

    def set_buy_sell_deal_account(self, *account_list):
        """
        Returning set buy sell deal account
        Implementing logging for set buy sell deal account functionality
        :param account_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set buy sell deal account')
            self._business_admin_page.set_buy_sell_deal_account(account_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set buy sell deal account')
            return is_set

    def set_vendor(self, *vendor_list):
        """
        Returning set vendor
        Implementing logging for set vendor functionality
        :param vendor_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set vendor')
            self._business_admin_page.set_vendor(vendor_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set vendor')
            return is_set

    def set_customer(self, *customer_list):
        """
        Returning set customer
        Implementing logging for set customer functionality
        :param customer_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set customer')
            self._business_admin_page.set_customer(customer_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set customer')
            return is_set

    def click_buy_and_sell_deal_create_button(self):
        """
        Returning click buy and sell deal create button
        Implementing logging for click buy and sell deal create button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click buy and sell deal create button')
            self._business_admin_page.click_buy_and_sell_deal_create_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click buy and sell deal create button')
            return is_clicked

    def get_buy_and_sell_deal_name(self):
        """
        Returning get buy and sell deal name
        Implementing logging for get buy and sell deal name functionality
        :return: buy and sell deal name
        """
        try:
            self.logger.info('Start: get buy and sell deal name')
            return self._business_admin_page.get_buy_and_sell_deal_name()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get buy and sell deal name')

    def click_vendor_grid_add_destination_button(self):
        """
        Returning click vendor grid add destination button
        Implementing logging for click vendor grid add destination button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click vendor grid add destination button')
            self._business_admin_page.click_vendor_grid_add_destination_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click vendor grid add destination button')
            return is_clicked

    def set_source_to_add_destination(self, source_name):
        """
        Returning set source to add destination
        Implementing logging for set source to add destination functionality
        :param source_name:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set source to add destination')
            self._business_admin_page.set_source_to_add_destination(source_name)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set source to add destination')
            return is_set

    def set_route_class_to_add_destination(self, *route_class_list):
        """
        Returning set route class to add destination
        Implementing logging for set route class to add destination functionality
        :param route_class_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set route class to add destination')
            self._business_admin_page.set_route_class_to_add_destination(route_class_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set route class to add destination')
            return is_set

    def set_destination_to_add_destination(self, *destination):
        """
        Returning set destination to add destination
        Implementing logging for set destination to add destination functionality
        :param destination:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set destination to add destination')
            self._business_admin_page.set_destination_to_add_destination(destination)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set destination to add destination')
            return is_set

    def set_deal_rate_to_add_destination(self, deal_rate):
        """
        Returning set deal rate to add destination
        Implementing logging for set deal rate to add destination functionality
        :param deal_rate:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set deal rate to add destination')
            self._business_admin_page.set_deal_rate_to_add_destination(deal_rate)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set deal rate to add destination')
            return is_set

    def set_deal_volume_to_add_destination(self, deal_volume):
        """
        Returning set deal volume to add destination
        Implementing logging for set deal volume to add destination functionality
        :param deal_volume:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set deal volume to add destination')
            self._business_admin_page.set_deal_volume_to_add_destination(deal_volume)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set deal volume to add destination')
            return is_set

    def click_customer_grid_add_destination_button(self):
        """
        Returning click customer grid add destination button
        Implementing logging for click customer grid add destination button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click customer grid add destination button')
            self._business_admin_page.click_customer_grid_add_destination_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click customer grid add destination button')
            return is_clicked

    def click_request_deal_button(self):
        """
        Returning click request deal button
        Implementing logging for click request deal button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click request deal button')
            self._business_admin_page.click_request_deal_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click request deal button')
            return is_clicked

    def click_add_destination_save_button(self):
        """
        Returning click add destination save button
        Implementing logging for click add destination save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click add destination save button')
            self._business_admin_page.click_add_destination_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click add destination save button')
            return is_clicked

    def click_network_destinations_grid_row_inline_action_button(self, network_destination):
        """
        Returning click network destinations grid row inline action button
        Implementing logging for click network destinations grid row inline action button functionality
        :param network_destination:
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click network destinations grid row inline action button')
            self._business_admin_page.click_network_destinations_grid_row_inline_action_button(network_destination)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click network destinations grid row inline action button')
            return is_clicked

    def is_internal_cost_adjustment_submenu_not_present(self):
        """
        Returning is internal cost adjustment submenu not present
        Implementing logging for is internal cost adjustment submenu not present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is internal cost adjustment submenu not present')
            return self._business_admin_page.is_internal_cost_adjustment_submenu_not_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is internal cost adjustment submenu not present')

    def set_country_grid_settings(self, grid_settings):
        """
        Returning set country grid settings
        Implementing logging for set country grid settings functionality
        :param grid_settings:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set country grid settings')
            self._business_admin_page.set_country_grid_settings(grid_settings)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set country grid settings')
            return is_set

    def drag_country_grid_column(self, source_column, destination_column):
        """
        Returning drag country grid column
        Implementing logging for drag country grid column functionality
        :param source_column:
        :param destination_column:
        :return: True/False
        """
        is_dragged = None
        try:
            self.logger.info('Start: drag country grid column')
            self._business_admin_page.drag_country_grid_column(source_column, destination_column)
            is_dragged = True
        except WebDriverException as exp:
            is_dragged = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: drag country grid column')
            return is_dragged

    def get_country_grid_column_names_by_order(self):
        """
        Returning get country grid column names by order
        Implementing logging for get country grid column names by order functionality
        :return: column_name_list
        """
        column_name_list = None
        try:
            self.logger.info('Start: get country grid column names by order')
            column_name_list = self._business_admin_page.get_country_grid_column_names_by_order()
        except WebDriverException as exp:
            column_name_list = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get country grid column names by order')
            return column_name_list

    def get_all_rows_of_specific_column_from_country_grid(self, column_name):
        """
        Returning get all rows of specific column from country grid
        Implementing logging for get all rows of specific column from country grid functionality
        :param column_name:
        :return: all_row_data
        """
        all_row_data = None
        try:
            self.logger.info('Start: get all rows of specific column from country grid')
            all_row_data = self._business_admin_page.get_all_rows_of_specific_column_from_country_grid(column_name)
        except WebDriverException as exp:
            all_row_data = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get all rows of specific column from country grid')
            return all_row_data

    def sort_country_grid_column(self, column_name, descending_order=False):
        """
        Returning sort country grid column
        Implementing logging for sort country grid column functionality
        :param column_name:
        :param descending_order:
        :return: True/False
        """
        is_sorted = None
        try:
            self.logger.info('Start: sort country grid column')
            self._business_admin_page.sort_country_grid_column(column_name, descending_order)
            is_sorted = True
        except WebDriverException as exp:
            is_sorted = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: sort country grid column')
            return is_sorted

    def click_my_price_list_submenu(self):
        """
        Returning click my price list submenu
        Implementing logging for click my price list submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click my price list submenu')
            self._business_admin_page.click_my_price_list_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click my price list submenu')
            return is_clicked

    def is_my_price_list_page_loaded_properly(self):
        """
        Returning is my price list page loaded properly
        Implementing logging for is my price list page loaded properly functionality
        :return: True/False
        """
        is_loaded_properly = None
        try:
            self.logger.info('Start: is my price list page loaded properly')
            is_loaded_properly = self._business_admin_page.is_my_price_list_page_loaded_properly()
        except WebDriverException as exp:
            is_loaded_properly = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is my price list page loaded properly')
            return is_loaded_properly

    def set_number_plan_grid_settings(self, grid_settings):
        """
        Returning set number plan grid settings
        Implementing logging for set number plan grid settings functionality
        :param grid_settings:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set number plan grid settings')
            self._business_admin_page.set_number_plan_grid_settings(grid_settings)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set number plan grid settings')
            return is_set

    def get_number_plan_grid_column_names_by_order(self):
        """
        Returning get number plan grid column names by order
        Implementing logging for get number plan grid column names by order functionality
        :return: column_name_list
        """
        column_name_list = None
        try:
            self.logger.info('Start: get number plan grid column names by order')
            column_name_list = self._business_admin_page.get_number_plan_grid_column_names_by_order()
        except WebDriverException as exp:
            column_name_list = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get number plan grid column names by order')
            return column_name_list

    def drag_number_plan_grid_column(self, source_column, destination_column):
        """
        Returning drag number plan grid column
        Implementing logging for drag number plan grid column functionality
        :param source_column:
        :param destination_column:
        :return: True/False
        """
        is_dragged = None
        try:
            self.logger.info('Start: drag number plan grid column')
            self._business_admin_page.drag_number_plan_grid_column(source_column, destination_column)
            is_dragged = True
        except WebDriverException as exp:
            is_dragged = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: drag number plan grid column')
            return is_dragged

    def get_all_rows_of_specific_column_from_number_plan_grid(self, column_name):
        """
        Returning get all rows of specific column from number plan grid
        Implementing logging for get all rows of specific column from number plan grid functionality
        :param column_name:
        :return: all_row_data
        """
        all_row_data = None
        try:
            self.logger.info('Start: get all rows of specific column from number plan grid')
            all_row_data = self._business_admin_page.get_all_rows_of_specific_column_from_number_plan_grid(column_name)
        except WebDriverException as exp:
            all_row_data = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get all rows of specific column from number plan grid')
            return all_row_data

    def sort_number_plan_grid_column(self, column_name, descending_order=False):
        """
        Returning sort number plan grid column
        Implementing logging for sort number plan grid column functionality
        :param column_name:
        :param descending_order:
        :return: True/False
        """
        is_sorted = None
        try:
            self.logger.info('Start: sort number plan grid column')
            self._business_admin_page.sort_number_plan_grid_column(column_name, descending_order)
            is_sorted = True
        except WebDriverException as exp:
            is_sorted = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: sort number plan grid column')
            return is_sorted

    def set_percentage(self):
        """
        Returning set percentage
        Implementing logging for set percentage functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set percentage')
            self._business_admin_page.set_percentage()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set percentage')
            return is_set

    def click_save_button_and_pass_the_error_message(self):
        """
        Returning click save button and pass the error message 
        Implementing logging for click save button and pass the error message functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click save button and pass the error message')
            self._business_admin_page.click_save_button_and_pass_the_error_message()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click save button and pass the error message')
            return is_clicked

    def is_specific_error_message_present(self, label_name, error_message):
        """
        Returning is specific error message present
        Implementing logging for is specific error message present functionality
        :param label_name:
        :param error_message:
        :return: True/False
        """
        try:
            self.logger.info('Start: is specific error message present')
            return self._business_admin_page.is_specific_error_message_present(label_name, error_message)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is specific error message present')

    def is_route_class_grid_column_present(self, column_name):
        """
        Returning is route class grid column present
        Implementing logging for is route class grid column present functionality
        :param column_name:
        :return: True/False
        """
        try:
            self.logger.info('Start: is route class grid column present')
            return self._business_admin_page.is_route_class_grid_column_present(column_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is route class grid column present')

    def is_custom_field_alias_present(self, field_alias_name):
        """
        Returning is custom field alias present
        Implementing logging for is custom field alias present functionality
        :param field_alias_name:
        :return:
        """
        try:
            self.logger.info('Start: is custom field alias present')
            return self._business_admin_page.is_custom_field_alias_present(field_alias_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: iis custom field alias present')

    def is_duplicate_cost_adjustment_error_message_pop_up_present(self):
        """
        Returning is duplicate cost adjustment error message pop up present
        Implementing logging for is duplicate cost adjustment error message present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is duplicate cost adjustment error message present')
            return self._business_admin_page.is_duplicate_cost_adjustment_error_message_pop_up_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is duplicate cost adjustment error message present')

    def click_number_plan_upload_job_notifier(self):
        """
        Returning click number plan upload job notifier
        Implementing logging for click number plan upload job notifier functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click number plan upload job notifier')
            self._business_admin_page.click_number_plan_upload_job_notifier()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click number plan upload job notifier')
            return is_clicked

    def get_jobs_grid_row_count(self):
        """
        Returning get jobs grid row count
        Implementing logging for get jobs grid row count functionality
        :return: True/False
        """
        is_got = None
        try:
            self.logger.info('Start: get jobs grid row count')
            self._business_admin_page.get_jobs_grid_row_count()
            is_got = True
        except WebDriverException as exp:
            is_got = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get jobs grid row count')
            return is_got

    def compare_jobs_grid_row_count(self):
        """
        Returning compare jobs grid row count
        Implementing logging for compare jobs grid row count functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: compare jobs grid row count')
            return self._business_admin_page.compare_jobs_grid_row_count()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare jobs grid row count')

    def is_expected_button_not_visible(self, button):
        """
        Returning is expected button not visible
        Implementing logging for is expected button not visible functionality
        :param button:
        :return:
        """
        try:
            self.logger.info('Start: is expected button not visible')
            return self._business_admin_page.is_expected_button_not_visible(button)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is expected button not visible')

    def get_category_name(self):
        """
        Returning get category name
        Implementing logging for get category name functionality
        :return: category_name
        """
        try:
            self.logger.info('Start: get category name')
            return self._business_admin_page.get_category_name()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get category name')

    def click_country_grid_first_row_inline_action_button(self):
        """
        Returning click country grid first row inline action button
        Implementing logging for click country grid first row inline action button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click country grid first row inline action button')
            self._business_admin_page.click_country_grid_first_row_inline_action_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click country grid first row inline action button')
            return is_clicked

    def click_country_delete_inline_item(self):
        """
        Returning click country delete inline item
        Implementing logging for click country delete inline item functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click country delete inline item')
            self._business_admin_page.click_country_delete_inline_item()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click country delete inline item')
            return is_clicked

    def is_specific_column_present_in_source_and_policy_grid(self, column_name):
        """
        Returning is specific column present in source and policy grid
        Implementing logging for is specific column present in source and policy grid functionality
        :param column_name:
        :return: True/False
        """
        try:
            self.logger.info('Start: is specific column present in source and policy grid')
            return self._business_admin_page.is_specific_column_present_in_source_and_policy_grid(column_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is specific column present in source and policy grid')

    def set_specific_textbox_column_in_source_and_policy_grid(self, column_name, prefix):
        """
        Returning set specific textbox column in source and policy grid
        Implementing logging for set specific textbox column in source and policy grid functionality
        :param column_name:
        :param prefix:
        :return: company_code
        """
        is_set = None
        try:
            self.logger.info('Start: set specific textbox column in source and policy grid')
            self._business_admin_page.set_specific_textbox_column_in_source_and_policy_grid(column_name, prefix)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set specific textbox column in source and policy grid')
            return is_set

    def set_specific_dropdown_column_in_source_and_policy_grid(self, column_name, prefix):
        """
        Returning set specific dropdown column in source and policy grid
        Implementing logging for set specific dropdown column in source and policy grid functionality
        :param column_name:
        :param prefix:
        :return: company_code
        """
        is_set = None
        try:
            self.logger.info('Start: set specific dropdown column in source and policy grid')
            self._business_admin_page.set_specific_dropdown_column_in_source_and_policy_grid(column_name, prefix)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set specific dropdown column in source and policy grid')
            return is_set

    def check_custom_rc_checkbox(self):
        """
        Returning check custom rc checkbox
        Implementing logging for check custom rc checkbox functionality
        :return:
        """
        is_checked = None
        try:
            self.logger.info('Start: check custom rc checkbox')
            self._business_admin_page.check_custom_rc_checkbox()
            is_checked = True
        except WebDriverException as exp:
            is_checked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: check custom rc checkbox')
            return is_checked

    def is_error_message_displayed_for_empty_search_criteria(self):
        """
        Returning is error message displayed for empty search criteria
        Implementing logging for is error message displayed for empty search criteria functionality
        :return:
        """
        try:
            self.logger.info('Start: is error message displayed for empty search criteria')
            return self._business_admin_page.is_error_message_displayed_for_empty_search_criteria()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is error message displayed for empty search criteria')

    def compare_begin_date_with_given_date(self, begin_date):
        """
        Returning compare begin date with given date
        Implementing logging for compare begin date with given date functionality
        :param begin_date:
        :return: True/False
        """
        try:
            self.logger.info('Start: compare begin date with given date')
            return self._business_admin_page.compare_begin_date_with_given_date(begin_date)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare begin date with given date')

    def compare_end_date_with_given_date(self, end_date):
        """
        Returning compare end date with given date
        Implementing logging for compare end date with given date functionality
        :param end_date:
        :return: True/False
        """
        try:
            self.logger.info('Start: compare end date with given date')
            return self._business_admin_page.compare_end_date_with_given_date(end_date)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare end date with given date')
