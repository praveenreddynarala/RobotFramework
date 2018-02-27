"""
Implementing System Admin UI page actions
Implementing Logging mechanism for System Admin page actions
"""

from selenium.common.exceptions import WebDriverException
from TestFramework.Libraries.logger import Logger
from TestFramework.Libraries.Pages.system_admin_page import SystemAdminPage


class SystemAdmin:
    """
    Returning switch to system admin
    Returning system admin page title
    Returning system admin dashboard tab status
    Returning users tab status
    Returning system tab status
    Returning select users tab
    Returning users tab header
    Returning select system tab
    Returning system tab header
    Returning select users tab
    Returning category status
    Returning configuration variables status
    Returning field alias status
    Returning select inline action item
    Returning click security profile button
    Returning click profile grid first row inline action button
    Returning is view edit profile inline action item present
    Returning is view edit profile popup loaded properly
    Returning close current pop up
    Returning click users grid first row inline action button
    Returning is carrier security inline action item present
    Returning is view edit user profile popup loaded properly
    Returning is carrier security popup loaded properly
    Returning get users grid first row user name
    Returning compare selected user name status
    Returning select users grid multiple row checkbox
    Returning click users grid bulk edit button
    Returning set bulk edit profile
    Returning set bulk edit status
    Returning set bulk edit reports to value
    Returning set bulk edit sales level
    Returning set bulk edit sales reports to value
    Returning click bulk edit undo reset button
    Returning click bulk edit cancel button
    Returning click bulk edit submit button
    Returning click users grid save changes button
    Returning is input field reset
    Returning click new profile button
    Returning set new profile name
    Returning set profile status
    Returning assign roles to profile
    Returning click view edit profile save button
    Returning filter profiles grid
    Returning get profiles grid row details
    Returning click new user button
    Returning set user name
    Returning set first name
    Returning set last name
    Returning set security profile
    Returning set user status
    Returning set reports to
    Returning set password
    Returning set confirm password
    Returning set email primary
    Returning click save and create new button
    Returning close create new user pop up
    Returning click edit user ok button
    Returning get users grid row details
    Returning set user name for search
    Returning click search button
    Returning click configuration variables button
    Returning set variable name
    Returning set configuration variables current value
    Returning click save changes button
    Returning filter users grid
    Returning select account security tab
    Returning move available accounts to destination
    Returning move all accounts to source
    Returning validate date format
    Returning validate currency format
    Returning get users grid modified date column value
    Returning get user profile modified value
    Returning get profile management grid modified date column value
    Returning close current tab
    Returning click category link
    Returning get categories grid modified date column value
    Returning get configuration variables grid modified date column value
    Returning click field alias link
    Returning get field alias grid modified date column value
    Returning click ftp site management link
    Returning get ftp site management grid last modified date column value
    Returning click server management link
    Returning get server management grid last modified date column value
    Returning get user name
    Returning get new profile name
    Returning set scope
    Returning get call type
    Returning get current value column value
    Returning get dial digit tab name
    Returning set value in current value column
    Returning close system admin window
    Returning set default value in current value column
    Returning assign level2 roles to profile
    Returning reset password
    Returning set user status in grid
    Returning set server name
    Returning click server management grid first row inline action button
    Returning set sql instance
    Returning click server details save button
    Returning get server management grid specific column value
    Returning filter server management grid
    Returning set server management grid settings
    Returning get all rows of specific column from server management grid
    Returning sort server management grid column
    Returning compare sorted data
    Returning get server management grid column names by order
    Returning drag server management grid column
    Returning compare grid column position after altering
    Returning clear all table filters
    Returning select inline action item with module name
    Returning is l2 roles section displayed
    Returning is role available under l2 roles
    Returning click users page search button
    Returning click select companies radio button
    Returning move available companies to destination
    Returning click select accounts radio button
    Returning set profile status for search
    Returning unassign level2 roles to profile
    Returning get sql instance
    Returning compare server management grid first row value
    Returning set physical server
    Returning get physical server
    Returning set cluster note
    Returning set agent user name
    Returning set agent password
    Returning set server status
    Returning set server in use
    Returning set ip address
    Returning move available first database item to destination
    Returning set security profile in grid
    Returning get password version from database
    Returning reset password from home
    Returning set user name on login page
    Returning click forgot password button
    Returning click forgot password submit button
    Returning close current window without navigating other window
    Returning set password expiration date from database
    Returning click new ftp site button
    Returning set value in site name column
    Returning get created new ftp site name
    Returning set value in site ip address column
    Returning set value in site user name column
    Returning set value in site password column
    Returning set value in site directory column
    Returning set value in site proxy session column
    Returning set ftp site for search
    Returning compare ftp site management grid first row value
    Returning click ftp site management grid first row checkbox
    Returning click ftp site delete button
    Returning set ftp site management grid settings
    Returning get all rows of specific column from ftp site management grid
    Returning sort ftp site management grid column
    Returning get ftp site management grid column names by order
    Returning drag ftp site management grid column
    Returning set field alias scope
    Returning set value in field alias column
    Returning get field alias name
    Returning compare field alias grid first row value
    Returning set field alias grid settings
    Returning get all rows of specific column from field alias grid
    Returning sort field alias grid column
    Returning get field alias column names by order
    Returning drag field alias grid column
    Returning click new category button for system admin
    Returning set new category application
    Returning set new category object
    Returning set new category type
    Returning set new category for system admin
    Returning get created new category from system admin
    Returning set new category abbreviation for system admin
    Returning set new category level
    Returning click new category save button
    Returning filter categories grid
    Returning compare categories grid first row value
    Returning set value in category column
    Returning click categories grid first row checkbox
    Returning click categories delete button
    Returning set categories grid settings
    Returning get all rows of specific column from categories grid
    Returning sort categories grid column
    Returning get categories grid column names by order
    Returning drag categories grid column
    Returning clear filter
    Returning compare configuration variables grid first row value
    Returning click export to excel button
    Returning filter configuration variables grid
    Returning set configuration variables grid settings
    Returning get all rows of specific column from configuration variables grid
    Returning get configuration variables grid column names by order
    Returning drag configuration variables grid column
    Returning compare configuration variables grid row count
    Returning sort configuration variables grid column
    Returning get label wise text
    Returning getlastactivitydate from database
    Returning get name of the user
    Returning get user first name
    Returning get user last name
    Returning clear multiselect kendo dropdown
    Returning create config variable preset dictionary
    Returning store preset config variable current value
    Returning get preset config variable current value
    Returning store preset config variable modified by
    Returning click first row info icon
    Returning verify system note for cplenablecurrencypreview
    Returning unassign assigned roles to unassigned role
    Returning update user status id
    Returning click all accounts radio button
    Returning click all companies radio button
    Returning verify system variable description
    Returning get extract delivery link path
    Returning set security profile grid settings
    Returning get all rows of specific column from categories grid
    Returning sort security profile grid column
    Returning get security profile grid specific column value
    Returning get security profile grid column names by order
    Returning drag security profile grid column
    Returning set users grid settings
    Returning get all rows of specific column from users grid
    Returning sort users grid column
    Returning get users grid specific column value
    Returning get users grid column names by order
    Returning drag users grid column
    Returning set application
    Returning set field alias column value
    Returning is field alias grid field name present
    Returning assign all level2 roles to profile
    Returning is l2 roles dection not displayed
    Returning unassign all level2 roles to profile
    Returning assign all level1 roles to profile
    Returning verify system note for cplpreviewdisplaywarnings
    Returning set name for search
    Returning set user status for search
    """
    ROBOT_LIBRARY_SCOPE = 'TEST SUITE'

    logger = Logger().get_logger('SystemAdmin')

    def __init__(self):
        self._system_admin_page = SystemAdminPage()

    def switch_to_system_admin(self):
        """
        Returning switch to system admin
        Implementing logging for switch to system admin functionality
        :return:
        """
        is_switched = None
        try:
            self.logger.info('Start: switch to system admin method')
            self._system_admin_page.switch_to_system_admin()
            is_switched = True
        except WebDriverException as exp:
            is_switched = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: switch to system admin method')
            return is_switched

    def get_system_admin_page_title(self):
        """
        Returning system admin page title
        Implementing logging for get system admin page title functionality
        :return: System Admin page title
        """
        try:
            self.logger.info('Start: get system admin page title method')
            return self._system_admin_page.get_system_admin_page_title()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get system admin page title method')

    def is_system_admin_dashboard_tab_present(self):
        """
        Returning system admin dashboard tab status
        Implementing logging for is system admin dashboard tab present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is system admin dashboard tab present method')
            return self._system_admin_page.is_system_admin_dashboard_tab_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is system admin dashboard tab present method')

    def is_users_tab_present(self):
        """
        Returning users tab status
        Implementing logging for is users tab present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is users tab present method')
            return self._system_admin_page.is_users_tab_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is users tab present method')

    def is_system_tab_present(self):
        """
        Returning system tab status
        Implementing logging for is system tab present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is system tab present method')
            return self._system_admin_page.is_system_tab_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is system tab present method')

    def select_users_tab(self):
        """
        Returning select users tab
        Implementing logging for select users tab functionality
        :return:
        """
        is_selected = None
        try:
            self.logger.info('Start: select users tab present method')
            self._system_admin_page.select_users_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select users tab present method')
            return is_selected

    def get_users_tab_header(self):
        """
        Returning users tab header
        Implementing logging for get users tab header functionality
        :return: Users tab header
        """
        try:
            self.logger.info('Start: get users tab header method')
            return self._system_admin_page.get_users_tab_header()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: get users tab header method')

    def select_system_tab(self):
        """
        Returning select system tab
        Implementing logging for select system tab functionality
        :return:
        """
        is_selected = None
        try:
            self.logger.info('Start: select system tab present method')
            self._system_admin_page.select_system_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select system tab present method')
            return is_selected

    def get_system_tab_header(self):
        """
        Returning system tab header
        Implementing logging for get system tab header functionality
        :return: System tab header
        """
        try:
            self.logger.info('Start: get system tab header method')
            return self._system_admin_page.get_system_tab_header()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: get system tab header method')

    def is_category_present(self):
        """
        Returning category status
        Implementing logging for is category present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is category present method')
            return self._system_admin_page.is_category_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: is category present method')

    def is_configuration_variables_present(self):
        """
        Returning configuration variables status
        Implementing logging for is configuration variables present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is configuration variables present method')
            return self._system_admin_page.is_configuration_variables_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: is configuration variables present method')

    def is_field_alias_present(self):
        """
        Returning field alis status
        Implementing logging for is filed alias present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is field alias present method')
            return self._system_admin_page.is_field_alias_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: is field alias present method')

    def select_inline_action_item(self, inline_action_item):
        """
        Returning select inline action item
        Implementing select inline action item functionality
        :param inline_action_item:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select inline action item')
            self._system_admin_page.select_inline_action_item(inline_action_item)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select inline action item')
            return is_selected

    def click_security_profile_button(self):
        """
        Returning click security profile button
        Implementing logging for click security profile button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click security profile button')
            self._system_admin_page.click_security_profile_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click security profile button')
            return is_clicked

    def click_profile_grid_first_row_inline_action_button(self):
        """
        Returning click profile grid first row inline action button
        Implementing logging for click profile grid first row inline action button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click profile grid first row inline action button')
            self._system_admin_page.click_profile_grid_first_row_inline_action_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click profile grid first row inline action button')
            return is_clicked

    def is_view_edit_profile_inline_action_item_present(self):
        """
        Returning is view edit profile inline action item present
        Implementing logging for is view edit profile inline action item present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is view edit profile inline action item present')
            return self._system_admin_page.is_view_edit_profile_inline_action_item_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: is view edit profile inline action item present')

    def is_view_edit_profile_popup_loaded_properly(self):
        """
        Returning is view edit profile popup loaded properly
        Implementing logging for is view edit profile popup loaded properly functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is view edit profile popup loaded properly')
            return self._system_admin_page.is_view_edit_profile_popup_loaded_properly()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: is view edit profile popup loaded properly')

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
            self._system_admin_page.close_current_pop_up(pop_up_name)
            is_closed = True
        except WebDriverException as exp:
            is_closed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: close current pop up')
            return is_closed

    def click_new_profile_button(self):
        """
        Returning click new profile button
        Implementing logging for click new profile button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click new profile button')
            self._system_admin_page.click_new_profile_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click new profile button')
            return is_clicked

    def set_new_profile_name(self, profile_name_prefix):
        """
        Returning set new profile name
        Implementing logging for set new profile name functionality
        :param profile_name_prefix:
        :return: profile_name
        """
        profile_name = None
        try:
            self.logger.info('Start: set new profile name')
            profile_name = self._system_admin_page.set_new_profile_name(profile_name_prefix)
        except WebDriverException as exp:
            profile_name = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set new profile name')
            return profile_name

    def get_new_profile_name(self):
        """
        Returning get new profile name
        Implementing logging for get new profile name functionality
        :return: profile_name
        """
        try:
            self.logger.info('Start: get new profile name')
            return self._system_admin_page.get_new_profile_name()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get new profile name')

    def set_profile_status(self, profile_status):
        """
        Returning set profile status
        Implementing logging for set profile status functionality
        :param profile_status:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set profile status')
            self._system_admin_page.set_profile_status(profile_status)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set profile status')
            return is_set

    def assign_roles_to_profile(self, *list_of_roles):
        """
        Returning assign roles to profile
        Implementing logging for assign roles to profile functionality
        :param list_of_roles:
        :return: True/False
        """
        is_assigned = None
        try:
            self.logger.info('Start: assign roles to profile')
            self._system_admin_page.assign_roles_to_profile(list_of_roles)
            is_assigned = True
        except WebDriverException as exp:
            is_assigned = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: assign roles to profile')
            return is_assigned

    def click_view_edit_profile_save_button(self):
        """
        Returning click view edit profile save button
        Implementing logging for click view edit profile save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click view edit profile save button')
            self._system_admin_page.click_view_edit_profile_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click view edit profile save button')
            return is_clicked

    def filter_profiles_grid(self, column_name, filter_item):
        """
        Returning filter profiles grid
        Implementing logging for filter profiles grid functionality
        :param column_name:
        :param filter_item:
        :return: True/False
        """
        is_filtered = None
        try:
            self.logger.info('Start: filter profiles grid')
            self._system_admin_page.filter_profiles_grid(column_name, filter_item)
            is_filtered = True
        except WebDriverException as exp:
            is_filtered = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: filter profiles grid')
            return is_filtered

    def get_profiles_grid_row_details(self):
        """
        Returning get profiles grid row details
        Implementing logging for get profiles grid row details functionality
        :return: profiles_grid_row_details
        """
        try:
            self.logger.info('Start: get profiles grid row details')
            return self._system_admin_page.get_profiles_grid_row_details()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: get profiles grid row details')

    def click_users_grid_first_row_inline_action_button(self):
        """
        Returning click users grid first row inline action button
        Implementing logging for click users grid first row inline action button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click users grid first row inline action button')
            self._system_admin_page.click_users_grid_first_row_inline_action_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click users grid first row inline action button')
            return is_clicked

    def is_carrier_security_inline_action_item_present(self):
        """
        Returning is carrier security inline action item present
        Implementing logging for is carrier security inline action item present functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is carrier security inline action item present')
            return self._system_admin_page.is_carrier_security_inline_action_item_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: is carrier security inline action item present')

    def is_view_edit_user_profile_popup_loaded_properly(self):
        """
        Returning is view edit user profile popup loaded properly
        Implementing logging for is view edit user profile popup loaded properly functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is view edit user profile popup loaded properly')
            return self._system_admin_page.is_view_edit_user_profile_popup_loaded_properly()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: is view edit user profile popup loaded properly')

    def is_carrier_security_popup_loaded_properly(self):
        """
        Returning is carrier security popup loaded properly
        Implementing logging for is carrier security popup loaded properly functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is carrier security popup loaded properly')
            return self._system_admin_page.is_carrier_security_popup_loaded_properly()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: is carrier security popup loaded properly')

    def select_users_grid_multiple_row_checkbox(self, number_of_rows):
        """
        Returning select users grid multiple row checkbox
        Implementing logging for select users grid multiple row checkbox functionality
        :param number_of_rows:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select users grid multiple row checkbox')
            self._system_admin_page.select_users_grid_multiple_row_checkbox(number_of_rows)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select users grid multiple row checkbox')
            return is_selected

    def click_users_grid_bulk_edit_button(self):
        """
        Returning click users grid bulk edit button
        Implementing logging for click users grid bulk edit button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click users grid bulk edit button')
            self._system_admin_page.click_users_grid_bulk_edit_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click users grid bulk edit button')
            return is_clicked

    def set_bulk_edit_profile(self, profile):
        """
        Returning set bulk edit profile
        Implementing logging for set bulk edit profile functionality
        :param profile:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set bulk edit profile')
            if profile != "":
                self._system_admin_page.set_bulk_edit_profile(profile)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set bulk edit profile')
            return is_set

    def set_bulk_edit_status(self, status):
        """
        Returning set bulk edit status
        Implementing logging for set bulk edit status functionality
        :param status:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set bulk edit status')
            if status != "":
                self._system_admin_page.set_bulk_edit_status(status)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set bulk edit status')
            return is_set

    def set_bulk_edit_reports_to_value(self, reports_to_value):
        """
        Returning set bulk edit reports to value
        Implementing logging for set bulk edit reports to value functionality
        :param reports_to_value:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set bulk edit reports to value')
            if reports_to_value != "":
                self._system_admin_page.set_bulk_edit_reports_to_value(reports_to_value)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set bulk edit reports to value')
            return is_set

    def set_bulk_edit_sales_level(self, sales_level):
        """
        Returning set bulk edit sales level
        Implementing logging for set bulk edit sales level functionality
        :param sales_level:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set bulk edit sales level')
            if sales_level != "":
                self._system_admin_page.set_bulk_edit_sales_level(sales_level)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set bulk edit sales level')
            return is_set

    def set_bulk_edit_sales_reports_to_value(self, sales_reports_to_value):
        """
        Returning set bulk edit sales reports to value
        Implementing logging for set bulk edit sales reports to value functionality
        :param sales_reports_to_value:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set bulk edit sales reports to value')
            if sales_reports_to_value != "":
                self._system_admin_page.set_bulk_edit_sales_reports_to_value(sales_reports_to_value)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set bulk edit sales reports to value')
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
            self._system_admin_page.click_bulk_edit_undo_reset_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click bulk edit undo reset button')
            return is_clicked

    def click_bulk_edit_cancel_button(self):
        """
        Returning click bulk edit cancel button
        Implementing logging for click bulk edit cancel button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click bulk edit cancel button')
            self._system_admin_page.click_bulk_edit_cancel_button()
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
            self._system_admin_page.click_bulk_edit_submit_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click bulk edit submit button')
            return is_clicked

    def click_users_grid_save_changes_button(self):
        """
        Returning click users grid save changes button
        Implementing logging for click users grid save changes button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click users grid save changes button')
            self._system_admin_page.click_users_grid_save_changes_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click users grid save changes button')
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
            is_reset = self._system_admin_page.is_input_field_reset(label_text)
        except WebDriverException as exp:
            is_reset = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is input field reset')
            return is_reset

    def compare_selected_user_name(self):
        """
        Returning compare selected user name status
        Implementing logging for compare selected user name functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: compare selected user name')
            return self._system_admin_page.compare_selected_user_name()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: compare selected user name')

    def click_new_user_button(self):
        """
        Returning click new user button
        Implementing logging for click new user button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click new user button')
            self._system_admin_page.click_new_user_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click new user button')
            return is_clicked

    def set_user_name(self, user_name_prefix):
        """
        Returning set user name
        Implementing logging for set user name functionality
        :param user_name_prefix:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set user name')
            self._system_admin_page.set_user_name(user_name_prefix)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set user name')
            return is_set

    def get_user_name(self):
        """
        Returning get user name
        Implementing logging for get user name functionality
        :return: user_name
        """
        try:
            self.logger.info('Start: get user name')
            return self._system_admin_page.get_user_name()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get user name')

    def set_first_name(self, first_name_prefix):
        """
        Returning set first name
        Implementing logging for set first name functionality
        :param first_name_prefix:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set first name')
            self._system_admin_page.set_first_name(first_name_prefix)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set first name')
            return is_set

    def set_last_name(self, last_name_prefix):
        """
        Returning set last name
        Implementing logging for set last name functionality
        :param last_name_prefix:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set last name')
            self._system_admin_page.set_last_name(last_name_prefix)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set last name')
            return is_set

    def set_security_profile(self, security_profile):
        """
        Returning set security profile
        Implementing logging for set security profile functionality
        :param security_profile:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set security profile')
            self._system_admin_page.set_security_profile(security_profile)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set security profile')
            return is_set

    def set_user_status(self, user_status):
        """
        Returning set user status
        Implementing logging for set user status functionality
        :param user_status:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set user status')
            self._system_admin_page.set_user_status(user_status)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set user status')
            return is_set

    def set_reports_to(self, name):
        """
        Returning set reports to
        Implementing logging for set reports to functionality
        :param name:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set reports to')
            self._system_admin_page.set_reports_to(name)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set reports to')
            return is_set

    def set_password(self, password):
        """
        Returning set password
        Implementing logging for set password functionality
        :param password:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set password')
            self._system_admin_page.set_password(password)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set password')
            return is_set

    def set_confirm_password(self, password):
        """
        Returning set confirm password
        Implementing logging for set confirm password functionality
        :param password:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set confirm password')
            self._system_admin_page.set_confirm_password(password)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set confirm password')
            return is_set

    def set_email_primary(self, email):
        """
        Returning set email primary
        Implementing logging for set email primary functionality
        :param email:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set email primary')
            self._system_admin_page.set_email_primary(email)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set email primary')
            return is_set

    def click_save_and_create_new_button(self):
        """
        Returning click save and create new button
        Implementing logging for click save and create new button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click save and create new button')
            self._system_admin_page.click_save_and_create_new_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click save and create new button')
            return is_clicked

    def close_create_new_user_pop_up(self):
        """
        Returning close create new user pop up
        Implementing logging for close create new user pop up functionality
        :return: True/False
        """
        is_closed = None
        try:
            self.logger.info('Start: close create new user pop up')
            self._system_admin_page.close_create_new_user_pop_up()
            is_closed = True
        except WebDriverException as exp:
            is_closed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: close create new user pop up')
            return is_closed

    def click_edit_user_ok_button(self):
        """
        Returning click edit user ok button
        Implementing logging for click edit user ok button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click edit user ok button')
            self._system_admin_page.click_edit_user_ok_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click edit user ok button')
            return is_clicked

    def get_users_grid_row_details(self):
        """
        Returning get users grid row details
        Implementing logging for get users grid row details functionality
        :return: users_grid_row_details
        """
        try:
            self.logger.info('Start: get users grid row details')
            return self._system_admin_page.get_users_grid_row_details()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get users grid row details')

    def set_user_name_for_search(self, user_name):
        """
        Returning set user name for search
        Implementing logging for set user name for search functionality
        :param user_name:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set user name for search')
            self._system_admin_page.set_user_name_for_search(user_name)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set user name for search')
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
            self._system_admin_page.click_search_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click search button')
            return is_clicked

    def click_configuration_variables_button(self):
        """
        Returning click configuration variables button
        Implementing logging for click configuration variables button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click configuration variables button')
            self._system_admin_page.click_configuration_variables_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click configuration variables button')
            return is_clicked

    def set_variable_name(self, variable_name):
        """
        Returning set variable name
        Implementing logging for set variable name functionality
        :param variable_name:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set variable name')
            self._system_admin_page.set_variable_name(variable_name)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set variable name')
            return is_set

    def set_configuration_variables_current_value(self, current_value):
        """
        Returning set configuration variables current value
        Implementing logging for set configuration variables current value functionality
        :param current_value:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set configuration variables current value')
            self._system_admin_page.set_configuration_variables_current_value(current_value)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set configuration variables current value')
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
            self._system_admin_page.click_save_changes_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click save changes button')
            return is_clicked

    def filter_users_grid(self, column_name, filter_item):
        """
        Returning filter users grid
        Implementing logging for filter users grid functionality
        :param column_name:
        :param filter_item:
        :return: True/False
        """
        is_filtered = None
        try:
            self.logger.info('Start: filter users grid')
            self._system_admin_page.filter_users_grid(column_name, filter_item)
            is_filtered = True
        except WebDriverException as exp:
            is_filtered = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: filter users grid')
            return is_filtered

    def select_account_security_tab(self):
        """
        Returning select account security tab
        Implementing logging for select account security tab functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select account security tab')
            self._system_admin_page.select_account_security_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select account security tab')
            return is_selected

    def move_available_accounts_to_destination(self, *account_list):
        """
        Returning move available accounts to destination
        Implementing logging for move available accounts to destination functionality
        :param account_list:
        :return: True/False
        """
        is_moved = None
        try:
            self.logger.info('Start: move available accounts to destination')
            self._system_admin_page.move_available_accounts_to_destination(account_list)
            is_moved = True
        except WebDriverException as exp:
            is_moved = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: move available accounts to destination')
            return is_moved

    def move_all_accounts_to_source(self):
        """
        Returning move all accounts to source
        Implementing logging for move all accounts to source functionality
        :return: True/False
        """
        is_moved = None
        try:
            self.logger.info('Start: move all accounts to source')
            self._system_admin_page.move_all_accounts_to_source()
            is_moved = True
        except WebDriverException as exp:
            is_moved = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: move all accounts to source')
            return is_moved

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
                status = self._system_admin_page.validate_date_format(actual_date, expected_date_format)
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
                status = self._system_admin_page.validate_currency_format(actual_value, expected_locale)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: validate currency format')
            return status

    def get_users_grid_modified_date_column_value(self):
        """
        Returning get users grid modified date column value
        Implementing logging for get users grid modified date column value functionality
        :return: modified_date column value
        """
        try:
            self.logger.info('Start: get users grid modified date column value')
            return self._system_admin_page.get_users_grid_modified_date_column_value()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get users grid modified date column value')

    def get_user_profile_modified_value(self):
        """
        Returning get user profile modified value
        Implementing logging for get user profile modified value functionality
        :return: modified value
        """
        try:
            self.logger.info('Start: get user profile modified value')
            return self._system_admin_page.get_user_profile_modified_value()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get user profile modified value')

    def get_profile_management_grid_modified_date_column_value(self):
        """
        Returning get profile management grid modified date column value
        Implementing logging for get profile management grid modified date column value functionality
        :return: modified_date column value
        """
        try:
            self.logger.info('Start: get profile management grid modified date column value')
            return self._system_admin_page.get_profile_management_grid_modified_date_column_value()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get profile management grid modified date column value')

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
            self._system_admin_page.close_current_tab(tab_name)
            is_closed = True
        except WebDriverException as exp:
            is_closed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: close current tab')
            return is_closed

    def click_category_link(self):
        """
        Returning click category link
        Implementing logging for click category link functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click category link')
            self._system_admin_page.click_category_link()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click category link')
            return is_clicked

    def get_categories_grid_modified_date_column_value(self):
        """
        Returning get categories grid modified date column value
        Implementing logging for get categories grid modified date column value functionality
        :return: modified_date column value
        """
        try:
            self.logger.info('Start: get categories grid modified date column value')
            return self._system_admin_page.get_categories_grid_modified_date_column_value()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get categories grid modified date column value')

    def get_configuration_variables_grid_modified_date_column_value(self):
        """
        Returning get configuration variables grid modified date column value
        Implementing logging for get configuration variables grid modified date column value functionality
        :return: modified_date column value
        """
        try:
            self.logger.info('Start: get configuration variables grid modified date column value')
            return self._system_admin_page.get_configuration_variables_grid_modified_date_column_value()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get configuration variables grid modified date column value')

    def click_field_alias_link(self):
        """
        Returning click field alias link
        Implementing logging for click field alias link functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click field alias link')
            self._system_admin_page.click_field_alias_link()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click field alias link')
            return is_clicked

    def get_field_alias_grid_modified_date_column_value(self):
        """
        Returning get field alias grid modified date column value
        Implementing logging for get field alias grid modified date column value functionality
        :return: modified_date column value
        """
        try:
            self.logger.info('Start: get field alias grid modified date column value')
            return self._system_admin_page.get_field_alias_grid_modified_date_column_value()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get field alias grid modified date column value')

    def click_ftp_site_management_link(self):
        """
        Returning click ftp site management link
        Implementing logging for click ftp site management link functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click ftp site management link')
            self._system_admin_page.click_ftp_site_management_link()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click ftp site management link')
            return is_clicked

    def get_ftp_site_management_grid_last_modified_date_column_value(self):
        """
        Returning get ftp site management grid last modified date column value
        Implementing logging for get ftp site management grid last modified date column value functionality
        :return: last_modified_date column value
        """
        try:
            self.logger.info('Start: get ftp site management grid last modified date column value')
            return self._system_admin_page.get_ftp_site_management_grid_last_modified_date_column_value()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get ftp site management grid last modified date column value')

    def click_server_management_link(self):
        """
        Returning click server management link
        Implementing logging for click server management link functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click server management link')
            self._system_admin_page.click_server_management_link()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click server management link')
            return is_clicked

    def get_server_management_grid_last_modified_date_column_value(self):
        """
        Returning get server management grid last modified date column value
        Implementing logging for get server management grid last modified date column value functionality
        :return: last_modified_date column value
        """
        try:
            self.logger.info('Start: get server management grid last modified date column value')
            return self._system_admin_page.get_server_management_grid_last_modified_date_column_value()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get server management grid last modified date column value')

    def set_scope(self, *scope):
        """
        Returning set scope
        Implementing logging for set scope functionality
        :param scope:
        :return:
        """
        is_set = None
        try:
            self.logger.info('Start: set scope')
            self._system_admin_page.set_scope(scope)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set scope')
            return is_set

    def get_current_value_column_value(self):
        """
        Returning get current value column value
        Implementing logging for get current value column value functionality
        :return:
        """
        try:
            self.logger.info('Start: get current value column value')
            return self._system_admin_page.get_current_value_column_value()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get current value column value')

    def get_call_type(self):
        """
        Returning get call type
        Implementing logging for get call type functionality
        :return:
        """
        try:
            self.logger.info('Start: get call type')
            return self._system_admin_page.get_call_type()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get call type')

    def get_dial_digit_tab_name(self, module):
        """
        Returning get dial digit tab name
        Implementing logging for get dial digit tab name functionality
        :param module:
        :return:
        """
        try:
            self.logger.info('Start: get dial digit tab name')
            return self._system_admin_page.get_dial_digit_tab_name(module)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get dial digit tab name')

    def set_value_in_current_value_column(self, column_value):
        """
        Returning set value in current value column
        Implementing logging for set value in current value column functionality
        :param column_value:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set value in current value column')
            self._system_admin_page.set_value_in_current_value_column(column_value)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set value in current value column')
            return is_set

    def close_system_admin_window(self):
        """
        Returning close system admin window
        Implementing logging for close system admin window functionality
        :return: True/False
        """
        is_closed = None
        try:
            self.logger.info('Start: close system admin window')
            self._system_admin_page.close_browser()
            self._system_admin_page.switch_to_previous_window()
            is_closed = True
        except WebDriverException as exp:
            is_closed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: close system admin window')
            return is_closed

    def set_default_value_in_current_value_column(self):
        """
        Returning set default value in current value column
        Implementing logging for set default value in current value column functionality
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set default value in current value column')
            self._system_admin_page.set_default_value_in_current_value_column()
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set default value in current value column')
            return is_set

    def assign_level2_roles_to_profile(self, *list_of_roles):
        """
        Returning assign level2 roles to profile
        Implementing logging for assign level2 roles to profile functionality
        :param list_of_roles:
        :return: True/False
        """
        is_assigned = None
        try:
            self.logger.info('Start: assign level2 roles to profile')
            self._system_admin_page.assign_level2_roles_to_profile(list_of_roles)
            is_assigned = True
        except WebDriverException as exp:
            is_assigned = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: assign level2 roles to profile')
            return is_assigned

    def reset_password(self, old_password, new_password):
        """
        Returning reset password
        Implementing logging for reset password functionality
        :param old_password:
        :param new_password:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: reset password')
            self._system_admin_page.reset_password(old_password, new_password)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: reset password')
            return is_set

    def set_user_status_in_grid(self, status):
        """
        Returning set user status in grid
        Implementing logging for set user status in grid functionality
        :param status:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set user status')
            self._system_admin_page.set_user_status_in_grid(status)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set user status')
            return is_set

    def set_server_name(self, server_name):
        """
        Returning set server name
        Implementing logging for set server name functionality
        :param server_name:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set server name')
            self._system_admin_page.set_server_name(server_name)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set server name')
            return is_set

    def click_server_management_grid_first_row_inline_action_button(self):
        """
        Returning click server management grid first row inline action button
        Implementing logging for click server management grid first row inline action button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click server management grid first row inline action button')
            self._system_admin_page.click_server_management_grid_first_row_inline_action_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click server management grid first row inline action button')
            return is_clicked

    def set_sql_instance(self, sql_instance_prefix, set_previous_value):
        """
        Returning set sql instance
        Implementing logging for set sql instance functionality
        :param sql_instance_prefix:
        :param set_previous_value:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set sql instance')
            self._system_admin_page.set_sql_instance(sql_instance_prefix, set_previous_value)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set sql instance')
            return is_set

    def click_server_details_save_button(self):
        """
        Returning click server details save button
        Implementing logging for click server details save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click server details save button')
            self._system_admin_page.click_server_details_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click server details save button')
            return is_clicked

    def get_server_management_grid_specific_column_value(self, column_name):
        """
        Returning get server management grid specific column value
        Implementing logging for get server management grid specific column value functionality
        :param column_name:
        :return: specific column value
        """
        try:
            self.logger.info('Start: get server management grid specific column value')
            return self._system_admin_page.get_server_management_grid_specific_column_value(column_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get server management grid specific column value')

    def filter_server_management_grid(self, column_name, filter_item):
        """
        Returning filter server management grid
        Implementing logging for filter server management grid functionality
        :param column_name:
        :param filter_item:
        :return: True/False
        """
        is_filtered = None
        try:
            self.logger.info('Start: filter server management grid')
            self._system_admin_page.filter_server_management_grid(column_name, filter_item)
            is_filtered = True
        except WebDriverException as exp:
            is_filtered = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: filter server management grid')
            return is_filtered

    def set_server_management_grid_settings(self, grid_settings):
        """
        Returning set server management grid settings
        Implementing logging for set server management grid settings functionality
        :param grid_settings:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set server management grid settings')
            self._system_admin_page.set_server_management_grid_settings(grid_settings)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set server management grid settings')
            return is_set

    def get_all_rows_of_specific_column_from_server_management_grid(self, column_name):
        """
        Returning get all rows of specific column from server management grid
        Implementing logging for get all rows of specific column from server management grid functionality
        :param column_name:
        :return: all_row_data
        """
        all_row_data = None
        try:
            self.logger.info('Start: get all rows of specific column from server management grid')
            all_row_data = self._system_admin_page.get_all_rows_of_specific_column_from_server_management_grid(column_name)
        except WebDriverException as exp:
            all_row_data = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get all rows of specific column from server management grid')
            return all_row_data

    def sort_server_management_grid_column(self, column_name, descending_order=False):
        """
        Returning sort server management grid column
        Implementing logging for sort server management grid column functionality
        :param column_name:
        :param descending_order:
        :return: True/False
        """
        is_sorted = None
        try:
            self.logger.info('Start: sort server management grid column')
            self._system_admin_page.sort_server_management_grid_column(column_name, descending_order)
            is_sorted = True
        except WebDriverException as exp:
            is_sorted = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: sort server management grid column')
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
            is_sorted = self._system_admin_page.compare_sorted_data(unsorted_data, descending_order)
        except WebDriverException as exp:
            is_sorted = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare sorted data')
            return is_sorted

    def get_server_management_grid_column_names_by_order(self):
        """
        Returning get server management grid column names by order
        Implementing logging for get server management grid column names by order functionality
        :return: column_name_list
        """
        column_name_list = None
        try:
            self.logger.info('Start: get server management grid column names by order')
            column_name_list = self._system_admin_page.get_server_management_grid_column_names_by_order()
        except WebDriverException as exp:
            column_name_list = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get server management grid column names by order')
            return column_name_list

    def drag_server_management_grid_column(self, source_column, destination_column):
        """
        Returning drag server management grid column
        Implementing logging for drag server management grid column functionality
        :param source_column:
        :param destination_column:
        :return: True/False
        """
        is_dragged = None
        try:
            self.logger.info('Start: drag server management grid column')
            self._system_admin_page.drag_server_management_grid_column(source_column, destination_column)
            is_dragged = True
        except WebDriverException as exp:
            is_dragged = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: drag server management grid column')
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
            is_compared = self._system_admin_page.compare_grid_column_position_after_altering(source_column, destination_column, column_name_list)
        except WebDriverException as exp:
            is_compared = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare grid column position after altering')
            return is_compared

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
            self._system_admin_page.clear_all_table_filters(column_name)
            is_cleared = True
        except WebDriverException as exp:
            is_cleared = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: clear all table filters')
            return is_cleared

    def select_inline_action_item_with_module_name(self, inline_action_item):
        """
        Returning select inline action item with module name
        Implementing select inline action item with module name functionality
        :param inline_action_item:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select inline action item with module name')
            self._system_admin_page.select_inline_action_item(inline_action_item, module_name = True)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select inline action item with module name')
            return is_selected

    def click_users_page_search_button(self):
        """
        Returning click users page search button
        Implementing logging for click users page search button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click users page search button')
            self._system_admin_page.click_users_page_search_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click users page search button')
            return is_clicked

    def click_select_companies_radio_button(self):
        """
        Returning click select companies radio button
        Implementing logging for click select companies radio button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click select companies radio button')
            self._system_admin_page.click_select_companies_radio_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click select companies radio button')
            return is_clicked

    def move_available_companies_to_destination(self, *company_list):
        """
        Returning move available companies to destination
        Implementing logging for move available companies to destination functionality
        :param company_list:
        :return: True/False
        """
        is_moved = None
        try:
            self.logger.info('Start: move available companies to destination')
            self._system_admin_page.move_available_companies_to_destination(company_list)
            is_moved = True
        except WebDriverException as exp:
            is_moved = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: move available companies to destination')
            return is_moved

    def click_select_accounts_radio_button(self):
        """
        Returning click select accounts radio button
        Implementing logging for click select accounts radio button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click select accounts radio button')
            self._system_admin_page.click_select_accounts_radio_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click select accounts radio button')
            return is_clicked

    def is_l2_roles_section_displayed(self):
        """
        Returning is l2 roles section displayed
        Implementing logging for is l2 roles section displayed functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is l2 roles section displayed')
            return self._system_admin_page.is_l2_roles_section_displayed()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is l2 roles section displayed')

    def is_role_available_under_l2_roles(self, role_name):
        """
        Returning is role available under l2 roles
        Implementing logging for is role available under l2 roles functionality
        :param role_name:
        :return: True/False
        """
        try:
            self.logger.info('Start: is role available under l2 roles')
            return self._system_admin_page.is_role_available_under_l2_roles(role_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is role available under l2 roles')

    def set_profile_status_for_search(self, profile_status):
        """
        Returning set profile status for search
        Implementing logging for set profile status for search functionality
        :param profile_status:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set profile status for search')
            self._system_admin_page.set_profile_status_for_search(profile_status)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set profile status for search')
            return is_set

    def unassign_level2_roles_to_profile(self, *list_of_roles):
        """
        Returning unassign level2 roles to profile
        Implementing logging for unassign level2 roles to profile functionality
        :param list_of_roles:
        :return: True/False
        """
        is_assigned = None
        try:
            self.logger.info('Start: unassign level2 roles to profile')
            self._system_admin_page.unassign_level2_roles_to_profile(list_of_roles)
            is_assigned = True
        except WebDriverException as exp:
            is_assigned = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: unassign level2 roles to profile')
            return is_assigned

    def get_sql_instance(self):
        """
        Returning get sql instance
        Implementing logging for get sql instance functionality
        :return: sql_instance
        """
        try:
            self.logger.info('Start: get sql instance')
            return self._system_admin_page.get_sql_instance()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get sql instance')

    def compare_server_management_grid_first_row_value(self, column_name, value_to_compare):
        """
        Returning compare server management grid first row value
        Implementing logging for compare server management grid first row value functionality
        :param column_name:
        :param value_to_compare
        :return: True/False
        """
        try:
            self.logger.info('Start: compare server management grid first row value')
            return self._system_admin_page.compare_server_management_grid_first_row_value(column_name, value_to_compare)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: compare server management grid first row value')

    def set_physical_server(self, physical_server_prefix, set_previous_value):
        """
        Returning set physical server
        Implementing logging for set physical server functionality
        :param physical_server_prefix:
        :param set_previous_value:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set sql instance')
            self._system_admin_page.set_physical_server(physical_server_prefix, set_previous_value)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set sql instance')
            return is_set

    def get_physical_server(self):
        """
        Returning get physical server
        Implementing logging for get physical server functionality
        :return: physical_server
        """
        try:
            self.logger.info('Start: get physical server')
            return self._system_admin_page.get_physical_server()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get physical server')

    def set_cluster_note(self, cluster_note):
        """
        Returning set cluster note
        Implementing logging for set cluster note functionality
        :param cluster_note:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set cluster note')
            self._system_admin_page.set_cluster_note(cluster_note)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set cluster note')
            return is_set

    def set_agent_user_name(self, agent_user_name):
        """
        Returning set agent user name
        Implementing logging for set agent user name functionality
        :param agent_user_name:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set agent user name')
            self._system_admin_page.set_agent_user_name(agent_user_name)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set agent user name')
            return is_set

    def set_agent_password(self, agent_password):
        """
        Returning set agent password
        Implementing logging for set agent password functionality
        :param agent_password:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set agent password')
            self._system_admin_page.set_agent_password(agent_password)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set agent password')
            return is_set

    def set_server_status(self, server_status):
        """
        Returning set server status
        Implementing logging for set server status functionality
        :param server_status:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set server status')
            self._system_admin_page.set_server_status(server_status)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set server status')
            return is_set

    def set_server_in_use(self, server_in_use_status):
        """
        Returning set server in use
        Implementing logging for set server in use functionality
        :param server_in_use_status:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set server in use')
            self._system_admin_page.set_server_in_use(server_in_use_status)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set server in use')
            return is_set

    def set_ip_address(self, ip_address):
        """
        Returning set ip address
        Implementing logging for set ip address functionality
        :param ip_address:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set ip address')
            self._system_admin_page.set_ip_address(ip_address)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set ip address')
            return is_set

    def move_available_first_database_item_to_destination(self):
        """
        Returning move available first database item to destination
        Implementing logging for move available first database item to destination functionality
        :return: True/False
        """
        is_moved = None
        try:
            self.logger.info('Start: move available first database item to destination')
            self._system_admin_page.move_available_first_database_item_to_destination()
            is_moved = True
        except WebDriverException as exp:
            is_moved = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: move available first database item to destination')
            return is_moved

    def set_security_profile_in_grid(self, security_profile):
        """
        Returning set security profile in grid
        Implementing logging for set security profile in grid functionality
        :param security_profile:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set security profile')
            self._system_admin_page.set_security_profile_in_grid(security_profile)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set security profile')
            return is_set

    def get_password_version(self, created_user, server, database, user, password):
        """
        Returning get password version from database
        Implementing logging for get password version functionality
        :param created_user:
        :param server:
        :param database:
        :param user:
        :param password:
        :return: password version
        """
        try:
            self.logger.info('Start: get password version from database')
            return self._system_admin_page.get_password_version(created_user, server, database, user, password)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get password version from database')

    def reset_password_from_home(self, old_password, new_password):
        """
        Returning reset password from home
        Implementing logging for reset password from home functionality
        :param old_password:
        :param new_password:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: reset password from home')
            self._system_admin_page.reset_password_from_home(old_password, new_password)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: reset password from home')
            return is_set

    def set_user_name_on_login_page(self, user_name):
        """
        Returning set user name on login page
        Implementing logging for set user name on login page functionality
        :param user_name:
        :return:
        """
        is_set = None
        try:
            self.logger.info('Start: set user name on login page')
            self._system_admin_page.set_user_name_on_login_page(user_name)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set user name on login page')
            return is_set

    def click_forgot_password_button(self):
        """
        Returning click forgot password button
        Implementing logging for click forgot password button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click forgot password button')
            self._system_admin_page.click_forgot_password_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click forgot password button')
            return is_clicked

    def click_forgot_password_submit_button(self):
        """
        Returning click forgot password submit button
        Implementing logging for click forgot password submit button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click forgot password submit button')
            self._system_admin_page.click_forgot_password_submit_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click forgot password submit button')
            return is_clicked

    def close_current_window_without_navigating_other_window(self):
        """
        Returning close current window without navigating other window
        Implementing logging for close current window without navigating other window functionality
        :return: True/False
        """
        is_closed = None
        try:
            self.logger.info('Start: close current window without navigating other window')
            self._system_admin_page.close_browser()
            is_closed = True
        except WebDriverException as exp:
            is_closed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: close current window without navigating other window')
            return is_closed

    def set_password_expiration_date(self, created_user, server, database, user, password):
        """
        Returning set password expiration date from database
        Implementing logging for set password expiration date from database functionality
        :param created_user:
        :param server:
        :param database:
        :param user:
        :param password:
        :return:
        """
        is_set = None
        try:
            self.logger.info('Start: set password expiration date from database')
            self._system_admin_page.set_password_expiration_date(created_user, server, database, user, password)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set password expiration date from database')
            return  is_set

    def click_new_ftp_site_button(self):
        """
        Returning click new ftp site button
        Implementing logging for click new ftp site button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click new ftp site button')
            self._system_admin_page.click_new_ftp_site_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click new ftp site button')
            return is_clicked

    def set_value_in_site_name_column(self, site_name_prefix, set_value_to_edit, column_name, value_to_compare):
        """
        Returning set value in site name column
        Implement logging for set value in site name column functionality
        :param site_name_prefix:
        :param set_value_to_edit:
        :param column_name:
        :param value_to_compare:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set value in site name column')
            self._system_admin_page.set_value_in_site_name_column(site_name_prefix, set_value_to_edit, column_name, value_to_compare)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set value in site name column')
            return is_set

    def get_created_new_ftp_site_name(self):
        """
        Returning get created new ftp site name
        Implementing logging for get created new ftp site name functionality
        :return: created new ftp site name
        """
        try:
            self.logger.info('Start: get created new ftp site name')
            return self._system_admin_page.get_created_new_ftp_site_name()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get created new ftp site name')

    def set_value_in_site_ip_address_column(self, site_ip_address_prefix):
        """
        Returning set value in site ip address column
        Implement logging for set value in site ip address column functionality
        :param site_ip_address_prefix:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set value in site ip address column')
            self._system_admin_page.set_value_in_site_ip_address_column(site_ip_address_prefix)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set value in site ip address column')
            return is_set

    def set_value_in_site_user_name_column(self, site_user_name_prefix):
        """
        Returning set value in site user name column
        Implement logging for set value in site user name column functionality
        :param site_user_name_prefix:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set value in site user name column')
            self._system_admin_page.set_value_in_site_user_name_column(site_user_name_prefix)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set value in site user name column')
            return is_set

    def set_value_in_site_password_column(self, site_password_prefix):
        """
        Returning set value in site password column
        Implement logging for set value in site password column functionality
        :param site_password_prefix:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set value in site password column')
            self._system_admin_page.set_value_in_site_password_column(site_password_prefix)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set value in site password column')
            return is_set

    def set_value_in_site_directory_column(self, site_directory_prefix):
        """
        Returning set value in site directory column
        Implement logging for set value in site directory column functionality
        :param site_directory_prefix:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set value in site directory column')
            self._system_admin_page.set_value_in_site_directory_column(site_directory_prefix)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set value in site directory column')
            return is_set

    def set_value_in_site_proxy_session_column(self, site_proxy_session_prefix):
        """
        Returning set value in site proxy session column
        Implement logging for set value in site proxy session column functionality
        :param site_proxy_session_prefix:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set value in site proxy session column')
            self._system_admin_page.set_value_in_site_proxy_session_column(site_proxy_session_prefix)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set value in site proxy session column')
            return is_set

    def set_ftp_site_for_search(self, ftp_site_name):
        """
        Returning set ftp site for search
        Implementing logging for set ftp site for search functionality
        :param ftp_site_name:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set ftp site for search')
            self._system_admin_page.set_ftp_site_for_search(ftp_site_name)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set ftp site for search')
            return is_set

    def compare_ftp_site_management_grid_first_row_value(self, column_name, value_to_compare):
        """
        Returning compare ftp site management grid first row value
        Implementing logging for compare ftp site management grid first row value functionality
        :param column_name:
        :param value_to_compare
        :return: True/False
        """
        try:
            self.logger.info('Start: compare ftp site management grid first row value')
            return self._system_admin_page.compare_ftp_site_management_grid_first_row_value(column_name, value_to_compare)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: compare ftp site management grid first row value')

    def click_ftp_site_management_grid_row_check_box(self, site_name):
        """
        Returning click ftp site management grid row checkbox
        Implementing logging for click ftp site management grid row checkbox functionality
        :param site_name:
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click ftp site management grid row checkbox')
            self._system_admin_page.click_ftp_site_management_grid_row_check_box(site_name)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click ftp site management grid row checkbox')
            return is_clicked

    def click_ftp_site_delete_button(self):
        """
        Returning click ftp site delete button
        Implementing logging for click ftp site delete button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click ftp site delete button')
            self._system_admin_page.click_ftp_site_delete_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click ftp site delete button')
            return is_clicked

    def set_ftp_site_management_grid_settings(self, grid_settings):
        """
        Returning set ftp site management grid settings
        Implementing logging for set ftp site management grid settings functionality
        :param grid_settings:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set ftp site management grid settings')
            self._system_admin_page.set_ftp_site_management_grid_settings(grid_settings)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set ftp site management grid settings')
            return is_set

    def get_all_rows_of_specific_column_from_ftp_site_management_grid(self, column_name):
        """
        Returning get all rows of specific column from ftp site management grid
        Implementing logging for get all rows of specific column from ftp site management grid functionality
        :param column_name:
        :return: all_row_data
        """
        all_row_data = None
        try:
            self.logger.info('Start: get all rows of specific column from ftp site management grid')
            all_row_data = self._system_admin_page.get_all_rows_of_specific_column_from_ftp_site_management_grid(column_name)
        except WebDriverException as exp:
            all_row_data = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get all rows of specific column from ftp site management grid')
            return all_row_data

    def sort_ftp_site_management_grid_column(self, column_name, descending_order=False):
        """
        Returning sort ftp site management grid column
        Implementing logging for sort ftp site management grid column functionality
        :param column_name:
        :param descending_order:
        :return: True/False
        """
        is_sorted = None
        try:
            self.logger.info('Start: sort ftp site management grid column')
            self._system_admin_page.sort_ftp_site_management_grid_column(column_name, descending_order)
            is_sorted = True
        except WebDriverException as exp:
            is_sorted = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: sort ftp site management grid column')
            return is_sorted

    def get_ftp_site_management_grid_column_names_by_order(self):
        """
        Returning get ftp site management grid column names by order
        Implementing logging for get ftp site management grid column names by order functionality
        :return: column_name_list
        """
        column_name_list = None
        try:
            self.logger.info('Start: get ftp site management grid column names by order')
            column_name_list = self._system_admin_page.get_ftp_site_management_grid_column_names_by_order()
        except WebDriverException as exp:
            column_name_list = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get ftp site management grid column names by order')
            return column_name_list

    def drag_ftp_site_management_grid_column(self, source_column, destination_column):
        """
        Returning drag ftp site management grid column
        Implementing logging for drag ftp site management grid column functionality
        :param source_column:
        :param destination_column:
        :return: True/False
        """
        is_dragged = None
        try:
            self.logger.info('Start: drag ftp site management grid column')
            self._system_admin_page.drag_ftp_site_management_grid_column(source_column, destination_column)
            is_dragged = True
        except WebDriverException as exp:
            is_dragged = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: drag ftp site management grid column')
            return is_dragged

    def set_field_alias_scope(self, scope):
        """
        Returning set field alias scope
        Implementing logging for set field alias scope functionality
        :param scope:
        :return:
        """
        is_set = None
        try:
            self.logger.info('Start: set field alias scope')
            self._system_admin_page.set_field_alias_scope(scope)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set field alias scope')
            return is_set

    def set_value_in_field_alias_column(self, site_name_prefix, set_value_for_edit):
        """
        Returning set value in field alias column
        Implement logging for set value in field alias column functionality
        :param site_name_prefix:
        :param set_value_for_edit:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set value in field alias column')
            self._system_admin_page.set_value_in_field_alias_column(site_name_prefix, set_value_for_edit)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set value in field alias column')
            return is_set

    def get_field_alias_name(self):
        """
        Returning get field alias name
        Implementing logging for get field alias name functionality
        :return: created new ftp site name
        """
        try:
            self.logger.info('Start: get field alias name')
            return self._system_admin_page.get_field_alias_name()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get field alias name')

    def compare_field_alias_grid_first_row_value(self, column_name, value_to_compare):
        """
        Returning compare field alias grid first row value
        Implementing logging for compare field alias grid first row value functionality
        :param column_name:
        :param value_to_compare
        :return: True/False
        """
        try:
            self.logger.info('Start: compare field alias grid first row value')
            return self._system_admin_page.compare_field_alias_grid_first_row_value(column_name, value_to_compare)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: compare field alias grid first row value')

    def set_field_alias_grid_settings(self, grid_settings):
        """
        Returning set field alias grid settings
        Implementing logging for set field alias grid settings functionality
        :param grid_settings:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set field alias grid settings')
            self._system_admin_page.set_field_alias_grid_settings(grid_settings)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set field alias grid settings')
            return is_set

    def get_all_rows_of_specific_column_from_field_alias_grid(self, column_name):
        """
        Returning get all rows of specific column from field alias grid
        Implementing logging for get all rows of specific column from field alias grid functionality
        :param column_name:
        :return: all_row_data
        """
        all_row_data = None
        try:
            self.logger.info('Start: get all rows of specific column from field alias grid')
            all_row_data = self._system_admin_page.get_all_rows_of_specific_column_from_field_alias_grid(column_name)
        except WebDriverException as exp:
            all_row_data = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get all rows of specific column from field alias grid')
            return all_row_data

    def sort_field_alias_grid_column(self, column_name, descending_order=False):
        """
        Returning sort field alias grid column
        Implementing logging for sort field alias grid column functionality
        :param column_name:
        :param descending_order:
        :return: True/False
        """
        is_sorted = None
        try:
            self.logger.info('Start: sort field alias grid column')
            self._system_admin_page.sort_field_alias_grid_column(column_name, descending_order)
            is_sorted = True
        except WebDriverException as exp:
            is_sorted = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: sort field alias grid column')
            return is_sorted

    def get_field_alias_grid_column_names_by_order(self):
        """
        Returning get field alias column names by order
        Implementing logging for get field alias grid column names by order functionality
        :return: column_name_list
        """
        column_name_list = None
        try:
            self.logger.info('Start: get field alias grid column names by order')
            column_name_list = self._system_admin_page.get_field_alias_grid_column_names_by_order()
        except WebDriverException as exp:
            column_name_list = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get field alias grid column names by order')
            return column_name_list

    def drag_field_alias_grid_column(self, source_column, destination_column):
        """
        Returning drag field alias grid column
        Implementing logging for drag field alias grid column functionality
        :param source_column:
        :param destination_column:
        :return: True/False
        """
        is_dragged = None
        try:
            self.logger.info('Start: drag field alias grid column')
            self._system_admin_page.drag_field_alias_grid_column(source_column, destination_column)
            is_dragged = True
        except WebDriverException as exp:
            is_dragged = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: drag field alias grid column')
            return is_dragged

    def click_new_category_button_for_system_admin(self):
        """
        Returning click new category button for system admin
        Implementing logging for click new category button for system admin functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click new category button for system admin')
            self._system_admin_page.click_new_category_button_for_system_admin()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click new category button for system admin')
            return is_clicked

    def set_new_category_application(self, application):
        """
        Returning set new category application
        Implementing logging for set new category application functionality
        :param application:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set new category application')
            if application != "":
                self._system_admin_page.set_new_category_application(application)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set new category application')
            return is_set

    def set_new_category_object(self, object_name):
        """
        Returning set new category object
        Implementing logging for set new category object functionality
        :param object_name:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set new category object')
            if object_name != "":
                self._system_admin_page.set_new_category_object(object_name)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set new category object')
            return is_set

    def set_new_category_type(self, category_type):
        """
        Returning set new category type
        Implementing logging for set new category type functionality
        :param category_type:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set new category type')
            if category_type != "":
                self._system_admin_page.set_new_category_type(category_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set new category type')
            return is_set

    def set_new_category_for_system_admin(self, new_category_prefix):
        """
        Returning set new category for system admin
        Implement logging for set new category for system admin functionality
        :param new_category_prefix:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set new category for system admin')
            self._system_admin_page.set_new_category_for_system_admin(new_category_prefix)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set new category for system admin')
            return is_set

    def get_created_new_category_from_system_admin(self):
        """
        Returning get created new category from system admin
        Implementing logging for get created new category from system admin functionality
        :return: created new ftp site name
        """
        try:
            self.logger.info('Start: get created new category from system admin')
            return self._system_admin_page.get_created_new_category_from_system_admin()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get created new category from system admin')

    def set_new_category_abbreviation_for_system_admin(self, new_category_prefix):
        """
        Returning set new category abbreviation for system admin
        Implement logging for set new category abbreviation for system admin functionality
        :param new_category_prefix:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set new category abbreviation for system admin')
            self._system_admin_page.set_new_category_abbreviation_for_system_admin(new_category_prefix)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set new category abbreviation for system admin')
            return is_set

    def set_new_category_level(self, level_name):
        """
        Returning set new category level
        Implementing logging for set new category level functionality
        :param level_name:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set new category level')
            self._system_admin_page.set_new_category_level(level_name)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set new category level')
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
            self._system_admin_page.click_new_category_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click new category save button')
            return is_clicked

    def filter_categories_grid(self, column_name, filter_item):
        """
        Returning filter categories grid
        Implementing logging for filter categories grid functionality
        :param column_name:
        :param filter_item:
        :return: True/False
        """
        is_filtered = None
        try:
            self.logger.info('Start: filter categories grid')
            self._system_admin_page.filter_categories_grid(column_name, filter_item)
            is_filtered = True
        except WebDriverException as exp:
            is_filtered = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: filter categoriest grid')
            return is_filtered

    def compare_categories_grid_first_row_value(self, column_name, value_to_compare):
        """
        Returning compare categories grid first row value
        Implementing logging for compare categories grid first row value functionality
        :param column_name:
        :param value_to_compare
        :return: True/False
        """
        try:
            self.logger.info('Start: compare categories grid first row value')
            return self._system_admin_page.compare_categories_grid_first_row_value(column_name, value_to_compare)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: compare categories grid first row value')

    def set_value_in_category_column(self, category_prefix, set_value_to_edit, column_name, value_to_compare):
        """
        Returning set value in category column
        Implement logging for set value in category column functionality
        :param category_prefix:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set value in category column')
            self._system_admin_page.set_value_in_category_column(category_prefix, set_value_to_edit, column_name, value_to_compare)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set value in category column')
            return is_set

    def click_categories_grid_row_check_box(self, category_name):
        """
        Returning click categories grid row checkbox
        Implementing logging for click categories grid row checkbox functionality
        :param category_name:
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click categories grid first row checkbox')
            self._system_admin_page.click_categories_grid_row_check_box(category_name)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click categories grid first row checkbox')
            return is_clicked

    def click_categories_delete_button(self):
        """
        Returning click categories delete button
        Implementing logging for click categories delete button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click categories delete button')
            self._system_admin_page.click_categories_delete_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click categories delete button')
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
            self._system_admin_page.set_categories_grid_settings(grid_settings)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set categories grid settings')
            return is_set

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
            all_row_data = self._system_admin_page.get_all_rows_of_specific_column_from_categories_grid(column_name)
        except WebDriverException as exp:
            all_row_data = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get all rows of specific column from categories grid')
            return all_row_data

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
            self._system_admin_page.sort_categories_grid_column(column_name, descending_order)
            is_sorted = True
        except WebDriverException as exp:
            is_sorted = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: sort categories grid column')
            return is_sorted

    def get_categories_grid_column_names_by_order(self):
        """
        Returning get categories grid column names by order
        Implementing logging for get categories grid column names by order functionality
        :return: column_name_list
        """
        column_name_list = None
        try:
            self.logger.info('Start: get categories grid column names by order')
            column_name_list = self._system_admin_page.get_categories_grid_column_names_by_order()
        except WebDriverException as exp:
            column_name_list = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get categories grid column names by order')
            return column_name_list

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
            self._system_admin_page.drag_categories_grid_column(source_column, destination_column)
            is_dragged = True
        except WebDriverException as exp:
            is_dragged = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: drag categories grid column')
            return is_dragged

    def clear_filter_for_system_admin(self, column_name):
        """
        Returning clear filter
        Implementing logging for clear filter functionality
        :param column_name:
        :return: True/False
        """
        is_cleared = None
        try:
            self.logger.info('Start: clear filter')
            self._system_admin_page.clear_filter(column_name)
            is_cleared = True
        except WebDriverException as exp:
            is_cleared = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: clear filter')
            return is_cleared

    def compare_configuration_variables_grid_first_row_value(self, column_name, value_to_compare):
        """
        Returning compare configuration variables grid first row value
        Implementing logging for compare configuration variables grid first row value functionality
        :param column_name:
        :param value_to_compare
        :return: True/False
        """
        try:
            self.logger.info('Start: compare configuration variables grid first row value')
            return self._system_admin_page.compare_configuration_variables_grid_first_row_value(column_name, value_to_compare)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: compare configuration variables grid first row value')

    def click_export_to_excel_button(self):
        """
        Returning click export to excel button
        Implementing logging for click export to excel button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click export to excel button')
            self._system_admin_page.click_export_to_excel_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click export to excel button')
            return is_clicked

    def filter_configuration_variables_grid(self, column_name, filter_item):
        """
        Returning filter configuration variables grid
        Implementing logging for filter configuration variables grid functionality
        :param column_name:
        :param filter_item:
        :return: True/False
        """
        is_filtered = None
        try:
            self.logger.info('Start: filter configuration variables grid')
            self._system_admin_page.filter_configuration_variables_grid(column_name, filter_item)
            is_filtered = True
        except WebDriverException as exp:
            is_filtered = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: filter configuration variables grid')
            return is_filtered

    def set_configuration_variables_grid_settings(self, grid_settings):
        """
        Returning set configuration variables grid settings
        Implementing logging for set configuration variables grid settings functionality
        :param grid_settings:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set configuration variables grid settings')
            self._system_admin_page.set_configuration_variables_grid_settings(grid_settings)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set configuration variables grid settings')
            return is_set

    def get_all_rows_of_specific_column_from_configuration_variables_grid(self, column_name):
        """
        Returning get all rows of specific column from configuration variables grid
        Implementing logging for get all rows of specific column from configuration variables grid functionality
        :param column_name:
        :return: all_row_data
        """
        all_row_data = None
        try:
            self.logger.info('Start: get all rows of specific column from configuration variables grid')
            all_row_data = self._system_admin_page.get_all_rows_of_specific_column_from_configuration_variables_grid(column_name)
        except WebDriverException as exp:
            all_row_data = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get all rows of specific column from configuration variables grid')
            return all_row_data

    def get_configuration_variables_grid_column_names_by_order(self):
        """
        Returning get configuration variables grid column names by order
        Implementing logging for get configuration variables grid column names by order functionality
        :return: column_name_list
        """
        column_name_list = None
        try:
            self.logger.info('Start: get configuration variables grid column names by order')
            column_name_list = self._system_admin_page.get_configuration_variables_grid_column_names_by_order()
        except WebDriverException as exp:
            column_name_list = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get configuration variables grid column names by order')
            return column_name_list

    def drag_configuration_variables_grid_column(self, source_column, destination_column):
        """
        Returning drag configuration variables grid column
        Implementing logging for drag configuration variables grid column functionality
        :param source_column:
        :param destination_column:
        :return: True/False
        """
        is_dragged = None
        try:
            self.logger.info('Start: drag configuration variables grid column')
            self._system_admin_page.drag_configuration_variables_grid_column(source_column, destination_column)
            is_dragged = True
        except WebDriverException as exp:
            is_dragged = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: drag configuration variables grid column')
            return is_dragged

    def compare_configuration_variables_grid_row_count(self, value_to_compare):
        """
        Returning compare configuration variables grid row count
        Implementing logging for compare configuration variables grid row count functionality
        :param value_to_compare
        :return: True/False
        """
        try:
            self.logger.info('Start: compare configuration variables grid row count')
            return self._system_admin_page.compare_configuration_variables_grid_row_count(value_to_compare)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
        finally:
            self.logger.info('End: compare configuration variables grid row count')

    def sort_configuration_variables_grid_column(self, column_name, descending_order=False):
        """
        Returning sort configuration variables grid column
        Implementing logging for sort configuration variables grid column functionality
        :param column_name:
        :param descending_order:
        :return: True/False
        """
        is_sorted = None
        try:
            self.logger.info('Start: sort configuration variables grid column')
            self._system_admin_page.sort_configuration_variables_grid_column(column_name, descending_order)
            is_sorted = True
        except WebDriverException as exp:
            is_sorted = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: sort configuration variables grid column')
            return is_sorted

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
            text = self._system_admin_page.get_label_wise_text(label_name)
        except WebDriverException as exp:
            text = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get label wise text')
            return text

    def get_lastactivitydate(self, created_user, server, database, user, password):
        """
        Returning getlastactivitydate from database
        Implementing logging for get lastactivitydate functionality
        :param created_user:
        :param server:
        :param database:
        :param user:
        :param password:
        :return: password version
        """
        try:
            self.logger.info('Start: get lastactivitydate from database')
            return self._system_admin_page.get_lastactivitydate(created_user, server, database, user, password)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get lastactivitydate from database')

    def get_name_of_the_user(self):
        """
        Returning get name of the user
        Implementing logging for get name of the user functionality
        :return: name_of_the_user
        """
        try:
            self.logger.info('Start: get name of the user')
            return self._system_admin_page.get_name_of_the_user()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get name of the user')

    def get_user_first_name(self):
        """
        Returning get user first name
        Implementing logging for get user first name functionality
        :return: user first name
        """
        try:
            self.logger.info('Start: get user first name')
            return self._system_admin_page.get_user_first_name()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get user first name')

    def get_user_last_name(self):
        """
        Returning get user last name
        Implementing logging for get user last name functionality
        :return: user last name
        """
        try:
            self.logger.info('Start: get user last name')
            return self._system_admin_page.get_user_last_name()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get user last name')

    def clear_multiselect_kendo_dropdown(self, kendo_dropdown_name):
        """
        Returning clear multiselect kendo dropdown
        Implementing logging for clear multiselect kendo dropdown functionality
        :param kendo_dropdown_name:
        :return: True/False
        """
        is_created = None
        try:
            self.logger.info('Start: clear multiselect kendo dropdown')
            self._system_admin_page.clear_multiselect_kendo_dropdown(kendo_dropdown_name)
            is_created = True
        except WebDriverException as exp:
            is_created = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: clear multiselect kendo dropdown')
            return is_created

    def create_config_variable_preset_dictionary(self):
        """
        Returning create config variable preset dictionary
        Implementing logging for create config variable preset dictionary functionality
        :return: True/False
        """
        is_created = None
        try:
            self.logger.info('Start: create config variable preset dictionary')
            self._system_admin_page.create_config_variable_preset_dictionary()
            is_created = True
        except WebDriverException as exp:
            is_created = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: create config variable preset dictionary')
            return is_created

    def store_preset_config_variable_current_value(self, variable_name):
        """
        Returning store preset config variable current value
        Implementing logging for store preset config variable current value functionality
        :param variable_name:
        :return: current_value
        """
        current_value = "-1"
        try:
            self.logger.info('Start: store preset config variable current value')
            current_value = self._system_admin_page.store_preset_config_variable_current_value(variable_name)
        except WebDriverException as exp:
            current_value = "-1"
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: store preset config variable current value')
            return current_value

    def get_preset_config_variable_current_value(self, variable_name):
        """
        Returning get preset config variable current value
        Implementing logging for get preset config variable current value functionality
        :param variable_name:
        :return: current_value
        """
        current_value = "-1"
        try:
            self.logger.info('Start: get preset config variable current value')
            current_value = self._system_admin_page.get_preset_config_variable_current_value(variable_name)
        except:
            try:
                current_value = self._system_admin_page.get_default_value_column_value()
            except:
                current_value = "-1"
                raise
        finally:
            self.logger.info('End: get preset config variable current value')
            return current_value

    def store_preset_config_variable_modified_by(self, variable_name):
        """
        Returning store preset config variable modified by
        Implementing logging for store preset config variable modified by functionality
        :param variable_name:
        :return: modified_by
        """
        modified_by = None
        try:
            self.logger.info('Start: store preset config variable modified by')
            modified_by = self._system_admin_page.store_preset_config_variable_modified_by(variable_name)
        except WebDriverException as exp:
            modified_by = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: store preset config variable modified by')
            return modified_by

    def click_first_row_info_icon(self):
        """
        Returning click first row info icon
        Implementing logging for click first row info icon functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click first row info icon')
            self._system_admin_page.click_first_row_info_icon()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click first row info icon')
            return is_clicked

    def verify_system_note_for_cplenablecurrencypreview(self):
        """
        Returning verify system note for cplenablecurrencypreview
        Implementing logging for verify system note for cplenablecurrencypreview functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: verify system note for cplenablecurrencypreview')
            return self._system_admin_page.verify_system_note_for_cplenablecurrencypreview()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: verify system note for cplenablecurrencypreview')

    def unassign_assigned_roles_to_unassigned_role(self, *list_of_roles):
        """
        Returning unassign assigned roles to unassigned role
        Implementing logging for unassign assigned roles to unassigned role functionality
        :param list_of_roles:
        :return: True/False
        """
        is_assigned = None
        try:
            self.logger.info('Start: unassign assigned roles to unassigned role')
            self._system_admin_page.unassign_assigned_roles_to_unassigned_role(list_of_roles)
            is_assigned = True
        except WebDriverException as exp:
            is_assigned = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: unassign assigned roles to unassigned role')
            return is_assigned

    def update_user_status_id(self, server, database, user, password, user_name, status_id):
        """
        Returning update user status id
        Implementing logging update user status id functionality
        :param server:
        :param database:
        :param user:
        :param password:
        :return:
        """
        updated = None
        try:
            self.logger.info('Start: update user status id')
            self._system_admin_page.update_user_status_id(server, database, user, password, user_name, status_id)
            updated = True
        except WebDriverException as exp:
            updated = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: update user status id')
            return updated

    def get_label_wise_text_from_server_setting_management_page(self, label_name, is_dropdown):
        """
        Returning get label wise text from server setting management page
        Implementing logging for get label wise text from server setting management page functionality
        :param label_name:
        :param is_dropdown:
        :return: text
        """
        text = None
        try:
            self.logger.info('Start: get label wise text from server setting management page')
            text = self._system_admin_page.get_label_wise_text_from_server_setting_management_page(label_name, is_dropdown)
        except WebDriverException as exp:
            text = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get label wise text from server setting management page')
            return text

    def get_available_database_first_item(self):
        """
        Returning get available database first item
        Implementing logging for get available database first item functionality
        :return: text
        """
        text = None
        try:
            self.logger.info('Start: get available database first item')
            text = self._system_admin_page.get_available_database_first_item()
        except WebDriverException as exp:
            text = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get available database first item')
            return text

    def unassign_assigned_database(self, *item_name_list):
        """
        Returning unassign assigned roles to unassigned role
        Implementing logging for unassign assigned roles to unassigned role functionality
        :param item_name:
        :return: True/False
        """
        is_assigned = None
        try:
            self.logger.info('Start: unassign assigned roles to unassigned role')
            self._system_admin_page.unassign_assigned_database(item_name_list)
            is_assigned = True
        except WebDriverException as exp:
            is_assigned = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: unassign assigned roles to unassigned role')
            return is_assigned

    def get_field_alias_grid_specific_column_value(self, column_name):
        """
        Returning get field alias grid specific column value
        Implementing logging for get field alias grid specific column value functionality
        :param column_name:
        :return: column value
        """
        try:
            self.logger.info('Start: get field alias grid specific column value')
            return self._system_admin_page.get_field_alias_grid_specific_column_value(column_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get field alias grid specific column value')

    def click_profile_grid_row_inline_action_button(self, profile_name):
        """
        Returning click profile grid row inline action button
        Implementing logging for click profile grid row inline action button functionality
        :param profile_name:
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click profile grid row inline action button')
            self._system_admin_page.click_profile_grid_row_inline_action_button(profile_name)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click profile grid row inline action button')
            return is_clicked

    def click_users_grid_row_inline_action_button(self, user_name):
        """
        Returning click users grid row inline action button
        Implementing logging for click users grid row inline action button functionality
        :param user_name:
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click users grid row inline action button')
            self._system_admin_page.click_users_grid_row_inline_action_button(user_name)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click users grid row inline action button')
            return is_clicked

    def click_all_accounts_radio_button(self):
        """
        Returning click all accounts radio button
        Implementing logging for click all accounts radio button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click all accounts radio button')
            self._system_admin_page.click_all_accounts_radio_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click all accounts radio button')
            return is_clicked

    def click_all_companies_radio_button(self):
        """
        Returning click all companies radio button
        Implementing logging for click all companies radio button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click all companies radio button')
            self._system_admin_page.click_all_companies_radio_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click all companies radio button')
            return is_clicked

    def verify_system_variable_description(self, description):
        """
        Returning verify system variable description
        Implementing logging for verify system variable description functionality
        :param description:
        :return: True/False
        """
        try:
            self.logger.info('Start: verify system variable description')
            return self._system_admin_page.verify_system_variable_description(description)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: verify system variable description')

    def get_extract_delivery_link_path(self):
        """
        Returning get extract delivery link path
        Implementing logging for get extract delivery link path functionality
        :return: extract_path
        """
        extract_path = None
        try:
            self.logger.info('Start: get extract delivery link path')
            extract_path = self._system_admin_page.get_extract_delivery_link_path()
        except WebDriverException as exp:
            extract_path = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get extract delivery link path')
            return extract_path

    def set_security_profile_grid_settings(self, grid_settings):
        """
        Returning set security profile grid settings
        Implementing logging for set security profile grid settings functionality
        :param grid_settings:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set security profile grid settings')
            self._system_admin_page.set_security_profile_grid_settings(grid_settings)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set security profile grid settings')
            return is_set

    def get_all_rows_of_specific_column_from_security_profile_grid(self, column_name):
        """
        Returning get all rows of specific column from security profile grid
        Implementing logging for get all rows of specific column from security profile grid functionality
        :param column_name:
        :return: all_row_data
        """
        all_row_data = None
        try:
            self.logger.info('Start: get all rows of specific column from security profile grid')
            all_row_data = self._system_admin_page.get_all_rows_of_specific_column_from_security_profile_grid(column_name)
        except WebDriverException as exp:
            all_row_data = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get all rows of specific column from security profile grid')
            return all_row_data

    def sort_security_profile_grid_column(self, column_name, descending_order=False):
        """
        Returning sort security profile grid column
        Implementing logging for sort security profile grid column functionality
        :param column_name:
        :param descending_order:
        :return: True/False
        """
        is_sorted = None
        try:
            self.logger.info('Start: sort security profile grid column')
            self._system_admin_page.sort_security_profile_grid_column(column_name, descending_order)
            is_sorted = True
        except WebDriverException as exp:
            is_sorted = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: sort security profile grid column')
            return is_sorted

    def get_security_profile_grid_specific_column_value(self, column_name):
        """
        Returning get security profile grid specific column value
        Implementing logging for get security profile grid specific column value functionality
        :param column_name:
        :return: column_value
        """
        column_value = None
        try:
            self.logger.info('Start: get security profile grid specific column value')
            column_value = self._system_admin_page.get_security_profile_grid_specific_column_value(column_name)
        except WebDriverException as exp:
            column_value = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get security profile grid specific column value')
            return column_value

    def get_security_profile_grid_column_names_by_order(self):
        """
        Returning get security profile grid column names by order
        Implementing logging for get security profile grid column names by order functionality
        :return: column_name_list
        """
        column_name_list = None
        try:
            self.logger.info('Start: get security profile grid column names by order')
            column_name_list = self._system_admin_page.get_security_profile_grid_column_names_by_order()
        except WebDriverException as exp:
            column_name_list = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get security profile grid column names by order')
            return column_name_list

    def drag_security_profile_grid_column(self, source_column, destination_column):
        """
        Returning drag security profile grid column
        Implementing logging for drag security profile grid column functionality
        :param source_column:
        :param destination_column:
        :return: True/False
        """
        is_dragged = None
        try:
            self.logger.info('Start: drag security profile grid column')
            self._system_admin_page.drag_security_profile_grid_column(source_column, destination_column)
            is_dragged = True
        except WebDriverException as exp:
            is_dragged = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: drag security profile grid column')
            return is_dragged

    def set_users_grid_settings(self, grid_settings):
        """
        Returning set users grid settings
        Implementing logging for set users grid settings functionality
        :param grid_settings:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set users grid settings')
            self._system_admin_page.set_users_grid_settings(grid_settings)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set users grid settings')
            return is_set

    def get_all_rows_of_specific_column_from_users_grid(self, column_name):
        """
        Returning get all rows of specific column from users grid
        Implementing logging for get all rows of specific column from users grid functionality
        :param column_name:
        :return: all_row_data
        """
        all_row_data = None
        try:
            self.logger.info('Start: get all rows of specific column from users grid')
            all_row_data = self._system_admin_page.get_all_rows_of_specific_column_from_users_grid(column_name)
        except WebDriverException as exp:
            all_row_data = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get all rows of specific column from users grid')
            return all_row_data

    def sort_users_grid_column(self, column_name, descending_order=False):
        """
        Returning sort users grid column
        Implementing logging for sort users grid column functionality
        :param column_name:
        :param descending_order:
        :return: True/False
        """
        is_sorted = None
        try:
            self.logger.info('Start: sort users grid column')
            self._system_admin_page.sort_users_grid_column(column_name, descending_order)
            is_sorted = True
        except WebDriverException as exp:
            is_sorted = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: sort users grid column')
            return is_sorted

    def get_users_grid_specific_column_value(self, column_name):
        """
        Returning get users grid specific column value
        Implementing logging for get users grid specific column value functionality
        :param column_name:
        :return: column_value
        """
        column_value = None
        try:
            self.logger.info('Start: get users grid specific column value')
            column_value = self._system_admin_page.get_users_grid_specific_column_value(column_name)
        except WebDriverException as exp:
            column_value = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get users grid specific column value')
            return column_value

    def get_users_grid_column_names_by_order(self):
        """
        Returning get users grid column names by order
        Implementing logging for get users grid column names by order functionality
        :return: column_name_list
        """
        column_name_list = None
        try:
            self.logger.info('Start: get users grid column names by order')
            column_name_list = self._system_admin_page.get_users_grid_column_names_by_order()
        except WebDriverException as exp:
            column_name_list = []
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get users grid column names by order')
            return column_name_list

    def drag_users_grid_column(self, source_column, destination_column):
        """
        Returning drag users grid column
        Implementing logging for drag users grid column functionality
        :param source_column:
        :param destination_column:
        :return: True/False
        """
        is_dragged = None
        try:
            self.logger.info('Start: drag users grid column')
            self._system_admin_page.drag_users_grid_column(source_column, destination_column)
            is_dragged = True
        except WebDriverException as exp:
            is_dragged = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: drag users grid column')
            return is_dragged

    def set_application(self, application):
        """
        Returning set application
        Implementing logging for set application functionality
        :param application:
        :return:
        """
        is_set = None
        try:
            self.logger.info('Start: set application')
            self._system_admin_page.set_application(application)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set application')
            return is_set

    def set_field_alias_column_value(self, column_value, column_name):
        """
        Returning set field alias column value
        Implementing logging for set field alias column value functionality
        :param column_value:
        :param column_name:
        :return:
        """
        is_set = None
        try:
            self.logger.info('Start: set field alias column value')
            self._system_admin_page.set_field_alias_column_value(column_value, column_name)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set field alias column value')
            return is_set

    def is_field_alias_grid_field_name_present(self, field_name):
        """
        Returning is field alias grid field name present
        Implementing logging for is field alias grid field name present functionality
        :param field_name:
        :return: is_present
        """
        is_present = None
        try:
            self.logger.info('Start: is field alias grid field name present')
            is_present = self._system_admin_page.is_field_alias_grid_field_name_present(field_name)
        except WebDriverException as exp:
            is_present = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is field alias grid field name present')
            return is_present

    def assign_all_level2_roles_to_profile(self):
        """
        Returning assign all level2 roles to profile
        Implementing logging for assign all level2 roles to profile functionality
        :return: True/False
        """
        is_assigned = None
        try:
            self.logger.info('Start: assign all level2 roles to profile')
            self._system_admin_page.assign_all_level2_roles_to_profile()
            is_assigned = True
        except WebDriverException as exp:
            is_assigned = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: assign all level2 roles to profile')
            return is_assigned

    def is_l2_roles_section_not_displayed(self):
        """
        Returning is l2 roles dection not displayed
        Implementing logging for is l2 roles dection not displayed functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is l2 roles dection not displayed')
            return self._system_admin_page.is_l2_roles_section_not_displayed()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is l2 roles dection not displayed')

    def unassign_all_level2_roles_to_profile(self):
        """
        Returning unassign all level2 roles to profile
        Implementing logging for unassign all level2 roles to profile functionality
        :return: True/False
        """
        is_assigned = None
        try:
            self.logger.info('Start: unassign all level2 roles to profile')
            self._system_admin_page.unassign_all_level2_roles_to_profile()
            is_assigned = True
        except WebDriverException as exp:
            is_assigned = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: unassign all level2 roles to profile')
            return is_assigned

    def assign_all_level1_roles_to_profile(self):
        """
        Returning assign all level1 roles to profile
        Implementing logging for assign all level1 roles to profile functionality
        :return: True/False
        """
        is_assigned = None
        try:
            self.logger.info('Start: assign all level1 roles to profile')
            self._system_admin_page.assign_all_level1_roles_to_profile()
            is_assigned = True
        except WebDriverException as exp:
            is_assigned = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: assign all level1 roles to profile')
            return is_assigned

    def verify_system_note_for_cplpreviewdisplaywarnings(self):
        """
        Returning verify system note for cplpreviewdisplaywarnings
        Implementing logging for verify system note for cplpreviewdisplaywarnings functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: verify system note for cplpreviewdisplaywarnings')
            return self._system_admin_page.verify_system_note_for_cplpreviewdisplaywarnings()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: verify system note for cplpreviewdisplaywarnings')

    def set_user_status_for_search(self, user_status):
        """
        Returning set user status for search
        Implementing logging for set user status for search functionality
        :param user_status:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set user status for search')
            self._system_admin_page.set_user_status_for_search(user_status)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set user status for search')
            return is_set

    def set_name_for_search(self, first_name, last_name):
        """
        Returning set name for search
        Implementing logging for set name for search functionality
        :param first_name,last_name:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set name for search')
            self._system_admin_page.set_name_for_search(first_name, last_name)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set set name for search')
            return is_set
