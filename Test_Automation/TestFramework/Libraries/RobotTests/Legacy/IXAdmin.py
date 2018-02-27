"""
Implementing iXAdmin UI page actions
Implementing Logging mechanism for iXAdmin UI page actions
"""

from selenium.common.exceptions import WebDriverException
from TestFramework.Libraries.logger import Logger
from TestFramework.Libraries.Pages.Legacy.ixadmin_page import IXAdminPage


class IXAdmin:
    """
    Returning switch to iXAdmin
    Returning click config management submenu
    Returning set scope
    Returning is manualaccrualenbld configuration variable not available
    Returning click exit button
    Returning click go button
    Returning close ixadmin window
    Returning click list frame go button
    Returning click profile submenu
    Returning select profile item
    Returning select roles tab
    Returning set application
    Returning is role present
    Returning select role delete checkbox
    Returning click delete button
    Returning click add new roles button
    Returning select role add checkbox
    Returning click add role save button
    Returning is checktablelock configuration variable available
    Returning is checktablelock configuration variable available with the default value 1
    Returning click field alias submenu
    Returning click field alias go button
    Returning is field alias save button displayed
    Returning is field alias cancel button displayed
    Returning click field alias save button
    Returning click field alias cancel button
    Returning get field alias grid first row field alias value
    Returning set field alias grid first row field alias value
    Returning select multiple role checkboxes to delete
    Returning select multiple role checkboxes to add
    """
    ROBOT_LIBRARY_SCOPE = 'TEST SUITE'

    logger = Logger().get_logger('IXAdmin')

    def __init__(self):
        self._ixadmin_page = IXAdminPage()

    def switch_to_ixadmin(self):
        """
        Returning switch to iXAdmin
        Implementing logging for switch to iXAdmin functionality
        :return: True/False
        """
        is_switched = None
        try:
            self.logger.info('Start: switch to iXAdmin method')
            self._ixadmin_page.switch_to_ixadmin()
            is_switched = True
        except WebDriverException as exp:
            is_switched = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: switch to iXAdmin method')
            return is_switched

    def click_config_management_submenu(self):
        """
        Returning click config management submenu
        Implementing logging for click config management submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click config management submenu')
            self._ixadmin_page.click_config_management_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click config management submenu')
            return is_clicked

    def set_scope(self, item):
        """
        Returning set scope
        Implementing logging for set scope functionality
        :param item:
        :return: True/False
        """
        status = None
        try:
            self.logger.info('Start: set scope')
            self._ixadmin_page.set_scope(item)
            status = True
        except WebDriverException as exp:
            status = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set scope')
            return status

    def is_manualaccrualenbld_configuration_variable_not_available(self):
        """
        Returning is manualaccrualenbld configuration variable not available
        Implementing logging for is manualaccrualenbld configuration variable not available functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is manualaccrualenbld configuration variable not available')
            return self._ixadmin_page.is_manualaccrualenbld_configuration_variable_not_available()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is manualaccrualenbld configuration variable not available')

    def click_exit_button(self):
        """
        Returning click exit button
        Implementing logging for click exit button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click exit button')
            self._ixadmin_page.click_exit_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click exit button')
            return is_clicked

    def click_go_button(self):
        """
        Returning click go button
        Implementing logging for click go button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click go button')
            self._ixadmin_page.click_go_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click go button')
            return is_clicked

    def close_ixadmin_window(self):
        """
        Returning close ixadmin window
        Implementing logging for close ixadmin window functionality
        :return: True/False
        """
        is_closed = None
        try:
            self.logger.info('Start: close ixadmin window')
            self._ixadmin_page.close_browser()
            self._ixadmin_page.switch_to_default_window()
            is_closed = True
        except WebDriverException as exp:
            is_closed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: close ixadmin window')
            return is_closed

    def click_list_frame_go_button(self):
        """
        Returning click list frame go button
        Implementing logging for click list frame go button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click list frame go button')
            self._ixadmin_page.click_list_frame_go_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click list frame go button')
            return is_clicked

    def click_profile_submenu(self):
        """
        Returning click profile submenu
        Implementing logging for click profile submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click profile submenu')
            self._ixadmin_page.click_profile_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click profile submenu')
            return is_clicked

    def select_profile_item(self, profile_item_name):
        """
        Returning select profile item
        Implementing logging for select profile item functionality
        :param profile_item_name:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select profile item')
            self._ixadmin_page.select_profile_item(profile_item_name)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select profile item')
            return is_selected

    def select_roles_tab(self):
        """
        Returning select roles tab
        Implementing logging for select roles tab functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select roles tab')
            self._ixadmin_page.select_roles_tab()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select roles tab')
            return is_selected

    def set_application(self, application):
        """
        Returning set application
        Implementing logging for set application functionality
        :param application:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set application')
            self._ixadmin_page.set_application(application)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set application')
            return is_set

    def is_role_present(self, role_name):
        """
        Returning is role present
        Implementing logging for is role present functionality
        :param role_name:
        :return: True/False
        """
        try:
            self.logger.info('Start: is role present')
            return self._ixadmin_page.is_role_present(role_name)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is role present')

    def select_role_delete_checkbox(self, role_name):
        """
        Returning select role delete checkbox
        Implementing logging for select role delete checkbox functionality
        :param role_name:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select role delete checkbox')
            self._ixadmin_page.select_role_delete_checkbox(role_name)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select role delete checkbox')
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
            self._ixadmin_page.click_delete_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click delete button')
            return is_clicked

    def click_add_new_roles_button(self):
        """
        Returning click add new roles button
        Implementing logging for click add new roles button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click add new roles button')
            self._ixadmin_page.click_add_new_roles_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click add new roles button')
            return is_clicked

    def select_role_add_checkbox(self, role_name):
        """
        Returning select role add checkbox
        Implementing logging for select role add checkbox functionality
        :param role_name:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select role add checkbox')
            self._ixadmin_page.select_role_add_checkbox(role_name)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select role add checkbox')
            return is_selected

    def click_add_role_save_button(self):
        """
        Returning click add role save button
        Implementing logging for click add role save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click add role save button')
            self._ixadmin_page.click_add_role_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click add role save button')
            return is_clicked

    def is_checktablelock_configuration_variable_available(self):
        """
        Returning is checktablelock configuration variable available
        Implementing logging for is checktablelock configuration variable available functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is checktablelock configuration variable available')
            return self._ixadmin_page.is_checktablelock_configuration_variable_available()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is checktablelock configuration variable available')

    def is_checktablelock_configuration_variable_available_with_the_default_value_1(self):
        """
        Returning is checktablelock configuration variable available with the default value 1
        Implementing logging for is checktablelock configuration variable available with the default value 1 functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is checktablelock configuration variable available with the default value 1')
            return self._ixadmin_page.is_checktablelock_configuration_variable_available_with_the_default_value_1()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is checktablelock configuration variable available with the default value 1')

    def click_field_alias_submenu(self):
        """
        Returning click field alias submenu
        Implementing logging for click field alias submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click field alias submenu')
            self._ixadmin_page.click_field_alias_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click field alias submenu')
            return is_clicked

    def click_field_alias_go_button(self):
        """
        Returning click field alias go button
        Implementing logging for click field alias go button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click field alias go button')
            self._ixadmin_page.click_field_alias_go_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click field alias go button')
            return is_clicked

    def is_field_alias_save_button_displayed(self):
        """
        Returning is field alias save button displayed
        Implementing logging for is field alias save button displayed functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is field alias save button displayed')
            return self._ixadmin_page.is_field_alias_save_button_displayed()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is field alias save button displayed')

    def is_field_alias_cancel_button_displayed(self):
        """
        Returning is field alias cancel button displayed
        Implementing logging for is field alias cancel button displayed functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is field alias cancel button displayed')
            return self._ixadmin_page.is_field_alias_cancel_button_displayed()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is field alias cancel button displayed')

    def click_field_alias_save_button(self):
        """
        Returning click field alias save button
        Implementing logging for click field alias save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click field alias save button')
            is_clicked = self._ixadmin_page.click_field_alias_save_button()
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click field alias save button')
            return is_clicked

    def click_field_alias_cancel_button(self):
        """
        Returning click field alias cancel button
        Implementing logging for click field alias cancel button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click field alias cancel button')
            self._ixadmin_page.click_field_alias_cancel_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click field alias cancel button')
            return is_clicked

    def get_field_alias_grid_first_row_field_alias_value(self):
        """
        Returning get field alias grid first row field alias value
        Implementing logging for get field alias grid first row field alias value functionality
        :return: field_alias_value
        """
        field_alias_value = None
        try:
            self.logger.info('Start: get field alias grid first row field alias value')
            field_alias_value = self._ixadmin_page.get_field_alias_grid_first_row_field_alias_value()
        except WebDriverException as exp:
            field_alias_value = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get field alias grid first row field alias value')
            return field_alias_value

    def set_field_alias_grid_first_row_field_alias_value(self, field_alias_value):
        """
        Returning set field alias grid first row field alias value
        Implementing logging for set field alias grid first row field alias value functionality
        :param field_alias_value:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set field alias grid first row field alias value')
            self._ixadmin_page.set_field_alias_grid_first_row_field_alias_value(field_alias_value)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set field alias grid first row field alias value')
            return is_set

    def select_multiple_role_checkboxes_to_delete(self, *list_of_roles_id):
        """
        Returning select multiple role checkboxes to delete
        Implementing logging for select multiple role checkboxes to delete functionality
        :param list_of_roles_id:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select multiple role checkboxes to delete')
            self._ixadmin_page.select_multiple_role_checkboxes_to_delete(list_of_roles_id)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select multiple role checkboxe to delete')
            return is_selected

    def select_multiple_role_checkboxes_to_add(self, *list_of_roles_id):
        """
        Returning select multiple role checkboxes to add
        Implementing logging for select multiple role checkboxes to add functionality
        :param list_of_roles_id:
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select multiple role checkboxes to add')
            self._ixadmin_page.select_multiple_role_checkboxes_to_add(list_of_roles_id)
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select multiple role checkboxe to add')
            return is_selected
