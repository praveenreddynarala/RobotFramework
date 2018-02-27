"""
Implementing Report UI page actions
Implementing Logging mechanism for Report page actions
"""

from selenium.common.exceptions import WebDriverException
from TestFramework.Libraries.logger import Logger
from TestFramework.Libraries.Pages.report_page import ReportPage


class Report:
    """
    Returning switch to report
    Returning report page title
    Returning close report page
    Returning click administrative reports plus button
    Returning click account list link
    Returning click submit button
    Returning compare account label data
    Returning set account value
    Returning click exit button
    Returning click unp report link
    Returning set account value
    Returning set unified number plan type
    Returning click unp submit button
    Returning compare number plan on report
    """
    ROBOT_LIBRARY_SCOPE = 'TEST SUITE'

    logger = Logger().get_logger('Report')

    def __init__(self):
        self._report_page = ReportPage()

    def switch_to_report(self):
        """
        Returning switch to report
        Implementing logging for switch to report functionality
        :return:
        """
        try:
            self.logger.info('Start: switch to report method')
            return self._report_page.switch_to_report()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: switch to report method')

    def get_report_page_title(self):
        """
        Returning report page title
        Implementing logging for get report page title functionality
        :return: Report page title
        """
        try:
            self.logger.info('Start: get report page title method')
            return self._report_page.get_report_page_title()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get report page title method')

    def close_report_page(self):
        """
        Returning close report page
        Implementing logging for close report page functionality
        :return:
        """
        try:
            self.logger.info('Start: close report page method')
            return self._report_page.close_report_page()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: close report page method')

    def click_administrative_reports_plus_button(self):
        """
        Returning click administrative reports plus button
        Implementing logging for click administrative reports plus button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click administrative reports plus button')
            self._report_page.click_administrative_reports_plus_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click administrative reports plus button')
            return is_clicked

    def click_account_list_link(self):
        """
        Returning click account list link
        Implementing logging for click account list link functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click account list link')
            self._report_page.click_account_list_link()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click account list link')
            return is_clicked

    def click_submit_button(self):
        """
        Returning click submit button
        Implementing logging for click submit button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click submit button')
            self._report_page.click_submit_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click submit button')
            return is_clicked

    def compare_account_label_data(self, carrier_name):
        """
        Returning compare account label data
        Implementing logging for compare account label data functionality
        :param carrier_name:
        :return: True/False
        """
        status = None
        try:
            self.logger.info('Start: compare account label data')
            status = self._report_page.compare_account_label_data(carrier_name)
        except WebDriverException as exp:
            status = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare account label data')
            return status

    def set_account_value(self, account_name):
        """
        Returning set account value
        Implementing logging for set account value functionality
        :return:
        """
        is_set = None
        try:
            self.logger.info('Start: set account value')
            self._report_page.set_account_value(account_name)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set account value')
            return is_set

    def click_exit_button(self):
        """
        Returning click exit button
        Implementing logging for click exit button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click exit button')
            self._report_page.click_exit_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click exit button')
            return is_clicked

    def click_unp_report_link(self):
        """
        Returning click unp report link
        Implementing logging for click unp report link functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click unp report link')
            self._report_page.click_unp_report_link()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click unp report link')
            return is_clicked

    def set_unified_number_plan(self, account_name, trunk_name, call_type):
        """
        Returning set account value
        Implementing logging for set account value functionality
        :param account_name:
        :param trunk_name:
        :param call_type:
        :return:
        """
        is_set = None
        try:
            self.logger.info('Start: set account value')
            self._report_page.set_unified_number_plan(account_name, trunk_name, call_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set account value')
            return is_set

    def set_unified_number_plan_type(self, number_plan_type):
        """
        Returning set unified number plan type
        Implementing logging for set unified number plan type functionality
        :param number_plan_type:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set unified number plan type')
            self._report_page.set_unified_number_plan_type(number_plan_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set unified number plan type')
            return is_set

    def click_unp_submit_button(self):
        """
        Returning click unp submit button
        Implementing logging for click unp submit button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click unp submit button')
            self._report_page.click_unp_submit_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click unp submit button')
            return is_clicked

    def compare_number_plan_on_report(self, contract_name):
        """
        Returning compare number plan on report
        Implementing logging for compare number plan on report functionality
        :param contract_name:
        :return: True/False
        """
        status = None
        try:
            self.logger.info('Start: compare number plan on report')
            status = self._report_page.compare_number_plan_on_report(contract_name)
        except WebDriverException as exp:
            status = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare number plan on report')
            return status

