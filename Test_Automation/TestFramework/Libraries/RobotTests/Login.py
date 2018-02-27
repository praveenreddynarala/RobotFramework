"""Implementing Login functionality"""

from selenium.common.exceptions import WebDriverException
from TestFramework.Libraries.logger import Logger
from TestFramework.Libraries.Pages.login_page import LoginPage


class Login:
    """
    Login into SaaS UI application
    """
    ROBOT_LIBRARY_SCOPE = 'TEST SUITE'

    logger = Logger().get_logger('Login')

    def __init__(self):
        self._login_page = LoginPage()

    def perform_login(self, user_name, password):
        """
        Implementing Login functionality by using User credentials
        Implementing logging for Login functionality
        :param user_name:
        :param password:
        :return:
        """
        try:
            self.logger.info('Start: perform login method')
            return self._login_page.perform_login(user_name, password)
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: perform login method')