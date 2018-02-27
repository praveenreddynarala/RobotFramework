"""Implementing Translate screen page objects"""

from TestFramework.Libraries.Pages.base_page import BasePage
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC


class TranslatePage(BasePage):
    """
    Contains Translate UI page locators
    Switch to translate function
    Get translate page title function
    Is translate page loaded function
    Close translate page function
    """
    # Start: Translate page locators
    detail_frame_locator = (By.NAME, "Detail")
    page_header_locator = (By.XPATH, "//div[@id='titlePage']/descendant::div[@class='title']")
    # End: Translate page locators

    def switch_to_translate(self):
        """
        Implementing switch to translate functionality
        :return:
        """
        self.switch_to_window()
        self.accept_ssl_certificate()

    def get_translate_page_title(self):
        """
        Implementing get translate page title functionality
        :return: Translate page title
        """
        self.wait().until(EC.presence_of_element_located(self.detail_frame_locator), 'detail frame locator not found before specified time')
        return self.page_title()

    def is_translate_page_loaded(self):
        """
        Implementing is translate page loaded functionality
        :return: True/False
        """
        self.wait().until(EC.frame_to_be_available_and_switch_to_it(self.detail_frame_locator), 'detail frame locator not found before specified time')
        is_page_loaded = self.is_element_present(self.page_header_locator)
        self.switch_to_default_content()
        return is_page_loaded

    def close_translate_page(self):
        """
        Implementing close translate page functionality
        :return:
        """
        self.close_browser()
        self.switch_to_default_window()
