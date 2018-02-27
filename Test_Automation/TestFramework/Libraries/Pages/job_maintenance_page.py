"""Implementing Job Maintenance screen page objects"""

from TestFramework.Libraries.Pages.base_page import BasePage
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC


class JobMaintenancePage(BasePage):
    """
    Contains Job Maintenance UI page locators
    Switch to job maintenance function
    Get job maintenance page title function
    Close job maintenance page function
    """
    # Start: Job Maintenance page locators
    list_frame_locator = (By.NAME, "List")
    # End: Job Maintenance page locators

    def switch_to_job_maintenance(self):
        """
        Implementing switch to job maintenance functionality
        :return:
        """
        self.switch_to_window()
        self.accept_ssl_certificate()

    def get_job_maintenance_page_title(self):
        """
        Implementing get job maintenance functionality
        :return: JOb Maintenance page title
        """
        self.wait().until(EC.presence_of_element_located(self.list_frame_locator), 'list frame is not found before specified time')
        return self.page_title()

    def close_job_maintenance_page(self):
        """
        Implementing close job maintenance functionality
        :return:
        """
        self.close_browser()
        self.switch_to_default_window()
