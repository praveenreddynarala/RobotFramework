"""
    Returning Audit UI page actions
    Returning Logging mechanism for Audit UI page actions
    Returning select dispute grades submenu
    Returning click dispute grades new button
    Returning set dispute grade
    Returning get dispute grade
    Returning click dispute grade save button
"""

from selenium.common.exceptions import WebDriverException
from TestFramework.Libraries.logger import Logger
from TestFramework.Libraries.Pages.audit_page import AuditPage


class Audit:
    """
    Returning switch to audit page
    Returning audit page title
    Returning close audit page
    """
    ROBOT_LIBRARY_SCOPE = 'TEST SUITE'

    logger = Logger().get_logger('Audit')

    def __init__(self):
        self._audit_page = AuditPage()

    def switch_to_audit(self):
        """
        Returning switch to audit
        Implementing logging for switch to audit functionality
        :return:
        """
        try:
            self.logger.info('Start: switch to audit method')
            return self._audit_page.switch_to_audit()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: switch to audit method')

    def get_audit_page_title(self):
        """
        Returning audit page title
        Implementing logging for get audit page title functionality
        :return: audit page title
        """
        try:
            self.logger.info('Start: get audit page title method')
            return self._audit_page.get_audit_page_title()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get audit page title method')

    def close_audit_page(self):
        """
        Returning close audit page
        Implementing logging for close audit page functionality
        :return:
        """
        try:
            self.logger.info('Start: close audit page method')
            return self._audit_page.close_audit_page()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: close audit page method')

    def select_dispute_grades_submenu(self):
        """
        Returning select dispute grades submenu
        Implementing logging for select dispute grades submenu functionality
        :return: True/False
        """
        is_selected = None
        try:
            self.logger.info('Start: select dispute grades submenu')
            self._audit_page.select_dispute_grades_submenu()
            is_selected = True
        except WebDriverException as exp:
            is_selected = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: select dispute grades submenu')
            return is_selected

    def click_dispute_grades_new_button(self):
        """
        Returning click dispute grades new button
        Implementing logging for click dispute grades new button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click dispute grades new button')
            self._audit_page.click_dispute_grades_new_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click dispute grades new button')
            return is_clicked

    def set_dispute_grade(self, dispute_grade_prefix):
        """
        Returning set dispute grade
        Implementing logging for set dispute grade functionality
        :param dispute_grade_prefix:
        :return: True/False
        """
        status = None
        try:
            self.logger.info('Start: set dispute grade')
            self._audit_page.set_dispute_grade(dispute_grade_prefix)
            status = True
        except WebDriverException as exp:
            status = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set dispute grade')
            return status

    def get_dispute_grade(self):
        """
        Returning get dispute grade
        Implementing logging for get dispute grade functionality
        :return: dispute grade
        """
        try:
            self.logger.info('Start: get dispute grade')
            return self._audit_page.get_dispute_grade()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get dispute grade')

    def click_dispute_grade_save_button(self):
        """
        Returning click dispute grade save button
        Implementing logging for click dispute grade save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click dispute grade save button')
            self._audit_page.click_dispute_grade_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click dispute grade save button')
            return is_clicked
