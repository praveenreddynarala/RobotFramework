"""Implementing Contracts screen page objects"""

from TestFramework.Libraries.Pages.base_page import BasePage
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC


class ContractsPage(BasePage):
    """
    Contains Contracts UI page locators
    Switch to contracts function
    Get contracts page title function
    Is contracts page loaded function
    Close contracts page function
    """
    # Start: Contracts page locators
    detail_frame_locator = (By.NAME, "Detail")
    page_header_locator = (By.XPATH, "//div[@id='PageContentContainer']/descendant::div[@id='titlePage']")
    # End: Contracts page locators

    def switch_to_contracts(self):
        """
        Implementing switch to contracts functionality
        :return:
        """
        self.switch_to_window()
        self.accept_ssl_certificate()

    def get_contracts_page_title(self):
        """
        Implementing get contracts page title functionality
        :return: contracts page title
        """
        self.wait().until(EC.presence_of_element_located(self.detail_frame_locator), 'detail frame locator not found before specified time')
        return self.page_title()

    def is_contracts_page_loaded(self):
        """
        Implementing is contracts page loaded functionality
        :return: True/False
        """
        self.wait().until(EC.frame_to_be_available_and_switch_to_it(self.detail_frame_locator), 'detail frame locator not found before specified time')
        is_page_loaded = self.is_element_present(self.page_header_locator)
        self.switch_to_default_content()
        return is_page_loaded

    def close_contracts_page(self):
        """
        Implementing close contracts page functionality
        :return:
        """
        self.close_browser()
        self.switch_to_default_window()