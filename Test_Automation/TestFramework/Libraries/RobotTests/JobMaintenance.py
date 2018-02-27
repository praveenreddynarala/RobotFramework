"""
Implementing Job Maintenance UI page actions
Implementing Logging mechanism for Job Maintenance page actions
"""

from selenium.common.exceptions import WebDriverException
from TestFramework.Libraries.logger import Logger
from TestFramework.Libraries.Pages.job_maintenance_page import JobMaintenancePage


class JobMaintenance:
    """
    Returning switch to job maintenance
    Returning job maintenance page title
    Returning close job maintenance page
    """
    ROBOT_LIBRARY_SCOPE = 'TEST SUITE'

    logger = Logger().get_logger('JobMaintenance')

    def __init__(self):
        self._job_maintenance_page = JobMaintenancePage()

    def switch_to_job_maintenance(self):
        """
        Returning switch to job maintenance
        Implementing logging for switch to job maintenance functionality
        :return:
        """
        is_switched = None
        try:
            self.logger.info('Start: switch to job maintenance method')
            self._job_maintenance_page.switch_to_job_maintenance()
            is_switched = True
        except WebDriverException as exp:
            is_switched = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: switch to job maintenance method')
            return is_switched

    def get_job_maintenance_page_title(self):
        """
        Returning job maintenance page title
        Implementing logging for get job maintenance page title functionality
        :return: Job Maintenance page title
        """
        try:
            self.logger.info('Start: get job maintenance page title method')
            return self._job_maintenance_page.get_job_maintenance_page_title()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get job maintenance page title method')

    def close_job_maintenance_page(self):
        """
        Returning close job maintenance page
        Implementing logging for close job maintenance page functionality
        :return:
        """
        is_closed = None
        try:
            self.logger.info('Start: close job maintenance page method')
            self._job_maintenance_page.close_job_maintenance_page()
            is_closed = True
        except WebDriverException as exp:
            is_closed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: close job maintenance page method')
            return is_closed
