"""
Implementing Contracts UI page actions
Implementing Logging mechanism for Contracts UI page actions
"""

from selenium.common.exceptions import WebDriverException
from TestFramework.Libraries.logger import Logger
from TestFramework.Libraries.Pages.contracts_page import ContractsPage


class Contracts:
    """
    Returning switch to contracts page
    Returning contracts page title
    Returning contracts page load status
    Returning close contracts page
    """
    ROBOT_LIBRARY_SCOPE = 'TEST SUITE'

    logger = Logger().get_logger('Contracts')

    def __init__(self):
        self._contracts_page = ContractsPage()

    def switch_to_contracts(self):
        """
        Returning switch to contracts
        Implementing logging for switch to contracts functionality
        :return:
        """
        is_switched = None
        try:
            self.logger.info('Start: switch to contracts method')
            self._contracts_page.switch_to_contracts()
            is_switched = True
        except WebDriverException as exp:
            is_switched = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: switch to contracts method')
            return is_switched

    def get_contracts_page_title(self):
        """
        Returning contracts page title
        Implementing logging for get contracts page title functionality
        :return: contracts page title
        """
        try:
            self.logger.info('Start: get contracts page title method')
            return self._contracts_page.get_contracts_page_title()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get contracts page title method')

    def is_contracts_page_loaded(self):
        """
        Returning contracts page load status
        Implementing logging for is contracts page loaded functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is contracts page loaded method')
            return self._contracts_page.is_contracts_page_loaded()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is contracts page loaded method')

    def close_contracts_page(self):
        """
        Returning close contracts page
        Implementing logging for close contracts page functionality
        :return:
        """
        try:
            self.logger.info('Start: close contracts page method')
            return self._contracts_page.close_contracts_page()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: close contracts page method')