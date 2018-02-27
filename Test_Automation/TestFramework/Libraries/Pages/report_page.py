"""Implementing Report screen page objects"""

from TestFramework.Libraries.Pages.base_page import BasePage
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC


class ReportPage(BasePage):
    """
    Contains Report UI page locators
    Switch to report function
    Get Report page title function
    Close Report page function
    Click administrative reports plus button function
    Click account list link function
    Click submit button function
    Compare account label data function
    Set account value function
    Click exit button function
    Click unp report link function
    Set account value function
    Set unified number plan type function
    Click unp submit button function
    Compare number plan on report function
    """
    # Start: Report page locators
    list_frame_locator = (By.NAME, "List")
    detail_frame_locator = (By.NAME, "Detail")
    header_frame_locator = (By.NAME, "Header")
    administrative_reports_plus_button_locator = (By.ID, "IMGReportTree2_ReportGroup21")
    account_list_link_locator = (By.ID, "ReportTree2_ReportGroup21__tlrReport1__Report")
    submit_button_locator = (By.ID, "BReport")
    account_label_value_locator = (By.ID, "Account")
    account_textbox_locator = (By.ID, "rAccount_Account")
    exit_button_locator = (By.ID, "C2_mtLogout")
    unp_report_link_locator = (By.ID, "ReportTree2_ReportGroup21__tlrReport24__Report")
    unp_locator = (By.ID, "rUnifiedNumberPlan_Param5imgDown")
    unified_number_plan_type_dropdown_locator = (By.ID, "rIsOpAc_Param9")
    unp_report_page_title_locator = (By.ID, "lgx_ReportParameterTitle")
    unp_submit_button_locator = (By.ID, "lgxReport")
    contract_column_first_value_locator = (By.ID, "cContract_Row1")
    # End: Report page locators

    def switch_to_report(self):
        """
        Implementing switch to report functionality
        :return:
        """
        self.switch_to_window()
        self.accept_ssl_certificate()

    def get_report_page_title(self):
        """
        Implementing get report page title functionality
        :return: Report page title
        """
        self.wait().until(EC.presence_of_element_located(self.list_frame_locator), 'list frame not found before specified time')
        return self.page_title()

    def close_report_page(self):
        """
        Implementing close report page functionality
        :return:
        """
        self.close_browser()
        self.switch_to_default_window()

    def click_administrative_reports_plus_button(self):
        """
        Implementing click administrative reports plus button functionality
        :return:
        """
        self.switch_to_frame(self.list_frame_locator)
        self.click_element(self.administrative_reports_plus_button_locator)
        self.switch_to_default_content()

    def click_account_list_link(self):
        """
        Implementing click account list link functionality
        :return:
        """
        self.switch_to_frame(self.list_frame_locator)
        self.click_element(self.account_list_link_locator)
        self.switch_to_default_content()

    def click_submit_button(self):
        """
        Implementing click submit button functionality
        :return:
        """
        self.switch_to_frame(self.detail_frame_locator)
        self.set_existing_handles()
        self.click_element(self.submit_button_locator)
        self.switch_to_default_content()
        self.switch_to_window()

    def compare_account_label_data(self, carrier_name):
        """
        Implementing compare account label data functionality
        :param carrier_name:
        :return: True/False
        """
        status = False
        account_label_value_element = self.wait().until(EC.presence_of_element_located(self.account_label_value_locator), 'account label value locator not found before specified time out')
        account_name = str(account_label_value_element.text)
        if carrier_name == account_name:
            status = True
        return status

    def set_account_value(self, account_name):
        """
        Implementing set account value functionality
        :param account_name:
        :return:
        """
        self.switch_to_frame(self.detail_frame_locator)
        self.set_value_into_input_field(self.account_textbox_locator, account_name)
        self.switch_to_default_content()

    def click_exit_button(self):
        """
        Implementing click exit button functionality
        :return:
        """
        self.switch_to_frame(self.header_frame_locator)
        self.click_element(self.exit_button_locator)
        self.switch_to_default_window()

    def click_unp_report_link(self):
        """
        Implementing click unp report link functionality
        :return:
        """
        self.switch_to_frame(self.list_frame_locator)
        self.click_element(self.unp_report_link_locator)
        self.switch_to_default_content()

    def set_unified_number_plan(self, account_name, trunk_name, call_type):
        """
        Implementing set account value functionality
        :param account_name:
        :param trunk_name:
        :param call_type:
        :return:
        """
        self.set_existing_handles()
        self.switch_to_frame(self.detail_frame_locator)
        self.click_element(self.unp_locator)
        self.switch_to_default_content()
        self.switch_to_window()
        template = account_name + "_Out_" + trunk_name + "_" + call_type
        template_locator = (By.XPATH, "//div[@id='tLookupPaging']/descendant::table[@id='tLookup']/descendant::span[text()='%s']" % str(template))
        self.click_element(template_locator)
        self.switch_to_previous_window()

    def set_unified_number_plan_type(self, number_plan_type):
        """
        Implementing set unified number plan type functionality
        :param number_plan_type:
        :return:
        """
        self.switch_to_frame(self.detail_frame_locator)
        self.select_option(self.unified_number_plan_type_dropdown_locator, number_plan_type)
        self.click_element(self.unp_report_page_title_locator)
        self.switch_to_default_content()

    def click_unp_submit_button(self):
        """
        Implementing click unp submit button functionality
        :return:
        """
        self.switch_to_frame(self.detail_frame_locator)
        self.set_existing_handles()
        self.click_element(self.unp_submit_button_locator)
        self.switch_to_default_content()
        self.switch_to_window()

    def compare_number_plan_on_report(self, contract_name):
        """
        Implementing compare number plan on report functionality
        :param contract_name:
        :return: True/False
        """
        status = False
        contract_column_first_value_element = self.wait().until(EC.presence_of_element_located(self.contract_column_first_value_locator), 'account label value locator not found before specified time out')
        grid_contract_name = str(contract_column_first_value_element.text)
        if contract_name == grid_contract_name:
            status = True
        return status
