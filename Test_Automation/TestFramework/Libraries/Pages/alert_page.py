"""Implementing Alert screen page objects"""

from TestFramework.Libraries.Pages.base_page import BasePage
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC


class AlertPage(BasePage):
    """
    Contains Alert UI page locators
    Switch to alert function
    Get alert page title function
    Close alert page function
    Click exit button function
    """
    # Start: Alert page locators
    top_logo_frame_locator = (By.NAME, "TopLogo")
    exit_button_locator = (By.ID, "mtLogout")
    header_frame_locator = (By.NAME, "Header")
    # End: Alert page locators

    def switch_to_alert(self):
        """
        Implementing switch to alert functionality
        :return:
        """
        self.switch_to_window()
        self.accept_ssl_certificate()

    def get_alert_page_title(self):
        """
        Implementing get alert page title functionality
        :return: Alert page title
        """
        self.wait().until(EC.presence_of_element_located(self.top_logo_frame_locator), 'top logo frame not found before specified time')
        return self.page_title()

    def close_alert_page(self):
        """
        Implementing close alert page functionality
        :return:
        """
        self.close_browser()
        self.switch_to_default_window()

    def click_exit_button(self):
        """
        Implementing click exit button functionality
        :return:
        """
        self.switch_to_frame(self.header_frame_locator)
        self.click_element(self.exit_button_locator)
        self.switch_to_default_window()
