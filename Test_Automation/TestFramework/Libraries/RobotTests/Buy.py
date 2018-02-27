"""
Implementing Buy UI page actions
Implementing Logging mechanism for Buy UI page actions
"""

from selenium.common.exceptions import WebDriverException
from TestFramework.Libraries.logger import Logger
from TestFramework.Libraries.Pages.buy_page import BuyPage


class Buy:
    """
    Returning switch to buy page
    Returning buy page title
    Returning buy dashboard tab status
    Returning vendors tab status
    Returning country groups link status
    Returning re-analysis link status
    Returning select vendors tab
    Returning create vendor button status
    Returning vendor price lists button status
    Returning click buy page inline action button
    Returning select inline action item
    Returning is vendor profile present
    Returning is vendor rates present
    Returning is vendor digits present
    Returning is vendor destination present
    Returning is upload vendor price list present
    Returning inline action popup loading status
    Returning click on tab of vendor profile page
    Returning vendor profile page loading status
    Returning rates page loading status
    Returning dial digits page loading status
    Returning destinations page loading status
    Returning click on vendor price lists
    Returning set from date
    Returning set to date
    Returning click vendor price lists search button
    Returning verify price list item
    Returning click view price list detail page inline action button
    Returning search results displayed in the grid
    Returning grid filter details
    Returning click create vendor button
    Returning close current tab
    Returning set vendor name
    Returning set abbreviation
    Returning set ixtools account
    Returning set rate plan
    Returning set call type
    Returning set vendor profile status
    Returning click save vendor profile button
    Returning clear filter
    Returning random string generator
    Returning verify grid row data
    Returning get first row item from price lists grid
    Returning is view price list detail present
    Returning is analyze and complete present
    Returning verify selected vendor
    Returning verify selected price list
    Returning select tab of view price list detail page
    Returning rates tab loading status
    Returning dial digits tab loading status
    Returning reference rates tab loading status
    Returning set vendor price list status
    Returning click on analyze and complete inline action
    Returning select vendor price list grid row checkbox
    Returning click compare price lists button
    Returning verify selected price lists details
    Returning verify rates grid columns
    Returning select dial digits tab
    Returning verify dialed digits columns
    Returning close compare price lists pop up
    Returning click on browse button
    Returning select the file to be uploaded
    Returning click on upload button
    Returning click on vendor price list upload colored icon
    Returning click on vendor price list upload search button
    Returning set from date as current date
    Returning price list modified by user
    Returning price list status is pending
    Returning get vendor price lists grid number of rows
    Returning compare vendor price lists grid number of rows
    Returning verify vendor price lists details
    Returning get vendor price lists details
    Returning verify vendor price lists details on database
    Returning click view price list detail page inline action button
    Returning check has network code checkbox
    Returning read data from upload excel file
    Returning compare dialed digit with excel data
    Returning compare rates with excel data
    Returning compare destination with excel data
    Returning set rate catalog
    Returning set begin date
    Returning click search button
    Returning click vendor price list upload failed red icon
    Returning get jobs grid initial row count
    Returning compare jobs grid number of rows
    Returning sort reg time column in descending order
    Returning click error icon
    Returning close current pop up
    Returning non numeric dd invalid message shown status
    Returning has network code unchecked status
    Returning close buy window
    Returning click vendors grid first row inline action button
    Returning is upload vendor price list pop up available
    Returning click vendor price list grid first row inline action button
    Returning click export to excel button
    Returning get last price list from vendor grid
    Returning validate date format status
    Returning get cost column value
    Returning get created vendor name
    Returning get created carrier name
    Returning get created rate plan name
    Returning set vendors
    Returning get vendors grid margin column value
    Returning validate currency format
    Returning set rates destination
    Returning get last modified value
    Returning select rates tab
    Returning get begin date
    Returning get rates grid begin date
    Returning get rates grid last modified date
    Returning select dialed digits tab
    Returning get dialed digits grid begin date
    Returning get dialed digits grid last modified date
    Returning select destinations tab
    Returning get destinations grid begin date
    Returning get destinations grid last modified date
    Returning get vendor price list date
    Returning click upload cancel button
    Returning get vendor price lists from date value
    Returning get vendor price lists to date value
    Returning get price list date column value
    Returning get price list modified date column value
    Returning select buy dashboard tab
    Returning click country group 
    Returning get country group grid last modified date column value
    Returning set vendor grid settings
    Returning sort vendors grid column
    Returning get all rows of specific column from vendors grid
    Returning compare sorted data
    Returning drag vendors grid column
    Returning get vendors grid column names by order
    Returning compare grid column position after altering
    Returning set country group scope
    Returning set country groups grid settings
    Returning sort country groups grid column
    Returning get all rows of specific column from country groups grid
    Returning drag country groups grid column
    Returning get country groups grid column names by order
    Returning click re analysis link
    Returning set re analysis grid settings
    Returning sort re analysis grid column
    Returning get all rows of specific column from re analysis grid
    Returning drag re analysis grid column
    Returning get re analysis grid column names by order
    Returning click re analysis grid first row inline action button
    Returning sort re analysis detail grid column
    Returning get all rows of specific column from re analysis detail grid
    Returning drag re analysis detail grid column
    Returning get re analysis detail grid column names by order
    Returning select inline action item with module name
    Returning set vendor price lists grid settings
    Returning sort vendor price lists grid column
    Returning get all rows of specific column from vendor price lists grid
    Returning drag vendor price lists grid column
    Returning get vendor price lists grid column names by order
    Returning sort rates grid column
    Returning get all rows of specific column from rates grid
    Returning drag rates grid column
    Returning get rates grid column names by order
    Returning sort destinations grid column
    Returning get all rows of specific column from destinations grid
    Returning drag destinations grid column
    Returning get destinations grid column names by order
    Returning sort dialed digits grid column
    Returning get all rows of specific column from dialed digits grid
    Returning drag dialed digits grid column
    Returning get dialed digits grid column names by order
    Returning set vendor price list detail grid settings
    Returning sort vendor price list detail grid column
    Returning get all rows of specific column from vendor price list detail grid
    Returning drag vendor price list detail grid column
    Returning get vendor price list detail grid column names by order
    Returning compare digits tab name
    Returning set vendor price list detail dial digits grid settings
    Returning sort vendor price list detail dial digits grid column
    Returning get all rows of specific column from vendor price list detail dial digits grid
    Returning drag vendor price list detail dial digits grid column
    Returning get vendor price list detail dial digits grid column names by order
    Returning set vendor price list detail reference rates grid settings
    Returning sort vendor price list detail reference rates grid column
    Returning get all rows of specific column from vendor price list detail reference rates grid
    Returning drag vendor price list detail reference rates grid column
    Returning get vendor price list detail reference rates grid column names by order
    Returning click vendor price list detail rates grid export to excel button
    Returning click vendor price list detail dial digits grid export to excel button
    Returning click vendor price list detail reference rates grid export to excel button
    Returning click re analysis grid export to excel button
    Returning compare upload failure message
    Returning click failed upload info icon
    Returning compare failed upload info
    Returning Select qos tab
    Returning Compare qos with excel data
    Returning Is mnp column present
    Returning Is comments column present
    Returning get all rows of rate column from vendor price list detail grid
    Returning get all rows of rate increase violation column from vendor price list detail grid
    Returning is sorting option not available in destination column
    Returning is ixtools account present
    Returning is vendor price list not displayed in the grid
    Returning click guarantee cli checkbox
    Returning click exclude rating method from price list checkbox
    Returning set price list content
    Returning set country for search
    Returning is specific tab on vendor profile page present
    Returning is specific column on vendor profile page present
    Returning click reference rates show search form link
    Returning is view dropdown visible
    Returning is status dropdown visible
    Returning is discrepancy dropdown visible
    Returning is in routing flags dropdown visible
    Returning is rate textbox visible
    Returning is destination textbox visible
    Returning is reference rates grid accept column checkbox
    Returning is number plan changes grid header dialed digits mcc mnc
    Returning is country selection criteria field present in re analysis page
    Returning is country column present in re analysis page
    Returning is country selection criteria field present in vendor profile page
    Returning is country column present in vendor profile page
    Returning is country selection criteria field present in vendor profile dialed digits page
    Returning is country column present in vendor profile dialed digits page
    Returning is country selection criteria field present in vendor profile destinations page
    Returning is country column present in vendor profile destinations page
    Returning click search rate arrow button
    Returning is country selection criteria field present in view price list details rate page
    Returning is country column present in view price list details rate page
    Returning click search dialed digits arrow button
    Returning is country selection criteria field present in view price list details dialed digits page
    Returning is country column present in view price list details dialed digits page
    Returning click search ref rates arrow button
    Returning is country selection criteria field present in view price list ref rates digits page
    Returning is country column present in view price list details ref rates page
    Returning select reference rates tab
    Returning is country selection criteria field present in compare price list pop up
    Returning is country column present in compare price list pop up
    Returning select mcc mnc tab
    Returning click search mcc mnc arrow button
    Returning verify status filter
    Returning set re analysis status
    Returning click buy and sell deal management link status
    Returning click request new buy and sell deal
    Returning is buy and sell deal details screen status dropdown visible
    Returning is end date text box visible
    Returning is auto expire checkbox visible
    Returning proposed deal summary table column name verification
    Returning click request new deal button
    Returning set buy and sell deal name
    Returning set buy sell deal account
    Returning set vendor
    Returning set customer
    Returning click buy and sell deal create button
    Returning get buy and sell deal name
    Returning click buy and sell deal save button
    Returning set start date
    Returning set buy and sell management grid settings
    Returning sort buy and sell management grid column
    Returning get all rows of specific column from buy and sell management grid
    Returning drag buy and sell management grid column
    Returning get buy and sell management grid column names by order
    Returning click buy and sell management grid export to excel button
    Returning select buy and sell deal management grid first row checkbox
    Returning click buy and sell deal bulk edit button
    Returning set bulk edit end date
    Returning click bulk edit submit button
    Returning click save changes button
    Returning set multiple status
    Returning click buy and sell deal management grid first row inline action button
    Returning is account label displayed correctly
    Returning is account manager label displayed correctly
    Returning click vendor grid add destination button
    Returning set source to add destination
    Returning set route class to add destination
    Returning set destination to add destination
    Returning set deal rate to add destination
    Returning set deal volume to add destination
    Returning click customer grid add destination button
    Returning click request deal button
    Returning click add destination save button
    Returning compare vendor price list detail rates grid destination
    Returning compare vendor price list detail dial digits grid destination
    Returning compare vendor price list detail rates grid rate
    Returning get reference rates tab analyzed rate
    Returning get reference rates tab effective date
    Returning is target buy policies tab displayed
    Returning select target buy policies tab
    Returning is button displayed
    Returning is target buy policies grid column present
    Returning click target buy policies grid first row inline action button
    Returning is inline action item present
    Returning click create new target buy policy button
    Returning set target buy policy name
    Returning get target buy policy
    Returning set target buy policy abbreviation
    Returning set route class to create new target buy policy
    Returning click include cli checkbox
    Returning click automate generation checkbox
    Returning click save target buy policy button
    Returning is target buy details section present in vendor profile page
    Returning is specific field on target buy details section present
    Returning set target buy distribution link code
    Returning set target buy distribution receiving member
    Returning set target buy list
    Returning set target buy list number plan
    Returning click target buy overrides button
    Returning is target buy list overrides screen loaded
    Returning is expected dropdown list control visible
    Returning is destination input textbox visible
    Returning is expected grid column present
    Returning select multiple rows from target buy list overrides grid
    Returning click target buy list overrides bulk edit button
    Returning set target buy policy type
    Returning get target buy policy grid row details
    Returning click target buy policy grid first row inline action button
    Returning click edit target buy policy button
    Returning click save edited target buy policy button
    Returning click cancel edited target buy policy button
    Returning refresh window
    """
    ROBOT_LIBRARY_SCOPE = 'TEST SUITE'

    logger = Logger().get_logger('Buy')

    def __init__(self):
        self._buy_page = BuyPage()

    def switch_to_buy(self):
        """
        Returning switch to buy
        Implementing logging for switch to buy functionality
        :return: True/False
        """
        is_switched = None
        try:
            self.logger.info('Start: switch to buy method')
            self._buy_page.switch_to_buy()
            is_switched = True
        except WebDriverException as exp:
            is_switched = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: switch to buy method')
            return is_switched

    def get_buy_page_title(self):
        """
        Returning buy page title
        Implementing logging for get buy page title functionality
        :return: buy page title
        """
        try:
            self.logger.info('Start: get buy page title')
            return self._buy_page.get_buy_page_title()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get buy page title')

    def is_buy_dashboard_tab_present(self):
        """
        Returning buy dashboard tab status
        Implementing logging for buy dashboard tab present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is buy dashboard tab present')
            return self._buy_page.is_buy_dashboard_tab_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is buy dashboard tab present')

    def is_vendors_tab_present(self):
        """
        Returning vendors tab status
        Implementing logging for vendors tab present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is vendors tab present')
            return self._buy_page.is_vendors_tab_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is vendors tab present')

    def is_country_groups_link_present(self):
        """
        Returning country groups link status
        Implementing logging for country groups link present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is country groups link present')
            return self._buy_page.is_country_groups_link_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is country groups link present')

    def is_re_analysis_link_present(self):
        """
        Returning re-analysis link status
        Implementing logging for re-analysis link present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is re analysis link present')
            return self._buy_page.is_re_analysis_link_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is re analysis link present')

    def select_vendors_tab(self):
        """
        Returning select vendors tab
        Implementing logging for select vendors tab functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select vendors tab method')
            self._buy_page.select_vendors_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select vendors tab method')
            return is_selected

    def is_create_vendor_present(self):
        """
        Returning create vendor button status
        Implementing logging for create vendor button present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is create vendor present')
            return self._buy_page.is_create_vendor_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is create vendor present')

    def is_vendor_price_lists_present(self):
        """
        Returning vendor price lists button status
        Implementing logging for vendor price lists button present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is vendor price lists present')
            return self._buy_page.is_vendor_price_lists_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is vendor price lists present')

    def click_buy_page_inline_action_button(self, vendor):
        """
        Returning click buy page inline action button
        Implementing logging for click buy page inline action button
        :param vendor: vendor name
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click buy page inline action button')
            self._buy_page.click_buy_page_inline_action_button(vendor)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click buy page inline action button')
            return is_clicked

    def select_inline_action_item(self, item_name):
        """
        Returning select vendor profile from inline
        Implementing logging for select vendor profile from inline action
        :param item_name: inline item
        :return:
        """
        is_selected = None
        try:
            self.logger.info('Start: select vendor profile from inline action method')
            self._buy_page.select_inline_action_item(item_name)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select vendor profile from inline action method')
            return is_selected

    def is_vendor_profile_present(self):
        """
        Returning vendor profile inline item status
        Implementing logging for vendor profile inline item present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is vendor profile present')
            return self._buy_page.is_vendor_profile_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is vendor profile present')

    def is_vendor_rates_present(self):
        """
        Returning vendor rates inline item status
        Implementing logging for vendor rates inline item present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is vendor rates present')
            return self._buy_page.is_vendor_rates_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is vendor rates present')

    def is_vendor_digits_present(self):
        """
        Returning vendor digits inline item status
        Implementing logging for vendor digits inline item present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is vendor digits present')
            return self._buy_page.is_vendor_digits_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is vendor digits present')

    def is_vendor_destination_present(self):
        """
        Returning vendor destination inline item status
        Implementing logging for vendor destination inline item present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is vendor destination present')
            return self._buy_page.is_vendor_destination_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is vendor destination present')

    def is_upload_vendor_price_list_present(self):
        """
        Returning upload vendor price list inline item status
        Implementing logging for upload vendor price list inline item present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is upload vendor price list present')
            return self._buy_page.is_upload_vendor_price_list_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is upload vendor price list present')

    def is_inline_action_popup_loaded_properly(self):
        """
        Returning inline action popup loading status
        Implementing logging for inline action popup loaded properly functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is inline action popup loaded properly')
            return self._buy_page.is_inline_action_popup_loaded_properly()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is inline action popup loaded properly')

    def click_on_tab_of_vendor_profile_page(self, tab_name):
        """
        Returning click on tab of vendor profile page
        Implementing logging for click on tab of vendor profile page
        :param tab_name: name of the tab to be clicked
        :return:
        """
        is_clicked = None
        try:
            self.logger.info('Start: click on tab of vendor profile page')
            self._buy_page.click_on_tab_of_vendor_profile_page(tab_name)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click on tab of vendor profile page')
            return is_clicked

    def is_vendor_profile_page_loaded_properly(self):
        """
        Returning vendor profile page loading status
        Implementing logging for vendor profile page loaded properly functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is vendor profile page loaded properly')
            return self._buy_page.is_vendor_profile_page_loaded_properly()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is vendor profile page loaded properly')

    def is_rates_page_loaded_properly(self):
        """
        Returning rates page loading status
        Implementing logging for rates page loaded properly functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is rates page loaded properly')
            return self._buy_page.is_rates_page_loaded_properly()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is rates page loaded properly')

    def is_dial_digits_page_loaded_properly(self):
        """
        Returning dial digits page loading status
        Implementing logging for dial digits page loaded properly functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is dial digits page loaded properly')
            return self._buy_page.is_dial_digits_page_loaded_properly()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is dial digits page loaded properly')

    def is_destinations_page_loaded_properly(self):
        """
        Returning destinations page loading status
        Implementing logging for destinations page loaded properly functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is destinations page loaded properly')
            return self._buy_page.is_destinations_page_loaded_properly()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is destinations page loaded properly')

    def click_on_vendor_price_lists(self):
        """
        Returning click on vendor price lists
        Implementing logging for click on vendor price lists functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click on vendor price lists')
            self._buy_page.click_on_vendor_price_lists()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click on vendor price lists')
            return is_clicked

    def set_from_date(self, from_date):
        """
        Returning set from date
        Implementing logging for set from date functionality
        :return: True/False
        """
        is_date_set = None
        try:
            self.logger.info('Start: set from date')
            self._buy_page.set_from_date(from_date)
            is_date_set = True
        except WebDriverException as exp:
            is_date_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set from date')
            return is_date_set

    def set_to_date(self):
        """
        Returning set to date
        Implementing logging for set to date functionality
        :return: True/False
        """
        is_date_set = None
        try:
            self.logger.info('Start: set to date')
            self._buy_page.set_to_date()
            is_date_set = True
        except WebDriverException as exp:
            is_date_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set to date')
            return is_date_set

    def click_vendor_price_lists_search_button(self):
        """
        Returning click vendor price lists search button
        Implementing logging for click vendor price lists search button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click vendor price lists search button')
            self._buy_page.click_vendor_price_lists_search_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click vendor price lists search button')
            return is_clicked

    def verify_price_list_item(self, price_list_item):
        """
        Returning verify price list item
        Implementing logging for verify price list item functionality
        :return: True/False
        """
        is_present = None
        try:
            self.logger.info('Start: verify price list item')
            self._buy_page.verify_price_list_item(price_list_item)
            is_present = True
        except WebDriverException as exp:
            is_present = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: verify price list item')
            return is_present

    def click_view_price_list_detail_page_inline_action_button(self, price_list_item):
        """
        Returning click view price list details page inline action button
        Implementing logging for click view price list details page inline action button functionality
        :param price_list_item:
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click view price list details page inline action button')
            self._buy_page.click_view_price_list_detail_page_inline_action_button(price_list_item)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click view price list details page inline action button')
            return is_clicked

    def search_results_displayed_in_the_grid(self):
        """
        Returning search results displayed in the grid
        Implementing logging for search results displayed in the grid functionality
        :return:
        """
        try:
            self.logger.info('Start: search results displayed in the grid')
            return self._buy_page.search_results_displayed_in_the_grid()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: search results displayed in the grid')

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
            self._buy_page.grid_filter_details(column_name, filter_item_list)
            is_filtered = True
        except WebDriverException as exp:
            is_filtered = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: grid filter details')
            return is_filtered

    def click_create_vendor_button(self):
        """
        Returning click create vendor button
        Implementing logging for click create vendor button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click create vendor button')
            self._buy_page.click_create_vendor_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click create vendor button')
            return is_clicked

    def close_current_tab(self, tab_name):
        """
        Returning close current tab
        Implementing logging for close current tab functionality
        :param tab_name:
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: close current tab')
            self._buy_page.close_current_tab(tab_name)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: close current tab')
            return is_clicked

    def set_vendor_name(self, vendor_name_prefix):
        """
        Returning set vendor name
        Implementing logging for set vendor name functionality
        :param vendor_name_prefix:
        :return: vendor_name
        """
        vendor_name = None
        try:
            self.logger.info('Start: set vendor name')
            vendor_name = self._buy_page.set_vendor_name(vendor_name_prefix)
        except WebDriverException as exp:
            vendor_name = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set vendor name')
            return vendor_name

    def set_abbreviation(self, abbreviation_name_prefix):
        """
        Returning set abbreviation
        Implementing logging for set abbreviation functionality
        :param abbreviation_name_prefix:
        :return: abbreviation
        """
        abbreviation = None
        try:
            self.logger.info('Start: set abbreviation')
            abbreviation = self._buy_page.set_abbreviation(abbreviation_name_prefix)
        except WebDriverException as exp:
            abbreviation = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set abbreviation')
            return abbreviation

    def set_ixtools_account(self, item_name):
        """
        Returning set ixtools account
        Implementing logging for set ixtools account functionality
        :param item_name:
        :return: True/False
        """
        is_ixtools_account_set = None
        try:
            self.logger.info('Start: set ixtools account')
            self._buy_page.set_ixtools_account(item_name)
            is_ixtools_account_set = True
        except WebDriverException as exp:
            is_ixtools_account_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set ixtools account')
            return is_ixtools_account_set

    def set_rate_plan(self, item_name):
        """
        Returning set rate plan
        Implementing logging for set rate plan functionality
        :param item_name:
        :return: True/False
        """
        is_rate_plan_set = None
        try:
            self.logger.info('Start: set rate plan')
            self._buy_page.set_rate_plan(item_name)
            is_rate_plan_set = True
        except WebDriverException as exp:
            is_rate_plan_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set rate plan')
            return is_rate_plan_set

    def set_call_type(self, item_name):
        """
        Returning set call type
        Implementing logging for set call type functionality
        :param item_name:
        :return: True/False
        """
        is_call_type_set = None
        try:
            self.logger.info('Start: set call type')
            self._buy_page.set_call_type(item_name)
            is_call_type_set = True
        except WebDriverException as exp:
            is_call_type_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set call type')
            return is_call_type_set

    def set_vendor_profile_status(self, item_name):
        """
        Returning set vendor profile status
        Implementing logging for set vendor profile status functionality
        :param item_name:
        :return: True/False
        """
        is_vendor_profile_status_set = None
        try:
            self.logger.info('Start: set vendor profile status')
            self._buy_page.set_vendor_profile_status(item_name)
            is_vendor_profile_status_set = True
        except WebDriverException as exp:
            is_vendor_profile_status_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set vendor profile status')
            return is_vendor_profile_status_set

    def click_save_vendor_profile_button(self):
        """
        Returning click save vendor profile button
        Implementing logging for click save vendor profile button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click save vendor profile button')
            self._buy_page.click_save_vendor_profile_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click save vendor profile button')
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
            self._buy_page.clear_filter(column_name)
            is_cleared = True
        except WebDriverException as exp:
            is_cleared = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: clear filter')
            return is_cleared

    def clear_all_table_filters(self, column_name):
        """
        Returning clear all table filters
        Implementing logging for clear all table filters functionality
        :param column_name:
        :return: True/False
        """
        is_cleared = None
        try:
            self.logger.info('Start: clear all table filter')
            self._buy_page.clear_all_table_filters(column_name)
            is_cleared = True
        except WebDriverException as exp:
            is_cleared = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: clear all table filter')
            return is_cleared

    def verify_vendor_details(self, row_data):
        """
        Returning verify vendor details
        Implementing logging for verify vendor details functionality
        :param row_data:
        :return: True/False
        """
        is_verified = None
        try:
            self.logger.info('Start: verify vendor details')
            is_verified = self._buy_page.verify_grid_row_data(row_data)
        except WebDriverException as exp:
            is_verified = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: verify vendor details')
            return is_verified

    def get_first_row_item_from_price_lists_grid(self, column_name):
        """
        Returning get first row item from price lists grid
        Implementing logging for get first row item from price lists grid functionality
        :param column_name:
        :return: vendor name
        """
        row_item = None
        try:
            self.logger.info('Start: get first row item from price lists grid')
            row_item = self._buy_page.get_first_row_item_from_price_lists_grid(column_name)
        except WebDriverException as exp:
            row_item = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get first row item from price lists grid')
            return row_item

    def is_view_price_list_detail_present(self):
        """
        Returning is view price list detail present
        Implementing logging for is view price list detail present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is view price list detail present')
            return self._buy_page.is_view_price_list_detail_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is view price list detail present')

    def is_analyze_and_complete_present(self):
        """
        Returning is analyze and complete present
        Implementing logging for is analyze and complete present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is analyze and complete present')
            return self._buy_page.is_analyze_and_complete_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is analyze and complete present')

    def verify_selected_vendor(self, vendor_name):
        """
        Returning verify selected vendor
        Implementing logging for verify selected vendor functionality
        :param vendor_name:
        :return: True/False
        """
        try:
            self.logger.info('Start: verify selected vendor')
            return self._buy_page.verify_selected_vendor(vendor_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: verify selected vendor')

    def verify_selected_price_list(self, price_list_item):
        """
        Returning verify selected price list
        Implementing logging for verify selected price list functionality
        :param price_list_item:
        :return: True/False
        """
        try:
            self.logger.info('Start: verify selected price list')
            return self._buy_page.verify_selected_price_list(price_list_item)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: verify selected price list')

    def select_tab_of_view_price_list_detail_page(self, tab_name):
        """
        Returning select tab of view price list detail page
        Implementing logging for select tab of view price list detail page functionality
        :param tab_name:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select tab of view price list detail page')
            self._buy_page.select_tab_of_view_price_list_detail_page(tab_name)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select tab of view price list detail page')
            return is_selected

    def select_vendor_price_list_grid_row_checkbox(self):
        """
        Returning select vendor price list grid row checkbox
        Implementing logging for select vendor price list grid row checkbox functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select vendor price list grid row checkbox')
            self._buy_page.select_vendor_price_list_grid_row_checkbox()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select vendor price list grid row checkbox')
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
            self._buy_page.click_compare_price_lists_button()
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
            is_verified = self._buy_page.verify_selected_price_lists_details()
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
            is_verified = self._buy_page.verify_rates_grid_columns()
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
            self._buy_page.select_dial_digits_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select dial digits tab')
            return is_selected

    def is_rates_tab_loaded_properly(self):
        """
        Returning rates tab loading status
        Implementing logging for rates tab loading status functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is rates tab loaded properly')
            return self._buy_page.is_rates_tab_loaded_properly()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is rates tab loaded properly')

    def is_dial_digits_tab_loaded_properly(self):
        """
        Returning dial digits tab loading status
        Implementing logging for dial digits tab loading status functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is dial digits tab loaded properly')
            return self._buy_page.is_dial_digits_tab_loaded_properly()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is dial digits tab loaded properly')

    def is_reference_rates_tab_loaded_properly(self):
        """
        Returning reference rates tab loading status
        Implementing logging for reference rates tab loading status functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is reference rates tab loaded properly')
            return self._buy_page.is_reference_rates_tab_loaded_properly()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is reference rates tab loaded properly')

    def verify_dialed_digits_columns(self):
        """
        Returning verify dialed digits columns
        Implementing logging for verify dialed digits columns functionality
        :return: True/False
        """
        is_verified = None
        try:
            self.logger.info('Start: verify dialed digits columns')
            is_verified = self._buy_page.verify_dialed_digits_columns()
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
            self._buy_page.close_compare_price_lists_pop_up()
            is_closed = True
        except WebDriverException as exp:
            is_closed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: close compare price lists pop up')
            return is_closed

    def set_vendor_price_list_status(self, *status_items):
        """
        Returning set vendor price list status
        Implementing logging for set vendor price list status functionality
        :param status_items:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set vendor price list status')
            self._buy_page.set_vendor_price_list_status(status_items)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set vendor price list status')
            return is_set

    def click_on_analyze_and_complete_inline_action(self, inline_item):
        """
        Returning click on analyze and complete inline action
        Implementing logging for click on analyze and complete inline action functionality
        :param inline_item:
        :return: True/False
        """
        is_successful = None
        try:
            self.logger.info('Start: click on analyze and complete inline action')
            self._buy_page.click_on_analyze_and_complete_inline_action(inline_item)
            is_successful = True
        except WebDriverException as exp:
            is_successful = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click on analyze and complete inline action')
            return is_successful

    def click_on_browse_button(self):
        """
        Returning click on browse button
        Implementing logging for click on browse button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click on browse button')
            self._buy_page.click_on_browse_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click on browse button')
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
            self._buy_page.select_the_file_to_be_uploaded(file_path)
            is_selected = True
        except Exception as exp:
            is_selected = False
            self.logger.error(exp.message)
            raise
        finally:
            self.logger.info('End: select the file to be uploaded')
            return is_selected

    def click_on_upload_button(self):
        """
        Returning click on upload button
        Implementing logging for click on upload button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click on upload button')
            self._buy_page.click_on_upload_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click on upload button')
            return is_clicked

    def click_on_vendor_price_list_upload_colored_icon(self):
        """
        Returning click on vendor price list upload colored icon
        Implementing logging for click on vendor price list upload colored icon functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click on vendor price list upload colored icon')
            self._buy_page.click_on_vendor_price_list_upload_colored_icon()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click on vendor price list upload colored icon')
            return is_clicked

    def click_on_vendor_price_list_upload_search_button(self):
        """
        Returning click on vendor price list upload search button
        Implementing logging for click on vendor price list upload search button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click on vendor price list upload search button')
            self._buy_page.click_on_vendor_price_list_upload_search_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click on vendor price list upload search button')
            return is_clicked

    def set_from_date_as_current_date(self):
        """
        Returning set from date as current date
        Implementing logging for set from date as current date functionality
        :return: True/False
        """
        is_date_set = None
        try:
            self.logger.info('Start: set from date as current date')
            self._buy_page.set_from_date_as_current_date()
            is_date_set = True
        except WebDriverException as exp:
            is_date_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set from date as current date')
            return is_date_set

    def price_list_modified_by_user(self, vendor_name, user_name):
        """
        Returning price list modified by user
        Implementing logging for price list modified by user functionality
        :param vendor_name:
        :param user_name:
        :return: True/False
        """
        try:
            self.logger.info('Start: price list modified by user')
            return self._buy_page.price_list_modified_by_user(vendor_name, user_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: price list modified by user')

    def price_list_status_is_pending(self, vendor_name):
        """
        Returning price list status is pending
        Implementing logging for price list status is pending functionality
        :param vendor_name:
        :return: True/False
        """
        try:
            self.logger.info('Start: price list status is pending')
            return self._buy_page.price_list_status_is_pending(vendor_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: price list status is pending')

    def get_vendor_price_lists_number_of_rows_from_grid(self):
        """
        Returning get vendor price lists grid number of rows
        Implementing logging for get vendor price lists grid number of rows functionality
        :return: True/False
        """
        is_got = None
        try:
            self.logger.info('Start: get vendor price lists grid number of rows')
            self._buy_page.get_vendor_price_lists_number_of_rows_from_grid()
            is_got = True
        except WebDriverException as exp:
            is_got = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get vendor price lists grid number of rows')
            return is_got

    def compare_vendor_price_lists_number_of_rows_from_grid(self):
        """
        Returning compare vendor price lists grid number of rows
        Implementing logging for compare vendor price lists grid number of rows functionality
        :return: True/False
        """
        is_matched = None
        try:
            self.logger.info('Start: compare vendor price lists grid number of rows')
            is_matched = self._buy_page.compare_vendor_price_lists_number_of_rows_from_grid()
        except WebDriverException as exp:
            is_matched = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare vendor price lists grid number of rows')
            return is_matched

    def verify_vendor_price_lists_details(self, row_data):
        """
        Returning verify vendor price lists details
        Implementing logging for verify vendor price lists details functionality
        :return: True/False
        """
        is_verified = None
        try:
            self.logger.info('Start: verify vendor price lists details')
            is_verified = self._buy_page.verify_vendor_price_lists_details(row_data)
        except WebDriverException as exp:
            is_verified = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: verify vendor price lists details')
            return is_verified

    def get_vendor_price_lists_details(self):
        """
        Returning get vendor price lists details
        Implementing logging for get vendor price lists details functionality
        :return: True/False
        """
        status = None
        try:
            self.logger.info('Start: get vendor price lists details')
            status = self._buy_page.get_vendor_price_lists_details()
        except WebDriverException as exp:
            status = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get vendor price lists details')
            return status

    def verify_vendor_price_lists_details_on_database(self, server, database, user, password):
        """
        Returning verify vendor price lists details on database
        Implementing logging for verify vendor price lists details on database functionality
        :param server:
        :param database:
        :param user:
        :param password:
        :return: True/False
        """
        is_verified = None
        try:
            self.logger.info('Start: verify vendor price lists details on database')
            is_verified = self._buy_page.verify_vendor_price_lists_details_on_database(server, database, user, password)
        except WebDriverException as exp:
            is_verified = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: verify vendor price lists details on database')
            return is_verified

    def click_view_price_list_detail_first_row_inline_action_button(self):
        """
        Returning click view price list detail first row inline action button
        Implementing logging for click view price list detail first row inline action button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click view price list detail first row inline action button')
            self._buy_page.click_view_price_list_detail_first_row_inline_action_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click view price list detail first row inline action button')
            return is_clicked

    def check_has_network_code_checkbox(self):
        """
        Returning check has network code checkbox
        Implementing logging for check has network code checkbox functionality
        :return: True/False
        """
        is_checked = None
        try:
            self.logger.info('Start: check has network code checkbox')
            self._buy_page.check_has_network_code_checkbox()
            is_checked = True
        except WebDriverException as exp:
            is_checked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: check has network code checkbox')
            return is_checked

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
            self._buy_page.read_data_from_excel_file(file_path)
            is_read = True
        except WebDriverException as exp:
            is_read = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: read data from upload excel file')
            return is_read

    def compare_dialed_digit_with_excel_data(self):
        """
        Returning compare dialed digit with excel data
        Implementing logging for compare dialed digit with excel data functionality
        :return: True/False
        """
        is_compared = None
        try:
            self.logger.info('Start: compare dialed digit with excel data')
            is_compared = self._buy_page.compare_dialed_digit_with_excel_data()
        except WebDriverException as exp:
            is_compared = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare dialed digit with excel data')
            return is_compared

    def compare_rates_with_excel_data(self):
        """
        Returning compare rates with excel data
        Implementing logging for compare rates with excel data functionality
        :return: True/False
        """
        is_compared = None
        try:
            self.logger.info('Start: compare rates with excel data')
            is_compared = self._buy_page.compare_rates_with_excel_data()
        except WebDriverException as exp:
            is_compared = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare rates with excel data')
            return is_compared

    def compare_destination_with_excel_data(self):
        """
        Returning compare destination with excel data
        Implementing logging for compare destination with excel data functionality
        :return: True/False
        """
        is_compared = None
        try:
            self.logger.info('Start: compare destination with excel data')
            is_compared = self._buy_page.compare_destination_with_excel_data()
        except WebDriverException as exp:
            is_compared = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare destination with excel data')
            return is_compared

    def set_rate_catalog(self, rate_catalog):
        """
        Returning set rate catalog
        Implementing logging for set rate catalog functionality
        :param rate_catalog:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set rate catalog')
            self._buy_page.set_rate_catalog(rate_catalog)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set rate catalog')
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
            self._buy_page.set_begin_date(begin_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set begin date')
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
            self._buy_page.click_search_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click search button')
            return is_clicked

    def click_vendor_price_list_upload_failed_red_icon(self):
        """
        Returning click vendor price list upload failed red icon
        Implementing logging for click vendor price list upload failed red icon functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click vendor price list upload failed red icon')
            self._buy_page.click_vendor_price_list_upload_failed_red_icon()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click vendor price list upload failed red icon')
            return is_clicked

    def get_jobs_grid_initial_row_count(self):
        """
        Returning get jobs grid initial row count
        Implementing logging for get jobs grid initial row count functionality
        :return: True/False
        """
        is_got = None
        try:
            self.logger.info('Start: get jobs grid initial row count')
            self._buy_page.get_jobs_grid_initial_row_count()
            is_got = True
        except WebDriverException as exp:
            is_got = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get jobs grid initial row count')
            return is_got

    def compare_jobs_grid_number_of_rows(self):
        """
        Returning compare jobs grid number of rows
        Implementing logging for compare jobs grid number of rows functionality
        :return: True/False
        """
        is_matched = None
        try:
            self.logger.info('Start: compare jobs grid number of rows')
            is_matched = self._buy_page.compare_jobs_grid_number_of_rows()
        except WebDriverException as exp:
            is_matched = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare jobs grid number of rows')
            return is_matched

    def sort_reg_time_column_in_descending_order(self):
        """
        Returning sort reg time column in descending order
        Implementing logging for sort reg time column in descending order functionality
        :return: True/False
        """
        is_sorted = None
        try:
            self.logger.info('Start: sort reg time column in descending order')
            self._buy_page.sort_reg_time_column_in_descending_order()
            is_sorted = True
        except WebDriverException as exp:
            is_sorted = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: sort reg time column in descending order')
            return is_sorted

    def click_error_icon(self):
        """
        Returning click error icon
        Implementing logging for click error icon functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click error icon')
            self._buy_page.click_error_icon()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click error icon')
            return is_clicked

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
            self._buy_page.close_current_pop_up(pop_up_name)
            is_closed = True
        except WebDriverException as exp:
            is_closed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: close current pop up')
            return is_closed

    def is_non_numeric_dd_invalid_message_shown(self):
        """
        Returning non numeric dd invalid message shown status
        Implementing logging is non numeric dd invalid message shown functionality
        :return: True/False
        """
        is_shown = None
        try:
            self.logger.info('Start: is non numeric dd invalid message shown')
            is_shown = self._buy_page.is_non_numeric_dd_invalid_message_shown()
        except WebDriverException as exp:
            is_shown = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is non numeric dd invalid message shown')
            return is_shown

    def is_has_network_code_unchecked(self):
        """
        Returning is has network code unchecked
        Implementing logging for is has network code unchecked functionality
        :return: True/False
        """
        is_unchecked = None
        try:
            self.logger.info('Start: is has network code unchecked')
            is_unchecked = self._buy_page.is_has_network_code_unchecked()
        except WebDriverException as exp:
            is_unchecked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is has network code unchecked')
            return is_unchecked

    def close_buy_window(self):
        """
        Returning close buy window
        Implementing logging for close buy window functionality
        :return: True/False
        """
        is_closed = None
        try:
            self.logger.info('Start: close buy window')
            self._buy_page.close_browser()
            self._buy_page.switch_to_previous_window()
            is_closed = True
        except WebDriverException as exp:
            is_closed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: close buy window')
            return is_closed

    def click_vendors_grid_first_row_inline_action_button(self):
        """
        Returning click vendors grid first row inline action button
        Implementing logging for click vendors grid first row inline action button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click vendors grid first row inline action button')
            self._buy_page.click_vendors_grid_first_row_inline_action_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click vendors grid first row inline action button')
            return is_clicked

    def is_upload_vendor_price_list_pop_up_available(self):
        """
        Returning is upload vendor price list pop up available
        Implementing logging for is upload vendor price list pop up available functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is upload vendor price list pop up available')
            return self._buy_page.is_upload_vendor_price_list_pop_up_available()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is upload vendor price list pop up available')

    def click_vendor_price_list_grid_first_row_inline_action_button(self):
        """
        Returning click vendor price list grid first row inline action button
        Implementing logging for click vendor price list grid first row inline action button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click vendor price list grid first row inline action button')
            self._buy_page.click_vendor_price_list_grid_first_row_inline_action_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click vendor price list grid first row inline action button')
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
            self._buy_page.click_export_to_excel_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click export to excel button')
            return is_clicked

    def get_last_price_list_from_vendors_grid(self):
        """
        Returning get last price list from vendor grid
        Implementing logging for get last price list from vendor grid functionality
        :return: last price list column value
        """
        last_price_list = None
        try:
            self.logger.info('Start: get last price list from vendor grid')
            last_price_list = self._buy_page.get_last_price_list_from_vendors_grid()
        except WebDriverException as exp:
            last_price_list = None
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get last price list from vendor grid')
            return last_price_list

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
                status = self._buy_page.validate_date_format(actual_date, expected_date_format)
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
                status = self._buy_page.validate_currency_format(actual_value, expected_locale)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: validate currency format')
            return status

    def get_vendors_grid_cost_currency(self):
        """
        Returning get vendors grid cost currency format
        Implementing logging for get vendors grid cost currency format functionality
        :return: cost column value
        """
        try:
            self.logger.info('Start: get vendors grid cost currency format')
            return self._buy_page.get_vendors_grid_cost_currency_format()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get vendors grid cost currency format')

    def get_created_vendor_name(self):
        """
        Returning get created vendor name
        Implementing logging for get created vendor name functionality
        :return: vendor_name
        """
        try:
            self.logger.info('Start: get created vendor name')
            return self._buy_page.get_created_vendor_name()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get created vendor name')

    def get_created_carrier_name(self):
        """
        Returning get created carrier name
        Implementing logging for get created carrier name functionality
        :return: created_carrier_name
        """
        try:
            self.logger.info('Start: get created carrier name')
            return self._buy_page.get_created_carrier_name()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get created carrier name')

    def get_created_rate_plan_name(self):
        """
        Returning get created rate plan name
        Implementing get created rate plan name functionality
        :return: created_rate_plan_name
        """
        try:
            self.logger.info('Start: get created rate plan name')
            return self._buy_page.get_created_rate_plan_name()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get created rate plan name')

    def set_vendors(self, *vendors_list):
        """
        Returning set vendors
        Implementing logging for set vendors functionality
        :param vendors_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set vendors')
            self._buy_page.set_vendors(vendors_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set vendors')
            return is_set

    def get_vendors_grid_margin_column_value(self):
        """
        Returning get vendors grid margin column value
        Implementing logging for get vendors grid margin column value functionality
        :return: margin column value
        """
        try:
            self.logger.info('Start: get vendors grid margin column value')
            return self._buy_page.get_vendors_grid_margin_column_value()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get vendors grid margin column value')

    def get_last_modified_value(self):
        """
        Returning get last modified value
        Implementing logging for get last modified value functionality
        :return: last modified value
        """
        try:
            self.logger.info('Start: get last modified value')
            return self._buy_page.get_last_modified_value()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get last modified value')

    def select_rates_tab(self):
        """
        Returning select rates tab
        Implementing logging for select rates tab functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select rates tab')
            self._buy_page.select_rates_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select rates tab')
            return is_selected

    def get_begin_date(self):
        """
        Returning get begin date
        Implementing logging for get begin date functionality
        :return: begin date
        """
        try:
            self.logger.info('Start: get begin date')
            return self._buy_page.get_begin_date()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get begin date')

    def get_rates_grid_begin_date(self):
        """
        Returning get rates grid begin date
        Implementing logging for get rates grid begin date functionality
        :return: begin date
        """
        try:
            self.logger.info('Start: get rates grid begin date')
            return self._buy_page.get_rates_grid_begin_date()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get rates grid begin date')

    def get_rates_grid_last_modified_date(self):
        """
        Returning get rates grid last modified date
        Implementing logging for get rates grid last modified date functionality
        :return: rates grid last modified date
        """
        try:
            self.logger.info('Start: get rates grid last modified date')
            return self._buy_page.get_rates_grid_last_modified_date()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get rates grid last modified date')

    def select_dialed_digits_tab(self):
        """
        Returning select dialed digits tab
        Implementing logging for select dialed digits tab functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select dialed digits tab')
            self._buy_page.select_dialed_digits_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select dialed digits tab')
            return is_selected

    def get_dialed_digits_grid_begin_date(self):
        """
        Returning get dialed digits grid begin date
        Implementing logging for get dialed digits grid begin date functionality
        :return: begin date
        """
        try:
            self.logger.info('Start: get dialed digits grid begin date')
            return self._buy_page.get_dialed_digits_grid_begin_date()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get dialed digits grid begin date')

    def get_dialed_digits_grid_last_modified_date(self):
        """
        Returning get dialed digits grid last modified date
        Implementing logging for get dialed digits grid last modified date functionality
        :return: last modified date
        """
        try:
            self.logger.info('Start: get dialed digits grid last modified date')
            return self._buy_page.get_dialed_digits_grid_last_modified_date()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get dialed digits grid last modified date')

    def select_destinations_tab(self):
        """
        Returning select destinations tab
        Implementing logging for select destinations tab functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select destinations tab')
            self._buy_page.select_destinations_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select destinations tab')
            return is_selected

    def get_destinations_grid_begin_date(self):
        """
        Returning get destinations grid begin date
        Implementing logging for get destinations grid begin date functionality
        :return: begin date
        """
        try:
            self.logger.info('Start: get destinations grid begin date')
            return self._buy_page.get_destinations_grid_begin_date()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get destinations grid begin date')

    def get_destinations_grid_last_modified_date(self):
        """
        Returning get destinations grid last modified date
        Implementing logging for get destinations grid last modified date functionality
        :return: last modified date
        """
        try:
            self.logger.info('Start: get destinations grid last modified date')
            return self._buy_page.get_destinations_grid_last_modified_date()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get destinations grid last modified date')

    def get_vendor_price_list_date(self):
        """
        Returning get vendor price list date
        Implementing logging for get vendor price list date functionality
        :return: vendor price list date
        """
        try:
            self.logger.info('Start: get vendor price list date')
            return self._buy_page.get_vendor_price_list_date()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get vendor price list date')

    def click_upload_cancel_button(self):
        """
        Returning click upload cancel button
        Implementing logging for click upload cancel button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click upload cancel button')
            self._buy_page.click_upload_cancel_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click upload cancel button')
            return is_clicked

    def get_vendor_price_lists_from_date_value(self):
        """
        Returning get vendor price lists from date value
        Implementing logging for get vendor price lists from date value functionality
        :return: from date
        """
        try:
            self.logger.info('Start: get vendor price lists from date value')
            return self._buy_page.get_vendor_price_lists_from_date_value()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get vendor price lists from date value')

    def get_vendor_price_lists_to_date_value(self):
        """
        Returning get vendor price lists to date value
        Implementing logging for get vendor price lists to date value functionality
        :return: to date
        """
        try:
            self.logger.info('Start: get vendor price lists to date value')
            return self._buy_page.get_vendor_price_lists_to_date_value()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get vendor price lists to date value')

    def get_price_list_date_column_value(self):
        """
        Returning get price list date column value
        Implementing logging for get get price list date column value functionality
        :return: price list date column value
        """
        try:
            self.logger.info('Start: get price list date column value')
            return self._buy_page.get_price_list_date_column_value()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get price list date column value')

    def get_price_list_modified_date_column_value(self):
        """
        Returning get price list modified date column value
        Implementing logging for get get price list modified date column value functionality
        :return: price list date column value
        """
        try:
            self.logger.info('Start: get price list modified date column value')
            return self._buy_page.get_price_list_modified_date_column_value()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get price list modified date column value')

    def select_buy_dashboard_tab(self):
        """
        Returning select buy dashboard tab
        Implementing logging for select buy dashboard tab functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select buy dashboard tab')
            self._buy_page.select_buy_dashboard_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select buy dashboard tab')
            return is_selected

    def click_country_group(self):
        """
        Returning click country group
        Implementing logging for click country group functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click country group')
            self._buy_page.click_country_group()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click country group')
            return is_clicked

    def get_country_groups_grid_last_modified_column_value(self):
        """
        Returning get country group grid last modified date column value
        Implementing logging for get country group grid last modified date column value functionality
        :return: country group grid last modified date column value
        """
        try:
            self.logger.info('Start: get country group grid last modified date column value')
            return self._buy_page.get_country_groups_grid_last_modified_column_value()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get country group grid last modified date column value')

    def set_rates_destination(self):
        """
        Returning set rates destination
        Implementing logging for set rates destination functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set rates destination')
            self._buy_page.set_rates_destination()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set rates destination')
            return is_set

    def set_vendor_grid_settings(self, grid_settings):
        """
        Returning set vendor grid settings
        Implementing logging for set vendor grid settings functionality
        :param grid_settings:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set vendor grid settings')
            self._buy_page.set_vendor_grid_settings(grid_settings)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set vendor grid settings')
            return is_set

    def sort_vendors_grid_column(self, column_name, descending_order=False):
        """
        Returning sort vendors grid column
        Implementing logging for sort vendors grid column functionality
        :param column_name:
        :param descending_order:
        :return: True/False
        """
        is_sorted = None
        try:
            self.logger.info('Start: sort vendors grid column')
            self._buy_page.sort_vendors_grid_column(column_name, descending_order)
            is_sorted = True
        except WebDriverException as exp:
            is_sorted = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: sort vendors grid column')
            return is_sorted

    def get_all_rows_of_specific_column_from_vendors_grid(self, column_name):
        """
        Returning get all rows of specific column from vendors grid
        Implementing logging for get all rows of specific column from vendors grid functionality
        :param column_name:
        :return: all_row_data
        """
        all_row_data = None
        try:
            self.logger.info('Start: get all rows of specific column from vendors grid')
            all_row_data = self._buy_page.get_all_rows_of_specific_column_from_vendors_grid(column_name)
        except WebDriverException as exp:
            all_row_data = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get all rows of specific column from vendors grid')
            return all_row_data

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
            is_sorted = self._buy_page.compare_sorted_data(unsorted_data, descending_order)
        except WebDriverException as exp:
            is_sorted = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare sorted data')
            return is_sorted

    def drag_vendors_grid_column(self, source_column, destination_column):
        """
        Returning drag vendors grid column
        Implementing logging for drag vendors grid column functionality
        :param source_column:
        :param destination_column:
        :return: True/False
        """
        is_dragged = None
        try:
            self.logger.info('Start: drag vendors grid column')
            self._buy_page.drag_vendors_grid_column(source_column, destination_column)
            is_dragged = True
        except WebDriverException as exp:
            is_dragged = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: drag vendors grid column')
            return is_dragged

    def get_vendors_grid_column_names_by_order(self):
        """
        Returning get vendors grid column names by order
        Implementing logging for get vendors grid column names by order functionality
        :return: column_name_list
        """
        column_name_list = None
        try:
            self.logger.info('Start: get vendors grid column names by order')
            column_name_list = self._buy_page.get_vendors_grid_column_names_by_order()
        except WebDriverException as exp:
            column_name_list = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get vendors grid column names by order')
            return column_name_list

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
            is_compared = self._buy_page.compare_grid_column_position_after_altering(source_column, destination_column, column_name_list)
        except WebDriverException as exp:
            is_compared = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare grid column position after altering')
            return is_compared

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
            self._buy_page.set_country_group_scope(country_group_scope)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set country group scope')
            return is_set

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
            self._buy_page.set_country_groups_grid_settings(grid_settings)
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
            self._buy_page.sort_country_groups_grid_column(column_name, descending_order)
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
            all_row_data = self._buy_page.get_all_rows_of_specific_column_from_country_groups_grid(column_name)
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
            self._buy_page.drag_country_groups_grid_column(source_column, destination_column)
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
            column_name_list = self._buy_page.get_country_groups_grid_column_names_by_order()
        except WebDriverException as exp:
            column_name_list = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get country groups grid column names by order')
            return column_name_list

    def click_re_analysis_link(self):
        """
        Returning click re analysis link
        Implementing logging for click re analysis link functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click re analysis link')
            self._buy_page.click_re_analysis_link()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click re analysis link')
            return is_clicked

    def set_re_analysis_grid_settings(self, grid_settings):
        """
        Returning set re analysis grid settings
        Implementing logging for set re analysis grid settings functionality
        :param grid_settings:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set re analysis grid settings')
            self._buy_page.set_re_analysis_grid_settings(grid_settings)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set re analysis grid settings')
            return is_set

    def sort_re_analysis_grid_column(self, column_name, descending_order=False):
        """
        Returning sort re analysis grid column
        Implementing logging for sort re analysis grid column functionality
        :param column_name:
        :param descending_order:
        :return: True/False
        """
        is_sorted = None
        try:
            self.logger.info('Start: sort re analysis grid column')
            self._buy_page.sort_re_analysis_grid_column(column_name, descending_order)
            is_sorted = True
        except WebDriverException as exp:
            is_sorted = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: sort re analysis grid column')
            return is_sorted

    def get_all_rows_of_specific_column_from_re_analysis_grid(self, column_name):
        """
        Returning get all rows of specific column from re analysis grid
        Implementing logging for get all rows of specific column from re analysis grid functionality
        :param column_name:
        :return: all_row_data
        """
        all_row_data = None
        try:
            self.logger.info('Start: get all rows of specific column from re analysis grid')
            all_row_data = self._buy_page.get_all_rows_of_specific_column_from_re_analysis_grid(column_name)
        except WebDriverException as exp:
            all_row_data = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get all rows of specific column from re analysis grid')
            return all_row_data

    def drag_re_analysis_grid_column(self, source_column, destination_column):
        """
        Returning drag re analysis grid column
        Implementing logging for drag re analysis grid column functionality
        :param source_column:
        :param destination_column:
        :return: True/False
        """
        is_dragged = None
        try:
            self.logger.info('Start: drag re analysis grid column')
            self._buy_page.drag_re_analysis_grid_column(source_column, destination_column)
            is_dragged = True
        except WebDriverException as exp:
            is_dragged = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: drag re analysis grid column')
            return is_dragged

    def get_re_analysis_grid_column_names_by_order(self):
        """
        Returning get re analysis grid column names by order
        Implementing logging for get re analysis grid column names by order functionality
        :return: column_name_list
        """
        column_name_list = None
        try:
            self.logger.info('Start: get re analysis grid column names by order')
            column_name_list = self._buy_page.get_re_analysis_grid_column_names_by_order()
        except WebDriverException as exp:
            column_name_list = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get re analysis grid column names by order')
            return column_name_list

    def click_re_analysis_grid_first_row_inline_action_button(self):
        """
        Returning click re analysis grid first row inline action button
        Implementing logging for click re analysis grid first row inline action button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click re analysis grid first row inline action button')
            self._buy_page.click_re_analysis_grid_first_row_inline_action_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click re analysis grid first row inline action button')
            return is_clicked

    def sort_re_analysis_detail_grid_column(self, column_name, descending_order=False):
        """
        Returning sort re analysis detail grid column
        Implementing logging for sort re analysis detail grid column functionality
        :param column_name:
        :param descending_order:
        :return: True/False
        """
        is_sorted = None
        try:
            self.logger.info('Start: sort re analysis detail grid column')
            self._buy_page.sort_re_analysis_detail_grid_column(column_name, descending_order)
            is_sorted = True
        except WebDriverException as exp:
            is_sorted = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: sort re analysis detail grid column')
            return is_sorted

    def get_all_rows_of_specific_column_from_re_analysis_detail_grid(self, column_name):
        """
        Returning get all rows of specific column from re analysis detail grid
        Implementing logging for get all rows of specific column from re analysis detail grid functionality
        :param column_name:
        :return: all_row_data
        """
        all_row_data = None
        try:
            self.logger.info('Start: get all rows of specific column from re analysis detail grid')
            all_row_data = self._buy_page.get_all_rows_of_specific_column_from_re_analysis_detail_grid(column_name)
        except WebDriverException as exp:
            all_row_data = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get all rows of specific column from re analysis detail grid')
            return all_row_data

    def drag_re_analysis_detail_grid_column(self, source_column, destination_column):
        """
        Returning drag re analysis detail grid column
        Implementing logging for drag re analysis detail grid column functionality
        :param source_column:
        :param destination_column:
        :return: True/False
        """
        is_dragged = None
        try:
            self.logger.info('Start: drag re analysis detail grid column')
            self._buy_page.drag_re_analysis_detail_grid_column(source_column, destination_column)
            is_dragged = True
        except WebDriverException as exp:
            is_dragged = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: drag re analysis detail grid column')
            return is_dragged

    def get_re_analysis_detail_grid_column_names_by_order(self):
        """
        Returning get re analysis detail grid column names by order
        Implementing logging for get re analysis detail grid column names by order functionality
        :return: column_name_list
        """
        column_name_list = None
        try:
            self.logger.info('Start: get re analysis detail grid column names by order')
            column_name_list = self._buy_page.get_re_analysis_detail_grid_column_names_by_order()
        except WebDriverException as exp:
            column_name_list = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get re analysis detail grid column names by order')
            return column_name_list

    def select_inline_action_item_with_module_name(self, item_name):
        """
        Returning select inline action item with module name
        Implementing logging for select inline action item with module name
        :param item_name: inline item
        :return:
        """
        is_selected = None
        try:
            self.logger.info('Start: select inline action item with module name')
            self._buy_page.select_inline_action_item_with_module_name(item_name)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select inline action item with module name')
            return is_selected

    def set_vendor_price_lists_grid_settings(self, grid_settings):
        """
        Returning set vendor price lists grid settings
        Implementing logging for set vendor price lists grid settings functionality
        :param grid_settings:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set vendor price lists grid settings')
            self._buy_page.set_vendor_price_lists_grid_settings(grid_settings)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set vendor price lists grid settings')
            return is_set

    def sort_vendor_price_lists_grid_column(self, column_name, descending_order=False):
        """
        Returning sort vendor price lists grid column
        Implementing logging for sort vendor price lists grid column functionality
        :param column_name:
        :param descending_order:
        :return: True/False
        """
        is_sorted = None
        try:
            self.logger.info('Start: sort vendor price lists grid column')
            self._buy_page.sort_vendor_price_lists_grid_column(column_name, descending_order)
            is_sorted = True
        except WebDriverException as exp:
            is_sorted = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: sort vendor price lists grid column')
            return is_sorted

    def get_all_rows_of_specific_column_from_vendor_price_lists_grid(self, column_name):
        """
        Returning get all rows of specific column from vendor price lists grid
        Implementing logging for get all rows of specific column from vendor price lists grid functionality
        :param column_name:
        :return: all_row_data
        """
        all_row_data = None
        try:
            self.logger.info('Start: get all rows of specific column from vendor price lists grid')
            all_row_data = self._buy_page.get_all_rows_of_specific_column_from_vendor_price_lists_grid(column_name)
        except WebDriverException as exp:
            all_row_data = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get all rows of specific column from vendor price lists grid')
            return all_row_data

    def drag_vendor_price_lists_grid_column(self, source_column, destination_column):
        """
        Returning drag vendor price lists grid column
        Implementing logging for drag vendor price lists grid column functionality
        :param source_column:
        :param destination_column:
        :return: True/False
        """
        is_dragged = None
        try:
            self.logger.info('Start: drag vendor price lists grid column')
            self._buy_page.drag_vendor_price_lists_grid_column(source_column, destination_column)
            is_dragged = True
        except WebDriverException as exp:
            is_dragged = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: drag vendor price lists grid column')
            return is_dragged

    def get_vendor_price_lists_grid_column_names_by_order(self):
        """
        Returning get vendor price lists grid column names by order
        Implementing logging for get vendor price lists grid column names by order functionality
        :return: column_name_list
        """
        column_name_list = None
        try:
            self.logger.info('Start: get vendor price lists grid column names by order')
            column_name_list = self._buy_page.get_vendor_price_lists_grid_column_names_by_order()
        except WebDriverException as exp:
            column_name_list = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get vendor price lists grid column names by order')
            return column_name_list

    def sort_rates_grid_column(self, column_name, descending_order=False):
        """
        Returning sort rates grid column
        Implementing logging for sort rates grid column functionality
        :param column_name:
        :param descending_order:
        :return: True/False
        """
        is_sorted = None
        try:
            self.logger.info('Start: sort rates grid column')
            self._buy_page.sort_rates_grid_column(column_name, descending_order)
            is_sorted = True
        except WebDriverException as exp:
            is_sorted = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: sort rates grid column')
            return is_sorted

    def get_all_rows_of_specific_column_from_rates_grid(self, column_name):
        """
        Returning get all rows of specific column from rates grid
        Implementing logging for get all rows of specific column from rates grid functionality
        :param column_name:
        :return: all_row_data
        """
        all_row_data = None
        try:
            self.logger.info('Start: get all rows of specific column from rates grid')
            all_row_data = self._buy_page.get_all_rows_of_specific_column_from_rates_grid(column_name)
        except WebDriverException as exp:
            all_row_data = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get all rows of specific column from rates grid')
            return all_row_data

    def drag_rates_grid_column(self, source_column, destination_column):
        """
        Returning drag rates grid column
        Implementing logging for drag rates grid column functionality
        :param source_column:
        :param destination_column:
        :return: True/False
        """
        is_dragged = None
        try:
            self.logger.info('Start: drag rates grid column')
            self._buy_page.drag_rates_grid_column(source_column, destination_column)
            is_dragged = True
        except WebDriverException as exp:
            is_dragged = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: drag rates grid column')
            return is_dragged

    def get_rates_grid_column_names_by_order(self):
        """
        Returning get rates grid column names by order
        Implementing logging for get rates grid column names by order functionality
        :return: column_name_list
        """
        column_name_list = None
        try:
            self.logger.info('Start: get rates grid column names by order')
            column_name_list = self._buy_page.get_rates_grid_column_names_by_order()
        except WebDriverException as exp:
            column_name_list = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get rates grid column names by order')
            return column_name_list

    def sort_destinations_grid_column(self, column_name, descending_order=False):
        """
        Returning sort destinations grid column
        Implementing logging for sort destinations grid column functionality
        :param column_name:
        :param descending_order:
        :return: True/False
        """
        is_sorted = None
        try:
            self.logger.info('Start: sort destinations grid column')
            self._buy_page.sort_destinations_grid_column(column_name, descending_order)
            is_sorted = True
        except WebDriverException as exp:
            is_sorted = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: sort destinations grid column')
            return is_sorted

    def get_all_rows_of_specific_column_from_destinations_grid(self, column_name):
        """
        Returning get all rows of specific column from destinations grid
        Implementing logging for get all rows of specific column from destinations grid functionality
        :param column_name:
        :return: all_row_data
        """
        all_row_data = None
        try:
            self.logger.info('Start: get all rows of specific column from destinations grid')
            all_row_data = self._buy_page.get_all_rows_of_specific_column_from_destinations_grid(column_name)
        except WebDriverException as exp:
            all_row_data = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get all rows of specific column from destinations grid')
            return all_row_data

    def drag_destinations_grid_column(self, source_column, destination_column):
        """
        Returning drag destinations grid column
        Implementing logging for drag destinations grid column functionality
        :param source_column:
        :param destination_column:
        :return: True/False
        """
        is_dragged = None
        try:
            self.logger.info('Start: drag destinations grid column')
            self._buy_page.drag_destinations_grid_column(source_column, destination_column)
            is_dragged = True
        except WebDriverException as exp:
            is_dragged = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: drag destinations grid column')
            return is_dragged

    def get_destinations_grid_column_names_by_order(self):
        """
        Returning get destinations grid column names by order
        Implementing logging for get destinations grid column names by order functionality
        :return: column_name_list
        """
        column_name_list = None
        try:
            self.logger.info('Start: get destinations grid column names by order')
            column_name_list = self._buy_page.get_destinations_grid_column_names_by_order()
        except WebDriverException as exp:
            column_name_list = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get destinations grid column names by order')
            return column_name_list

    def sort_dialed_digits_grid_column(self, column_name, descending_order=False):
        """
        Returning sort dialed digits grid column
        Implementing logging for sort dialed digits grid column functionality
        :param column_name:
        :param descending_order:
        :return: True/False
        """
        is_sorted = None
        try:
            self.logger.info('Start: sort dialed digits grid column')
            self._buy_page.sort_dialed_digits_grid_column(column_name, descending_order)
            is_sorted = True
        except WebDriverException as exp:
            is_sorted = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: sort dialed digits grid column')
            return is_sorted

    def get_all_rows_of_specific_column_from_dialed_digits_grid(self, column_name):
        """
        Returning get all rows of specific column from dialed digits grid
        Implementing logging for get all rows of specific column from dialed digits grid functionality
        :param column_name:
        :return: all_row_data
        """
        all_row_data = None
        try:
            self.logger.info('Start: get all rows of specific column from dialed digits grid')
            all_row_data = self._buy_page.get_all_rows_of_specific_column_from_dialed_digits_grid(column_name)
        except WebDriverException as exp:
            all_row_data = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get all rows of specific column from dialed digits grid')
            return all_row_data

    def drag_dialed_digits_grid_column(self, source_column, destination_column):
        """
        Returning drag dialed digits grid column
        Implementing logging for drag dialed digits grid column functionality
        :param source_column:
        :param destination_column:
        :return: True/False
        """
        is_dragged = None
        try:
            self.logger.info('Start: drag dialed digits grid column')
            self._buy_page.drag_dialed_digits_grid_column(source_column, destination_column)
            is_dragged = True
        except WebDriverException as exp:
            is_dragged = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: drag dialed digits grid column')
            return is_dragged

    def get_dialed_digits_grid_column_names_by_order(self):
        """
        Returning get dialed digits grid column names by order
        Implementing logging for get dialed digits grid column names by order functionality
        :return: column_name_list
        """
        column_name_list = None
        try:
            self.logger.info('Start: get dialed digits grid column names by order')
            column_name_list = self._buy_page.get_dialed_digits_grid_column_names_by_order()
        except WebDriverException as exp:
            column_name_list = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get dialed digits grid column names by order')
            return column_name_list

    def set_vendor_price_list_detail_grid_settings(self, grid_settings):
        """
        Returning set vendor price list detail grid settings
        Implementing logging for set vendor price list detail grid settings functionality
        :param grid_settings:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set vendor price list detail grid settings')
            self._buy_page.set_vendor_price_list_detail_grid_settings(grid_settings)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set vendor price list detail grid settings')
            return is_set

    def sort_vendor_price_list_detail_grid_column(self, column_name, descending_order=False):
        """
        Returning sort vendor price list detail grid column
        Implementing logging for sort vendor price list detail grid column functionality
        :param column_name:
        :param descending_order:
        :return: True/False
        """
        is_sorted = None
        try:
            self.logger.info('Start: sort vendor price list detail grid column')
            self._buy_page.sort_vendor_price_list_detail_grid_column(column_name, descending_order)
            is_sorted = True
        except WebDriverException as exp:
            is_sorted = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: sort vendor price list detail grid column')
            return is_sorted

    def get_all_rows_of_specific_column_from_vendor_price_list_detail_grid(self, column_name):
        """
        Returning get all rows of specific column from vendor price list detail grid
        Implementing logging for get all rows of specific column from vendor price list detail grid functionality
        :param column_name:
        :return: all_row_data
        """
        all_row_data = None
        try:
            self.logger.info('Start: get all rows of specific column from vendor price list detail grid')
            all_row_data = self._buy_page.get_all_rows_of_specific_column_from_vendor_price_list_detail_grid(column_name)
        except WebDriverException as exp:
            all_row_data = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get all rows of specific column from vendor price list detail grid')
            return all_row_data

    def drag_vendor_price_list_detail_grid_column(self, source_column, destination_column):
        """
        Returning drag vendor price list detail grid column
        Implementing logging for drag vendor price list detail grid column functionality
        :param source_column:
        :param destination_column:
        :return: True/False
        """
        is_dragged = None
        try:
            self.logger.info('Start: drag vendor price list detail grid column')
            self._buy_page.drag_vendor_price_list_detail_grid_column(source_column, destination_column)
            is_dragged = True
        except WebDriverException as exp:
            is_dragged = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: drag vendor price list detail grid column')
            return is_dragged

    def get_vendor_price_list_detail_grid_column_names_by_order(self):
        """
        Returning get vendor price list detail grid column names by order
        Implementing logging for get vendor price list detail grid column names by order functionality
        :return: column_name_list
        """
        column_name_list = None
        try:
            self.logger.info('Start: get vendor price list detail grid column names by order')
            column_name_list = self._buy_page.get_vendor_price_list_detail_grid_column_names_by_order()
        except WebDriverException as exp:
            column_name_list = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get vendor price list detail grid column names by order')
            return column_name_list

    def compare_digits_tab_name(self, expected_tab_name):
        """
        Returning compare digits tab name
        Implementing logging for compare digits tab name functionality
        :param expected_tab_name:
        :return: True/False
        """
        is_matched = None
        try:
            self.logger.info('Start: compare digits tab name')
            is_matched = self._buy_page.compare_digits_tab_name(expected_tab_name)
        except WebDriverException as exp:
            is_matched = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare digits tab name')
            return is_matched

    def select_vendor_price_list_detail_dial_digits_tab(self):
        """
        Returning select vendor price list detail dial digits tab
        Implementing logging for select vendor price list detail dial digits tab functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select vendor price list detail dial digits tab')
            self._buy_page.select_vendor_price_list_detail_dial_digits_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select vendor price list detail dial digits tab')
            return is_selected

    def select_vendor_price_list_detail_reference_rates_tab(self):
        """
        Returning select vendor price list detail reference rates tab
        Implementing logging for select vendor price list detail reference rates tab functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select vendor price list detail reference rates tab')
            self._buy_page.select_vendor_price_list_detail_reference_rates_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select vendor price list detail reference rates tab')
            return is_selected

    def set_vendor_price_list_detail_dial_digits_grid_settings(self, grid_settings):
        """
        Returning set vendor price list detail dial digits grid settings
        Implementing logging for set vendor price list detail dial digits grid settings functionality
        :param grid_settings:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set vendor price list detail dial digits grid settings')
            self._buy_page.set_vendor_price_list_detail_dial_digits_grid_settings(grid_settings)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set vendor price list detail dial digits grid settings')
            return is_set

    def sort_vendor_price_list_detail_dial_digits_grid_column(self, column_name, descending_order=False):
        """
        Returning sort vendor price list detail dial digits grid column
        Implementing logging for sort vendor price list detail dial digits grid column functionality
        :param column_name:
        :param descending_order:
        :return: True/False
        """
        is_sorted = None
        try:
            self.logger.info('Start: sort vendor price list detail dial digits grid column')
            self._buy_page.sort_vendor_price_list_detail_dial_digits_grid_column(column_name, descending_order)
            is_sorted = True
        except WebDriverException as exp:
            is_sorted = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: sort vendor price list detail dial digits grid column')
            return is_sorted

    def get_all_rows_of_specific_column_from_vendor_price_list_detail_dial_digits_grid(self, column_name):
        """
        Returning get all rows of specific column from vendor price list detail dial digits grid
        Implementing logging for get all rows of specific column from vendor price list detail dial digits grid functionality
        :param column_name:
        :return: all_row_data
        """
        all_row_data = None
        try:
            self.logger.info('Start: get all rows of specific column from vendor price list detail dial digits grid')
            all_row_data = self._buy_page.get_all_rows_of_specific_column_from_vendor_price_list_detail_dial_digits_grid(column_name)
        except WebDriverException as exp:
            all_row_data = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get all rows of specific column from vendor price list detail dial digits grid')
            return all_row_data

    def drag_vendor_price_list_detail_dial_digits_grid_column(self, source_column, destination_column):
        """
        Returning drag vendor price list detail dial digits grid column
        Implementing logging for drag vendor price list detail dial digits grid column functionality
        :param source_column:
        :param destination_column:
        :return: True/False
        """
        is_dragged = None
        try:
            self.logger.info('Start: drag vendor price list detail dial digits grid column')
            self._buy_page.drag_vendor_price_list_detail_dial_digits_grid_column(source_column, destination_column)
            is_dragged = True
        except WebDriverException as exp:
            is_dragged = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: drag vendor price list detail dial digits grid column')
            return is_dragged

    def get_vendor_price_list_detail_dial_digits_grid_column_names_by_order(self):
        """
        Returning get vendor price list detail dial digits grid column names by order
        Implementing logging for get vendor price list detail dial digits grid column names by order functionality
        :return: column_name_list
        """
        column_name_list = None
        try:
            self.logger.info('Start: get vendor price list detail dial digits grid column names by order')
            column_name_list = self._buy_page.get_vendor_price_list_detail_dial_digits_grid_column_names_by_order()
        except WebDriverException as exp:
            column_name_list = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get vendor price list detail dial digits grid column names by order')
            return column_name_list

    def set_vendor_price_list_detail_reference_rates_grid_settings(self, grid_settings):
        """
        Returning set vendor price list detail reference rates grid settings
        Implementing logging for set vendor price list detail reference rates grid settings functionality
        :param grid_settings:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set vendor price list detail reference rates grid settings')
            self._buy_page.set_vendor_price_list_detail_reference_rates_grid_settings(grid_settings)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set vendor price list detail reference rates grid settings')
            return is_set

    def sort_vendor_price_list_detail_reference_rates_grid_column(self, column_name, descending_order=False):
        """
        Returning sort vendor price list detail reference rates grid column
        Implementing logging for sort vendor price list detail reference rates grid column functionality
        :param column_name:
        :param descending_order:
        :return: True/False
        """
        is_sorted = None
        try:
            self.logger.info('Start: sort vendor price list detail reference rates grid column')
            self._buy_page.sort_vendor_price_list_detail_reference_rates_grid_column(column_name, descending_order)
            is_sorted = True
        except WebDriverException as exp:
            is_sorted = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: sort vendor price list detail reference rates grid column')
            return is_sorted

    def get_all_rows_of_specific_column_from_vendor_price_list_detail_reference_rates_grid(self, column_name):
        """
        Returning get all rows of specific column from vendor price list detail reference rates grid
        Implementing logging for get all rows of specific column from vendor price list detail reference rates grid functionality
        :param column_name:
        :return: all_row_data
        """
        all_row_data = None
        try:
            self.logger.info('Start: get all rows of specific column from vendor price list detail reference rates grid')
            all_row_data = self._buy_page.get_all_rows_of_specific_column_from_vendor_price_list_detail_reference_rates_grid(column_name)
        except WebDriverException as exp:
            all_row_data = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get all rows of specific column from vendor price list detail reference rates grid')
            return all_row_data

    def drag_vendor_price_list_detail_reference_rates_grid_column(self, source_column, destination_column):
        """
        Returning drag vendor price list detail reference rates grid column
        Implementing logging for drag vendor price list detail reference rates grid column functionality
        :param source_column:
        :param destination_column:
        :return: True/False
        """
        is_dragged = None
        try:
            self.logger.info('Start: drag vendor price list detail reference rates grid column')
            self._buy_page.drag_vendor_price_list_detail_reference_rates_grid_column(source_column, destination_column)
            is_dragged = True
        except WebDriverException as exp:
            is_dragged = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: drag vendor price list detail reference rates grid column')
            return is_dragged

    def get_vendor_price_list_detail_reference_rates_grid_column_names_by_order(self):
        """
        Returning get vendor price list detail reference rates grid column names by order
        Implementing logging for get vendor price list detail reference rates grid column names by order functionality
        :return: column_name_list
        """
        column_name_list = None
        try:
            self.logger.info('Start: get vendor price list detail reference rates grid column names by order')
            column_name_list = self._buy_page.get_vendor_price_list_detail_reference_rates_grid_column_names_by_order()
        except WebDriverException as exp:
            column_name_list = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get vendor price list detail reference rates grid column names by order')
            return column_name_list

    def click_vendor_price_list_detail_rates_grid_export_to_excel_button(self):
        """
        Returning click vendor price list detail rates grid export to excel button
        Implementing logging for click vendor price list detail rates grid export to excel button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click vendor price list detail rates grid export to excel button')
            self._buy_page.click_vendor_price_list_detail_rates_grid_export_to_excel_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click vendor price list detail rates grid export to excel button')
            return is_clicked

    def click_vendor_price_list_detail_dial_digits_grid_export_to_excel_button(self):
        """
        Returning click vendor price list detail dial digits grid export to excel button
        Implementing logging for click vendor price list detail dial digits grid export to excel button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click vendor price list detail dial digits grid export to excel button')
            self._buy_page.click_vendor_price_list_detail_dial_digits_grid_export_to_excel_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click vendor price list detail dial digits grid export to excel button')
            return is_clicked

    def click_vendor_price_list_detail_reference_rates_grid_export_to_excel_button(self):
        """
        Returning click vendor price list detail reference rates grid export to excel button
        Implementing logging for click vendor price list detail reference rates grid export to excel button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click vendor price list detail reference rates grid export to excel button')
            self._buy_page.click_vendor_price_list_detail_reference_rates_grid_export_to_excel_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click vendor price list detail reference rates grid export to excel button')
            return is_clicked

    def click_country_groups_grid_export_to_excel_button(self):
        """
        Returning click country groups grid export to excel button
        Implementing logging for click country groups grid export to excel button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click country groups grid export to excel button')
            self._buy_page.click_country_groups_grid_export_to_excel_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click country groups grid export to excel button')
            return is_clicked

    def click_re_analysis_grid_export_to_excel_button(self):
        """
        Returning click re analysis grid export to excel button
        Implementing logging for click re analysis grid export to excel button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click re analysis grid export to excel button')
            self._buy_page.click_re_analysis_grid_export_to_excel_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click re analysis grid export to excel button')
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
            is_compared = self._buy_page.compare_upload_failure_message(message)
        except WebDriverException as exp:
            is_compared = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare upload failure message')
            return is_compared

    def click_failed_upload_info_icon(self):
        """
        Returning click failed upload info icon
        Implementing logging for click failed upload info icon functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click failed upload info icon')
            self._buy_page.click_failed_upload_info_icon()
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
            is_compared = self._buy_page.compare_failed_upload_info(info_message)
        except WebDriverException as exp:
            is_compared = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare failed upload info')
            return is_compared

    def select_qos_tab(self):
        """
        Returning select qos tab
        Implementing logging for select qos tab functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select qos tab')
            self._buy_page.select_qos_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select qos tab')
            return is_selected

    def compare_qos_with_excel_data(self):
        """
        Returning compare qos with excel data
        Implementing logging for compare qos with excel data functionality
        :return: True/False
        """
        is_compared = None
        try:
            self.logger.info('Start: compare qos with excel data')
            is_compared = self._buy_page.compare_qos_with_excel_data()
        except WebDriverException as exp:
            is_compared = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare qos with excel data')
            return is_compared

    def is_mnp_column_present(self):
        """
        Returning is mnp column present
        Implementing logging for is mnp column present functionality
        :return: True/False
        """
        is_present = None
        try:
            self.logger.info('Start: is mnp column present')
            is_present = self._buy_page.is_mnp_column_present()
        except WebDriverException as exp:
            is_present = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is mnp column present')
            return is_present

    def is_comments_column_present(self):
        """
        Returning is comments column present
        Implementing logging for is comments column present functionality
        :return: True/False
        """
        is_present = None
        try:
            self.logger.info('Start: is comments column present')
            is_present = self._buy_page.is_comments_column_present()
        except WebDriverException as exp:
            is_present = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is comments column present')
            return is_present

    def get_all_rows_of_rate_column_from_vendor_price_list_detail_grid(self, column_name):
        """
        Returning get all rows of rate column from vendor price list detail grid
        Implementing logging for get all rows of rate column from vendor price list detail grid functionality
        :param column_name:
        :return: all_row_data
        """
        all_row_data = None
        try:
            self.logger.info('Start: get all rows of rate column from vendor price list detail grid')
            all_row_data = self._buy_page.get_all_rows_of_rate_column_from_vendor_price_list_detail_grid(column_name)
        except WebDriverException as exp:
            all_row_data = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get all rows of rate column from vendor price list detail grid')
            return all_row_data

    def get_all_rows_of_rate_increase_violation_column_from_vendor_price_list_detail_grid(self, column_name):
        """
        Returning get all rows of rate increase violation column from vendor price list detail grid
        Implementing logging for get all rows of rate increase violation column from vendor price list detail grid functionality
        :param column_name:
        :return: all_row_data
        """
        all_row_data = None
        try:
            self.logger.info('Start: get all rows of rate increase violation column from vendor price list detail grid')
            all_row_data = self._buy_page.get_all_rows_of_rate_increase_violation_column_from_vendor_price_list_detail_grid(column_name)
        except WebDriverException as exp:
            all_row_data = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get all rows of rate increase violation column from vendor price list detail grid')
            return all_row_data

    def is_sorting_option_not_available_in_destination_column(self, column_name, descending_order=False):
        """
        Returning is sorting option not available in destination column
        Implementing logging for is sorting option not available in destination column functionality
        :param column_name:
        :param descending_order:
        :return: True/False
        """
        try:
            self.logger.info('Start: is sorting option not available in destination column')
            return self._buy_page.is_sorting_option_not_available_in_destination_column(column_name, descending_order)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is sorting option not available in destination column')

    def is_ixtools_account_present(self, item_name):
        """
        Returning is ixtools account present
        Implementing logging for is ixtools account present functionality
        :param item_name:
        :return: True/False
        """
        try:
            self.logger.info('Start: is ixtools account present')
            return self._buy_page.is_ixtools_account_present(item_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is ixtools account present')

    def is_vendor_price_list_not_displayed_in_the_grid(self):
        """
        Returning is vendor price list not displayed in the grid
        Implementing logging for is vendor price list not displayed in the grid functionality
        :return: True/False
        """
        is_displayed = None
        try:
            self.logger.info('Start: is vendor price list not displayed in the grid')
            is_displayed = self._buy_page.is_vendor_price_list_not_displayed_in_the_grid()
        except WebDriverException as exp:
            is_displayed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is vendor price list not displayed in the grid')
            return is_displayed

    def click_guarantee_cli_checkbox(self):
        """
        Returning click guarantee cli checkbox
        Implementing logging for click guarantee cli checkbox functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click guarantee cli checkbox')
            self._buy_page.click_guarantee_cli_checkbox()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click guarantee cli checkbox')
            return is_clicked

    def click_exclude_rating_method_from_price_list_checkbox(self):
        """
        Returning click exclude rating method from price list checkbox
        Implementing logging for click exclude rating method from price list checkbox functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click exclude rating method from price list checkbox')
            self._buy_page.click_exclude_rating_method_from_price_list_checkbox()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click exclude rating method from price list checkbox')
            return is_clicked

    def set_price_list_content(self, price_list_content):
        """
        Returning set price list content
        Implementing logging for set price list content functionality
        :param price_list_content:
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: set price list content')
            self._buy_page.set_price_list_content(price_list_content)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set price list content')
            return is_clicked

    def set_country_for_search(self, *country_name_list):
        """
        Returning set country for search
        Implementing logging for set country for search functionality
        :param country_name_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set country for search')
            self._buy_page.set_country_for_search(country_name_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set country for search')
            return is_set

    def is_specific_tab_on_vendor_profile_page_present(self, tab_name):
        """
        Returning is specific tab on vendor profile page present
        Implementing logging for is specific tab on vendor profile page present functionality
        :param tab_name:
        :return: True/False
        """
        try:
            self.logger.info('Start: is specific tab on vendor profile page present')
            return self._buy_page.is_specific_tab_on_vendor_profile_page_present(tab_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is specific tab on vendor profile page present')

    def is_specific_column_on_vendor_profile_grid_present(self, column_name):
        """
        Returning is specific column on vendor profile page present
        Implementing logging for is specific column on vendor profile page present functionality
        :param column_name:
        :return: True/False
        """
        try:
            self.logger.info('Start: is specific column on vendor profile grid present')
            return self._buy_page.is_specific_column_on_vendor_profile_grid_present(column_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is specific column on vendor profile page present')

    def click_reference_rates_show_search_form_link(self):
        """
        Returning click reference rates show search form link
        Implementing logging for click reference rates show search form link functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click reference rates show search form link')
            self._buy_page.click_reference_rates_show_search_form_link()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click reference rates show search form link')
            return is_clicked

    def is_view_dropdown_visible(self):
        """
        Returning is view dropdown visible
        Implementing logging for is view dropdown visible functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is view dropdown visible')
            return self._buy_page.is_view_dropdown_visible()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is view dropdown visible')

    def is_status_dropdown_visible(self):
        """
        Returning is status dropdown visible
        Implementing logging for is status dropdown visible functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is status dropdown visible')
            return self._buy_page.is_status_dropdown_visible()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is status dropdown visible')

    def is_discrepancy_dropdown_visible(self):
        """
        Returning is discrepancy dropdown visible
        Implementing logging for is discrepancy dropdown visible functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is discrepancy dropdown visible')
            return self._buy_page.is_discrepancy_dropdown_visible()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is discrepancy dropdown visible')

    def is_in_routing_flags_dropdown_visible(self):
        """
        Returning is in routing flags dropdown visible
        Implementing logging for is in routing flags dropdown visible functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is in routing flags dropdown visible')
            return self._buy_page.is_in_routing_flags_dropdown_visible()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is in routing flags dropdown visible')

    def is_rate_textbox_visible(self):
        """
        Returning is rate textbox visible
        Implementing logging for is rate textbox visible functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is rate textbox visible')
            return self._buy_page.is_rate_textbox_visible()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is rate textbox visible')

    def is_destination_textbox_visible(self):
        """
        Returning is destination textbox visible
        Implementing logging for is destination textbox visible functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is destination textbox visible')
            return self._buy_page.is_destination_textbox_visible()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is destination textbox visible')

    def is_reference_rates_grid_accept_column_checkbox(self):
        """
        Returning is reference rates grid accept column checkbox
        Implementing logging for is reference rates grid accept column checkbox functionality
        :return: True/False
        """
        is_checkbox = None
        try:
            self.logger.info('Start: is reference rates grid accept column checkbox')
            is_checkbox = self._buy_page.is_reference_rates_grid_accept_column_checkbox()
        except WebDriverException as exp:
            is_checkbox = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is reference rates grid accept column checkbox')
            return is_checkbox

    def is_number_plan_changes_grid_header_dialed_digits_mcc_mnc(self):
        """
        Returning is number plan changes grid header dialed digits mcc mnc
        Implementing logging for is number plan changes grid header dialed digits mcc mnc functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is number plan changes grid header dialed digits mcc mnc')
            return self._buy_page.is_number_plan_changes_grid_header_dialed_digits_mcc_mnc()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is number plan changes grid header dialed digits mcc mnc')

    def is_country_selection_criteria_field_present_in_re_analysis_page(self):
        """
        Returning is country selection criteria field present in re analysis page
        Implementing logging for is country selection criteria field present in re analysis page functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is country selection criteria field present in re analysis page')
            return self._buy_page.is_country_selection_criteria_field_present_in_re_analysis_page()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is country selection criteria field present in re analysis page')

    def is_country_column_present_in_re_analysis_page(self):
        """
        Returning is country column present in re analysis page
        Implementing logging for is country column present in re analysis page functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is country column present in re analysis page')
            return self._buy_page.is_country_column_present_in_re_analysis_page()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is country column present in re analysis page')

    def is_country_selection_criteria_field_present_in_vendor_profile_page(self):
        """
        Returning is country selection criteria field present in vendor profile page
        Implementing logging for is country selection criteria field present in vendor profile page functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is country selection criteria field present in vendor profile page')
            return self._buy_page.is_country_selection_criteria_field_present_in_vendor_profile_page()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is country selection criteria field present in vendor profile page')

    def is_country_column_present_in_vendor_profile_page(self):
        """
        Returning is country column present in vendor profile page
        Implementing logging for is country column present in vendor profile page functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is country column present in vendor profile page')
            return self._buy_page.is_country_column_present_in_vendor_profile_page()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is country column present in vendor profile page')

    def is_country_selection_criteria_field_present_in_vendor_profile_dialed_digits_page(self):
        """
        Returning is country selection criteria field present in vendor profile dialed digits page
        Implementing logging for is country selection criteria field present in vendor profile dialed digits page functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is country selection criteria field present in vendor profile dialed digits page')
            return self._buy_page.is_country_selection_criteria_field_present_in_vendor_profile_dialed_digits_page()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is country selection criteria field present in vendor profile dialed digits page')

    def is_country_column_present_in_vendor_profile_dialed_digits_page(self):
        """
        Returning is country column present in vendor profile dialed digits page
        Implementing logging for is country column present in vendor profile dialed digits page functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is country column present in vendor profile dialed digits page')
            return self._buy_page.is_country_column_present_in_vendor_profile_dialed_digits_page()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is country column present in vendor profile dialed digits page')

    def is_country_selection_criteria_field_present_in_vendor_profile_destinations_page(self):
        """
        Returning is country selection criteria field present in vendor profile destinations page
        Implementing logging for is country selection criteria field present in vendor profile destinations page functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is country selection criteria field present in vendor profile destinations page')
            return self._buy_page.is_country_selection_criteria_field_present_in_vendor_profile_destinations_page()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is country selection criteria field present in vendor profile destinations page')

    def is_country_column_present_in_vendor_profile_destinations_page(self):
        """
        Returning is country column present in vendor profile destinations page
        Implementing logging for is country column present in vendor profile destinations page functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is country column present in vendor profile destinations page')
            return self._buy_page.is_country_column_present_in_vendor_profile_destinations_page()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is country column present in vendor profile destinations page')

    def click_search_rate_arrow_button(self):
        """
        Returning click search rate arrow button
        Implementing logging for click search rate arrow button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click search rate arrow button')
            self._buy_page.click_search_rate_arrow_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click search rate arrow button')
            return is_clicked

    def is_country_selection_criteria_field_present_in_view_price_list_details_rate_page(self):
        """
        Returning is country selection criteria field present in view price list details rate page
        Implementing logging for is country selection criteria field present in view price list details rate page functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is country selection criteria field present in view price list details rate page')
            return self._buy_page.is_country_selection_criteria_field_present_in_view_price_list_details_rate_page()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is country selection criteria field present in view price list details rate page')

    def is_country_column_present_in_view_price_list_details_rate_page(self):
        """
        Returning is country column present in view price list details rate page
        Implementing logging for is country column present in view price list details rate page functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is country column present in view price list details rate page')
            return self._buy_page.is_country_column_present_in_view_price_list_details_rate_page()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is country column present in view price list details rate page')

    def click_search_dialed_digits_arrow_button(self):
        """
        Returning click search dialed digits arrow button
        Implementing logging for click search dialed digits arrow button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click search dialed digits arrow button')
            self._buy_page.click_search_dialed_digits_arrow_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click search dialed digits arrow button')
            return is_clicked

    def is_country_selection_criteria_field_present_in_view_price_list_details_dialed_digits_page(self):
        """
        Returning is country selection criteria field present in view price list details dialed digits page
        Implementing logging for is country selection criteria field present in view price list details dialed digits page functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is country selection criteria field present in view price list details dialed digits page')
            return self._buy_page.is_country_selection_criteria_field_present_in_view_price_list_details_dialed_digits_page()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is country selection criteria field present in view price list details dialed digits page')

    def is_country_column_present_in_view_price_list_details_dialed_digits_page(self):
        """
        Returning is country column present in view price list details dialed digits page
        Implementing logging for is country column present in view price list details dialed digits page functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is country column present in view price list details dialed digits page')
            return self._buy_page.is_country_column_present_in_view_price_list_details_dialed_digits_page()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is country column present in view price list details dialed digits page')

    def click_search_ref_rates_arrow_button(self):
        """
        Returning click search ref rates arrow button
        Implementing logging for click search ref rates arrow button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click search ref rates arrow button')
            self._buy_page.click_search_ref_rates_arrow_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click search ref rates arrow button')
            return is_clicked

    def is_country_selection_criteria_field_present_in_view_price_list_details_ref_rates_page(self):
        """
        Returning is country selection criteria field present in view price list ref rates digits page
        Implementing logging for is country selection criteria field present in view price list details ref rates page functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is country selection criteria field present in view price list details ref rates page')
            return self._buy_page.is_country_selection_criteria_field_present_in_view_price_list_details_ref_rates_page()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is country selection criteria field present in view price list details ref rates page')

    def is_country_column_present_in_view_price_list_details_ref_rates_page(self):
        """
        Returning is country column present in view price list details ref rates page
        Implementing logging for is country column present in view price list details ref rates page functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is country column present in view price list details ref rates page')
            return self._buy_page.is_country_column_present_in_view_price_list_details_ref_rates_page()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is country column present in view price list details ref rates page')

    def select_reference_rates_tab(self):
        """
        Returning select reference rates tab
        Implementing logging for select reference rates tab functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select reference rates tab')
            self._buy_page.select_reference_rates_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select reference rates tab')
            return is_selected

    def is_country_selection_criteria_field_present_in_compare_price_list_pop_up(self):
        """
        Returning is country selection criteria field present in compare price list pop up
        Implementing logging for is country selection criteria field present in compare price list pop up functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is country selection criteria field present in compare price list pop up')
            return self._buy_page.is_country_selection_criteria_field_present_in_compare_price_list_pop_up()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is country selection criteria field present in compare price list pop up')

    def is_country_column_present_in_compare_price_list_pop_up(self):
        """
        Returning is country column present in compare price list pop up
        Implementing logging for is country column present in compare price list pop up functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is country column present in compare price list pop up')
            return self._buy_page.is_country_column_present_in_compare_price_list_pop_up()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is country column present in compare price list pop up')

    def select_mcc_mnc_tab(self):
        """
        Returning select mcc mnc tab
        Implementing logging for select mcc mnc tab functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select mcc mnc tab')
            self._buy_page.select_mcc_mnc_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select mcc mnc tab')
            return is_selected

    def click_search_mcc_mnc_arrow_button(self):
        """
        Returning click search mcc mnc arrow button
        Implementing logging for click search mcc mnc arrow button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click search mcc mnc arrow button')
            self._buy_page.click_search_mcc_mnc_arrow_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click search mcc mnc arrow button')
            return is_clicked

    def verify_status_filter(self, *status_list):
        """
        Returning verify status filter
        Implementing logging for verify status filter functionality
        :param status_list:
        :return: True/False
        """
        is_verified = None
        try:
            self.logger.info('Start: verify status filter')
            is_verified = self._buy_page.verify_status_filter(status_list)
        except WebDriverException as exp:
            is_verified = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: verify status filter')
            return is_verified

    def set_re_analysis_status(self, *status_list):
        """
        Returning set re analysis status
        Implementing logging for set re analysis status functionality
        :param status_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set re analysis status')
            self._buy_page.set_re_analysis_status(status_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set re analysis status')
            return is_set

    def click_buy_and_sell_deal_management_link(self):
        """
        Returning click buy and sell deal management link status
        Implementing logging for click buy and sell deal management link functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click buy and sell deal management link')
            self._buy_page.click_buy_and_sell_deal_management_link()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click buy and sell deal management link')
            return is_clicked

    def click_request_new_buy_and_sell_deal(self):
        """
        Returning click request new buy and sell deal
        Implementing logging for click request new buy and sell deal functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click request new buy and sell deal')
            self._buy_page.click_request_new_buy_and_sell_deal()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click request new buy and sell deal')
            return is_clicked

    def is_buy_and_sell_deal_details_screen_status_dropdown_visible(self):
        """
        Returning is buy and sell deal details screen status dropdown visible
        Implementing logging for is buy and sell deal details screen status dropdown visible functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is buy and sell deal details screen status dropdown visible')
            return self._buy_page.is_buy_and_sell_deal_details_screen_status_dropdown_visible()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is buy and sell deal details screen status dropdown visible')

    def is_end_date_text_box_visible(self):
        """
        Returning is end date text box visible
        Implementing logging for is end date text box visible functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is end date text box visible')
            return self._buy_page.is_end_date_text_box_visible()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is end date text box visible')

    def is_auto_expire_checkbox_visible(self):
        """
        Returning is auto expire checkbox visible
        Implementing logging for is auto expire checkbox visible functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is auto expire checkbox visible')
            return self._buy_page.is_auto_expire_checkbox_visible()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is auto expire checkbox visible')

    def verify_proposed_deal_summary_table_column_name(self, column_name):
        """
        Returning proposed deal summary table column name verification
        Implementing logging for proposed deal summary table column name verification functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: proposed deal summary table column name verification')
            return self._buy_page.verify_proposed_deal_summary_table_column_name(column_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: proposed deal summary table column name verification')

    def click_request_new_deal_button(self):
        """
        Returning click request new deal button
        Implementing logging for click request new deal button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click request new deal button')
            self._buy_page.click_request_new_deal_button()
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
            self._buy_page.set_buy_and_sell_deal_name(buy_and_sell_deal_prefix)
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
            self._buy_page.set_buy_sell_deal_account(account_list)
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
            self._buy_page.set_vendor(vendor_list)
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
            self._buy_page.set_customer(customer_list)
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
            self._buy_page.click_buy_and_sell_deal_create_button()
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
            return self._buy_page.get_buy_and_sell_deal_name()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get buy and sell deal name')

    def click_buy_and_sell_deal_save_button(self):
        """
        Returning click buy and sell deal save button
        Implementing logging for click buy and sell deal save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click buy and sell deal save button')
            self._buy_page.click_buy_and_sell_deal_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click buy and sell deal save button')
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
            self._buy_page.set_start_date(start_date)
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
            self._buy_page.set_buy_and_sell_management_grid_settings(grid_settings)
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
            self._buy_page.sort_buy_and_sell_management_grid_column(column_name, descending_order)
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
            all_row_data = self._buy_page.get_all_rows_of_specific_column_from_buy_and_sell_management_grid(column_name)
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
            self._buy_page.drag_buy_and_sell_management_grid_column(source_column, destination_column)
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
            column_name_list = self._buy_page.get_buy_and_sell_management_grid_column_names_by_order()
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
            self._buy_page.click_buy_and_sell_management_grid_export_to_excel_button()
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
            self._buy_page.select_buy_and_sell_deal_management_grid_first_row_checkbox()
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
            self._buy_page.click_buy_and_sell_deal_bulk_edit_button()
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
            self._buy_page.set_bulk_edit_end_date(end_date, future_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set bulk edit end date')
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
            self._buy_page.click_bulk_edit_submit_button()
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
            self._buy_page.click_save_changes_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click save changes button')
            return is_clicked

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
                self._buy_page.set_multiple_status(status_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set multiple status')
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
            self._buy_page.click_buy_and_sell_deal_management_grid_first_row_inline_action_button()
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
            is_displayed = self._buy_page.is_account_label_displayed_correctly()
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
            is_displayed = self._buy_page.is_account_manager_label_displayed_correctly()
        except WebDriverException as exp:
            is_displayed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is account manager label displayed correctly')
            return is_displayed

    def click_vendor_grid_add_destination_button(self):
        """
        Returning click vendor grid add destination button
        Implementing logging for click vendor grid add destination button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click vendor grid add destination button')
            self._buy_page.click_vendor_grid_add_destination_button()
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
            self._buy_page.set_source_to_add_destination(source_name)
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
            self._buy_page.set_route_class_to_add_destination(route_class_list)
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
            self._buy_page.set_destination_to_add_destination(destination)
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
            self._buy_page.set_deal_rate_to_add_destination(deal_rate)
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
            self._buy_page.set_deal_volume_to_add_destination(deal_volume)
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
            self._buy_page.click_customer_grid_add_destination_button()
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
            self._buy_page.click_request_deal_button()
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
            self._buy_page.click_add_destination_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click add destination save button')
            return is_clicked

    def compare_vendor_price_list_detail_rates_grid_destination(self):
        """
        Returning compare vendor price list detail rates grid destination
        Implementing logging for compare vendor price list detail rates grid destination functionality
        :return: True/False
        """
        is_compared = None
        try:
            self.logger.info('Start: compare vendor price list detail rates grid destination')
            is_compared = self._buy_page.compare_vendor_price_list_detail_rates_grid_destination()
        except WebDriverException as exp:
            is_compared = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare vendor price list detail rates grid destination')
            return is_compared

    def compare_vendor_price_list_detail_dial_digits_grid_destination(self):
        """
        Returning compare vendor price list detail dial digits grid destination
        Implementing logging for compare vendor price list detail dial digits grid destination functionality
        :return: True/False
        """
        is_compared = None
        try:
            self.logger.info('Start: compare vendor price list detail dial digits grid destination')
            is_compared = self._buy_page.compare_vendor_price_list_detail_dial_digits_grid_destination()
        except WebDriverException as exp:
            is_compared = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare vendor price list detail dial digits grid destination')
            return is_compared

    def compare_vendor_price_list_detail_rates_grid_rate(self):
        """
        Returning compare vendor price list detail rates grid rate
        Implementing logging for compare vendor price list detail rates grid rate functionality
        :return: True/False
        """
        is_compared = None
        try:
            self.logger.info('Start: compare vendor price list detail rates grid rate')
            is_compared = self._buy_page.compare_vendor_price_list_detail_rates_grid_rate()
        except WebDriverException as exp:
            is_compared = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare vendor price list detail rates grid rate')
            return is_compared

    def get_reference_rates_tab_analyzed_rate(self):
        """
        Returning get reference rates tab analyzed rate
        Implementing logging for get reference rates tab analyzed rate functionality
        :return: analyzed_rate
        """
        analyzed_rate = None
        try:
            self.logger.info('Start: get reference rates tab analyzed rate')
            analyzed_rate = self._buy_page.get_reference_rates_tab_analyzed_rate()
        except WebDriverException as exp:
            analyzed_rate = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get reference rates tab analyzed rate')
            return analyzed_rate

    def get_reference_rates_tab_effective_date(self):
        """
        Returning get reference rates tab effective date
        Implementing logging for get reference rates tab effective date functionality
        :return: effective_date
        """
        effective_date = None
        try:
            self.logger.info('Start: get reference rates tab effective date')
            effective_date = self._buy_page.get_reference_rates_tab_effective_date()
        except WebDriverException as exp:
            effective_date = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get reference rates tab effective date')
            return effective_date

    def is_target_buy_policies_tab_displayed(self):
        """
        Returning is target buy policies tab displayed
        Implementing logging for is target buy policies tab displayed functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is target buy policies tab displayed')
            return self._buy_page.is_target_buy_policies_tab_displayed()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is target buy policies tab displayed')

    def select_target_buy_policies_tab(self):
        """
        Returning select target buy policies tab
        Implementing logging for select target buy policies tab functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select target buy policies tab')
            self._buy_page.select_target_buy_policies_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select target buy policies tab')
            return is_selected

    def is_button_displayed(self, button_name):
        """
        Returning is button displayed
        Implementing logging for is button displayed functionality
        :param button_name:
        :return: True/False
        """
        try:
            self.logger.info('Start: is button displayed')
            return self._buy_page.is_button_displayed(button_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is button displayed')

    def is_target_buy_policies_grid_column_present(self, column_name):
        """
        Returning is target buy policies grid column present
        Implementing logging for is target buy policies grid column present functionality
        :param column_name:
        :return: True/False
        """
        try:
            self.logger.info('Start: is target buy policies grid column present')
            return self._buy_page.is_target_buy_policies_grid_column_present(column_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is target buy policies grid column present')

    def click_target_buy_policies_grid_first_row_inline_action_button(self):
        """
        Returning click target buy policies grid first row inline action button
        Implementing logging for click target buy policies grid first row inline action button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click target buy policies grid first row inline action button')
            self._buy_page.click_target_buy_policies_grid_first_row_inline_action_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click target buy policies grid first row inline action button')
            return is_clicked

    def is_inline_action_item_present(self, item_name):
        """
        Returning is inline action item present
        Implementing logging for is inline action item present functionality
        :param item_name:
        :return: True/False
        """
        try:
            self.logger.info('Start: is inline action item present')
            return self._buy_page.is_inline_action_item_present(item_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is inline action item present')

    def click_create_new_target_buy_policy_button(self):
        """
        Returning click create new target buy policy button
        Implementing logging for click create new target buy policy button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click create new target buy policy button')
            self._buy_page.click_create_new_target_buy_policy_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click create new target buy policy button')
            return is_clicked

    def set_target_buy_policy_name(self, prefix):
        """
        Returning set target buy policy name
        Implementing logging for set target buy policy name functionality
        :param prefix:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set target buy policy name')
            self._buy_page.set_target_buy_policy_name(prefix)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set target buy policy name')
            return is_set

    def get_target_buy_policy(self):
        """
        Returning get target buy policy
        Implementing logging for get target buy policy functionality
        :return: target buy policy
        """
        try:
            self.logger.info('Start: get target buy policy')
            return self._buy_page.get_target_buy_policy()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get target buy policy')

    def set_target_buy_policy_abbreviation(self, prefix):
        """
        Returning set target buy policy abbreviation
        Implementing logging for set target buy policy abbreviation functionality
        :param prefix:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set target buy policy abbreviation')
            self._buy_page.set_target_buy_policy_abbreviation(prefix)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set target buy policy abbreviation')
            return is_set

    def set_route_class_to_create_new_target_buy_policy(self, route_class):
        """
        Returning set route class to create new target buy policy
        Implementing logging for set route class to create new target buy policy functionality
        :param route_class:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set route class to create new target buy policy')
            self._buy_page.set_route_class_to_create_new_target_buy_policy(route_class)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set route class to create new target buy policy')
            return is_set

    def click_include_cli_checkbox(self):
        """
        Returning click include cli checkbox
        Implementing logging for click include cli checkbox functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click include cli checkbox')
            self._buy_page.click_include_cli_checkbox()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click include cli checkbox')
            return is_clicked

    def click_automate_generation_checkbox(self):
        """
        Returning click automate generation checkbox
        Implementing logging for click automate generation checkbox functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click automate generation checkbox')
            self._buy_page.click_automate_generation_checkbox()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click automate generation checkbox')
            return is_clicked

    def click_save_target_buy_policy_button(self):
        """
        Returning click save target buy policy button
        Implementing logging for click save target buy policy button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click save target buy policy button')
            self._buy_page.click_save_target_buy_policy_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click save target buy policy button')
            return is_clicked

    def click_target_buy_overrides_button(self):
        """
        Returning click target buy overrides button
        Implementing logging for click target buy overrides button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click target buy overrides button')
            self._buy_page.click_target_buy_overrides_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click target buy overrides button')
            return is_clicked

    def is_target_buy_list_overrides_screen_loaded(self):
        """
        Returning is target buy list overrides screen loaded
        Implementing logging for is target buy list overrides screen loaded functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is target buy list overrides screen loaded')
            return self._buy_page.is_target_buy_list_overrides_screen_loaded()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is target buy list overrides screen loaded')

    def is_expected_dropdown_list_control_visible_in_target_buy_overrides_screen(self, expected_list_control_name):
        """
        Returning is expected dropdown list control visible
        Implementing logging for is expected dropdown list control visible functionality
        :param expected_list_control_name:
        :return:
        """
        try:
            self.logger.info('Start: is expected dropdown list control visible')
            return self._buy_page.is_expected_dropdown_list_control_visible_in_target_buy_overrides_screen(expected_list_control_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is expected dropdown list control visible')

    def is_destination_input_textbox_visible(self):
        """
        Returning is destination input textbox visible
        Implementing logging for is destination input textbox visible functionality
        :return:
        """
        try:
            self.logger.info('Start: is destination input textbox visible')
            return self._buy_page.is_destination_input_textbox_visible()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is destination input textbox visible')

    def is_expected_grid_column_present(self, expected_column_name):
        """
        Returning is expected grid column present
        Implementing logging for is expected grid column present functionality
        :param expected_column_name:
        :return:
        """
        try:
            self.logger.info('Start: is expected grid column present')
            return self._buy_page.is_expected_grid_column_present(expected_column_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is expected grid column present')

    def select_multiple_rows_of_target_buy_list_overrides_grid(self):
        """
        Returning select multiple rows from target buy list overrides grid
        Implementing logging for select multiple rows from target buy list overrides grid functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select multiple rows from target buy list overrides grid')
            self._buy_page.select_target_buy_list_overrides_grid_row_checkbox()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select multiple rows from target buy list overrides grid')
            return is_selected

    def click_target_buy_list_overrides_bulk_edit_button(self):
        """
        Returning click target buy list overrides bulk edit button
        Implementing logging for click target buy list overrides bulk edit button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click target buy list overrides bulk edit button')
            self._buy_page.click_target_buy_list_overrides_bulk_edit_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click target buy list overrides bulk edit button')
            return is_clicked

    def is_target_buy_details_section_present_in_vendor_profile_page(self):
        """
        Returning is target buy details section present in vendor profile page
        Implementing logging for is target buy details section present in vendor profile page functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is target buy details section present in vendor profile page')
            return self._buy_page.is_target_buy_details_section_present_in_vendor_profile_page()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is target buy details section present in vendor profile page')

    def is_specific_field_on_target_buy_details_section_present(self, field_name):
        """
        Returning is specific field on target buy details section present
        Implementing logging for is specific field on target buy details section present functionality
        :param field_name:
        :return: True/False
        """
        try:
            self.logger.info('Start: is specific field on target buy details section present')
            return self._buy_page.is_specific_field_on_target_buy_details_section_present(field_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is specific field on target buy details section present')

    def set_target_buy_distribution_link_code(self):
        """
        Returning set target buy distribution link code
        Implementing logging for set target buy distribution link code functionality
        :return: True/False
        """
        is_rate_plan_set = None
        try:
            self.logger.info('Start: set target buy distribution link code')
            self._buy_page.set_target_buy_distribution_link_code()
            is_rate_plan_set = True
        except WebDriverException as exp:
            is_rate_plan_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set target buy distribution link code')
            return is_rate_plan_set

    def set_target_buy_distribution_receiving_member(self, member_prefix):
        """
        Returning set target buy distribution receiving member
        Implementing logging for set target buy distribution receiving member functionality
        :param member_prefix:
        :return: True/False
        """
        is_rate_plan_set = None
        try:
            self.logger.info('Start: set target buy distribution receiving member')
            self._buy_page.set_target_buy_distribution_receiving_member(member_prefix)
            is_rate_plan_set = True
        except WebDriverException as exp:
            is_rate_plan_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set target buy distribution receiving member')
            return is_rate_plan_set

    def set_target_buy_list(self, item_name, is_first_item):
        """
        Returning set target buy list
        Implementing logging for set target buy list functionality
        :param item_name
        :param is_first_item:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set target buy list')
            self._buy_page.set_target_buy_list(item_name, is_first_item)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set target buy list')
            return is_set

    def set_target_buy_list_number_plan(self, item_name, is_first_item):
        """
        Returning set target buy list number plan
        Implementing logging for set target buy list number plan functionality
        :param item_name
        :param is_first_item:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set target buy list number plan')
            self._buy_page.set_target_buy_list_number_plan(item_name, is_first_item)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set target buy list number plan')
            return is_set

    def set_target_buy_policy_type(self, type):
        """
        Returning set target buy policy type
        Implementing logging for set target buy policy type functionality
        :param type:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set target buy policy type')
            self._buy_page.set_target_buy_policy_type(type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set target buy policy type')
            return is_set

    def get_target_buy_policy_grid_row_details(self):
        """
        Returning get target buy policy grid row details
        Implementing logging for get target buy policy grid row details functionality
        :return: grid row data
        """
        try:
            self.logger.info('Start: get target buy policy grid row details')
            return self._buy_page.get_target_buy_policy_grid_row_details()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get target buy policy grid row details')

    def click_target_buy_policy_grid_first_row_inline_action_button(self):
        """
        Returning click target buy policy grid first row inline action button
        Implementing logging for  click target buy policy grid first row inline action button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start:  click target buy policy grid first row inline action button')
            self._buy_page.click_target_buy_policy_grid_first_row_inline_action_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End:  click target buy policy grid first row inline action button')
            return is_clicked

    def click_edit_target_buy_policy_button(self):
        """
        Returning click edit target buy policy button
        Implementing logging for click edit target buy policy button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start:  click edit target buy policy button')
            self._buy_page.click_edit_target_buy_policy_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click edit target buy policy button')
            return is_clicked

    def click_save_edited_target_buy_policy_button(self):
        """
        Returning click save edited target buy policy button
        Implementing logging for click save edited target buy policy button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start:  click save edited target buy policy button')
            self._buy_page.click_save_edited_target_buy_policy_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click save edited target buy policy button')
            return is_clicked

    def click_cancel_edited_target_buy_policy_button(self):
        """
        Returning click cancel edited target buy policy button
        Implementing logging for click cancel edited target buy policy button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click cancel edited target buy policy button')
            self._buy_page.click_cancel_edited_target_buy_policy_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click cancel edited target buy policy button')
            return is_clicked

    def refresh_window(self):
        """
        Returning refresh window
        Implementing logging for refresh window functionality
        :return: True/False
        """
        is_refreshed = None
        try:
            self.logger.info('Start: refresh window')
            self._buy_page.refresh_window()
            is_refreshed = True
        except WebDriverException as exp:
            is_refreshed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: refresh window')
            return is_refreshed
