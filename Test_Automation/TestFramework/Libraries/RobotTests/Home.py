"""Implementing Home UI page actions"""

from selenium.common.exceptions import WebDriverException
from TestFramework.Libraries.logger import Logger
from TestFramework.Libraries.Pages.home_page import HomePage


class Home:
    """
    Returning User login success
    Returning User Sign out from SaaS UI
    Returning handle multiple sessions
    Returning select sell submenu
    Returning select price submenu
    Returning select buy submenu
    Returning select carrier submenu
    Returning select route submenu
    Returning select translate submenu
    Returning select network submenu
    Returning select contracts submenu
    Returning select business admin submenu
    Returning select system admin submenu
    Returning select job maintenance submenu
    Returning select report submenu
    Returning select alert submenu
    Returning select audit submenu
    Returning select bill submenu
    Returning select bill and audit submenu
    Returning go to specific url
    """
    ROBOT_LIBRARY_SCOPE = 'TEST SUITE'

    logger = Logger().get_logger('Home')

    def __init__(self):
        self._home_page = HomePage()

    def is_login_successful(self):
        """
        Returning user login success status
        Implementing logging for is login successful functionality
        :return: True/False
        """
        try:
            self.logger.info('Start: is login successful')
            return self._home_page.is_login_successful()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is login successful')

    def handle_multiple_sessions(self):
        """
        Returning handle multiple sessions
        Implementing logging for handle multiple sessions functionality
        :return: True/False
        """
        is_handled = None
        try:
            self.logger.info('Start: handle multiple sessions')
            self._home_page.handle_multiple_sessions()
            is_handled = True
        except WebDriverException as exp:
            is_handled = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: handle multiple sessions')
            return is_handled

    def sign_out(self):
        """
        Returning sign out status
        Implementing logging for sign out functionality
        :return: True/False
        """
        is_successful = None
        try:
            self.logger.info('Start: sign out')
            self._home_page.sign_out()
            is_successful = True
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            is_successful = False
        finally:
            self.logger.info('End: sign out')
            return is_successful

    def select_sell_submenu(self):
        """
        Returning select sell submenu
        Implementing logging for select sell submenu functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select sell submenu')
            self._home_page.select_sell_submenu()
            is_selected = True
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            is_selected = False
        finally:
            self.logger.info('End: select sell submenu')
            return is_selected

    def select_price_submenu(self):
        """
        Returning select price submenu
        Implementing logging for select price submenu functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select price submenu')
            self._home_page.select_price_submenu()
            is_selected = True
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            is_selected = False
        finally:
            self.logger.info('End: select price submenu')
            return is_selected
    
    def select_buy_submenu(self):
        """
        Returning select buy submenu
        Implementing logging for select buy submenu functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select buy submenu')
            self._home_page.select_buy_submenu()
            is_selected = True
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            is_selected = False
        finally:
            self.logger.info('End: select buy submenu')
            return is_selected

    def select_carrier_submenu(self):
        """
        Returning select carrier submenu
        Implementing logging for select carrier submenu functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select carrier submenu')
            self._home_page.select_carrier_submenu()
            is_selected = True
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            is_selected = False
        finally:
            self.logger.info('End: select carrier submenu')
            return is_selected

    def select_route_submenu(self):
        """
        Returning select route submenu
        Implementing logging for select route submenu functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select route submenu')
            self._home_page.select_route_submenu()
            is_selected = True
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            is_selected = False
        finally:
            self.logger.info('End: select route submenu')
            return is_selected

    def select_translate_submenu(self):
        """
        Returning select translate submenu
        Implementing logging for select translate submenu functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select translate submenu')
            self._home_page.select_translate_submenu()
            is_selected = True
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            is_selected = False
        finally:
            self.logger.info('End: select translate submenu')
            return is_selected

    def select_network_submenu(self):
        """
        Returning select network submenu
        Implementing logging for select network submenu functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select network submenu')
            self._home_page.select_network_submenu()
            is_selected = True
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            is_selected = False
        finally:
            self.logger.info('End: select network submenu')
            return is_selected

    def select_contracts_submenu(self):
        """
        Returning select contracts submenu
        Implementing logging for select contracts submenu functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select contracts submenu')
            self._home_page.select_contracts_submenu()
            is_selected = True
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            is_selected = False
        finally:
            self.logger.info('End: select contracts submenu')
            return is_selected

    def select_business_admin_submenu(self):
        """
        Returning select business admin submenu
        Implementing logging for select business admin submenu functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select business admin submenu')
            self._home_page.select_business_admin_submenu()
            is_selected = True
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            is_selected = False
        finally:
            self.logger.info('End: select business admin submenu')
            return is_selected

    def select_system_admin_submenu(self):
        """
        Returning select system admin submenu
        Implementing logging for select system admin submenu functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select system admin submenu')
            self._home_page.select_system_admin_submenu()
            is_selected = True
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            is_selected = False
        finally:
            self.logger.info('End: select system admin submenu')
            return is_selected

    def select_job_maintenance_submenu(self):
        """
        Returning select job maintenance submenu
        Implementing logging for select job maintenance submenu functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select job maintenance submenu')
            self._home_page.select_job_maintenance_submenu()
            is_selected = True
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            is_selected = False
        finally:
            self.logger.info('End: select job maintenance submenu')
            return is_selected

    def select_report_submenu(self):
        """
        Returning select report submenu
        Implementing logging for select report submenu functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select report submenu')
            self._home_page.select_report_submenu()
            is_selected = True
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            is_selected = False
        finally:
            self.logger.info('End: select report submenu')
            return is_selected

    def select_alert_submenu(self):
        """
        Returning select alert submenu
        Implementing logging for select alert submenu functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select alert submenu')
            self._home_page.select_alert_submenu()
            is_selected = True
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            is_selected = False
        finally:
            self.logger.info('End: select alert submenu')
            return is_selected

    def select_audit_submenu(self):
        """
        Returning select audit submenu
        Implementing logging for select audit submenu functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select audit submenu')
            self._home_page.select_audit_submenu()
            is_selected = True
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            is_selected = False
        finally:
            self.logger.info('End: select audit submenu')
            return is_selected

    def select_bill_submenu(self):
        """
        Returning select bill submenu
        Implementing logging for select bill submenu functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select bill submenu')
            self._home_page.select_bill_submenu()
            is_selected = True
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            is_selected = False
        finally:
            self.logger.info('End: select bill submenu')
            return is_selected

    def select_bill_and_audit_submenu(self):
        """
        Returning select bill and audit submenu
        Implementing logging for select bill and audit submenu functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select bill and audit submenu')
            self._home_page.select_bill_and_audit_submenu()
            is_selected = True
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            is_selected = False
        finally:
            self.logger.info('End: select bill and audit submenu')
            return is_selected

    def go_to_specific_url(self, url):
        """
        Returning go to specific url
        Implementing logging for go to specific url functionality
        :param url:
        :return: True/False
        """
        status = None
        try:
            self.logger.info('Start: go to specific url')
            self._home_page.goto_specific_url(url)
            status = True
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            status = False
        finally:
            self.logger.info('End: go to specific url')
            return status
