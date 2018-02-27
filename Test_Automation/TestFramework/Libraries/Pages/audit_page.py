"""Implementing Audit screen page objects"""

from TestFramework.Libraries.Pages.base_page import BasePage
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC


class AuditPage(BasePage):
    """
    Contains Audit UI page locators
    Switch to audit function
    Get audit page title function
    Close audit page function
    Switch to list frame function
    Switch to details frame function
    Switch to header frame function
    Select dispute grades submenu function
    Click dispute grades new button function
    Set dispute grade function
    Get dispute grade function
    Click dispute grade save button function
    """
    # Start: Audit page locators
    top_logo_frame_locator = (By.NAME, "TopLogo")
    list_frame_locator = (By.NAME, "List")
    header_frame_locator = (By.NAME, "Header")
    detail_frame_locator = (By.NAME, "Detail")
    admin_menu_locator = (By.ID, "C1Label_mAdmin")
    dispute_grades_submenu_js_function = "Admin_Click(11,'Admin11');"

    new_button_locator = (By.ID, "BNew")
    dispute_grade_textbox_locator = (By.ID, "R2_DisputeGrade")
    dispute_grade_save_button_locator = (By.ID, "BSave")
    # End: Audit page locators

    def switch_to_audit(self):
        """
        Implementing switch to audit functionality
        :return:
        """
        self.switch_to_window()
        self.accept_ssl_certificate()

    def get_audit_page_title(self):
        """
        Implementing get audit page title functionality
        :return: audit page title
        """
        self.wait().until(EC.presence_of_element_located(self.top_logo_frame_locator), 'top logo not found before specified time')
        return self.page_title()

    def close_audit_page(self):
        """
        Implementing close audit page functionality
        :return:
        """
        self.close_browser()
        self.switch_to_default_window()

    def switch_to_list_frame(self):
        """
        Implementing switch to list frame functionality
        :return:
        """
        self.switch_to_frame(self.list_frame_locator)

    def switch_to_header_frame(self):
        """
        Implementing switch to header frame functionality
        :return:
        """
        self.switch_to_frame(self.header_frame_locator)

    def switch_to_detail_frame(self):
        """
        Implementing switch to detail frame functionality
        :return:
        """
        self.switch_to_frame(self.detail_frame_locator)

    def select_dispute_grades_submenu(self):
        """
        Implementing select dispute grades submenu functionality
        :return:
        """
        self.switch_to_header_frame()
        self.select_submenu(self.admin_menu_locator, self.dispute_grades_submenu_js_function, script_executor=True)
        self.wait_for_ajax_spinner_load()
        self.switch_to_default_content()

    def click_dispute_grades_new_button(self):
        """
        Implementing click dispute grades new button functionality
        :return:
        """
        self.switch_to_list_frame()
        self.wait().until(EC.visibility_of_element_located(self.new_button_locator), 'new button locator not visible before specified time out')
        self.click_element(self.new_button_locator)
        self.switch_to_default_content()

    def set_dispute_grade(self, dispute_grade_prefix):
        """
        Implementing set dispute grade functionality
        :param dispute_grade_prefix:
        :return:
        """
        global dispute_grade
        self.switch_to_detail_frame()
        dispute_grade = dispute_grade_prefix + self.random_string_generator(size=4)
        self.set_value_into_input_field(self.dispute_grade_textbox_locator, dispute_grade)
        self.switch_to_default_content()

    def get_dispute_grade(self):
        """
        Implementing get dispute grade functionality
        :return:
        """
        global dispute_grade
        return dispute_grade

    def click_dispute_grade_save_button(self):
        """
        Implementing click dispute grade save button functionality
        :return:
        """
        self.switch_to_detail_frame()
        self.click_element(self.dispute_grade_save_button_locator)
        self.wait_for_ajax_spinner_load()
        try:
            self.accept_alert_pop_up()
        except:
            pass
        self.switch_to_default_content()
