"""Implementing iXAdmin screen page objects"""

from TestFramework.Libraries.Pages.base_page import BasePage
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC
import time

class IXAdminPage(BasePage):
    """
    Switch to iXAdmin function
    Click config management submenu function
    Set scope function
    Check manualaccrualenbld configuration variable availability function
    Click exit button function
    Click go button function
    Click list frame go button function
    Click profile submenu function
    Select profile item function
    Select roles tab function
    Set application function
    Is role present function
    Select role delete checkbox function
    Click delete button function
    Click add new roles button function
    Select role add checkbox function
    Click add role save button function
    Is checktablelock configuration variable available function
    Is checktablelock configuration variable available with the default value 1 function
    Click field alias submenu function
    Click field alias go button function
    Is field alias save button displayed function
    Is field alias cancel button displayed function
    Click field alias save button function
    Click field alias cancel button function
    Get field alias grid first row field alias value function
    Set field alias grid first row field alias value function
    Select multiple role checkboxes to delete function
    Select multiple role checkboxes to add function
    """
    # Start: ixAdmin page locators
    detail_frame_locator = (By.NAME, "Detail")
    header_frame_locator = (By.NAME, "Header")
    list_frame_locator = (By.NAME, "List")
    config_menu_locator = (By.ID, "mConfigLabel")
    admin_menu_locator = (By.ID, "mAdminLabel")
    config_management_submenu_js_function = "smConfig_Click(0,'smConfig0');"
    profile_submenu_js_function = "smAdmin_Click(5,'smAdmin5');"
    scope_dropdown_arrow_locator = (By.ID, "rScope_Scope")
    configure_management_title = (By.ID, "lgx_DetailTitle")
    exit_button_locator = (By.ID, "mLogoutLabel")
    go_button_locator = (By.CLASS_NAME, "lgxGoButton")
    manualaccrualenbld_configuration_variable_locator = (By.XPATH, "//span[contains(text(), 'ManualAccrualEnbld')]")
    checktablelock_configuration_variable_locator = (By.XPATH, "//span[contains(text(), 'CheckTableLock ')]")
    field_alias_submenu_js_function = "smAdmin_Click(3,'smAdmin3');"
    # End: ixAdmin page locators

    # Start: Developers only page locators
    roles_tab_locator = (By.ID, "rTab_tabRole")
    application_dropdown_locator = (By.ID, "rStatus_ApplicationID")
    delete_button_locator = (By.ID, "rButtons_BDelete")
    add_new_roles_button_locator = (By.ID, "rLink_NewRoles")
    add_role_save_button_locator = (By.ID, "Save")
    # End: Developers only page locators

    # Start: Field alias page locators
    display_field_alias_frame_locator = (By.NAME, "DisplayFieldAlias")
    field_alias_go_button_locator = (By.ID, "btnGo")
    save_button_locator = (By.ID, "btnSave")
    cancel_button_locator = (By.ID, "btnCancel")
    field_alias_grid_first_row_inputbox_locator = (By.ID, "RadGrid1_ctl00_ctl04_TextBox1")
    data_save_success_message_locator = (By.XPATH, "//div[text()='Data saved Successfully.']")
    # End: Field alias page locators

    def switch_to_ixadmin(self):
        """
        Implementing switch to iXAdmin functionality
        :return:
        """
        self.switch_to_window()
        self.accept_ssl_certificate()

    def click_config_management_submenu(self):
        """
        Implementing click config management submenu functionality
        :return:
        """
        self.switch_to_frame(self.header_frame_locator)
        self.select_submenu(self.config_menu_locator, self.config_management_submenu_js_function, script_executor=True)
        self.wait_for_ajax_spinner_load()
        self.switch_to_default_content()

    def set_scope(self, scope_item):
        """
        Implementing set scope functionality
        :param scope_item:
        :return:
        """
        self.switch_to_frame(self.detail_frame_locator)
        self.click_element(self.scope_dropdown_arrow_locator)
        dropdown_item_locator = (By.XPATH, "//option[text()='%s']" % scope_item)
        self.click_element(dropdown_item_locator)
        self.click_element(self.configure_management_title)
        self.switch_to_default_content()

    def is_manualaccrualenbld_configuration_variable_not_available(self):
        """
        Implementing check manualaccrualenbld configuration variable availability functionality
        :return: True/False
        """
        is_not_available = True
        self.switch_to_frame(self.detail_frame_locator)
        try:
            self.wait(5).until(EC.presence_of_element_located(self.manualaccrualenbld_configuration_variable_locator), 'locator not found before specified time out')
            is_not_available = False
        except:
            pass
        self.switch_to_default_content()
        return is_not_available

    def click_exit_button(self):
        """
        Implementing click exit button functionality
        :return:
        """
        self.switch_to_frame(self.header_frame_locator)
        self.click_element(self.exit_button_locator, script_executor=True)
        self.switch_to_default_window()

    def click_go_button(self):
        """
        Implementing click go button functionality
        :return:
        """
        self.switch_to_frame(self.detail_frame_locator)
        self.click_element(self.go_button_locator, True)
        self.switch_to_default_content()

    def click_list_frame_go_button(self):
        """
        Implementing click list frame go button functionality
        :return:
        """
        self.switch_to_frame(self.list_frame_locator)
        try:
            self.click_element(self.go_button_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_profile_submenu(self):
        """
        Implementing click profile submenu functionality
        :return:
        """
        self.switch_to_frame(self.header_frame_locator)
        try:
            self.select_submenu(self.admin_menu_locator, self.profile_submenu_js_function, script_executor=True)
            time.sleep(10)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def select_profile_item(self, profile_item_name):
        """
        Implementing select profile item functionality
        :param profile_item_name:
        :return:
        """
        self.switch_to_frame(self.list_frame_locator)
        try:
            profile_item_locator = (By.XPATH, "//span[@class='ItemA' and text()='%s']" % profile_item_name)
            self.click_element(profile_item_locator, True)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def select_roles_tab(self):
        """
        Implementing select roles tab functionality
        :return:
        """
        self.switch_to_frame(self.detail_frame_locator)
        try:
            self.click_element(self.roles_tab_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def set_application(self, application):
        """
        Implementing set application functionality
        :return:
        """
        self.switch_to_frame(self.detail_frame_locator)
        try:
            self.select_option(self.application_dropdown_locator, application)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def is_role_present(self, role_name):
        """
        Implementing is role present functionality
        :param role_name:
        :return: True/False
        """
        is_present = False
        self.switch_to_frame(self.detail_frame_locator)
        try:
            role_name_locator = (By.XPATH, "//span[@class='nmFieldADisabled' and contains(text(), '%s')]" % role_name)
            is_present = self.is_element_present(role_name_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()
            return is_present

    def select_role_delete_checkbox(self, role_name):
        """
        Implementing select role delete checkbox functionality
        :param role_name:
        :return:
        """
        global is_selected
        self.switch_to_frame(self.detail_frame_locator)
        try:
            role_delete_checkbox_locator = (By.XPATH, "//span[@class='nmFieldADisabled' and contains(text(), '%s')]/../../../../td[4]/descendant::input" % role_name)
            if self.is_element_present(role_delete_checkbox_locator, time_out=5):
                self.click_element(role_delete_checkbox_locator, True)
                is_selected = True
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_delete_button(self):
        """
        Implementing click delete button functionality
        :return:
        """
        global is_selected
        self.switch_to_frame(self.detail_frame_locator)
        try:
            if is_selected is True:
                delete_button_element = self.wait().until(EC.presence_of_element_located(self.delete_button_locator), 'delete button locator not found before specified time out')
                delete_button_element.click()
                time.sleep(5)
                self.accept_alert_pop_up()
                time.sleep(5)
                self.accept_alert_pop_up()
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_add_new_roles_button(self):
        """
        Implementing click add new roles button functionality
        :return:
        """
        self.switch_to_frame(self.detail_frame_locator)
        try:
            add_new_roles_button_element = self.wait().until(EC.presence_of_element_located(self.add_new_roles_button_locator), 'add new roles button locator not found before specified time out')
            add_new_roles_button_element.click()
            time.sleep(10)
        except:
            raise
        finally:
            self.switch_to_default_content()
        self.switch_to_window_without_maximize()

    def select_role_add_checkbox(self, role_name):
        """
        Implementing select role add checkbox functionality
        :param role_name:
        :return:
        """
        role_add_checkbox_locator = (By.XPATH, "//span[@class='txtfieldL' and contains(text(), '%s')]/../../../../td[4]/descendant::input" % role_name)
        self.click_element(role_add_checkbox_locator, True)

    def click_add_role_save_button(self):
        """
        Implementing click add role save button functionality
        :return:
        """
        add_role_save_button_element = self.wait().until(EC.presence_of_element_located(self.add_role_save_button_locator), 'add role save button locator not found before specified time out')
        add_role_save_button_element.click()
        time.sleep(10)
        self.accept_alert_pop_up()
        self.switch_to_previous_window()

    def is_checktablelock_configuration_variable_available(self):
        """
        Implementing check checktablelock configuration variable availability functionality
        :return: True/False
        """
        self.switch_to_frame(self.detail_frame_locator)
        try:
            return self.is_element_present(self.checktablelock_configuration_variable_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def is_checktablelock_configuration_variable_available_with_the_default_value_1(self):
        """
        Implementing check checktablelock configuration variable availability with the default value 1 functionality
        :return: True/False
        """
        self.switch_to_frame(self.detail_frame_locator)
        config_variable_locator = (By.XPATH, "//span[contains(text(), 'CheckTableLock ')]")
        config_variable_element = self.wait().until(EC.presence_of_element_located(config_variable_locator), 'config variable locator not found before specified time out')
        default_variable_line_no = config_variable_element.get_attribute("LineNo")
        default_variable_locator = (By.XPATH, "//span[@class='cfFieldA' and contains(@id, 'MRFConfig_cConfigDefaultValue') and @LineNo='%s' and contains(text(), '1 ')]" % str(default_variable_line_no))
        try:
            return self.is_element_present(default_variable_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_field_alias_submenu(self):
        """
        Implementing click field alias submenu functionality
        :return:
        """
        self.switch_to_frame(self.header_frame_locator)
        try:
            self.select_submenu(self.admin_menu_locator, self.field_alias_submenu_js_function, script_executor=True)
            self.wait_for_ajax_spinner_load()
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_field_alias_go_button(self):
        """
        Implementing click field alias go button functionality
        :return:
        """
        self.switch_to_frame(self.display_field_alias_frame_locator)
        try:
            self.click_element(self.field_alias_go_button_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def is_field_alias_save_button_displayed(self):
        """
        Implementing is field alias save button displayed functionality
        :return: True/False
        """
        self.switch_to_frame(self.display_field_alias_frame_locator)
        try:
            return self.is_element_visible(self.save_button_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def is_field_alias_cancel_button_displayed(self):
        """
        Implementing is field alias cancel button displayed functionality
        :return: True/False
        """
        self.switch_to_frame(self.display_field_alias_frame_locator)
        try:
            return self.is_element_visible(self.cancel_button_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_field_alias_save_button(self):
        """
        Implementing click field alias save button functionality
        :return: True/False
        """
        self.switch_to_frame(self.display_field_alias_frame_locator)
        try:
            self.click_element(self.save_button_locator)
            return self.is_element_present(self.data_save_success_message_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def click_field_alias_cancel_button(self):
        """
        Implementing click field alias cancel button functionality
        :return:
        """
        self.switch_to_frame(self.display_field_alias_frame_locator)
        try:
            self.click_element(self.cancel_button_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def get_field_alias_grid_first_row_field_alias_value(self):
        """
        Implementing get field alias grid first row field alias value functionality
        :return: field_alias_value
        """
        field_alias_value = None
        self.switch_to_frame(self.display_field_alias_frame_locator)
        try:
            field_alias_value = self.get_text_from_element(self.field_alias_grid_first_row_inputbox_locator, is_a_input_field=True)
        except:
            field_alias_value = ""
            raise
        finally:
            self.switch_to_default_content()
            return field_alias_value

    def set_field_alias_grid_first_row_field_alias_value(self, field_alias_value):
        """
        Implementing set field alias grid first row field alias value functionality
        :param field_alias_value:
        :return:
        """
        self.switch_to_frame(self.display_field_alias_frame_locator)
        try:
            self.set_value_into_input_field(self.field_alias_grid_first_row_inputbox_locator, field_alias_value)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def select_multiple_role_checkboxes_to_delete(self, list_of_roles_id):
        """
        Implementing select multiple role checkboxes to delete functionality
        :param list_of_roles_id:
        :return: True/False
        """
        global is_selected
        self.switch_to_frame(self.detail_frame_locator)
        try:
            for roleId in list_of_roles_id:
                role_id_locator = (By.XPATH, "//span[contains(text(), '%s')]" % roleId)
                role_id_element = self.wait().until(EC.presence_of_element_located(role_id_locator), 'role id locator not found before specified time out')
                role_id_line_no = role_id_element.get_attribute("LineNo")
                role_delete_checkbox_locator = (By.XPATH, "//input[@class='cbFieldA' and contains(@id, 'MRFProfileRole_CDelete') and @LineNo='%s']" % str(role_id_line_no))
                if self.is_element_present(role_id_locator, time_out=5) is True:
                    self.click_element(role_delete_checkbox_locator)
                    is_selected = True
        except:
            pass
        finally:
            self.switch_to_default_content()

    def select_multiple_role_checkboxes_to_add(self, list_of_roles_id):
        """
        Implementing select multiple role checkboxes to add functionality
        :param list_of_roles_id:
        :return: True/False
        """
        for roleId in list_of_roles_id:
            role_delete_checkbox_locator = (By.XPATH, "//span[@class='txtfieldC' and contains(text(), '%s')]/../../../../td[4]/descendant::input" % roleId)
            if self.is_element_present(role_delete_checkbox_locator, time_out=5) is True:
                self.click_element(role_delete_checkbox_locator)