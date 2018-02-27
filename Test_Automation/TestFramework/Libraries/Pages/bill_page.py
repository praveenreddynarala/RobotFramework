"""Implementing Bill screen page objects"""

from TestFramework.Libraries.Pages.base_page import BasePage
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC


class BillPage(BasePage):
    """
    Contains Bill UI page locators
    Switch to bill function
    Get bill page title function
    Close bill page function
    """
    # Start: Bill page locators
    top_logo_frame_locator = (By.NAME, "TopLogo")
    # End: Bill page locators

    def switch_to_bill(self):
        """
        Implementing switch to bill functionality
        :return:
        """
        self.switch_to_window()
        self.accept_ssl_certificate()

    def get_bill_page_title(self):
        """
        Implementing get bill page title functionality
        :return: bill page title
        """
        self.wait().until(EC.presence_of_element_located(self.top_logo_frame_locator), 'top logo not found before specified time')
        return self.page_title()

    def close_bill_page(self):
        """
        Implementing close bill page functionality
        :return:
        """
        self.close_browser()
        self.switch_to_default_window()