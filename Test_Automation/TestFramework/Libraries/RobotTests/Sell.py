"""
Implementing Sell UI page actions
Implementing Logging mechanism for Sell page actions
"""

from selenium.common.exceptions import WebDriverException
from TestFramework.Libraries.logger import Logger
from TestFramework.Libraries.Pages.sell_page import SellPage


class Sell:
    """
    Returning switch to sell
    Returning sell page title
    Returning sell dashboard tab status
    Returning customer tab status
    Returning country groups link status
    Returning select customer tab
    Returning create customer status
    Returning customer price lists status
    Returning create customer price lists status
    Returning price exceptions status
    Returning customer grid loading status
    Returning click customer price lists button status
    Returning customer price lists screen status
    Returning click customer grid inline action button
    Returning select inline action item
    Returning set customer profile status
    Returning click save customer profile button
    Returning clear all table filters
    Returning grid filter details
    Returning click sell page inline action button
    Returning customer profile status
    Returning customer rates status
    Returning customer digits status
    Returning price exceptions performance status
    Returning upload price exceptions status
    Returning customer destination status
    Returning click create customer price lists button
    Returning is create customer price lists screen loaded
    Returning set apply increase notice period
    Returning set apply digit change notice period
    Returning set apply decrease notice period
    Returning select customers for price lists
    Returning select all countries for price lists
    Returning click preview button
    Returning is preview page displayed
    Returning close preview page
    Returning close current tab
    Returning clear filter
    Returning verify customer details
    Returning click on generate customer price lists button
    Returning customer price lists generation status
    Returning click customer grid information button
    Returning get customer grid row details
    Returning verify customer details in information pop up
    Returning close current pop up
    Returning set reference price list
    Returning click on create customer button
    Returning set customer name
    Returning set abbreviation
    Returning set ixtools account
    Returning set rate plan
    Returning set number plan
    Returning set offer content
    Returning set offer date
    Returning set from date
    Returning click customer price lists search button
    Returning click customer price lists inline action button
    Returning delete inline action item present status
    Returning issue inline action item present status
    Returning issue for manual distribution inline action item present status
    Returning view price list detail inline action item present status
    Returning filter customer price lists grid
    Returning get selected price list
    Returning clear filter of customer price list
    Returning clear all table filters of customer price list
    Returning verify customer price list grid row details
    Returning accept price list processed pop up
    Returning set call type
    Returning click on save customer profile for create
    Returning is status inactive
    Returning verify customer profile details in database
    Returning verify customer status in database
    Returning set number plan for create customer
    Returning click price exceptions button
    Returning set number plan for price exceptions
    Returning set status
    Returning set customers
    Returning set select date
    Returning set destination
    Returning click price exceptions search button
    Returning search results displayed in the grid
    Returning select customer price lists checkbox
    Returning click compare price lists button
    Returning verify selected price lists details
    Returning verify rates grid columns
    Returning select dial digits tab
    Returning verify dialed digits columns
    Returning close compare price lists pop up
    Returning set customer profile status for edit customer
    Returning customers field editable status
    Returning select pricing exception grid first row
    Returning set first row requested price
    Returning set first row begin date
    Returning set first row approval type
    Returning get price exceptions grid first row data
    Returning price exceptions status status
    Returning click save changes button
    Returning deselect multiselect kendo dropdown
    Returning price exceptions grid first row data status
    Returning set price exceptions performance begin date
    Returning click price exceptions performance submit button
    Returning verify price exceptions performance begin date
    Returning verify price exceptions performance customer
    Returning click copy price list exceptions button
    Returning select customers for price lists
    Returning click copy price exceptions submit button
    Returning is copy price exceptions successful
    Returning click save changes button after copy price exceptions
    Returning set price exceptions grid first row status
    Returning price exceptions grid has data status
    Returning set begin date for status updation
    Returning set select date for status updation
    Returning click pricing exception grid first row inline action button
    Returning get price exceptions first grid first row details
    Returning verify price exceptions details
    Returning click bulk edit button
    Returning set end date
    Returning set begin date
    Returning click bulk edit submit button
    Returning set bulk edit status
    Returning set bulk edit approvaltype
    Returning set requested price
    Returning set estimated value
    Returning select pricing exception grid multiple row
    Returning click upload price exceptions button
    Returning click upload price exceptions browse button
    Returning set customer for upload price exceptions
    Returning click price exceptions upload button
    Returning click price exception upload link
    Returning set status for pricing exception search
    Returning click pricing exceptions upload search button
    Returning get upload price exceptions number of rows
    Returning get price exceptions number of rows from grid
    Returning compare price exceptions number of rows from grid
    Returning price exceptions page loading status
    Returning price exceptions total number of records displaying status
    Returning get created carrier name
    Returning get created rate plan name
    Returning get created customer name
    Returning validate date format
    Returning validate currency format
    Returning get revenue from customers grid
    Returning get margin from customers grid
    Returning get last modified time from customer profile information
    Returning get customer rates begin date
    Returning get rate1 from customer rates grid
    Returning get rate2 from customer rates grid
    Returning get rate3 from customer rates grid
    Returning get begin date from customer rates grid
    Returning get last modified from customer rates grid
    Returning select dialed digit tab
    Returning select rates tab
    Returning select destinations tab
    Returning get customer dialed digit begin date
    Returning get begin date from customer dialed digit grid
    Returning get modified date from customer dialed digit grid
    Returning get customer destinations begin date
    Returning get begin date from customer destinations grid
    Returning get last modified from customer destinations grid
    Returning get customer price list from date
    Returning get customer price list to date
    Returning get price list date from customer price list grid
    Returning get modified date from customer price list grid
    Returning get price list date from selected price list grid
    Returning get offer date
    Returning get select date
    Returning click customer grid first row inline action button
    Returning close sell window
    Returning set pricing exceptions select date
    Returning click upload customer price lists button
    Returning click upload customer price list browse button
    Returning set customer name for upload customer price list
    Returning compare customer price lists number of rows after upload
    Returning set customer grid settings
    Returning get all rows of specific column from customers grid
    Returning sort customers grid column
    Returning compare sorted data
    Returning get customers grid column names by order
    Returning drag customers grid column
    Returning compare grid column position after altering
    Returning click customer grid export to excel button
    Returning get all rows of specific column from customer rates grid
    Returning sort customer rates grid column
    Returning get customer rates grid column names by order
    Returning drag customer rates grid column
    Returning click customer rates search button
    Returning is customer rates grid filtered properly
    Returning get all rows of specific column from customer digits grid
    Returning sort customer digits grid column
    Returning get customer digits grid column names by order
    Returning drag customer digits grid column
    Returning click search button
    Returning is customer digits grid filtered properly
    Returning get all rows of specific column from customer destinations grid
    Returning sort customer destinations grid column
    Returning get customer destinations grid column names by order
    Returning drag customer destinations grid column
    Returning is customer destinations grid filtered properly
    Returning filter customer destinations grid
    Returning set customer price lists grid settings
    Returning get all rows of specific column from customer price lists grid
    Returning sort customer price lists grid column
    Returning get customer price lists grid column names by order
    Returning drag customer price lists grid column
    Returning is customer price lists grid filtered properly
    Returning click customer price lists grid export to excel button
    Returning click customer price lists grid first row inline action button
    Returning set customer price list detail grid settings
    Returning get all rows of specific column from customer price list detail grid
    Returning sort customer price list detail grid column
    Returning get customer price list detail grid column names by order
    Returning drag customer price list detail grid column
    Returning is customer price list detail grid filtered properly
    Returning click customer price list detail grid export to excel button
    Returning filter customer price list detail grid
    Returning set price exceptions grid settings
    Returning get all rows of specific column from price exceptions grid
    Returning sort price exceptions grid column
    Returning get price exceptions grid column names by order
    Returning drag price exceptions grid column
    Returning is price exceptions grid filtered properly
    Returning click price exceptions grid export to excel button
    Returning filter price exceptions grid
    Returning click price exceptions performance report button
    Returning select upload to requested radio button
    Returning create cpe bundle button
    Returning create cpe bundle save button
    Returning select sell dashboard tab
    Returning click cpe bundle button
    Returning click cpe bundle create cpe bundle button
    Returning set customer source
    Returning select all customer of pricing exceptions
    Returning select price exception request grid multiple row
    Returning is bulk edit error pop up displayed
    Returning is save customer profile button not present
    Returning is specific tab on customer profile page present
    Returning is specific column on customer profile page present
    Returning is upload customer price list button not present
    Returning click show summary form button to expand
    Returning is error log message tab present
    Returning get cpl prev date override
    Returning set cpl prev date override
    Returning get customers grid first row customer name
    Returning is my price list screen loaded
    Returning click new my price list button
    Returning is create my price list screen loaded
    Returning set my price list
    Returning get my price list
    Returning move all available customers to destination to create my price list
    Returning move all available countries to destination to create my price list
    Returning click save my price list button
    Returning set my price list into search input field
    Returning click my price lists management grid first row inline action button
    Returning select my price list management grid inline action item
    Returning is error message displayed for duplicate my price list
    Returning select item from my price list drop down
    Returning click customer price list preview export to excel button
    Returning select my price list management grid first row checkbox
    Returning click delete button
    Returning click country group link
    Returning click choose template type to download customer price list link
    Returning set reference price list first item
    Returning set number plan first item
    Returning are countries selected
    Returning select first customer for price lists
    Returning validate country dropdown does not show country having no country code
    Returning get countries from tbcountry having no mobile country code
    Returning is warnings message tab present
    Returning is errors message tab present
    Returning is warning tab present
    Returning select warning tab
    Returning is warning tab loaded
    Returning is pricing exception error message displayed for approved or request status
    Returning is sorting options are displayed in customer price list preview screen
    Returning is country multiselect field disabled
    Returning set offer content for mypricelist
    Returning set mypricelist to create cpl
    Returning is country multiselect field enabled
    Returning is search rate present
    Returning select tab
    Returning get all items from my pricelist dropdown
    Returning is grid empty
    Returning is deleted mypricelist removed from mypricelist dropdown
    Returning is future price list action column name not present
    Returning is future price list action column name present
    Returning is pricing exception bulk edit pop up not present
    Returning click auto generate management button
    Returning is auto generate management screen present
    Returning is specific column present in auto generate management screen
    Returning click new template button
    Returning set new template name
    Returning get created template name
    Returning set begin of range period date to add
    Returning set begin of range period time
    Returning set end of range period date to add
    Returning set end of range period time
    Returning filter auto template management grid
    Returning get auto template management grid row details
    Returning set first row note
    Returning verify number plan field value
    Returning get offer content field value
    Returning get my price list name from mpl management grid
    Returning set scope for mypricelist
    Returning set select date to mypricelist grid
    Returning set mypricelist from kendo dropdown
    Returning compare select date in mypricelist
    Returning set offer date to mypricelist grid
    Returning compare offer date in mypricelist
    Returning is preview summary grid column displayed
    Returning click customer price list job notifier title
    Returning click first row job msg info icon
    Returning does jobs grid have data
    Returning is generate offers for filter option present
    Returning is generate offers for filter option not present
    Returning rates tab loading status
    Returning compare customer price lists number of rows after upload for one upload
    Returning set value into pricing exception destination input box
    Returning is price exception grid begin date field auto populated
    Returning click quality of service link
    Returning set quality of service
    Returning is qos grid column present
    Returning check ixlink customer checkbox
    Returning get available number of countries for price lists
    Returning click buy and sell deal management link
    Returning verify deal management grid column display thousand separators
    Returning is pricing exception grid error message appeared
    Returning is qos screen filter option present
    Returning click clear button
    Returning is qos filter option selection cleared
    Returning get source name from source customer table
    Returning check exclude own home country checkbox
    Returning assign available country to source
    Returning get cost policy status from database
    Returning is homecountry not displayed in preview grid
    Returning uncheck exclude own home country checkbox
    Returning is homecountry displayed in preview grid
    Returning get source name from source customer table where countryid is not null functionality
    Returning click import button
    Returning click qos browse button
    Returning click upload files button
    Returning get customer price list grid number of rows
    Returning compare cpl count after creating a new one
    Returning is sdialed digits mcc mnc tab present
    Returning is first row future offer actions disabled
    Returning is second row future offer actions enabled
    Returning click second row future offer actions dropdown
    Returning does future offer actions dropdown have proper options
    Returning set to date
    Returning click price exception excel template download button
    Returning is specific column present in mypricelist grid
    Returning is specific field present in mypricelist page
    Returning is field present
    Returning is button displayed
    Returning click auto generate template grid first row inline action button
    Returning is inline action item present
    Returning check require cpl approval checkbox
    Returning select customer price list grid first row
    Returning click issue price lists button with cpl approval
    Returning select destinations checkbox
    Returning set price exception grid begin date
    Returning set reference price list for for create customer
    Returning click price exception grid first row info icon
    Returning verify date range error message
    Returning select customers for mypricelist
    Returning select countries for mypricelist
    """
    ROBOT_LIBRARY_SCOPE = 'TEST SUITE'

    logger = Logger().get_logger('Sell')

    def __init__(self):
        self._sell_page = SellPage()

    def switch_to_sell(self):
        """
        Returning switch to sell
        Implementing logging for switch to sell functionality
        :return:
        """
        is_switched = None
        try:
            self.logger.info('Start: switch to sell method')
            self._sell_page.switch_to_sell()
            is_switched = True
        except WebDriverException as exp:
            is_switched = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: switch to sell method')
            return is_switched

    def get_sell_page_title(self):
        """
        Returning sell page title
        Implementing logging for get sell page title functionality
        :return: Sell page title
        """
        try:
            self.logger.info('Start: get sell page title')
            return self._sell_page.get_sell_page_title()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get sell page title')

    def is_sell_dashboard_tab_present(self):
        """
        Returning sell dashboard tab status
        Implementing logging for is sell dashboard tab present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is sell dashboard tab present')
            return self._sell_page.is_sell_dashboard_tab_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is sell dashboard tab present')

    def is_customer_tab_present(self):
        """
        Returning customer tab status
        Implementing logging for is customer tab present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is customer tab present')
            return self._sell_page.is_customer_tab_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is customer tab present')

    def is_country_groups_link_present(self):
        """
        Returning country groups link status
        Implementing logging for is country groups link present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is country groups link present')
            return self._sell_page.is_country_groups_link_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is country groups link present')

    def select_customer_tab(self):
        """
        Returning select customer tab
        Implementing logging for is select customer tab functionality
        :return:
        """
        is_selected = None
        try:
            self.logger.info('Start: select customer tab method')
            self._sell_page.select_customer_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select customer tab method')
            return is_selected

    def is_create_customer_present(self):
        """
        Returning create customer status
        Implementing logging for is create customer present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is create customer present')
            return self._sell_page.is_create_customer_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is create customer present')

    def is_customer_price_lists_present(self):
        """
        Returning customer price lists status
        Implementing logging for is customer price lists present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is customer price lists present')
            return self._sell_page.is_customer_price_lists_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is customer price lists present')

    def is_create_customer_price_lists_present(self):
        """
        Returning create customer price lists status
        Implementing logging for is create customer price lists present functionality
        :return:
        """
        try:
            self.logger.info('Start: is create customer price lists present')
            return self._sell_page.is_create_customer_price_lists_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is create customer price lists present')

    def is_price_exceptions_present(self):
        """
        Returning price exceptions status
        Implementing logging for is price exceptions present functionality
        :return:
        """
        try:
            self.logger.info('Start: is price exceptions link present')
            return self._sell_page.is_price_exceptions_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is price exceptions link present')

    def is_customer_grid_displayed(self):
        """
        Returning customer grid loading status
        Implementing logging for is customer grid displayed functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is customer grid displayed method')
            return self._sell_page.is_customer_grid_displayed()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is customer grid displayed method')

    def grid_filter_details(self, column_name, *filter_item_list):
        """
        Returning grid filter details
        Implementing logging for grid filter details functionality
        :param column_name: column name to filter
        :param filter_item_list: items to filter
        :return: True/False
        """
        is_filtered = None
        try:
            self.logger.info('Start: grid filter details')
            self._sell_page.grid_filter_details(column_name, filter_item_list)
            is_filtered = True
        except WebDriverException as exp:
            is_filtered = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: grid filter details')
            return is_filtered

    def click_sell_page_inline_action_button(self, customer):
        """
        Returning click sell page inline action button
        Implementing logging for click sell page inline action button functionality
        :param customer:
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click sell page inline action button')
            self._sell_page.click_sell_page_inline_action_button(customer)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click sell page inline action button')
            return is_clicked

    def is_customer_profile_present(self):
        """
        Returning customer profile status
        Implementing logging for is customer profile present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is customer profile present')
            return self._sell_page.is_customer_profile_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is customer profile present')

    def is_customer_rates_present(self):
        """
        Returning customer rates status
        Implementing logging for is customer rates present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is customer rates present')
            return self._sell_page.is_customer_rates_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is customer rates present')

    def is_customer_digits_present(self):
        """
        Returning customer digits status
        Implementing logging for is customer digits present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is customer digits present')
            return self._sell_page.is_customer_digits_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is customer digits present')

    def is_price_exceptions_performance_present(self):
        """
        Returning price exceptions performance status
        Implementing logging for is price exceptions performance present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is price exceptions performance present')
            return self._sell_page.is_price_exceptions_performance_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is price exceptions performance present')

    def is_upload_price_exceptions_present(self):
        """
        Returning upload price exceptions status
        Implementing logging for is upload price exceptions present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is upload price exceptions present')
            return self._sell_page.is_upload_price_exceptions_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is upload price exceptions present')

    def is_customer_destination_present(self):
        """
        Returning customer destination status
        Implementing logging for is customer destination present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is customer destination present')
            return self._sell_page.is_customer_destination_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is customer destination present')

    def click_customer_price_lists_button(self):
        """
        Returning click customer price lists button
        Implementing logging for click customer price lists button functionality
        :return:
        """
        is_clicked = None
        try:
            self.logger.info('Start: click customer price lists button')
            self._sell_page.click_customer_price_lists_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click customer price lists button')
            return is_clicked

    def is_customer_price_lists_screen_displayed(self):
        """
        Returning is customer price lists screen loading status
        Implementing logging for is customer price lists screen displayed functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is customer price lists screen displayed')
            return self._sell_page.is_customer_price_lists_screen_displayed()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is customer price lists screen displayed')

    def click_customer_grid_inline_action_button(self, customer):
        """
        Returning click customer grid inline action button
        Implementing logging for click customer grid inline action button functionality
        :param customer:
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click customer grid inline action button')
            self._sell_page.click_customer_grid_inline_action_button(customer)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click customer grid inline action button')
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
            self._sell_page.select_inline_action_item(item_name)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select item from inline action')
            return is_selected

    def set_customer_profile_status(self, item_name):
        """
        Returning set customer profile status
        Implementing logging for set customer profile status functionality
        :param item_name:
        :return: True/False
        """
        is_customer_profile_status_set = None
        try:
            self.logger.info('Start: set customer profile status')
            self._sell_page.set_customer_profile_status(item_name)
            is_customer_profile_status_set = True
        except WebDriverException as exp:
            is_customer_profile_status_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set customer profile status')
            return is_customer_profile_status_set

    def click_save_customer_profile_button(self):
        """
        Returning click save customer profile button
        Implementing logging for click save customer profile button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click save customer profile button')
            self._sell_page.click_save_customer_profile_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click save customer profile button')
            return is_clicked

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
            self._sell_page.clear_all_table_filters(column_name)
            is_cleared = True
        except WebDriverException as exp:
            is_cleared = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: clear all table filters')
            return is_cleared

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
            self._sell_page.close_current_tab(tab_name)
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
            self._sell_page.clear_filter(column_name)
            is_cleared = True
        except WebDriverException as exp:
            is_cleared = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: clear filter')
            return is_cleared

    def verify_customer_details(self, row_data):
        """
        Returning verify customer details
        Implementing logging for verify customer details functionality
        :param row_data:
        :return: True/False
        """
        is_verified = None
        try:
            self.logger.info('Start: verify customer details')
            is_verified = self._sell_page.verify_customer_grid_row_data(row_data)
        except WebDriverException as exp:
            is_verified = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: verify customer details')
            return is_verified

    def click_create_customer_price_lists_button(self):
        """
        Returning click create customer price lists button
        Implementing logging for click create customer price lists button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click create customer price lists button')
            self._sell_page.click_create_customer_price_lists_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click create customer price lists button')
            return is_clicked

    def is_create_customer_price_lists_screen_loaded(self):
        """
        Returning is create customer price lists screen loading status
        Implementing logging for is create customer price lists screen loaded functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is create customer price lists screen loaded')
            return self._sell_page.is_create_customer_price_lists_screen_loaded()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is create customer price lists screen loaded')

    def set_apply_increase_notice_period(self, item_name):
        """
        Returning set apply increase notice period
        Implementing logging for set apply increase notice period functionality
        :param item_name:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set apply increase notice period')
            self._sell_page.set_apply_increase_notice_period(item_name)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set apply increase notice period')
            return is_set

    def set_apply_digit_change_notice_period(self, item_name):
        """
        Returning set apply digit change notice period
        Implementing logging for set apply digit change notice period functionality
        :param item_name:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set apply digit change notice period')
            self._sell_page.set_apply_digit_change_notice_period(item_name)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set apply digit change notice period')
            return is_set

    def set_apply_decrease_notice_period(self, item_name):
        """
        Returning set apply decrease notice period
        Implementing logging for set apply decrease notice period functionality
        :param item_name:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set apply decrease notice period')
            self._sell_page.set_apply_decrease_notice_period(item_name)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set apply decrease notice period')
            return is_set

    def select_customers_for_price_lists(self, *customers_list):
        """
        Returning select customers for price lists
        Implementing logging for select customers for price lists functionality
        :param customers_list:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select customers for price lists')
            self._sell_page.select_customers_for_price_lists(customers_list)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select customers for price lists')
            return is_selected

    def select_all_countries_for_price_lists(self):
        """
        Returning select all countries for price lists
        Implementing logging for select all countries for price lists functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select all countries for price lists')
            self._sell_page.select_all_countries_for_price_lists()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select all countries for price lists')
            return is_selected

    def click_preview_button(self):
        """
        Returning click preview button
        Implementing logging for click preview button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click preview button')
            self._sell_page.click_preview_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click preview button')
            return is_clicked

    def is_preview_page_displayed(self):
        """
        Returning is preview page loading status
        Implementing logging for is preview page displayed functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is preview page displayed')
            return self._sell_page.is_preview_page_displayed()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is preview page displayed')

    def close_preview_page(self):
        """
        Returning close preview page
        Implementing logging for close preview page functionality
        :return: True/False
        """
        is_closed = None
        try:
            self.logger.info('Start: close preview page')
            self._sell_page.close_preview_page()
            is_closed = True
        except WebDriverException as exp:
            is_closed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: close preview page')
            return is_closed

    def click_on_generate_customer_price_lists_button(self):
        """
        Returning click on generate customer price lists button
        Implementing logging for click on generate customer price lists button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click on generate customer price lists button')
            self._sell_page.click_on_generate_customer_price_lists_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click on generate customer price lists button')
            return is_clicked

    def is_customer_price_lists_generation_successful(self):
        """
        Returning customer price lists generation status
        Implementing logging for is customer price lists generation successful functionality
        :return: True/False
        """
        is_successful = None
        try:
            self.logger.info('Start: is customer price lists generation successful')
            self._sell_page.is_customer_price_lists_generation_successful()
            is_successful = True
        except WebDriverException as exp:
            is_successful = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is customer price lists generation successful')
            return is_successful

    def click_customer_grid_information_button(self, customer):
        """
        Returning click customer grid information button
        Implementing logging for click customer grid information button functionality
        :param customer:
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click customer grid information button')
            self._sell_page.click_customer_grid_information_button(customer)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click customer grid information button')
            return is_clicked

    def get_customer_grid_row_details(self):
        """
        Returning get customer grid row details
        Implementing logging for get customer grid row details functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: get customer grid row details')
            return self._sell_page.get_customer_grid_row_details()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get customer grid row details')

    def verify_customer_details_in_information_pop_up(self):
        """
        Returning verify customer details in information pop up
        Implementing logging for verify customer details in information pop up functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: verify customer details in information pop up')
            return self._sell_page.verify_customer_details_in_information_pop_up()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: verify customer details in information pop up')

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
            self._sell_page.close_current_pop_up(pop_up_name)
            is_closed = True
        except WebDriverException as exp:
            is_closed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: close current pop up')
            return is_closed

    def set_reference_price_list(self, item_name):
        """
        Returning set reference price list
        Implementing logging for set reference price list functionality
        :param item_name:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set reference price list')
            if item_name != "":
                self._sell_page.set_reference_price_list(item_name)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set reference price list')
            return is_set

    def set_number_plan(self, item_name):
        """
        Returning set number plan
        Implementing logging for set number plan functionality
        :param item_name:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set number plan')
            if item_name != "":
                self._sell_page.set_number_plan(item_name)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set number plan')
            return is_set

    def set_offer_content(self, item_name):
        """
        Returning set offer content
        Implementing logging for set offer content functionality
        :param item_name:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set offer content')
            if item_name != "":
                self._sell_page.set_offer_content(item_name)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set offer content')
            return is_set

    def set_offer_date(self, offer_date, future_date=False, number_of_days_to_add=1):
        """
        Returning set offer date
        Implementing logging for set offer date functionality
        :param offer_date:
        :param future_date:
        :param number_of_days_to_add:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set offer date')
            if offer_date != "":
                self._sell_page.set_offer_date(offer_date, future_date, number_of_days_to_add)
            else:
                self._sell_page.set_offer_date(self._sell_page.get_current_date(), future_date, number_of_days_to_add)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set offer date')
            return is_set

    def set_from_date(self, from_date):
        """
        Returning set from date
        Implementing logging for set from date functionality
        :return: True/False
        """
        is_date_set = None
        try:
            self.logger.info('Start: set from date')
            self._sell_page.set_from_date(from_date)
            is_date_set = True
        except WebDriverException as exp:
            is_date_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set from date')
            return is_date_set

    def click_customer_price_lists_search_button(self):
        """
        Returning click customer price lists search button
        Implementing logging for click customer price lists search button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click customer price lists search button')
            self._sell_page.click_customer_price_lists_search_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click customer price lists search button')
            return is_clicked

    def click_customer_price_lists_inline_action_button(self, row_indetifier_text):
        """
        Returning click customer price lists inline action button
        Implementing logging for click customer price lists inline action button functionality
        :param row_indetifier_text:
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click customer price lists inline action button')
            self._sell_page.click_customer_price_lists_inline_action_button(row_indetifier_text)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click customer price lists inline action button')
            return is_clicked

    def is_delete_inline_action_item_present(self):
        """
        Returning delete inline action present status
        Implementing logging for is delete inline action present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is delete inline action present')
            return self._sell_page.is_delete_inline_action_item_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is delete inline action present')

    def is_issue_inline_action_item_present(self):
        """
        Returning issue inline action present status
        Implementing logging for is issue inline action present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is issue inline action present')
            return self._sell_page.is_issue_inline_action_item_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is issue inline action present')

    def is_issue_for_manual_distribution_inline_action_item_present(self):
        """
        Returning issue for manual distribution inline action present status
        Implementing logging for is issue for manual distribution inline action present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is issue for manual distribution inline action present')
            return self._sell_page.is_issue_for_manual_distribution_inline_action_item_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is issue for manual distribution inline action present')

    def is_view_price_list_detail_inline_action_item_present(self):
        """
        Returning view price list detail inline action present status
        Implementing logging for is view price list detail inline action present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is view price list detail inline action present')
            return self._sell_page.is_view_price_list_detail_inline_action_item_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is view price list detail inline action present')

    def filter_customer_price_lists_grid(self, column_name, *filter_item_list):
        """
        Returning filter customer price lists grid
        Implementing logging for filter customer price lists grid functionality
        :param column_name: column name to filter
        :param filter_item_list: items to filter
        :return: True/False
        """
        is_filtered = None
        try:
            self.logger.info('Start: filter customer price lists grid')
            self._sell_page.filter_customer_price_lists_grid(column_name, filter_item_list)
            is_filtered = True
        except WebDriverException as exp:
            is_filtered = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: filter customer price lists grid')
            return is_filtered

    def get_selected_price_list(self):
        """
        Returning get selected price list
        Implementing logging for get selected price list functionality
        :return: Sell page title
        """
        try:
            self.logger.info('Start: get selected price list')
            return self._sell_page.get_selected_price_list()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get selected price list')

    def clear_filter_of_customer_price_list(self, column_name):
        """
        Returning clear filter of customer price list
        Implementing logging for clear filter of customer price list functionality
        :param column_name:
        :return: True/False
        """
        is_cleared = None
        try:
            self.logger.info('Start: clear filter of customer price list')
            self._sell_page.clear_filter_of_customer_price_list(column_name)
            is_cleared = True
        except WebDriverException as exp:
            is_cleared = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: clear filter of customer price list')
            return is_cleared

    def clear_all_table_filters_of_customer_price_list(self, column_name):
        """
        Returning clear all table filters of customer price list
        Implementing logging for clear all table filters of customer price list functionality
        :param column_name:
        :return: True/False
        """
        is_cleared = None
        try:
            self.logger.info('Start: clear all table filters of customer price list')
            self._sell_page.clear_all_table_filters_of_customer_price_list(column_name)
            is_cleared = True
        except WebDriverException as exp:
            is_cleared = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: clear all table filters of customer price list')
            return is_cleared

    def verify_customer_price_list_grid_row_details(self, row_data):
        """
        Returning verify customer price list grid row details
        Implementing logging for verify customer price list grid row details functionality
        :param row_data:
        :return: True/False
        """
        is_verified = None
        try:
            self.logger.info('Start: verify customer price list grid row details')
            is_verified = self._sell_page.verify_customer_price_list_grid_row_details(row_data)
        except WebDriverException as exp:
            is_verified = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: verify customer price list grid row details')
            return is_verified

    def accept_price_list_processed_pop_up(self):
        """
        Returning accept price list processed pop up
        Implementing logging for accept price list processed pop up functionality
        :return: True/False
        """
        is_accepted = None
        try:
            self.logger.info('Start: accept price list processed pop up')
            self._sell_page.accept_price_list_processed_pop_up()
            is_accepted = True
        except WebDriverException as exp:
            is_accepted = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: accept price list processed pop up')
            return is_accepted

    def click_on_create_customer_button(self):
        """
        Returning click on create customer button
        Implementing logging for click on create customer button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click on create customer button')
            self._sell_page.click_on_create_customer_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click on create customer button')
            return is_clicked

    def set_customer_name(self, customer_name_prefix):
        """
        Returning set customer name
        Implementing logging for set customer name functionality
        :param customer_name_prefix:
        :return: customer name
        """
        try:
            self.logger.info('Start: set customer name')
            return self._sell_page.set_customer_name(customer_name_prefix)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set customer name')

    def set_abbreviation(self, abbreviation_name_prefix):
        """
        Returning set abbreviation
        Implementing logging for set abbreviation functionality
        :param abbreviation_name_prefix:
        :return: abbreviation name
        """
        try:
            self.logger.info('Start: set abbreviation')
            return self._sell_page.set_abbreviation(abbreviation_name_prefix)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set abbreviation')

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
            self._sell_page.set_ixtools_account(item_name)
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
            self._sell_page.set_rate_plan(item_name)
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
            self._sell_page.set_call_type(item_name)
            is_call_type_set = True
        except WebDriverException as exp:
            is_call_type_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set call type')
            return is_call_type_set

    def click_on_save_customer_profile_for_create(self):
        """
        Returning click on save customer profile for create
        Implementing logging for click on save customer profile for create functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click on save customer profile for create')
            self._sell_page.click_on_save_customer_profile_for_create()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click on save customer profile for create')
            return is_clicked

    def is_status_inactive(self, customer_name):
        """
        Returning is status inactive
        Implementing logging for is status inactive functionality
        :param customer_name:
        :return: True/False
        """
        try:
            self.logger.info('Start: is status inactive')
            return self._sell_page.is_status_inactive(customer_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is status inactive')

    def verify_customer_profile_details_in_database(self, server, database, user, password):
        """
        Returning verify customer profile details in database
        Implementing logging for verify customer profile details in database functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: verify customer profile details in database')
            return self._sell_page.verify_customer_profile_details_in_database(server, database, user, password)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: verify customer profile details in database')

    def verify_customer_status_in_database(self, server, database, user, password):
        """
        Returning verify customer status in database
        Implementing logging for verify customer status in database functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: verify customer status in database')
            return self._sell_page.verify_customer_status_in_database(server, database, user, password)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: verify customer status in database')

    def set_number_plan_for_create_customer(self, item_name):
        """
        Returning set number plan for create customer
        Implement logging for set number plan for create customer functionality
        :param item_name:
        :return: True/False
        """
        is_number_plan_set = None
        try:
            self.logger.info('Start: set number plan for create customer')
            if item_name != "" and item_name is not None:
                self._sell_page.set_number_plan_for_create_customer(item_name)
            is_number_plan_set = True
        except WebDriverException as exp:
            is_number_plan_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set number plan for create customer')
            return is_number_plan_set

    def click_price_exceptions_button(self):
        """
        Returning click price exceptions button
        Implementing logging for click price exceptions button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click price exceptions button')
            self._sell_page.click_price_exceptions_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click price exceptions button')
            return is_clicked

    def set_number_plan_for_price_exceptions(self, item_name, first_item=False):
        """
        Returning set number plan for price exceptions
        Implement logging for set number plan for price exceptions functionality
        :param item_name:
        :return: True/False
        """
        is_number_plan_set = None
        try:
            self.logger.info('Start: set number plan for price exceptions')
            if first_item is True:
                self._sell_page.set_number_plan_for_price_exceptions(item_name, first_item=True)
            else:
                self._sell_page.set_number_plan_for_price_exceptions(item_name)
            is_number_plan_set = True
        except WebDriverException as exp:
            is_number_plan_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set number plan for price exceptions')
            return is_number_plan_set

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
                self._sell_page.set_status(list_of_status)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set status')
            return is_set

    def set_customers(self, *list_of_customers):
        """
        Returning set customers
        Implement logging for set customers functionality
        :param list_of_customers:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set customers')
            if len(list_of_customers) > 0:
                self._sell_page.set_customers(list_of_customers)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set customers')
            return is_set

    def set_select_date(self, select_date):
        """
        Returning set select date
        Implementing logging for set select date functionality
        :param select_date:
        :return: True/False
        """
        is_date_set = None
        try:
            self.logger.info('Start: set select date')
            if select_date != "":
                self._sell_page.set_select_date(select_date)
            is_date_set = True
        except WebDriverException as exp:
            is_date_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set select date')
            return is_date_set

    def set_destination(self, destination):
        """
        Returning set destination
        Implementing logging for set destination functionality
        :param destination:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set destination')
            if destination != "":
                self._sell_page.set_destination(destination)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set destination')
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
            self._sell_page.click_price_exceptions_search_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click price exceptions search button')
            return is_clicked

    def search_results_displayed_in_the_grid(self):
        """
        Returning search results displayed in the grid
        Implementing logging for search results displayed in the grid functionality
        :return:
        """
        try:
            self.logger.info('Start: search results displayed in the grid')
            return self._sell_page.search_results_displayed_in_the_grid()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: search results displayed in the grid')

    def is_customers_field_not_editable(self):
        """
        Returning customers field editable status
        Implementing logging for is customers field not editable functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is customers field not editable')
            return self._sell_page.is_customers_field_not_editable()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is customers field not editable')

    def select_pricing_exception_grid_first_row(self):
        """
        Returning select pricing exception grid first row
        Implementing logging for select pricing exception grid first row functionality
        :return:
        """
        is_selected = None
        try:
            self.logger.info('Start: select pricing exception grid first row')
            self._sell_page.select_pricing_exception_grid_first_row()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select pricing exception grid first row')
            return is_selected

    def set_first_row_requested_price(self, price):
        """
        Returning set first row requested price
        Implementing logging for set first row requested price functionality
        :param price:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set first row requested price')
            self._sell_page.set_first_row_requested_price(price)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set first row requested price')
            return is_set

    def set_first_row_begin_date(self, date, future_date=False):
        """
        Returning set first row begin date
        Implementing logging for set first row begin date functionality
        :param date:
        :param future_date:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set first row begin date')
            self._sell_page.set_first_row_begin_date(date, future_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set first row begin date')
            return is_set

    def set_first_row_approval_type(self, approval_type):
        """
        Returning set first row approval type
        Implementing logging for set first row approval type functionality
        :param approval_type:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set first row approval type')
            if approval_type != "":
                self._sell_page.set_first_row_approval_type(approval_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set first row approval type')
            return is_set

    def get_price_exceptions_grid_first_row_data(self):
        """
        Returning get price exceptions grid first row data
        Implementing logging for get price exceptions grid first row data functionality
        :return: True/False
        """
        is_got = None
        try:
            self.logger.info('Start: get price exceptions grid first row data')
            self._sell_page.get_price_exceptions_grid_first_row_data()
            is_got = True
        except WebDriverException as exp:
            is_got = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get price exceptions grid first row data')
            return is_got

    def is_price_exceptions_status_entered(self):
        """
        Returning price exceptions status status
        Implementing logging for is price exceptions status entered functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is price exceptions status entered')
            return self._sell_page.is_price_exceptions_status_entered()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is price exceptions status entered')

    def click_save_changes_button(self):
        """
        Returning click save changes button
        Implementing logging for click save changes button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click save changes button')
            self._sell_page.click_save_changes_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click save changes button')
            return is_clicked

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
            self._sell_page.clear_multiselect_kendo_dropdown(label)
            is_deselected = True
        except WebDriverException as exp:
            is_deselected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: deselect multiselect kendo dropdown')
            return is_deselected

    def check_price_exceptions_grid_first_row_data(self):
        """
        Returning price exceptions grid first row data status
        Implementing logging for check price exceptions grid first row data functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: check price exceptions grid first row data')
            return self._sell_page.check_price_exceptions_grid_first_row_data()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: check price exceptions grid first row data')

    def select_customer_price_lists_checkbox(self):
        """
        Returning select customer price lists checkbox
        Implementing logging for select customer price lists checkbox functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select customer price lists checkbox')
            self._sell_page.select_customer_price_lists_checkbox()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select customer price lists checkbox')
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
            self._sell_page.click_compare_price_lists_button()
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
            is_verified = self._sell_page.verify_selected_price_lists_details()
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
            is_verified = self._sell_page.verify_rates_grid_columns()
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
            self._sell_page.select_dial_digits_tab()
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
            is_verified = self._sell_page.verify_dialed_digits_columns()
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
            self._sell_page.close_compare_price_lists_pop_up()
            is_closed = True
        except WebDriverException as exp:
            is_closed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: close compare price lists pop up')
            return is_closed

    def set_price_exceptions_performance_begin_date(self, begin_date):
        """
        Returning set price exceptions performance begin date
        Implementing logging for set price exceptions performance begin date functionality
        :param begin_date:
        :return: True/False
        """
        is_date_set = None
        try:
            self.logger.info('Start: set price exceptions performance begin date')
            self._sell_page.set_price_exceptions_performance_begin_date(begin_date)
            is_date_set = True
        except WebDriverException as exp:
            is_date_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set price exceptions performance begin date')
            return is_date_set

    def click_price_exceptions_performance_submit_button(self):
        """
        Returning click price exceptions performance submit button
        Implementing logging for click price exceptions performance submit button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click price exceptions performance submit button')
            self._sell_page.click_price_exceptions_performance_submit_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click price exceptions performance submit button')
            return is_clicked

    def verify_price_exceptions_performance_begin_date(self):
        """
        Returning verify price exceptions performance begin date
        Implementing logging for verify price exceptions performance begin date functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: verify price exceptions performance begin date')
            return self._sell_page.verify_price_exceptions_performance_begin_date()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: verify price exceptions performance begin date')

    def verify_customer_name_in_price_exceptions_performance_report(self):
        """
        Returning verify price exceptions performance customer
        Implementing logging for verify price exceptions performance customer functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: verify price exceptions performance customer')
            return self._sell_page.verify_customer_in_price_exceptions_performance_report()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: verify price exceptions performance customer')

    def set_customer_profile_status_for_edit_customer(self, item_name):
        """
        Returning set customer profile status for edit customer
        Implement logging for set customer profile status for edit customer functionality
        :param item_name:
        :return:
        """
        is_customer_profile_status_set = None
        try:
            self.logger.info('Start: set customer profile status for edit customer')
            self._sell_page.set_customer_profile_status_for_edit_customer(item_name)
            is_customer_profile_status_set = True
        except WebDriverException as exp:
            is_customer_profile_status_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set customer profile status for edit customer')
            return is_customer_profile_status_set

    def click_copy_price_list_exceptions_button(self):
        """
        Returning click copy price list exceptions button
        Implement logging for click copy price list exceptions button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click copy price list exceptions button')
            self._sell_page.click_copy_price_list_exceptions_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click copy price list exceptions button')
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
            self._sell_page.select_customers_for_copy_price_exceptions(customers)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select customers for copy price exceptions')
            return is_selected

    def click_copy_price_exceptions_submit_button(self):
        """
        Returning click copy price exceptions submit button
        Implement logging for click copy price exceptions submit button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click copy price exceptions submit button')
            self._sell_page.click_copy_price_exceptions_submit_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click copy price exceptions submit button')
            return is_clicked

    def is_copy_price_exceptions_successful(self):
        """
        Returning is copy price exceptions successful
        Implement logging for is copy price exceptions successful functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is copy price exceptions successful')
            return self._sell_page.is_copy_price_exceptions_successful()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is copy price exceptions successful')

    def click_save_changes_button_for_copy_price_exceptions(self):
        """
        Returning click save changes button after copy price exceptions
        Implementing logging for click save changes button after copy price exceptions functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click save changes button after copy price exceptions')
            self._sell_page.click_save_changes_button_for_copy_price_exceptions()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click save changes button after copy price exceptions')
            return is_clicked

    def set_price_exceptions_grid_first_row_status(self, status):
        """
        Returning set price exceptions grid first row status
        Implementing logging for set price exceptions grid first row status functionality
        :param status:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set price exceptions grid first row status')
            if status != "":
                self._sell_page.set_price_exceptions_grid_first_row_status(status)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set price exceptions grid first row status')
            return is_set

    def price_exceptions_grid_has_data(self):
        """
        Returning price exceptions grid has data status
        Implementing logging for check price exceptions grid has data functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: check price exceptions grid has data')
            return self._sell_page.price_exceptions_grid_has_data()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: check price exceptions grid has data')

    def set_begin_date_for_status_updation(self):
        """
        Returning set begin date for status updation
        Implementing logging for set begin date for status updation functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set begin date for status updation')
            self._sell_page.set_begin_date_for_status_updation()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set begin date for status updation')
            return is_set

    def set_select_date_for_status_updation(self):
        """
        Returning set select date for status updation
        Implementing logging for set select date for status updation functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set select date for status updation')
            self._sell_page.set_select_date_for_status_updation()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set select date for status updation')
            return is_set

    def click_pricing_exception_grid_first_row_inline_action_button(self):
        """
        Returning click pricing exception grid first row inline action button
        Implementing logging for click pricing exception grid inline action button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click pricing exception grid first row inline action button')
            self._sell_page.click_pricing_exception_grid_first_row_inline_action_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click pricing exception grid first row inline action button')
            return is_clicked

    def get_price_exceptions_first_grid_first_row_details(self):
        """
        Returning get price exceptions first grid first row details
        Implementing logging for get price exceptions first grid first row details functionality
        :return: True/False
        """
        is_got = None
        try:
            self.logger.info('Start: get price exceptions first grid first row details')
            self._sell_page.get_price_exceptions_first_grid_first_row_details()
            is_got = True
        except WebDriverException as exp:
            is_got = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get price exceptions first grid first row details')
            return is_got

    def verify_price_exceptions_details(self):
        """
        Returning verify price exceptions details
        Implementing logging for verify price exceptions details functionality
        :return: True/False
        """
        is_verified = None
        try:
            self.logger.info('Start: verify price exceptions details')
            is_verified = self._sell_page.verify_price_exceptions_details()
        except WebDriverException as exp:
            is_verified = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: verify price exceptions details')
            return is_verified

    def click_bulk_edit_button(self):
        """
        Returning click bulk edit button
        Implementing logging for click bulk edit button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click bulk edit button')
            self._sell_page.click_bulk_edit_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click bulk edit button')
            return is_clicked

    def set_end_date(self, date):
        """
        Returning set end date
        Implement logging for set end date functionality
        :param date:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set end date')
            self._sell_page.set_end_date(date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set end date')
            return is_set

    def set_begin_date(self, date):
        """
        Returning set begin date
        Implement logging for set begin date functionality
        :param date:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set begin date')
            self._sell_page.set_begin_date(date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set begin date')
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
            self._sell_page.click_bulk_edit_submit_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click bulk edit submit button')
            return is_clicked

    def set_bulk_edit_status(self, status):
        """
        Returning set bulk edit status
        Implement logging for set bulk edit status functionality
        :param status:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set bulk edit status')
            if status != "":
                self._sell_page.set_bulk_edit_status(status)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set bulk edit status')
            return is_set

    def set_bulk_edit_approvaltype(self, approval_type):
        """
        Returning set bulk edit approvaltype
        Implement logging for set bulk edit approvaltype functionality
        :param approval_type:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set bulk edit approvaltype')
            if approval_type != "":
                self._sell_page.set_bulk_edit_approvaltype(approval_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set bulk edit approvaltype')
            return is_set

    def set_requested_price(self, requested_price):
        """
        Returning set requested price
        Implement logging for set requested price functionality
        :param requested_price:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set requested price')
            if requested_price != "":
                self._sell_page.set_requested_price(requested_price)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set requested price')
            return is_set

    def set_estimated_value(self, estimated_value):
        """
        Returning set estimated value
        Implement logging for set estimated value functionality
        :param estimated_value:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set estimated value')
            if estimated_value != "":
                self._sell_page.set_estimated_value(estimated_value)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set estimated value')
            return is_set

    def select_pricing_exception_grid_multiple_row(self):
        """
        Returning select pricing exception grid multiple row
        Implementing logging for select pricing exception grid multiple row functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select pricing exception grid multiple row')
            self._sell_page.select_pricing_exception_grid_multiple_row()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select pricing exception grid multiple row')
            return is_selected

    def get_price_exceptions_number_of_rows_from_grid(self):
        """
        Returning get price exceptions number of rows from grid
        Implementing logging for get price exceptions number of rows from grid functionality
        :return:
        """
        is_successful = None
        try:
            self.logger.info('Start: get price exceptions number of rows from grid')
            self._sell_page.get_price_exceptions_number_of_rows_from_grid()
            is_successful = True
        except WebDriverException as exp:
            is_successful = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get price exceptions number of rows from grid')
            return is_successful

    def click_upload_price_exceptions_button(self):
        """
        Returning click upload price exceptions button
        Implementing logging for click upload price exceptions button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click upload price exceptions button')
            self._sell_page.click_upload_price_exceptions_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click upload price exceptions button')
            return is_clicked

    def click_upload_price_exceptions_browse_button(self):
        """
        Returning click upload price exceptions browse button
        Implementing logging for click upload price exceptions browse button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click upload price exceptions browse button')
            self._sell_page.click_upload_price_exceptions_browse_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click upload price exceptions browse button')
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
            self._sell_page.select_the_file_to_be_uploaded(file_path)
            is_selected = True
        except Exception as exp:
            is_selected = False
            self.logger.error(exp.message)
            raise
        finally:
            self.logger.info('End: select the file to be uploaded')
            return is_selected

    def set_customer_for_upload_price_exceptions(self, customer_name):
        """
        Returning set customer for upload price exceptions
        Implementing logging for set customer for upload price exceptions functionality
        :param customer_name:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set customer for upload price exceptions')
            self._sell_page.set_customer_for_upload_price_exceptions(customer_name)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set customer for upload price exceptions')
            return is_set

    def click_price_exceptions_upload_button(self):
        """
        Returning click price exceptions upload button
        Implementing logging for click price exceptions upload button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click price exceptions upload button')
            self._sell_page.click_price_exceptions_upload_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click price exceptions upload button')
            return is_clicked

    def click_pricing_exception_upload_link(self):
        """
        Returning click pricing exception upload link
        Implementing logging for click pricing exception upload link functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click pricing exception upload link')
            self._sell_page.click_pricing_exception_upload_link()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click pricing exception upload link')
            return is_clicked

    def compare_price_exceptions_number_of_rows_from_grid(self):
        """
        Returning compare price exceptions number of rows from grid
        Implementing logging for compare price exceptions number of rows from grid functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: compare price exceptions number of rows from grid')
            return self._sell_page.compare_price_exceptions_number_of_rows_from_grid()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare price exceptions number of rows from grid')

    def set_status_for_pricing_exception_search(self, *status_list):
        """
        Returning set status for pricing exception search
        Implementing logging for set status for pricing exception search functionality
        :param status_list:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set status for pricing exception search')
            self._sell_page.set_status_for_pricing_exception_search(status_list)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set status for pricing exception search')
            return is_set

    def click_pricing_exceptions_upload_search_button(self):
        """
        Returning click pricing exceptions upload search button
        Implementing logging for click pricing exceptions upload search button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click pricing exceptions upload search button')
            self._sell_page.click_pricing_exceptions_upload_search_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click pricing exceptions upload search button')
            return is_clicked

    def is_price_exceptions_page_loaded_properly(self):
        """
        Returning price exceptions page loading status
        Implementing logging for is price exceptions page loaded properly functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is price exceptions page loaded properly')
            return self._sell_page.is_price_exceptions_page_loaded_properly()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is price exceptions page loaded properly')

    def is_price_exceptions_total_number_of_records_displayed(self):
        """
        Returning price exceptions total number of records displaying status
        Implementing logging for is price exceptions total number of records displayed functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is price exceptions total number of records displayed')
            return self._sell_page.is_price_exceptions_total_number_of_records_displayed()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is price exceptions total number of records displayed')

    def get_created_carrier_name(self):
        """
        Returning get created carrier name
        Implementing logging for get created carrier name functionality
        :return: created_carrier_name
        """
        try:
            self.logger.info('Start: get created carrier name')
            return self._sell_page.get_created_carrier_name()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get created carrier name')

    def get_created_rate_plan_name(self):
        """
        Ret get created rate plan name
        Implementing get created rate plan name functionality
        :return: created_rate_plan_name
        """
        try:
            self.logger.info('Start: get created rate plan name')
            return self._sell_page.get_created_rate_plan_name()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get created rate plan name')

    def get_created_customer_name(self):
        """
        Returning get created customer name
        Implementing logging for get created customer name functionality
        :return: created_customer_name
        """
        try:
            self.logger.info('Start: get created customer name')
            return self._sell_page.get_created_customer_name()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get created customer name')

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
                status = self._sell_page.validate_date_format(actual_date, expected_date_format)
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
                status = self._sell_page.validate_currency_format(actual_value, expected_locale)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: validate currency format')
            return status

    def get_revenue_from_customers_grid(self):
        """
        Returning get revenue from customers grid
        Implementing logging for get revenue from customers grid functionality
        :return: revenue column value
        """
        column_value = None
        try:
            self.logger.info('Start: get revenue from customers grid')
            column_value = self._sell_page.get_revenue_from_customers_grid()
        except WebDriverException as exp:
            column_value = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get revenue from customers grid')
            return column_value

    def get_margin_from_customers_grid(self):
        """
        Returning get margin from customers grid
        Implementing logging for get margin from customers grid functionality
        :return: margin column value
        """
        column_value = None
        try:
            self.logger.info('Start: get margin from customers grid')
            column_value = self._sell_page.get_margin_from_customers_grid()
        except WebDriverException as exp:
            column_value = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get margin from customers grid')
            return column_value

    def get_last_modified_time_from_customer_profile_information(self):
        """
        Returning get last modified time from customer profile information
        Implementing logging for get last modified time from customer profile information functionality
        :return: last modified time
        """
        last_modified_time = None
        try:
            self.logger.info('Start: get last modified time from customer profile information')
            last_modified_time = self._sell_page.get_last_modified_time_from_customer_profile_information()
        except WebDriverException as exp:
            last_modified_time = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get last modified time from customer profile information')
            return last_modified_time

    def get_customer_rates_begin_date(self):
        """
        Returning get customer rates begin date
        Implementing logging for get customer rates begin date functionality
        :return: begin date
        """
        begin_date = None
        try:
            self.logger.info('Start: get customer rates begin date')
            begin_date = self._sell_page.get_customer_rates_begin_date()
        except WebDriverException as exp:
            begin_date = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get customer rates begin date')
            return begin_date

    def get_rate1_from_customer_rates_grid(self):
        """
        Returning get rate1 from customer rates grid
        Implementing logging for get rate1 from customer rates grid functionality
        :return: rate1 column value
        """
        column_value = None
        try:
            self.logger.info('Start: get rate1 from customer rates grid')
            column_value = self._sell_page.get_rate1_from_customer_rates_grid()
        except WebDriverException as exp:
            column_value = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get rate1 from customer rates grid')
            return column_value

    def get_rate2_from_customer_rates_grid(self):
        """
        Returning get rate2 from customer rates grid
        Implementing logging for get rate2 from customer rates grid functionality
        :return: rate2 column value
        """
        column_value = None
        try:
            self.logger.info('Start: get rate2 from customer rates grid')
            column_value = self._sell_page.get_rate2_from_customer_rates_grid()
        except WebDriverException as exp:
            column_value = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get rate2 from customer rates grid')
            return column_value

    def get_rate3_from_customer_rates_grid(self):
        """
        Returning get rate3 from customer rates grid
        Implementing logging for get rate3 from customer rates grid functionality
        :return: rate3 column value
        """
        column_value = None
        try:
            self.logger.info('Start: get rate3 from customer rates grid')
            column_value = self._sell_page.get_rate3_from_customer_rates_grid()
        except WebDriverException as exp:
            column_value = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get rate3 from customer rates grid')
            return column_value

    def get_begin_date_from_customer_rates_grid(self):
        """
        Returning get begin date from customer rates grid
        Implementing logging for get begin date from customer rates grid functionality
        :return: begin date column value
        """
        column_value = None
        try:
            self.logger.info('Start: get begin date from customer rates grid')
            column_value = self._sell_page.get_begin_date_from_customer_rates_grid()
        except WebDriverException as exp:
            column_value = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get begin date from customer rates grid')
            return column_value

    def get_last_modified_from_customer_rates_grid(self):
        """
        Returning get last modified from customer rates grid
        Implementing logging for get last modified from customer rates grid functionality
        :return: last modified column value
        """
        column_value = None
        try:
            self.logger.info('Start: get last modified from customer rates grid')
            column_value = self._sell_page.get_begin_date_from_customer_rates_grid()
        except WebDriverException as exp:
            column_value = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get last modified from customer rates grid')
            return column_value

    def select_dialed_digit_tab(self):
        """
        Returning select dialed digit tab
        Implementing logging for select dialed digit tab functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select dialed digit tab')
            self._sell_page.select_dialed_digit_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select dialed digit tab')
            return is_selected

    def select_rates_tab(self):
        """
        Returning select rates tab
        Implementing logging for select rates tab functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select rates tab')
            self._sell_page.select_rates_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select rates tab')
            return is_selected

    def select_destinations_tab(self):
        """
        Returning select destinations tab
        Implementing logging for select destinations tab functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select destinations tab')
            self._sell_page.select_destinations_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select destinations tab')
            return is_selected

    def get_customer_dialed_digit_begin_date(self):
        """
        Returning get customer dialed digit begin date
        Implementing logging for get customer dialed digit begin date functionality
        :return: begin date
        """
        begin_date = None
        try:
            self.logger.info('Start: get customer dialed digit begin date')
            begin_date = self._sell_page.get_customer_dialed_digit_begin_date()
        except WebDriverException as exp:
            begin_date = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get customer dialed digit begin date')
            return begin_date

    def get_begin_date_from_customer_dialed_digit_grid(self):
        """
        Returning get begin date from customer dialed digit grid
        Implementing logging for get begin date from customer dialed digit grid functionality
        :return: begin date column value
        """
        column_value = None
        try:
            self.logger.info('Start: get begin date from customer dialed digit grid')
            column_value = self._sell_page.get_begin_date_from_customer_dialed_digit_grid()
        except WebDriverException as exp:
            column_value = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get begin date from customer dialed digit grid')
            return column_value

    def get_modified_date_from_customer_dialed_digit_grid(self):
        """
        Returning get modified date from customer dialed digit grid
        Implementing logging for get modified date from customer dialed digit grid functionality
        :return: last modified column value
        """
        column_value = None
        try:
            self.logger.info('Start: get modified date from customer dialed digit grid')
            column_value = self._sell_page.get_modified_date_from_customer_dialed_digit_grid()
        except WebDriverException as exp:
            column_value = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get modified date from customer dialed digit grid')
            return column_value

    def get_customer_destinations_begin_date(self):
        """
        Returning get customer destinations begin date
        Implementing logging for get customer destinations begin date functionality
        :return: begin date
        """
        begin_date = None
        try:
            self.logger.info('Start: get customer destinations begin date')
            begin_date = self._sell_page.get_customer_destinations_begin_date()
        except WebDriverException as exp:
            begin_date = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get customer destinations begin date')
            return begin_date

    def get_begin_date_from_customer_destinations_grid(self):
        """
        Returning get begin date from customer destinations grid
        Implementing logging for get begin date from customer destinations grid functionality
        :return: begin date column value
        """
        column_value = None
        try:
            self.logger.info('Start: get begin date from customer destinations grid')
            column_value = self._sell_page.get_begin_date_from_customer_destinations_grid()
        except WebDriverException as exp:
            column_value = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get begin date from customer destinations grid')
            return column_value

    def get_last_modified_from_customer_destinations_grid(self):
        """
        Returning get last modified from customer destinations grid
        Implementing logging for get last modified from customer destinations grid functionality
        :return: last modified column value
        """
        column_value = None
        try:
            self.logger.info('Start: get last modified from customer destinations grid')
            column_value = self._sell_page.get_last_modified_from_customer_destinations_grid()
        except WebDriverException as exp:
            column_value = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get last modified from customer destinations grid')
            return column_value

    def get_customer_price_list_from_date(self):
        """
        Returning get customer price list from date
        Implementing logging for get customer price list from date functionality
        :return: from date
        """
        from_date = None
        try:
            self.logger.info('Start: get customer price list from date')
            from_date = self._sell_page.get_customer_price_list_from_date()
        except WebDriverException as exp:
            from_date = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get customer price list from date')
            return from_date

    def get_customer_price_list_to_date(self):
        """
        Returning get customer price list to date
        Implementing logging for get customer price list to date functionality
        :return: to date
        """
        to_date = None
        try:
            self.logger.info('Start: get customer price list to date')
            to_date = self._sell_page.get_customer_price_list_to_date()
        except WebDriverException as exp:
            to_date = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get customer price list to date')
            return to_date

    def get_price_list_date_from_customer_price_list_grid(self):
        """
        Returning get price list date from customer price list grid
        Implementing logging for get price list date from customer price list grid functionality
        :return: price list date column value
        """
        column_value = None
        try:
            self.logger.info('Start: get price list date from customer price list grid')
            column_value = self._sell_page.get_price_list_date_from_customer_price_list_grid()
        except WebDriverException as exp:
            column_value = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get price list date from customer price list grid')
            return column_value

    def get_modified_date_from_customer_price_list_grid(self):
        """
        Returning get modified date from customer price list grid
        Implementing logging for get modified date from customer price list grid functionality
        :return: modified date column value
        """
        column_value = None
        try:
            self.logger.info('Start: get modified date from customer price list grid')
            column_value = self._sell_page.get_modified_date_from_customer_price_list_grid()
        except WebDriverException as exp:
            column_value = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get modified date from customer price list grid')
            return column_value

    def get_price_list_date_from_selected_price_list_grid(self):
        """
        Returning get price list date from selected price list grid
        Implementing logging for get price list date from selected price list grid functionality
        :return: price list date column value
        """
        column_value = None
        try:
            self.logger.info('Start: get price list date from selected price list grid')
            column_value = self._sell_page.get_price_list_date_from_selected_price_list_grid()
        except WebDriverException as exp:
            column_value = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get price list date from selected price list grid')
            return column_value

    def get_offer_date(self):
        """
        Returning get offer date
        Implementing logging for get offer date functionality
        :return: offer_date
        """
        offer_date = None
        try:
            self.logger.info('Start: get offer date')
            offer_date = self._sell_page.get_offer_date()
        except WebDriverException as exp:
            offer_date = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get offer date')
            return offer_date

    def get_select_date(self):
        """
        Returning get select date
        Implementing logging for get select date functionality
        :return: select_date
        """
        select_date = None
        try:
            self.logger.info('Start: get select date')
            select_date = self._sell_page.get_select_date()
        except WebDriverException as exp:
            select_date = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get select date')
            return select_date

    def click_customer_grid_first_row_inline_action_button(self, ):
        """
        Returning click customer grid first row inline action button
        Implementing logging for click customer grid first row inline action button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click customer grid first row inline action button')
            self._sell_page.click_customer_grid_first_row_inline_action_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click customer grid first row inline action button')
            return is_clicked

    def close_sell_window(self):
        """
        Returning close sell window
        Implementing logging for close sell window functionality
        :return: True/False
        """
        is_closed = None
        try:
            self.logger.info('Start: close sell window')
            self._sell_page.close_browser()
            self._sell_page.switch_to_previous_window()
            is_closed = True
        except WebDriverException as exp:
            is_closed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: close sell window')
            return is_closed

    def set_pricing_exceptions_select_date(self):
        """
        Returning set pricing exceptions select date
        Implementing logging for set pricing exceptions select date functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set pricing exceptions select date')
            self._sell_page.set_pricing_exceptions_select_date()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set pricing exceptions select date')
            return is_set

    def click_upload_customer_price_lists_button(self):
        """
        Returning click upload customer price lists button
        Implementing logging for click upload customer price lists button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click upload customer price lists button')
            self._sell_page.click_upload_customer_price_lists_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click upload customer price lists button')
            return is_clicked

    def click_upload_customer_price_list_browse_button(self):
        """
        Returning click upload customer price list browse button
        Implementing logging for click upload customer price list browse button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click upload customer price list browse button')
            self._sell_page.click_upload_customer_price_list_browse_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click upload customer price list browse button')
            return is_clicked

    def set_customer_name_for_upload_customer_price_list(self, customer):
        """
        Returning set customer name for upload customer price list
        Implementing logging for set customer name for upload customer price list functionality
        :param customer:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set customer name for upload customer price list')
            self._sell_page.set_customer_name_for_upload_customer_price_list(customer)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set customer name for upload customer price list')
            return is_set

    def compare_customer_price_lists_number_of_rows_after_upload(self):
        """
        Returning compare customer price lists number of rows after upload
        Implementing logging for compare customer price lists number of rows after upload functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: compare customer price lists number of rows after upload')
            return self._sell_page.compare_customer_price_lists_number_of_rows_after_upload()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare customer price lists number of rows after upload')

    def set_customers_grid_settings(self, grid_settings):
        """
        Returning set customer grid settings
        Implementing logging for set customer grid settings functionality
        :param grid_settings:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set customer grid settings')
            self._sell_page.set_customers_grid_settings(grid_settings)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set customer grid settings')
            return is_set

    def get_all_rows_of_specific_column_from_customers_grid(self, column_name):
        """
        Returning get all rows of specific column from customers grid
        Implementing logging for get all rows of specific column from customers grid functionality
        :param column_name:
        :return: all_row_data
        """
        all_row_data = None
        try:
            self.logger.info('Start: get all rows of specific column from customers grid')
            all_row_data = self._sell_page.get_all_rows_of_specific_column_from_customers_grid(column_name)
        except WebDriverException as exp:
            all_row_data = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get all rows of specific column from customers grid')
            return all_row_data

    def sort_customers_grid_column(self, column_name, descending_order=False):
        """
        Returning sort customers grid column
        Implementing logging for sort customers grid column functionality
        :param column_name:
        :param descending_order:
        :return: True/False
        """
        is_sorted = None
        try:
            self.logger.info('Start: sort customers grid column')
            self._sell_page.sort_customers_grid_column(column_name, descending_order)
            is_sorted = True
        except WebDriverException as exp:
            is_sorted = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: sort customers grid column')
            return is_sorted

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
            is_sorted = self._sell_page.compare_sorted_data(unsorted_data, descending_order)
        except WebDriverException as exp:
            is_sorted = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare sorted data')
            return is_sorted

    def get_customers_grid_column_names_by_order(self):
        """
        Returning get customers grid column names by order
        Implementing logging for get customers grid column names by order functionality
        :return: column_name_list
        """
        column_name_list = None
        try:
            self.logger.info('Start: get customers grid column names by order')
            column_name_list = self._sell_page.get_customers_grid_column_names_by_order()
        except WebDriverException as exp:
            column_name_list = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get customers grid column names by order')
            return column_name_list

    def drag_customers_grid_column(self, source_column, destination_column):
        """
        Returning drag customers grid column
        Implementing logging for drag customers grid column functionality
        :param source_column:
        :param destination_column:
        :return: True/False
        """
        is_dragged = None
        try:
            self.logger.info('Start: drag customers grid column')
            self._sell_page.drag_customers_grid_column(source_column, destination_column)
            is_dragged = True
        except WebDriverException as exp:
            is_dragged = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: drag customers grid column')
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
            is_compared = self._sell_page.compare_grid_column_position_after_altering(source_column, destination_column, column_name_list)
        except WebDriverException as exp:
            is_compared = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare grid column position after altering')
            return is_compared

    def click_customers_grid_export_to_excel_button(self):
        """
        Returning click customer grid export to excel button
        Implementing logging for click customer grid export to excel button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click customer grid export to excel button')
            self._sell_page.click_customers_grid_export_to_excel_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click customer grid export to excel button')
            return is_clicked

    def get_all_rows_of_specific_column_from_customer_rates_grid(self, column_name):
        """
        Returning get all rows of specific column from customer rates grid
        Implementing logging for get all rows of specific column from customer rates grid functionality
        :param column_name:
        :return: all_row_data
        """
        all_row_data = None
        try:
            self.logger.info('Start: get all rows of specific column from customer rates grid')
            all_row_data = self._sell_page.get_all_rows_of_specific_column_from_customer_rates_grid(column_name)
        except WebDriverException as exp:
            all_row_data = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get all rows of specific column from customer rates grid')
            return all_row_data

    def sort_customer_rates_grid_column(self, column_name, descending_order=False):
        """
        Returning sort customer rates grid column
        Implementing logging for sort customer rates grid column functionality
        :param column_name:
        :param descending_order:
        :return: True/False
        """
        is_sorted = None
        try:
            self.logger.info('Start: sort customer rates grid column')
            self._sell_page.sort_customer_rates_grid_column(column_name, descending_order)
            is_sorted = True
        except WebDriverException as exp:
            is_sorted = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: sort customer rates grid column')
            return is_sorted

    def get_customer_rates_grid_column_names_by_order(self):
        """
        Returning get customer rates grid column names by order
        Implementing logging for get customer rates grid column names by order functionality
        :return: column_name_list
        """
        column_name_list = None
        try:
            self.logger.info('Start: get customer rates grid column names by order')
            column_name_list = self._sell_page.get_customer_rates_grid_column_names_by_order()
        except WebDriverException as exp:
            column_name_list = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get customer rates grid column names by order')
            return column_name_list

    def drag_customer_rates_grid_column(self, source_column, destination_column):
        """
        Returning drag customer rates grid column
        Implementing logging for drag customer rates grid column functionality
        :param source_column:
        :param destination_column:
        :return: True/False
        """
        is_dragged = None
        try:
            self.logger.info('Start: drag customer rates grid column')
            self._sell_page.drag_customer_rates_grid_column(source_column, destination_column)
            is_dragged = True
        except WebDriverException as exp:
            is_dragged = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: drag customer rates grid column')
            return is_dragged

    def click_customer_rates_search_button(self):
        """
        Returning click customer rates search button
        Implementing logging for click customer rates search button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click customer rates search button')
            self._sell_page.click_customer_rates_search_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click customer rates search button')
            return is_clicked

    def is_customer_rates_grid_filtered_properly(self, column_name, *filter_item_list):
        """
        Returning is customer rates grid filtered properly
        Implementing logging for is customer rates grid filtered properly functionality
        :param column_name:
        :param filter_item_list:
        :return: True/False
        """
        is_filtered = None
        try:
            self.logger.info('Start: is customer rates grid filtered properly')
            is_filtered = self._sell_page.is_customer_rates_grid_filtered_properly(column_name, filter_item_list)
        except WebDriverException as exp:
            is_filtered = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is customer rates grid filtered properly')
            return is_filtered

    def get_all_rows_of_specific_column_from_customer_digits_grid(self, column_name):
        """
        Returning get all rows of specific column from customer digits grid
        Implementing logging for get all rows of specific column from customer digits grid functionality
        :param column_name:
        :return: all_row_data
        """
        all_row_data = None
        try:
            self.logger.info('Start: get all rows of specific column from customer digits grid')
            all_row_data = self._sell_page.get_all_rows_of_specific_column_from_customer_digits_grid(column_name)
        except WebDriverException as exp:
            all_row_data = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get all rows of specific column from customer digits grid')
            return all_row_data

    def sort_customer_digits_grid_column(self, column_name, descending_order=False):
        """
        Returning sort customer digits grid column
        Implementing logging for sort customer digits grid column functionality
        :param column_name:
        :param descending_order:
        :return: True/False
        """
        is_sorted = None
        try:
            self.logger.info('Start: sort customer digits grid column')
            self._sell_page.sort_customer_digits_grid_column(column_name, descending_order)
            is_sorted = True
        except WebDriverException as exp:
            is_sorted = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: sort customer digits grid column')
            return is_sorted

    def get_customer_digits_grid_column_names_by_order(self):
        """
        Returning get customer digits grid column names by order
        Implementing logging for get customer digits grid column names by order functionality
        :return: column_name_list
        """
        column_name_list = None
        try:
            self.logger.info('Start: get customer digits grid column names by order')
            column_name_list = self._sell_page.get_customer_digits_grid_column_names_by_order()
        except WebDriverException as exp:
            column_name_list = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get customer digits grid column names by order')
            return column_name_list

    def drag_customer_digits_grid_column(self, source_column, destination_column):
        """
        Returning drag customer digits grid column
        Implementing logging for drag customer digits grid column functionality
        :param source_column:
        :param destination_column:
        :return: True/False
        """
        is_dragged = None
        try:
            self.logger.info('Start: drag customer digits grid column')
            self._sell_page.drag_customer_digits_grid_column(source_column, destination_column)
            is_dragged = True
        except WebDriverException as exp:
            is_dragged = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: drag customer digits grid column')
            return is_dragged

    def click_search_button(self):
        """
        Returning click search button
        Implementing logging for click search button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click search button')
            self._sell_page.click_search_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click search button')
            return is_clicked

    def is_customer_digits_grid_filtered_properly(self, column_name, *filter_item_list):
        """
        Returning is customer digits grid filtered properly
        Implementing logging for is customer digits grid filtered properly functionality
        :param column_name:
        :param filter_item_list:
        :return: True/False
        """
        is_filtered = None
        try:
            self.logger.info('Start: is customer digits grid filtered properly')
            is_filtered = self._sell_page.is_customer_digits_grid_filtered_properly(column_name, filter_item_list)
        except WebDriverException as exp:
            is_filtered = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is customer digits grid filtered properly')
            return is_filtered

    def get_all_rows_of_specific_column_from_customer_destinations_grid(self, column_name):
        """
        Returning get all rows of specific column from customer destinations grid
        Implementing logging for get all rows of specific column from customer destinations grid functionality
        :param column_name:
        :return: all_row_data
        """
        all_row_data = None
        try:
            self.logger.info('Start: get all rows of specific column from customer destinations grid')
            all_row_data = self._sell_page.get_all_rows_of_specific_column_from_customer_destinations_grid(column_name)
        except WebDriverException as exp:
            all_row_data = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get all rows of specific column from customer destinations grid')
            return all_row_data

    def sort_customer_destinations_grid_column(self, column_name, descending_order=False):
        """
        Returning sort customer destinations grid column
        Implementing logging for sort customer destinations grid column functionality
        :param column_name:
        :param descending_order:
        :return: True/False
        """
        is_sorted = None
        try:
            self.logger.info('Start: sort customer destinations grid column')
            self._sell_page.sort_customer_destinations_grid_column(column_name, descending_order)
            is_sorted = True
        except WebDriverException as exp:
            is_sorted = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: sort customer destinations grid column')
            return is_sorted

    def get_customer_destinations_grid_column_names_by_order(self):
        """
        Returning get customer destinations grid column names by order
        Implementing logging for get customer destinations grid column names by order functionality
        :return: column_name_list
        """
        column_name_list = None
        try:
            self.logger.info('Start: get customer destinations grid column names by order')
            column_name_list = self._sell_page.get_customer_destinations_grid_column_names_by_order()
        except WebDriverException as exp:
            column_name_list = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get customer destinations grid column names by order')
            return column_name_list

    def drag_customer_destinations_grid_column(self, source_column, destination_column):
        """
        Returning drag customer destinations grid column
        Implementing logging for drag customer destinations grid column functionality
        :param source_column:
        :param destination_column:
        :return: True/False
        """
        is_dragged = None
        try:
            self.logger.info('Start: drag customer destinations grid column')
            self._sell_page.drag_customer_destinations_grid_column(source_column, destination_column)
            is_dragged = True
        except WebDriverException as exp:
            is_dragged = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: drag customer destinations grid column')
            return is_dragged

    def is_customer_destinations_grid_filtered_properly(self, column_name, *filter_item_list):
        """
        Returning is customer destinations grid filtered properly
        Implementing logging for is customer destinations grid filtered properly functionality
        :param column_name:
        :param filter_item_list:
        :return: True/False
        """
        is_filtered = None
        try:
            self.logger.info('Start: is customer destinations grid filtered properly')
            is_filtered = self._sell_page.is_customer_destinations_grid_filtered_properly(column_name, filter_item_list)
        except WebDriverException as exp:
            is_filtered = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is customer destinations grid filtered properly')
            return is_filtered

    def filter_customer_destinations_grid(self, column_name, *filter_item_list):
        """
        Returning filter customer destinations grid
        Implementing logging for filter customer destinations grid functionality
        :param column_name: column name to filter
        :param filter_item_list: items to filter
        :return: True/False
        """
        is_filtered = None
        try:
            self.logger.info('Start: filter customer destinations grid')
            self._sell_page.filter_customer_destinations_grid(column_name, filter_item_list)
            is_filtered = True
        except WebDriverException as exp:
            is_filtered = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: filter customer destinations grid')
            return is_filtered

    def set_customer_price_lists_grid_settings(self, grid_settings):
        """
        Returning set customer price lists grid settings
        Implementing logging for set customer price lists grid settings functionality
        :param grid_settings:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set customer price lists grid settings')
            self._sell_page.set_customer_price_lists_grid_settings(grid_settings)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set customer price lists grid settings')
            return is_set

    def get_all_rows_of_specific_column_from_customer_price_lists_grid(self, column_name):
        """
        Returning get all rows of specific column from customer price lists grid
        Implementing logging for get all rows of specific column from customer price lists grid functionality
        :param column_name:
        :return: all_row_data
        """
        all_row_data = None
        try:
            self.logger.info('Start: get all rows of specific column from customer price lists grid')
            all_row_data = self._sell_page.get_all_rows_of_specific_column_from_customer_price_lists_grid(column_name)
        except WebDriverException as exp:
            all_row_data = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get all rows of specific column from customer price lists grid')
            return all_row_data

    def sort_customer_price_lists_grid_column(self, column_name, descending_order=False):
        """
        Returning sort customer price lists grid column
        Implementing logging for sort customer price lists grid column functionality
        :param column_name:
        :param descending_order:
        :return: True/False
        """
        is_sorted = None
        try:
            self.logger.info('Start: sort customer price lists grid column')
            self._sell_page.sort_customer_price_lists_grid_column(column_name, descending_order)
            is_sorted = True
        except WebDriverException as exp:
            is_sorted = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: sort customer price lists grid column')
            return is_sorted

    def get_customer_price_lists_grid_column_names_by_order(self):
        """
        Returning get customer price lists grid column names by order
        Implementing logging for get customer price lists grid column names by order functionality
        :return: column_name_list
        """
        column_name_list = None
        try:
            self.logger.info('Start: get customer price lists grid column names by order')
            column_name_list = self._sell_page.get_customer_price_lists_grid_column_names_by_order()
        except WebDriverException as exp:
            column_name_list = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get customer price lists grid column names by order')
            return column_name_list

    def drag_customer_price_lists_grid_column(self, source_column, destination_column):
        """
        Returning drag customer price lists grid column
        Implementing logging for drag customer price lists grid column functionality
        :param source_column:
        :param destination_column:
        :return: True/False
        """
        is_dragged = None
        try:
            self.logger.info('Start: drag customer price lists grid column')
            self._sell_page.drag_customer_price_lists_grid_column(source_column, destination_column)
            is_dragged = True
        except WebDriverException as exp:
            is_dragged = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: drag customer price lists grid column')
            return is_dragged

    def is_customer_price_lists_grid_filtered_properly(self, column_name, *filter_item_list):
        """
        Returning is customer price lists grid filtered properly
        Implementing logging for is customer price lists grid filtered properly functionality
        :param column_name:
        :param filter_item_list:
        :return: True/False
        """
        is_filtered = None
        try:
            self.logger.info('Start: is customer price lists grid filtered properly')
            is_filtered = self._sell_page.is_customer_price_lists_grid_filtered_properly(column_name, filter_item_list)
        except WebDriverException as exp:
            is_filtered = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is customer price lists grid filtered properly')
            return is_filtered

    def click_customer_price_lists_grid_export_to_excel_button(self):
        """
        Returning click customer price lists grid export to excel button
        Implementing logging for click customer price lists grid export to excel button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click customer price lists grid export to excel button')
            self._sell_page.click_customer_price_lists_grid_export_to_excel_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click customer price lists grid export to excel button')
            return is_clicked

    def click_customer_price_lists_grid_first_row_inline_action_button(self, ):
        """
        Returning click customer price lists grid first row inline action button
        Implementing logging for click customer price lists grid first row inline action button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click customer price lists grid first row inline action button')
            self._sell_page.click_customer_price_lists_grid_first_row_inline_action_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click customer price lists grid first row inline action button')
            return is_clicked

    def set_customer_price_list_detail_grid_settings(self, grid_settings):
        """
        Returning set customer price list detail grid settings
        Implementing logging for set customer price list detail grid settings functionality
        :param grid_settings:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set customer price list detail grid settings')
            self._sell_page.set_customer_price_list_detail_grid_settings(grid_settings)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set customer price list detail grid settings')
            return is_set

    def get_all_rows_of_specific_column_from_customer_price_list_detail_grid(self, column_name):
        """
        Returning get all rows of specific column from customer price list detail grid
        Implementing logging for get all rows of specific column from customer price list detail grid functionality
        :param column_name:
        :return: all_row_data
        """
        all_row_data = None
        try:
            self.logger.info('Start: get all rows of specific column from customer price list detail grid')
            all_row_data = self._sell_page.get_all_rows_of_specific_column_from_customer_price_list_detail_grid(column_name)
        except WebDriverException as exp:
            all_row_data = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get all rows of specific column from customer price list detail grid')
            return all_row_data

    def sort_customer_price_list_detail_grid_column(self, column_name, descending_order=False):
        """
        Returning sort customer price list detail grid column
        Implementing logging for sort customer price list detail grid column functionality
        :param column_name:
        :param descending_order:
        :return: True/False
        """
        is_sorted = None
        try:
            self.logger.info('Start: sort customer price list detail grid column')
            self._sell_page.sort_customer_price_list_detail_grid_column(column_name, descending_order)
            is_sorted = True
        except WebDriverException as exp:
            is_sorted = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: sort customer price list detail grid column')
            return is_sorted

    def get_customer_price_list_detail_grid_column_names_by_order(self):
        """
        Returning get customer price list detail grid column names by order
        Implementing logging for get customer price list detail grid column names by order functionality
        :return: column_name_list
        """
        column_name_list = None
        try:
            self.logger.info('Start: get customer price list detail grid column names by order')
            column_name_list = self._sell_page.get_customer_price_list_detail_grid_column_names_by_order()
        except WebDriverException as exp:
            column_name_list = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get customer price list detail grid column names by order')
            return column_name_list

    def drag_customer_price_list_detail_grid_column(self, source_column, destination_column):
        """
        Returning drag customer price list detail grid column
        Implementing logging for drag customer price list detail grid column functionality
        :param source_column:
        :param destination_column:
        :return: True/False
        """
        is_dragged = None
        try:
            self.logger.info('Start: drag customer price list detail grid column')
            self._sell_page.drag_customer_price_list_detail_grid_column(source_column, destination_column)
            is_dragged = True
        except WebDriverException as exp:
            is_dragged = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: drag customer price list detail grid column')
            return is_dragged

    def is_customer_price_list_detail_grid_filtered_properly(self, column_name, *filter_item_list):
        """
        Returning is customer price list detail grid filtered properly
        Implementing logging for is customer price list detail grid filtered properly functionality
        :param column_name:
        :param filter_item_list:
        :return: True/False
        """
        is_filtered = None
        try:
            self.logger.info('Start: is customer price list detail grid filtered properly')
            is_filtered = self._sell_page.is_customer_price_list_detail_grid_filtered_properly(column_name, filter_item_list)
        except WebDriverException as exp:
            is_filtered = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is customer price list detail grid filtered properly')
            return is_filtered

    def click_customer_price_list_detail_grid_export_to_excel_button(self):
        """
        Returning click customer price list detail grid export to excel button
        Implementing logging for click customer price list detail grid export to excel button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click customer price list detail grid export to excel button')
            self._sell_page.click_customer_price_list_detail_grid_export_to_excel_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click customer price list detail grid export to excel button')
            return is_clicked

    def filter_customer_price_list_detail_grid(self, column_name, item_name):
        """
        Returning filter customer price list detail grid
        Implementing logging for filter customer price list detail grid functionality
        :param column_name: column name to filter
        :param item_name: item to filter
        :return: True/False
        """
        is_filtered = None
        try:
            self.logger.info('Start: filter customer price list detail grid')
            self._sell_page.filter_customer_price_list_detail_grid(column_name, item_name)
            is_filtered = True
        except WebDriverException as exp:
            is_filtered = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: filter customer price list detail grid')
            return is_filtered

    def set_price_exceptions_grid_settings(self, grid_settings):
        """
        Returning set price exceptions grid settings
        Implementing logging for set price exceptions grid settings functionality
        :param grid_settings:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set price exceptions grid settings')
            self._sell_page.set_price_exceptions_grid_settings(grid_settings)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set price exceptions grid settings')
            return is_set

    def get_all_rows_of_specific_column_from_price_exceptions_grid(self, column_name):
        """
        Returning get all rows of specific column from price exceptions grid
        Implementing logging for get all rows of specific column from price exceptions grid functionality
        :param column_name:
        :return: all_row_data
        """
        all_row_data = None
        try:
            self.logger.info('Start: get all rows of specific column from price exceptions grid')
            all_row_data = self._sell_page.get_all_rows_of_specific_column_from_price_exceptions_grid(column_name)
        except WebDriverException as exp:
            all_row_data = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get all rows of specific column from price exceptions grid')
            return all_row_data

    def sort_price_exceptions_grid_column(self, column_name, descending_order=False):
        """
        Returning sort price exceptions grid column
        Implementing logging for sort price exceptions grid column functionality
        :param column_name:
        :param descending_order:
        :return: True/False
        """
        is_sorted = None
        try:
            self.logger.info('Start: sort price exceptions grid column')
            self._sell_page.sort_price_exceptions_grid_column(column_name, descending_order)
            is_sorted = True
        except WebDriverException as exp:
            is_sorted = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: sort price exceptions grid column')
            return is_sorted

    def get_price_exceptions_grid_column_names_by_order(self):
        """
        Returning get price exceptions grid column names by order
        Implementing logging for get price exceptions grid column names by order functionality
        :return: column_name_list
        """
        column_name_list = None
        try:
            self.logger.info('Start: get price exceptions grid column names by order')
            column_name_list = self._sell_page.get_price_exceptions_grid_column_names_by_order()
        except WebDriverException as exp:
            column_name_list = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get price exceptions grid column names by order')
            return column_name_list

    def drag_price_exceptions_grid_column(self, source_column, destination_column):
        """
        Returning drag price exceptions grid column
        Implementing logging for drag price exceptions grid column functionality
        :param source_column:
        :param destination_column:
        :return: True/False
        """
        is_dragged = None
        try:
            self.logger.info('Start: drag price exceptions grid column')
            self._sell_page.drag_price_exceptions_grid_column(source_column, destination_column)
            is_dragged = True
        except WebDriverException as exp:
            is_dragged = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: drag price exceptions grid column')
            return is_dragged

    def is_price_exceptions_grid_filtered_properly(self, column_name, *filter_item_list):
        """
        Returning is price exceptions grid filtered properly
        Implementing logging for is price exceptions grid filtered properly functionality
        :param column_name:
        :param filter_item_list:
        :return: True/False
        """
        is_filtered = None
        try:
            self.logger.info('Start: is price exceptions grid filtered properly')
            is_filtered = self._sell_page.is_price_exceptions_grid_filtered_properly(column_name, filter_item_list)
        except WebDriverException as exp:
            is_filtered = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is price exceptions grid filtered properly')
            return is_filtered

    def click_price_exceptions_grid_export_to_excel_button(self):
        """
        Returning click price exceptions grid export to excel button
        Implementing logging for click price exceptions grid export to excel button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click price exceptions grid export to excel button')
            self._sell_page.click_price_exceptions_grid_export_to_excel_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click price exceptions grid export to excel button')
            return is_clicked

    def filter_price_exceptions_grid(self, column_name, *filter_item_list):
        """
        Returning filter price exceptions grid
        Implementing logging for filter price exceptions grid functionality
        :param column_name: column name to filter
        :param filter_item_list: items to filter
        :return: True/False
        """
        is_filtered = None
        try:
            self.logger.info('Start: filter price exceptions grid')
            self._sell_page.filter_price_exceptions_grid(column_name, filter_item_list)
            is_filtered = True
        except WebDriverException as exp:
            is_filtered = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: filter price exceptions grid')
            return is_filtered

    def click_price_exceptions_performance_report_button(self):
        """
        Returning click price exceptions performance report button
        Implementing logging for click price exceptions report button functionality
        :return:
        """
        is_clicked = None
        try:
            self.logger.info('Start: click price exceptions performance report button')
            self._sell_page.click_price_exceptions_performance_report_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click price exceptions performance report button')
            return is_clicked

    def select_upload_to_requested_radio_button(self):
        """
        Returning select upload to requested radio button
        Implementing logging for select upload to requested radio button functionality
        :return:
        """
        is_clicked = None
        try:
            self.logger.info('Start: select upload to requested radio button')
            self._sell_page.select_upload_to_requested_radio_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select upload to requested radio button')
            return is_clicked

    def click_create_cpe_bundle_button(self):
        """
        Returning create cpe bundle button
        Implementing logging for create cpe bundle button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: create cpe bundle button')
            self._sell_page.click_create_cpe_bundle_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: create cpe bundle button')
            return is_clicked

    def click_create_cpe_bundle_save_button(self):
        """
        Returning create cpe bundle save button
        Implementing logging for create cpe bundle save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: create cpe bundle save button')
            self._sell_page.click_create_cpe_bundle_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: create cpe bundle save button')
            return is_clicked

    def click_cpe_bundle_button(self):
        """
        Returning click cpe bundle button
        Implementing logging for click cpe bundle button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click cpe bundle button')
            self._sell_page.click_cpe_bundle_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click cpe bundle button')
            return is_clicked

    def click_cpe_bundle_create_cpe_bundle_button(self):
        """
        Returning click cpe bundle create cpe bundle button
        Implementing logging for click cpe bundle create cpe bundle button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click cpe bundle create cpe bundle button')
            self._sell_page.click_cpe_bundle_create_cpe_bundle_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click cpe bundle create cpe bundle button')
            return is_clicked

    def set_customer_source(self, dropdowm_item):
        """
        Returning set customer source
        Implementing logging for set customer source functionality
        :param dropdowm_item:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set customer source')
            self._sell_page.set_customer_source(dropdowm_item)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set customer source')
            return is_set

    def select_all_customers_of_pricing_exceptions(self):
        """
        Returning select all customer of pricing exceptions
        Implementing logging for select all customer of pricing exceptions functionality
        :return:
        """
        is_selected = None
        try:
            self.logger.info('Start: select all customer of pricing exceptions')
            self._sell_page.select_all_customers_of_pricing_exceptions()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select all customer of pricing exceptions')
            return is_selected

    def select_price_exception_request_grid_multiple_row(self):
        """
        Returning select price exception request grid multiple row
        Implementing logging for select price exception request grid multiple row functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select price exception request grid multiple row')
            self._sell_page.select_price_exception_request_grid_multiple_row()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select price exception request grid multiple row')
            return is_selected

    def is_bulk_edit_error_pop_up_displayed(self):
        """
        Returning is bulk edit error pop up displayed
        Implementing logging for is bulk edit error pop up displayed functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is bulk edit error pop up displayed')
            return self._sell_page.is_bulk_edit_error_pop_up_displayed()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is bulk edit error pop up displayed')

    def select_sell_dashboard_tab(self):
        """
        Returning select sell dashboard tab
        Implementing logging for is select sell dashboard tab functionality
        :return:
        """
        is_selected = None
        try:
            self.logger.info('Start: select sell dashboard tab method')
            self._sell_page.select_sell_dashboard_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select sell dashboard tab method')
            return is_selected

    def is_save_customer_profile_button_not_present(self):
        """
        Returning is save customer profile button not present
        Implementing logging for is save customer profile button not present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is save customer profile button not present')
            return self._sell_page.is_save_customer_profile_button_not_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is save customer profile button not present')

    def is_specific_tab_on_customer_profile_page_present(self, tab_name):
        """
        Returning is specific tab on customer profile page present
        Implementing logging for is specific tab on customer profile page present functionality
        :param tab_name:
        :return: True/False
        """
        try:
            self.logger.info('Start: is specific tab on customer profile page present')
            return self._sell_page.is_specific_tab_on_customer_profile_page_present(tab_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is specific tab on customer profile page present')

    def is_specific_column_on_customer_profile_grid_present(self, column_name):
        """
        Returning is specific column on customer profile page present
        Implementing logging for is specific column on customer profile page present functionality
        :param column_name:
        :return: True/False
        """
        try:
            self.logger.info('Start: is specific column on customer profile grid present')
            return self._sell_page.is_specific_column_on_customer_profile_grid_present(column_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is specific column on customer profile page present')

    def is_upload_customer_price_list_button_not_present(self):
        """
        Returning is upload customer price list button not present
        Implementing logging for is upload customer price list not present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is upload customer price list button not present')
            return self._sell_page.is_upload_customer_price_list_button_not_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is upload customer price list button not present')

    def click_show_summary_form_button_to_expand(self):
        """
        Returning click show summary form button to expand
        Implementing logging for click show summary form button to expand functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click show summary form button to expand')
            self._sell_page.click_show_summary_form_button_to_expand()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click show summary form button to expand')
            return is_clicked

    def is_error_log_message_tab_present(self):
        """
        Returning is error log message tab present
        Implementing logging for is error log message tab present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is error log message tab present')
            return self._sell_page.is_error_log_message_tab_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is error log message tab present')

    def get_cpl_prev_date_override(self):
        """
        Returning get cpl prev date override
        Implementing logging for get cpl prev date override functionality
        :return: True/False
        """
        previous_value = None
        try:
            self.logger.info('Start: get cpl prev date override')
            previous_value = self._sell_page.get_cpl_prev_date_override()
        except WebDriverException as exp:
            previous_value = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get cpl prev date override')
            return previous_value

    def set_cpl_prev_date_override(self, cpl_prev_date_override):
        """
        Returning set cpl prev date override
        Implementing logging for set cpl prev date override functionality
        :param cpl_prev_date_override:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set cpl prev date override')
            self._sell_page.set_cpl_prev_date_override(cpl_prev_date_override)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set cpl prev date override')
            return is_set

    def get_customers_grid_first_row_customer_name(self):
        """
        Returning get customers grid first row customer name
        Implementing logging for get customers grid first row customer name functionality
        :return: customer_name
        """
        try:
            self.logger.info('Start: get customers grid first row customer name')
            return self._sell_page.get_customers_grid_first_row_customer_name()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get customers grid first row customer name')

    def click_my_price_list_button(self):
        """
        Returning click my price list button
        Implementing logging for click my price list button functionality
        :return:
        """
        is_clicked = None
        try:
            self.logger.info('Start: click my price list button')
            self._sell_page.click_my_price_list_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click my price list button')
            return is_clicked

    def is_my_price_list_screen_loaded(self):
        """
        Returning is my price list screen loaded
        Implementing logging for is my price list screen loaded functionality
        """
        try:
            self.logger.info('Start: is my price list screen loaded')
            return self._sell_page.is_my_price_list_screen_loaded()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is my price list screen loaded')

    def click_new_my_price_list_button(self):
        """
        Returning click new my price list button
        Implementing logging for click new my price list button functionality
        :return:
        """
        is_clicked = None
        try:
            self.logger.info('Start: click new my price list button')
            self._sell_page.click_new_my_price_list_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click new my price list button')
            return is_clicked

    def is_create_my_price_list_screen_loaded(self):
        """
        Returning is create my price list screen loaded
        Implementing logging for is create my price list screen loaded functionality
        """
        try:
            self.logger.info('Start: is create my price list screen loaded')
            return self._sell_page.is_create_my_price_list_screen_loaded()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is create my price list screen loaded')

    def set_my_price_list(self, my_price_list_prefix, with_random_data=True):
        """
        Returning set my price list
        Implementing logging for set my price list prefix functionality
        """
        is_set = None
        try:
            self.logger.info('Start: set my price list')
            self._sell_page.set_my_price_list(my_price_list_prefix=my_price_list_prefix, with_random_data=with_random_data)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set my price list')
            return is_set

    def get_my_price_list(self):
        """
        Returning get my price list
        Implementing logging for get my price list functionality
        """
        try:
            self.logger.info('Start: get my price list')
            return self._sell_page.get_my_price_list()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get my price list')

    def move_all_available_customers_to_destination_to_create_my_price_list(self):
        """
        Returning move all available customers to destination to create my price list
        Implementing logging for move all available customers to destination to create my price list functionality
        :return: True/False
        """
        is_moved = None
        try:
            self.logger.info('Start: move all available customers to destination to create my price list')
            self._sell_page.move_all_available_customers_to_destination_to_create_my_price_list()
            is_moved = True
        except WebDriverException as exp:
            is_moved = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: move all available customers to destination to create my price list')
            return is_moved

    def move_all_available_countries_to_destination_to_create_my_price_list(self):
        """
        Returning move all available countries to destination to create my price list
        Implementing logging for move all available countries to destination to create my price list functionality
        :return: True/False
        """
        is_moved = None
        try:
            self.logger.info('Start: move all available countries to destination to create my price list')
            self._sell_page.move_all_available_countries_to_destination_to_create_my_price_list()
            is_moved = True
        except WebDriverException as exp:
            is_moved = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: move all available countries to destination to create my price list')
            return is_moved

    def click_save_my_price_list_button(self):
        """
        Returning click save my price list button
        Implementing logging for click save my price list button functionality
        :return:
        """
        is_clicked = None
        try:
            self.logger.info('Start: click save my price list button')
            self._sell_page.click_save_my_price_list_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click save my price list button')
            return is_clicked

    def set_my_price_list_into_search_input_field(self, my_price_list):
        """
        Returning set my price list into search input field
        Implementing logging for set my price list into search input field functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set my price list into search input field')
            self._sell_page.set_my_price_list_into_search_input_field(my_price_list=my_price_list)
            is_set = True
        except WebDriverException as exp:
            is_moved = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set my price list into search input field')
            return is_set

    def click_my_price_list_management_grid_first_row_inline_action_button(self):
        """
        Returning click my price lists management grid first row inline action button
        Implementing logging for click my price lists management grid first row inline action button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click my price lists management grid first row inline action button')
            self._sell_page.click_my_price_list_management_grid_first_row_inline_action_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click my price lists management grid first row inline action button')
            return is_clicked

    def select_my_price_list_management_grid_inline_action_item(self, item_name):
        """
        Returning select my price list management grid inline action item
        Implementing logging for select my price list management grid inline action item functionality
        :param item_name: inline item
        :return:
        """
        is_selected = None
        try:
            self.logger.info('Start: select my price list management grid inline action item')
            self._sell_page.select_my_price_list_management_grid_inline_action_item(item_name)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select my price list management grid inline action item')
            return is_selected

    def is_error_message_displayed_for_duplicate_my_price_list(self):
        """
        Returning is error message displayed for duplicate my price list
        Implementing logging for is error message displayed for duplicate my price list functionality
        :return: True/False
        """
        status = None
        try:
            self.logger.info('Start: is error message displayed for duplicate my price list')
            status = self._sell_page.is_error_message_displayed_for_duplicate_my_price_list()
        except WebDriverException as exp:
            status = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is error message displayed for duplicate my price list')
            return status

    def select_item_from_my_price_list_drop_down(self, my_price_list):
        """
        Returning select item from my price list drop down
        Implementing logging for select item from my price list drop down functionality
        :param: my_price_list
        :return:
        """
        is_selected = None
        try:
            self.logger.info('Start: select item from my price list drop down')
            self._sell_page.select_item_from_my_price_list_drop_down(my_price_list)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select item from my price list drop down')
            return is_selected

    def click_customer_price_list_preview_export_to_excel_button(self):
        """
        Returning click customer price list preview export to excel button
        Implementing logging for click customer price list preview export to excel button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click customer price list preview export to excel button')
            self._sell_page.click_customer_price_list_preview_export_to_excel_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click customer price list preview export to excel button')
            return is_clicked

    def select_my_price_list_management_grid_first_row_checkbox(self):
        """
        Returning select my price list management grid first row checkbox
        Implementing logging for select my price list management grid first row checkbox functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select my price list management grid first row checkbox')
            self._sell_page.select_my_price_list_management_grid_first_row_checkbox()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select my price list management grid first row checkbox')
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
            self._sell_page.click_delete_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click delete button')
            return is_clicked

    def click_country_group_link(self):
        """
        Returning click country group link
        Implementing logging for click country group link functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click country group link')
            self._sell_page.click_country_group_link()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click country group link')
            return is_clicked

    def click_choose_template_type_to_download_customer_price_list_link(self):
        """
        Returning click choose template type to download customer price list link
        Implementing logging for click choose template type to download customer price list link functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click choose template type to download customer price list link')
            self._sell_page.click_choose_template_type_to_download_customer_price_list_link()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click choose template type to download customer price list link')
            return is_clicked

    def set_reference_price_list_first_item(self):
        """
        Returning set reference price list first item
        Implementing logging for set reference price list first item functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set reference price list first item')
            self._sell_page.set_reference_price_list_first_item()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set reference price list first item')
            return is_set

    def set_number_plan_first_item(self):
        """
        Returning set number plan first item
        Implementing logging for set number plan first item functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set number plan first item')
            self._sell_page.set_number_plan_first_item()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set number plan first item')
            return is_set

    def are_countries_selected(self):
        """
        Returning are countries selected
        Implementing logging for are countries selected functionality
        :return: True/False
        """
        are_selected = None
        try:
            self.logger.info('Start: are countries selected')
            are_selected = self._sell_page.are_countries_selected()
        except WebDriverException as exp:
            are_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: are countries selected')
            return are_selected

    def select_first_customer_for_price_lists(self):
        """
        Returning select first customer for price lists
        Implementing logging for select first customer for price lists functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select first customer for price lists')
            self._sell_page.select_first_customer_for_price_lists()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select first customer for price lists')
            return is_selected

    def validate_country_dropdown_does_not_show_country_having_no_country_code(self, *countries):
        """
        Returning validate country dropdown does not show country having no country code
        Implementing logging for validate country dropdown does not show country having no country code functionality
        :param countries:
        :return:
        """
        try:
            self.logger.info('Start: validate country dropdown does not show country having no country code')
            return self._sell_page.validate_country_dropdown_does_not_show_country_having_no_country_code(countries)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: validate country dropdown does not show country having no country code')

    def get_countries_from_tbcountry_having_no_mobile_country_code(self, server, database, user, password):
        """
        Returning get countries from tbcountry having no mobile country code
        Implementing logging for get countries from tbcountry having no mobile country code functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: get countries from tbcountry having no mobile country code')
            return self._sell_page.get_countries_from_tbcountry_having_no_mobile_country_code(server, database, user, password)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get countries from tbcountry having no mobile country code')

    def is_warning_tab_present(self):
        """
        Returning is warning tab present
        Implementing logging for is warning tab present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is warning tab present')
            return self._sell_page.is_warning_tab_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is warning tab present')

    def select_warning_tab(self):
        """
        Returning select warning tab
        Implementing logging for select warning tab functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select warning tab')
            self._sell_page.select_warning_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select warning tab')
            return is_selected

    def is_warning_tab_loaded(self):
        """
        Returning is warning tab loaded
        Implementing logging for is warning tab loaded functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is warning tab loaded')
            return self._sell_page.is_warning_tab_loaded()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is warning tab loaded')

    def is_warnings_message_tab_present(self):
        """
        Returning is warnings message tab present
        Implementing logging for is warnings message tab present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is warnings message tab present')
            return self._sell_page.is_warnings_message_tab_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is warnings message tab present')

    def is_errors_message_tab_present(self):
        """
        Returning is errors message tab present
        Implementing logging for is errors message tab present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is errors message tab present')
            return self._sell_page.is_errors_message_tab_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is errors message tab present')

    def select_tab(self, tab_name):
        """
        Returning select tab
        Implementing logging for select tab functionality
        :param tab_name:
        :return:
        """
        is_selected = None
        try:
            self.logger.info('Start: select tab')
            self._sell_page.select_tab(tab_name)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select tab')
            return is_selected

    def get_all_items_from_my_pricelist_dropdown(self):
        """
        Returning get all items from my pricelist dropdown
        Implementing logging for get all items from my pricelist dropdown functionality
        :return:
        """
        try:
            self.logger.info('Start: get all items from my pricelist dropdown')
            return self._sell_page.get_all_items_from_my_pricelist_dropdown()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get all items from my pricelist dropdown')

    def is_grid_empty(self):
        """
        Returning is grid empty
        Implementing logging for is grid empty functionality
        :return:
        """
        try:
            self.logger.info('Start: is grid empty')
            return self._sell_page.is_grid_empty()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is grid empty')

    def is_deleted_mypricelist_removed_from_mypricelist_dropdown(self, mypricelist):
        """
        Returning is deleted mypricelist removed from mypricelist dropdown
        Implementing logging for is deleted mypricelist removed from mypricelist dropdown functionality
        :return: True/False
        """
        status = None
        try:
            self.logger.info('Start: is deleted mypricelist removed from mypricelist dropdown')
            status = self._sell_page.is_deleted_mypricelist_removed_from_mypricelist_dropdown(mypricelist)
        except WebDriverException as exp:
            status = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is deleted mypricelist removed from mypricelist dropdown')
            return status

    def is_pricing_exception_error_message_displayed_for_approved_or_request_status(self):
        """
        Returning is pricing exception error message displayed for approved or request status
        Implementing logging for is pricing exception error message displayed for approved or request status functionality
        :return: True/False
        """
        status = None
        try:
            self.logger.info('Start: is pricing exception error message displayed for approved or request status')
            status = self._sell_page.is_pricing_exception_error_message_displayed_for_approved_or_request_status()
        except WebDriverException as exp:
            status = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is pricing exception error message displayed for approved or request status')
            return status

    def is_sorting_options_are_displayed_in_customer_price_list_preview_screen(self, column_name, sort_descending=False):
        """
        Returning is sorting options are displayed in customer price list preview screen
        Implementing logging for is sorting options are displayed in customer price list preview screen functionality
        :return: True/False
        """
        status = None
        try:
            self.logger.info('Start: is sorting options are displayed in customer price list preview screen')
            status = self._sell_page.is_sorting_options_are_displayed_in_customer_price_list_preview_screen(column_name, sort_descending)
        except WebDriverException as exp:
            status = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is sorting options are displayed in customer price list preview screen')
            return status

    def is_search_rate_present(self):
        """
        Returning is search rate present
        Implementing logging for is search rate present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is search rate present')
            return self._sell_page.is_search_rate_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is search rate present')

    def is_country_multiselect_field_disabled(self):
        """
        Returning is country multiselect field disabled
        Implementing logging for is country multiselect field disabled functionality
        :return: True/False
        """
        is_disabled = None
        try:
            self.logger.info('Start: is country multiselect field disabled')
            is_disabled = self._sell_page.is_country_multiselect_field_disabled()
        except WebDriverException as exp:
            is_disabled = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is country multiselect field disabled')
            return is_disabled

    def set_offer_content_for_mypricelist(self, item_name):
        """
        Returning set offer content for mypricelist
        Implementing logging for set offer content for mypricelist functionality
        :param item_name:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set offer content for mypricelist')
            if item_name != "":
                self._sell_page.set_offer_content_for_mypricelist(item_name)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set offer content for mypricelist')
            return is_set

    def set_mypricelist_to_create_cpl(self, item_name):
        """
        Returning set mypricelist to create cpl
        Implementing logging for set mypricelist to create cpl functionality
        :param item_name:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set mypricelist to create cpl')
            if item_name != "":
                self._sell_page.set_mypricelist_to_create_cpl(item_name)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set mypricelist to create cpl')
            return is_set

    def is_country_multiselect_field_enabled(self):
        """
        Returning is country multiselect field enabled
        Implementing logging for is country multiselect field enabled functionality
        :return: True/False
        """
        is_enabled = None
        try:
            self.logger.info('Start: is country multiselect field enabled')
            is_enabled = self._sell_page.is_country_multiselect_field_enabled()
        except WebDriverException as exp:
            is_enabled = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is country multiselect field enabled')
            return is_enabled

    def is_future_price_list_action_column_name_not_present(self):
        """
        Returning is future price list action column name not present
        Implementing logging for is future price list action column name not present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is future price list action column name not present')
            return self._sell_page.is_future_price_list_action_column_name_not_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is future price list action column name not present')

    def is_future_price_list_action_column_name_present(self):
        """
        Returning is future price list action column name present
        Implementing logging for is future price list action column name present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is future price list action column name present')
            return self._sell_page.is_future_price_list_action_column_name_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is future price list action column name present')

    def is_pricing_exception_bulk_edit_pop_up_not_present(self):
        """
        Returning is pricing exception bulk edit pop up not present
        Implementing logging for is pricing exception bulk edit pop up not present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is pricing exception bulk edit pop up not present')
            return self._sell_page.is_pricing_exception_bulk_edit_pop_up_not_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is pricing exception bulk edit pop up not present')

    def set_first_row_note(self, note_prefix):
        """
        Returning set first row note
        Implementing logging for set first row note functionality
        :param note_prefix:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set first row note')
            self._sell_page.set_first_row_note(note_prefix)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set first row note')
            return is_set

    def click_auto_generate_management_button(self):
        """
        Returning click auto generate management button
        Implementing logging for click auto generate management button functionality
        :return:
        """
        is_clicked = None
        try:
            self.logger.info('Start: click auto generate management button')
            self._sell_page.click_auto_generate_management_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click auto generate management button')
            return is_clicked

    def is_auto_generate_management_screen_present(self):
        """
        Returning is auto generate management screen present
        Implementing logging for is auto generate management screen present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is auto generate management screen present')
            return self._sell_page.is_auto_generate_management_screen_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is auto generate management screen present')

    def is_specific_column_present_in_auto_generate_management_screen(self, column_name):
        """
        Returning is specific column present in auto generate management screen
        Implementing logging for is specific column present in auto generate management screen functionality
        :param column_name:
        :return: True/False
        """
        try:
            self.logger.info('Start: is specific column present in auto generate management screen')
            return self._sell_page.is_specific_column_present_in_auto_generate_management_screen(column_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is specific column present in auto generate management screen')

    def click_new_template_button(self):
        """
        Returning click new template button
        Implementing logging for click new template button functionality
        :return:
        """
        is_clicked = None
        try:
            self.logger.info('Start: click new template button')
            self._sell_page.click_new_template_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click new template button')
            return is_clicked

    def set_new_template_name(self, template_name_prefix):
        """
        Returning set new template name
        Implementing logging for set new template name functionality
        :param template_name_prefix:
        :return: customer name
        """
        is_set = None
        try:
            self.logger.info('Start: set new template name')
            self._sell_page.set_new_template_name(template_name_prefix)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set new template name')
            return is_set

    def get_created_template_name(self):
        """
        Returning get created template name
        Implementing logging for get created template name functionality
        :return: template_name
        """
        try:
            self.logger.info('Start: get created template name')
            return self._sell_page.get_created_template_name()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get created template name')

    def set_begin_of_range_period_date_to_add(self, day_to_add):
        """
        Returning set begin of range period date to add
        Implementing logging for set begin of range period date to add functionality
        :param day_to_add:
        """
        is_set = None
        try:
            self.logger.info('Start: set begin of range period date to add')
            self._sell_page.set_begin_of_range_period_date_to_add(day_to_add)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set begin of range period date to add')
            return is_set

    def set_begin_of_range_period_time(self, time):
        """
        Returning set begin of range period time
        Implementing logging for set begin of range period time functionality
        :param time:
        """
        is_set = None
        try:
            self.logger.info('Start: set begin of range period time')
            self._sell_page.set_begin_of_range_period_time(time)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set begin of range period time')
            return is_set

    def set_end_of_range_period_date_to_add(self, day_to_add):
        """
        Returning set end of range period date to add
        Implementing logging for set end of range period date to add functionality
        :param day_to_add:
        """
        is_set = None
        try:
            self.logger.info('Start: set end of range period date to add')
            self._sell_page.set_end_of_range_period_date_to_add(day_to_add)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set end of range period date to add')
            return is_set

    def set_end_of_range_period_time(self, time):
        """
        Returning set end of range period time
        Implementing logging for set end of range period time functionality
        :param time:
        """
        is_set = None
        try:
            self.logger.info('Start: set end of range period time')
            self._sell_page.set_end_of_range_period_time(time)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set end of range period time')
            return is_set

    def filter_auto_template_management_grid(self, column_name, item_name):
        """
        Returning filter auto template management grid
        Implementing logging for filter auto template management grid functionality
        :param column_name: column name to filter
        :param item_name: item to filter
        :return: True/False
        """
        is_filtered = None
        try:
            self.logger.info('Start: filterauto template management grid')
            self._sell_page.filter_auto_template_management_grid(column_name, item_name)
            is_filtered = True
        except WebDriverException as exp:
            is_filtered = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: filter auto template management grid')
            return is_filtered

    def get_auto_template_management_grid_row_details(self):
        """
        Returning get auto template management grid row details
        Implementing logging for get auto template management grid row details functionality
        :return: grid_row_data
        """
        try:
            self.logger.info('Start: get auto template management grid row details')
            return self._sell_page.get_auto_template_management_grid_row_details()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get auto template management grid row details')

    def verify_number_plan_field_value(self):
        """
        Returning verify number plan field value
        Implementing logging for verify number plan field value functionality
        :return: True/False
        """
        is_verified = None
        try:
            self.logger.info('Start: verify number plan field value')
            is_verified = self._sell_page.verify_number_plan_field_value()
        except WebDriverException as exp:
            is_verified = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: verify number plan field value')
            return is_verified

    def get_offer_content_field_value(self):
        """
        Returning get offer content field value
        Implementing logging for get offer content field value functionality
        :return: offer_content
        """
        offer_content = None
        try:
            self.logger.info('Start: get offer content field value')
            offer_content = self._sell_page.get_offer_content_field_value()
        except WebDriverException as exp:
            offer_content = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get offer content field value')
            return offer_content

    def get_my_price_list_name_from_mpl_management_grid(self):
        """
        Returning get my price list name from mpl management grid
        Implementing logging for get my price list name from mpl management grid functionality
        :return: begin date column value
        """
        column_value = None
        try:
            self.logger.info('Start: get my price list name from mpl management grid')
            column_value = self._sell_page.get_my_price_list_name_from_mpl_management_grid()
        except WebDriverException as exp:
            column_value = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get my price list name from mpl management grid')
            return column_value

    def set_scope_for_mypricelist(self, item_name):
        """
        Returning set scope for mypricelist
        Implementing logging for set scope for mypricelist functionality
        :param item_name:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set scope for mypricelist')
            if item_name != "":
                self._sell_page.set_scope_for_mypricelist(item_name)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set scope for mypricelist')
            return is_set

    def set_select_date_for_mypricelist_grid(self, selete_date_item):
        """
        Returning set select date to mypricelist grid
        Implementing logging for set select date to mypricelist grid functionality
        :param selete_date_item:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set select date to mypricelist grid')
            self._sell_page.set_select_date_for_mypricelist_grid(selete_date_item)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set select date to mypricelist grid')
            return is_set

    def set_mypricelist_from_kendo_dropdown(self, mypricelist_name):
        """
        Returning set mypricelist from kendo dropdown
        Implementing logging for set mypricelist from kendo dropdown functionality
        :param mypricelist_name:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set mypricelist from kendo dropdown')
            self._sell_page.set_mypricelist_from_kendo_dropdown(mypricelist_name)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set mypricelist from kendo dropdown')
            return is_set

    def compare_select_date_in_mypricelist(self, selete_date_item):
        """
        Returning compare select date in mypricelist
        Implementing logging for compare select date in mypricelist functionality
        :param selete_date_item:
        :return: True/False
        """
        try:
            self.logger.info('Start: compare select date in mypricelist')
            return self._sell_page.compare_select_date_in_mypricelist(selete_date_item)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare select date in mypricelist')

    def set_offer_date_to_mypricelist_grid(self, selete_date_item):
        """
        Returning set offer date to mypricelist grid
        Implementing logging for set offer date to mypricelist grid functionality
        :param selete_date_item:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set offer date to mypricelist grid')
            self._sell_page.set_offer_date_to_mypricelist_grid(selete_date_item)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set offer date to mypricelist grid')
            return is_set

    def compare_offer_date_in_mypricelist(self, offer_date_item):
        """
        Returning compare offer date in mypricelist
        Implementing logging for compare offer date in mypricelist functionality
        :param offer_date_item:
        :return: True/False
        """
        try:
            self.logger.info('Start: compare offer date in mypricelist')
            return self._sell_page.compare_offer_date_in_mypricelist(offer_date_item)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare offer date in mypricelist')

    def is_preview_summary_grid_column_displayed(self, column_name):
        """
        Returning is preview summary grid column displayed
        Implementing logging for is preview summary grid column displayed functionality
        :param column_name:
        :return: True/False
        """
        is_displayed = None
        try:
            self.logger.info('Start: is preview summary grid column displayed')
            is_displayed = self._sell_page.is_preview_summary_grid_column_displayed(column_name)
        except WebDriverException as exp:
            is_displayed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: iis preview summary grid column displayed')
            return is_displayed

    def click_customer_price_list_job_notifier_title(self):
        """
        Returning click customer price list job notifier title
        Implementing logging for click customer price list job notifier title functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click customer price list job notifier title')
            self._sell_page.click_customer_price_list_job_notifier_title()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click customer price list job notifier title')
            return is_clicked

    def click_first_row_job_msg_info_icon(self):
        """
        Returning click first row job msg info icon
        Implementing logging for click first row job msg info icon functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click first row job msg info icon')
            self._sell_page.click_first_row_job_msg_info_icon()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click first row job msg info icon')
            return is_clicked

    def does_jobs_grid_have_data(self):
        """
        Returning does jobs grid have data
        Implementing logging for does jobs grid have data functionality
        :return: True/False
        """
        has_data = None
        try:
            self.logger.info('Start: does jobs grid have data')
            has_data = self._sell_page.does_jobs_grid_have_data()
        except WebDriverException as exp:
            has_data = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: does jobs grid have data')
            return has_data

    def is_generate_offers_for_filter_option_present(self):
        """
        Returning is generate offers for filter option present
        Implementing logging for is generate offers for filter option present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is generate offers for filter option present')
            return self._sell_page.is_generate_offers_for_filter_option_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is generate offers for filter option present')

    def is_generate_offers_for_filter_option_not_present(self):
        """
        Returning is generate offers for filter option not present
        Implementing logging for is generate offers for filter option not present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is generate offers for filter option not present')
            return self._sell_page.is_generate_offers_for_filter_option_not_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is generate offers for filter option not present')

    def click_show_search_form_link(self):
        """
        Returning click show search form link
        Implementing logging for click show search form link functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click show search form link')
            self._sell_page.click_show_search_form_link()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click show search form link')
            return is_clicked

    def is_no_record_found_message_displayed_in_customer_offer_preview_grid(self):
        """
        Returning is no record found message displayed in customer offer preview grid
        Implementing logging for is no record found message displayed in customer offer preview grid functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is no record found message displayed in customer offer preview grid')
            return self._sell_page.is_no_record_found_message_displayed_in_customer_offer_preview_grid()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is no record found message displayed in customer offer preview grid')

    def is_rates_tab_loaded_properly(self):
        """
        Returning rates tab loading status
        Implementing logging for rates tab loading status functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is rates tab loaded properly')
            return self._sell_page.is_rates_tab_loaded_properly()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is rates tab loaded properly')

    def set_value_into_destination_input_box(self, destination):
        """
        Returning set value into destination input box
        Implementing logging for set value into destination input box functionality
        :param destination:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set value into destination input box')
            self._sell_page.set_value_into_destination_input_box(destination)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set value into destination input box')
            return is_set

    def set_value_into_pricing_exception_destination_input_box(self, destination):
        """
        Returning set value into pricing exception destination input box
        Implementing logging for set value into pricing exception destination input box functionality
        :param destination:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set value into pricing exception destination input box')
            self._sell_page.set_value_into_pricing_exception_destination_input_box(destination)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set value into pricing exception destination input box')
            return is_set

    def is_price_exception_grid_begin_date_field_auto_populated(self, backdatepricingexceptiondays=False):
        """
        Returning is price exception grid begin date field auto populated
        Implementing logging for is price exception grid begin date field auto populated functionality
        :return: True/False
        """
        status = None
        try:
            self.logger.info('Start: is price exception grid begin date field auto populated')
            status = self._sell_page.is_price_exception_grid_begin_date_field_auto_populated(backdatepricingexceptiondays)
        except WebDriverException as exp:
            status = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is price exception grid begin date field auto populated')
            return status

    def compare_customer_price_lists_number_of_rows_after_upload_for_one_upload(self):
        """
        Returning compare customer price lists number of rows after upload for one upload
        Implementing logging for compare customer price lists number of rows after upload for one upload functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: compare customer price lists number of rows after upload for one upload')
            return self._sell_page.compare_customer_price_lists_number_of_rows_after_upload_for_one_upload()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare customer price lists number of rows after upload for one upload')

    def click_quality_of_service_link(self):
        """
        Returning click quality of service link
        Implementing logging for click quality of service link functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click quality of service link')
            self._sell_page.click_quality_of_service_link()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click quality of service link')
            return is_clicked

    def set_quality_of_service(self, quality_of_service):
        """
        Returning set quality of service
        Implementing logging for set quality of service functionality
        :param quality_of_service:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set quality of service')
            self._sell_page.set_quality_of_service(quality_of_service)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set quality of service')
            return is_set

    def is_qos_grid_column_present(self, column_name):
        """
        Returning is qos grid column present
        Implementing logging for is qos grid column present functionality
        :param column_name:
        :return: True/False
        """
        try:
            self.logger.info('Start: is qos grid column present')
            return self._sell_page.is_qos_grid_column_present(column_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is qos grid column present')

    def check_ixlink_customer_checkbox(self):
        """
        Returning check ixlink customer checkbox
        Implementing logging for check ixlink customer checkbox functionality
        :return: True/False
        """
        is_checked = None
        try:
            self.logger.info('Start: check ixlink customer checkbox')
            self._sell_page.check_ixlink_customer_checkbox()
            is_checked = True
        except WebDriverException as exp:
            is_checked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: check ixlink customer checkbox')
            return is_checked

    def get_available_number_of_countries_for_price_lists(self):
        """
        Returning get available number of countries for price lists
        Implementing logging for get available number of countries for price lists functionality
        :return: number_of_countries
        """
        number_of_countries = None
        try:
            self.logger.info('Start: get available number of countries for price lists')
            number_of_countries = self._sell_page.get_available_number_of_countries_for_price_lists()
        except WebDriverException as exp:
            number_of_countries = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get available number of countries for price lists')
            return number_of_countries

    def click_buy_and_sell_deal_management_link(self):
        """
        Returning click buy and sell deal management link
        Implementing logging for click buy and sell deal management link functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click buy and sell deal management link')
            self._sell_page.click_buy_and_sell_deal_management_link()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click buy and sell deal management link')
            return is_clicked

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
            is_verified = self._sell_page.verify_deal_management_grid_column_display_thousand_separators(column_name)
        except WebDriverException as exp:
            is_verified = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: verify deal management grid column display thousand separators')
            return is_verified

    def is_pricing_exception_grid_error_message_appeared(self):
        """
        Returning is pricing exception grid error message appeared
        Implementing logging for is pricing exception grid error message appeared functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is pricing exception grid error message appeared')
            return self._sell_page.is_pricing_exception_grid_error_message_appeared()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is pricing exception grid error message appeared')

    def is_qos_screen_filter_option_present(self, filter_option_name):
        """
        Returning is qos screen filter option present
        Implementing logging for is qos screen filter option present functionality
        :param filter_option_name:
        :return: True/False
        """
        try:
            self.logger.info('Start: is qos screen filter option present')
            return self._sell_page.is_qos_screen_filter_option_present(filter_option_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is qos screen filter option present')

    def click_clear_button(self):
        """
        Returning click clear button
        Implementing logging for click clear button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click clear button')
            self._sell_page.click_clear_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click clear button')
            return is_clicked

    def is_qos_filter_option_selection_cleared(self):
        """
        Returning is qos filter option selection cleared
        Implementing logging for is qos filter option selection cleared functionality
        :return: True/False
        """
        is_cleared = None
        try:
            self.logger.info('Start: is qos filter option selection cleared')
            is_cleared = self._sell_page.is_qos_filter_option_selection_cleared()
        except WebDriverException as exp:
            is_cleared = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is qos filter option selection cleared')
            return is_cleared

    def get_source_name_from_source_customer_table(self, server, database, user, password):
        """
        Returning get source name from source customer table
        Implementing logging for get source name from source customer table functionality
        :param server:
        :param database:
        :param user:
        :param password:
        :return: agreement
        """
        try:
            self.logger.info('Start: get source name from source customer table')
            return self._sell_page.get_source_name_from_source_customer_table(server, database, user, password)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get source name from source customer table')

    def check_exclude_own_home_country_checkbox(self):
        """
        Returning check exclude own home country checkbox
        Implementing logging for check exclude own home country checkbox functionality
        :return: True/False
        """
        is_checked = None
        try:
            self.logger.info('Start: check exclude own home country checkbox')
            self._sell_page.check_exclude_own_home_country_checkbox()
            is_checked = True
        except WebDriverException as exp:
            is_checked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: check exclude own home country checkbox')
            return is_checked

    def assign_available_country_to_source(self, *country_name):
        """
        Returning assign available country to source
        Implementing logging for assign available country to source functionality
        :param country_name:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: assign available country to source')
            self._sell_page.assign_available_country_to_source(country_name)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: assign available country to source')
            return is_selected

    def get_country_name_from_database(self, config_variable_value, server, database, user, password):
        """
        Returning get cost policy status from database
        Implementing logging for get cost policy status from database functionality
        :param config_variable_value:
        :param server:
        :param database:
        :param user:
        :param password:
        :return: country name from database
        """
        try:
            self.logger.info('Start: get cost policy status from database')
            return self._sell_page.get_country_name_from_database(config_variable_value, server, database, user, password)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get cost policy status from database')

    def is_homecountry_not_displayed_in_preview_grid(self, homecountry):
        """
        Returning is homecountry not displayed in preview grid
        Implementing logging for is homecountry not displayed in preview grid functionality
        :param homecountry:
        :return: True/False
        """
        try:
            self.logger.info('Start: is homecountry not displayed in preview grid')
            return self._sell_page.is_homecountry_not_displayed_in_preview_grid(homecountry)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is homecountry not displayed in preview grid')

    def uncheck_exclude_own_home_country_checkbox(self):
        """
        Returning uncheck exclude own home country checkbox
        Implementing logging for uncheck exclude own home country checkbox functionality
        :return: True/False
        """
        is_unchecked = None
        try:
            self.logger.info('Start: uncheck exclude own home country checkbox')
            self._sell_page.uncheck_exclude_own_home_country_checkbox()
            is_unchecked = True
        except WebDriverException as exp:
            is_unchecked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: uncheck exclude own home country checkbox')
            return is_unchecked

    def is_homecountry_displayed_in_preview_grid(self, homecountry):
        """
        Returning is homecountry displayed in preview grid
        Implementing logging for is homecountry displayed in preview grid functionality
        :param homecountry:
        :return: True/False
        """
        try:
            self.logger.info('Start: is homecountry displayed in preview grid')
            return self._sell_page.is_homecountry_not_displayed_in_preview_grid(homecountry)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is homecountry displayed in preview grid')

    def get_source_name_from_source_customer_table_where_countryid_is_not_null(self, server, database, user, password):
        """
        Returning get source name from source customer table where countryid is not null functionality
        Implementing logging for get source name from source customer table where countryid is not null functionality functionality
        :param server:
        :param database:
        :param user:
        :param password:
        :return: agreement
        """
        try:
            self.logger.info('Start: get source name from source customer table where countryid is not null functionality')
            return self._sell_page.get_source_name_from_source_customer_table_where_countryid_is_not_null(server, database, user, password)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get source name from source customer table where countryid is not null functionality')

    def click_import_button(self):
        """
        Returning click import button
        Implementing logging for click import button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click import button')
            self._sell_page.click_import_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click import button')
            return is_clicked

    def click_qos_browse_button(self):
        """
        Returning click qos browse button
        Implementing logging for click qos browse button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click qos browse button')
            self._sell_page.click_qos_browse_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click qos browse button')
            return is_clicked

    def click_upload_files_button(self):
        """
        Returning click upload files button
        Implementing logging for click upload files button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click upload files button')
            self._sell_page.click_upload_files_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click upload files button')
            return is_clicked

    def get_customer_price_list_grid_number_of_rows(self):
        """
        Returning get customer price list grid number of rows
        Implementing logging for get customer price list grid number of rows functionality
        :return: template_name
        """
        try:
            self.logger.info('Start: get customer price list grid number of rows')
            return self._sell_page.get_customer_price_list_grid_number_of_rows()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get customer price list grid number of rows')

    def compare_cpl_count_after_creating_a_new_one(self):
        """
        Returning compare cpl count after creating a new one
        Implementing logging for compare cpl count after creating a new one functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: compare cpl count after creating a new one')
            return self._sell_page.compare_cpl_count_after_creating_a_new_one()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare cpl count after creating a new one')

    def is_dialed_digits_mcc_mnc_tab_present(self):
        """
        Returning is sdialed digits mcc mnc tab present
        Implementing logging for is sdialed digits mcc mnc tab present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is sdialed digits mcc mnc tab present')
            return self._sell_page.is_dialed_digits_mcc_mnc_tab_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is sdialed digits mcc mnc tab present')

    def is_first_row_future_offer_actions_disabled(self):
        """
        Returning is first row future offer actions disabled
        Implementing logging for is first row future offer actions disabled functionality
        :return: True/False
        """
        is_disabled = None
        try:
            self.logger.info('Start: is first row future offer actions disabled')
            is_disabled = self._sell_page.is_first_row_future_offer_actions_disabled()
        except WebDriverException as exp:
            is_disabled = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is first row future offer action disabled')
            return is_disabled

    def is_second_row_future_offer_actions_enabled(self):
        """
        Returning is second row future offer actions enabled
        Implementing logging for is second row future offer actions enabled functionality
        :return: True/False
        """
        is_enabled = None
        try:
            self.logger.info('Start: is second row future offer actions enabled')
            is_enabled = self._sell_page.is_second_row_future_offer_actions_enabled()
        except WebDriverException as exp:
            is_enabled = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is second row future offer action enabled')
            return is_enabled

    def click_second_row_future_offer_actions_dropdown(self):
        """
        Returning click second row future offer actions dropdown
        Implementing logging for click second row future offer actions dropdown functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click second row future offer actions dropdown')
            self._sell_page.click_second_row_future_offer_actions_dropdown()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click second row future offer actions dropdown')
            return is_clicked

    def does_future_offer_actions_dropdown_have_proper_options(self, option_name):
        """
        Returning does future offer actions dropdown have proper options
        Implementing logging for does future offer actions dropdown have proper options functionality
        :param option_name:
        :return: True/False
        """
        has_options = None
        try:
            self.logger.info('Start: does future offer actions dropdown have proper options')
            has_options = self._sell_page.does_future_offer_actions_dropdown_have_proper_options(option_name)
        except WebDriverException as exp:
            has_options = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: does future offer actions dropdown have proper options')
            return has_options

    def set_to_date(self, to_date, future_date=False, number_of_days_to_add=1):
        """
        Returning set to date
        Implementing logging for set to date functionality
        :param to_date:
        :param future_date:
        :param number_of_days_to_add:
        :return: True/False
        """
        is_date_set = None
        try:
            self.logger.info('Start: set to date')
            self._sell_page.set_to_date(to_date, future_date, number_of_days_to_add)
            is_date_set = True
        except WebDriverException as exp:
            is_date_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set to date')
            return is_date_set

    def click_price_exception_excel_template_download_button_button(self):
        """
        Returning click price exception excel template download button
        Implementing logging for click price exception excel template download button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click price exception excel template download button')
            self._sell_page.click_price_exception_excel_template_download_button_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click price exception excel template download button')
            return is_clicked

    def is_specific_column_present_in_mypricelist_grid(self, column_name):
        """
        Returning is specific column present in mypricelist grid
        Implementing logging for is specific column present in mypricelist grid functionality
        :param column_name:
        :return: True/False
        """
        try:
            self.logger.info('Start: is specific column present in mypricelist grid')
            return self._sell_page.is_specific_column_present_in_mypricelist_grid(column_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is specific column present in mypricelist grid')

    def is_specific_field_present_in_mypricelist_page(self, field_name):
        """
        Returning is specific field present in mypricelist page
        Implementing logging for is specific field present in mypricelist page functionality
        :param field_name:
        :return: True/False
        """
        try:
            self.logger.info('Start: is specific field present in mypricelist page')
            return self._sell_page.is_specific_field_present_in_mypricelist_page(field_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is specific field present in mypricelist page')

    def is_field_present(self, field_name):
        """
        Returning is field present
        Implementing logging for is field present functionality
        :param field_name:
        :return: True/False
        """
        try:
            self.logger.info('Start: is field present')
            return self._sell_page.is_field_present(field_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is field present')

    def is_button_displayed(self, button_name):
        """
        Returning is button displayed
        Implementing logging for is button displayed functionality
        :param button_name:
        :return: True/False
        """
        try:
            self.logger.info('Start: is button displayed')
            return self._sell_page.is_button_displayed(button_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is button displayed')

    def click_auto_generate_template_grid_first_row_inline_action_button(self):
        """
        Returning click auto generate template grid first row inline action button
        Implementing logging for click auto generate template grid first row inline action button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click auto generate template grid first row inline action button')
            self._sell_page.click_auto_generate_template_grid_first_row_inline_action_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click auto generate template grid first row inline action button')
            return is_clicked

    def is_inline_action_item_present(self, field_name):
        """
        Returning is inline action item present
        Implementing logging for is inline action item present functionality
        :param field_name:
        :return: True/False
        """
        try:
            self.logger.info('Start: is inline action item present')
            return self._sell_page.is_inline_action_item_present(field_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is inline action item present')

    def check_require_cpl_approval_checkbox(self):
        """
        Returning check require cpl approval checkbox
        Implementing logging for check require cpl approval checkbox functionality
        :return: True/False
        """
        is_checked = None
        try:
            self.logger.info('Start: check require cpl approval checkbox')
            self._sell_page.check_require_cpl_approval_checkbox()
            is_checked = True
        except WebDriverException as exp:
            is_checked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: check require cpl approval checkbox')
            return is_checked

    def select_customer_price_list_grid_first_row(self):
        """
        Returning select customer price list grid first row
        Implementing logging for select customer price list grid first row functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select customer price list grid first row')
            self._sell_page.select_customer_price_list_grid_first_row()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select customer price list grid first row')
            return is_selected

    def click_issue_price_lists_button_with_cpl_approval(self):
        """
        Returning click issue price lists button with cpl approval
        Implementing logging for click issue price lists button with cpl approval functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click issue price lists button with cpl approval')
            self._sell_page.click_issue_price_lists_button_with_cpl_approval()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click issue price lists button with cpl approval')
            return is_clicked

    def select_destinations_checkbox(self):
        """
        Returning select destinations checkbox
        Implementing logging for select destinations checkbox functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select destinations checkbox')
            self._sell_page.select_destinations_checkbox()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select destinations checkbox')
            return is_selected

    def set_price_exception_grid_begin_date(self, previous_date, future_date, current_date):
        """
        Returning set price exception grid begin date
        Implementing logging for set price exception grid begin date functionality
        :param previous_date:
        :param future_date:
        :param current_date:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set price exception grid begin date')
            self._sell_page.set_price_exception_grid_begin_date(previous_date, future_date, current_date)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set price exception grid begin date')
            return is_set

    def set_reference_price_list_for_create_customer(self, item_name):
        """
        Returning set reference price list for for create customer
        Implement logging for set reference price list for for create customer functionality
        :param item_name:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set reference price list for for create customer')
            if item_name != "" and item_name is not None:
                self._sell_page.set_reference_price_list_for_create_customer(item_name)
                is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set reference price list for for create customer')
            return is_set

    def click_price_exception_grid_first_row_info_icon(self):
        """
        Returning click price exception grid first row info icon
        Implementing logging for click price exception grid first row info icon functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click price exception grid first row info icon')
            self._sell_page.click_price_exception_grid_first_row_info_icon()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click price exception grid first row info icon')
            return is_clicked

    def is_date_range_error_message_present(self):
        """
        Returning verify date range error message
        Implementing logging for verify date range error message functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: verify date range error message')
            return self._sell_page.is_date_range_error_message_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: verify date range error message')

    def select_customers_for_mypricelist(self, *customers):
        """
        Returning select customers for mypricelist
        Implement logging for select customers for mypricelist functionality
        :param customers:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select customers for mypricelist')
            self._sell_page.select_customers_for_mypricelist(customers)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select customers for mypricelist')
            return is_selected

    def select_countries_for_mypricelist(self, *customers):
        """
        Returning select countries for mypricelist
        Implement logging for select countries for mypricelist functionality
        :param customers:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select countries for mypricelist')
            self._sell_page.select_countries_for_mypricelist(customers)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select countries for mypricelist')
            return is_selected
