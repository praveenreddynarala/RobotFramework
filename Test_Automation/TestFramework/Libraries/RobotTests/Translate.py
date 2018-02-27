"""
Implementing Translate UI page actions
Implementing Logging mechanism for Translate page actions
"""

from selenium.common.exceptions import WebDriverException
from TestFramework.Libraries.logger import Logger
from TestFramework.Libraries.Pages.translate_page import TranslatePage


class Translate:
    """
    Returning switch to translate
    Returning translate page title
    Returning translate page loading status
    Returning close translate page
    """
    ROBOT_LIBRARY_SCOPE = 'TEST SUITE'

    logger = Logger().get_logger('Translate')

    def __init__(self):
        self._translate_page = TranslatePage()

    def switch_to_translate(self):
        """
        Returning switch to translate
        Implementing logging for switch to translate functionality
        :return:
        """
        try:
            self.logger.info('Start: switch to translate method')
            return self._translate_page.switch_to_translate()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: switch to translate method')

    def get_translate_page_title(self):
        """
        Returning translate page title
        Implementing logging for get translate page title functionality
        :return: Translate page title
        """
        try:
            self.logger.info('Start: get translate page title method')
            return self._translate_page.get_translate_page_title()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get translate page title method')

    def is_translate_page_loaded(self):
        """
        Returning translate page loading status
        Implementing logging for is translate page loaded functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is translate page loaded method')
            return self._translate_page.is_translate_page_loaded()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is translate page loaded method')

    def close_translate_page(self):
        """
        Returning close translate page
        Implementing logging for close translate page functionality
        :return:
        """
        try:
            self.logger.info('Start: close translate page method')
            self._translate_page.close_translate_page()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: close translate page method')
