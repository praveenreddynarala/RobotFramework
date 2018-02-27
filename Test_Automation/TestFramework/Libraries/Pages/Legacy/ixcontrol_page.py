"""Implementing ixControl screen page objects"""

from TestFramework.Libraries.Pages.base_page import BasePage
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC
import TestFramework.Libraries.Modules.database as Database
from xml.dom import minidom
import shutil
import datetime
import time


class IXControlPage(BasePage):
    """
    Switch to ixControl function
    Click performance metric submenu function
    Set registry item function
    Click go button function
    Click exit button function
    Click connect submenu function
    Click first unp job link function
    Click request recalculate unp link function
    Click execute button function
    Click first unp job process button function
    Click first unp job recalculate button function
    Compare unp status function
    Click objects and processes submenu function
    Set object type function
    Set object function
    Click object name function
    Get cdr destination path function
    Get cdr file name function
    Click cdr files submenu function
    Copy file function
    Click cdr file name function
    Set current status function
    Is cdr load completed function
    Verify registry status function
    Click trade submenu function
    Click first registry item info button function
    Click first registry process function
    Get sql command function
    Execute sql to run rpl job function
    Click all items submenu function
    Click event reprocessing button function
    Click single event processing button function
    Set requested process function
    Set event processing object function
    Set event processing begin date function
    Set event processing end date function
    Click schedule process checkbox function
    Set schedule date and time function
    Click event processing save button function
    Get future schedule date and time function
    Set registration procedure function
    Click modify rplg save button function
    Click server monitoring link function
    Is disk space usage chart loaded function
    Is total space chart loaded function
    Is free space chart loaded function
    Is server monitoring and management table loaded function
    Click server usage audit link function
    Click server usage audit submit button function
    Click and expand c drive function
    Is server details available function
    Click request data refresh process function
    Is trade data refresh job completed function
    Click bill submenu function
    Is statement generate job completed function
    Click request statement generate process link function
    Set item type function
    Is successfully executed job present function
    Are the jobs completed without any error function
    Is job execution duration not so long function
    Read settings file max records value function
    Write settings file max records value function
    Get web server name function
    """
    # Start: ixControl page locators
    list_frame_locator = (By.NAME, "List")
    header_frame_locator = (By.NAME, "Header")
    detail_frame_locator = (By.NAME, "Detail")
    registry_menu_locator = (By.ID, "C1_mtRegister")
    performance_metrics_submenu_js_function = "Registry_Click(14,'Registry14');"
    registry_item_dropdown_locator = (By.ID, "rObject_ObjectID")
    go_button_locator = (By.CLASS_NAME, "lgxGoButton")
    exit_button_locator = (By.ID, "C1_mtLogout")
    connect_submenu_js_function = "Registry_Click(6,'Registry6');"
    first_unp_job_locator = (By.ID, "t1_TC41_Registry")
    request_recalculate_unp_link_locator = (By.ID, "ItemTransition_Transition1")
    execute_button_locator = (By.ID, "Save")
    first_unp_job_process_button_locator = (By.ID, "t1_TCInfo1_bNew")
    first_unp_job_recalculate_button_locator = (By.ID, "t1ProcessLogInfo1_MoreInfo_TCProcess1_ProcessType")
    status_textbox_locator = (By.ID, "rStatus_StatusID_VO")
    config_menu_locator = (By.ID, "C1_mtConfig")
    objects_and_processes_submenu_js_function = "Config_Click(2,'Config2');"
    cdr_files_submenu_js_function = "Registry_Click(5,'Registry5');"
    trade_submenu_js_function = "Registry_Click(19,'Registry19');"
    all_items_submenu_js_function = "Registry_Click(0,'Registry0');"
    server_monitoring_link_locator = (By.XPATH, "//span[@id='ServerMonitoring_Server_ServerMonitoring' and text()='Server Monitoring']")
    server_usage_audit_link_locator = (By.ID, "SrvSpaceusage_colSrvUsage_txtSrvUsgAudit")
    bill_submenu_js_function = "Registry_Click(3,'Registry3');"
    request_statement_generate_process_link_locator = (By.XPATH, "//span[contains(text(), 'Request Statement Generate Process')]")
    item_type_dropdown_locator = (By.ID, "rObjectType_ObjectTypeID")

    # Start: Server monitoring page locators
    disk_space_usage_chart_locator = (By.ID, "diskUsageChart")
    total_space_chart_locator = (By.ID, "TotalDiskChart")
    free_space_chart_locator = (By.ID, "FreeDiskChart")
    server_job_monitoring_and_management_table_locator = (By.ID, "MRStatusM")
    # End: Server monitoring page locators

    # Start: Object and processes page locators
    list_frame_header_locator = (By.ID, "lgx_ListTitle")
    object_type_dropdown_locator = (By.ID, "ObjectTypeID")
    object_dropdown_locator = (By.ID, "rObject_ObjectID")
    destination_path_inputbox_locator = (By.ID, "MRFObjectParam_CParamValue13_ParamValue")
    source_file_identifier_inputbox_locator = (By.ID, "MRFObjectParam_CParamValue3_ParamValue")
    registration_procedure_dropdown_locator = (By.ID, "rAutoRegistration_AutoRegistration")
    detail_frame_header_locator = (By.ID, "lgx_DetailTitle")
    modify_rplg_save_button_locator = (By.ID, "rbtnSave_btnSave")
    job_duration_span_locator = (By.ID, "t1ProcessLogInfo1_MoreInfo_TCDuration1_Duration")
    # End: Object and processes page locators

    # Start: Registry page locators
    current_status_dropdown_locator = (By.ID, "rProcesStatus_StatusID")
    registered_status_span_locator = (By.ID, "StatusID_StatusID_VO")
    load_completed_status = "Load Completed"
    first_registry_item_info_button_locator = (By.ID, "t1_TCInfo1_bNew")
    first_registry_process_locator = (By.ID, "t1ProcessLogInfo1_MoreInfo_TCProcess1_ProcessType")
    sql_command_span_locator = (By.ID, "SQLCommand")
    sql_command = ""
    event_reprocessing_button_locator = (By.ID, "btnNew")
    event_reprocessing_page_header_locator = (By.ID, "page-title")
    single_event_processing_button_locator = (By.XPATH, "//a[text()='Single Event Reprocessing']")
    requested_process_dropdown_arrow_locator = (By.XPATH, "//div[@id='ProcessWrapper']/descendant::span[@class='k-icon k-i-arrow-s']")
    created_new_single_event_processing_header_locator = (By.ID, "NewSEPEventWindow_wnd_title")
    object_dropdown_arrow_locator = (By.XPATH, "//div[@id='ObjectWrapper']/descendant::span[@class='k-icon k-i-arrow-s']")
    begin_date_textbox_locator = (By.XPATH, "//div[@id='BeginDateWrapper']/descendant::input[@id='beginDate']")
    end_date_textbox_locator = (By.XPATH, "//div[@id='EndDateWrapper']/descendant::input[@id='endDate']")
    schedule_process_checkbox_locator = (By.ID, "scheduleCheckBox")
    schedule_date_and_time_textbox_locator = (By.XPATH, "//div[@id='DatePickerWrapper']/descendant::input[@id='scheduleDate']")
    event_processing_save_button_locator = (By.ID, "btnSaveSEPEevent")
    confirmation_popup_locator = (By.XPATH, "//p[text()='Saved successfully.']")
    ok_button_locator = (By.ID, "btnOk")
    request_data_refresh_job_link_locator = (By.XPATH, "//span[contains(text(),'Request Data Refresh Process')]")
    trade_data_refresh_completed_status = "Trade Data Refresh Completed"
    statement_generation_completed_status = "Statement Populate Completed"
    # End: Registry page locators

    # Start: Server usage audit page locators
    server_usage_audit_submit_button_locator = (By.ID, "BReport")
    c_drive_letter_locator = (By.ID, "cDrive_Row1")
    level2_detail_iframe_locator = (By.XPATH, "//iframe[contains(@id, 'Level22Detail')]")
    server_name_td_locator = (By.ID, "cServerName")
    # End: Server usage audit page locators

    # End: ixControl page locators

    def switch_to_ixcontrol(self):
        """
        Implementing switch to ixControl functionality
        :return:
        """
        self.switch_to_window()
        self.accept_ssl_certificate()

    def click_performance_metrics_submenu(self):
        """
        Implementing click performance metrics submenu functionality
        :return:
        """
        self.wait_for_ajax_spinner_load()
        self.switch_to_frame(self.header_frame_locator)
        self.select_submenu(self.registry_menu_locator, self.performance_metrics_submenu_js_function, script_executor=True)
        self.wait_for_ajax_spinner_load()
        self.switch_to_default_content()

    def set_registry_item(self, item_name):
        """
        Implementing set registry item functionality
        :param item_name:
        :return:
        """
        self.switch_to_frame(self.list_frame_locator)
        self.select_option(self.registry_item_dropdown_locator, item_name)
        self.switch_to_default_content()

    def click_go_button(self):
        """
        Implementing click go button functionality
        :return:
        """
        self.switch_to_frame(self.list_frame_locator)
        self.click_element(self.go_button_locator, True)
        self.switch_to_default_content()

    def click_exit_button(self):
        """
        Implementing click exit button functionality
        :return:
        """
        self.switch_to_frame(self.header_frame_locator)
        self.click_element(self.exit_button_locator)
        self.switch_to_default_window()

    def click_objects_and_processes_submenu(self):
        """
        Implementing click objects and processes submenu functionality
        :return:
        """
        self.switch_to_frame(self.header_frame_locator)
        self.select_submenu(self.config_menu_locator, self.objects_and_processes_submenu_js_function, script_executor=True)
        self.wait_for_ajax_spinner_load()
        self.switch_to_default_content()

    def set_object_type(self, object_type):
        """
        Implementing set object type functionality
        :param object_type:
        :return:
        """
        self.switch_to_frame(self.list_frame_locator)
        self.select_option(self.object_type_dropdown_locator, object_type)
        self.click_element(self.list_frame_header_locator)
        self.switch_to_default_content()

    def set_object(self, object_name):
        """
        Implementing set object functionality
        :param object_name:
        :return:
        """
        self.switch_to_frame(self.list_frame_locator)
        self.select_option(self.object_dropdown_locator, object_name)
        self.click_element(self.list_frame_header_locator)
        self.switch_to_default_content()

    def click_object_name(self, object_name):
        """
        Implementing click object name functionality
        :param object_name:
        :return:
        """
        self.switch_to_frame(self.list_frame_locator)
        object_name_locator = (By.XPATH, "//span[text()='%s']" % object_name)
        self.click_element(object_name_locator)
        self.switch_to_default_content()

    def get_cdr_file_name(self):
        """
        Implementing get cdr file name functionality
        :return: cdr_file_name
        """
        global cdr_file_name
        self.switch_to_frame(self.detail_frame_locator)
        file_name_prefix_inputbox_element = self.wait().until(EC.presence_of_element_located(self.source_file_identifier_inputbox_locator), 'source file identifier inputbox locator not found before specified time out')
        cdr_file_name = file_name_prefix_inputbox_element.get_attribute("value")
        cdr_file_name = str(cdr_file_name).replace("*", "_" + str.replace(str.replace(str(datetime.datetime.now()), ' ', '_'), ':', ''))
        self.switch_to_default_content()
        return cdr_file_name

    def get_cdr_destination_path(self):
        """
        Implementing get cdr destination path functionality
        :return: destination_path
        """
        global cdr_file_name
        self.switch_to_frame(self.detail_frame_locator)
        destination_path_inputbox_element = self.wait().until(EC.presence_of_element_located(self.destination_path_inputbox_locator), 'destination path inputbox locator not found before specified time out')
        destination_path = destination_path_inputbox_element.get_attribute("value")
        self.switch_to_default_content()
        destination_path = str(destination_path).replace("\\", "/") + cdr_file_name
        return destination_path

    def click_cdr_files_submenu(self):
        """
        Implementing click cdr files submenu functionality
        :return:
        """
        self.switch_to_frame(self.header_frame_locator)
        self.select_submenu(self.registry_menu_locator, self.cdr_files_submenu_js_function, script_executor=True)
        self.wait_for_ajax_spinner_load()
        self.switch_to_default_content()

    def copy_file(self, source, destination):
        """
        Implementing copy file functionality
        :param source:
        :param destination:
        :return:
        """
        try:
            shutil.copyfile(source, destination)
        except:
            raise

    def click_cdr_file_name(self, file_name):
        """
        Implementing click cdr file name functionality
        :param file_name:
        :return:
        """
        self.switch_to_frame(self.list_frame_locator)
        cdr_file_name_locator = (By.XPATH, "//span[text()='%s']" % file_name)
        timeout = 900
        try:
            end_time = time.time() + timeout
            while time.time() < end_time:
                self.wait_for_ajax_spinner_load()
                if self.is_element_present(cdr_file_name_locator):
                    self.click_element(cdr_file_name_locator)
                    break
                self.click_element(self.go_button_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def set_current_status(self, status):
        """
        Implementing set current status functionality
        :param status:
        :return:
        """
        self.switch_to_frame(self.list_frame_locator)
        self.select_option(self.current_status_dropdown_locator, status)
        self.click_element(self.list_frame_header_locator)
        self.switch_to_default_content()

    def is_cdr_load_completed(self):
        """
        Implementing is cdr load completed functionality
        :return: True/False
        """
        load_complete = False
        self.switch_to_frame(self.detail_frame_locator)
        registered_status_span_element = self.wait().until(EC.presence_of_element_located(self.registered_status_span_locator), 'registered status span locator not found before specified time out')
        if registered_status_span_element.text.strip() == self.load_completed_status:
            load_complete = True
        self.switch_to_default_content()
        return load_complete

    def click_connect_submenu(self):
        """
        Implementing click connect submenu functionality
        :return:
        """
        self.wait_for_ajax_spinner_load()
        self.switch_to_frame(self.header_frame_locator)
        self.select_submenu(self.registry_menu_locator, self.connect_submenu_js_function, script_executor=True)
        self.wait_for_ajax_spinner_load()
        self.switch_to_default_content()

    def click_first_unp_job_link(self):
        """
        Implementing click first unp job link functionality
        :return:
        """
        self.switch_to_frame(self.list_frame_locator)
        self.click_element(self.first_unp_job_locator)
        self.switch_to_default_content()

    def click_request_recalculate_unp_link(self):
        """
        Implementing click request recalculate unp link functionality
        :return:
        """
        self.switch_to_frame(self.detail_frame_locator)
        self.click_element(self.request_recalculate_unp_link_locator)
        self.switch_to_default_content()

    def click_execute_button(self):
        """
        Implementing click execute button functionality
        :return:
        """
        self.switch_to_frame(self.detail_frame_locator)
        self.click_element(self.execute_button_locator)
        self.wait_for_ajax_spinner_load()
        try:
            self.accept_alert_pop_up()
        except:
            pass
        self.switch_to_default_content()

    def click_first_unp_job_process_button(self):
        """
        Implementing click first unp job process button functionality
        :return:
        """
        self.switch_to_frame(self.list_frame_locator)
        self.click_element(self.first_unp_job_process_button_locator)
        self.switch_to_default_content()

    def click_first_unp_job_recalculate_button(self):
        """
        Implementing click first unp job recalculate button functionality
        :return:
        """
        self.switch_to_frame(self.list_frame_locator)
        self.click_element(self.first_unp_job_recalculate_button_locator)
        self.wait_for_ajax_spinner_load()
        self.switch_to_default_content()

    def compare_unp_status(self):
        """
        Implementing compare unp status functionality
        :return: True/False
        """
        is_matched = False
        timeout =  300
        try:
            end_time = time.time() + timeout
            while (time.time() < end_time):
                self.wait(5)
                self.click_first_unp_job_recalculate_button()
                self.wait_for_ajax_spinner_load()
                self.switch_to_frame(self.detail_frame_locator)
                status_textbox_element = self.wait(5).until(EC.presence_of_element_located(self.status_textbox_locator), 'status textbox locator not found before specified time out')
                status_text = str(status_textbox_element.text)
                self.switch_to_default_content()
                if (status_text == "Completed"):
                    is_matched = True
                    break
        except:
            raise
        self.switch_to_default_content()
        return is_matched

    def verify_registry_status(self, status_text):
        """
        Implementing verify registry status functionality
        :param status_text:
        :return: True/False
        """
        job_complete = False
        self.switch_to_frame(self.detail_frame_locator)
        registered_status_span_element = self.wait().until(EC.presence_of_element_located(self.registered_status_span_locator), 'registered status span locator not found before specified time out')
        if registered_status_span_element.text.strip() == status_text:
            job_complete = True
        self.switch_to_default_content()
        return job_complete

    def click_trade_submenu(self):
        """
        Implementing click trade submenu functionality
        :return:
        """
        self.switch_to_frame(self.header_frame_locator)
        self.select_submenu(self.registry_menu_locator, self.trade_submenu_js_function, script_executor=True)
        self.wait_for_ajax_spinner_load()
        self.switch_to_default_content()

    def click_first_registry_item_info_button(self):
        """
        Implementing click first registry item info button functionality
        :return:
        """
        self.switch_to_frame(self.list_frame_locator)
        self.click_element(self.first_registry_item_info_button_locator)
        self.switch_to_default_content()

    def click_first_registry_process(self):
        """
        Implementing click first registry process functionality
        :return:
        """
        self.switch_to_frame(self.list_frame_locator)
        self.click_element(self.first_registry_process_locator)
        self.switch_to_default_content()

    def get_sql_command(self):
        """
        Implementing get sql command functionality
        :return:
        """
        self.switch_to_frame(self.detail_frame_locator)
        self.sql_command = self.get_text_from_element(self.sql_command_span_locator)
        self.switch_to_default_content()

    def execute_sql_to_run_rpl_job(self, server, database, user, password):
        """
        Implementing execute sql to run rpl job functionality
        :param server:
        :param database:
        :param user:
        :param password:
        :return: cost policy data from database
        """
        try:
            Database.open_mssql(server=server, database=database, user=user, password=password)
            cursor = Database.get_cursor(self.sql_command)
            cursor.close()
            Database.close()
        except:
            raise

    def click_all_items_submenu(self):
        """
        Implementing click all items submenu functionality
        :return:
        """
        self.switch_to_frame(self.header_frame_locator)
        self.select_submenu(self.registry_menu_locator, self.all_items_submenu_js_function, script_executor=True)
        self.wait_for_ajax_spinner_load()
        self.switch_to_default_content()

    def click_event_reprocessing_button(self):
        """
        Implementing click event reprocessing button functionality
        :return:
        """
        self.switch_to_frame(self.list_frame_locator)
        self.click_element(self.event_reprocessing_button_locator)
        self.switch_to_default_content()

    def click_single_event_processing_button(self):
        """
        Implementing click single event processing button functionality
        :return:
        """
        self.switch_to_frame(self.detail_frame_locator)
        self.switch_to_frame(self.detail_frame_locator)
        self.click_element(self.single_event_processing_button_locator)
        self.switch_to_default_content()

    def set_requested_process(self, item):
        """
        Implementing set requested process functionality
        :param item:
        :return:
        """
        self.switch_to_frame(self.detail_frame_locator)
        self.switch_to_frame(self.detail_frame_locator)
        self.single_selection_from_static_kendo_dropdown(self.requested_process_dropdown_arrow_locator, item)
        self.switch_to_default_content()

    def set_event_processing_object(self, item):
        """
        Implementing set event processing object functionality
        :param item:
        :return:
        """
        self.switch_to_frame(self.detail_frame_locator)
        self.switch_to_frame(self.detail_frame_locator)
        try:
            self.single_selection_from_static_kendo_dropdown(self.object_dropdown_arrow_locator, item)
        except:
            try:
                dropdown_item_locator = (By.XPATH, "//ul[@aria-hidden='false' and @role='listbox']/descendant::li[2]")
                self.click_element(dropdown_item_locator, script_executor=True)
            except:
                pass
        self.switch_to_default_content()

    def set_event_processing_begin_date(self):
        """
        Implementing set event processing begin date functionality
        :return:
        """
        self.switch_to_frame(self.detail_frame_locator)
        self.switch_to_frame(self.detail_frame_locator)
        self.set_value_into_input_field(self.begin_date_textbox_locator, self.get_date(current_date=True))
        self.switch_to_default_content()

    def set_event_processing_end_date(self):
        """
        Implementing set event processing end date functionality
        :return:
        """
        self.switch_to_frame(self.detail_frame_locator)
        self.switch_to_frame(self.detail_frame_locator)
        self.set_value_into_input_field(self.end_date_textbox_locator, self.get_date(future_date=True))
        self.switch_to_default_content()

    def click_schedule_process_checkbox(self):
        """
        Implementing click schedule process checkbox functionality
        :return:
        """
        self.switch_to_frame(self.detail_frame_locator)
        self.switch_to_frame(self.detail_frame_locator)
        self.click_element(self.schedule_process_checkbox_locator)
        self.switch_to_default_content()

    def set_schedule_date_and_time(self):
        """
        Implementing set schedule date and time functionality
        :return:
        """
        self.switch_to_frame(self.detail_frame_locator)
        self.switch_to_frame(self.detail_frame_locator)
        self.set_value_into_input_field(self.schedule_date_and_time_textbox_locator, self.get_future_schedule_date_and_time())
        self.switch_to_default_content()

    def click_event_processing_save_button(self):
        """
        Implementing click event processing save button functionality
        :return:
        """
        self.switch_to_frame(self.detail_frame_locator)
        self.switch_to_frame(self.detail_frame_locator)
        self.click_element(self.event_processing_save_button_locator)
        try:
            self.wait().until(EC.presence_of_element_located(self.confirmation_popup_locator), 'confirmation popup locator not found before specified time')
            self.click_element(self.ok_button_locator)
        except:
            raise
        self.switch_to_default_content()
        self.wait_for_ajax_spinner_load()

    def get_future_schedule_date_and_time(self, minutes=5):
        """
        Implementing get future schedule date and time functionality
        :return: future time
        """
        current_day = datetime.datetime.today()
        current_date = "%d/%d/%d" % (current_day.month, current_day.day, current_day.year)
        future_time = str(current_date + " " + datetime.datetime.strftime((datetime.datetime.now() + datetime.timedelta(minutes=minutes)), "%I:%M %p"))
        return future_time

    def set_registration_procedure(self, procedure_type):
        """
        Implementing set registration procedure functionality
        :param procedure_type:
        :return:
        """
        self.switch_to_frame(self.detail_frame_locator)
        self.select_option(self.registration_procedure_dropdown_locator, procedure_type)
        self.click_element(self.detail_frame_header_locator)
        self.switch_to_default_content()

    def click_modify_rplg_save_button(self):
        """
        Implementing click modify rplg save button functionality
        :return:
        """
        self.switch_to_frame(self.detail_frame_locator)
        self.click_element(self.modify_rplg_save_button_locator)
        self.wait_for_ajax_spinner_load()
        try:
            self.accept_alert_pop_up()
        except:
            pass
        self.switch_to_default_content()

    def click_server_monitoring_link(self):
        """
        Implementing click server monitoring link functionality
        :return:
        """
        self.switch_to_frame(self.list_frame_locator)
        self.click_element(self.server_monitoring_link_locator)
        self.switch_to_default_content()

    def is_disk_space_usage_chart_loaded(self):
        """
        Implementing is disk space usage chart loaded functionality
        :return:
        """
        self.switch_to_frame(self.detail_frame_locator)
        status = self.is_element_present(self.disk_space_usage_chart_locator)
        self.switch_to_default_content()
        return status

    def is_total_space_chart_loaded(self):
        """
        Implementing is total space chart loaded functionality
        :return:
        """
        self.switch_to_frame(self.detail_frame_locator)
        status = self.is_element_present(self.total_space_chart_locator)
        self.switch_to_default_content()
        return status

    def is_free_space_chart_loaded(self):
        """
        Implementing is free space chart loaded functionality
        :return:
        """
        self.switch_to_frame(self.detail_frame_locator)
        status = self.is_element_present(self.free_space_chart_locator)
        self.switch_to_default_content()
        return status

    def is_server_job_monitoring_and_management_table_loaded(self):
        """
        Implementing is server monitoring and management table loaded functionality
        :return:
        """
        self.switch_to_frame(self.detail_frame_locator)
        status = self.is_element_present(self.server_job_monitoring_and_management_table_locator)
        self.switch_to_default_content()
        return status

    def click_server_usage_audit_link(self):
        """
        Implementing click server usage audit link functionality
        :return:
        """
        self.switch_to_frame(self.list_frame_locator)
        self.click_element(self.server_usage_audit_link_locator)
        self.switch_to_default_content()

    def click_server_usage_audit_submit_button(self):
        """
        Implementing click server usage audit submit button functionality
        :return:
        """
        self.set_existing_handles()
        self.switch_to_frame(self.detail_frame_locator)
        self.click_element(self.server_usage_audit_submit_button_locator)
        self.switch_to_default_content()
        self.switch_to_window()

    def click_and_expand_c_drive(self):
        """
        Implementing click and expand c drive functionality
        :return:
        """
        self.click_element(self.c_drive_letter_locator)

    def is_server_details_available(self):
        """
        Implementing is server details available functionality
        :return: True/False
        """
        self.switch_to_frame(self.level2_detail_iframe_locator)
        is_present = self.is_element_present(self.server_name_td_locator)
        self.switch_to_default_content()
        return is_present

    def click_request_data_refresh_process(self):
        """
        Implementing click request data refresh process functionality
        :return: True/False
        """
        self.switch_to_frame(self.detail_frame_locator)
        try:
            self.click_element(self.request_data_refresh_job_link_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def is_trade_data_refresh_job_completed(self):
        """
        Implementing is trade data refresh job completed functionality
        :return: True/False
        """
        is_completed = False
        timeout = 600
        try:
            end_time = time.time() + timeout
            while time.time() < end_time:
                self.click_go_button()
                self.click_first_unp_job_link()
                self.switch_to_frame(self.detail_frame_locator)
                try:
                    registered_status = self.get_text_from_element(self.registered_status_span_locator)
                    if registered_status == self.trade_data_refresh_completed_status:
                        is_completed = True
                        break
                except:
                    raise
                finally:
                    self.switch_to_default_content()
        except:
            raise
        finally:
            return is_completed

    def click_bill_submenu(self):
        """
        Implementing click bill submenu functionality
        :return:
        """
        self.switch_to_frame(self.header_frame_locator)
        try:
            self.select_submenu(self.registry_menu_locator, self.bill_submenu_js_function, script_executor=True)
            self.wait_for_ajax_spinner_load()
        except:
            raise
        finally:
            self.switch_to_default_content()

    def is_statement_generate_job_completed(self):
        """
        Implementing is statement generate job completed functionality
        :return: True/False
        """
        is_completed = False
        timeout = 1900
        try:
            end_time = time.time() + timeout
            while time.time() < end_time:
                self.click_go_button()
                self.click_first_unp_job_link()
                self.switch_to_frame(self.detail_frame_locator)
                try:
                    registered_status = self.get_text_from_element(self.registered_status_span_locator)
                    if registered_status == self.statement_generation_completed_status:
                        is_completed = True
                        break
                except:
                    raise
                finally:
                    self.switch_to_default_content()
        except:
            raise
        finally:
            return is_completed

    def click_request_statement_generate_process_link(self):
        """
        Implementing click request statement generate process link functionality
        :return:
        """
        self.switch_to_frame(self.detail_frame_locator)
        try:
            self.click_element(self.request_statement_generate_process_link_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def set_item_type(self, item_name):
        """
        Implementing set item type functionality
        :param item_name:
        :return:
        """
        self.switch_to_frame(self.list_frame_locator)
        try:
            self.select_option(self.item_type_dropdown_locator, item_name)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def is_successfully_executed_job_present(self):
        """
        Implementing is successfully executed job present functionality
        :return:
        """
        self.switch_to_frame(self.list_frame_locator)
        try:
            return self.is_element_present(self.first_unp_job_locator)
        except:
            raise
        finally:
            self.switch_to_default_content()

    def are_the_jobs_completed_without_any_error(self):
        """
        Implementing are the jobs completed without any error functionality
        :return:
        """
        is_completed = True
        self.switch_to_frame(self.list_frame_locator)
        try:
            if self.is_element_present(self.first_unp_job_locator):
                is_completed = False
        except:
            raise
        finally:
            self.switch_to_default_content()
            return is_completed

    def is_job_execution_duration_not_so_long(self):
        """
        Implementing is job execution duration not so long functionality
        :return: True/False
        """
        is_not_long = True
        self.switch_to_frame(self.list_frame_locator)
        try:
            job_duration_span_element = self.wait().until(EC.presence_of_element_located(self.job_duration_span_locator), 'job duration span locator not found before specified time out')
            if int(job_duration_span_element.text.split(':')[0].strip()) > 5:
                is_not_long = False
        except:
            raise
        finally:
            self.switch_to_default_content()
            return is_not_long

    def read_settings_file_max_records_value(self, file_path):
        """
        Implementing read settings file max records value functionality
        :param file_path:
        :return: maxrecords
        """
        maxrecords = ""
        try:
            modified_file_path = file_path.replace('/', '\\')
            xmldoc = minidom.parse(str(modified_file_path))
            constants = xmldoc.getElementsByTagName("Constants")[0]
            maxrecords = constants.getAttribute("MaxRecords")
        except:
            raise
        finally:
            return maxrecords

    def write_settings_file_max_records_value(self, file_path, value):
        """
        Implementing write settings file max records value functionality
        :param file_path:
        :param value:
        :return:
        """
        try:
            modified_file_path = file_path.replace('/', '\\')
            xmldoc = minidom.parse(str(modified_file_path))
            constants = xmldoc.getElementsByTagName("Constants")[0]
            constants.setAttribute("MaxRecords", value)
            file_handle = open(str(modified_file_path), "wb")
            xmldoc.writexml(file_handle)
            file_handle.close()
        except:
            raise

    def get_web_server_name(self):
        """
        Implementing get web server name functionality
        :return: web server name
        """
        self.switch_to_frame(self.detail_frame_locator)
        webserver_name = ""
        try:
            destination_path_inputbox_element = self.wait().until(EC.presence_of_element_located(self.destination_path_inputbox_locator), 'destination path inputbox locator not found before specified time out')
            destination_path = destination_path_inputbox_element.get_attribute("value")
            webserver_name = destination_path.split("\i")[0]
            webserver_name = str(webserver_name).replace("\\", "/")
        except:
            raise
        finally:
            self.switch_to_default_content()
            return webserver_name
