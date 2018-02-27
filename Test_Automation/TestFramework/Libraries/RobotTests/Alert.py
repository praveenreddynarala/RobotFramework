"""
Implementing Alert UI page actions
Implementing Logging mechanism for Alert UI page actions
"""

from selenium.common.exceptions import WebDriverException
from TestFramework.Libraries.logger import Logger
from TestFramework.Libraries.Pages.alert_page import AlertPage


class Alert:
    """
    Returning switch to alert page
    Returning alert page title
    Returning close alert page
    Returning click exit button
    """
    ROBOT_LIBRARY_SCOPE = 'TEST SUITE'

    logger = Logger().get_logger('Alert')

    def __init__(self):
        self._alert_page = AlertPage()

    def switch_to_alert(self):
        """
        Returning switch to alert
        Implementing logging for switch to alert functionality
        :return:
        """
        is_switched = None
        try:
            self.logger.info('Start: switch to alert method')
            self._alert_page.switch_to_alert()
            is_switched = True
        except WebDriverException as exp:
            is_switched = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: switch to alert method')
            return is_switched

    def get_alert_page_title(self):
        """
        Returning alert page title
        Implementing logging for get alert page title functionality
        :return: alert page title
        """
        try:
            self.logger.info('Start: get alert page title method')
            return self._alert_page.get_alert_page_title()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get alert page title method')

    def close_alert_page(self):
        """
        Returning close alert page
        Implementing logging for close alert page functionality
        :return:
        """
        is_closed = None
        try:
            self.logger.info('Start: close alert page method')
            self._alert_page.close_alert_page()
            is_closed = True
        except WebDriverException as exp:
            is_closed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: close alert page method')
            return is_closed

    def click_exit_button(self):
        """
        Returning click exit button
        Implementing logging for click exit button functionality
        :return:
        """
        is_clicked = None
        try:
            self.logger.info('Start: click exit button')
            self._alert_page.click_exit_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click exit button')
            return is_clicked
