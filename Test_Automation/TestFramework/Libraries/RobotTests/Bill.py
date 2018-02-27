"""
Implementing Bill UI page actions
Implementing Logging mechanism for Bill UI page actions
"""

from selenium.common.exceptions import WebDriverException
from TestFramework.Libraries.logger import Logger
from TestFramework.Libraries.Pages.bill_page import BillPage


class Bill:
    """
    Returning switch to bill page
    Returning bill page title
    Returning close bill page
    """
    ROBOT_LIBRARY_SCOPE = 'TEST SUITE'

    logger = Logger().get_logger('Bill')

    def __init__(self):
        self._bill_page = BillPage()

    def switch_to_bill(self):
        """
        Returning switch to bill
        Implementing logging for switch to bill functionality
        :return:
        """
        try:
            self.logger.info('Start: switch to bill method')
            return self._bill_page.switch_to_bill()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: switch to bill method')

    def get_bill_page_title(self):
        """
        Returning bill page title
        Implementing logging for get bill page title functionality
        :return: bill page title
        """
        try:
            self.logger.info('Start: get bill page title method')
            return self._bill_page.get_bill_page_title()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get bill page title method')

    def close_bill_page(self):
        """
        Returning close bill page
        Implementing logging for close bill page functionality
        :return:
        """
        try:
            self.logger.info('Start: close bill page method')
            return self._bill_page.close_bill_page()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: close bill page method')
