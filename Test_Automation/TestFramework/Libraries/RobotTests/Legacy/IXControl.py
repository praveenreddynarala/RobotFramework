"""
Implementing iXControl UI page actions
Implementing Logging mechanism for iXControl UI page actions
"""

from selenium.common.exceptions import WebDriverException
from TestFramework.Libraries.logger import Logger
from TestFramework.Libraries.Pages.Legacy.ixcontrol_page import IXControlPage


class IXControl:
    """
    Returning switch to ixControl
    Returning click performance metrics submenu
    Returning set registry item
    Returning click go button
    Returning click exit button
    Returning click connect submenu
    Returning click first unp job link
    Returning click request recalculate unp link
    Returning click execute button
    Returning click first unp job process button
    Returning click first unp job recalculate button
    Returning compare unp status
    Returning click objects and processes submenu
    Returning set object type
    Returning set object
    Returning click object name
    Returning get cdr destination path
    Returning click cdr files submenu
    Returning copy file
    Returning click cdr file name
    Returning set current status
    Returning is cdr load completed
    Returning verify registry status
    Returning click trade submenu
    Returning click first registry item info button
    Returning click first registry process
    Returning get sql command
    Returning execute sql to run rpl job
    Returning click all items submenu
    Returning click event reprocessing button
    Returning click single event processing button
    Returning set requested process
    Returning set event processing object
    Returning set event processing begin date
    Returning set event processing end date
    Returning click schedule process checkbox
    Returning set schedule date and time
    Returning click event processing save button
    Returning set registration procedure
    Returning click modify rplg save button
    Returning click server monitoring link
    Returning is free space chart loaded
    Returning is total space chart loaded
    Returning is disk space usage chart loaded
    Returning is server monitoring and management table loaded
    Returning click server usage audit link
    Returning click server usage audit submit button
    Returning click and expand c drive
    Returning is server details available
    Returning close ixcontrol window
    Returning click request data refresh process
    Returning is trade data refresh job completed
    Returning click bill submenu
    Returning is statement generate job completed
    Returning click request statement generate process link
    Returning set item type
    Returning is successfully executed job present
    Returning are the jobs completed without any error
    Returning is job execution duration not so long
    Returning read settings file max records value
    Returning write settings file max records value
    Returning get web server name
    """
    ROBOT_LIBRARY_SCOPE = 'TEST SUITE'

    logger = Logger().get_logger('IXControl')

    def __init__(self):
        self._ixcontrol_page = IXControlPage()

    def switch_to_ixcontrol(self):
        """
        Returning switch to ixControl
        Implementing logging for switch to ixControl functionality
        :return: True/False
        """
        is_switched = None
        try:
            self.logger.info('Start: switch to ixControl method')
            self._ixcontrol_page.switch_to_ixcontrol()
            is_switched = True
        except WebDriverException as exp:
            is_switched = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: switch to ixControl method')
            return is_switched

    def click_performance_metrics_submenu(self):
        """
        Returning click performance metrics submenu
        Implementing logging for click performance metrics submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click performance metrics submenu')
            self._ixcontrol_page.click_performance_metrics_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click performance metrics submenu')
            return is_clicked

    def set_registry_item(self, item_name):
        """
        Returning set registry item
        Implementing logging for set registry item functionality
        :param item_name:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set registry item')
            self._ixcontrol_page.set_registry_item(item_name)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set registry item')
            return is_set

    def click_go_button(self):
        """
        Returning click go button
        Implementing logging for click go button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click go button')
            self._ixcontrol_page.click_go_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click go button')
            return is_clicked

    def click_exit_button(self):
        """
        Returning click exit button
        Implementing logging for click exit button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click exit button')
            self._ixcontrol_page.click_exit_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click exit button')
            return is_clicked

    def click_objects_and_processes_submenu(self):
        """
        Returning click objects and processes submenu
        Implementing logging for click objects and processes submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click objects and processes submenu')
            self._ixcontrol_page.click_objects_and_processes_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click objects and processes submenu')
            return is_clicked

    def set_object_type(self, object_type):
        """
        Returning set object type
        Implementing logging for set object type functionality
        :param object_type:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set object type')
            self._ixcontrol_page.set_object_type(object_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set object type')
            return is_set

    def set_object(self, object_name):
        """
        Returning set object
        Implementing logging for set object functionality
        :param object_name:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set object')
            self._ixcontrol_page.set_object(object_name)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set object')
            return is_set

    def click_object_name(self, object_name):
        """
        Returning click object name
        Implementing logging for click object name functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click object name')
            self._ixcontrol_page.click_object_name(object_name)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click object name')
            return is_clicked

    def get_cdr_destination_path(self):
        """
        Returning get cdr destination path
        Implementing logging for get cdr destination path functionality
        :return: destination_path
        """
        destination_path = None
        try:
            self.logger.info('Start: get cdr destination path')
            destination_path = self._ixcontrol_page.get_cdr_destination_path()
        except WebDriverException as exp:
            destination_path = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get cdr destination path')
            return destination_path

    def get_cdr_file_name(self):
        """
        Returning get cdr file name
        Implementing logging for get cdr file name functionality
        :return: cdr_file_name
        """
        cdr_file_name = None
        try:
            self.logger.info('Start: get cdr file name')
            cdr_file_name = self._ixcontrol_page.get_cdr_file_name()
        except WebDriverException as exp:
            cdr_file_name = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get cdr file name')
            return cdr_file_name

    def click_cdr_files_submenu(self):
        """
        Returning click cdr files submenu
        Implementing logging for click cdr files submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click cdr files submenu')
            self._ixcontrol_page.click_cdr_files_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click cdr files submenu')
            return is_clicked

    def copy_file(self, source, destination):
        """
        Returning copy file
        Implementing logging for copy file functionality
        :param source: the location of the file to be copied
        :param destination: the location where the file should be copied
        :return: True/False
        """
        is_copied = None
        try:
            self.logger.info('Start: copy file')
            self._ixcontrol_page.copy_file(source, destination)
            is_copied = True
        except IOError as exp:
            is_copied = False
            self.logger.error(exp.args[1])
            raise
        finally:
            self.logger.info('End: copy file')
            return is_copied

    def click_cdr_file_name(self, object_name):
        """
        Returning click cdr file name
        Implementing logging for click cdr file name functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click cdr file name')
            self._ixcontrol_page.click_cdr_file_name(object_name)
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click cdr file name')
            return is_clicked

    def set_current_status(self, status):
        """
        Returning set current status
        Implementing logging for set current status functionality
        :param status:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set current status')
            self._ixcontrol_page.set_current_status(status)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set current status')
            return is_set

    def is_cdr_load_completed(self):
        """
        Returning is cdr load completed
        Implementing logging for is cdr load completed functionality
        :return: True/False
        """
        is_completed = None
        try:
            self.logger.info('Start: is cdr load completed')
            is_completed = self._ixcontrol_page.is_cdr_load_completed()
        except WebDriverException as exp:
            is_completed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is cdr load completed')
            return is_completed

    def click_connect_submenu(self):
        """
        Returning click connect submenu
        Implementing logging for click connect submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click connect submenu')
            self._ixcontrol_page.click_connect_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click connect submenu')
            return is_clicked

    def click_first_unp_job_link(self):
        """
        Returning click first unp job link
        Implementing logging for click first unp job link functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click first unp job link')
            self._ixcontrol_page.click_first_unp_job_link()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click first unp job link')
            return is_clicked

    def click_request_recalculate_unp_link(self):
        """
        Returning click request recalculate unp link
        Implementing logging for click request recalculate unp link functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click request recalculate unp link')
            self._ixcontrol_page.click_request_recalculate_unp_link()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click request recalculate unp link')
            return is_clicked

    def click_execute_button(self):
        """
        Returning click execute button
        Implementing logging for click execute button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click execute button')
            self._ixcontrol_page.click_execute_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click execute button')
            return is_clicked

    def click_first_unp_job_process_button(self):
        """
        Returning click first unp job process button
        Implementing logging for click first unp job process button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click first unp job process button')
            self._ixcontrol_page.click_first_unp_job_process_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click first unp job process button')
            return is_clicked

    def click_first_unp_job_recalculate_button(self):
        """
        Returning click first unp job recalculate button
        Implementing logging for click first unp job recalculate button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click first unp job recalculate button')
            self._ixcontrol_page.click_first_unp_job_recalculate_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click first unp job recalculate button')
            return is_clicked

    def compare_unp_status(self):
        """
        Returning compare unp status
        Implementing logging for compare unp status functionality
        :return: True/False
        """
        is_matched = None
        try:
            self.logger.info('Start: compare unp status')
            is_matched = self._ixcontrol_page.compare_unp_status()
        except WebDriverException as exp:
            is_matched = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: compare unp status')
            return is_matched

    def verify_registry_status(self, status_text):
        """
        Returning verify registry status
        Implementing logging for verify registry status functionality
        :param status_text:
        :return: True/False
        """
        is_matched = None
        try:
            self.logger.info('Start: verify registry status')
            is_matched = self._ixcontrol_page.verify_registry_status(status_text)
        except WebDriverException as exp:
            is_matched = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: verify registry status')
            return is_matched

    def click_trade_submenu(self):
        """
        Returning click trade submenu
        Implementing logging for click trade submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click trade submenu')
            self._ixcontrol_page.click_trade_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click trade submenu')
            return is_clicked

    def click_first_registry_item_info_button(self):
        """
        Returning click first registry item info button
        Implementing logging for click first registry item info button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click first registry item info button')
            self._ixcontrol_page.click_first_registry_item_info_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click first registry item info button')
            return is_clicked

    def click_first_registry_process(self):
        """
        Returning click first registry process
        Implementing logging for click first registry process functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click first registry process')
            self._ixcontrol_page.click_first_registry_process()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click first registry process')
            return is_clicked

    def get_sql_command(self):
        """
        Returning get sql command
        Implementing logging for get sql command functionality
        :return: True/False
        """
        is_got = None
        try:
            self.logger.info('Start: get sql command')
            self._ixcontrol_page.get_sql_command()
            is_got = True
        except WebDriverException as exp:
            is_got = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get sql command')
            return is_got

    def execute_sql_to_run_rpl_job(self, server, database, user, password):
        """
        Returning execute sql to run rpl job
        Implementing logging for execute sql to run rpl job functionality
        :param server:
        :param database:
        :param user:
        :param password:
        :return: True/False
        """
        is_executed = None
        try:
            self.logger.info('Start: execute sql to run rpl job')
            self._ixcontrol_page.execute_sql_to_run_rpl_job(server, database, user, password)
            is_executed = True
        except WebDriverException as exp:
            is_executed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: execute sql to run rpl job')
            return is_executed

    def click_all_items_submenu(self):
        """
        Returning click all items submenu
        Implementing logging for click all items submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click all items submenu')
            self._ixcontrol_page.click_all_items_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click all items submenu')
            return is_clicked

    def click_event_reprocessing_button(self):
        """
        Returning click event reprocessing button
        Implementing logging for click event reprocessing button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click event reprocessing button')
            self._ixcontrol_page.click_event_reprocessing_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click event reprocessing button')
            return is_clicked

    def click_single_event_processing_button(self):
        """
        Returning click single event processing button
        Implementing logging for click single event processing button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click single event processing button')
            self._ixcontrol_page.click_single_event_processing_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click single event processing button')
            return is_clicked

    def set_requested_process(self, item):
        """
        Returning set requested process
        Implementing logging for set requested process functionality
        :param item:
        :return: True/False
        """
        status = None
        try:
            self.logger.info('Start: set requested process')
            self._ixcontrol_page.set_requested_process(item)
            status = True
        except WebDriverException as exp:
            status = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set requested process')
            return status

    def set_event_processing_object(self, item):
        """
        Returning set event processing object
        Implementing logging for set event processing object functionality
        :param item:
        :return: True/False
        """
        status = None
        try:
            self.logger.info('Start: set event processing object')
            self._ixcontrol_page.set_event_processing_object(item)
            status = True
        except WebDriverException as exp:
            status = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set event processing object')
            return status

    def set_event_processing_begin_date(self):
        """
        Returning set event processing begin date
        Implementing logging for set event processing begin date functionality
        :return: True/False
        """
        status = None
        try:
            self.logger.info('Start: set event processing begin date')
            self._ixcontrol_page.set_event_processing_begin_date()
            status = True
        except WebDriverException as exp:
            status = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set event processing begin date')
            return status

    def set_event_processing_end_date(self):
        """
        Returning set event processing end date
        Implementing logging for set event processing end date functionality
        :return: True/False
        """
        status = None
        try:
            self.logger.info('Start: set event processing end date')
            self._ixcontrol_page.set_event_processing_end_date()
            status = True
        except WebDriverException as exp:
            status = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set event processing end date')
            return status

    def click_schedule_process_checkbox(self):
        """
        Returning click schedule process checkbox
        Implementing logging for click schedule process checkbox functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click schedule process checkbox')
            self._ixcontrol_page.click_schedule_process_checkbox()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click schedule process checkbox')
            return is_clicked

    def set_schedule_date_and_time(self):
        """
        Returning set schedule date and time
        Implementing logging for set schedule date and time functionality
        :return: True/False
        """
        status = None
        try:
            self.logger.info('Start: set schedule date and time')
            self._ixcontrol_page.set_schedule_date_and_time()
            status = True
        except WebDriverException as exp:
            status = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set schedule date and time')
            return status

    def click_event_processing_save_button(self):
        """
        Returning click event processing save button
        Implementing logging for click event processing save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click event processing save button')
            self._ixcontrol_page.click_event_processing_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click event processing save button')
            return is_clicked

    def set_registration_procedure(self, object_type):
        """
        Returning set registration procedure
        Implementing logging for set registration procedure functionality
        :param object_type:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set registration procedure')
            self._ixcontrol_page.set_registration_procedure(object_type)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set registration procedure')
            return is_set

    def click_modify_rplg_save_button(self):
        """
        Returning click modify rplg save button
        Implementing logging for click modify rplg save button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click modify rplg save button')
            self._ixcontrol_page.click_modify_rplg_save_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click modify rplg save button')
            return is_clicked

    def click_server_monitoring_link(self):
        """
        Returning click server monitoring link
        Implementing logging for click server monitoring link functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click server monitoring link')
            self._ixcontrol_page.click_server_monitoring_link()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click server monitoring link')
            return is_clicked

    def is_free_space_chart_loaded(self):
        """
        Returning is free space chart loaded
        Implementing logging for is free space chart loaded functionality
        :return:
        """
        is_loaded = None
        try:
            self.logger.info('Start: is free space chart loaded')
            is_loaded = self._ixcontrol_page.is_free_space_chart_loaded()
        except WebDriverException as exp:
            is_loaded = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is free space chart loaded')
            return is_loaded

    def is_total_space_chart_loaded(self):
        """
        Returning is total space chart loaded
        Implementing logging for is total space chart loaded functionality
        :return:
        """
        is_loaded = None
        try:
            self.logger.info('Start: is total space chart loaded')
            is_loaded = self._ixcontrol_page.is_total_space_chart_loaded()
        except WebDriverException as exp:
            is_loaded = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is total space chart loaded')
            return is_loaded

    def is_disk_space_usage_chart_loaded(self):
        """
        Returning is disk space usage chart loaded
        Implementing logging for is disk space usage chart loaded functionality
        :return:
        """
        is_loaded = None
        try:
            self.logger.info('Start: is disk space usage chart loaded')
            is_loaded = self._ixcontrol_page.is_disk_space_usage_chart_loaded()
        except WebDriverException as exp:
            is_loaded = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is disk space usage chart loaded')
            return is_loaded

    def is_server_job_monitoring_and_management_table_loaded(self):
        """
        Returning is server monitoring and management table loaded
        Implementing logging for is server monitoring and management table loaded functionality
        :return:
        """
        is_loaded = None
        try:
            self.logger.info('Start: is server monitoring and management table loaded')
            is_loaded = self._ixcontrol_page.is_server_job_monitoring_and_management_table_loaded()
        except WebDriverException as exp:
            is_loaded = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is server monitoring and management table loaded')
            return is_loaded

    def click_server_usage_audit_link(self):
        """
        Returning click server usage audit link
        Implementing logging for click server usage audit link functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click server usage audit link')
            self._ixcontrol_page.click_server_usage_audit_link()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click server usage audit link')
            return is_clicked

    def click_server_usage_audit_submit_button(self):
        """
        Returning click server usage audit submit button
        Implementing logging for click server usage audit submit button functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click server usage audit submit button')
            self._ixcontrol_page.click_server_usage_audit_submit_button()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click server usage audit submit button')
            return is_clicked

    def click_and_expand_c_drive(self):
        """
        Returning click and expand c drive
        Implementing logging for click and expand c drive functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click and expand c drive')
            self._ixcontrol_page.click_and_expand_c_drive()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click and expand c drive')
            return is_clicked

    def is_server_details_available(self):
        """
        Returning is server details available
        Implementing logging for is server details available functionality
        :return:
        """
        try:
            self.logger.info('Start: is server details available')
            return self._ixcontrol_page.is_server_details_available()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is server details available')

    def close_ixcontrol_window(self, default_window):
        """
        Returning close ixcontrol window
        Implementing logging for close ixcontrol window functionality
        :param default_window:
        :return: True/False
        """
        is_closed = None
        try:
            self.logger.info('Start: close ixcontrol window')
            self._ixcontrol_page.close_browser()
            if default_window is False:
                self._ixcontrol_page.switch_to_previous_window()
            else:
                self._ixcontrol_page.switch_to_default_window()
            is_closed = True
        except WebDriverException as exp:
            is_closed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: close ixcontrol window')
            return is_closed

    def click_request_data_refresh_process(self):
        """
        Returning click request data refresh process
        Implementing logging for click request data refresh process functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click request data refresh process')
            self._ixcontrol_page.click_request_data_refresh_process()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click request data refresh process')
            return is_clicked

    def is_trade_data_refresh_job_completed(self):
        """
        Returning is trade data refresh job completed
        Implementing logging for is trade data refresh job completed functionality
        :return: True/False
        """
        is_completed = None
        try:
            self.logger.info('Start: is trade data refresh job completed')
            is_completed = self._ixcontrol_page.is_trade_data_refresh_job_completed()
        except WebDriverException as exp:
            is_completed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is trade data refresh job completed')
            return is_completed

    def click_bill_submenu(self):
        """
        Returning click bill submenu
        Implementing logging for click bill submenu functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click bill submenu')
            self._ixcontrol_page.click_bill_submenu()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click bill submenu')
            return is_clicked

    def is_statement_generate_job_completed(self):
        """
        Returning is statement generate job completed
        Implementing logging for is statement generate job completed functionality
        :return: True/False
        """
        is_completed = None
        try:
            self.logger.info('Start: is statement generate job completed')
            is_completed = self._ixcontrol_page.is_statement_generate_job_completed()
        except WebDriverException as exp:
            is_completed = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is statement generate job completed')
            return is_completed

    def click_request_statement_generate_process_link(self):
        """
        Returning click request statement generate process link
        Implementing logging for click request statement generate process link functionality
        :return: True/False
        """
        is_clicked = None
        try:
            self.logger.info('Start: click request statement generate process link')
            self._ixcontrol_page.click_request_statement_generate_process_link()
            is_clicked = True
        except WebDriverException as exp:
            is_clicked = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: click request statement generate process link')
            return is_clicked

    def set_item_type(self, item_name):
        """
        Returning set item type
        Implementing logging for set item type functionality
        :param item_name:
        :return: True/False
        """
        is_set = None
        try:
            self.logger.info('Start: set item type')
            self._ixcontrol_page.set_item_type(item_name)
            is_set = True
        except WebDriverException as exp:
            is_set = False
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: set item type')
            return is_set

    def is_successfully_executed_job_present(self):
        """
        Returning is successfully executed job present
        Implementing logging for is successfully executed job present functionality
        :return:
        """
        try:
            self.logger.info('Start: is successfully executed job present')
            return self._ixcontrol_page.is_successfully_executed_job_present()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is successfully executed job present')

    def are_the_jobs_completed_without_any_error(self):
        """
        Returning are the jobs completed without any error
        Implementing logging for are the jobs completed without any error functionality
        :return:
        """
        try:
            self.logger.info('Start: are the jobs completed without any error')
            return self._ixcontrol_page.are_the_jobs_completed_without_any_error()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: are the jobs completed without any error')

    def is_job_execution_duration_not_so_long(self):
        """
        Returning is job execution duration not so long
        Implementing logging for is job execution duration not so long functionality
        :return:
        """
        try:
            self.logger.info('Start: is job execution duration not so long')
            return self._ixcontrol_page.is_job_execution_duration_not_so_long()
        except WebDriverException as exp:
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: is job execution duration not so long')

    def read_settings_file_max_records_value(self, destination):
        """
        Returning read settings file max records value
        Implementing logging for read settings file max records value functionality
        :param destination: the location of the file
        :return: max_records
        """
        max_records = None
        try:
            self.logger.info('Start: read settings file max records value')
            max_records = self._ixcontrol_page.read_settings_file_max_records_value(destination)
        except IOError as exp:
            max_records = ""
            self.logger.error(exp.args[1])
            raise
        finally:
            self.logger.info('End: read settings file max records value')
            return max_records

    def write_settings_file_max_records_value(self, destination, value):
        """
        Returning write settings file max records value
        Implementing logging for write settings file max records value functionality
        :param destination: the location of the file
        :param value:
        :return: True/False
        """
        is_write = None
        try:
            self.logger.info('Start: write settings file max records value')
            self._ixcontrol_page.write_settings_file_max_records_value(destination, value)
            is_write = True
        except IOError as exp:
            is_write = False
            self.logger.error(exp.args[1])
            raise
        finally:
            self.logger.info('End: write settings file max records value')
            return is_write

    def get_web_server_name(self):
        """
        Returning get web server name
        Implementing logging for get web server name functionality
        :return: web_server_name
        """
        web_server_name = None
        try:
            self.logger.info('Start: get web server name')
            web_server_name = self._ixcontrol_page.get_web_server_name()
        except WebDriverException as exp:
            web_server_name = ""
            self.logger.error(exp.msg)
            raise
        finally:
            self.logger.info('End: get web server name')
            return web_server_name
